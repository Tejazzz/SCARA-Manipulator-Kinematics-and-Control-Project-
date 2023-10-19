
clear all;
close all;
clc
Ts=0.001;

load('kinematic_traj.mat');
run ("plot_traj.m")

save('generated_traj.mat',"t","pd","pd_dot","pd_dot_dot")