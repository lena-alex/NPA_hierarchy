function [objective, NPA] = maximiseCHSH

constraints = load('NPAmat_lnmd_22_22_22.mat');
dim_mat = length(constraints.Expression1);
num_elements = max(max(constraints.Expression1));

NPA = sdpvar(dim_mat);
objective = sdpvar;
sec = sdpvar(1,num_elements);

F = [NPA >= 0];
F = [F, NPA == sec(constraints.Expression1)];
F = [F, NPA(1,1) == 1];

CHSHIQ = [2 -4 0 -4 0 0 4 4 0 4  -4 0 0];

objective = dot(CHSHIQ,NPA(1,1:length(CHSHIQ)));

solvesdp(F, -objective,sdpsettings('solver','sedumi'));

objective = double(objective);
NPA = double(NPA);

end