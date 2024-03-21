module tb_SPI (
);
    reg clk, rst_n;
    reg MOSI, SS_n;
    reg tx_valid;
    reg [7:0]tx_data;

    wire MISO; 
    wire rx_valid; 
    wire [9:0]rx_data;

    SPI spi(.*);

    parameter READ = 1;
    parameter WRITE = 0;

    initial begin
        clk=0;
        forever 
            #1 clk = ~clk;
    end

    integer i;
    reg [9:0] MOSI_array;

    initial begin
        rst_chk;

    // Test Serial in Parallel out in Write state
        repeat(1) begin
            select_state(WRITE);

            i=0;
            MISO_input;

            SS_n = 1;
            @(posedge clk);
            error_display;
        end

    // Test Serial in Parallel out in Reade Addres state
    // After that test the recived data from tx_data
        repeat(1) begin
            select_state(READ);

            i=0;
            MISO_input;

            SS_n = 1;
            @(posedge clk);

            error_display;
            
            select_state(READ);
            i=0;
            MISO_input;
            
            @(posedge clk);
            tx_data = $random;
            tx_valid = 1;
            error_display;
            repeat(8) @(posedge clk);
            tx_valid = 0;

            SS_n = 1;
            @(posedge clk);
        end
        $stop;
    
    end

    task rst_chk;
        rst_n = 0;
        @(posedge clk);
        if (rx_valid || MISO || rx_data)
            $display("%t: Error - rst",$time);
        rst_n = 1;
    endtask

    task error_display;
        if (rx_data != MOSI_array) begin
            $display("%t: Error - Series to Paralled in Read Addres inputs",$time);
        end
    endtask

    task MISO_input;
        MOSI_array = $random;
        repeat(10) begin
            MOSI = MOSI_array[i];
            @(posedge clk);
            i=i+1;
        end
    endtask

    task select_state(logic STATE);
        SS_n = 0;
        @(posedge clk);
        MOSI = STATE;
        @(posedge clk);
    endtask

endmodule