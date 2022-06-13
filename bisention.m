x_l=1;
x_u=2;
tol=0.001;
y_x_l=fun(x_l);
y_x_u=fun(x_u);

if( y_x_l*y_x_u > 0 ) % f(a) 와 f(b) 의 부호가 반대인지 검사
    return;
else
    while(1)
        x_r=(x_l+x_u)/2; % 절반
        y_x_r=fun(x_r);
        if( abs(x_r-x_l) < tol) % 좌랑 절반부 사이가 작나 검사
            break
        elseif (y_x_l*y_x_r<0) % 좌랑 절반부 부호 다름?
            x_u=x_r; %좌, 절반부
            y_x_u=y_x_r;
        else
            x_l=x_r; %절반부, 우
            y_x_l=y_x_r;
        end
    end
end

function [y] = fun(x)
    y=x^3 -x^2-x-1;
end