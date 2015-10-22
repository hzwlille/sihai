


p=y(:,1);
T=y(:,2);


tspan=1:1:720; % le temps est rapport à la position du vilebrequin sur un cycle
yo=[1e5;300];  %Definition des conditions aux limites
options=odeset(('Reltol',,'Abstol',,'mass','@M');
[t;y]=ode45(@F,tspan,yo,options); 



help

