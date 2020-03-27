%Lab 5
%%Asignment_2
% NAME : Omar Ashraf Mohammed
%ID : 58612

clear;
clc;


y_0 = 0 ;        %y(0)
y_1 = 0 ;        %y(-1)
y_2 = 0 ;        %y(-2)
u_0 = 1 ;        %u(0)
u_1 = 0 ;        %u(-1)
u_2 = 0 ;        %u(-2) 


dt = 1;                
tf = 100;              
t = 0 : dt : tf;       



y =  ones([1 length(t)]); 
u =  ones([1 length(t)]);


for i = 1 : length(t)
    
    if (i == 1)
         
        y(i) = 1/3 * ( 2 * u_0 - 3 * u_1 - 2 *  y_1 +  y_2 ) ;
        
    elseif (i == 2)
        
        y(i) = 1/3 * (2 * u(i-1) - 3 * u_0 - 2 * y(i-1) + y_0  ) ;
        
    else 
        
        y(i) = 1/3 * (2 *  u(i-1) - 3 * u(i-2) - 2 * y(i-1) + y(i-2)  ) ;
        
    end
     
end



stem(t,y,'linewidth',2,'color','b','LineStyle','-','MarkerFaceColor','red','MarkerEdgeColor','green');





