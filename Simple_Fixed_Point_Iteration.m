clc;
clear;

fprintf('Simple Fixed-Point Iteration\n');
init = 0;
tol = 0.001;
max_iter = 100;

ex_x_r = init;
x_r = fun_csh_2(ex_x_r);

if(abs(fun_csh_2_diff(x_r))>1) % 절댓값<=1
    fprintf(1,'g diff >1');
    return;
else
    iter = 1;
    fprintf(1, 'iter x_i+1   x_i     x_err\n');
    fprintf(1, '--------------------------------------------------------------------------\n');
    fprintf(1, '%d %f %f %f\n', iter, x_r, ex_x_r, abs(x_r-ex_x_r));
end

while(max_iter>iter || abs(x_r-ex_x_r)>=tol) % dx가 작은지 검사
    if(abs(fun_csh_2_diff(x_r))>1)
        fprintf(1,'g diff >1');
        return;
    else
        x_r_temp = x_r;
        x_r = fun_csh_2(x_r); % x_i+1 = g(x_i)
        ex_x_r = x_r_temp;
        
        iter = iter + 1;
        fprintf(1, '%d %f %f %f\n', iter, x_r, ex_x_r, abs(x_r-ex_x_r));
    end
end

fprintf(1,'\nTolerence is satisfied\n');
fprintf(1,'Approximate solution x_r= %.7f \n', x_r);









function [y] = fun_csh_2(x)
y = exp(-x);
end

function [y] = fun_csh_2_diff(x)
y = -exp(-x);
end