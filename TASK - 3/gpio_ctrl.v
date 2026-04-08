module gpio_ctrl(
    input wire clk,
    input wire resetn,
    input wire [31:0] wdata,
    input wire i_sel,
    input wire i_dir,
    input wire i_sel_read,
    input wire i_we,
    input  reg [31:0] gpio_in,
    output reg [31:0] gpio_out,
    output wire [31:0] rdata 
);

reg [31:0] data_reg;
reg [31:0] dir_reg;

assign gpio_out = data_reg & dir_reg;

always @ (posedge clk)begin
    if (!resetn) begin
        data_reg <= 32'h0;
        dir_reg <= 32'h0;
    end
    else if (i_we) begin
        if (i_sel_read) data_reg <=wdata;
        if (i_dir) dir_reg <= wdata;
    end
end

wire [31:0] read_val = (dir_reg & data_reg) | (~dir_reg & gpio_in);
assign rdata = i_sel_dir  ? dir_reg  :
                   i_sel_read ? read_val :
                                data_reg ;
endmodule
