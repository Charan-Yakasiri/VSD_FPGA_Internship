// Simulation-only stubs for iCE40 hardware primitives
// These are NEVER synthesized — simulation use only

// SB_HFOSC: iCE40 internal high-frequency oscillator
// In simulation we just generate a toggling clock
module SB_HFOSC (
    input  CLKHFPU,
    input  CLKHFEN,
    output CLKHF
);
    parameter CLKHF_DIV = "0b10";
    reg clk_r = 0;
    always #5 clk_r = ~clk_r; // toggles every 5ns = 100MHz (fast enough)
    assign CLKHF = clk_r;
endmodule

// SB_PLL40_CORE: iCE40 PLL
// In simulation just pass the clock through
module SB_PLL40_CORE (
    input  REFERENCECLK,
    output PLLOUTGLOBAL,
    output PLLOUTCORE,
    input  EXTFEEDBACK,
    input  DYNAMICDELAY,
    output LOCK,
    input  BYPASS,
    input  RESETB,
    output SDO,
    input  SDI,
    input  SCLK
);
    parameter FEEDBACK_PATH  = "SIMPLE";
    parameter PLLOUT_SELECT  = "GENCLK";
    parameter DIVR           = 4'b0000;
    parameter DIVF           = 7'b0000000;
    parameter DIVQ           = 3'b000;
    parameter FILTER_RANGE   = 3'b000;

    assign PLLOUTGLOBAL = REFERENCECLK;
    assign PLLOUTCORE   = REFERENCECLK;
    assign LOCK         = 1'b1;
    assign SDO          = 1'b0;
endmodule