
cfc();
close all;
clear all;

function s=sum1(a,n)
  s=0;
  for i=1:n
    s=s+a(i);
  endfor
end

function avg = average(a,n)
    avg = sum1(a,n)/n;
end

function max=maxx(a,n)
  max=a(1);
  for i=2:n
    if a(i) > max
      max=a(i);
    endif
  endfor
end

function sd1=standard_deviation(a,n)
    s=0;
    for i=1:n
        s=s+(a(i)-average(a,n))^2;
    endfor
    s=s/n;
    sd1 = sqrt(s);
end

n= input("\nEnter size of your list: ");
fprintf("\nEnter %d elements one by one--->\n",n);
for i=1:n
  fprintf("a[%d]=",i);
  a(i)=input('');
endfor
s=sum1(a,n);
avg=average(a,n);
max=maxx(a,n);
sd1 = standard_deviation(a,n);
fprintf("\nSum= %d, Average=%f, Largest value= %d, Standard Deviation=%f\n",s,avg,max,sd1);