% ========================================================================= 
% AUTHOR ..... yufei xia
% UPDATED .... 1-17-2018
% Evaluate the truncated Taylor series for sin(x) about the point x0 = 0 
% INPUT 
% x .... Vector of values to evaluate the Taylor series at 
% n .... Integer of last term to evaluate in Taylor series 
% 
% OUTPUT 
% T : Evaluated Taylor series at points given by x to n terms 
% =========================================================================


%first set up the taylor series to estimate sin(x),we have  two
%arguments,one is x, the other is number of terms n
function T=sinTaylorSeries(x,n)
      T=0;
      
      for k = 0:n
          T = T+(-1)^k*x.^(2*k+1)/(factorial(2*k+1));
      end
          
end    

