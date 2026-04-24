# 2026-04-22T15:02:21.433194723
import vitis

client = vitis.create_client()
client.set_workspace(path="FPGA_Audio_Mix")

comp = client.get_component(name="FPGA_Mix_Hardware")
comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="PACKAGE")

comp.run(operation="SYNTHESIS")

comp.run(operation="PACKAGE")

comp.run(operation="SYNTHESIS")

comp.run(operation="PACKAGE")

comp.run(operation="SYNTHESIS")

comp.run(operation="PACKAGE")

comp.run(operation="PACKAGE")

vitis.dispose()

