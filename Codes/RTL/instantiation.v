module instantiation (
    input clk, rst_n,
    input MOSI, SS_n,

    output MISO
);

    wire tx_valid, rx_valid;
    wire [9:0]rx_data;
    wire [7:0]tx_data;

    SPI spiBlock(
    .clk(clk), .rst_n(rst_n),
    .MOSI(MOSI), .SS_n(SS_n),

    .tx_valid(tx_valid),
    .tx_data(tx_data),

    .MISO(MISO), 
    .rx_valid(rx_valid),  .rx_data(rx_data)
    );

    RAM #(
        .MEM_DEPTH(256),
        .ADDR_SIZE(8)
    )ramBlock(
        .clk(clk), .rst_n(rst_n),
        .din(rx_data),
        .rx_valid(rx_valid),
        .dout(tx_data),
        .tx_valid(tx_valid)
    );
endmodule