
function b = trj_fnc(fps, ips, ftm, itm)
    
    t = 0:0.001:4;
    
    
    accl = (4*abs(fps-ips))/((ftm+itm)^2-4*itm*ftm);
    
    
    tc = (ftm+itm)/2-(1/2)*sqrt((((ftm+itm)^2)*accl-4*(fps-ips+accl*itm*ftm))/accl);
    
    
    s = zeros(size(t));
    sd = zeros(size(t));
    sdd = zeros(size(t));
    
    
    for i = 1:length(t)
    
        if t(i) < itm
            s(i) = 0;
            sd(i) = 0;
            sdd(i) = 0;
        elseif t(i) <= tc
            s(i) = ips+(1/2)*accl*((t(i)-itm)^2);
            sd(i) = accl*(t(i)-itm);
            sdd(i) = accl;
        elseif t(i) > tc && t(i) <= (ftm-tc+itm)
            s(i) = ips+accl*(tc-itm)*(t(i)-itm-(tc-itm)/2);
            sd(i) = accl*(tc-itm);
            sdd(i) = 0;
        elseif t(i) > (ftm-tc) && t(i) <= ftm
            s(i) = fps-(1/2)*accl*((ftm-t(i))^2);
            sd(i) = accl*(ftm-t(i));
            sdd(i) = -accl;
        elseif t(i) > ftm
            s(i) = fps;
            sd(i) = 0;
            sdd(i) = 0;
        end
    end
    
   
    a = [s; sd; sdd];
    
    
    b = a;
end
