// ===================================================================
// TITLE : PERIDOT Piccolo blank_top
//
//   DEGISN : S.OSAFUNE (J-7SYSTEM WORKS LIMITED)
//   DATE   : 2017/03/01 -> 2017/03/01
//   MODIFY : 2017/04/13
//
// ===================================================================
// *******************************************************************
//       (C)2017, J-7SYSTEM WORKS LIMITED.  All rights Reserved.
//
// * This module is a free sourcecode and there is NO WARRANTY.
// * No restriction on use. You can use, modify and redistribute it
//   for personal, non-profit or commercial products UNDER YOUR
//   RESPONSIBILITY.
// * Redistributions of source code must retain the above copyright
//   notice.
// *******************************************************************


module piccolo_blank_top(
	// clk and system reset
	input wire			CLOCK_50,
	input wire			RESET_N,

	// Interface: Host communication
	input wire			RXD,
	output wire			TXD,

	// Interface: SDRAM
	output wire			SDRCLK_OUT,
	output wire			SDR_CKE,
	output wire			SDR_CS_N,
	output wire			SDR_RAS_N,
	output wire			SDR_CAS_N,
	output wire			SDR_WE_N,
	output wire [11:0]	SDR_A,
	output wire [1:0]	SDR_BA,
	inout wire  [15:0]	SDR_DQ,
	output wire [1:0]	SDR_DQM,

	// Interface: On board SPI-Flash
	output wire			SPI_SS_N,
	output wire			SPI_SCK,
	output wire			SPI_MOSI,
	input wire			SPI_MISO,

	// GPIO
	inout wire  [29:0]	D,

	// LED
	output wire			LED
);

	///// Instance of Dual boot IP /////
	dual_image_boot dual_image_boot_inst(.clk_clk(CLOCK_50),.reset_reset_n(RESET_N));




endmodule
