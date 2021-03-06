%% DRIVER FOR GCONSIMPLE COMMANDS
% This code provides the inputs to find the results of the DP1 and CD constraints 
%
% Author: K. Heidi Fehr
% Email: kfehr@wisc.edu
% October 2020; Last revision: 6-Oct-2020
%
% TO-DO: 
clear

%% Two Bodies in Space

data.r_i = [8;6;-3];
data.r_i_dot = [2;1;2];
data.p_i = [4;3;-5;1];
data.p_i = data.p_i/norm(data.p_i);

data.p_i_dot = [-0.2;1.3;3.4;0];
data.p_i_dot(4) = -dot(data.p_i_dot,data.p_i)/data.p_i(4);
data.p_i_dot = data.p_i_dot/norm(data.p_i_dot);

data.a_i_bar = [-1.2;1;0.3];
data.s_i_P_bar = [0.1;-0.3;6];

data.r_j = [-0.5;1.6;-6.3];
data.r_j_dot = [2;1;2];
data.p_j = [3.3;-4;5.1;6];
data.p_j = data.p_j/norm(data.p_j);

data.p_j_dot = [0.6;-3.7;5.1;0];
data.p_j_dot(4) = -dot(data.p_j_dot,data.p_j)/data.p_j(4);
data.p_j_dot = data.p_j_dot/norm(data.p_j_dot);

data.a_j_bar = [1.2;4.5;3.1];
data.s_j_P_bar = [0.2;-1;1.5];

data.c = [0.3;0.4;-6];

data.f = 1.2;
data.df = 2.5;
data.ddf = 0.2;

solD = con_D(data,'phi', 'gamma','nu', 'phi_p','phi_r')
solDP2 = con_D(data,'phi', 'gamma','nu', 'phi_p','phi_r')
%solDP1 = con_DP1(p_i,p_i_dot,p_j,p_j_dot,a_i_bar,a_j_bar,f,df,ddf)
% solDP1 = con_DP1(p_i,p_i_dot,p_j,p_j_dot,a_i_bar,a_j_bar,f,df,ddf,'phi')
% solCD = con_CD(r_i,p_i,p_i_dot,r_j,p_j,p_j_dot,s_i_P_bar,s_j_P_bar,c,f,df,ddf)
% solDP2 = con_DP2(r_i,r_j,p_i,p_i_dot,p_j,p_j_dot,a_i_bar,a_j_bar,s_i_P_bar,s_j_P_bar,r_i_dot,r_j_dot,f,df,ddf,a_i_dot, a_j_dot)
% solD = con_D(r_i,r_j,p_i,p_i_dot,p_j,p_j_dot,s_i_P_bar,s_j_P_bar,r_i_dot,r_j_dot,f,df,ddf)
%% One Ground, One Body in Space
% clear
% 
% r_i = [8;6;-3];
% p_i = [4;3;-5;1];
% p_i = p_i/norm(p_i);
% 
% p_i_dot = [-0.2;1.3;3.4;0];
% p_i_dot(4) = -dot(p_i_dot,p_i)/p_i(4);
% p_i_dot = p_i_dot/norm(p_i_dot);
% 
% a_i_bar = [-1.2;1;0.3];
% s_i_P_bar = [0.1;-0.3;6];
% 
% r_j = [0;0;0];
% p_j = [0;0;0;0];
% 
% p_j_dot = [0;0;0;0];
% 
% a_j_bar = [0;0;0];
% s_j_P_bar = [0;0;0];
% 
% c = [0.3;0.4;-6];
% 
% f = 1.2;
% df = 2.5;
% ddf = 0.2;
% 
% solDP1 = con_DP1(p_i,p_i_dot,p_j,p_j_dot,a_i_bar,a_j_bar,f,df,ddf)
% solCD = con_CD(r_i,p_i,p_i_dot,r_j,p_j,p_j_dot,s_i_P_bar,s_j_P_bar,c,f,df,ddf)
