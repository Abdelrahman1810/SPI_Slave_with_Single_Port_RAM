module SPI (
    input clk, rst_n,
    input MOSI, SS_n,
    input tx_valid,
    input [7:0]tx_data,

    output reg MISO, 
    output reg rx_valid, 
    output reg [9:0]rx_data
);
    parameter IDLE = 3'b000;
    parameter CHK_CMD = 3'b001;
    parameter WRITE = 3'b010;
    parameter READ_ADD = 3'b011;
    parameter READ_DATA = 3'b100;

    reg read_trans;
    reg [4:0] cs, ns;

// Next state
    always @(*) begin
        case (cs)
            IDLE: 
                if (SS_n)
                    ns = IDLE;
                else
                    ns = CHK_CMD;
            CHK_CMD:
                if (SS_n)
                    ns = IDLE;
                else if (~SS_n && ~MOSI)
                    ns = WRITE;
                else if (~SS_n && MOSI && ~read_trans)
                    ns = READ_ADD;
                else
                    ns = READ_DATA;
            WRITE:
                if (~SS_n)
                    ns = WRITE;
                else
                    ns = IDLE;
            READ_ADD:
                if (~SS_n)
                    ns = READ_ADD;
                else
                    ns = IDLE;
            READ_DATA:
                if (~SS_n)
                    ns = READ_DATA;
                else
                    ns = IDLE;
            default: ns = IDLE; 
        endcase
    end

// State memory
    always @(posedge clk) begin
        if (~rst_n) begin
            cs <= IDLE;
        end else
            cs <= ns;
    end

// Output
    reg [4:0] counter;
    always @(posedge clk) begin
        if (~rst_n) begin
            counter <= 0;
            rx_data <= 0;
            MISO <= 0;
            rx_valid <= 0;
            read_trans = 0;
        end
        else if (cs != IDLE && cs != CHK_CMD) begin
                if(cs == READ_ADD)
                    read_trans = 1;
                else if(cs == READ_DATA)
                    read_trans = 0;

                if (counter<=9)
                    rx_data = {MOSI, rx_data[9:1]};
                
                if (counter == 9)
                    rx_valid = 1;
                else if (counter == 11 || counter == 0)
                    rx_valid <= 0;
                    
                if (tx_valid) begin
                    if (counter==11) MISO <= tx_data[0];
                    else if (counter==12) MISO <= tx_data[1];
                    else if (counter==13) MISO <= tx_data[2];
                    else if (counter==14) MISO <= tx_data[3];
                    else if (counter==15) MISO <= tx_data[4];
                    else if (counter==16) MISO <= tx_data[5];
                    else if (counter==17) MISO <= tx_data[6];
                    else if (counter==18) MISO <= tx_data[7];                  
                end

                counter <= counter + 1;
        end else counter = 0;
    end
endmodule