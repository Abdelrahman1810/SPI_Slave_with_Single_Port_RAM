module tb_instantiation ();
    reg clk, rst_n;
    reg MOSI, SS_n;

    wire MISO;

    instantiation ins(
        .clk(clk), .rst_n(rst_n),
        .MOSI(MOSI), .SS_n(SS_n),
        .MISO(MISO)
    );

    parameter READ = 1;
    parameter WRITE = 0;

    reg [9:0] MOSI_array;
    reg [7:0] MISO_array;
    integer i;
    integer j;
    reg [7:0] chk_data [255:0];

    initial begin
        clk = 0;
        forever #1 clk=~clk;
    end

    initial begin
        $readmemb ("ram.dat", ins.ramBlock.ram);
        rst_chk;
        j=0;
        repeat(256) begin
        // Write Address
            select_state(WRITE);

            i=0;
            MOSI_array[9:8] = 2'b00;
            MOSI_array[7:0] = j;
            repeat(10) begin
                MOSI = MOSI_array[i];
                @(negedge clk);
                i=i+1;
            end
            
            SS_n = 1;
            @(negedge clk);

        // Write Data
            select_state(WRITE);

            i=0;
            MOSI_input_write(2'b01);
            chk_data[j] = MOSI_array[7:0];

            SS_n = 1;
            @(negedge clk);
            j=j+1;
        end
        j=0;
        repeat(256) begin
        // Read Address
            select_state(READ);

            i=0;
            MOSI_array[9:8] = 2'b10;
            MOSI_array[7:0] = j;
            repeat(10) begin
                MOSI = MOSI_array[i];
                @(negedge clk);
                i=i+1;
            end

            SS_n = 1;
            @(negedge clk);

        // Read Data
            select_state(READ);
            
            i=0;
            MOSI_input_read({2'b11, 8'b00000000});
            @(negedge clk);

            i=0;
            repeat(8) begin
                @(negedge clk);
                MISO_array[i] = MISO;
                i=i+1;
            end
            if (MISO_array != chk_data[j])
                $display("%t: Error", $time);
            
            SS_n = 1;
            @(negedge clk);
            j=j+1;
        end
        $stop;
    end

    task rst_chk;
        rst_n = 0;
        @(negedge clk);
        if (MISO)
            $display("%t: Error - rst",$time);
        rst_n = 1;
    endtask

    task select_state(logic STATE);
        SS_n = 0;
        @(negedge clk);
        MOSI = STATE;
        @(negedge clk);
    endtask

    task MOSI_input_write(logic [1:0]OPERATION);
        MOSI_array[9:8] = OPERATION;
        MOSI_array[7:0] = $random;
        repeat(10) begin
            MOSI = MOSI_array[i];
            @(negedge clk);
            i=i+1;
        end
    endtask

    task MOSI_input_read(logic [9:0] MOSI_IN);
        repeat(10) begin
            MOSI = MOSI_IN[i];
            @(negedge clk);
            i=i+1;
        end
    endtask
endmodule