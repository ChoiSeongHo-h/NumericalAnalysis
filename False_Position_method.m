x_l = 1;
x_u = 2;
tol_x = 0.001;
tol_y = 0.00001;
y_l = fun(x_l);
y_u = fun(x_u);
if(y_l*y_u>0) % 구간사이 해가있나 검사
    fprintf(1,'Since ya*yb is positive, no root exist\n');
else
    x_r = 0;
    while(1)
        x_r = (x_l*y_u-x_u*y_l)/(y_u-y_l); % 절편(좌랑 우랑 직선을 그음)
        y_r = fun(x_r);
        if(y_l*y_r<0)   % 절편과 우의 부호가 같다면
            if(abs(x_r-x_u)<tol_x || abs(y_r)<tol_y) % 절편이랑 우 사이가 작나, y app 0 검사
                break
            else
                x_u = x_r; %좌, 절편
                y_u = y_r;
            end    
        else   % 좌와 절편의 부호가 같다면
            if(abs(x_l-x_r)<tol_x || abs(y_r)<tol_y) % 좌랑 절편 사이가 작나, y app 0 검사
                break
            else
                x_l = x_r; % 절편, 우
                y_l = y_r;
            end    
        end
    end
end

function [y] = fun(x)
    y = x^3-x^2-x-1;
end