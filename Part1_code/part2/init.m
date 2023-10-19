clear all
close all
clc
vrclear
vrclose

load('kinematic_traj.mat');

clik_phi_inverse;
sim('clik_phi_inverse.slx', t);
q=ans.q_out';

%plot_outputs_inverse;
SCARA_VR_VISUALIZE(squeeze((q)), false);