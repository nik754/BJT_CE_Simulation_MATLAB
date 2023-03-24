function proiect (Ao,A,f,N,RB1,RB2,RC,RE,Beta,VAl,tip)

Fig=figure('Name','Tranzistor bipolar cu Emitor Comun',...        
    'Units','normalized',... 
    'Position',[0.1 0.1 0.8 0.8],...   
    'NumberTitle','off','color','n'); 

ha = axes('units','normalized', ...
           'position',[0 0 1 1]);
           uistack(ha,'bottom');
           I=imread('black2.jpg');
           q = imagesc(I);
           set(ha,'handlevisibility','off', 'visible','off');
           colormap gray

Bt_titlu=uicontrol('Style','text',...           
    'Units','normalized',...           
    'Position',[0.35 0.93 0.30 0.05],...  
    'FontSize',16,...
    'foregroundcolor','white',...
    'Background','black',...        
    'String','Tranzistor bipolar cu Emitor Comun'); 
       
                          % ~~Curent continuu~~  
VBB=(RB2/(RB1+RB2))*VAl;    %tens. baza
VBE=0.6;                    %tens baza emitor
IE=((VBB-VBE)/RE).*1000;    %curent emitor
IC=IE;                      %curent colector
vCE=VAl-(IC/1000)*(RC+RE);  %tens colector emitor
RB=RB1*RB2/(RB1+RB2);       %rezistenta echivalenta baza
       
                         % ~~Semnal mic~~
Ro=RC;                      %rezist load
gm=40.*IC;                  %transconductanta
rbe=Beta/gm;                %rezist baza emitor
Ri=RB*rbe/(RB+rbe);         %rezist intrare
Avi=-gm*RC./1000;           %amplit intrare
Ai=Beta;

       
RadioGroup=uibuttongroup('Visible','on',...    
    'BackgroundColor', 'black',...     
    'ForegroundColor','white',...             
    'Title','Parametrii CC',...                     
    'FontSize',12,...                       
    'TitlePosition','centertop',...         
    'Tag','radiobutton',...                 
    'Position',[0.18 0.52 0.12 0.4]); 

Bt1=uicontrol('Style','text',...            
    'Units','normalized',...             
    'Position',[0.1 0.95 0.3 0.05],...      
    'backgroundcolor','w',...               
    'foregroundcolor','black',...          
    'String','Ao',... 
    'Parent',RadioGroup); 

Bt2=uicontrol('Style','text',...            
    'Units','normalized',...             
    'Position',[0.1 0.85 0.3 0.05],...      
    'backgroundcolor','w',...               
    'foregroundcolor','black',...          
    'String','A',... 
    'Parent',RadioGroup); 

Bt3=uicontrol('Style','text',...            
    'Units','normalized',...             
    'Position',[0.1 0.75 0.3 0.05],...      
    'backgroundcolor','w',...               
    'foregroundcolor','black',...          
    'String','F',... 
    'Parent',RadioGroup);

Bt4=uicontrol('Style','text',...            
    'Units','normalized',...             
    'Position',[0.1 0.65 0.3 0.05],...      
    'backgroundcolor','w',...               
    'foregroundcolor','black',...          
    'String','N',... 
    'Parent',RadioGroup);

Bt5=uicontrol('Style','text',...            
    'Units','normalized',...             
    'Position',[0.1 0.55 0.3 0.05],...      
    'backgroundcolor','w',...               
    'foregroundcolor','black',...          
    'String','RB1',... 
    'Parent',RadioGroup); 

Bt6=uicontrol('Style','text',...            
    'Units','normalized',...             
    'Position',[0.1 0.45 0.3 0.05],...      
    'backgroundcolor','w',...               
    'foregroundcolor','black',...          
    'String','RB2',... 
    'Parent',RadioGroup); 

Bt7=uicontrol('Style','text',...            
    'Units','normalized',...             
    'Position',[0.1 0.35 0.3 0.05],...      
    'backgroundcolor','w',...               
    'foregroundcolor','black',...          
    'String','RE',... 
    'Parent',RadioGroup); 

Bt8=uicontrol('Style','text',...            
    'Units','normalized',...             
    'Position',[0.1 0.25 0.3 0.05],...      
    'backgroundcolor','w',...               
    'foregroundcolor','black',...          
    'String','Beta',... 
    'Parent',RadioGroup); 

Bt9=uicontrol('Style','text',...            
    'Units','normalized',...             
    'Position',[0.1 0.15 0.3 0.05],...      
    'backgroundcolor','w',...               
    'foregroundcolor','black',...          
    'String','RC',... 
    'Parent',RadioGroup);

Bt10=uicontrol('Style','text',...            
    'Units','normalized',...             
    'Position',[0.1 0.05 0.3 0.05],...      
    'backgroundcolor','w',...               
    'foregroundcolor','black',...          
    'String','VAl',... 
    'Parent',RadioGroup);

Be1=uicontrol('Style','edit',...  
    'Units','normalized',...             
    'Position',[0.6 0.95 0.3 0.05],...     
    'foregroundcolor','black',...            
    'String',Ao,...            
    'Callback','Ao=str2num(get(gco,''String''))',...
    'Parent',RadioGroup);
   
Be2=uicontrol('Style','edit',...  
    'Units','normalized',...             
    'Position',[0.6 0.85 0.3 0.05],...     
    'foregroundcolor','black',...            
    'String',A,...            
    'Callback','A=str2num(get(gco,''String''))',...
    'Parent',RadioGroup);
   
Be3=uicontrol('Style','edit',...  
    'Units','normalized',...             
    'Position',[0.6 0.75 0.3 0.05],...     
    'foregroundcolor','black',...            
    'String',f,...            
    'Callback','f=str2num(get(gco,''String''))',...
    'Parent',RadioGroup);
     
Be4=uicontrol('Style','edit',...  
    'Units','normalized',...             
    'Position',[0.6 0.65 0.3 0.05],...     
    'foregroundcolor','black',...            
    'String',N,...            
    'Callback','N=str2num(get(gco,''String''))',...
    'Parent',RadioGroup);

Be5=uicontrol('Style','edit',...  
    'Units','normalized',...             
    'Position',[0.6 0.55 0.3 0.05],...     
    'foregroundcolor','black',...            
    'String',RB1,...            
    'Callback','RB1=str2num(get(gco,''String''))',...
    'Parent',RadioGroup);

Be6=uicontrol('Style','edit',...  
    'Units','normalized',...             
    'Position',[0.6 0.45 0.3 0.05],...     
    'foregroundcolor','black',...            
    'String',RB2,...            
    'Callback','RB2=str2num(get(gco,''String''))',...
    'Parent',RadioGroup);

Be7=uicontrol('Style','edit',...  
    'Units','normalized',...             
    'Position',[0.6 0.35 0.3 0.05],...     
    'foregroundcolor','black',...            
    'String',RE,...            
    'Callback','RE=str2num(get(gco,''String''))',...
    'Parent',RadioGroup);

Be8=uicontrol('Style','edit',...  
    'Units','normalized',...             
    'Position',[0.6 0.25 0.3 0.05],...     
    'foregroundcolor','black',...            
    'String',Beta,...            
    'Callback','Beta=str2num(get(gco,''String''))',...
    'Parent',RadioGroup);

Be9=uicontrol('Style','edit',...  
    'Units','normalized',...             
    'Position',[0.6 0.15 0.3 0.05],...     
    'foregroundcolor','black',...            
    'String',RC,...            
    'Callback','RC=str2num(get(gco,''String''))',... 
    'Parent',RadioGroup);

Be10=uicontrol('Style','edit',...  
    'Units','normalized',...             
    'Position',[0.6 0.05 0.3 0.05],...     
    'foregroundcolor','black',...            
    'String',VAl,...            
    'Callback','VAl=str2num(get(gco,''String''))',...
    'Parent',RadioGroup);


RadioGroup1=uibuttongroup('Visible','on',...    
    'BackgroundColor', 'black',...     
    'ForegroundColor','white',...             
    'Title','Parametrii semnal mic',...                     
    'FontSize',12,...                       
    'TitlePosition','centertop',...         
    'Tag','radiobutton',...                 
    'Position',[0.81 0.6 0.12 0.25]);    

Bt1=uicontrol('Style','text',...            
    'Units','normalized',...             
    'Position',[0.08 0.9 0.3 0.1],...      
    'backgroundcolor','w',...               
    'foregroundcolor','black',...          
    'String','Ri',... 
    'Parent',RadioGroup1); 

Bt2=uicontrol('Style','text',...            
    'Units','normalized',...             
    'Position',[0.08 0.73 0.3 0.1],...      
    'backgroundcolor','w',...               
    'foregroundcolor','black',...          
    'String','Ro',... 
    'Parent',RadioGroup1); 

Bt3=uicontrol('Style','text',...            
    'Units','normalized',...             
    'Position',[0.08 0.56 0.3 0.1],...      
    'backgroundcolor','w',...               
    'foregroundcolor','black',...          
    'String','gm',... 
    'Parent',RadioGroup1); 

Bt4=uicontrol('Style','text',...            
    'Units','normalized',...             
    'Position',[0.08 0.39 0.3 0.1],...      
    'backgroundcolor','w',...               
    'foregroundcolor','black',...          
    'String','rbe',... 
    'Parent',RadioGroup1); 

Bt5=uicontrol('Style','text',...            
    'Units','normalized',...             
    'Position',[0.08 0.22 0.3 0.1],...      
    'backgroundcolor','w',...               
    'foregroundcolor','black',...          
    'String','Avi',... 
    'Parent',RadioGroup1);

Bt6=uicontrol('Style','text',...            
    'Units','normalized',...             
    'Position',[0.08 0.05 0.3 0.1],...      
    'backgroundcolor','w',...               
    'foregroundcolor','black',...          
    'String','Ai',... 
    'Parent',RadioGroup1); 


Bt8=uicontrol('Style','edit',...            
    'Units','normalized',...             
    'Position',[0.58 0.90 0.4 0.1],...      
    'backgroundcolor','w',...               
    'foregroundcolor','black',...          
    'String',Ri,... 
    'Parent',RadioGroup1); 

Bt9=uicontrol('Style','edit',...            
    'Units','normalized',...             
    'Position',[0.58 0.73 0.4 0.1],...      
    'backgroundcolor','w',...               
    'foregroundcolor','black',...          
    'String',Ro,...
    'Parent',RadioGroup1); 

Bt10=uicontrol('Style','edit',...            
    'Units','normalized',...             
    'Position',[0.58 0.56 0.4 0.1],...      
    'backgroundcolor','w',...               
    'foregroundcolor','black',...          
    'String',gm,... 
    'Parent',RadioGroup1); 

Bt11=uicontrol('Style','edit',...            
    'Units','normalized',...             
    'Position',[0.58 0.39 0.4 0.1],...      
    'backgroundcolor','w',...               
    'foregroundcolor','black',...          
    'String',rbe,... 
    'Parent',RadioGroup1); 

Bt12=uicontrol('Style','edit',...            
    'Units','normalized',...             
    'Position',[0.58 0.22 0.4 0.1],...      
    'backgroundcolor','w',...               
    'foregroundcolor','black',...          
    'String',Avi,... 
    'Parent',RadioGroup1); 

Bt13=uicontrol('Style','edit',...            
    'Units','normalized',...             
    'Position',[0.58 0.05 0.4 0.1],...      
    'backgroundcolor','w',...               
    'foregroundcolor','black',...          
    'String',Ai,... 
    'Parent',RadioGroup1); 

RadioGroup2=uibuttongroup('Visible','on',...    
    'BackgroundColor', 'black',...  
    'foregroundcolor','white',... 
    'Title','P.S.F.',...                     
    'FontSize',12,...                       
    'TitlePosition','centertop',...         
    'Tag','radiobutton',...                 
    'Position',[0.81 0.32 0.09 0.12]); 

Bt2=uicontrol('Style','text',...            
    'Units','normalized',...             
    'Position',[0.08 0.65 0.4 0.20],...      
    'backgroundcolor','w',...               
    'foregroundcolor','black',...          
    'String','IC',... 
    'Parent',RadioGroup2); 

Bt3=uicontrol('Style','text',...            
    'Units','normalized',...             
    'Position',[0.55 0.65 0.4 0.20],...      
    'backgroundcolor','w',...               
    'foregroundcolor','black',...          
    'String','vCE',... 
    'Parent',RadioGroup2); 

Bt2i=uicontrol('Style','edit',...            
    'Units','normalized',...             
    'Position',[0.08 0.25 0.4 0.25],...      
    'backgroundcolor','w',...               
    'foregroundcolor','black',...          
    'String',IC,... 
    'Parent',RadioGroup2); 

Bt3v=uicontrol('Style','edit',...            
    'Units','normalized',...             
    'Position',[0.55 0.25 0.4 0.25],...      
    'backgroundcolor','w',...               
    'foregroundcolor','black',...          
    'String',vCE,... 
    'Parent',RadioGroup2); 
      
 Bp=uicontrol('Style','pushbutton',... 
    'Units','normalized',...
    'Position',[0.01 0.8 0.14 0.07],...
    'string','Calculeaza',...
    'foregroundcolor','white',...
    'Background','black',...
    'FontName','Times New Roman',...
    'FontSize',16,...
    'Callback','close, proiect (Ao,A,f,N,RB1,RB2,RC,RE,Beta,VAl,tip)');
       
Bc=uicontrol('Style','pushbutton',...              
    'Units','normalized',...       
    'Position',[0.03 0.34 0.1 0.05],...  
    'string','Iesire',...  
    'foregroundcolor','white',...
    'Background','black',... 
    'FontName','Times New Roman',...
    'FontSize',14,...
    'Callback','close');


subplot('position',[0.35 0.52 0.24 0.38]);
Img1=imread('circuit.png');
image(Img1);
grid on;
axis off;
     
subplot('position',[0.62 0.52 0.15 0.41]);
Img2=imread('curentcontinuu.png');
image(Img2);
grid on;
axis off;
     
subplot('position',[0.35 0.28 0.42 0.20]);
Img3=imread('semnalmic.png');
image(Img3);
grid on;
axis off;
     
Bp=uicontrol('style','popup',...
     'units','normalized',...
     'position',[0.01 0.68 0.14 0.1],...
     'value',tip,...
     'Background','black',...
     'foregroundcolor','white',...
     'FontSize',14,...
     'string','Semnal Sinus|Semnal Cosinus|Semnal Triunghiular|Semnal dinte de Fierastrau',...
     'callback','tip=get(gco,''value'');close,proiect (Ao,A,f,N,RB1,RB2,RC,RE,Beta,VAl,tip)');
         
       
T=1/f;
t=0:T/100:N*T;
              
     
 switch(tip)
case 1
    vi=Ao+A.*sin(2.*pi.*f.*t);
case 2
    vi=Ao+A.*cos(2.*pi.*f.*t);
case 3
    vi=Ao+(2.*A./pi)*asin(sin(2.*pi.*f.*t));
case 4
    vi=Ao+(2.*A./pi)*atan(tan(2.*pi.*f.*t./2));

      end 
      
vo=vi.*Avi;

subplot('position',[0.05 0.05 0.43 0.2]);
plot(t,vi,'--b');
grid on;
title('Tensiunea de intrare', 'color','w','fontweight','b');
xlabel('timp [s]','color','w','fontweight','b');
ylabel('Amplitudine [ V ]','color','w','fontweight','b');
     
subplot('position',[0.54 0.05 0.43 0.2]);
plot(t,vo,'-.r');
grid on;
title('Tensiunea de iesire', 'color','w','fontweight','b');
xlabel('timp [s]','color','w','fontweight','b');
ylabel('Amplitudine [ V ]','color','w','fontweight','b');
      
end 