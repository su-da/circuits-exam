include(/usr/local/lib/m4/circuit_macros/pgf.m4)
include(/usr/local/lib/m4/circuit_macros/libcct.m4)
define(`dimen_', (dimen_*.8))
define(`elen_', (elen_*1.25))
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% fig 01
% 求电路图中各电源的功率（注明性质）。P1A=____________，
% P1V=______________。
.PS
    cct_init
    elen = elen_
    Origin: Here
    source(up_ elen, i); b_current(\unit{1}{\ampere},,O)
    line right_ elen*.8; dot
    {
        resistor(down_ elen, E); llabel(\unit{1}{\ohm},,); dot
    }
    line right_ elen*.8
    source(down_ elen, v); llabel(+,\unit{1}{\volt},-)
    line to Origin
.PE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% fig 02
% 求图中的电流 $I$。(P77,3-11)
.PS
    cct_init
    elen = elen_
    Origin: Here
    source(up_ elen*.6, v); llabel(-,\unit{30}{\volt},+);
    resistor(up_ elen*.6, E); llabel(,\unit{5}{\ohm},); dot
    {
        line up_ elen*.7
        source(right_ elen*2, i); b_current(\unit{1}{\ampere},,O,E)
        line down_ elen*.7
    }
    resistor(right_ elen, E); llabel(,\unit{5}{\ohm},); dot
    {
        resistor(down_ elen*1.2, E); llabel(,\unit{30}{\ohm},);
        b_current(I, below_, O, E); dot
    }
    resistor(right_ elen, E); llabel(,\unit{20}{\ohm},); dot
    source(down_ elen*1.2, v); llabel(+,\unit{5}{\volt},-)
    line to Origin
.PE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% fig 03
% 列写以下电路的结点电压方程并求解之。
.PS
    cct_init
    elen = elen_
    Origin: Here
    consource(up_ elen, i); b_current(2I,,O,E)
    line right_ elen*.6; dot
    {
        resistor(down_ elen, E); llabel(,\unit{2}{\ohm},); dot
    }
    resistor(right_ elen, E); rlabel(,\unit{2}{\ohm},); dot
    {
        resistor(down_ elen, E); rlabel(,\unit{4}{\ohm},)
        b_current(I); dot
    }
    line right_ elen*.6
    source(down_ elen, i); b_current(\unit{1}{\ampere},,O)
    line to Origin
.PE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% fig 04
% 求图示电路的戴维宁或诺顿等效电路（4-10d）
.PS
    cct_init
    elen = elen_
    Origin: Here
    resistor(right_ elen,E); rlabel(,\unit{5}{\ohm},); dot
    {
        source(down_ .75*elen,i); b_current(\unit{2}{\ampere},,O); dot
        {
            line right_ 1.5*elen; dot
        }
        resistor(down_ .75*elen,E); rlabel(,\unit{5}{\ohm},); dot
    }
    line right_ 1.5*elen
    source(down_ .75*elen,v); rlabel(+,\unit{10}{\volt},-)
    resistor(down_ .75*elen,E); rlabel(,\unit{0.2}{\siemens},)
    source(left_ .75*elen,i); llabel(\unit{1}{\ampere},,); b_current(,,O,E)
    source(left_ .75*elen,v); rlabel(+,\unit{5}{\volt},-)
    line left_ elen; "b" above; gap(up_ 1.5*elen,1); "a" below
.PE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% fig 05
% 下图电路的 $R$ 可变，问其为何值时可获得最大功率，最大功率为多少？
.PS
    cct_init
    elen = elen_
    Origin: Here
    source(up_ elen*.8, v); llabel(-,\unit{24}{\volt},+)
    resistor(right_ elen*.6, E); llabel(,\unit{6}{\ohm},); dot
    {resistor(down_ elen*.8, E); llabel(,\unit{3}{\ohm},); dot;}
    {resistor(right_ elen*.8, E); llabel(,\unit{4}{\ohm},); dot;}
    line up_ elen*.6
    source(right_ elen*.8, i); llabel(,,\unit{4}{\ampere})
    b_current(,,O,E); line down_ elen*.6 then right_ elen*.4
    resistor(down_ elen*.8, E); llabel(,R,); variable()
    line to Origin
.PE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% fig 06
% 图示电路原已稳定，$t = 0$ 时合上开关 $S$，求电感电流 $i_\mathrm{L}(t)$。
.PS
    cct_init
    elen = elen_
    Origin: Here
    source(up_ elen, v); llabel(-,\unit{12}{\volt},+)
    resistor(right_ elen*.8, E); llabel(,\unit{6}{\ohm},); dot
    {
        inductor(down_ elen, W); b_current(i_L, below_)
        llabel(,\unit{2}{\henry},); dot
    }
    switch(right_ elen*.8,,C); llabel(,S,)
    resistor(down_ elen, E); llabel(,\unit{3}{\ohm},)
    line to Origin
.PE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% fig 07
% 试求下列电路的输入阻抗~$Z$~或导纳~$Y$。
.PS
    cct_init
    elen = elen_
    Origin: Here
    inductor(right_ elen*.8, W); rlabel(,\jimag\omega L,)
    b_current(\mathdot{I});dot;
    {
        resistor(down_ elen, E); rlabel(,R,); dot;
    }
    line right_ elen*.6
    consource(down_ elen, v); llabel(+,-r\mathdot{I},-)
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
    source(up_ elen,v);
    llabel(-,10\Varangle{\unit{0}{\degree}}\unit{}{\volt},+); dot;
    "\ding{172}" rjust
    {line up_ .6*elen then right_ .6*elen; dot(,,1); "$+$" ljust}
    inductor(right_ elen,W); llabel(,{\rm j}\unit{5}{\ohm},);dot; "\ding{173}" above
    {
        capacitor(down_ elen); llabel(,,-{\rm j}\unit{5}{\ohm}); dot;
        ground(,,E)
    }
    resistor(right_ elen,E); llabel(,\unit{1}{\ohm},); dot;
    "\ding{174}" ljust
    {
        line up_ .6*elen then left_ .6*elen; dot(,,1); "$-$" rjust
        "$\mathdot{U}_{\rm o}$" at (elen,Here.y)
    }
    consource(down_ elen,i); b_current(g\mathdot{U}_{\rm o},,O,E)
    line to Origin
    arcd((.5*elen,.5*elen),.3*elen,180,-90) -> cw
    arcd((elen+.5*elen,.5*elen),.3*elen,180,-90) -> cw
.PE
