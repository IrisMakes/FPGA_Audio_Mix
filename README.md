# FPGA_Audio_Mix
## Created by Alexi Carlone and Iris Kaucher
**Description:** This is a preliminary version of our full stem mixer. The software combines all the samples into one 128-bit wide stream and transfers it to the hardware. The hardware then seperates all the audio samples and mixes them together, before streaming that to an I2S Transmitter/Receiver setup. This doesn't currently work, as there's some issues with overflowing the DMA buffer.\
**To run:** open software implementation Jupyter notebook. Run each cell in succession. Each individual stem will open an audio player so you can see the individual elements, as well as the final mix.\
**Output example:**

https://github.com/user-attachments/assets/7eb9918b-79d1-4845-af80-5e04f790ed08

Stems obtained from Jamie Paige under Creative Commons BY-NC-SA license: https://jamies.page/stems 
