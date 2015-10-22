% Système bielle manivelle
%Détermination du volution de la chambre de combustion, angle, vitesse du
%pistion



function [Dpist,V,dV]=biellemanivelle(theta)
%rman=rayon de la bielle
%L=Longueur de bielle
%N=vitesse de rotation
%Angle=angle vilebrequin
%Volmort=Volume mort
%lambda=rapport bielle manivelle

Angle=theta.*2.*pi./360;
lambda=L/r;

%Dpist=distance du piston par rapport au volume mort haut

Dpist=(rman+L)-(rman*cos(Angle)+L*cos(Angle)+L.sqrt(abs(1-1/lambda.^2.*sin(Angle).*sin(Angle))));

Vcyl=pi.*Dpist.*Diam.^2/4;  %Definition du volume de la cylindrée
Voltot=Volmort+Vcyl;        %Volume totale
dV=2*pi/360*1/2*Vcylu.*sin(Angle).*(1.+cos(Angle)./((lambda.^2.-sin(Angle).^2).^0.5));