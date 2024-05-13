v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 1210 -900 2010 -500 {flags=graph
y1=-37
y2=62
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=12
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0
node="\\"vout db20()\\""
color=4
dataset=-1
unitx=1
logx=1
logy=0
}
B 2 1210 -480 2010 -80 {flags=graph
y1=-40
y2=180
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=12
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0
node=ph(vout)
color=4
dataset=-1
unitx=1
logx=1
logy=0
}
N 530 -640 580 -640 {
lab=#net1}
N 420 -640 470 -640 {
lab=VAC}
N 560 -530 1000 -530 {
lab=#net1}
N 560 -640 560 -530 {
lab=#net1}
N 1000 -570 1000 -530 {
lab=#net1}
N 1000 -700 1000 -630 {
lab=VOUT}
N 880 -700 1000 -700 {
lab=VOUT}
C {devices/title.sym} 160 -30 0 0 {name=l1 author="Sai"}
C {devices/vsource.sym} 60 -410 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/lab_pin.sym} 60 -440 0 0 {name=p8 lab=VDD  net_name=true}
C {devices/gnd.sym} 60 -380 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 150 -410 0 0 {name=VI value=0.9 savecurrent=false}
C {devices/gnd.sym} 150 -380 0 0 {name=l5 lab=GND}
C {devices/lab_pin.sym} 150 -440 0 0 {name=p3 lab=VIN  net_name=true}
C {sky130_fd_pr/corner.sym} 20 -190 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/code_shown.sym} 10 -790 0 0 {name=AC_COMMANDS only_toplevel=false value="
.option reltol=1e-5
+  abstol=1e-14 savecurrents
.control
  save all
  ac dec 10 1 1e12
  remzerovec
  write p3_tb_ac.raw
.endc
"}
C {devices/launcher.sym} 80 -560 0 0 {name=h3
descr="Netlist & sim" 
tclcommand="xschem netlist; xschem simulate"}
C {devices/launcher.sym} 80 -520 0 0 {name=h4 
descr="Load/unload
AC waveforms" 
tclcommand="
xschem raw_read $netlist_dir/p3_tb_ac.raw ac
"
}
C {devices/vsource.sym} 110 -300 0 0 {name=V4 value="0 ac 1 0
+ sin(0 1m 100meg 0 0 0)"}
C {devices/lab_pin.sym} 110 -330 0 1 {name=l4 sig_type=std_logic lab=VAC}
C {devices/gnd.sym} 110 -270 0 0 {name=l8 lab=GND}
C {devices/lab_pin.sym} 730 -770 1 0 {name=p6 lab=VDD  net_name=true}
C {devices/gnd.sym} 730 -630 0 0 {name=l7 lab=GND}
C {devices/lab_pin.sym} 580 -760 0 0 {name=p7 lab=VIN  net_name=true}
C {devices/lab_pin.sym} 1000 -700 2 0 {name=p9 lab=VOUT  net_name=true}
C {devices/capa.sym} 500 -640 1 1 {name=C1
m=1
value=1T
footprint=1206
device="ceramic capacitor"}
C {devices/ind.sym} 1000 -600 0 1 {name=L9
m=1
value=1T
footprint=1206
device=inductor}
C {devices/lab_pin.sym} 420 -640 0 0 {name=p10 lab=VAC net_name=true}
C {p3_opamp.sym} 700 -710 0 0 {name=x2}
