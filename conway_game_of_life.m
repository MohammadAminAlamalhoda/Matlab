% published by MohammadAmin Alamalhoda (2019)
% feel free to use it anywhere !

clc;
clear;
close all;
n=input('please Enter size  of square matrix for simulation ( for example 500) : ');
time=input('please Enter delay time between two generations ( for example 0.1) : ');
Conway_Game_of_Life(n,time);

function Conway_Game_of_Life(n,time)

matrix=randi([0,1],n);
matrix_temp=zeros(n);
while(1)
    
for i=1:n
    for j=1:n
    alive_count=0;
    
        if(i==1 && j==1)
        if(matrix(i,j+1))
          alive_count=alive_count+1; 
        end
        if(matrix(i+1,j))
          alive_count=alive_count+1; 
        end
        if(matrix(i+1,j+1))
          alive_count=alive_count+1; 
        end
        matrix_temp(i,j)=alive_count;
        continue
        end
        
        
        if(i==1 && j==n)
         if(matrix(i,j-1))
          alive_count=alive_count+1; 
        end
        if(matrix(i+1,j))
          alive_count=alive_count+1; 
        end
        if(matrix(i+1,j-1))
          alive_count=alive_count+1; 
        end
        matrix_temp(i,j)=alive_count;
        continue
        end
        
        if(i==n && j==1)
         if(matrix(i,j+1))
          alive_count=alive_count+1; 
        end
        if(matrix(i-1,j))
          alive_count=alive_count+1; 
        end
        if(matrix(i-1,j+1))
          alive_count=alive_count+1; 
        end 
        matrix_temp(i,j)=alive_count;
        continue
        end
        
        if(i==n && j==n)
         if(matrix(i,j-1))
          alive_count=alive_count+1; 
        end
        if(matrix(i-1,j))
          alive_count=alive_count+1; 
        end
        if(matrix(i-1,j-1))
          alive_count=alive_count+1; 
        end 
        matrix_temp(i,j)=alive_count;
        continue
        end
        
        
        
        if(i==1)
        if(matrix(i,j-1))
          alive_count=alive_count+1; 
        end
        if(matrix(i,j+1))
          alive_count=alive_count+1; 
        end
        if(matrix(i+1,j-1))
          alive_count=alive_count+1; 
        end
        if(matrix(i+1,j))
          alive_count=alive_count+1; 
        end
        if(matrix(i+1,j+1))
          alive_count=alive_count+1; 
        end
        matrix_temp(i,j)=alive_count;
        continue   
        end
        
        
        if(i==n)
        if(matrix(i-1,j-1))
          alive_count=alive_count+1; 
        end
        if(matrix(i-1,j))
          alive_count=alive_count+1; 
        end
        if(matrix(i-1,j+1))
          alive_count=alive_count+1; 
        end
        if(matrix(i,j-1))
          alive_count=alive_count+1; 
        end
        if(matrix(i,j+1))
          alive_count=alive_count+1; 
        end
        matrix_temp(i,j)=alive_count;
        continue    
        end
        
        
        if(j==1)
        if(matrix(i-1,j))
          alive_count=alive_count+1; 
        end
        if(matrix(i-1,j+1))
          alive_count=alive_count+1; 
        end
        if(matrix(i,j+1))
          alive_count=alive_count+1; 
        end
        if(matrix(i+1,j))
          alive_count=alive_count+1; 
        end
        if(matrix(i+1,j+1))
          alive_count=alive_count+1; 
        end
        matrix_temp(i,j)=alive_count;
        continue
        end
        
        
        if(j==n)
        if(matrix(i-1,j-1))
          alive_count=alive_count+1; 
        end
        if(matrix(i-1,j))
          alive_count=alive_count+1; 
        end
        if(matrix(i,j-1))
          alive_count=alive_count+1; 
        end
        if(matrix(i+1,j-1))
          alive_count=alive_count+1; 
        end
        if(matrix(i+1,j))
          alive_count=alive_count+1; 
        end
        matrix_temp(i,j)=alive_count;
        continue
        end
        
        if(matrix(i-1,j-1))
          alive_count=alive_count+1; 
        end
        if(matrix(i-1,j))
          alive_count=alive_count+1; 
        end
        if(matrix(i-1,j+1))
          alive_count=alive_count+1; 
        end
        if(matrix(i,j-1))
          alive_count=alive_count+1; 
        end
        if(matrix(i,j+1))
          alive_count=alive_count+1; 
        end
        if(matrix(i+1,j-1))
          alive_count=alive_count+1; 
        end
        if(matrix(i+1,j))
          alive_count=alive_count+1; 
        end
        if(matrix(i+1,j+1))
          alive_count=alive_count+1; 
        end
        matrix_temp(i,j)=alive_count;
    end
end

for i=1:n
    for j=1:n
        if(matrix_temp(i,j)<2)
           matrix(i,j)=0;
        end
        if(matrix_temp(i,j)>3)
           matrix(i,j)=0;
        end
        if(matrix_temp(i,j)==3)
           matrix(i,j)=1;
        end
    end
end
 imagesc(matrix);
colormap(gray);
pause(time);
end

end