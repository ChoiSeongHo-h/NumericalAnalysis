clc;
clear;

fprintf('Newton-Raphson method\n');

init = 1.5;
max_iter = 100;
tol_x = 0.001;
tol_y = 0.00001;

iter = 1;

ex_x_r = init;
x_r = ex_x_r-fun_csh_3(ex_x_r)/fun_csh_3_diff(ex_x_r); % x_i에서 접선, x_i+1 = 절편
y_r = fun_csh_3(x_r);

fprintf(1, 'iter x_r     x_err       y_r\n');
fprintf(1, '--------------------------------------------------------------------------\n');
fprintf(1, '%d %f %f %f\n', iter, x_r, abs(ex_x_r-x_r), y_r);

while(max_iter>=iter || abs(x_r-ex_x_r)>=tol_x && abs(tol_y-y_r) >= tol_y) % dx가 작거나, y가 작은지 검사
    x_r_temp = x_r;
    x_r = x_r-fun_csh_3(x_r)/fun_csh_3_diff(x_r); %x_i에서 접선, x_i+1 = 절편
    ex_x_r = x_r_temp;
    y_r = fun_csh_3(x_r);

    iter = iter + 1;
    fprintf(1, '%d %f %f %f\n', iter, x_r, abs(ex_x_r-x_r), y_r);
end

fprintf(1,'\nTolerence is satisfied\n');
fprintf(1,'Approximate solution x_r= %.7f \n', x_r);


function [y] = fun_csh_3(x)
y = x^3-x^2-x-1;
end

function [y] = fun_csh_3_diff(x)
y = 3*x^2-2*x-1;
end