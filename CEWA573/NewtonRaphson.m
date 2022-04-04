function [root, iteration] = NewtonRaphson(f, var, DecPlaces, InitApprox)
g=diff(f); %The Derivative of the Function
epsilon = 5*10^-(DecPlaces+1);
for iteration=1:100
     f0=vpa(subs(f,var,InitApprox)); %Calculating the value of function at L0
     f0_der=vpa(subs(g,var,InitApprox)); %Calculating the value of function derivative at L0
     root=InitApprox-f0/f0_der; % The Formula
err=abs(root-InitApprox);
if err<epsilon %checking the amount of error at each iteration
break
end
InitApprox=root;
end
root = root - rem(root,10^-DecPlaces); %Displaying upto required decimal places