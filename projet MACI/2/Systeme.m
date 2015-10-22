




tspan=1:1:720; % le temps est rapport � la position du vilebrequin sur un cycle
yo=[1e5;300];  %Definition des conditions aux limites pour la pression et temp�rature
options=odeset('RelTol' ,1e-4,'AbsTol',[1e-4 1e-4],'mass','@masse_vierge');%avec la fonction ode45 on doit appeler la function o� on a definit la matrice de masse
[theta,y]=ode45(@terme_vierge,tspan,yo,options); %la function et le programme.m doivent comporter le m�me nom absolument

figure;plot(theta,y);%pour avoir une image � l'�cran sans effecer les travaux en cours de r�alisation

p=y(:,1); %on d�finit les vecteur P et T apr�s avoir trouver y
T=y(:,2);

