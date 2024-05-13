v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 1350 -420 2150 -20 {flags=graph
y1=0.98581244
y2=1.0177026
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=4.9447916e-07
x2=5.6044985e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="vout
vin"
color="7 6"
dataset=-1
unitx=1
logx=0
logy=0
}
N 400 -220 450 -220 {
lab=VOUT}
N 400 -220 400 -100 {
lab=VOUT}
N 400 -100 820 -100 {
lab=VOUT}
N 820 -280 820 -100 {
lab=VOUT}
N 750 -280 820 -280 {
lab=VOUT}
N 820 -280 860 -280 {
lab=VOUT}
N 880 -280 880 -260 {
lab=VOUT}
N 860 -280 880 -280 {
lab=VOUT}
C {devices/title.sym} 160 -30 0 0 {name=l1 author="Sai"}
C {devices/vsource.sym} 50 -360 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/lab_pin.sym} 50 -390 0 0 {name=p8 lab=VDD  net_name=true}
C {devices/gnd.sym} 50 -330 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 140 -360 0 0 {name=V2 value="sin(1 10m 40e6 0)" savecurrent=false}
C {devices/gnd.sym} 140 -330 0 0 {name=l5 lab=GND}
C {devices/lab_pin.sym} 140 -390 0 0 {name=p3 lab=VIN  net_name=true}
C {devices/launcher.sym} 980 -500 0 0 {name=h5
descr="load Transient waves" 
tclcommand="xschem raw_read $netlist_dir/tb_tran.raw tran"
}
C {sky130_fd_pr/corner.sym} 30 -240 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/code_shown.sym} 50 -640 0 0 {name=COMMANDS1 only_toplevel=false value="
.options savecurrents
.control
  save all
  tran 500p 1u
  write tb_tran.raw
.endc
"}
C {devices/lab_pin.sym} 600 -350 1 0 {name=p1 lab=VDD  net_name=true}
C {devices/gnd.sym} 600 -210 0 0 {name=l3 lab=GND}
C {devices/res.sym} 880 -230 0 0 {name=R1
value=20k
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 880 -200 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} 450 -340 0 0 {name=p2 lab=VIN  net_name=true}
C {devices/lab_pin.sym} 880 -280 2 0 {name=p4 lab=VOUT  net_name=true}
C {p3_opamp.sym} 570 -290 0 0 {name=x1}
