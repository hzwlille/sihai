%Definition de la Matrice Y


function F=terme_vierge(theta,y,V,dV);
F=zeros(2,1);
F(1,1)=-y(1)*biellemanivelle('dV',theta); %faire 
F(2,1)=-y(1)*biellemanivelle('dV',theta);
