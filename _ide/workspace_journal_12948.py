# 2026-03-27T14:06:13.535664200
import vitis

client = vitis.create_client()
client.set_workspace(path="FPGA_Audio_Mix")

comp = client.get_component(name="FPGA_Mix_Hardware")
comp.run(operation="SYNTHESIS")

vitis.dispose()

