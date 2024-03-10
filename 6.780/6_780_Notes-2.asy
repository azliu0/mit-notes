if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="6_780_Notes-2";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

/* Geogebra to Asymptote conversion, documentation at artofproblemsolving.com/Wiki go to User:Azjps/geogebra */
import graph; size(8cm);
real labelscalefactor = 0.5; /* changes label-to-point distance */
pen dps = linewidth(0.7) + fontsize(10); defaultpen(dps); /* default pen style */
pen dotstyle = black; /* point style */
real xmin = -0.24319450404048915, xmax = 1.7410789765306722, ymin = -0.13342044041337683, ymax = 1.1022640784952804; /* image dimensions */
pen wwwwww = rgb(0.4,0.4,0.4); pen qqzzff = rgb(0,0.6,1);

draw((0,1)--(0,0)--(1,0)--(1,1)--cycle, linewidth(0.7) + wwwwww);
/* draw figures */
draw((0,1)--(0,0), linewidth(0.7));
draw((0,0)--(1,0), linewidth(0.7) + white);
draw((1,0)--(1,1), linewidth(0.7) + white);
draw((1,1)--(0,1), linewidth(0.7));
draw((0,0)--(0.11914,0), linewidth(0.7) + qqzzff);
draw((0.11914,0)--(0.11914,0.54339), linewidth(0.7) + qqzzff);
draw((0.11914,0.54339)--(0.45661,0.54339), linewidth(0.7) + qqzzff);
draw((0.45661,0.54339)--(0.45661,0.88086), linewidth(0.7) + qqzzff);
draw((0.45661,0.88086)--(1,0.88086), linewidth(0.7) + qqzzff);
draw((1,0.88086)--(1,1), linewidth(0.7) + qqzzff);
draw((1,0.88086)--(1,0), linewidth(0.7));
draw((0.11914,0)--(1,0), linewidth(0.7));
/* dots and labels */
label("$P_D$", (-0.07912021107336467,0.498949230397416), NE * labelscalefactor);
dot((0,0),linewidth(4pt) + dotstyle);
label("$\eta \in [3,\infty)$", (-0.08595663994699486,-0.04796507949299943), NE * labelscalefactor);
dot((1,1),linewidth(4pt) + dotstyle);
label("$\eta \in [0,1)$", (1.0181266231442803,1.009972288701273), NE * labelscalefactor);
dot((1,0),linewidth(4pt) + dotstyle);
dot((0.11914,0.54339),dotstyle);
label("$\eta \in [2,3)$", (0.06957211692809187,0.5809863768809783), NE * labelscalefactor);
dot((0.45661,0.88086),dotstyle);
label("$\eta \in [1,2)$", (0.3755023090230427,0.9176804989072653), NE * labelscalefactor);
label("$P_F$", (0.47463052769068037,-0.054801508366629614), NE * labelscalefactor);
clip((xmin,ymin)--(xmin,ymax)--(xmax,ymax)--(xmax,ymin)--cycle);
/* end of picture */
