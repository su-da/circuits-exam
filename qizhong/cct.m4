include(/usr/local/lib/m4/circuit_macros/pgf.m4)
include(/usr/local/lib/m4/circuit_macros/libcct.m4)
% define(`dimen_', (dimen_*.8))
% define(`elen_', (elen_*1.25))
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% fig 01
% 由图示电路可求出U1=_________P5A=____ _______
.PS
    cct_init
    elen = elen_
    Origin: Here
    source(up_ elen*1.4, v); llabel(-,\unit{15}{\volt},+)
    line right_ elen*.8; dot
    {
        resistor(down_ Here.y-Origin.y, E); rlabel(,\unit{6}{\ohm},)
        dot
    }
    line right_ elen*.8
    resistor(down_ elen*.6, E); llabel(+,U_1,-);
    rlabel(,\unit{2}{\ohm},);
    source(down elen*.8, i); llabel(+,U_2,-); rlabel(,\unit{5}{\ampere},)
    b_current(,,O,)
    line to Origin
.PE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% fig 02
% 求图示电路中各元件的功率，并说明是发出功率还是吸收功率。
.PS
    cct_init
    elen = elen_
    Origin: Here
    source(up_ elen, v); llabel(-,\unit{10}{\volt},+)
    resistor(right_ elen, E); llabel(,\unit{1}{\ohm},)
    source(down_ elen, i); llabel(+,U,-)
    b_current(\unit{2}{\ampere},below_,O,E)
    arrowline(left_ elen); llabel(,I,)
.PE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% fig 03
% 用等效变换求图示电路中的电流I 。
.PS
    cct_init
    elen = elen_
    Origin: Here
    source(up_ elen*.8, v); llabel(-,\unit{12}{\volt},+)
    resistor(up_ elen*.8, E); llabel(,\unit{2}{\ohm},)
    line right_ elen*.7; dot
    {
        resistor(down_ elen*.8, E); llabel(,\unit{2}{\ohm},)
        source(down_ elen*.8, v); llabel(+,\unit{8}{\volt},-); dot
    }
    resistor(right_ elen, E); llabel(,\unit{3}{\ohm},)
    b_current(I); dot
    {
        resistor(down_ elen*1.6, E); rlabel(,\unit{4}{\ohm},)
        dot
    }
    line right_ elen*.7
    resistor(down_ elen*.8, E); llabel(,\unit{4}{\ohm},)
    source(down_ elen*.8, v); llabel(+,\unit{8}{\volt},-)
    line left_ to Origin
.PE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% fig 04
% 求图所示电路的输入电阻Rin 。
.PS
    cct_init
    elen = elen_
    Origin: Here
    resistor(left_ elen, E); llabel(,\unit{2}{\ohm},); dot
    {
        resistor(down_ elen*1.6, E); llabel(,\unit{8}{\ohm},)
        b_current(i_1); dot
    }
    line left_ elen*.6
    consource(down_ elen*.8, v); rlabel(+,4i_1,-)
    resistor(down_ elen*.8, E); rlabel(,\unit{4}{\ohm},)
    line right_ elen*1.6; gap(up_ elen*1.6, 1); rlabel(,R_\mathrm{in},)
    move down_ elen*.8; line -> left_ elen*.3
.PE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% fig 05
% 求图示电路中电压U1，U2和电流I 。
.PS
    cct_init
    elen = elen_
    Origin: Here
    source(up_ elen,i); llabel(-,U_1,+);
    b_current(\unit{1}{\ampere},below_,O,E)
    resistor(right_ elen*.8,E); llabel(,\unit{1}{\ohm},); dot
    {resistor(down_ elen, E); dlabel(.15,.16,,\unit{2}{\ohm},); dot}
    line right_ elen*.8; dot
    {source(down_ elen, v); llabel(+,\unit{10}{\volt},-)
    b_current(I,below_,O,E); dot}
    resistor(right_ elen,E); llabel(,\unit{1}{\ohm},)
    source(down_ elen, i); llabel(+,U_2,-)
    b_current(\unit{2}{\ampere},below_,O,E)
    line to Origin
.PE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% fig 06
% 试用叠加定理图示电路中电阻支路的电流I1、I3。
.PS
    cct_init
    elen = elen_
    Origin: Here
    resistor(up_ elen, E); llabel(,\unit{1}{\ohm},I_1)
    b_current(,,,E); dot;
    {
        line up_ elen*.6
        source(right_ elen*2, i); llabel(,,\unit{2}{\ampere})
        b_current(,,O,E)
        line down_ elen*.6; dot;
    }
    resistor(right_ elen, E); b_current(,,O)
    llabel(I_2,\unit{1}{\ohm},); dot;
    {source(down_ elen, v); rlabel(+,\unit{4}{\volt},-); dot}
    resistor(right_ elen, E); rlabel(,\unit{3}{\ohm},)
    b_current(I_3,,O,E)
    resistor(down_ elen, E); llabel(,\unit{1}{\ohm},)
    b_current(I_4,,,)
    line to Origin
.PE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% fig 07
% 图示电路以I1、I2、I3为变量列出下图的网孔方程。
.PS
    cct_init
    elen = elen_
    Origin: Here
    source(up_ elen*1.6, v); llabel(-,\unit{5}{\volt},+)
    line right_ elen*.8; dot
    {
        resistor(down_ elen*.8, E); rlabel(,\unit{1}{\ohm},); dot
        {
        consource(right_ elen, v); llabel(+,5I_\mathrm{a},-); dot
        }
        resistor(down_ elen*.8, E); llabel(,\unit{3}{\ohm},)
        b_current(I_\mathrm{a},below_); dot
    }
    line right_ elen
    resistor(down_ elen*.8, E); llabel(,\unit{4.5}{\ohm},)
    resistor(down_ elen*.8, E); llabel(,\unit{4}{\ohm},)
    line to Origin
#    spline -> from (elen*.2, elen*.2) up_ elen*1.2 then right_ elen*.2 then down_ elen*1.2
#    move to (elen*.2, elen*.2); "$I_1$" ljust
#    arcd((elen*1.2, elen*1.2), elen*.2, -160, -10) -> cw
#    arcd((elen*1.2, elen*.4), elen*.2, 160, -90) -> cw
#    move to (elen*1.3, elen*1.35); "$I_2$" above
#    move to (elen*1.3, elen*.25); "$I_3$" below
.PE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% fig 08
% 用回路电流方程求图示电路中的电流I1 。
.PS
    cct_init
    elen = elen_
    Origin: Here
    source(up_ elen, i); b_current(\unit{1}{\ampere},,O,E); dot
    {
        resistor(right_ elen*.8, E); llabel(,\unit{2}{\ohm},); dot
        {
            resistor(right_ elen*.8, E); llabel(,\unit{2}{\ohm},); dot
        }
        consource(down_ elen, i); b_current(2I_1,,O); dot
    }
    line up_ elen*.6
    resistor(right_ elen*1.6, E); llabel(,\unit{1}{\ohm},)
    b_current(\;\;I_1,,O,E)
    line down_ elen*.6
    resistor(down_ elen, E); llabel(,\unit{4}{\ohm},)
    line to Origin
.PE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% fig 09
% 求图示电路中的电流I和电压U。
.PS
    cct_init
    elen = elen_
    Origin: Here
    dot; "$-$" above rjust
    {
        consource(up_ elen*.8, v); rlabel(-,3U,+); move down_ elen*.2
        resistor(up_ elen*.8, E); rlabel(,\unit{2}{\ohm},)
        dot; "$+$" rjust below
        move down_ elen*.7
        "$U$" rjust
    }
    resistor(left_ elen, E); llabel(,\unit{2.5}{\ohm},)
    source(up_ elen*1.4, v); llabel(-,\unit{8}{\volt},+)
    b_current(I,below_)
    resistor(right_ elen, E); rlabel(,\unit{1.5}{\ohm},)
    line right_ elen
    source(down_ elen*1.4, i); b_current(\unit{1}{\ampere},,O)
    line to Origin
.PE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% fig 10
% 求图示电路中的电流I和电压U。
.PS
    cct_init
    elen = elen_
    Origin: Here
    resistor(up_ elen*1.4, E); llabel(,\unit{1}{\ohm},)
    rlabel(-,U,+); line right_ elen; dot
    {
        consource(down_ elen*1.4, i); b_current(1U,below_,O,E); dot
    }
    resistor(right_ elen, E); b_current(I,,O)
    llabel(,\unit{2}{\siemens},)
    source(down_ elen*.8, v); llabel(+,\unit{5}{\volt},-)
    move up_ elen*.2
    resistor(down_ elen*.8, E); llabel(,\unit{2}{\siemens},)
    consource(left_ elen, v); rlabel(-,1I,+)
    line to Origin
.PE
