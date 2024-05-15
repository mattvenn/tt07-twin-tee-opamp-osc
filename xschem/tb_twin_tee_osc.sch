v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 50 -440 850 -40 {flags=graph
y1=0.55
y2=1.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=4.3597335e-06
x2=4.77205e-06
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
y1=0.00012
y2=0.00034
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=4.3597335e-06
x2=4.77205e-06
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
B 2 60 120 860 520 {flags=graph
y1=-0.0047
y2=1.9
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=4.3597335e-06
x2=4.77205e-06
divx=5
subdivx=4
xlabmag=1.0
ylabmag=1.0



unitx=1
logx=0
logy=0
color="4 5"
node="twin_out_parax
buf_out"
rainbow=1
dataset=-1}
N -730 -440 -730 -430 {
lab=vss}
N -620 -440 -620 -430 {
lab=vdd}
N -730 -370 -730 -360 {
lab=GND}
N -620 -370 -620 -360 {
lab=GND}
N -560 -200 -490 -200 {
lab=#net1}
N -560 -180 -510 -180 {
lab=vss}
N -560 -220 -410 -220 {
lab=#net2}
N -430 -200 -410 -200 {
lab=vdd}
N -300 -220 -260 -220 {
lab=twin_out}
N -260 -220 -220 -220 {
lab=twin_out}
N -410 -220 -360 -220 {
lab=#net2}
N -580 140 -510 140 {
lab=#net3}
N -580 160 -530 160 {
lab=vss}
N -580 120 -430 120 {
lab=#net4}
N -450 140 -430 140 {
lab=vdd}
N -320 120 -280 120 {
lab=twin_out_parax}
N -280 120 -240 120 {
lab=twin_out_parax}
N -430 120 -380 120 {
lab=#net4}
N -510 30 -510 120 {
lab=#net4}
N -510 30 -500 30 {
lab=#net4}
N -420 30 -380 30 {
lab=buf_out}
C {devices/code.sym} -380 -440 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt_mm
.include $::SKYWATER_STDCELLS/sky130_fd_sc_hd.spice


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

  tran 500p 5u uic
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
C {devices/lab_pin.sym} -510 -180 0 1 {name=p1 sig_type=std_logic lab=vss
}
C {devices/lab_pin.sym} -410 -200 0 1 {name=p2 sig_type=std_logic lab=vdd
}
C {devices/lab_pin.sym} -220 -220 0 1 {name=p6 sig_type=std_logic lab=twin_out
}
C {twin_tee_osc.sym} -710 -200 0 0 {name=x1}
C {devices/launcher.sym} 100 50 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tb_twin_tee_osc.raw tran"
}
C {devices/ammeter.sym} -460 -200 1 0 {name=Vmeas savecurrent=false}
C {devices/res.sym} -330 -220 1 0 {name=R1
value=500R
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} -260 -190 0 0 {name=C1
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} -260 -160 0 0 {name=l8 lab=GND}
C {devices/lab_pin.sym} -530 160 0 1 {name=p3 sig_type=std_logic lab=vss
}
C {devices/lab_pin.sym} -430 140 0 1 {name=p4 sig_type=std_logic lab=vdd
}
C {devices/lab_pin.sym} -240 120 0 1 {name=p8 sig_type=std_logic lab=twin_out_parax
}
C {twin_tee_osc.sym} -730 140 0 0 {name=x2
schematic=twin_tee_osc_parax.sim
spice_sym_def="tcleval(.include [file normalize ../mag/twin_tee_osc.sim.spice])"
tclcommand="textwindow [file normalize ../mag/twin_tee_osc.sim.spice]"
}
C {devices/ammeter.sym} -480 140 1 0 {name=Vmeas1 savecurrent=false}
C {devices/res.sym} -350 120 1 0 {name=R2
value=500R
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} -280 150 0 0 {name=C2
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} -280 180 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} -380 30 0 1 {name=p9 sig_type=std_logic lab=buf_out
}
C {sky130_stdcells/clkinv_1.sym} -460 30 0 0 {name=x3 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
