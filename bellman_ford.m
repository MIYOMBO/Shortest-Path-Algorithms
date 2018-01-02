function [v,c] = bellman_ford(A,o,d)
len = length(A);    %nodes
%calling on a function that can handle arbitrary matrix
[V,C] = bellman_ford_p3(A,d);   
c = C(o);
v = [];
%forming the vector v
for j = 1:len
    if V(o,j)~=0
        v(j)=V(o,j);
    end
end

end

% Tester:
% A = [0 5 0 0 1; 5 0 3 0 1; 0 3 0 0 12; 0 0 0 0 0; 1 1 12 0 0];
% [v,c] = bellman_ford(A,1,3);
% disp('v =');
% disp(v);
% disp('c =');
% disp(c);