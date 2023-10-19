X = tracking(:,1,:);
Y = tracking(:,2,:);
T = tracking(:,3,:);

Xt(:,1) = X(1,1,:);
Yt(:,1) = Y(1,1,:);
Tt(:,1) = T(1,1,:);


figure(1)
subplot(3,1,1); plot(t, pd(:,1)-Xt(:,1));
title("Graphs of Coordinate Errors")

subplot(3,1,2); plot(t, pd(:,2)-Yt(:,1));
subplot(3,1,3); plot(t, pd(:,3)-Tt(:,1));
title("Graph of Angle Error")



qi = q(1,:,:);
qii = q(2,:,:);
qiii= q(3,:,:);
qiv = q(4,:,:);

qi1(:,1) = qi(1,1,:);
qii2(:,1) = qii(1,1,:);
qiii3(:,1) = qiii(1,1,:);
qiv4(:,1) = qiv(1,1,:);

%plotting q
figure(2)
subplot(4,1,1); plot(t, qi1(:,1));
title("Graph of Joint Variables")
subplot(4,1,2); plot(t, qii2(:,1));
subplot(4,1,3); plot(t, qiii3(:,1));
subplot(4,1,4); plot(t, qiv4(:,1));