%Definition de la Matrice Y


function dydt=F(t,y,Variable_externe);
dydt=zeros(2,1);
dydt(1,2)=dp/dtheta;
dydt(2,1)=dT/dtheta;
