# FPGA_Audio_Mix
## Created by Alexi Carlone and Iris Kaucher
**Description:** This is a preliminary version of our full stem mixer. The software combines all the samples into one 128-bit wide stream and transfers it to the hardware. The hardware then seperates all the audio samples and mixes them together, before streaming that to an I2S Transmitter/Receiver setup. This doesn't currently work, as there's some issues with overflowing the DMA buffer.\
**Block Diagram:**
<img width="3408" height="1787" alt="image" src="https://github.com/user-attachments/assets/759e3efb-e7a3-40fb-ac0b-dbd9006ae142" />
**To run:** upload bit files, stem files, and jupyter notebook to pynq. Open Jupyter notebook. Run each cell in succession.\
**Output example:**

https://github.com/user-attachments/assets/7eb9918b-79d1-4845-af80-5e04f790ed08

Stems obtained from Jamie Paige under Creative Commons BY-NC-SA license: https://jamies.page/stems 

Plan for rest of semester: Our main goal for the semester is to get a successfully mixed audio output. Beyond that we want to impement some of the algorithms listed in our original proposal to increase the quality of our mix such as: 
  - 𝐼𝑓 𝑀𝑖𝑥 > 𝑇, 𝐿𝑖𝑚𝑖𝑡𝑒𝑑 = 𝑇, 𝐸𝑙𝑠𝑒 𝐿𝑖𝑚𝑖𝑡𝑒𝑑 = 𝑀𝑖𝑥 -> to ensure the volume remains similar regardless of number of tracks in a mix
  - 𝑂𝑢𝑡𝑝𝑢𝑡 = ((𝐿𝑖𝑚𝑖𝑡𝑒𝑑 − 𝑇ℎ𝑟𝑒𝑠ℎ𝑜𝑙𝑑) / 𝑅𝑎𝑡𝑖𝑜) + 𝑇ℎ𝑟𝑒𝑠ℎ𝑜𝑙𝑑 -> compresser to attenuate the final mix signal if it exceeds a given threshold
  - 𝑁𝑜𝑟𝑚𝑎𝑙𝑖𝑧𝑒𝑑 𝑏𝑢𝑓𝑓𝑒𝑟 = 𝑏𝑢𝑓𝑓𝑒𝑟 * (1 / 𝑚𝑎𝑥(𝑏𝑢𝑓𝑓𝑒𝑟)) -> processing done in python before mix to ensure tracks have peaks of equal volume

AI Disclosure: We made some minimal use of AI in this project, all AI use was for the purposes of debugging code.
