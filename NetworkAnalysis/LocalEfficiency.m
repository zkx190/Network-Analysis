function lE=LocalEfficiency(G)

%
%   input  
%       G: network of fmri or DTI or EEG (N*N in dimension)
%   output
%       lE: local Efficiency
%      
%  
% Author : Asik Zhang

N=size(G,1);
lE=0;
for i=1:N
    list=G(i,:)==0;
    temp=G;
    temp(list,:)=[];
     temp(:,list)=[];
   
    lE=lE+GlobalEfficiency(temp);
end
lE=lE/N;