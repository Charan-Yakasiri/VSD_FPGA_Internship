module vsd_gpio(
    input wire clk,
    input wire resetn,
    input wire [31:0] wdata,
    input wire i_sel,
    input wire i_we,
    output reg [31:0] gpio_reg,
    output wire [31:0] rdata    
);

always @(posedge clk) begin
    if(!resetn)begin
        gpio_reg<=32'h0;
    end
    else if (i_sel && i_we)begin
        gpio_reg <= wdata;
    end
end
assign rdata = gpio_reg;
endmodule

// we use both i_sel & i_we, to drive data to the register,, Because selecting a pin is not enough...