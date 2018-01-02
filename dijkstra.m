function [v,c] = dijkstra(A,o,d)
len = length(A);    %nodes
%calling on a function that can handle arbitrary matrix
[V,C] = dijkstra_p3(A,o);
c = C(d);
v = [];
%updating vector v
for j = 1:len
    if V(d,j)~=0
        v(j)=V(d,j);
    end
end

end

% Tester:
% A = [0 5 0 0 1; 5 0 3 0 1; 0 3 0 0 12; 0 0 0 0 0; 1 1 12 0 0];
% [v,c] = dijkstra(A,1,3);
% disp('v =');
% disp(v);
% disp('c =');
% disp(c);