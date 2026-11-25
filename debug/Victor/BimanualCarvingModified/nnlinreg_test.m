function x = nnlinreg_test(u)
%#codegen

% C = eye(10);
% d = zeros(10,1);

C = [0.8217    0.3276    0.1999    0.1897
    0.4299    0.6713    0.4070    0.4950
    0.8878    0.4386    0.7487    0.1476
    0.3912    0.8335    0.8256    0.0550
    0.7691    0.7689    0.7900    0.8507
    0.3968    0.1673    0.3185    0.5606
    0.8085    0.8620    0.5341    0.9296
    0.7551    0.9899    0.0900    0.6967
    0.3774    0.5144    0.1117    0.5828
    0.2160    0.8843    0.1363    0.8154
    0.7904    0.5880    0.6787    0.8790
    0.9493    0.1548    0.4952    0.9889];

d = zeros(12,1) + 0.01*rand(12,1);%emg;

% d = rand(10,1);
% C = rand(10,4);

% x = pinv(C);
% x_corr = lsqnonneg(C,d);
% y = x;

n = size(C,2);
% Initialize vector of n zeros and Infs (to be used later)
nZeros = zeros(n,1);
wz = nZeros;

% Initialize set of non-active columns to null
P = false(n,1);
% Initialize set of active columns to all and the initial point to zeros
Z = true(n,1);
x = nZeros;

resid = d - C*x;
w = C'*resid;

% Set up iteration criterion
outeriter = 0;
iter = 0;
itmax = 3*n;
exitflag = 1;

tol = 10*eps*norm(C,1)*length(C);

% Outer loop to put variables into set to hold positive coefficients
while any(Z) && any(w(Z) > tol)
   outeriter = outeriter + 1;
   % Reset intermediate solution z
   z = nZeros; 
   % Create wz, a Lagrange multiplier vector of variables in the zero set.
   % wz must have the same size as w to preserve the correct indices, so
   % set multipliers to -Inf for variables outside of the zero set.
   wz(P) = -Inf;
   wz(Z) = w(Z);
   % Find variable with largest Lagrange multiplier
   [~,t] = max(wz);
   % Move variable t from zero set to positive set
   P(t) = true;
   Z(t) = false;
   % Compute intermediate solution using only variables in positive set
   z(P) = C(:,P)\d;
   % inner loop to remove elements from the positive set which no longer belong
   while any(z(P) <= 0)
       iter = iter + 1;
       if iter > itmax
%            msg = getString(message('MATLAB:lsqnonneg:IterationCountExceeded'));
%            if verbosity
%                disp(msg)
%            end
%            exitflag = 0;
%            output.iterations = outeriter;
%            output.message = msg;
%            output.algorithm = 'active-set';
           resnorm = sum(resid.*resid);
           x = z;
           lambda = w;
           return
       end
       % Find indices where intermediate solution z is approximately negative
       Q = (z <= 0) & P;
       % Choose new x subject to keeping new x nonnegative
       alpha = min(x(Q)./(x(Q) - z(Q)));
       x = x + alpha*(z - x);
       % Reset Z and P given intermediate values of x
       Z = ((abs(x) < tol) & P) | Z;
       P = ~Z;
       z = nZeros;           % Reset z
       z(P) = C(:,P)\d;      % Re-solve for z
   end
   x = z;
   resid = d - C*x;
   w = C'*resid;
end

% disp(x_corr)
% disp(x)
end