
global V theta ;

H=zeros()

for (theta=1:20:720)
 
 H=biellemanivelle(V,theta)
 plot(theta,H);

end