include(/usr/local/lib/m4/circuit_macros/pgf.m4)
include(/usr/local/lib/m4/circuit_macros/libcct.m4)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% fig 01
% 电路原已处于稳态，在 $t=0$ 时开关 $S$ 断开，求 $i_L(t)$ 和 $u(t)$。
.PS
    cct_init
    elen = elen_
    Origin: Here
    source(up_ elen, i); llabel(,,\SI{3}{\ampere})
    b_current(,,O,E)
    line right_ elen*.6; dot
    {
        switch(down_ elen, , OD); rlabel(,S,); dot
    }
    line right_ elen*.8; dot
    {
        resistor(down_ elen, E); llabel(,\SI{6}{\ohm},);
        rlabel(+,u(t),-); dot
    }
    resistor(right_ elen, E); llabel(,\SI{3}{\ohm},)
    inductor(down_ elen, W); llabel(,\SI{3}{\henry},)
    b_current(i_L(t))
    line to Origin
.PE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% fig 02
% 图示电路中，开关合在1时已达稳态。t=0时开关由1合向2，求t>0时的uL(t)。（
% P140-例6-5书上开关箭头画错）
.PS
    cct_init
    elen = elen_
    Origin: Here
    dot
    consource(left_ elen,v); rlabel(-,2i_1,+); dot
    {
        resistor(up_ elen*1.5, E); rlabel(,\SI{4}{\ohm},);
        b_current(i_1,below_,,E); dot
    }
    line left_ elen*.4
    source(up_ elen*1.5,i); b_current(\SI{2}{\ampere},,O,E)
    line right_ elen*.4
    resistor(right_ elen*.6,E); llabel(,\SI{4}{\ohm},)
    reversed(`switch', right_ elen*.8, ,CD); llabel(,2,S)
    line right_ elen*.6
    inductor(down_ elen*1.5, W); llabel(+,u_L,-); rlabel(,\SI{0.1}{\henry},)
    b_current(i_L,below_)
    line to Origin
    resistor(up_ elen*.55, E); rlabel(,\SI{2}{\ohm},)
    source(up_ elen*.8, v); llabel(+,\SI{8}{\volt},-); dot(,,1)
    "$1$" ljust
.PE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% fig 03
% 下图电路中，开关未动作前电路已达稳态，$t=0$ 时开关 $S$ 打开。\\
% (1) 求 $u_C(0_+)$、$i_L(0_+)$、$i_R(0_+)$；\\
% (2) 求 $\left.\frac{\mathrm{d}u_C}{\mathrm{d}t}\right|_{0_+}$、
% $\left.\frac{\mathrm{d}i_L}{\mathrm{d}t}\right|_{0_+}$、
% $\left.\frac{\mathrm{d}i_R}{\mathrm{d}t}\right|_{0_+}$；\\
% (3) 列出该电路所满足的方程组；(要求包含$u_C(t)$、$i_L(t)$，
% 方程数目与未知函数数目相等)\\
% (4) 将(3)中的方程组整理为一个只包含一个未知函数的微分方程。(未知
% 函数选择$u_C(t)$、$i_L(t)$、$i_R(t)$之一)
.PS
    cct_init
    elen = elen_
    Origin: Here
    source(up_ elen, v); llabel(-,\SI{12}{\volt},+); dot
    {
        resistor(right_ elen*1.6, E);
        llabel(,\SI{6}{\ohm},)
        b_current(i_R,,O,E); dot
    }
    line up_ elen*.6
    resistor(right_ elen*.8, E); llabel(,\SI{6}{\ohm},)
    switch(right_ elen*.8,, OD); rlabel(,S,)
    line down_ elen*.6
    {
        capacitor(down_ elen); rlabel(,\frac{1}{24}\si{\farad},)
        llabel(+, u_C, -); b_current(i_C,below_)
        dot
    }
    inductor(right_ elen, W); llabel(,\SI{0.1}{\henry},)
    rlabel(+,u_L,-); arrowline(right_ elen*.2); llabel(,i_L,)
    resistor(down_ elen, E); llabel(,\SI{3}{\ohm},)
    line to Origin
.PE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% fig 04
% 如下图所示电路。(10\%) \\
% (1) 当 $u_\mathrm{s}=\SI{0}{V}$ 时，试判读该电路的零输入响应是欠阻
% 尼？过阻尼？还是临界阻尼？\\
% (2) 当 $u_\mathrm{s}=2\sqrt{2}\cos t\si{V}$ 时，求正弦稳态响应
% $\mathdot{I}$、$i(t)$。
.PS
    cct_init
    elen = elen_
    Origin: Here
    source(up_ elen, v); llabel(-,u_\mathrm{s}(t),+); corner
    inductor(right_ elen, W); llabel(,\SI{1}{H},); dot; "a" above
    arrowline(right_ elen*.4); llabel(,i,); dot
    {
        resistor(down_ elen, E); rlabel(,\SI{2}{\ohm},); dot
    }
    line right_ elen*.6; corner
    consource(down_ elen, v); llabel(+,1i,-); corner
    line left_ elen; dot; "b" below
    capacitor(left_ elen); rlabel(,\SI{0.5}{F},); corner
.PE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% fig 05
% 当 $i_C = \mathrm{e}^{-t} \SI{}{\ampere}$ 时，求 $i$。
.PS
    cct_init
    elen = elen_
    Origin: Here
    "$+$" below
    arrowline(right_ elen*.6); llabel(,i,); dot
    {
        resistor(down_ elen*.8, E); rlabel(,\SI{3}{\siemens},); dot
    }
    line right_ elen/2
    inductor(down_ elen*.8, W); llabel(,\SI{6}{\henry},)
    b_current(i_\mathrm{L})
    line left_ elen*1.1; "$-$" above
    gap(to Origin, 1); clabel(,u,)
.PE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% fig 06
% 已知 $u_{C_1}(0) = u_{C_2}(0) = \SI{5}{\volt}$，$i =
% \mathrm{e}^{-5t}\SI{}{\ampere}$，求等效电容 $C$ 及 $u_C$。
.PS
    cct_init
    elen = elen_
    Origin: Here
    "$+$" below
    capacitor(right_ elen); llabel(,\SI{2}{\farad},)
    rlabel(+, u_{C_1}, -)
    b_current(i)
    capacitor(down_ elen); rlabel(,\SI{8}{\farad},)
    llabel(-, u_{C_2}, +)
    line left_ elen; "$-$" above
    gap(to Origin, 1); clabel(,u_C,)
.PE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% fig 07
% 求图中 a、b 端的等效电感。
.PS
    cct_init
    elen = elen_
    Origin: Here
    "a" rjust
    inductor(right_ elen, W); llabel(,\SI{2}{\henry},); dot
    {
        inductor(down_ elen, W); llabel(,\SI{8}{\henry},); dot
    }
    line right elen*.6;
    inductor(down_ elen, W); llabel(,\SI{8}{\henry},)
    line left_ elen*.6
    reversed(`inductor', left_ elen, W); rlabel(,\SI{8}{\henry},); "b" rjust
    {
        Point_(45); inductor(to rvec_(elen*sqrt(2),0), W);
        dlabel(.12,.15,,\SI{6}{\henry},)
    }
    gap(to Origin, 1)
.PE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% fig 08
% 图示电路中，试求 $\mathdot{U}$。(8 分)
.PS
    cct_init
    elen = elen_
    Origin: Here
    inductor(right_ elen, W); llabel(,\;\;\SI[parse-numbers=false]{j1}{\ohm},)
    b_current(\mathdot{I}); dot
    {
        resistor(down_ elen, E); rlabel(,\SI{2}{\ohm},); dot
    }
    line right_ elen
    capacitor(down_ elen); rlabel(,-\SI[parse-numbers=false]{j2}{\ohm},)
    llabel(+,1\Varangle{\ang{0}}\SI{}{\volt},-)
    line to (Origin.x, Here.y); "$-$" above
    gap(up_ elen, 1); clabel(,\mathdot{U},); "$+$" below
.PE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% fig 09
% 某WiFi芯片的RESET (复位)信号需要不低于\SI{1.08}{V}的电压，且此信号要比
% 电源信号滞后\SI{61}{\micro\second}以上。某同学在设计复位电路时希望
% RESET信号在电源接通\SI{80}{\micro\second}后正好上升到\SI{1.08}{V}。
% (10\%) \\
% (1) 请用一个电容$C$和一个电阻$R$帮助他/她完成下面的电路(在虚线框内
% 将电路图补充完整，电源接通前电容未储存电荷)。\\
% (2) 请计算得出电容$C$和电阻$R$应满足的条件，以供选择器件时参考。
.PS
    cct_init
    elen = elen_
    Origin: Here
    N1: nport(wid 1.5 ht 1.25 dotted,1,0,1,0,5, elen_/3)
    ground(at N1.W1b,,S); "电源 $u_\mathrm{s}=3.3\varepsilon (t)$ \SI{}{V}" rjust at N1.W1a
    ground(at N1.E1b,,S); "$r(t)$ 复位" ljust at N1.E1a
.PE
