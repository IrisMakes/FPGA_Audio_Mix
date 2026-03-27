# 2026-03-27T14:26:17.658104100
import vitis

client = vitis.create_client()
client.set_workspace(path="FPGA_Audio_Mix")

cfg = client.get_config_file(path="C:\Users\irisk\Documents\FPGA_Audio_Mix\FPGA_Mix_Hardware\hls_config.cfg")

cfg.set_values(key="tb.file", values=["hw_mixer_tb.cpp", "mixer_tb.cpp"])

cfg.set_values(key="syn.file", values=["hw_mixer.cpp", "hw_mixer.h"])

