
%Definition de la Matrice Masse
function M=M(t,y,Variable_externe);
M(1,1)=Vcylu;
M(1,2)=-m.*r;
M(2,1)=0;
M(2,2)=-m.*r;