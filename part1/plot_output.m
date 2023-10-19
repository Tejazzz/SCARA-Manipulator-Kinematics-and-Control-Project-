%plot tracking

%figure(1)
%subplot(4,1,1); plot(t, pd(:,1)-tracking(:,1));
%subplot(4,1,2); plot(t, pd(:,2)-tracking(:,2));
%subplot(4,1,3); plot(t, pd(:,3)-tracking(:,3));
%subplot(4,1,4); plot(t, theta_d(:,1)-tracking_theta(:,1));

%figure(2)
%subplot(4,1,1); plot(t, pd(:,1)-tracking(:,1));
%subplot(4,1,2); plot(t, pd(:,2)-tracking(:,2));
%subplot(4,1,3); plot(t, pd(:,3)-tracking(:,3));
%subplot(4,1,4); plot(t, theta_d(:,1)-tracking_theta(:,1));


% sim('clik_inverse',4)
% open_system('clik_inverse')

sim('clik_transpose',4)
open_system('clik_transpose')



error1 =reshape(err_output(1,:,:),[4001 1]);
error2=reshape(err_output(2,:,:),[4001 1]);
error3=reshape(err_output(3,:,:),[4001 1]);
error4=reshape(err_output(4,:,:),[4001 1]);


% figure;
% subplot(4,1,1)
% plot(t,pd(:,1))
% title('Trajectory')
% ylabel('pd1')
% 
% subplot(4,1,2)
% plot(t,pd(:,2))
% ylabel('pd2')
% 
% subplot(4,1,3)
% plot(t,pd(:,3))
% ylabel('pd3')
% 
% subplot(4,1,4)
% plot(t,theta_d)
% ylabel('theta')
% xlabel('time')

figure;
subplot(4,1,1)
plot(t,reshape(theta_1,[4001 1]))
title('Graph of Joint Variables')
ylabel('theta1')

subplot(4,1,2)
plot(t,reshape(theta_2,[4001 1]))
ylabel('theta2')

subplot(4,1,3)
plot(t,reshape(d3,[4001 1]))
ylabel('d3')

subplot(4,1,4)
plot(t,reshape(theta_4,[4001 1]))
ylabel('theta4')
xlabel('time')

figure;
subplot(4,1,1)
plot(t,error1)
title('Graph of Error Values')
ylabel('error_x')

subplot(4,1,2)
plot(t,error2)
ylabel('error_y')

subplot(4,1,3)
plot(t,error3)
ylabel('error_z')

subplot(4,1,4)
plot(t,error4)
ylabel('error_phi')
xlabel('time')


% % Joint variables plot:
% 
% figure;
% title('Joint Variables');
% 
% subplot(4, 1, 1);
% plot(tout, theta_1);
% xlabel('time');
% 
% ylabel('theta1');
% 
% subplot(4, 1, 2);
% plot(tout, theta_2);
% xlabel('time');
% ylabel('theta2');
% 
% subplot(4, 1, 3);
% plot(tout, reshape(d3,[4001 1]));
% xlabel('time');
% ylabel('d3');
% 
% subplot(4, 1, 4);
% plot(tout, theta_4);
% xlabel('time');
% ylabel('theta4');
% 
% figure;
% title('Error values');
% 
% subplot(4, 1, 1);
% plot(tout, error1);
% xlabel('time');
% ylabel('error1');
% 
% subplot(4, 1, 2);
% plot(tout, error2);
% xlabel('time');
% ylabel('error2');
% 
% subplot(4, 1, 3);
% plot(tout, error3);
% xlabel('time');
% ylabel('error3');
% 
% subplot(4, 1, 4);
% plot(tout, error4);
% xlabel('time');
% ylabel('error4');