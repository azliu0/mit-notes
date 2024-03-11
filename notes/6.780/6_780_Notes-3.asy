if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="6_780_Notes-3";
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
real xmin = -0.35941379489220227, xmax = 1.6248596856789592, ymin = -0.16247526312630475, ymax = 1.0732092557823525; /* image dimensions */
pen wwwwww = rgb(0.4,0.4,0.4); pen qqzzff = rgb(0,0.6,1);
pen purple = RGB(153, 51, 255);

draw((0,1)--(0,0)--(1,0)--(1,1)--cycle, linewidth(0.7) + wwwwww);
/* draw figures */
draw((0,1)--(0,0), linewidth(0.7));
draw((0,0)--(1,0), linewidth(0.7) + white);
draw((1,0)--(1,1), linewidth(0.7) + white);
draw((1,1)--(0,1), linewidth(0.7));
draw((0,0)--(0.11914,0), linewidth(0.7) + qqzzff);
draw((0.11914,0)--(0.11914,0.54339), linewidth(0.7) + qqzzff);
draw((0,0)--(0.11914,0.54339), linewidth(0.7) + purple);
fill((0,0)--(0.11914,0.54339)--(0.11914,0)--cycle, purple+opacity(0.1));
draw((0.11914,0.54339)--(0.45661,0.54339), linewidth(0.7) + qqzzff);
draw((0.45661,0.54339)--(0.45661,0.88086), linewidth(0.7) + qqzzff);
draw((0.11914,0.54339)--(0.45661,0.88086), linewidth(0.7) + purple);
fill((0.11914,0.54339)--(0.45661,0.88086)--(0.45661,0.54339)--cycle, purple+opacity(0.1));
draw((0.45661,0.88086)--(1,0.88086), linewidth(0.7) + qqzzff);
draw((1,0.88086)--(1,1), linewidth(0.7) + qqzzff);
draw((0.45661,0.88086)--(1,1), linewidth(0.7) + purple);
fill((0.45661,0.88086)--(1,1)--(1,0.88086)--cycle, purple+opacity(0.1));
draw((1,0.88086)--(1,0), linewidth(0.7));
draw((0.11914,0)--(1,0), linewidth(0.7));
/* dots and labels */
label("$P_D$", (-0.07912021107336467,0.4989492303974164), NE * labelscalefactor);
dot((0,0),linewidth(4pt) + purple);
label("$\eta \in [3,\infty)$", (-0.08595663994699486,-0.07096507949299904), NE * labelscalefactor, purple);
dot((1,1),linewidth(4pt) + purple);
label("$\eta \in [0,1)$", (1.0181266231442803,1.0099722887012732), NE * labelscalefactor, purple);
dot((0.11914,0.54339),purple);
label("$\eta \in [2,3)$", (0.137211692809187,0.4709863768809786), NE * labelscalefactor, purple);
dot((0.45661,0.88086),purple);
label("$\eta \in [1,2)$", (0.3755023090230427,0.9176804989072657), NE * labelscalefactor, purple);
label("$P_F$", (0.47463052769068037,-0.070801508366629226), NE * labelscalefactor);
clip((xmin,ymin)--(xmin,ymax)--(xmax,ymax)--(xmax,ymin)--cycle);
/* end of picture */
