% %_---FUNCIÓN----%
% function dx=ODE_OPAMPs(t,x)
% %-----PARAMETROS------%
% 
% %----RESISTENCIAS----%
% R1=5e6; 
% R2=5e6; 
% R3=5e6; 
% 
% %----CAPACITORES----%
% C1=100e-9; 
% C2=100e-9; 
% 
% %----VOLTAJE----%
% V=1; 
% 
% %------VARIABLES DE ESTADOS(MATRIZ)---%
% dx=zeros(2,1);
% 
% %-----DINAMICA DEL SISTEMA-----%
% dx(1)=x(2);
% dx(2)=(1/(R1*R2*R3*C1*C2))*(R2*V-R1*R3*C2*x(2));

function dx=ODE_OPAMPs(t,x)
%-----PARAMETROS------%

%----RESISTENCIAS----%
R1=5e6; 
R2=5e6; 
R3=5e6; 

%----CAPACITORES----%
C1=100e-9; 
C2=100e-9; 

%----VOLTAJE----%
% Amplitude of the sinusoidal signal
A = 1; 
% Frequency of the sinusoidal signal
f = 100; 
% Define the input sinusoidal signal
V = A*sin(2*pi*f*t);

%------VARIABLES DE ESTADOS(MATRIZ)---%
dx=zeros(2,1);

%-----DINAMICA DEL SISTEMA-----%
dx(1)=x(2);
dx(2)=(1/(R1*R2*R3*C1*C2))*(R2*V-R1*R3*C2*x(2));
end