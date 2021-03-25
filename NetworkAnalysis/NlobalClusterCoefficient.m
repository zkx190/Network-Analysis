function nCC=NlobalClusterCoefficient(G,num)
%
%   input  
%       G: network of fmri or DTI or EEG (N*N in dimension)
%   output
%       nCC: NlobalClusterCoefficient
%       num: the index of nodel analysed

if (NodalDegree(G,num)<2)
    nCC=0;
else
    N=size(G,1);
    all=0;
    for i=1:N
        for j=1:i
            if G(i,j)>0&&G(i,num)>0&&G(j,num)>0
                all=all+(G(i,num)+G(j,num))/2;
            end
        end
    end
    nCC=all/NodalStrength(G,num)/(NodalDegree(G,num)-1);
end