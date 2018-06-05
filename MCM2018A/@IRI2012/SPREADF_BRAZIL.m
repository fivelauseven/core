function [ osfbr, context ] = SPREADF_BRAZIL( context, idoy,idiy,f107,geolat )
%SPREADF_BRAZIL SUBROUTINE CALCULATES PERCENTAGE OF SPREAD F OCCURRENCE
%***************************************************************************
%
%
%       subroutine SPREADF_BRAZIL(idoy,idiy,f107,geolat,osfbr)
%**********************************************************************       
%*
%*       SUBROUTINE CALCULATES PERCENTAGE OF SPREAD F OCCURRENCE OVER 
%*       BRAZILIAN SECTOR AS DESCRIBED IN:
%*       ABDU ET AL., Advances in Space Research, 31(3), 
%*       703-716, 2003
%*
%*    INPUT:
%*         IDOY: DAY OF YEAR (1 TO 365/366)
%*         IDIY: DAYS IN YEAR (365 OR 366)
%*         F107: F10.7 cm SOLAR FLUX (DAILY VALUE)
%*         GEOLAT: BRAZILIAN GEOGRAPHIC LATITUDE BETWEEN -4 AND -22.5
%*
%*    OUTPUT:         
%*         OSFBR(25): PERCENTAGE OF SPREAD F OCCURRENCE FOR 25 TIME 
%*                    STEPS FROM LT=18 TO LT=7 ON THE NEXT DAY IN
%*                    STEPS OF 0.5 HOURS.
%*
%**********************************************************************

  persistent sosf NI NJ NK NL;
  if isempty(sosf)
    %         dimension param(3),osfbr(25),coef_sfa(684),coef_sfb(684),
    %     &             sosf(2,32,3,12)
    %         common/mflux/kf,n     
    coef_sfa = [ ...
         0.07,0.13,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.05,0.04,0.03 ...
        ,0.06,0.07,0.02,0.03,0.03,0.07,0.06,0.07,0.21,0.28,0.34,0.16 ...
        ,0.12,0.00,0.02,0.02,0.04,0.05,0.02,0.11,0.19,0.31,0.31,0.11 ...
        ,0.14,0.16,0.03,0.00,0.00,0.02,0.00,0.00,0.05,0.55,0.61,0.28 ...
        ,0.26,0.10,0.15,0.23,0.07,0.06,0.03,0.03,0.41,0.88,0.89,0.65 ...
        ,0.19,0.18,0.17,0.10,0.14,0.15,0.03,0.14,0.46,0.72,0.71,0.53 ...
        ,0.57,0.38,0.30,0.14,0.00,0.04,0.03,0.02,0.21,0.84,0.87,0.72 ...
        ,0.79,0.60,0.65,0.70,0.29,0.19,0.19,0.32,0.73,0.96,0.99,0.84 ...
        ,0.75,0.78,0.79,0.70,0.63,0.24,0.28,0.53,0.75,0.77,0.75,0.85 ...
        ,0.78,0.51,0.59,0.24,0.00,0.07,0.05,0.06,0.33,0.92,0.96,0.89 ...
        ,0.90,0.84,0.86,0.81,0.33,0.27,0.23,0.47,0.90,1.00,1.00,0.96 ...
        ,0.96,0.89,0.92,0.84,0.80,0.27,0.35,0.61,0.81,0.93,0.86,0.97 ...
        ,0.84,0.65,0.75,0.25,0.00,0.04,0.08,0.06,0.53,0.93,0.96,0.94 ...
        ,0.95,0.84,0.91,0.71,0.18,0.17,0.21,0.42,0.92,0.99,0.97,0.92 ...
        ,0.92,0.93,0.92,0.67,0.58,0.21,0.38,0.55,0.83,0.90,0.89,0.97 ...
        ,0.84,0.71,0.91,0.21,0.02,0.07,0.03,0.03,0.60,0.95,0.96,0.92 ...
        ,0.97,0.91,0.92,0.67,0.11,0.08,0.09,0.23,0.90,0.99,0.99,0.96 ...
        ,0.96,0.93,0.98,0.63,0.25,0.08,0.12,0.41,0.79,0.95,0.98,0.99 ...
        ,0.86,0.80,0.94,0.22,0.02,0.04,0.03,0.03,0.63,0.95,0.96,0.94 ...
        ,0.98,0.90,0.91,0.59,0.10,0.04,0.07,0.15,0.83,0.97,0.97,0.90 ...
        ,0.92,0.93,0.95,0.57,0.12,0.03,0.05,0.23,0.74,0.94,0.94,0.99 ...
        ,0.84,0.84,0.90,0.24,0.02,0.07,0.07,0.03,0.60,0.95,0.96,0.97 ...
        ,0.93,0.82,0.83,0.51,0.08,0.07,0.09,0.09,0.71,0.95,0.92,0.87 ...
        ,0.91,0.91,0.89,0.50,0.14,0.03,0.06,0.14,0.61,0.84,0.89,0.94 ...
        ,0.77,0.82,0.84,0.34,0.10,0.11,0.12,0.06,0.43,0.87,0.94,0.97 ...
        ,0.91,0.77,0.68,0.42,0.06,0.08,0.10,0.04,0.51,0.78,0.71,0.77 ...
        ,0.85,0.88,0.77,0.35,0.16,0.05,0.08,0.15,0.53,0.70,0.60,0.89 ...
        ,0.85,0.71,0.72,0.26,0.16,0.17,0.08,0.15,0.38,0.73,0.91,0.91 ...
        ,0.89,0.68,0.53,0.26,0.06,0.12,0.08,0.09,0.32,0.63,0.67,0.77 ...
        ,0.81,0.79,0.59,0.21,0.14,0.03,0.06,0.09,0.23,0.51,0.34,0.79 ...
        ,0.88,0.66,0.59,0.16,0.18,0.15,0.16,0.16,0.33,0.67,0.75,0.88 ...
        ,0.80,0.64,0.52,0.16,0.04,0.09,0.04,0.09,0.24,0.47,0.53,0.50 ...
        ,0.73,0.69,0.48,0.11,0.14,0.03,0.03,0.03,0.20,0.37,0.28,0.54 ...
        ,0.81,0.64,0.49,0.18,0.12,0.17,0.16,0.19,0.31,0.57,0.70,0.83 ...
        ,0.76,0.57,0.52,0.13,0.04,0.06,0.05,0.08,0.21,0.49,0.47,0.39 ...
        ,0.69,0.66,0.43,0.11,0.10,0.02,0.00,0.03,0.16,0.39,0.24,0.35 ...
        ,0.77,0.45,0.39,0.10,0.10,0.13,0.15,0.18,0.29,0.57,0.70,0.69 ...
        ,0.71,0.49,0.54,0.20,0.05,0.06,0.05,0.06,0.27,0.42,0.36,0.42 ...
        ,0.61,0.59,0.50,0.08,0.06,0.02,0.03,0.02,0.16,0.40,0.17,0.31 ...
        ,0.68,0.30,0.28,0.13,0.10,0.16,0.14,0.08,0.19,0.50,0.63,0.62 ...
        ,0.63,0.45,0.51,0.13,0.06,0.07,0.04,0.06,0.27,0.42,0.28,0.35 ...
        ,0.68,0.53,0.57,0.15,0.05,0.00,0.00,0.05,0.31,0.33,0.18,0.22 ...
        ,0.59,0.32,0.21,0.06,0.10,0.16,0.12,0.10,0.19,0.41,0.55,0.54 ...
        ,0.69,0.43,0.43,0.15,0.06,0.05,0.05,0.08,0.29,0.39,0.23,0.29 ...
        ,0.57,0.51,0.56,0.13,0.06,0.00,0.00,0.05,0.34,0.27,0.19,0.24 ...
        ,0.49,0.16,0.13,0.09,0.04,0.11,0.11,0.05,0.17,0.32,0.49,0.49 ...
        ,0.60,0.42,0.38,0.11,0.06,0.04,0.07,0.07,0.25,0.36,0.21,0.25 ...
        ,0.65,0.48,0.53,0.17,0.05,0.00,0.00,0.11,0.29,0.14,0.20,0.22 ...
        ,0.44,0.16,0.18,0.07,0.04,0.04,0.07,0.03,0.12,0.23,0.39,0.43 ...
        ,0.57,0.40,0.35,0.14,0.06,0.03,0.04,0.07,0.18,0.27,0.14,0.15 ...
        ,0.45,0.50,0.50,0.19,0.06,0.00,0.02,0.05,0.26,0.19,0.15,0.18 ...
        ,0.23,0.09,0.12,0.06,0.04,0.02,0.02,0.02,0.10,0.03,0.14,0.26 ...
        ,0.39,0.34,0.22,0.07,0.03,0.00,0.04,0.01,0.15,0.01,0.04,0.14 ...
        ,0.41,0.39,0.35,0.13,0.02,0.00,0.00,0.06,0.17,0.07,0.06,0.14 ...
        ,0.07,0.02,0.03,0.00,0.00,0.00,0.00,0.00,0.00,0.01,0.03,0.08 ...
        ,0.19,0.14,0.14,0.00,0.03,0.01,0.02,0.00,0.09,0.00,0.01,0.00 ...
        ,0.18,0.09,0.16,0.08,0.01,0.00,0.02,0.02,0.15,0.00,0.03,0.04];
 
      coef_sfb = [ ...
         0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00 ...
        ,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.03,0.00,0.00,0.00,0.00 ...
        ,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.02,0.01,0.00,0.00,0.00 ...
        ,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00 ...
        ,0.00,0.01,0.00,0.00,0.00,0.00,0.00,0.01,0.01,0.00,0.00,0.00 ...
        ,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.05,0.03,0.00,0.02,0.00 ...
        ,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00 ...
        ,0.00,0.04,0.00,0.01,0.00,0.00,0.00,0.01,0.01,0.05,0.00,0.00 ...
        ,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.04,0.00,0.03,0.03,0.00 ...
        ,0.01,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.00,0.01,0.00 ...
        ,0.01,0.04,0.04,0.03,0.00,0.01,0.00,0.01,0.00,0.27,0.14,0.06 ...
        ,0.05,0.04,0.02,0.00,0.00,0.00,0.00,0.04,0.09,0.48,0.43,0.27 ...
        ,0.05,0.04,0.01,0.00,0.00,0.00,0.00,0.00,0.00,0.13,0.16,0.06 ...
        ,0.26,0.12,0.29,0.04,0.01,0.02,0.00,0.01,0.08,0.65,0.56,0.45 ...
        ,0.43,0.42,0.42,0.09,0.00,0.02,0.00,0.00,0.34,0.67,0.73,0.72 ...
        ,0.10,0.05,0.04,0.00,0.01,0.00,0.00,0.00,0.00,0.18,0.39,0.15 ...
        ,0.61,0.37,0.51,0.06,0.01,0.02,0.01,0.01,0.18,0.72,0.63,0.80 ...
        ,0.77,0.66,0.70,0.19,0.00,0.02,0.02,0.02,0.41,0.68,0.88,0.85 ...
        ,0.24,0.11,0.08,0.00,0.01,0.00,0.00,0.00,0.00,0.28,0.51,0.29 ...
        ,0.75,0.48,0.57,0.11,0.00,0.02,0.01,0.01,0.19,0.77,0.77,0.88 ...
        ,0.89,0.81,0.74,0.21,0.02,0.02,0.02,0.02,0.42,0.71,0.93,0.95 ...
        ,0.49,0.30,0.19,0.00,0.00,0.00,0.00,0.01,0.06,0.38,0.64,0.48 ...
        ,0.86,0.60,0.62,0.12,0.00,0.02,0.01,0.00,0.18,0.81,0.84,0.94 ...
        ,0.88,0.79,0.70,0.26,0.03,0.02,0.02,0.02,0.36,0.61,0.98,0.93 ...
        ,0.60,0.46,0.31,0.03,0.00,0.01,0.00,0.00,0.09,0.50,0.71,0.58 ...
        ,0.90,0.65,0.66,0.10,0.00,0.02,0.01,0.02,0.15,0.69,0.80,0.86 ...
        ,0.84,0.75,0.64,0.09,0.03,0.00,0.00,0.04,0.26,0.54,0.78,0.92 ...
        ,0.62,0.59,0.44,0.01,0.00,0.01,0.00,0.00,0.13,0.52,0.77,0.63 ...
        ,0.84,0.67,0.63,0.11,0.00,0.00,0.03,0.03,0.18,0.65,0.75,0.84 ...
        ,0.81,0.63,0.47,0.06,0.02,0.00,0.00,0.05,0.14,0.49,0.76,0.91 ...
        ,0.58,0.63,0.47,0.09,0.00,0.07,0.01,0.04,0.15,0.48,0.68,0.61 ...
        ,0.79,0.63,0.55,0.12,0.01,0.01,0.02,0.05,0.13,0.57,0.51,0.63 ...
        ,0.72,0.54,0.43,0.11,0.02,0.00,0.00,0.09,0.16,0.39,0.59,0.72 ...
        ,0.46,0.55,0.39,0.07,0.01,0.03,0.03,0.06,0.15,0.37,0.51,0.50 ...
        ,0.61,0.43,0.38,0.11,0.01,0.03,0.02,0.03,0.10,0.38,0.38,0.60 ...
        ,0.58,0.42,0.38,0.15,0.02,0.00,0.00,0.11,0.13,0.24,0.41,0.51 ...
        ,0.36,0.36,0.21,0.04,0.04,0.03,0.06,0.05,0.06,0.26,0.39,0.43 ...
        ,0.43,0.31,0.24,0.09,0.02,0.00,0.02,0.02,0.06,0.24,0.24,0.40 ...
        ,0.53,0.19,0.28,0.13,0.02,0.02,0.02,0.09,0.13,0.17,0.24,0.40 ...
        ,0.32,0.27,0.17,0.03,0.04,0.02,0.04,0.03,0.06,0.13,0.34,0.36 ...
        ,0.42,0.31,0.20,0.09,0.03,0.00,0.02,0.01,0.07,0.19,0.24,0.32 ...
        ,0.44,0.10,0.23,0.13,0.03,0.02,0.00,0.09,0.12,0.17,0.21,0.33 ...
        ,0.32,0.23,0.16,0.00,0.02,0.04,0.03,0.03,0.06,0.15,0.29,0.34 ...
        ,0.36,0.26,0.28,0.07,0.01,0.00,0.01,0.02,0.04,0.19,0.17,0.27 ...
        ,0.34,0.14,0.26,0.09,0.03,0.02,0.00,0.06,0.13,0.09,0.16,0.22 ...
        ,0.29,0.21,0.15,0.00,0.02,0.02,0.02,0.03,0.11,0.16,0.26,0.28 ...
        ,0.29,0.22,0.27,0.05,0.01,0.00,0.01,0.01,0.02,0.14,0.09,0.19 ...
        ,0.25,0.19,0.25,0.07,0.02,0.02,0.00,0.00,0.09,0.07,0.12,0.15 ...
        ,0.23,0.20,0.16,0.00,0.03,0.04,0.00,0.00,0.08,0.09,0.21,0.18 ...
        ,0.22,0.21,0.19,0.02,0.02,0.00,0.01,0.03,0.04,0.08,0.06,0.14 ...
        ,0.20,0.12,0.23,0.02,0.00,0.02,0.00,0.00,0.05,0.05,0.09,0.11 ...
        ,0.14,0.16,0.13,0.00,0.03,0.04,0.00,0.00,0.05,0.05,0.04,0.09 ...
        ,0.09,0.13,0.16,0.03,0.01,0.00,0.01,0.03,0.01,0.03,0.04,0.10 ...
        ,0.14,0.09,0.17,0.02,0.02,0.00,0.00,0.02,0.04,0.04,0.03,0.07 ...
        ,0.00,0.11,0.09,0.00,0.02,0.00,0.00,0.00,0.01,0.00,0.02,0.02 ...
        ,0.02,0.06,0.11,0.00,0.00,0.00,0.00,0.01,0.00,0.00,0.01,0.02 ...
        ,0.06,0.09,0.13,0.00,0.02,0.00,0.03,0.02,0.03,0.01,0.02,0.01];
    NI = 2;
    NJ = 32;
    NK = 3;
    NL = 12;
    sosf = zeros(NI,NJ,NK,NL);

    kc=0;
    for i=5:23
      for j=1:NK
       for k=1:NL
         kc=kc+1;
         sosf(1,i,j,k)=coef_sfa(kc);
         sosf(2,i,j,k)=coef_sfb(kc);
       end
      end
    end
  end
  param = zeros(3,1);
  osfbr = zeros(25,1);
  param(1)=idoy;
  param(2)=f107;
  param(3)=geolat;
  context.n=idiy-365;
%
  if(param(1) <= 31.)
    context.kf=1;
  elseif( param(1) <= (59+context.n))
    context.kf=2;
  elseif( param(1) <= (90+context.n))
    context.kf=3;
  elseif( param(1) <= (120+context.n))
    context.kf=4;
  elseif( param(1) <= (151+context.n))
    context.kf=5;
  elseif( param(1) <= (181+context.n))
    context.kf=6;
  elseif( param(1) <= (212+context.n))
    context.kf=7;
  elseif( param(1) <= (243+context.n))
    context.kf=8;
  elseif( param(1) <= (273+context.n))
    context.kf=9;
  elseif( param(1) <= (304+context.n))
    context.kf=10;
  elseif( param(1) <= (334+context.n))
    context.kf=11;
  elseif( param(1) <= (365+context.n))
    context.kf=12;
  else
    context.kf=12; % ???
  end
%

  kk=0;
  for it=1600:50:3200
    slt=it/100.;
    osft=0.;
    for i=1:23
      il=i+3;
      if(il > 23)
        il=il-23;
      end
      for j=1:NL
      jl=j+2;
      if(jl > NL)
        jl=jl-NL;
      end
        for m=1:NK
          ml=m+1;
          if(ml > NK)
            ml=ml-NK;
          end
          for  l=1:NI
            bspl4=IRI2012.BSPL4T(i,slt) ...
                 *IRI2012.BSPL2S(j,param(1)) ...
                 *IRI2012.BSPL2L(l,param(3)) ...
                 *context.BSPL2F(m,param(2));
            osft=osft+bspl4*sosf(l,il,ml,jl);
          end
        end
      end
    end
    if(slt > 17.98 && slt < 30.01)
      kk=kk+1;
      osfbr(kk)=osft;
    end
  end

  for iii=1:25 
    if(osfbr(iii) > 1.)
      osfbr(iii)=1.;
    end
    if(osfbr(iii) < 0.)
      osfbr(iii)=0.;
    end
  end

end

