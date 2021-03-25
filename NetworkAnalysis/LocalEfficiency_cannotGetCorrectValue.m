function lE=LocalEfficiency(G)

%
%   input  
%       G: network of fmri or DTI or EEG (N*N in dimension)
%   output
%       lE: local Efficiency
%      
%  Reference:   Complex network measures of brain connectivity: Uses and interpretations
%
%   It's strange. I can not get correct value using this method. So i give
%   up it.
%  
% Author : Asik Zhang
N=size(G,1);
Gb=G>0;
for i=1:N
    for j=1:N
        ncp(i,j)=1/NodalCPathLength(G,i,j);
    end
end
ncp(isinf(ncp))=0;
Eloci=zeros(1,N);
for i=1:N
    for j=1:N
        for h=1:N
         Eloci(i)=Eloci(i)+(G(i,j)*G(i,h)*ncp(j,h))^(1/3);
        end
    end
    Eloci(i)=Eloci(i)/NodalStrength(G,i)/(NodalStrength(G,i)-1);
end
lE=sum(Eloci)/2;
            