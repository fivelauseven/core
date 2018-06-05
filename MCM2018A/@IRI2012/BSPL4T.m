function [ bspl4t ] = BSPL4T( i,t1 )
%BSPL4T bspl4t
%
%**********************************************************************
%      function bspl4t(i,t1)
%**********************************************************************

%      dimension tt(0:78),b(30,30)
%
  persistent tt;
  if isempty(tt)
    tt = [16.00,16.50,17.00,17.50,18.00,18.50,19.00,19.50,20.00, ...
        20.50,21.00,22.00,23.00,24.00,25.00,26.00,27.00,27.50,28.00, ...
        28.50,29.00,29.50,30.00,30.50,31.00,32.00,40.00,40.50,41.00, ...
        41.50,42.00,42.50,43.00,43.50,44.00,44.50,45.00,46.00,47.00, ...
        48.00,49.00,50.00,51.00,51.50,52.00,52.50,53.00,53.50,54.00, ...
        54.50,55.00,56.00,64.00,64.50,65.00,65.50,66.00,66.50,67.00, ...
        67.50,68.00,68.50,69.00,70.00,71.00,72.00,73.00,74.00,75.00, ...
        75.50,76.00,76.50,77.00,77.50,78.00,78.50,79.00,80.00,88.00];
  end
  b = zeros(30,30);
  t=t1;
  if(i >= 0 && t < tt(i+1))
     t=t+24.;
  end
  for j=i:i+4-1
    if(t >= tt(j+1) && t < tt(j+1+1))
       b(j,1)=1.;
    else
       b(j,1)=0.;
    end
  end
  for j=2:4
    for k=i:i+4-j
      b(k,j)=(t-tt(k+1))/(tt(k+j-1+1)-tt(k+1))*b(k,j-1);
      b(k,j)=b(k,j)+(tt(k+j+1)-t)/(tt(k+j+1)-tt(k+1+1))*b(k+1,j-1);
    end
  end

  bspl4t=b(i,4);

end
