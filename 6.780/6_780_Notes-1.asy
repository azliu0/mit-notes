if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="6_780_Notes-1";
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
real xmin = -0.4166881734449855, xmax = 1.496098159335046, ymin = -0.138617989563206, ymax = 1.0986796296597103; /* image dimensions */
pen wwwwww = rgb(0.4,0.4,0.4); pen qqwuqq = rgb(0,0.39215686274509803,0); pen ffvvqq = rgb(1,0.3333333333333333,0); pen ccqqqq = rgb(0.8,0,0);

draw((0,1)--(0,0)--(1,0)--(1,1)--cycle, linewidth(0.7) + wwwwww);
/* draw figures */
draw((0,1)--(0,0), linewidth(0.7));
draw((0,0)--(1,0), linewidth(0.7));
draw((1,0)--(1,1), linewidth(0.7));
draw((1,1)--(0,1), linewidth(0.7));
pair f1 (real t) {return (t,(-3.11*t-0.55+sqrt((3.11*t+0.55)^(2)-4*(-0.34)*(-0.34*t^(2)-2.98*t)))/(2*(-0.34)));}
draw(graph(f1,0,1), linewidth(0.7) + qqwuqq);
pair f2 (real t) {return (t,(-2.54*t-1.12+sqrt((2.54*t+1.12)^(2)-4*(-0.62)*(-0.62*t^(2)-2.41*t)))/(2*(-0.62)));}
draw(graph(f2,0,1), linewidth(0.7) + ffvvqq);
pair f3 (real t) {return (t,(-3.46*t-0.21+sqrt((3.46*t+0.21)^(2)-4*(-0.17)*(-0.17*t^(2)-3.33*t)))/(2*(-0.17)));}
draw(graph(f3,0,1), linewidth(0.7) + blue);
draw((0,0)--(1,0.9927139437360549), linewidth(0.7) + ccqqqq);
/* dots and labels */
label("$P_D$", (-0.0772962832187267,0.4989774546968055), NE * labelscalefactor);
label("$P_F$", (0.4960453565809726,-0.07470858304428958), NE * labelscalefactor);
label("$\mu = 2$", (0.284965589852489277,0.6918070944872378), NE * labelscalefactor,qqwuqq);
label("$\mu = 1$", (0.411358799808690983,0.57613535520682281), NE * labelscalefactor,ffvvqq);
label("$\mu = 3$", (0.1231572780722138615,0.80805283033664413), NE * labelscalefactor,blue);
label("$\mu = 0$", (0.5322910924303789,0.47755951987670175), NE * labelscalefactor,ccqqqq);
clip((xmin,ymin)--(xmin,ymax)--(xmax,ymax)--(xmax,ymin)--cycle);
/* end of picture */
