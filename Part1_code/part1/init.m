clear all
close all
clc
vrclear
vrclose

load('kinematic_traj.mat');
clik_inverse;
sim('clik_inverse.mdl', t);
q=[reshape(theta_1,[4001 1])';reshape(theta_2,[4001 1])';reshape(d3,[4001 1])';reshape(theta_4,[4001 1])']
SCARA_VR_VISUALIZE(squeeze(q), false);