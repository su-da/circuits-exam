include(/usr/local/lib/m4/circuit_macros/pgf.m4)
include(/usr/local/lib/m4/circuit_macros/libcct.m4)
% define(`dimen_', (dimen_*.8))
% define(`elen_', (elen_*1.25))
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% fig 01
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
% fig 02
% 图示电路中，求（1）开关打开时，电压UAB 。（2）开关闭合时，电流IAB 。
.PS
    cct_init
    elen = elen_
    Origin: Here
    source(up_ elen*1.6, v); llabel(-,\unit{18}{\volt},+)
    line right_ elen*.6; dot
    {
        resistor(down_ elen*.8, E); llabel(,\unit{3}{\ohm},)
        dot; "A" rjust
        {
            arrowline(right_ elen); llabel(,I_\mathrm{AB},)
        }
        resistor(down_ elen*.8, E); llabel(,\unit{6}{\ohm},)
        dot
    }
    line right_ elen
    resistor(down_ elen*.8, E); llabel(,\unit{6}{\ohm},); dot
    "B" ljust
    resistor(down_ elen*.8, E); llabel(,\unit{3}{\ohm},)
    line left_ to Origin
.PE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% fig 03
% 求图所示电路的输入电阻Rin 。
.PS
    cct_init
    elen = elen_
    Origin: Here
    line left_ elen*.4; dot
    {consource(left_ elen, i); b_current(1u,below_,O,E)}
    line up_ elen*.6
    resistor(left_ elen, E); rlabel(,\unit{2}{\ohm},)
    line down_ elen*.6; dot
    {
        resistor(down_ elen*.8, E); llabel(,\unit{2}{\ohm},)
        dot
    }
    line left_ elen*.6
    resistor(down_ elen*.8, E); rlabel(,\unit{2}{\ohm},)
    line right_ elen*2;"$-$" above
    gap(up_ elen*.8, 1)
    clabel(,u,); "$+$" below
    move down_ elen*.4 then right_ elen*.1; line <- right_ elen*.3
    "$R_\mathrm{in}$" ljust
.PE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% fig 04
% 求电流 I。
.PS
    cct_init
    elen = elen_
    Origin: Here
    source(up_ elen*.5, v); llabel(-,\unit{30}{\volt},+)
    resistor(up_ elen*.5, E); llabel(,\unit{5}{\ohm},)
    dot;
    {
        line up_ elen*.6
        source(right_ elen*2, i); llabel(,,\unit{1}{\ampere})
        b_current(,,O,E)
        line down_ elen*.6; dot;
    }
    resistor(right_ elen, E); llabel(,\unit{5}{\ohm},); dot;
    {resistor(down_ elen, E); rlabel(,\unit{30}{\ohm},); 
     b_current(I,,O,E); dot}
    resistor(right_ elen, E); llabel(,\unit{20}{\ohm},)
    source(down_ elen, v); llabel(+,\unit{5}{\volt},-)
    line to Origin
.PE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% fig 05
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
% fig 06
% R_L 可调，求 R_L 所能获得的最大功率。.
.PS
    cct_init
    elen = elen_
    Origin: Here
    source(up_ elen, i); b_current(\unit{2}{\ampere},,O,E)
    line right_ elen*.6; dot
    {resistor(down_ elen, E); llabel(,\unit{1}{\ohm},); dot}
    resistor(right_ elen*.6, E); llabel(,\unit{1}{\ohm},)
    source(right_ elen*.6, v); llabel(+,\unit{6}{\volt},-); dot
    {resistor(down_ elen, E); llabel(,\unit{2}{\ohm},); dot}
    line right_ elen*.8
    resistor(down_ elen, E); llabel(,R_\mathrm{L},)
    variable()
    line to Origin
.PE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% fig 07
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
% fig 08
% 用结点电压法求图示电路中电压U（3-21）。
.PS
    cct_init
    elen = elen_
    Origin: Here
    source(up_ elen, v); llabel(-,\unit{50}{\volt},+); dot
    {
        resistor(right_ elen, E); llabel(,\unit{5}{\ohm},); dot
        {
            resistor(right_ elen, E); llabel(,\unit{4}{\ohm},); dot
        }
        resistor(down_ elen, E); llabel(,\unit{20}{\ohm},)
        rlabel(+,U,-); b_current(I); dot
    }
    line up_ elen*.6
    resistor(right_ elen*2, E); llabel(,\unit{10}{\ohm},)
    line down_ elen*.6
    consource(down_ elen, v); llabel(+,15I,-)
    line to Origin
.PE
