`timescale 1ns / 1ps

module fir_tb;

  // Clock and input signal
  reg clk;
  reg signed [15:0] noisy_signal;
  wire signed [15:0] filtered_signal;

  // Instantiate the FIR filter
  fir uut (
    .clk(clk),
    .noisy_signal(noisy_signal),
    .filtered_signal(filtered_signal)
  );

  // Clock generation
  initial begin
    clk = 0;
    forever #5 clk = ~clk; // 10 ns clock period
  end

  // Testbench variables
  integer i;
  real sine_value;
  reg signed [15:0] sine_wave[0:99];
  reg signed [15:0] noise;
  reg [15:0] cycle_count;

  // Waveform dumping
  initial begin
    $dumpfile("fir_filter_wave.vcd");
    $dumpvars(1, fir_tb.noisy_signal, fir_tb.filtered_signal);
  end

  // Generate a noisy sine wave
  initial begin
    for (i = 0; i < 100; i = i + 1) begin
      sine_value = $sin(2 * 3.14159 * i / 4);
      sine_wave[i] = $rtoi(sine_value * 32767);
    end

    cycle_count = 0;

    #10000; // Shorten simulation time to 10,000 ns
    $finish;
  end

  // Apply noisy sine wave
  always @(posedge clk) begin
    noise = ($random % 1000) - 500;
    noisy_signal <= sine_wave[cycle_count] + noise;
    cycle_count <= (cycle_count + 1) % 100;
  end

  // Conditional monitoring
  always @(posedge clk) begin
    if ($time % 1000 == 0) begin
      $display("Time: %0t | Noisy Signal: %0d | Filtered Signal: %0d",
               $time, noisy_signal, filtered_signal);
    end
  end

endmodule
