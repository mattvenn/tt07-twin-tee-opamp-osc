v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 50 -440 850 -40 {flags=graph
y1=0.2
y2=1.7
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1.3415823e-06
x2=1.4119507e-06
divx=5
subdivx=4
xlabmag=1.0
ylabmag=1.0



unitx=1
logx=0
logy=0
color=4
node=twin_out
rainbow=1
dataset=-1}
B 2 50 -880 850 -480 {flags=graph
y1=0.00015
y2=0.00035
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1.3415823e-06
x2=1.4119507e-06
divx=5
subdivx=4
xlabmag=1.0
ylabmag=1.0



unitx=1
logx=0
logy=0


rainbow=1
dataset=-1
color=4
node=i(Vmeas)}
N -730 -440 -730 -430 {
lab=vss}
N -620 -440 -620 -430 {
lab=vdd}
N -730 -370 -730 -360 {
lab=GND}
N -620 -370 -620 -360 {
lab=GND}
N -410 -230 -360 -230 {
lab=#net1}
N -410 -210 -360 -210 {
lab=vss}
N -410 -250 -260 -250 {
lab=twin_out}
N -360 -230 -340 -230 {
lab=#net1}
N -280 -230 -260 -230 {
lab=vdd}
C {devices/code.sym} -380 -440 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt_mm
*.include $::SKYWATER_STDCELLS/sky130_fd_sc_hd.spice


"
spice_ignore=false}
C {devices/code.sym} -540 -450 0 0 {name=SIMULATION
only_toplevel=false 
value="
*.option  METHOD = GEAR
*.param mc_mm_switch=0
*.ic v(twin_out)=0.8
.control
repeat 5

  tran 500p 2u uic
  write tb_twin_tee_osc.raw  
  set appendwrite 
  reset

end
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
C {devices/lab_pin.sym} -360 -210 0 1 {name=p1 sig_type=std_logic lab=vss
}
C {devices/lab_pin.sym} -260 -230 0 1 {name=p2 sig_type=std_logic lab=vdd
}
C {devices/lab_pin.sym} -260 -250 0 1 {name=p6 sig_type=std_logic lab=twin_out
}
C {twin_tee_osc.sym} -560 -230 0 0 {name=x1}
C {devices/launcher.sym} 100 50 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tb_twin_tee_osc.raw tran"
}
C {devices/ammeter.sym} -310 -230 1 0 {name=Vmeas savecurrent=false}
