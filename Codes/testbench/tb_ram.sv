module tb_ram ();
    parameter MEM_DEPTH = 256;
    parameter ADDR_SIZE = 8;

    reg clk, rst_n;
    reg [9:0] din;
    reg rx_valid;

    wire [7:0]dout;
    wire tx_valid;

    RAM #(
        .MEM_DEPTH(MEM_DEPTH),
        .ADDR_SIZE(ADDR_SIZE)
    )ramInst(
        .clk(clk), .rst_n(rst_n),
        .din(din),
        .rx_valid(rx_valid),
        .dout(dout),
        .tx_valid(tx_valid)
    );

    parameter WRITE_ADD = 2'b00;
    parameter WRITE_DATA = 2'b01;
    parameter READ_ADD = 2'b10;
    parameter READ_DATA = 2'b11;

    initial begin
        clk = 0;
        forever #1 clk=~clk;
    end
    integer i;
    initial begin
        $readmemb ("ram.dat", ramInst.ram);
        rst_chk;

        for (i = 0; i<1; i++) begin
        // Ram Write Address
            rx_valid = 1'b1;
            din[9:8] = 2'b00;
            din[7:0] = i;
            @(negedge clk);

            rx_valid = 1'b0;
            @(negedge clk);

        // Ram Write Data
            rx_valid = 1'b1;
            din[9:8] = 2'b01;
            din[7:0] = $urandom_range(1,255);
            @(negedge clk);

            rx_valid = 1'b0;
            @(negedge clk);
        end

        for (i = 0; i<1; i++) begin
        // Ram Read Address
            rx_valid = 1'b1;
            din[9:8] = 2'b10;
            din[7:0] = $random;
            @(negedge clk);

            rx_valid = 1'b0;
            @(negedge clk);

        // Ram Read Data
            rx_valid = 1'b1;
            din[9:8] = 2'b11;
            din[7:0] = $random;
            @(negedge clk);

            if (dout == 8'b00000000) begin
                $display("Error - dout");
            end

            //$display("dout: %0d, tx_valid: %0d",dout,tx_valid);
            rx_valid = 1'b0;
            @(negedge clk);
        end
/*
        reset_ram;

        for (i = 0; i<256; i++) begin
        // Ram Write Address
            rx_valid = 1'b1;
            din[9:8] = 2'b00;
            din[7:0] = i;
            @(negedge clk);

            rx_valid = 1'b0;
            @(negedge clk);

        // Ram Write Data
            rx_valid = 1'b1;
            din[9:8] = 2'b01;
            din[7:0] = 255-i;
            @(negedge clk);

            rx_valid = 1'b0;
            @(negedge clk);
        end

        for (i = 0; i<256; i++) begin
        // Ram Read Address
            rx_valid = 1'b1;
            din[9:8] = 2'b10;
            din[7:0] = i;
            @(negedge clk);

            rx_valid = 1'b0;
            @(negedge clk);

        // Ram Read Data
            rx_valid = 1'b1;
            din[9:8] = 2'b11;
            din[7:0] = $random;
            @(negedge clk);

            if (dout != (255-i)) begin
                $display("Error - dout = %0d", dout);
            end

            //$display("dout: %0d, tx_valid: %0d",dout,tx_valid);
            rx_valid = 1'b0;
            @(negedge clk);
        end
*/
        $stop;
    end

    task rst_chk;
        rst_n = 0;
        @(negedge clk);
        if (dout || tx_valid)
            $display("%t: Error - rst",$time);
        rst_n = 1;
    endtask

    task select_state(logic STATE);
        rx_valid = 1'b1;
        din[9:8] = STATE;
        din[7:0] = $random;
    endtask

    task reset_ram;
        for (i = 0; i<256; i++) begin
        // Ram Write Address
            rx_valid = 1'b1;
            din[9:8] = 2'b00;
            din[7:0] = i;
            @(negedge clk);

            rx_valid = 1'b0;
            @(negedge clk);

        // Ram Write Data
            rx_valid = 1'b1;
            din[9:8] = 2'b01;
            din[7:0] = 0;
            @(negedge clk);

            rx_valid = 1'b0;
            @(negedge clk);
        end
    endtask
endmodule