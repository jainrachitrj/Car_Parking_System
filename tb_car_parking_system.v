`timescale 1ns / 1ps

module tb_car_parking_system;

	// Inputs
	reg clk;
	reg reset_n;
	reg Front_Sensor;
	reg Back_Sensor;
	reg [1:0] password_1;
	reg [1:0] password_2;

	// Outputs
	wire GREEN_LED;
	wire RED_LED;
	wire [6:0] HEX_1;
	wire [6:0] HEX_2;

	// Instantiate the Unit Under Test (UUT)
	car_parking_system uut (
	.clk(clk), 
	.reset_n(reset_n), 
	.Front_Sensor(Front_Sensor), 
	.Back_Sensor(Back_Sensor), 
	.password_1(password_1), 
	.password_2(password_2), 
	.GREEN_LED(GREEN_LED), 
	.RED_LED(RED_LED), 
	.HEX_1(HEX_1), 
	.HEX_2(HEX_2)
	);

	initial begin
		clk = 0;
		forever #10 clk = ~clk;
	end

	initial begin
		// Initialize Inputs
		reset_n = 0;
		Front_Sensor = 0;
		Back_Sensor = 0;
		password_1 = 0;
		password_2 = 0;

		// Wait 100 ns for global reset to finish
		#100;
			reset_n = 1'b1;
		#20;
		Front_Sensor = 1'b1;
		#1000;

		Front_Sensor = 1'b0;
		password_1 = 2'b01;

		password_2 = 2'b10;

		#2000;
		Back_Sensor = 1'b1;
		#100
		Front_Sensor = 1'b1;

		// Add stimulus here
		#3000 $finish;
	end

endmodule