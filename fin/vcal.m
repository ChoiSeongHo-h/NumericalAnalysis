function t = vcal()    
    t = ones(6,351)*0.001;
    X = t;
    ta = zeros(3, 351);
    i = 0;
    j = 0;
    for i = 0:49
        j = i*7;
        ta(:, j+1) = [0;0;-0.54];
        ta(:, j+2) = [0;-0.12;-0.54];
        ta(:, j+3) = [0;-0.14;-0.45];
        ta(:, j+4) = [0.15;-0.14;-0.45];
        ta(:, j+5) = [0.15;0;-0.45];
        ta(:, j+6) = [0.15;0.12;-0.5];
        ta(:, j+7) = [0;0.12;-0.54];
    end
    ta(1, 351) = 0;
    ta(2, 351) = 0;
    ta(3, 351) = -0.54;

    while(1)
        t = X;
        F=[cos(t(4,:)).*sin(t(2,:)).*sin(t(5,:))+cos(t(5,:)).*sin(t(2,:)).*sin(t(4,:))+cos(t(2,:)).*cos(t(4,:)).*cos(t(5,:)).*sin(t(3,:))-cos(t(2,:)).*sin(t(3,:)).*sin(t(4,:)).*sin(t(5,:));cos(t(3,:)).*sin(t(1,:)).*sin(t(4,:)).*sin(t(5,:))-cos(t(1,:)).*cos(t(2,:)).*cos(t(5,:)).*sin(t(4,:))-cos(t(3,:)).*cos(t(4,:)).*cos(t(5,:)).*sin(t(1,:))-cos(t(1,:)).*cos(t(2,:)).*cos(t(4,:)).*sin(t(5,:))+cos(t(1,:)).*cos(t(4,:)).*cos(t(5,:)).*sin(t(2,:)).*sin(t(3,:))-cos(t(1,:)).*sin(t(2,:)).*sin(t(3,:)).*sin(t(4,:)).*sin(t(5,:));cos(t(6,:)).*sin(t(1,:)).*sin(t(3,:))+cos(t(1,:)).*cos(t(3,:)).*cos(t(6,:)).*sin(t(2,:))+cos(t(1,:)).*cos(t(2,:)).*cos(t(4,:)).*cos(t(5,:)).*sin(t(6,:))-cos(t(1,:)).*cos(t(2,:)).*sin(t(4,:)).*sin(t(5,:)).*sin(t(6,:))-cos(t(3,:)).*cos(t(4,:)).*sin(t(1,:)).*sin(t(5,:)).*sin(t(6,:))-cos(t(3,:)).*cos(t(5,:)).*sin(t(1,:)).*sin(t(4,:)).*sin(t(6,:))+cos(t(1,:)).*cos(t(4,:)).*sin(t(2,:)).*sin(t(3,:)).*sin(t(5,:)).*sin(t(6,:))+cos(t(1,:)).*cos(t(5,:)).*sin(t(2,:)).*sin(t(3,:)).*sin(t(4,:)).*sin(t(6,:));(3.*cos(t(3,:)).*sin(t(1,:)).*sin(t(2,:)).*sin(t(6,:)))/20-(3.*cos(t(1,:)).*sin(t(3,:)).*sin(t(6,:)))/20-(9.*cos(t(2,:)).*cos(t(4,:)).*sin(t(1,:)))/40-(9.*cos(t(1,:)).*cos(t(3,:)).*sin(t(4,:)))/40-(9.*cos(t(2,:)).*sin(t(1,:)))/40-(9.*sin(t(1,:)).*sin(t(2,:)).*sin(t(3,:)).*sin(t(4,:)))/40-(3.*cos(t(2,:)).*cos(t(4,:)).*cos(t(5,:)).*cos(t(6,:)).*sin(t(1,:)))/20-(3.*cos(t(1,:)).*cos(t(3,:)).*cos(t(4,:)).*cos(t(6,:)).*sin(t(5,:)))/20-(3.*cos(t(1,:)).*cos(t(3,:)).*cos(t(5,:)).*cos(t(6,:)).*sin(t(4,:)))/20+(3.*cos(t(2,:)).*cos(t(6,:)).*sin(t(1,:)).*sin(t(4,:)).*sin(t(5,:)))/20-(3.*cos(t(4,:)).*cos(t(6,:)).*sin(t(1,:)).*sin(t(2,:)).*sin(t(3,:)).*sin(t(5,:)))/20-(3.*cos(t(5,:)).*cos(t(6,:)).*sin(t(1,:)).*sin(t(2,:)).*sin(t(3,:)).*sin(t(4,:)))/20-ta(1,:);(9.*sin(t(2,:)))/40+(9.*cos(t(4,:)).*sin(t(2,:)))/40-(9.*cos(t(2,:)).*sin(t(3,:)).*sin(t(4,:)))/40+(3.*cos(t(2,:)).*cos(t(3,:)).*sin(t(6,:)))/20+(3.*cos(t(4,:)).*cos(t(5,:)).*cos(t(6,:)).*sin(t(2,:)))/20-(3.*cos(t(6,:)).*sin(t(2,:)).*sin(t(4,:)).*sin(t(5,:)))/20-(3.*cos(t(2,:)).*cos(t(4,:)).*cos(t(6,:)).*sin(t(3,:)).*sin(t(5,:)))/20-(3.*cos(t(2,:)).*cos(t(5,:)).*cos(t(6,:)).*sin(t(3,:)).*sin(t(4,:)))/20-ta(2,:);(9.*cos(t(3,:)).*sin(t(1,:)).*sin(t(4,:)))/40-(9.*cos(t(1,:)).*cos(t(2,:)))/40+(3.*sin(t(1,:)).*sin(t(3,:)).*sin(t(6,:)))/20-(9.*cos(t(1,:)).*cos(t(2,:)).*cos(t(4,:)))/40+(3.*cos(t(1,:)).*cos(t(3,:)).*sin(t(2,:)).*sin(t(6,:)))/20-(9.*cos(t(1,:)).*sin(t(2,:)).*sin(t(3,:)).*sin(t(4,:)))/40-(3.*cos(t(1,:)).*cos(t(2,:)).*cos(t(4,:)).*cos(t(5,:)).*cos(t(6,:)))/20+(3.*cos(t(1,:)).*cos(t(2,:)).*cos(t(6,:)).*sin(t(4,:)).*sin(t(5,:)))/20+(3.*cos(t(3,:)).*cos(t(4,:)).*cos(t(6,:)).*sin(t(1,:)).*sin(t(5,:)))/20+(3.*cos(t(3,:)).*cos(t(5,:)).*cos(t(6,:)).*sin(t(1,:)).*sin(t(4,:)))/20-(3.*cos(t(1,:)).*cos(t(4,:)).*cos(t(6,:)).*sin(t(2,:)).*sin(t(3,:)).*sin(t(5,:)))/20-(3.*cos(t(1,:)).*cos(t(5,:)).*cos(t(6,:)).*sin(t(2,:)).*sin(t(3,:)).*sin(t(4,:)))/20-ta(3,:)];
        J=permute(reshape([zeros(1, 351) cos(t(2,:)).*cos(t(4,:)).*sin(t(5,:))+cos(t(2,:)).*cos(t(5,:)).*sin(t(4,:))-cos(t(4,:)).*cos(t(5,:)).*sin(t(2,:)).*sin(t(3,:))+sin(t(2,:)).*sin(t(3,:)).*sin(t(4,:)).*sin(t(5,:)) cos(t(2,:)).*cos(t(3,:)).*cos(t(4,:)).*cos(t(5,:))-cos(t(2,:)).*cos(t(3,:)).*sin(t(4,:)).*sin(t(5,:)) cos(t(4,:)).*cos(t(5,:)).*sin(t(2,:))-sin(t(2,:)).*sin(t(4,:)).*sin(t(5,:))-cos(t(2,:)).*cos(t(4,:)).*sin(t(3,:)).*sin(t(5,:))-cos(t(2,:)).*cos(t(5,:)).*sin(t(3,:)).*sin(t(4,:)) cos(t(4,:)).*cos(t(5,:)).*sin(t(2,:))-sin(t(2,:)).*sin(t(4,:)).*sin(t(5,:))-cos(t(2,:)).*cos(t(4,:)).*sin(t(3,:)).*sin(t(5,:))-cos(t(2,:)).*cos(t(5,:)).*sin(t(3,:)).*sin(t(4,:)) zeros(1, 351) cos(t(2,:)).*cos(t(4,:)).*sin(t(1,:)).*sin(t(5,:))-cos(t(1,:)).*cos(t(3,:)).*cos(t(4,:)).*cos(t(5,:))+cos(t(2,:)).*cos(t(5,:)).*sin(t(1,:)).*sin(t(4,:))+cos(t(1,:)).*cos(t(3,:)).*sin(t(4,:)).*sin(t(5,:))-cos(t(4,:)).*cos(t(5,:)).*sin(t(1,:)).*sin(t(2,:)).*sin(t(3,:))+sin(t(1,:)).*sin(t(2,:)).*sin(t(3,:)).*sin(t(4,:)).*sin(t(5,:)) cos(t(1,:)).*cos(t(4,:)).*sin(t(2,:)).*sin(t(5,:))+cos(t(1,:)).*cos(t(5,:)).*sin(t(2,:)).*sin(t(4,:))+cos(t(1,:)).*cos(t(2,:)).*cos(t(4,:)).*cos(t(5,:)).*sin(t(3,:))-cos(t(1,:)).*cos(t(2,:)).*sin(t(3,:)).*sin(t(4,:)).*sin(t(5,:)) cos(t(4,:)).*cos(t(5,:)).*sin(t(1,:)).*sin(t(3,:))-sin(t(1,:)).*sin(t(3,:)).*sin(t(4,:)).*sin(t(5,:))+cos(t(1,:)).*cos(t(3,:)).*cos(t(4,:)).*cos(t(5,:)).*sin(t(2,:))-cos(t(1,:)).*cos(t(3,:)).*sin(t(2,:)).*sin(t(4,:)).*sin(t(5,:)) cos(t(1,:)).*cos(t(2,:)).*sin(t(4,:)).*sin(t(5,:))-cos(t(1,:)).*cos(t(2,:)).*cos(t(4,:)).*cos(t(5,:))+cos(t(3,:)).*cos(t(4,:)).*sin(t(1,:)).*sin(t(5,:))+cos(t(3,:)).*cos(t(5,:)).*sin(t(1,:)).*sin(t(4,:))-cos(t(1,:)).*cos(t(4,:)).*sin(t(2,:)).*sin(t(3,:)).*sin(t(5,:))-cos(t(1,:)).*cos(t(5,:)).*sin(t(2,:)).*sin(t(3,:)).*sin(t(4,:)) cos(t(1,:)).*cos(t(2,:)).*sin(t(4,:)).*sin(t(5,:))-cos(t(1,:)).*cos(t(2,:)).*cos(t(4,:)).*cos(t(5,:))+cos(t(3,:)).*cos(t(4,:)).*sin(t(1,:)).*sin(t(5,:))+cos(t(3,:)).*cos(t(5,:)).*sin(t(1,:)).*sin(t(4,:))-cos(t(1,:)).*cos(t(4,:)).*sin(t(2,:)).*sin(t(3,:)).*sin(t(5,:))-cos(t(1,:)).*cos(t(5,:)).*sin(t(2,:)).*sin(t(3,:)).*sin(t(4,:)) zeros(1, 351) cos(t(1,:)).*cos(t(6,:)).*sin(t(3,:))-cos(t(3,:)).*cos(t(6,:)).*sin(t(1,:)).*sin(t(2,:))-cos(t(2,:)).*cos(t(4,:)).*cos(t(5,:)).*sin(t(1,:)).*sin(t(6,:))-cos(t(1,:)).*cos(t(3,:)).*cos(t(4,:)).*sin(t(5,:)).*sin(t(6,:))-cos(t(1,:)).*cos(t(3,:)).*cos(t(5,:)).*sin(t(4,:)).*sin(t(6,:))+cos(t(2,:)).*sin(t(1,:)).*sin(t(4,:)).*sin(t(5,:)).*sin(t(6,:))-cos(t(4,:)).*sin(t(1,:)).*sin(t(2,:)).*sin(t(3,:)).*sin(t(5,:)).*sin(t(6,:))-cos(t(5,:)).*sin(t(1,:)).*sin(t(2,:)).*sin(t(3,:)).*sin(t(4,:)).*sin(t(6,:)) cos(t(1,:)).*cos(t(2,:)).*cos(t(3,:)).*cos(t(6,:))-cos(t(1,:)).*cos(t(4,:)).*cos(t(5,:)).*sin(t(2,:)).*sin(t(6,:))+cos(t(1,:)).*sin(t(2,:)).*sin(t(4,:)).*sin(t(5,:)).*sin(t(6,:))+cos(t(1,:)).*cos(t(2,:)).*cos(t(4,:)).*sin(t(3,:)).*sin(t(5,:)).*sin(t(6,:))+cos(t(1,:)).*cos(t(2,:)).*cos(t(5,:)).*sin(t(3,:)).*sin(t(4,:)).*sin(t(6,:)) cos(t(3,:)).*cos(t(6,:)).*sin(t(1,:))-cos(t(1,:)).*cos(t(6,:)).*sin(t(2,:)).*sin(t(3,:))+cos(t(4,:)).*sin(t(1,:)).*sin(t(3,:)).*sin(t(5,:)).*sin(t(6,:))+cos(t(5,:)).*sin(t(1,:)).*sin(t(3,:)).*sin(t(4,:)).*sin(t(6,:))+cos(t(1,:)).*cos(t(3,:)).*cos(t(4,:)).*sin(t(2,:)).*sin(t(5,:)).*sin(t(6,:))+cos(t(1,:)).*cos(t(3,:)).*cos(t(5,:)).*sin(t(2,:)).*sin(t(4,:)).*sin(t(6,:)) cos(t(3,:)).*sin(t(1,:)).*sin(t(4,:)).*sin(t(5,:)).*sin(t(6,:))-cos(t(1,:)).*cos(t(2,:)).*cos(t(5,:)).*sin(t(4,:)).*sin(t(6,:))-cos(t(3,:)).*cos(t(4,:)).*cos(t(5,:)).*sin(t(1,:)).*sin(t(6,:))-cos(t(1,:)).*cos(t(2,:)).*cos(t(4,:)).*sin(t(5,:)).*sin(t(6,:))+cos(t(1,:)).*cos(t(4,:)).*cos(t(5,:)).*sin(t(2,:)).*sin(t(3,:)).*sin(t(6,:))-cos(t(1,:)).*sin(t(2,:)).*sin(t(3,:)).*sin(t(4,:)).*sin(t(5,:)).*sin(t(6,:)) cos(t(3,:)).*sin(t(1,:)).*sin(t(4,:)).*sin(t(5,:)).*sin(t(6,:))-cos(t(1,:)).*cos(t(2,:)).*cos(t(5,:)).*sin(t(4,:)).*sin(t(6,:))-cos(t(3,:)).*cos(t(4,:)).*cos(t(5,:)).*sin(t(1,:)).*sin(t(6,:))-cos(t(1,:)).*cos(t(2,:)).*cos(t(4,:)).*sin(t(5,:)).*sin(t(6,:))+cos(t(1,:)).*cos(t(4,:)).*cos(t(5,:)).*sin(t(2,:)).*sin(t(3,:)).*sin(t(6,:))-cos(t(1,:)).*sin(t(2,:)).*sin(t(3,:)).*sin(t(4,:)).*sin(t(5,:)).*sin(t(6,:)) cos(t(1,:)).*cos(t(2,:)).*cos(t(4,:)).*cos(t(5,:)).*cos(t(6,:))-cos(t(1,:)).*cos(t(3,:)).*sin(t(2,:)).*sin(t(6,:))-sin(t(1,:)).*sin(t(3,:)).*sin(t(6,:))-cos(t(1,:)).*cos(t(2,:)).*cos(t(6,:)).*sin(t(4,:)).*sin(t(5,:))-cos(t(3,:)).*cos(t(4,:)).*cos(t(6,:)).*sin(t(1,:)).*sin(t(5,:))-cos(t(3,:)).*cos(t(5,:)).*cos(t(6,:)).*sin(t(1,:)).*sin(t(4,:))+cos(t(1,:)).*cos(t(4,:)).*cos(t(6,:)).*sin(t(2,:)).*sin(t(3,:)).*sin(t(5,:))+cos(t(1,:)).*cos(t(5,:)).*cos(t(6,:)).*sin(t(2,:)).*sin(t(3,:)).*sin(t(4,:)) (9.*cos(t(3,:)).*sin(t(1,:)).*sin(t(4,:)))/40-(9.*cos(t(1,:)).*cos(t(2,:)))/40+(3.*sin(t(1,:)).*sin(t(3,:)).*sin(t(6,:)))/20-(9.*cos(t(1,:)).*cos(t(2,:)).*cos(t(4,:)))/40+(3.*cos(t(1,:)).*cos(t(3,:)).*sin(t(2,:)).*sin(t(6,:)))/20-(9.*cos(t(1,:)).*sin(t(2,:)).*sin(t(3,:)).*sin(t(4,:)))/40-(3.*cos(t(1,:)).*cos(t(2,:)).*cos(t(4,:)).*cos(t(5,:)).*cos(t(6,:)))/20+(3.*cos(t(1,:)).*cos(t(2,:)).*cos(t(6,:)).*sin(t(4,:)).*sin(t(5,:)))/20+(3.*cos(t(3,:)).*cos(t(4,:)).*cos(t(6,:)).*sin(t(1,:)).*sin(t(5,:)))/20+(3.*cos(t(3,:)).*cos(t(5,:)).*cos(t(6,:)).*sin(t(1,:)).*sin(t(4,:)))/20-(3.*cos(t(1,:)).*cos(t(4,:)).*cos(t(6,:)).*sin(t(2,:)).*sin(t(3,:)).*sin(t(5,:)))/20-(3.*cos(t(1,:)).*cos(t(5,:)).*cos(t(6,:)).*sin(t(2,:)).*sin(t(3,:)).*sin(t(4,:)))/20 (9.*sin(t(1,:)).*sin(t(2,:)))/40+(9.*cos(t(4,:)).*sin(t(1,:)).*sin(t(2,:)))/40+(3.*cos(t(2,:)).*cos(t(3,:)).*sin(t(1,:)).*sin(t(6,:)))/20-(9.*cos(t(2,:)).*sin(t(1,:)).*sin(t(3,:)).*sin(t(4,:)))/40+(3.*cos(t(4,:)).*cos(t(5,:)).*cos(t(6,:)).*sin(t(1,:)).*sin(t(2,:)))/20-(3.*cos(t(6,:)).*sin(t(1,:)).*sin(t(2,:)).*sin(t(4,:)).*sin(t(5,:)))/20-(3.*cos(t(2,:)).*cos(t(4,:)).*cos(t(6,:)).*sin(t(1,:)).*sin(t(3,:)).*sin(t(5,:)))/20-(3.*cos(t(2,:)).*cos(t(5,:)).*cos(t(6,:)).*sin(t(1,:)).*sin(t(3,:)).*sin(t(4,:)))/20 (9.*cos(t(1,:)).*sin(t(3,:)).*sin(t(4,:)))/40-(3.*cos(t(1,:)).*cos(t(3,:)).*sin(t(6,:)))/20-(9.*cos(t(3,:)).*sin(t(1,:)).*sin(t(2,:)).*sin(t(4,:)))/40-(3.*sin(t(1,:)).*sin(t(2,:)).*sin(t(3,:)).*sin(t(6,:)))/20+(3.*cos(t(1,:)).*cos(t(4,:)).*cos(t(6,:)).*sin(t(3,:)).*sin(t(5,:)))/20+(3.*cos(t(1,:)).*cos(t(5,:)).*cos(t(6,:)).*sin(t(3,:)).*sin(t(4,:)))/20-(3.*cos(t(3,:)).*cos(t(4,:)).*cos(t(6,:)).*sin(t(1,:)).*sin(t(2,:)).*sin(t(5,:)))/20-(3.*cos(t(3,:)).*cos(t(5,:)).*cos(t(6,:)).*sin(t(1,:)).*sin(t(2,:)).*sin(t(4,:)))/20 (9.*cos(t(2,:)).*sin(t(1,:)).*sin(t(4,:)))/40-(9.*cos(t(1,:)).*cos(t(3,:)).*cos(t(4,:)))/40-(9.*cos(t(4,:)).*sin(t(1,:)).*sin(t(2,:)).*sin(t(3,:)))/40-(3.*cos(t(1,:)).*cos(t(3,:)).*cos(t(4,:)).*cos(t(5,:)).*cos(t(6,:)))/20+(3.*cos(t(2,:)).*cos(t(4,:)).*cos(t(6,:)).*sin(t(1,:)).*sin(t(5,:)))/20+(3.*cos(t(2,:)).*cos(t(5,:)).*cos(t(6,:)).*sin(t(1,:)).*sin(t(4,:)))/20+(3.*cos(t(1,:)).*cos(t(3,:)).*cos(t(6,:)).*sin(t(4,:)).*sin(t(5,:)))/20-(3.*cos(t(4,:)).*cos(t(5,:)).*cos(t(6,:)).*sin(t(1,:)).*sin(t(2,:)).*sin(t(3,:)))/20+(3.*cos(t(6,:)).*sin(t(1,:)).*sin(t(2,:)).*sin(t(3,:)).*sin(t(4,:)).*sin(t(5,:)))/20 (3.*cos(t(2,:)).*cos(t(4,:)).*cos(t(6,:)).*sin(t(1,:)).*sin(t(5,:)))/20-(3.*cos(t(1,:)).*cos(t(3,:)).*cos(t(4,:)).*cos(t(5,:)).*cos(t(6,:)))/20+(3.*cos(t(2,:)).*cos(t(5,:)).*cos(t(6,:)).*sin(t(1,:)).*sin(t(4,:)))/20+(3.*cos(t(1,:)).*cos(t(3,:)).*cos(t(6,:)).*sin(t(4,:)).*sin(t(5,:)))/20-(3.*cos(t(4,:)).*cos(t(5,:)).*cos(t(6,:)).*sin(t(1,:)).*sin(t(2,:)).*sin(t(3,:)))/20+(3.*cos(t(6,:)).*sin(t(1,:)).*sin(t(2,:)).*sin(t(3,:)).*sin(t(4,:)).*sin(t(5,:)))/20 (3.*cos(t(3,:)).*cos(t(6,:)).*sin(t(1,:)).*sin(t(2,:)))/20-(3.*cos(t(1,:)).*cos(t(6,:)).*sin(t(3,:)))/20+(3.*cos(t(2,:)).*cos(t(4,:)).*cos(t(5,:)).*sin(t(1,:)).*sin(t(6,:)))/20+(3.*cos(t(1,:)).*cos(t(3,:)).*cos(t(4,:)).*sin(t(5,:)).*sin(t(6,:)))/20+(3.*cos(t(1,:)).*cos(t(3,:)).*cos(t(5,:)).*sin(t(4,:)).*sin(t(6,:)))/20-(3.*cos(t(2,:)).*sin(t(1,:)).*sin(t(4,:)).*sin(t(5,:)).*sin(t(6,:)))/20+(3.*cos(t(4,:)).*sin(t(1,:)).*sin(t(2,:)).*sin(t(3,:)).*sin(t(5,:)).*sin(t(6,:)))/20+(3.*cos(t(5,:)).*sin(t(1,:)).*sin(t(2,:)).*sin(t(3,:)).*sin(t(4,:)).*sin(t(6,:)))/20 zeros(1, 351) (9.*cos(t(2,:)))/40+(9.*cos(t(2,:)).*cos(t(4,:)))/40-(3.*cos(t(3,:)).*sin(t(2,:)).*sin(t(6,:)))/20+(9.*sin(t(2,:)).*sin(t(3,:)).*sin(t(4,:)))/40+(3.*cos(t(2,:)).*cos(t(4,:)).*cos(t(5,:)).*cos(t(6,:)))/20-(3.*cos(t(2,:)).*cos(t(6,:)).*sin(t(4,:)).*sin(t(5,:)))/20+(3.*cos(t(4,:)).*cos(t(6,:)).*sin(t(2,:)).*sin(t(3,:)).*sin(t(5,:)))/20+(3.*cos(t(5,:)).*cos(t(6,:)).*sin(t(2,:)).*sin(t(3,:)).*sin(t(4,:)))/20 -(3.*cos(t(2,:)).*sin(t(3,:)).*sin(t(6,:)))/20-(9.*cos(t(2,:)).*cos(t(3,:)).*sin(t(4,:)))/40-(3.*cos(t(2,:)).*cos(t(3,:)).*cos(t(4,:)).*cos(t(6,:)).*sin(t(5,:)))/20-(3.*cos(t(2,:)).*cos(t(3,:)).*cos(t(5,:)).*cos(t(6,:)).*sin(t(4,:)))/20 (3.*cos(t(2,:)).*cos(t(6,:)).*sin(t(3,:)).*sin(t(4,:)).*sin(t(5,:)))/20-(9.*cos(t(2,:)).*cos(t(4,:)).*sin(t(3,:)))/40-(3.*cos(t(4,:)).*cos(t(6,:)).*sin(t(2,:)).*sin(t(5,:)))/20-(3.*cos(t(5,:)).*cos(t(6,:)).*sin(t(2,:)).*sin(t(4,:)))/20-(3.*cos(t(2,:)).*cos(t(4,:)).*cos(t(5,:)).*cos(t(6,:)).*sin(t(3,:)))/20-(9.*sin(t(2,:)).*sin(t(4,:)))/40 (3.*cos(t(2,:)).*cos(t(6,:)).*sin(t(3,:)).*sin(t(4,:)).*sin(t(5,:)))/20-(3.*cos(t(5,:)).*cos(t(6,:)).*sin(t(2,:)).*sin(t(4,:)))/20-(3.*cos(t(2,:)).*cos(t(4,:)).*cos(t(5,:)).*cos(t(6,:)).*sin(t(3,:)))/20-(3.*cos(t(4,:)).*cos(t(6,:)).*sin(t(2,:)).*sin(t(5,:)))/20 (3.*cos(t(2,:)).*cos(t(3,:)).*cos(t(6,:)))/20-(3.*cos(t(4,:)).*cos(t(5,:)).*sin(t(2,:)).*sin(t(6,:)))/20+(3.*sin(t(2,:)).*sin(t(4,:)).*sin(t(5,:)).*sin(t(6,:)))/20+(3.*cos(t(2,:)).*cos(t(4,:)).*sin(t(3,:)).*sin(t(5,:)).*sin(t(6,:)))/20+(3.*cos(t(2,:)).*cos(t(5,:)).*sin(t(3,:)).*sin(t(4,:)).*sin(t(6,:)))/20 (9.*cos(t(2,:)).*sin(t(1,:)))/40+(3.*cos(t(1,:)).*sin(t(3,:)).*sin(t(6,:)))/20+(9.*cos(t(2,:)).*cos(t(4,:)).*sin(t(1,:)))/40+(9.*cos(t(1,:)).*cos(t(3,:)).*sin(t(4,:)))/40-(3.*cos(t(3,:)).*sin(t(1,:)).*sin(t(2,:)).*sin(t(6,:)))/20+(9.*sin(t(1,:)).*sin(t(2,:)).*sin(t(3,:)).*sin(t(4,:)))/40+(3.*cos(t(2,:)).*cos(t(4,:)).*cos(t(5,:)).*cos(t(6,:)).*sin(t(1,:)))/20+(3.*cos(t(1,:)).*cos(t(3,:)).*cos(t(4,:)).*cos(t(6,:)).*sin(t(5,:)))/20+(3.*cos(t(1,:)).*cos(t(3,:)).*cos(t(5,:)).*cos(t(6,:)).*sin(t(4,:)))/20-(3.*cos(t(2,:)).*cos(t(6,:)).*sin(t(1,:)).*sin(t(4,:)).*sin(t(5,:)))/20+(3.*cos(t(4,:)).*cos(t(6,:)).*sin(t(1,:)).*sin(t(2,:)).*sin(t(3,:)).*sin(t(5,:)))/20+(3.*cos(t(5,:)).*cos(t(6,:)).*sin(t(1,:)).*sin(t(2,:)).*sin(t(3,:)).*sin(t(4,:)))/20 (9.*cos(t(1,:)).*sin(t(2,:)))/40+(9.*cos(t(1,:)).*cos(t(4,:)).*sin(t(2,:)))/40+(3.*cos(t(1,:)).*cos(t(2,:)).*cos(t(3,:)).*sin(t(6,:)))/20-(9.*cos(t(1,:)).*cos(t(2,:)).*sin(t(3,:)).*sin(t(4,:)))/40+(3.*cos(t(1,:)).*cos(t(4,:)).*cos(t(5,:)).*cos(t(6,:)).*sin(t(2,:)))/20-(3.*cos(t(1,:)).*cos(t(6,:)).*sin(t(2,:)).*sin(t(4,:)).*sin(t(5,:)))/20-(3.*cos(t(1,:)).*cos(t(2,:)).*cos(t(4,:)).*cos(t(6,:)).*sin(t(3,:)).*sin(t(5,:)))/20-(3.*cos(t(1,:)).*cos(t(2,:)).*cos(t(5,:)).*cos(t(6,:)).*sin(t(3,:)).*sin(t(4,:)))/20 (3.*cos(t(3,:)).*sin(t(1,:)).*sin(t(6,:)))/20-(9.*sin(t(1,:)).*sin(t(3,:)).*sin(t(4,:)))/40-(9.*cos(t(1,:)).*cos(t(3,:)).*sin(t(2,:)).*sin(t(4,:)))/40-(3.*cos(t(1,:)).*sin(t(2,:)).*sin(t(3,:)).*sin(t(6,:)))/20-(3.*cos(t(4,:)).*cos(t(6,:)).*sin(t(1,:)).*sin(t(3,:)).*sin(t(5,:)))/20-(3.*cos(t(5,:)).*cos(t(6,:)).*sin(t(1,:)).*sin(t(3,:)).*sin(t(4,:)))/20-(3.*cos(t(1,:)).*cos(t(3,:)).*cos(t(4,:)).*cos(t(6,:)).*sin(t(2,:)).*sin(t(5,:)))/20-(3.*cos(t(1,:)).*cos(t(3,:)).*cos(t(5,:)).*cos(t(6,:)).*sin(t(2,:)).*sin(t(4,:)))/20 (9.*cos(t(1,:)).*cos(t(2,:)).*sin(t(4,:)))/40+(9.*cos(t(3,:)).*cos(t(4,:)).*sin(t(1,:)))/40-(9.*cos(t(1,:)).*cos(t(4,:)).*sin(t(2,:)).*sin(t(3,:)))/40+(3.*cos(t(1,:)).*cos(t(2,:)).*cos(t(4,:)).*cos(t(6,:)).*sin(t(5,:)))/20+(3.*cos(t(1,:)).*cos(t(2,:)).*cos(t(5,:)).*cos(t(6,:)).*sin(t(4,:)))/20+(3.*cos(t(3,:)).*cos(t(4,:)).*cos(t(5,:)).*cos(t(6,:)).*sin(t(1,:)))/20-(3.*cos(t(3,:)).*cos(t(6,:)).*sin(t(1,:)).*sin(t(4,:)).*sin(t(5,:)))/20-(3.*cos(t(1,:)).*cos(t(4,:)).*cos(t(5,:)).*cos(t(6,:)).*sin(t(2,:)).*sin(t(3,:)))/20+(3.*cos(t(1,:)).*cos(t(6,:)).*sin(t(2,:)).*sin(t(3,:)).*sin(t(4,:)).*sin(t(5,:)))/20 (3.*cos(t(1,:)).*cos(t(2,:)).*cos(t(4,:)).*cos(t(6,:)).*sin(t(5,:)))/20+(3.*cos(t(1,:)).*cos(t(2,:)).*cos(t(5,:)).*cos(t(6,:)).*sin(t(4,:)))/20+(3.*cos(t(3,:)).*cos(t(4,:)).*cos(t(5,:)).*cos(t(6,:)).*sin(t(1,:)))/20-(3.*cos(t(3,:)).*cos(t(6,:)).*sin(t(1,:)).*sin(t(4,:)).*sin(t(5,:)))/20-(3.*cos(t(1,:)).*cos(t(4,:)).*cos(t(5,:)).*cos(t(6,:)).*sin(t(2,:)).*sin(t(3,:)))/20+(3.*cos(t(1,:)).*cos(t(6,:)).*sin(t(2,:)).*sin(t(3,:)).*sin(t(4,:)).*sin(t(5,:)))/20 (3.*cos(t(6,:)).*sin(t(1,:)).*sin(t(3,:)))/20+(3.*cos(t(1,:)).*cos(t(3,:)).*cos(t(6,:)).*sin(t(2,:)))/20+(3.*cos(t(1,:)).*cos(t(2,:)).*cos(t(4,:)).*cos(t(5,:)).*sin(t(6,:)))/20-(3.*cos(t(1,:)).*cos(t(2,:)).*sin(t(4,:)).*sin(t(5,:)).*sin(t(6,:)))/20-(3.*cos(t(3,:)).*cos(t(4,:)).*sin(t(1,:)).*sin(t(5,:)).*sin(t(6,:)))/20-(3.*cos(t(3,:)).*cos(t(5,:)).*sin(t(1,:)).*sin(t(4,:)).*sin(t(6,:)))/20+(3.*cos(t(1,:)).*cos(t(4,:)).*sin(t(2,:)).*sin(t(3,:)).*sin(t(5,:)).*sin(t(6,:)))/20+(3.*cos(t(1,:)).*cos(t(5,:)).*sin(t(2,:)).*sin(t(3,:)).*sin(t(4,:)).*sin(t(6,:)))/20], [351, 6, 6]), [3, 2, 1]);
        for i = 1:351
            X(:,i) = t(:,i)-J(:,:,i)\F(:,i);
        end
        if (abs(X-t)<0.001)
            return
        end
    end