v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -230 -150 -140 -150 {
lab=c1_c2}
N -140 -150 20 -150 {
lab=c1_c2}
N 20 -150 140 -150 {
lab=c1_c2}
N -370 -150 -290 -150 {
lab=in}
N -180 70 80 70 {
lab=c3_c4}
N 140 70 240 70 {
lab=out}
N 240 -150 240 70 {
lab=out}
N -370 70 -240 70 {
lab=in}
N -370 -140 -370 70 {
lab=in}
N -370 -150 -370 -140 {
lab=in}
N -40 70 -40 140 {
lab=c3_c4}
N -40 200 -40 230 {
lab=vss}
N -20 170 10 170 {
lab=vss}
N 10 170 10 230 {
lab=vss}
N -40 230 10 230 {
lab=vss}
N -260 -200 -260 -170 {
lab=vss}
N -260 -200 170 -200 {
lab=vss}
N 170 -200 170 -170 {
lab=vss}
N -140 -90 20 -90 {
lab=vss}
N -90 -90 -90 -60 {
lab=vss}
N 200 -150 240 -150 {
lab=out}
N -40 40 -40 70 {
lab=c3_c4}
N 20 -170 20 -150 {
lab=c1_c2}
C {sky130_fd_pr/res_high_po_0p35.sym} 170 -150 1 0 {name=R5
L=50
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/cap_mim_m3_1.sym} 20 -120 2 0 {name=C1 model=cap_mim_m3_1 W=15 L=15 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} -140 -120 2 0 {name=C2 model=cap_mim_m3_1 W=15 L=15 MF=1 spiceprefix=X}
C {sky130_fd_pr/res_high_po_0p35.sym} -260 -150 1 0 {name=R4
L=50
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/cap_mim_m3_1.sym} -210 70 3 0 {name=C3 model=cap_mim_m3_1 W=15 L=15 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 110 70 3 0 {name=C4 model=cap_mim_m3_1 W=15 L=15 MF=1 spiceprefix=X}
C {sky130_fd_pr/res_high_po_0p35.sym} -40 170 2 0 {name=R6
L=23
model=res_high_po_0p35
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} -40 230 2 1 {name=p10 sig_type=std_logic lab=vss
}
C {devices/lab_pin.sym} -260 -200 2 1 {name=p11 sig_type=std_logic lab=vss
}
C {devices/lab_pin.sym} -90 -60 2 1 {name=p4 sig_type=std_logic lab=vss
}
C {devices/iopin.sym} -410 -220 0 0 {name=p3 lab=vss}
C {devices/iopin.sym} -370 -150 2 0 {name=p5 lab=in}
C {devices/iopin.sym} 240 -150 0 0 {name=p1 lab=out}
C {devices/lab_pin.sym} -40 40 2 1 {name=p2 sig_type=std_logic lab=c3_c4
}
C {devices/lab_pin.sym} 20 -170 2 1 {name=p6 sig_type=std_logic lab=c1_c2
}
