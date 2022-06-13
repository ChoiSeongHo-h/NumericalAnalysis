clc
clear
n=3;
a=[4 3 0;
3 4 -1;
0 -1 4];
b=[10, 8, 10]';
x=zeros(3,1); %초기값 0
tol=0.01;
fprintf('Gass Seidal method\n\n');
iter=0;

while(1)
    iter=iter+1;
    fprintf(' %2d ', iter-1);
    for i=1:n
        fprintf(' %10.4f ', x(i,1));
    end
    fprintf('\n');
    
    x_prev=x; % 임계값 비교를 위한 저장
    for i=1:n % 모든 행에 대해
        temp=0;
        for j=1:n % 모든 열에 대해
            if i~=j % 대각 성분이 아닌
                temp=temp+a(i,j)*x(j,1); %수식1, 1행씩 업데이트됨
                % 1 row, a12*x2+a13*x3
                % 2 row, a21*x1+a23*x3, x1 is updated one from upper line
                % 3 row, a31*x1+a32*x2, x1,x2 are updated ones from upper line
            end
        end
        x(i,1)=(-temp+b(i,1))/(a(i,i)); %수식2
        % 1 row, (-a12*x2-a13*x3+b1)/a11
        % 2 row, (-a21*x1-a23*x3+b2)/a22, x1 is updated one from upper line
        % 3 row, (-a31*x1-a32*x2+b3)/a33, x1,x2 are updated ones from upper line
    end
    if abs(x-x_prev) < tol %임계값 검사
        break
    end
end

for i=1:n
    fprintf(' %10.4f ', x(i,1));
end
fprintf('\n');