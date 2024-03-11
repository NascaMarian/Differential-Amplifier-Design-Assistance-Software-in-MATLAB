function functie(R1,R2,R3,R4,VI1,VI2,f,Ep,En,N,s,m,sel)

figure('Name','Amplificator diferential',...
'Units','normalized',...
'Position',[0.02 0.1 0.8 0.8],...
'NumberTitle','off','color', '#11B3EC');

%%%%%%%CONDITIA DE EROARE%%%%%%%%%
if(R1<=0 ||R2<=0||R3<=0||R4<=0|| f <= 0) 
  errordlg('Incercati sa introduceti o valoare pozitiva pentru rezistente si frecventa!','Eroare!');
else
%%%%%%%%%%%%%%%%SLIDER%%%%%%%%%%%%%%%%%
uicontrol('Style','slide',...
 'Units','normalized',...
 'Position',[0.07 0.62 0.2 0.03],...
 'Min',1,'Max',10,...
 'SliderStep',[0.1 0.1],...
 'Value',N,...
 'Callback','N=get(gco,''Value'');set(hN,''String'',[''N='' num2str(N)]);functie(R1,R2,R3,R4,VI1,VI2,f,Ep,En,N,s,m,sel)'); 
uicontrol('Style','text',...
 'Units','normalized',...
 'Position',[0.15 0.65 0.04 0.02],... 
 'String',['N=' num2str(N)]);


 uicontrol('Style','text','fontsize',25,...
'Units','normalized',...
'Position',[0.1 0.85 0.8 0.1],...
'backgroundcolor','blue',...
'string','Amplificator diferential cu AO');



Bg1=uipanel('Title','Semnal de intrare',...
    'Titleposition','Centertop',...
    'Position',[0.5 0.5 0.3 0.32],...
    'Foregroundcolor','black',...
    'Fontsize',10);

Bg2=uipanel('Title','Parametrii circuitului',...
    'Titleposition','Centertop',...
    'Position',[0.8 0.5 0.16 0.32],...
    'Foregroundcolor','black',...
    'Fontsize',10);



%%%%%%%%%%%%PARAMETRII CIRCUIT%%%%%%%%
uicontrol('Style','text',...
'Units','normalized',...
'Position',[0.1 0.65 0.3 0.2],...
'string','Vi1[V]=',...
'parent',Bg2);

uicontrol('Style','text',...
'Units','normalized',...
'Position',[0.1 0.35 0.3 0.2],...
'string','Vi2[V]=',...
'parent',Bg2);
uicontrol('Style','text',... 
'Units','normalized',...
'Position',[0.1 0.05 0.3 0.2],...
'string','f[Hz]=',...
'parent',Bg2);

%%%%%%%%%SEMNAL DE INTRARE%%%%%%%%%%%
uicontrol('Style','text',...
'Units','normalized',...
'Position',[0.05 0.76 0.2 0.2],...
'string','R1[Ohm]=',...
'parent',Bg1);

uicontrol('Style','text',... 
'Units','normalized',...
'Position',[0.05 0.52 0.2 0.2],...
'string','R2[Ohm]=',...
'parent',Bg1);

uicontrol('Style','text',... 
'Units','normalized',...
'Position',[0.05 0.28 0.2 0.2],...
'string','R3[Ohm]=',...
'parent',Bg1);

uicontrol('Style','text',... 
'Units','normalized',...
'Position',[0.05 0.04 0.2 0.2],...
'string','R4[Ohm]=',...
'parent',Bg1);

uicontrol('Style','text',... 
'Units','normalized',...
'Position',[0.5 0.6 0.2 0.2],...
'string','Ep[V]=',...
'parent',Bg1);

uicontrol('Style','text',... 
'Units','normalized',...
'Position',[0.5 0.2 0.2 0.2],...
'string','En[V]=',...
'parent',Bg1);


%%%%%%%%CASUTE EDIT UNDE INTRODUCI VALORI%%%%%%%%
uicontrol('Style','edit',... 
'Units','normalized',...
'Position',[0.38  0.75 0.2 0.1],...
'String',VI1,...
'Callback',['VI1=','str2num(get(gco,''String''));close;functie(R1,R2,R3,R4,VI1,VI2,f,Ep,En,N,s,m, sel)'],...
'parent',Bg2);

uicontrol('Style','edit',... 
'Units','normalized',...
'Position',[0.38 0.45 0.2 0.1],...
'String',VI2,...
'Callback',['VI2=','str2num(get(gco,''String''));close;functie(R1,R2,R3,R4,VI1,VI2,f,Ep,En,N,s,m, sel)'],...
'parent',Bg2);

uicontrol('Style','edit',... 
'Units','normalized',...
'Position',[0.35 0.16 0.2 0.1],...
'String',f,...
'Callback',['f=','str2num(get(gco,''String''));close;functie(R1,R2,R3,R4,VI1,VI2,f,Ep,En,N,s,m, sel)'],...
'parent',Bg2);


uicontrol('Style','edit',...
'Units','normalized',...
'Position',[0.23 0.88 0.2 0.1],...
'String',R1,...
'Callback',['R1=','str2num(get(gco,''String''));close;functie(R1,R2,R3,R4,VI1,VI2,f,Ep,En,N,s,m, sel)'],...
'parent',Bg1);


uicontrol('Style','edit',... 
'Units','normalized',...
'Position',[0.23 0.62 0.2 0.1],...
'String',R2,...
'Callback',['R2=','str2num(get(gco,''String''));close;functie(R1,R2,R3,R4,VI1,VI2,f,Ep,En,N,s,m, sel)'],...
'parent',Bg1);

uicontrol('Style','edit',... 
'Units','normalized',...
'Position',[0.23 0.39 0.2 0.1],...
'String',R3,...
'Callback',['R3=','str2num(get(gco,''String''));close;functie(R1,R2,R3,R4,VI1,VI2,f,Ep,En,N,s,m, sel)'],...
'parent',Bg1);

uicontrol('Style','edit',... 
'Units','normalized',...
'Position',[0.23 0.16 0.2 0.1],...
'String',R4,...
'Callback',['R4=','str2num(get(gco,''String''));close;functie(R1,R2,R3,R4,VI1,VI2,f,Ep,En,N,s,m, sel)'],...
'parent',Bg1);


uicontrol('Style','edit',... 
'Units','normalized',...
'Position',[0.65 0.7 0.2 0.1],...
'String',Ep,...
'Callback',['Ep=','str2num(get(gco,''String''));close;functie(R1,R2,R3,R4,VI1,VI2,f,Ep,En,N,s,m, sel)'],...
'parent',Bg1);


uicontrol('Style','edit',... 
'Units','normalized',...
'Position',[0.65 0.30 0.2 0.1],...
'String',En,...
'Callback',['En=','str2num(get(gco,''String''));close;functie(R1,R2,R3,R4,VI1,VI2,f,Ep,En,N,s,m, sel)'],...
'parent',Bg1);


%%%%%%%%%%%%VALORILE AMPLIFICARILOR%%%%%%%%%%%%%
h1=(R4/(R3+R4))*(1+R2/R1);
h2=-(R2./R1);

if m==1
radiogroup3=uipanel('Visible','on',...
                    'ForegroundColor','black',...
                    'Title','A1=',...
                    'TitlePosition','centerbottom',...
                    'fontweight','b',...
                    'FontSize',8,...
                    'Tag','radiobutton',...
                    'Position',[0.38 0 0.1 0.07]);
uicontrol('Style','text','fontsize',9,...
'Units','normalized',...
'Position',[0.15 0.05 .5 .4],...
'foregroundcolor','black',...
'string',['', num2str(h1)],...
'parent',radiogroup3);
end

if m==2
radiogroup4=uipanel('Visible','on',...
                    'ForegroundColor','black',...
                    'Title','A2=',...
                    'TitlePosition','centerbottom',...
                    'fontweight','b',...
                    'FontSize',8,...
                    'Tag','radiobutton',...
                    'Position',[0.8 0 0.1 0.07]);

 uicontrol('Style','text','fontsize',9,... 
'Units','normalized',...
'Position',[0.15 0.1 0.6 .4],...
'foregroundcolor','black',...
'string',['', num2str(h2)],...
'parent',radiogroup4);   

 radiogroup3=uipanel('Visible','on',...
                    'ForegroundColor','black',...
                    'Title','A1=',...
                    'TitlePosition','centerbottom',...
                    'fontweight','b',...
                    'FontSize',8,...
                    'Tag','radiobutton',...
                    'Position',[0.38 0 0.1 0.07]);
uicontrol('Style','text','fontsize',9,...
'Units','normalized',...
'Position',[0.15 0.1 .6 .4],...
'foregroundcolor','black',...
'string',['', num2str(h1)],...
'parent',radiogroup3);
end

%%%%%%%%%%setare tip semnal%%%%%%%%

 
uicontrol('Style','PopupMenu',...
               'Units','normalized',...
               'Position',[0.1 0.645 0.18 0.15],...
               'Value',s,...
                'string','Semnal sinusoidal|Semnal cosinusoidal|Semnal triunghiular|Semnal "Dinti de fierastrau"|Semnal dreptunghiular',...
               'Callback','s=get(gco,''Value'');close;functie(R1,R2,R3,R4,VI1,VI2,f,Ep,En,N,s,m, sel)');
uicontrol('Style','PopupMenu',...
               'Units','normalized',...
               'Position',[0.1 0.62 0.18 0.15],...
               'Value',m,...
                'string','Semnal 1 de intrare|Semnal 1 si 2 intrare|Semnal de iesire|Toate semnalele',...
               'Callback','m=get(gco,''Value'');close;functie(R1,R2,R3,R4,VI1,VI2,f,Ep,En,N,s,m, sel)')
       
           GroupAfis=uibuttongroup('Visible','on',...
    'FontWeight', 'bold',...
    'Title','Semnal:',...
    'FontSize',10,...
    'TitlePosition','centertop',...
    'Position',[0.08 0.5 0.18 0.09]);
% GRID
uicontrol('style','text',...
          'Units','normalized',...
          'String','Grid:',...
          'FontWeight', 'bold',...
          'Position',[0.05 0.2 0.2 0.4],...
          'Parent',GroupAfis);
 
    RadioB1=uicontrol('style','radiobutton',...
          'Units','normalized',...
          'String','ON',...
          'FontWeight', 'bold',...
          'Position',[0.55 0.27 0.2 0.31],...
          'Parent',GroupAfis,...
          'Callback','sel=1,close;functie(R1,R2,R3,R4,VI1,VI2,f,Ep,En,N,s,m, sel);');
      
      RadioB2=uicontrol('style','radiobutton',...
          'Units','normalized',...
          'String','OFF',...
          'FontWeight', 'bold',...
          'Position',[0.75 0.27 0.2 0.31],...
          'Parent',GroupAfis,...
          'Callback','sel=2,close;functie(R1,R2,R3,R4,VI1,VI2,f,Ep,En,N,s,m, sel);');    
  

% BUTOANE NAVIGARE RAPIDA
uicontrol('style','pushbutton',...
              'Units','normalized',...
              'String',' Schema circuit >',...
              'FontWeight', 'bold',...
              'Backgroundcolor',[0.3,0.75,0.75]',...
    'Foregroundcolor','black',...
              'Position',[0.35 0.67 0.09 0.05],...
              'Callback','Buton_introducere');
%%%%%%%%%%%BUTON MENIU PRINCIPAL%%%%%%%%%%
uicontrol('style','pushbutton',...
              'Units','normalized',...
              'String',' MENIU >',...
              'FontWeight', 'bold',...
              'Backgroundcolor',[0.3,0.75,0.75]',...
    'Foregroundcolor','black',...
              'Position',[0.35 0.74 0.09 0.05],...
              'Callback','close;start;');
% BUTOAN Inchide proiect
uicontrol('style','pushbutton',...
              'Units','normalized',...
              'String',' INCHIDE',...
              'FontWeight', 'bold',...
              'Backgroundcolor',[0.3,0.75,0.75]',...
    'Foregroundcolor','black',...
              'Position',[0.35 0.6 0.09 0.05],...
              'Callback','close;');
          

if m==1&& s==1 
      T=1/f;
t=0:T/1000:N*T;
Vi1=VI1*sin(2*3.14*f*t);
subplot(223);
plot(t,Vi1,'-r');
hold on;
grid on;
title('VI1');
xlabel('timp [s]');
ax = gca;
ax.XAxis.Color = 'blue';
ax.YAxis.Color = 'red';
ylabel('Amplitudine [V]');
legend('VI1');
if sel == 1
set(RadioB1,'value',1)
set(RadioB2,'value',0)
grid on;
else
set(RadioB1,'value',0)
set(RadioB2,'value',1)
grid off;
end
end
if m==1 && s== 2
T=1/f;
t=0:T/1000:N*T;
Vi1=VI1*cos(2*3.14*f*t);
subplot(223);
plot(t,Vi1,'-r');
hold on;
grid on;
title('VI1');
xlabel('timp [s]');
ax = gca;
 
ax.XAxis.Color = 'blue';
  
ax.YAxis.Color = 'red';
ylabel('Amplitudine [V]');
legend('VI1');
if sel == 1
set(RadioB1,'value',1)
set(RadioB2,'value',0)
grid on;
else
set(RadioB1,'value',0)
set(RadioB2,'value',1)
grid off;
end
end
    if m==1 && s== 3
T=1/f;
t=0:T/1000:N*T;
Vi1=(2*VI1/pi)*asin(sin(2*3.14*f*t));
subplot(223);
plot(t,Vi1,'-r');
hold on;
grid on;
title('VI1');
xlabel('timp [s]');
ax = gca;
 
ax.XAxis.Color = 'blue';
  
ax.YAxis.Color = 'red';
ylabel('Amplitudine [V]');
legend('VI1');
if sel == 1
set(RadioB1,'value',1)
set(RadioB2,'value',0)
grid on;
else
set(RadioB1,'value',0)
set(RadioB2,'value',1)
grid off;
end
    end
    if m==1 && s== 4
T=1/f;
t=0:T/1000:N*T;
Vi1=(2*VI1/pi)*atan(tan(2*3.14*f*t./2));
subplot(223);
plot(t,Vi1,'-r');
hold on;
grid on;
title('VI1 VI2  si  Vout');
xlabel('timp [s]');
ax = gca;
 
ax.XAxis.Color = 'blue';
  
ax.YAxis.Color = 'red';
ylabel('Amplitudine [V]');
legend('VI1');
if sel == 1
set(RadioB1,'value',1)
set(RadioB2,'value',0)
grid on;
else
set(RadioB1,'value',0)
set(RadioB2,'value',1)
grid off;
end
    end
if m==1 && s== 5
        T=1/f;
        t = linspace(0,0.1*N*T*pi,121);
x = VI1*square(2000*t);

subplot(223);
plot(t/pi,x,'-r');
hold on;
grid on;
title('VI1');
xlabel('timp [s]');
ax = gca;
 
ax.XAxis.Color = 'blue';
  
ax.YAxis.Color = 'red';
ylabel('Amplitudine [V]');
legend('VI1');
if sel == 1
set(RadioB1,'value',1)
set(RadioB2,'value',0)
grid on;
else
set(RadioB1,'value',0)
set(RadioB2,'value',1)
grid off;
end
end

   if m==2 && s== 1 
              T=1/f;
t=0:T/1000:N*T;
Vi2=VI2*sin(2*3.14*f*t);
subplot(224);
plot(t,Vi2,'-g');
grid on;
if sel == 1
set(RadioB1,'value',1)
set(RadioB2,'value',0)
grid on;
else
set(RadioB1,'value',0)
set(RadioB2,'value',1)
grid off;
end
title('VI2');
xlabel('timp [s]');
ax = gca;
 
ax.XAxis.Color = 'blue';
  
ax.YAxis.Color = 'red';
ylabel('Amplitudine [V]');
legend('VI2');
subplot(223);
Vi1=VI1*sin(2*3.14*f*t);
plot(t,Vi1);
plot(t,Vi1,'-r');
hold on;
grid on;
title('VI1');
xlabel('timp [s]');
ax = gca;
 
ax.XAxis.Color = 'blue';
  
ax.YAxis.Color = 'red';
ylabel('Amplitudine [V]');
legend('VI1');
if sel == 1
set(RadioB1,'value',1)
set(RadioB2,'value',0)
grid on;
else
set(RadioB1,'value',0)
set(RadioB2,'value',1)
grid off;
end
   end
    if m==2 && s== 2
T=1/f;
t=0:T/1000:N*T;
Vi2=VI2*cos(2*3.14*f*t);
subplot(224);
plot(t,Vi2,'-g');
hold on;
grid on;
if sel == 1
set(RadioB1,'value',1)
set(RadioB2,'value',0)
grid on;
else
set(RadioB1,'value',0)
set(RadioB2,'value',1)
grid off;
end
title('VI2');
xlabel('timp [s]');
ax = gca;
 
ax.XAxis.Color = 'blue';
  
ax.YAxis.Color = 'red';
ylabel('Amplitudine [V]');
legend('VI2');
subplot(223);
Vi1=VI1*cos(2*3.14*f*t);
plot(t,Vi1);
plot(t,Vi1,'-r');
hold on;
grid on;
title('VI1');
xlabel('timp [s]');
ax = gca;
 
ax.XAxis.Color = 'blue';
  
ax.YAxis.Color = 'red';
ylabel('Amplitudine [V]');
legend('VI1');
if sel == 1
set(RadioB1,'value',1)
set(RadioB2,'value',0)
grid on;
else
set(RadioB1,'value',0)
set(RadioB2,'value',1)
grid off;
end
    end
     if m==2 && s==3
T=1/f;
t=0:T/1000:N*T;
Vi2=(2*VI2/pi)*asin(sin(2*3.14*f*t));
subplot('position',[0.5 0.08 0.4 0.4]);
plot(t,Vi2,'-g');
hold on;
grid on;
title('VI2');
xlabel('timp [s]');
ax = gca;
 
ax.XAxis.Color = 'blue';
  
ax.YAxis.Color = 'red';
ylabel('Amplitudine [V]');
legend('VI2');
subplot(223);
Vi1=(2*VI2/pi)*asin(sin(2*3.14*f*t));
plot(t,Vi1);
plot(t,Vi1,'-r');
hold on;
grid on;
title('VI1');
xlabel('timp [s]');
ax = gca;
ax.XAxis.Color = 'blue';
ax.YAxis.Color = 'red';
ylabel('Amplitudine [V]');
legend('VI1');
if sel == 1
set(RadioB1,'value',1)
set(RadioB2,'value',0)
grid on;
else
set(RadioB1,'value',0)
set(RadioB2,'value',1)
grid off;
end
hold on;
grid on;
     end
 if m==2 && s==4
T=1/f;
t=0:T/1000:N*T;
Vi2=(2*VI2/pi)*atan(tan(2*3.14*f*t./2));
subplot('position',[0.5 0.08 0.4 0.4]);
plot(t,Vi2,'-g');
hold on;
grid on;
title('VI2');
xlabel('timp [s]');
ax = gca;
 
ax.XAxis.Color = 'blue';
  
ax.YAxis.Color = 'red';
ylabel('Amplitudine [V]');
legend('VI2');
subplot(223);
Vi1=(2*VI1/pi)*atan(tan(2*3.14*f*t./2));
plot(t,Vi1);
plot(t,Vi1,'-r');
hold on;
grid on;
title('VI1');
xlabel('timp [s]');
ax = gca;
 
ax.XAxis.Color = 'blue';
  
ax.YAxis.Color = 'red';
ylabel('Amplitudine [V]');
legend('VI1');
if sel == 1
set(RadioB1,'value',1)
set(RadioB2,'value',0)
grid on;
else
set(RadioB1,'value',0)
set(RadioB2,'value',1)
grid off;
end
hold on;
grid on;
 end
    if m==2 && s== 5
        T=1/f;
        t = linspace(0,0.1*N*T*pi,121);
x = VI2*square(2000*t);

subplot(224);
plot(t/pi,x,'-g');
hold on;
grid on;
title('VI2');
xlabel('timp [s]');
ax = gca;
 
ax.XAxis.Color = 'blue';
  
ax.YAxis.Color = 'red';
ylabel('Amplitudine [V]');
legend('VI2');
x = VI1*square(2000*t);
subplot(223);
plot(t/pi,x,'-g');
hold on;
grid on;
title('VI1');
xlabel('timp [s]');
ax = gca;
 
ax.XAxis.Color = 'blue';
  
ax.YAxis.Color = 'red';
ylabel('Amplitudine [V]');
legend('VI1');
if sel == 1
set(RadioB1,'value',1)
set(RadioB2,'value',0)
grid on;
else
set(RadioB1,'value',0)
set(RadioB2,'value',1)
grid off;   
end
    end
     if m==3 && s==1
        T=1/f;
t=0:T/1000:N*T;
Vi1=VI1*sin(2*3.14*f*t);
Vi2=VI2*sin(2*3.14*f*t);
V0=((R4/(R3+R4))*(1+R2/R1)*Vi1)-(R2/R1)*Vi2;
k=max(size(t));
for i=1:k
    if (V0(i)>Ep) 
        V0(i)=Ep;
    end
    if (V0(i)<-En) 
        V0(i)=-En;
    end
    
end

subplot('position',[0.3 0.06 0.4 0.4]);
plot(t,V0,'-b');
hold on;
grid on;
title(' Vout');
xlabel('timp [s]');
ax = gca;
 
ax.XAxis.Color = 'blue';
  
ax.YAxis.Color = 'red';
ylabel('Amplitudine [V]');
legend('Vout');
if sel == 1
set(RadioB1,'value',1)
set(RadioB2,'value',0)
grid on;
else
set(RadioB1,'value',0)
set(RadioB2,'value',1)
grid off;
end
     end
  if m==3 && s== 2
T=1/f;
t=0:T/1000:N*T;
Vi1=VI1*cos(2*3.14*f*t);
Vi2=VI2*cos(2*3.14*f*t);
V0=((R4/(R3+R4))*(1+R2/R1)*Vi1)-(R2/R1)*Vi2;
k=max(size(t));
for i=1:k
    if (V0(i)>Ep) 
        V0(i)=Ep;
    end
    if (V0(i)<-En) 
        V0(i)=-En;
    end
    
end

subplot('position',[0.3 0.06 0.4 0.4]);
plot(t,V0,'-b');
hold on;
grid on;
title(' Vout');
xlabel('timp [s]');
ax = gca;
 
ax.XAxis.Color = 'b';
  
ax.YAxis.Color = 'r';
ylabel('Amplitudine [V]');
legend('Vout');
if sel == 1
set(RadioB1,'value',1)
set(RadioB2,'value',0)
grid on;
else
set(RadioB1,'value',0)
set(RadioB2,'value',1)
grid off;
end
  end
  if m==3 && s==3
T=1/f;
t=0:T/1000:N*T;
Vi1=(2*VI1/pi)*asin(sin(2*3.14*f*t));
Vi2=(2*VI2/pi)*asin(sin(2*3.14*f*t));
V0=((R4/(R3+R4))*(1+R2/R1)*Vi1)-(R2/R1)*Vi2;
k=max(size(t));
for i=1:k
    if (V0(i)>Ep) 
        V0(i)=Ep;
    end
    if (V0(i)<-En) 
        V0(i)=-En;
    end
    
end

subplot('position',[0.3 0.06 0.4 0.4]);
plot(t,V0,'-b');
hold on;
grid on;
title(' Vout');
xlabel('timp [s]');
ax = gca;
 
ax.XAxis.Color = 'b';
  
ax.YAxis.Color = 'r';
ylabel('Amplitudine [V]');
legend('Vout');
if sel == 1
set(RadioB1,'value',1)
set(RadioB2,'value',0)
grid on;
else
set(RadioB1,'value',0)
set(RadioB2,'value',1)
grid off;
end
  end
  if m==3 && s==4
T=1/f;
t=0:T/1000:N*T;
Vi1=(2*VI1/pi)*atan(tan(2*3.14*f*t./2));
Vi2=(2*VI2/pi)*atan(tan(2*3.14*f*t./2));
V0=((R4/(R3+R4))*(1+R2/R1)*Vi1)-(R2/R1)*Vi2;
k=max(size(t));
for i=1:k
    if (V0(i)>Ep) 
        V0(i)=Ep;
    end
    if (V0(i)<-En) 
        V0(i)=-En;
    end
    
end

subplot('position',[0.3 0.06 0.4 0.4]);
plot(t,V0,'-b');
hold on;
grid on;
title(' Vout');
xlabel('timp [s]');
ax = gca;
 
ax.XAxis.Color = 'b';
  
ax.YAxis.Color = 'r';
ylabel('Amplitudine [V]');
legend('Vout');
if sel == 1
set(RadioB1,'value',1)
set(RadioB2,'value',0)
grid on;
else
set(RadioB1,'value',0)
set(RadioB2,'value',1)
grid off;
end
  end
  if m==3 && s==5
        T=1/f;
        t = linspace(0,0.1*N*T*pi,121);
%x = VI1*square(2000*t);
%y = VI2*square(2000*t);

V0=((R4/(R3+R4))*(1+R2/R1)*VI1)-(R2/R1)*VI2;
z = V0*square(2000*t);
k=max(size(t));
for i=1:k
    if (z(i)>1) 
        z(i)=1;
    end
    if (z(i)<-1) 
        z(i)=-1;
    end
    
end
subplot('position',[0.3 0.06 0.4 0.4]);
plot(t/pi,z,'-b');
hold on;
grid on;
title('VI1 VI2  si  Vout');
xlabel('timp [s]');
ax = gca;
ax.XAxis.Color = 'b';
ax.YAxis.Color = 'r';
ylabel('Amplitudine [V]');
legend('Vout');
if sel == 1
set(RadioB1,'value',1)
set(RadioB2,'value',0)
grid on;
else
set(RadioB1,'value',0)
set(RadioB2,'value',1)
grid off;
end
 end
if m==4 && s==1
        T=1/f;
t=0:T/1000:N*T;
Vi1=VI1*sin(2*3.14*f*t);
Vi2=VI2*sin(2*3.14*f*t);
V0=((R4/(R3+R4))*(1+R2/R1)*Vi1)-(R2/R1)*Vi2;
k=max(size(t));
for i=1:k
    if (V0(i)>Ep) 
        V0(i)=Ep;
    end
    if (V0(i)<-En) 
        V0(i)=-En;
    end
   
end
subplot('position',[0.3 0.06 0.4 0.4]);
plot(t,Vi1,'-r');
hold on;
plot(t,Vi2,'-g');
hold on;
plot(t,V0,'-b');
hold on;
grid on;
title('VI1 VI2  si  Vout');
xlabel('timp [s]');
ax = gca;
 
ax.XAxis.Color = 'b';
  
ax.YAxis.Color = 'r';
ylabel('Amplitudine [V]');
legend('VI1','VI2','Vout');
if sel == 1
set(RadioB1,'value',1)
set(RadioB2,'value',0)
grid on;
else
set(RadioB1,'value',0)
set(RadioB2,'value',1)
grid off;
end
end
    if m==4 && s==2
T=1/f;
t=0:T/1000:N*T;
Vi1=VI1*cos(2*3.14*f*t);
Vi2=VI2*cos(2*3.14*f*t);
V0=((R4/(R3+R4))*(1+R2/R1)*Vi1)-(R2/R1)*Vi2;
k=max(size(t));
for i=1:k
    if (V0(i)>Ep) 
        V0(i)=Ep;
    end
    if (V0(i)<-En) 
        V0(i)=-En;
    end
    
end

subplot('position',[0.3 0.06 0.4 0.4]);
plot(t,Vi1,'-r');
hold on;
plot(t,Vi2,'-g');
hold on;
plot(t,V0,'-b');
hold on;
grid on;
title('VI1 VI2  si  Vout');
xlabel('timp [s]');
ax = gca;
 
ax.XAxis.Color = 'b';
  
ax.YAxis.Color = 'r';
ylabel('Amplitudine [V]');
legend('VI1','VI2','Vout');
if sel == 1
set(RadioB1,'value',1)
set(RadioB2,'value',0)
grid on;
else
set(RadioB1,'value',0)
set(RadioB2,'value',1)
grid off;
end
    end
    if m==4 && s==3
T=1/f;
t=0:T/1000:N*T;
Vi1=(2*VI1/pi)*asin(sin(2*3.14*f*t));
Vi2=(2*VI2/pi)*asin(sin(2*3.14*f*t));
V0=((R4/(R3+R4))*(1+R2/R1)*Vi1)-(R2/R1)*Vi2;
k=max(size(t));
for i=1:k
    if (V0(i)>Ep) 
        V0(i)=Ep;
    end
    if (V0(i)<-En) 
        V0(i)=-En;
    end
    
end

subplot('position',[0.3 0.06 0.4 0.4]);
plot(t,Vi1,'-r');
hold on;
plot(t,Vi2,'-g');
hold on;
plot(t,V0,'-b');
hold on;
grid on;
title('VI1 VI2  si  Vout');
xlabel('timp [s]');
ax = gca;
 
ax.XAxis.Color = 'b';
  
ax.YAxis.Color = 'r';
ylabel('Amplitudine [V]');
legend('VI1','VI2','Vout');
if sel == 1
set(RadioB1,'value',1)
set(RadioB2,'value',0)
grid on;
else
set(RadioB1,'value',0)
set(RadioB2,'value',1)
grid off;
end
    end
    if m==4 && s==4
T=1/f;
t=0:T/1000:N*T;
Vi1=(2*VI1/pi)*atan(tan(2*3.14*f*t./2));
Vi2=(2*VI2/pi)*atan(tan(2*3.14*f*t./2));
V0=((R4/(R3+R4))*(1+R2/R1)*Vi1)-(R2/R1)*Vi2;
k=max(size(t));
for i=1:k
    if (V0(i)>Ep) 
        V0(i)=Ep;
    end
    if (V0(i)<-En) 
        V0(i)=-En;
    end
    
end

subplot('position',[0.3 0.06 0.4 0.4]);
plot(t,Vi1,'-r');
hold on;
plot(t,Vi2,'-g');
hold on;
plot(t,V0,'-b');
hold on;
grid on;
title('VI1 VI2  si  Vout');
xlabel('timp [s]');
ax = gca;
 
ax.XAxis.Color = 'b';
  
ax.YAxis.Color = 'r';
ylabel('Amplitudine [V]');
legend('VI1','VI2','Vout');
if sel == 1
set(RadioB1,'value',1)
set(RadioB2,'value',0)
grid on;
else
set(RadioB1,'value',0)
set(RadioB2,'value',1)
grid off;
end
    end
if m==4 && s==5
        T=1/f;
        t = linspace(0,0.1*N*T*pi,121);
x = VI1*square(2000*t);
y = VI2*square(2000*t);

V0=((R4/(R3+R4))*(1+R2/R1)*VI1)-(R2/R1)*VI2;
z = V0*square(2000*t);
k=max(size(t));
for i=1:k
    if (z(i)>1) 
        z(i)=1;
    end
    if (z(i)<-1) 
        z(i)=-1;
    end
    
end
subplot('position',[0.3 0.06 0.4 0.4]);
plot(t/pi,x,'-r');
hold on;
plot(t/pi,y,'-g');
hold on;
plot(t/pi,z,'-b');
hold on;
grid on;
title('VI1 VI2  si  Vout');
xlabel('timp [s]');
ax = gca;
 
ax.XAxis.Color = 'b';
  
ax.YAxis.Color = 'r';
ylabel('Amplitudine [V]');
legend('VI1','VI2','Vout');
if sel == 1
set(RadioB1,'value',1)
set(RadioB2,'value',0)
grid on;
else
set(RadioB1,'value',0)
set(RadioB2,'value',1)
grid off;
end
end
    

 %---------------Grup de meniuri----------%
m=uimenu('Label','Documentatie Proiect');
   uimenu(m,'Label','Autor','Callback','open(''Autor.pdf'')');
%    uimenu(m,'Label','Schema logica proiect','Callback','open(''Schema logica.pdf'')');
   uimenu(m,'Label','Teorie','Callback','open(''Teorie.pdf'')');
   uimenu(m,'Label','Bibliografie','Callback','open(''Bibliografie.pdf'')');
   uimenu(m,'Label','Close','Callback','close','Separator','on','Accelerator','Q');
end

