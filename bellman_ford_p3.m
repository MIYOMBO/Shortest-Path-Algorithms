function [V,c] = bellman_ford_p3(A,d)
len = length(A);    %nodes
vector = Inf(2,len);    %vector V
vector(1, d) = 0;   %distance to itself is 0
vector(2, d) = NaN;
var = Inf(2,len);  %infinite
%loops till costs stay same
while(~isequaln(vector, var))
    var = vector;
    for l1 = 1:len
        for l2 = 1:len
            m = min(vector(1,l1), A(l1,l2)+var(1,l2));
            if A(l1,l2)~=0
                if l2~=l1
                    if m~=vector(1,l1)
                        vector(2,l1) = l2;
                    end
                    vector(1,l1) = m;
                end
            end
        end
    end
    disp(vector);
end
V = zeros(len, len);    %valiable

%all nodes
for o = 1:len
    c(o,1) = vector(1,o);
    v = 0;
    if c(o,1)~=Inf
        v(1) = o;
        for loop = 1:len
            if v(loop) == d
                break
            end
            v(loop+1) = vector(2,v(loop));
        end
    end
    V(o,1:length(v)) = v;   %shortest path
end
end

% Tester:
% A = [0 5 0 0 1; 5 0 3 0 1; 0 3 0 0 12; 0 0 0 0 0; 1 1 12 0 0];
% [V,c] = bellman_ford_p3(A,3);
% disp('V =');
% disp(V);
% disp('c =');
% disp(c);