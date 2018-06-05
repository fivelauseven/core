function [ XMOUT ] = XMOUT( XMODIP,XLATI,XLONGI,UT,XM0 )
%XMOUT PROPAGATION FACTOR M3000 USING THE SUBROUTINE GAMMA1
%
%      real function XMOUT(XMODIP,XLATI,XLONGI,UT,XM0)
%--------------------------------------------------------------
% CALCULATES PROPAGATION FACTOR M3000 USING THE SUBROUTINE GAMMA1.
% XMODIP = MODIFIED DIP LATITUDE, XLATI = GEOG. LATITUDE, XLONGI=
% LONGITUDE (ALL IN DEG.), MONTH = MONTH, UT =  UNIVERSAL TIME 
% (DEC. HOURS), XM0 = ARRAY WITH RZ12-ADJUSTED CCIR/URSI COEFF.
% D.BILITZA,JULY 85.
%--------------------------------------------------------------

%      DIMENSION XM0(441)
%      INTEGER QM(7)
  persistent QM;
  if isempty(QM)
    QM = cast([6,7,5,2,1,0,0],IRI2012.float_t);
  end
  XMOUT=IRI2012.GAMMA1(XMODIP,XLATI,XLONGI,UT,4,QM,length(QM), ...
    IRI2012.FM3numJ,IRI2012.FM3numI,IRI2012.FM3numI*IRI2012.FM3numJ,XM0);

end

