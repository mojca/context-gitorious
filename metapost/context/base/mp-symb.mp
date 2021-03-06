%D \module
%D   [       file=mp-symb.mp,
%D        version=very old,
%D          title=\CONTEXT\ \METAPOST\ graphics,
%D       subtitle=navigation symbol macros,
%D         author=Hans Hagen,
%D           date=\currentdate,
%D      copyright={PRAGMA / Hans Hagen \& Ton Otten}]
%C
%C This module is part of the \CONTEXT\ macro||package and is
%C therefore copyrighted by \PRAGMA. See mreadme.pdf for
%C details.

%D Instead of these symbols, you can use the \type {contnav}
%D font by Taco Hoekwater that is derived form this file. 

u  := 3;
h  := 5u;
wt := 5u;
wb := .25wt;
o  := .1u;
pw := .5u;

drawoptions (withpen pencircle scaled pw);

path lefttriangle, righttriangle, sublefttriangle, subrighttriangle;

pair s ; s = (2wb,0) ;

x1t = x2t = 0;
x3t = wt;
y3t = .5h;
z1t-z2t = (z3t-z2t) rotated 60;

z4t = (z2t--z3t) intersectionpoint ((z1t--z2t) shifted s) ;
z5t = (z3t--z1t) intersectionpoint ((z1t--z2t) shifted s) ;

righttriangle = z1t--z2t--z3t--cycle;
lefttriangle = righttriangle rotatedaround((0,.5h), 180) shifted (wt,0);

subrighttriangle = z4t--((z2t--z3t--z1t) shifted s)--z5t ;
sublefttriangle  = subrighttriangle rotatedaround((0,.5h), 180) shifted (wt,0);

path sidebar;

x1b = x4b = 0;
x2b = x3b = wb;
y1b = y2b = y1t;
y3b = y4b = y2t;

sidebar = z1b--z2b--z3b--z4b--cycle;

path midbar, onebar, twobar;

hh = abs(y1t-y2t);

%midbar := unitsquare scaled 2hh/3;
midbar := unitsquare scaled hh;
onebar := unitsquare xscaled (hh/3) yscaled hh;
twobar := onebar;

def prepareglyph =
  drawoptions (withpen pencircle scaled .5u);
enddef;

def finishglyph =
  set_outer_boundingbox currentpicture;
  bboxmargin := o;
  setbounds currentpicture to bbox currentpicture;
%  draw boundingbox currentpicture withcolor red withpen pencircle scaled 1;
enddef;

beginfig  (1);
  prepareglyph;
  fill lefttriangle;
  draw lefttriangle;  % draw gets the bbox right, filldraw doesn't
  finishglyph;
endfig;

beginfig  (2);
  prepareglyph;
  fill righttriangle;
  draw righttriangle;
  finishglyph;
endfig;

beginfig  (3);
  prepareglyph;
  fill sidebar;
  draw sidebar;
  fill lefttriangle shifted (.5s);
  draw lefttriangle shifted (.5s);
  finishglyph;
endfig;

beginfig  (4);
  prepareglyph;
  fill righttriangle;
  draw righttriangle;
  fill sidebar shifted (wt,0);
  draw sidebar shifted (wt,0);
  finishglyph;
endfig;

beginfig  (5);
  prepareglyph;
  fill lefttriangle;
  draw lefttriangle;
  fill lefttriangle shifted s;
  draw lefttriangle shifted s;
  finishglyph;
endfig;

beginfig  (6);
  prepareglyph;
  fill righttriangle;
  draw righttriangle;
  fill righttriangle shifted s;
  draw righttriangle shifted s;
  finishglyph;
endfig;

beginfig  (7);
  prepareglyph;
  fill midbar;
  draw midbar;
  finishglyph;
endfig;

beginfig  (8);
  prepareglyph;
  fill onebar;
  draw onebar;
  finishglyph;
endfig;

beginfig  (9);
  prepareglyph;
  fill twobar;
  draw twobar;
  fill twobar shifted (pw+hh/2,0);
  draw twobar shifted (pw+hh/2,0);
  finishglyph;
endfig;

beginfig(101);
  prepareglyph;
  draw lefttriangle;
  finishglyph;
endfig;

beginfig(102);
  prepareglyph;
  draw righttriangle;
  finishglyph;
endfig;

beginfig(103);
  prepareglyph;
  draw sidebar;
  draw lefttriangle shifted (.5s);
  finishglyph;
endfig;

beginfig(104);
  prepareglyph;
  draw righttriangle;
  draw sidebar shifted (wt,0);
  finishglyph;
endfig;

beginfig(105);
  prepareglyph;
  draw lefttriangle;
  draw lefttriangle shifted s;
  finishglyph;
endfig;

beginfig(106);
  prepareglyph;
  draw righttriangle;
  draw righttriangle shifted s;
  finishglyph;
endfig;

beginfig(107);
  prepareglyph;
  draw midbar;
  finishglyph;
endfig;

beginfig(108);
  prepareglyph;
  draw onebar;
  finishglyph;
endfig;

beginfig(109);
  prepareglyph;
  draw twobar;
  draw twobar shifted (pw+hh/2,0);
  finishglyph;
endfig;

beginfig(201);
  prepareglyph;
  draw lefttriangle;
  finishglyph;
endfig;

beginfig(202);
  prepareglyph;
  draw righttriangle;
  finishglyph;
endfig;

beginfig(203);
  prepareglyph;
  draw sidebar;
  draw lefttriangle shifted (.5s);
  finishglyph;
endfig;

beginfig(204);
  prepareglyph;
  draw righttriangle;
  draw sidebar shifted (wt,0);
  finishglyph;
endfig;

beginfig(205);
  prepareglyph;
  draw sublefttriangle shifted s;
  draw lefttriangle shifted s;
  finishglyph;
endfig;

beginfig(206);
  prepareglyph;
  draw subrighttriangle;
  draw righttriangle;
  finishglyph;
endfig;

beginfig(207);
  prepareglyph;
  draw midbar;
  finishglyph;
endfig;

beginfig(208);
  prepareglyph;
  draw onebar;
  finishglyph;
endfig;

beginfig(209);
  prepareglyph;
  draw twobar;
  draw twobar shifted (pw+hh/2,0);
  finishglyph;
endfig;


beginfig(999);

picture collection []  ; 

prepareglyph ; 
draw lefttriangle ; 
finishglyph ;
collection[201] := currentpicture ; 
currentpicture := nullpicture ; 

prepareglyph ; 
draw righttriangle ; 
finishglyph ;
collection[202] := currentpicture ; 
currentpicture := nullpicture ; 

prepareglyph ; 
draw sidebar ; 
draw lefttriangle shifted (.5s) ;
finishglyph ;
collection[203] := currentpicture ; 
currentpicture := nullpicture ; 

prepareglyph ; 
draw righttriangle ; 
draw sidebar shifted (wt,0) ; 
finishglyph ;
collection[204] := currentpicture ; 
currentpicture := nullpicture ; 

prepareglyph ; 
draw sublefttriangle shifted s ; 
draw lefttriangle shifted s ;
finishglyph ;
collection[205] := currentpicture ; 
currentpicture := nullpicture ; 

prepareglyph ;
draw subrighttriangle ;
draw righttriangle ;
finishglyph ;
collection[206] := currentpicture ; 
currentpicture := nullpicture ; 

prepareglyph ;
draw midbar ;
finishglyph ;
collection[207] := currentpicture ; 
currentpicture := nullpicture ; 

prepareglyph ;
draw onebar ;
finishglyph ;
collection[208] := currentpicture ; 
currentpicture := nullpicture ; 

prepareglyph ;
draw twobar ;
draw twobar shifted (pw+hh/2,0) ;
finishglyph ;
collection[209] := currentpicture ; 
currentpicture := nullpicture ; 

for i=201 upto 209 : 
  collection[i] := collection[i] shifted - center collection[i] ;
endfor ; 

addto currentpicture also collection[205] shifted (   0,   0) 
  withcolor (.3,.4,.5) ;
addto currentpicture also collection[202] shifted (   0,1.5h) 
  withcolor (.5,.6,.7) ;
addto currentpicture also collection[201] shifted (1.5h,   0) 
  withcolor (.6,.7,.8) ;
addto currentpicture also collection[206] shifted (1.5h,1.5h) 
  withcolor (.4,.5,.6) ;

collection[210] := currentpicture ; 
currentpicture := nullpicture ; 

bboxmargin := .25u; 

fill bbox collection[210] withcolor .95(1,1,0);
addto currentpicture also collection[210] ; 

endfig ; 

end
