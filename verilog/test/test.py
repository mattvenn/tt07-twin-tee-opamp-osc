import cocotb
from cocotb.clock import Clock
from cocotb.triggers import RisingEdge, FallingEdge, Timer, ClockCycles

async def reset(dut):
    dut._log.info("reset")
    dut.n_rst.value = 0
    await ClockCycles(dut.clk, 10)
    dut.n_rst.value = 1

@cocotb.test()
async def test(dut):
    dut._log.info("start")
    clock = Clock(dut.clk, 10, units="us")
    cocotb.start_soon(clock.start())

    await reset(dut)
    assert dut.count.value == 0
    for i in range(2**12+1):
        await ClockCycles(dut.clk, 1)

    assert dut.count.value == 1
