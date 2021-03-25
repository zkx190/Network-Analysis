function nCP=NodalCPathLength(G,i,j)
%
%   input  
%       G: network of fmri or DTI or EEG (N*N in dimension)
%   output
%       nCP: nodal Characteristic Path Length
%       i j  shortest path from i to j 
%
% Author : Asik Zhang
% use Dijkstra method
N=size(G,1);
A=G;
G(G~=0)=1./G(G~=0);

complete=zeros(1,N);
complete(i)=1;
dis=G(i,:);
dis(dis==0)=99999;
dis(i)=0;

% not stop untile all nodal has joined in calculation
while(sum(complete)<N)

minIndexThatDidNotSettle=0;
minValueThatDidNotSettle=99999;

% find the Remaining minest index
for n=1:N
    if complete(n)==0&&dis(n)<minValueThatDidNotSettle
        minValueThatDidNotSettle=dis(n);
        minIndexThatDidNotSettle=n;
    end
end
B=minIndexThatDidNotSettle;
if B==0
    break;
end
% set the index as 1 and get this nodal into CP calculation
complete(B)=1;
for m=1:N
    if m~=i&&G(B,m)>0&&(dis(B)+G(B,m))<dis(m)
        dis(m)=dis(B)+G(B,m);
    end
end
    
end

nCP=dis(j);
if (nCP==99999)
    nCP=0;
end
