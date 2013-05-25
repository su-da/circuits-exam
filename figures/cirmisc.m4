include(/usr/local/lib/m4/circuit_macros/mpost.m4)
include(/usr/local/lib/m4/circuit_macros/libcct.m4)
define(`dimen_', (dimen_*.8))
define(`elen_', (elen_*1.25))
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% fig 1
% 邱书第五版，P26，1-5(b)
.PS
    cct_init
    elen = elen_
    Origin: Here
    line left_ elen*.8
    source(up_ elen*.8, i); b_current(\unit{2}{\ampere},below_,O,E)
    llabel(-,U,+)
    line right_ elen*.8
    {
        resistor(down_ elen*.8, E); rlabel(,\unit{5}{\ohm},); 
        b_current(I_R); dot
    }
    dot
    line right_ elen*.6
    source(down_ elen*.8, v); llabel(+,\unit{15}{\volt},-)
    b_current(I,below_)
    line to Origin
.PE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% fig 2
% 邱书第五版，P26，1-5(a)
.PS
    cct_init
    elen = elen_
    Origin: Here
    source(up_ elen*.8, i); b_current(\unit{2}{\ampere},below_,O)
    llabel(-,U,+)
    resistor(right_ elen, E); rlabel(,\unit{5}{\ohm},); llabel(+,U_R,-)
    b_current(,,O)
    source(down_ elen*.8, v); llabel(+,\unit{15}{\volt},-)
    b_current(,,O)
    line to Origin
.PE
