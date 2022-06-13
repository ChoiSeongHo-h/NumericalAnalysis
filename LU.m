a=[-2 1 0 2;
1 0 1 3;
0 -1 2 1];
b=[1 0 0;
0 1 0;
0 0 1];
y = [0;
    0;
    0];
n=3;
a_new=gauss(n,a, b);

function [a]=gauss(n,a, b)
    for i=1:n-1 %LU만들기
        for i_t=i+1:n
            if a(i,i)==0 %계산힘듦
                fprintf('matrix is singular\n');
                break;
            end
            r=a(i_t,i)/a(i,i); %소거해줌
            b(i_t, i) = r; %L
            for j_t=i:n %U
                a(i_t,j_t)=a(i_t,j_t)-r*a(i,j_t);
            end
        end
    end % 다음 행으로 넘어가서 반복
    %LU완성
    
	y(1, 1) = a(1, n+1); %y구하기(L소거)
    for x=2:1:n %y 나머지 답 계산
        y(x, 1) = a(x, n+1);
        for k=1:x-1
            y(x, 1)=y(x, 1)-y(k, 1)*b(x, k);
        end
    end     %y구했음

    %힘든 상황
    if (a(n,n)==0)
        fprintf('matrix is singular\n');
    end

    %C밑작업
    for(k = 1:n)
        a(k,n+1) = y(k, 1);
    end
    
    %x구하기(U소거)
    a(n,n+1)= a(n,n+1)/a(n,n); % 처음 하나
    %나머지 답 계산
    for n_back=n-1:-1:1
        va=a(n_back,n+1);
        for k=n_back+1:n
            va=va-a(n_back,k)*a(k,n+1); %해 구하기
        end
        a(n_back,n+1)=va/a(n_back,n_back); %마무리
    end
end