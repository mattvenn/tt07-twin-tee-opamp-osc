v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 170 -140 170 -100 {
lab=vss}
N 170 40 170 80 {
lab=#net1}
N -160 10 -160 40 {
lab=vdd}
N -160 100 -160 130 {
lab=#net2}
N -160 190 -160 220 {
lab=vss}
N -200 70 -180 70 {
lab=vss}
N -200 160 -180 160 {
lab=vss}
N 320 -30 360 -30 {
lab=out}
N -240 -110 -110 -110 {
lab=out}
N -240 -90 -200 -90 {
lab=#net3}
N 360 -240 360 -30 {
lab=out}
N -240 -150 -180 -150 {
lab=vdd}
N -240 -130 -180 -130 {
lab=vss}
N 360 -30 400 -30 {
lab=out}
N -110 -240 -110 -110 {
lab=out}
N -110 -240 360 -240 {
lab=out}
N -160 120 -30 120 {
lab=#net2}
N -30 -90 20 -90 {
lab=#net3}
N -200 -90 -60 -90 {
lab=#net3}
N -30 30 -30 120 {
lab=#net2}
N -30 30 20 30 {
lab=#net2}
N -60 -90 -30 -90 {
lab=#net3}
C {p3_opamp.sym} 140 -20 2 1 {name=x1}
C {devices/lab_pin.sym} 170 -140 2 1 {name=p1 sig_type=std_logic lab=vss
}
C {devices/lab_pin.sym} 170 80 2 1 {name=p4 sig_type=std_logic lab=vdd
}
C {sky130_fd_pr/res_high_po_0p35.sym} -160 160 0 0 {name=R1
L=20
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} -160 10 2 1 {name=p2 sig_type=std_logic lab=vdd
}
C {devices/lab_pin.sym} -160 220 2 1 {name=p6 sig_type=std_logic lab=vss
}
C {devices/lab_pin.sym} -200 160 2 1 {name=p8 sig_type=std_logic lab=vss
}
C {devices/lab_pin.sym} -200 70 2 1 {name=p9 sig_type=std_logic lab=vss
}
C {sky130_fd_pr/res_high_po_0p35.sym} -160 70 0 0 {name=R3
L=20
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {twin_tee.sym} -390 -120 0 0 {name=x2}
C {devices/lab_pin.sym} -180 -150 0 1 {name=p3 sig_type=std_logic lab=vdd
}
C {devices/lab_pin.sym} -180 -130 0 1 {name=p5 sig_type=std_logic lab=vss
}
C {devices/iopin.sym} -380 40 0 0 {name=p12 lab=vdd}
C {devices/iopin.sym} -380 70 0 0 {name=p7 lab=vss}
C {devices/iopin.sym} 400 -30 0 0 {name=p10 lab=out}
