include(/usr/local/lib/m4/circuit_macros/pgf.m4)
include(/usr/local/lib/m4/circuit_macros/libcct.m4)
% define(`dimen_', (dimen_*.8))
% define(`elen_', (elen_*1.25))
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% fig 01
% �� $u_C = \mathrm{e}^{-2t} \unit{}{\volt}$ ʱ�����ѹ $u$��
.PS
    cct_init
    elen = elen_
    Origin: Here
    "$+$" below
    resistor(right_ elen*1.2, E); llabel(,\unit{2}{\ohm},)
    b_current(i,,)
    capacitor(down_ elen*.6); llabel(,\unit{6}{\farad},)
    rlabel(+,u_\mathrm{C},-)
    line left_ elen*1.2; "$-$" above
    gap(to Origin, 1); clabel(,u,)
.PE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% fig 02
% �� $i_C = \mathrm{e}^{-t} \unit{}{\ampere}$ ʱ���� $i$��
.PS
    cct_init
    elen = elen_
    Origin: Here
    "$+$" below
    arrowline(right_ elen*.6); llabel(,i,); dot
    {
        resistor(down_ elen*.8, E); rlabel(,\unit{3}{\siemens},); dot
    }
    line right_ elen/2
    inductor(down_ elen*.8, W); llabel(,\unit{6}{\henry},)
    b_current(i_\mathrm{L})
    line left_ elen*1.1; "$-$" above
    gap(to Origin, 1); clabel(,u,)
.PE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% fig 03
% ��֪ $u_{C_1}(0) = u_{C_2}(0) = \unit{5}{\volt}$��$i =
% \mathrm{e}^{-5t}\unit{}{\ampere}$�����Ч���� $C$ �� $u_C$��
.PS
    cct_init
    elen = elen_
    Origin: Here
    "$+$" below
    capacitor(right_ elen); llabel(,\unit{2}{\farad},)
    rlabel(+, u_{C_1}, -)
    b_current(i)
    capacitor(down_ elen); rlabel(,\unit{8}{\farad},)
    llabel(-, u_{C_2}, +)
    line left_ elen; "$-$" above
    gap(to Origin, 1); clabel(,u_C,)
.PE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% fig 04
% ��ͼ�� a��b �˵ĵ�Ч��С�
.PS
    cct_init
    elen = elen_
    Origin: Here
    "a" rjust
    inductor(right_ elen, W); llabel(,\unit{2}{\henry},); dot
    {
        inductor(down_ elen, W); llabel(,\unit{8}{\henry},); dot
    }
    line right elen*.6;
    inductor(down_ elen, W); llabel(,\unit{8}{\henry},)
    line left_ elen*.6
    reversed(`inductor', left_ elen, W); rlabel(,\unit{8}{\henry},); "b" rjust
    {
        Point_(45); inductor(to rvec_(elen*sqrt(2),0), W);
        dlabel(.12,.15,,\unit{6}{\henry},)
    }
    gap(to Origin, 1)
.PE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% fig 05
% ��ͼ��ʾ��·��ԭ�Ѵ�����̬����t=0ʱ���� $S$ �Ͽ�����uc(0+)��uL(0+).
.PS
    cct_init
    elen = elen_
    Origin: Here
    source(up_ elen*.8, v); llabel(-,\unit{12}{\volt},+)
    switch(up_ elen*.8,, OD); rlabel(,S,)
    line right_ elen*.6; dot
    {
        capacitor(down_ elen*.8); llabel(,\unit{1}{\farad},)
        dot
        {resistor(right_ elen, E); llabel(,\;\unit{3}{\ohm},); dot}
        inductor(down_ elen*.8, W); rlabel(,\unit{2}{\henry},)
        llabel(+,u_L,-); dot
    }
    line right_ elen
    resistor(down_ elen*.8, E); llabel(,\unit{6}{\ohm},)
    capacitor(down_ elen*.8); rlabel(,\unit{1}{\farad},)
    llabel(+,u_C,-)
    line to Origin
.PE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% fig 06
% ͼʾRC��·��ԭ����ֱ����̬����t=0ʱ�����ش�1Ͷ��2���� $u_C$��
.PS
    cct_init
    elen = elen_
    Origin: Here
    source(up_ elen, v); llabel(-,\unit{3}{\volt},+)
    reversed(`switch', right_ elen, L, OD); llabel(1,,)
    resistor(right_ elen*.8, E); llabel(,\unit{2}{\ohm},)
    capacitor(down_ elen); llabel(+,u_\mathrm{C}(t),-)
    rlabel(,\unit{1}{\farad},)
    line left_ elen*1.3; dot
    {line left_ elen*.5}
    source(up_ elen*.85, v); rlabel(-, \unit{5}{\volt}, +)
    dot(,,1); "$2$" rjust
.PE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% fig 07
% ��·ԭ�Ѵ�����̬���� $t=0$ ʱ���� $S$ �Ͽ�����ʱ�� $i_L(t)$ �� $u(t)$��
.PS
    cct_init
    elen = elen_
    Origin: Here
    source(up_ elen, i); llabel(,,\unit{3}{\ampere})
    b_current(,,O,E)
    line right_ elen*.6; dot
    {
        switch(down_ elen, , OD); rlabel(,S,); dot
    }
    line right_ elen*.8; dot
    {
        resistor(down_ elen, E); llabel(,\unit{6}{\ohm},);
        rlabel(+,u(t),-); dot
    }
    resistor(right_ elen, E); llabel(,\unit{3}{\ohm},)
    inductor(down_ elen, W); llabel(,\unit{3}{\henry},)
    b_current(i_L(t))
    line to Origin
.PE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% fig 08
% ͼʾ��·�У����غ���1ʱ�Ѵ���̬��t=0ʱ������1����2����t>0ʱ��uL(t)����
% P140-��6-5���Ͽ��ؼ�ͷ����
.PS
    cct_init
    elen = elen_
    Origin: Here
    dot
    consource(left_ elen,v); rlabel(-,2i_1,+); dot
    {
        resistor(up_ elen*1.5, E); rlabel(,\unit{4}{\ohm},);
        b_current(i_1,below_,,E); dot
    }
    line left_ elen*.4
    source(up_ elen*1.5,i); b_current(\unit{2}{\ampere},,O,E)
    line right_ elen*.4
    resistor(right_ elen*.6,E); llabel(,\unit{4}{\ohm},)
    reversed(`switch', right_ elen*.8, ,CD); llabel(,2,S)
    line right_ elen*.6
    inductor(down_ elen*1.5, W); llabel(+,u_L,-); rlabel(,\unit{0.1}{\henry},)
    b_current(i_L,below_)
    line to Origin
    resistor(up_ elen*.55, E); rlabel(,\unit{2}{\ohm},)
    source(up_ elen*.8, v); llabel(+,\unit{8}{\volt},-); dot(,,1)
    "$1$" ljust
.PE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% fig 09
% ͼʾ��·�У����� $\mathdot{U}$��(8 ��)
.PS
    cct_init
    elen = elen_
    Origin: Here
    inductor(right_ elen, W); llabel(,\;\;\unit{j1}{\ohm},)
    b_current(\mathdot{I}); dot
    {
        resistor(down_ elen, E); rlabel(,\unit{2}{\ohm},); dot
    }
    line right_ elen
    capacitor(down_ elen); rlabel(,-\unit{j2}{\ohm},)
    llabel(+,1\Varangle{0\degree}\unit{}{\volt},-)
    line to (Origin.x, Here.y); "$-$" above
    gap(up_ elen, 1); clabel(,\mathdot{U},); "$+$" below
.PE
