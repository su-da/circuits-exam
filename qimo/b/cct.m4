include(/usr/local/lib/m4/circuit_macros/pgf.m4)
include(/usr/local/lib/m4/circuit_macros/libcct.m4)
define(`dimen_', (dimen_*.8))
define(`elen_', (elen_*1.25))
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% fig 01
% 求电路中三个器件的功率，并注明是吸收还是发出。
.PS
    cct_init
    elen = elen_
    Origin: Here
    source(up_ elen, v); llabel(-,\unit{1}{\volt},+)
    resistor(right_ elen, E); llabel(,\unit{2}{\ohm},)
    source(down_ elen, i); llabel(,\unit{1}{\ampere},)
    b_current(,,O,E)
    line to Origin
.PE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% fig 02
% 求图中的电流 $I$。
.PS
    cct_init
    elen = elen_
    Origin: Here
    source(up_ elen*1.4, v); llabel(-,\unit{10}{\volt},+); dot
    {
        line up_ elen*.8; source(right_ elen*2, i)
        llabel(,,\unit{1}{\ampere})
        b_current(,,O,E)
        line down_ elen*.8
    }
    resistor(right_ elen, E); llabel(,\unit{10}{\ohm},); dot
    {
        resistor(down_ elen*1.4, E); rlabel(\unit{10}{\ohm},,); dot
    }
    resistor(right_ elen, E); llabel(,\unit{5}{\ohm},); dot
    resistor(down_ elen*.7, E); llabel(,\unit{10}{\ohm},);
    source(down_ elen*.7, v); llabel(+,\unit{5}{\volt},-)
    arrowline(left_ elen); llabel(,I,)
    line to Origin
.PE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% fig 03
% 列出图中电路的结点电压方程.(3-15b)
.PS
    cct_init
    elen = elen_
    Origin: Here
    line left_ elen*.7
    source(up_ elen, v); llabel(-,\unit{1}{\volt},+)
    resistor(right_ elen*.7, E); llabel(,\unit{0.2}{\ohm},); dot
    {resistor(down_ elen, E); llabel(,\unit{1}{\ohm},); dot}
    {resistor(right_ elen*1.4, E); rlabel(,\unit{1}{\ohm},); dot}
    line up_ elen*.6; resistor(right_ elen*.7, E); llabel(,\unit{1}{\ohm},)
    source(right_ elen*.7, v); llabel(-,\unit{1}{\volt},+)
    line down_ elen*.6
    {resistor(down_ elen, E); rlabel(,\unit{1}{\ohm},); dot}
    line right_ elen*.5
    source(down_ elen, i); b_current(\unit{3}{\ampere},,O)
    line to Origin
.PE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% fig 04
% 求图示电路的戴维宁或诺顿等效电路（4-12c）
.PS
    cct_init
    elen = elen_
    Origin: Here
    resistor(left_ elen*.7, E); rlabel(,\unit{2}{\ohm},); dot
    {
        resistor(down_ elen*.8, E); llabel(,\unit{4}{\ohm},)
        move up_ elen*.2
        consource(down_ elen*.8, v); llabel(-,2I_1,+); dot
    }
    resistor(left_ elen*.7, E); rlabel(,\unit{2}{\ohm},)
    source(down_ elen*1.4, v); rlabel(+,\unit{4}{\volt},-)
    b_current(I_1,,O)
    line to (Origin.x, Here.y); "$1'$" above
    gap(up_ elen*1.4, 1); "$1$" below
.PE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% fig 05
% 下图中 $R_\mathrm{L}$ 为多大时 $R_\mathrm{L}$ 可获得最大功率，
% 并求此最大功率。
.PS
    cct_init
    elen = elen_
    Origin: Here
    source(up_ elen*.8, v); llabel(-,\unit{20}{\volt},+);
    resistor(right_ elen*.8, E); llabel(,\unit{10}{\ohm},); dot
    {
        resistor(right_ elen*.8, E); llabel(,\unit{10}{\ohm},); dot
    }
    {
        resistor(down_ elen*.8, E); rlabel(,\unit{10}{\ohm},); dot
    }
    line up_ elen*.6;
    resistor(right_ elen*.8, E); llabel(,\unit{10}{\ohm},);
    line down_ elen*.6;
    resistor(down_ elen*.8, E); llabel(,R_\mathrm{L},)
    variable()
    line to Origin
.PE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% fig 06
% 图示电路中开关S打开前已处于稳态。t=0开关打开，求t>0时的ic(t)。（6-17）
.PS
    cct_init
    elen = elen_
    Origin: Here
    source(up_ elen*1.4, v); llabel(-,\unit{6}{\volt},+)
    resistor(right_ elen, E); llabel(,\unit{100}{\ohm},); dot
    {
        resistor(down_ elen*.6, E); llabel(,\unit{100}{\ohm},)
        arrowline(down_ elen*.2); llabel(,i_C,)
        capacitor(down_ elen*.6); rlabel(,\unit{1}{\milli\farad},);
        llabel(+, u_C, -); dot
    }
    line right_ elen*.8
    switch(down_ elen*.7,,O); llabel(,S,)
    resistor(down_ elen*.7, E); llabel(,\unit{100}{\ohm})
    line to Origin
.PE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% fig 07
% 试求下图电路的输入阻抗~$Z$~或导纳~$Y$。
.PS
    cct_init
    elen = elen_
    Origin: Here
    resistor(right_ elen, E); llabel(,\unit{1}{\ohm},);dot;
    {
        capacitor(down_ elen); rlabel(,-\jimag\unit{1}{\ohm}); dot;
    }
    resistor(right_ elen*.8, E); llabel(,\unit{1}{\ohm},)
    inductor(down_ elen, W); llabel(,\jimag \unit{1}{\ohm},)
    line to (Origin.x, Here.y)
    gap(up_ elen, 1)
.PE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% fig 08
% 给出图中电路的结点电压方程和回路电流方程。
.PS
    cct_init
    elen = elen_
    Origin: Here
    source(up_ elen,v); llabel(-,\mathdot{U}_{\rm S},+)
    resistor(right_ elen*.7, E); llabel(,\unit{1}{\ohm},); dot
    "\ding{172}" below
    {
        line up_ elen*.8
        resistor(right_ elen*2, E); llabel(,\unit{1}{\ohm},)
        b_current(\mathdot{I},,O)
        line down_ elen*.8
    }
    resistor(right_ elen, E); rlabel(,\unit{1}{\ohm},); dot
    "\ding{173}" above
    {
        consource(down_ elen, v); rlabel(+,2\mathdot{I},-); dot;
        ground(,,E)
    }
    capacitor(right_ elen); llabel(,-\jimag \unit{10}{\ohm},); dot;
    "\ding{174}" ljust
    inductor(down_ elen,W); llabel(,\jimag \unit{10}{\ohm},)
    line to Origin
    arcd((.8*elen,.5*elen),.3*elen,180,-90) -> cw
    arcd((2.2*elen,.5*elen),.3*elen,180,-90) -> cw
    arcd((1.5*elen,1.4*elen),.2*elen,0,270) ->
.PE
