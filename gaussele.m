a=[0 -1 2 4;
-2 2 -1 -1;
-2 4 3 15];
n=3;
a_new=gauss(n,a);
function [a]=gauss(n,a)
    for i=1:n-1
        i_max=i; %맨 앞열의 계수가 가장 큰 행을 찾는 과정
        for j=i+1:n
            if( abs(a(i_max,i)) < abs( a(j,i)) )
                i_max=j;
            end
        end
        if i_max~= i  %맨 앞열의 계수가 가장 큰 행을 맨 위로 올림
            for j_temp=1:n+1
                mat_temp=a(i,j_temp);
                a(i,j_temp)=a(i_max,j_temp);
                a(i_max,j_temp)=mat_temp;
            end
        end
        for i_t=i+1:n
            if a(i,i)==0 %올려진 맨앞열의 계수가 0 이면 싱귤러 상황,
                fprintf('matrix is singular\n');
                break;
            end
            r=a(i_t,i)/a(i,i);  %소거해줌
            for j_t=i:n+1
                a(i_t,j_t)=a(i_t,j_t)-r*a(i,j_t);
            end
        end
    end% 다음 행으로 넘어가서 반복
    %사다리꼴의 완성
    %후처리
    if (a(n,n)==0) %해가 무수히 많거나 없다.
        fprintf('matrix is singular\n');
    end
    a(n,n+1)= a(n,n+1)/a(n,n); %맨 끝의 답 먼저 계산
    for n_back=n-1:-1:1 %나머지 답 계산
        va=a(n_back,n+1);
        for k=n_back+1:n
            va=va-a(n_back,k)*a(k,n+1);%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%해를 구함
        end
        a(n_back,n+1)=va/a(n_back,n_back);%과정2
    end
end