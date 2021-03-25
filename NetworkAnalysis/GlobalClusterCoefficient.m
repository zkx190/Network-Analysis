function gCC=GlobalClusterCoefficient(G)
%
%   input  
%       G: network of fmri or DTI or EEG (N*N in dimension)
%   output
%       gCC: GlobalClusterCoefficient

N=size(G,1);
for i=1:N
    nCC(i)=NlobalClusterCoefficient(G,i);
end
gCC=mean(nCC);