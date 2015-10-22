




tspan=1:1:720; % le temps est rapport à la position du vilebrequin sur un cycle
yo=[1e5;300];  %Definition des conditions aux limites pour la pression et température
options=odeset('RelTol' ,1e-4,'AbsTol',[1e-4 1e-4],'mass','@masse_vierge');%avec la fonction ode45 on doit appeler la function où on a definit la matrice de masse
[theta,y]=ode45(@terme_vierge,tspan,yo,options); %la function et le programme.m doivent comporter le même nom absolument

figure;plot(theta,y);%pour avoir une image à l'écran sans effecer les travaux en cours de réalisation

p=y(:,1); %on définit les vecteur P et T après avoir trouver y
T=y(:,2);

