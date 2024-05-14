v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 50 -440 850 -40 {flags=graph
y1=-42
y2=-5.2e-14
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=6.5347528
x2=8.4221896
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0
node="\\"twin_out db20()\\""
color=4
dataset=-1
unitx=1
logx=1
logy=0
}
B 2 50 -870 850 -470 {flags=graph
y1=-80
y2=80
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=6.5347528
x2=8.4221896
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0
node=ph(twin_out)
color=4
dataset=-1
unitx=1
logx=1
logy=0
}
N -730 -440 -730 -430 {
lab=vss}
N -620 -440 -620 -430 {
lab=vdd}
N -730 -370 -730 -360 {
lab=GND}
N -620 -370 -620 -360 {
lab=GND}
N -850 -310 -850 -300 {
lab=twin_in}
N -850 -240 -850 -230 {
lab=GND}
N -410 -210 -360 -210 {
lab=vss}
N -410 -170 -360 -170 {
lab=twin_in}
N -410 -190 -360 -190 {
lab=twin_out}
C {devices/code.sym} -380 -440 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
.include $::SKYWATER_STDCELLS/sky130_fd_sc_hd.spice


"
spice_ignore=false}
C {devices/code.sym} -540 -440 0 0 {name=SIMULATION
only_toplevel=false 
value="
.param mc_mm_switch=0
.control
ac dec 100 1 100e7
*  tran 500p 2u uic
  write testbench.raw  
  set appendwrite 


.endc
"}
C {devices/vsource.sym} -620 -400 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/gnd.sym} -620 -360 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} -620 -440 2 1 {name=p5 sig_type=std_logic lab=vdd
}
C {devices/vsource.sym} -730 -400 0 0 {name=V2 value=0 savecurrent=false}
C {devices/gnd.sym} -730 -360 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} -730 -440 2 1 {name=p7 sig_type=std_logic lab=vss
}
C {devices/vsource.sym} -850 -270 0 0 {name=V3 value="0 ac 1 0" savecurrent=false}
C {devices/gnd.sym} -850 -230 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} -850 -310 2 1 {name=p3 sig_type=std_logic lab=twin_in
}
C {devices/launcher.sym} 120 110 0 0 {name=h1
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/testbench.raw ac"
}
C {twin_tee.sym} -560 -190 0 0 {name=x1}
C {devices/lab_pin.sym} -360 -210 0 1 {name=p1 sig_type=std_logic lab=vss
}
C {devices/lab_pin.sym} -360 -170 0 1 {name=p4 sig_type=std_logic lab=twin_in
}
C {devices/lab_pin.sym} -360 -190 0 1 {name=p6 sig_type=std_logic lab=twin_out
}
