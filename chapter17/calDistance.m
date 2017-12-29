%% ��������е����֮��ľ���  
function [ dis ] = calDistance( x )  
    [m,n] = size(x);  
    dis = zeros(m,m);  
      
    for i = 1:m  
        for j = i:m  
            %�����i�͵�j֮���ŷʽ����  
            tmp =0;  
            for k = 1:n  
                tmp = tmp+(x(i,k)-x(j,k)).^2;  
            end  
            dis(i,j) = sqrt(tmp);  
            dis(j,i) = dis(i,j);  
        end  
    end  
end  