x_l = 1;
x_u = 2;
tol_x = 0.001;
tol_y = 0.00001;

y_l = fun_csh_1(x_l);
y_u = fun_csh_1(x_u);

if(y_l*y_u>0) %구간사이 해가있나 검사
    fprintf(1,'Since ya*yb is positive, no root exist\n');
else
    x_r = 0;
    
    while(1)
        x_r = (x_l*y_u-x_u*y_l)/(y_u-y_l); % 좌랑 우랑 직선을 그음
        y_r = fun_csh_1(x_r);      
        if(y_l*y_r<0) % 절편과 우의 부호가 같다면
            while(y_l*y_r<0)
                if(abs(x_r-x_u)<tol_x || abs(y_r)<tol_y) % 절편이랑 우 사이가 작나, y app 0 검사(1)
                    return;
                else
                    x_u = x_r; % 좌, 절편
                    y_u = y_r;
                    x_r = (x_l*y_u-x_u*y_l/2)/(y_u-y_l/2); % 좌(1/2)랑 우랑 직선을 그음
                    y_r = fun_csh_1(x_r);
                end    
            end % 절편이랑 우가 같으면(1)
            x_l = x_r; % 아니면 처음, 절편, 우
            y_l = fun_csh_1(x_r);
        else % 좌와 절편의 부호가 같다면
           while(y_l*y_r>0)
                if(abs(x_l-x_r)<tol_x || abs(y_r)<tol_y) % 좌랑 절편 사이가 작나, y app 0 검사(2)
                    return;
                else
                    x_l = x_r; % 절편, 우
                    y_l = y_r;
                    x_r = (x_l*y_u/2-x_u*y_l)/(y_u/2-y_l); % 좌랑 우(1/2)랑 직선을 그음
                    y_r = fun_csh_1(x_r);
                    iter = iter + 1;
                end    
           end % 좌랑 절편이 같으면(2)
           x_u = x_r; % 아니면 처음, 좌, 절편
           y_u = fun_csh_1(x_r);
        end
    end
end

function [y] = fun_csh_1(x)
    y = x^3-x^2-x-1;
end