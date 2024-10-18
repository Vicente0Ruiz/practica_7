%-----FUNCION-----%
[t,x]=ode45(@ODE_OPAMPs, [0 5], [0 0]);

%Figure 1
figure(1)
plot(t,x(:,1),'g');
grid on
title("Voltaje salida");
xlabel("tiempo");
ylabel("voltaje");