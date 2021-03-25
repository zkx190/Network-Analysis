function gS=GlobalStrength(G)
%
%   input  
%       G: network of fmri or DTI or EEG (N*N in dimension)
%   output
%       gS: globalStrength 
%
% Author : Asik Zhang

N=size(G,1);
for i =1:N
    S(i)=NodalStrength(G,i);
end
gS=mean(S);
    
    

