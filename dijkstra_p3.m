function [V,c] = dijkstra_p3(A,o)
len = length(A);    %nodes
nodes = zeros(1,len);   %vector N
nodes(1) = o;
vector = Inf(2,len);    %distance infinite
vector(1,o) = 0;    %distance to itself is 0
vector(2,o) = NaN;
%Iterate to find shortest path and then add to vector N and update cost
for i = 1:len
    if i ~= 1
        var = vector(1,:);
        var(nodes(1:i-1)) = NaN;
        [m,index] = min(var);
        nodes(i) = index;
    end
    for ver = 1:len
        m = min(vector(1,ver), vector(1,nodes(i))+A(nodes(i),ver));
        if A(nodes(i),ver) ~= 0
            if m ~= vector(1,ver)
                vector(2,ver) = nodes(i);
            end
            vector(1,ver) = m;
        end
    end
    disp(vector)
end
V = zeros(len, len);    %valriable
%all nodes
for d = 1:len
    v = 0;
    c(d,1) = vector(1,d);
    if c(d,1) ~= Inf
        v(1) = d;
        for loop = 1:len-1
            if v(loop) == o
                break
            end
            v(loop+1) = vector(2,v(loop));
        end
        v = fliplr(v);
    end
    V(d,1:length(v)) = v;   %shortest path
end

% Tester:
% A = [0 5 0 0 1; 5 0 3 0 1; 0 3 0 0 12; 0 0 0 0 0; 1 1 12 0 0];
% [v,c] = dijkstra_p3(A,1);
% disp('V =');
% disp(V);
% disp('c =');
% disp(c);