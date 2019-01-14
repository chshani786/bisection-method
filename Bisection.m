clear;
clc;
tol = 10^-5;
a=2
b=3
fa=a^3-(4*a)-5
fb=b^3-(4*b)-5
if fa*fb<0
for n = 1:1000
    p(n)=(a+b)/2
    fp(n)=p(n)^3 -(4*p(n))-5;
   if abs (fp(n))<tol
        solution = p(n)
        iteration =n
        break
    else
        fa=a^3-(4*a)-5
        if fa*fp(n)<0
            b=p(n);
        else
            a=p(n)
    end
    end
end
    
        fprintf  ('solution does not lie in given interval\n')
       
end
