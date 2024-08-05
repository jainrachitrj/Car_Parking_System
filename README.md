# Car_Parking_System
Designed and implemented a car parking system in Verilog HDL
<h3>Problem Statement </h3>
<p>Design a car parking system such that there is a sensor at the entrance gate, which is activated to detect a vehicle coming. Once the sensor is triggered, a password is requested to open the gate. If the entered password is correct, the gate will open to let the vehicle get in. Otherwise, the gate is still locked. If the current car is getting into the car park being detected by the exit sensor and another car comes, the door will be locked and require the coming car to enter passwords.</p>
<h3>Solution</h3>
<p>Designed a <b>Moore Finite State Machine</b> having five states for the car parking system. Developed the design code and testbench (containing test stimuli) in <b>Verilog HDL</b>. Simulated the design using <b>Icarus Verilog</b> and analysed waveforms using <b>GTKWave</b>.</p>
<figure>
  <img src = "./State Transition Diagram.png" alt = "State Transition Diagram" width = "70%">
  <figcaption>State Transition Diagram</figcaption>
</figure>
