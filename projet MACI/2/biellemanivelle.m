% Système bielle manivelle
%Détermination du volume de la chambre de combustion, angle, vitesse du
%pistion



function [output]=biellemanivelle(argument,theta) %argument peut êtree un V ou dV en fonction du besoin


global Diam L rman Volmort Vcylu     %rappeler les paramètres du programme principal 
%rman=rayon de la bielle
%L=Longueur de bielle
%N=vitesse de rotation
%Angle=angle vilebrequin
%Volmort=Volume mort
%lambda=rapport bielle manivelle

Angle=theta*2*pi/360;
lambda=L/rman;
Dpist=(rman+L)-(rman*cos(Angle)+L*cos(Angle)+L*sqrt(abs(1-1/lambda^2*sin(Angle)*sin(Angle))));%Dpist=distance du piston par rapport au volume mort haut
Vcyl=pi*Dpist*Diam^2/4;  %Definition du volume de la cylindrée
Voltot=Volmort+Vcyl;        %Volume totale

%V=Volmort+(Vcylu/2)*(1+lambda-cos(Angle)-sqrt(lambda^2-(sin(Angle)^2)));
%dV=2*pi/360*1/2*Vcylu*sin(Angle)*(1+cos(Angle)/((lambda^2-sin(Angle)^2)^0.5));
      



switch argument   %pour appeler soir dV ou V en fonction du besoin et l'introduire après dans la fonction terme vierge
    
    case 'dV'
        output=2*pi/360*1/2*Vcylu*sin(Angle)*(1+cos(Angle)/((lambda^2-sin(Angle)^2)^0.5));
        
    case  'V' 
        output=Volmort+(Vcylu/2)*(1+lambda-cos(Angle)-sqrt(lambda^2-(sin(Angle)^2)));
        
end 
      
end








