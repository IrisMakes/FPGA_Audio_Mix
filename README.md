# FPGA_Audio_Mix
## Created by Alexi Carlone and Iris Kaucher
**Description:** This is a preliminary version of our full stem mixer. The software combines all the samples into one 128-bit wide stream and transfers it to the hardware. The hardware then seperates all the audio samples and mixes them together, before streaming that to an I2S Transmitter/Receiver setup. This doesn't currently work, as there's some issues with overflowing the DMA buffer.\
**Block Diagram:**
<img width="3408" height="1787" alt="image" src="https://github.com/user-attachments/assets/759e3efb-e7a3-40fb-ac0b-dbd9006ae142" />
**To run:** upload bit files, stem files, and jupyter notebook to pynq. Open Jupyter notebook. Run each cell in succession.\
**Output example:**

https://github.com/user-attachments/assets/7eb9918b-79d1-4845-af80-5e04f790ed08

Stems obtained from Jamie Paige under Creative Commons BY-NC-SA license: https://jamies.page/stems 
