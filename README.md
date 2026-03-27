# FPGA_Audio_Mix
## Created by Alexi Carlone and Iris Kaucher
### Project Update 3
**Description:** Added hardware implementation for the audio mixer, using 8 input AXI-Streams and 1 output AXI-Stream. Also created a testbench that runs a software implementation of the mixer and compares it to the hardware implementation. We also did HLS Design Space Exploration to determine which got the best space and latency results.\
**To run:** Set Vitis workspace as git repository folder, run C simulation to carry out testbench, which should have no errors.\
**Output example:**
<img width="3005" height="847" alt="image" src="https://github.com/user-attachments/assets/5a66bc0a-23e4-4d1b-9e19-7562fc3c4bf3" />
**HLS Design Exploration:**
|Design #| Description |	Latency (ns) | DSP | FF |	LUT	Area |
|--------| ----------- | ------------ | --- | -- | -------- |
| Design 1 | No Optimisations |	2.00E+05 |	0 |	222 |	1073 | 2146 |
| Design 2 |	checking switches before reading streams |	4.00E+05 |	0 |	221 |	1199 |	2398 |
| Design 3 |	pipeline II = 1 |	2.00E+05 |	0 |	1107 |	1727 |	3454 |
| Design 4 |	pipeline II = 2 |	4.00E+05 |	0 |	273 |	1125 |	2250 |
| Design 5 |	LUT complete partition |	2.00E+05 |	0 |	307 |	1127 |	2254 |
| Design 6 |	LUT cyclic partition |	2.00E+05 |	0 |	222 |	1073 |	2146 |
| Design 7 |	Real Square Root |	2.00E+05 |	3 |	2146 |	2532 |	5064 |

Stems obtained from Jamie Paige under Creative Commons BY-NC-SA license: https://jamies.page/stems 
