clc;clear
for i=2:2:8
fengji=i;

duanshu=6;

% [y1]=hailangboxing(fengji,duanshu)

% 3 2.438306 16.444115  4.053570
% 5 1.462983 9.866469   2.432142
% 7 1.044989 7.047480   1.737244
% 9 0.812770 5.481373   1.351190
% 11 0.664988 4.484760  1.105519
% 13 0.562683 3.794799  0.935439
% 15 0.487659 3.288826  0.810714
% 17 0.430288 2.901905  0.715336

wavewmin = [2.438306 1.462983 1.044989 0.812770 0.664988 0.562683 0.487659 0.430288];
wavewmax = [16.444115 9.866469 7.04748 5.481373 4.484760 3.794799 3.288826 2.901905];
wavewp=[4.053570 2.432142 1.737244 1.351190 1.105519 0.935439 0.810714 0.715336];

%-----------------------------------------------------
u=[3 5 7 9 11 13 15 17];
%---------------------------------------------------

if fengji>8
    fengji=8;
end
if fengji<1
    fengji=1;
end
fi=fengji;
wmin=wavewmin(fi);
wmax=wavewmax(fi);
%wp=wavewp(fi);
ui=u(fi);
M=duanshu;
%epsin=rand*2*pi;
wavewn=(wmax-wmin)/M;
dx=0.5;
dz=0.5;
x=[0:dx:125];
z=[0:dz:125];
[x,z]=meshgrid(x,z);
y=zeros(size(x));
for wi=1:M
    epsin=rand*2*pi;
    w=wmin+(wi-1)*wavewn;
    swi=0.81*exp(-7400/(w*ui+eps).^4)/(w.^5+eps);
    an=sqrt(2*swi*wavewn);
    y1=w*w*x/9.8+epsin;
    y=an*cos(y1)+y;
end
y1=y(25,:);
subplot(1,4,i/2)
plot(y1);
end
