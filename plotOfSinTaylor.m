%set up the x to divide the interval (-2pi,2pi) into 2018 subsections.
x=linspace(-2*pi,2*pi,2018);


%set up the tayloy estimation when term = 1,2,10 respectively.
T1 = sinTaylorSeries(x, 1);
T2=sinTaylorSeries(x,2);
T10=sinTaylorSeries(x,10);

%plot the sinx and T1,T2,T10 and save them in .pdf
figure(1)
plot(x,sin(x),x,T1,x,T2,x,T10)
legend('sinx','T1', 'T2', 'T10')
xlabel('-2\pi < x < 2\pi') % x-axis label
ylabel('the value of sinx ,T1,T2,T10 individually') % y-axis label
title('Graph of sin(x) and its taylor approximation Between -2\pi and 2\pi')%title
saveas(gcf,' sinTaylorSeries.pdf')
%plot the forword error term and save it in .pdf
figure(2)
plot(x,abs(sin(x)-T10))
xlabel('-2\pi < x < 2\pi') % x-axis label
ylabel('the value of | sin(x)-T10|') % y-axis label
title('graph of |t10-sinx| Between -2\pi and 2\pi')%title
saveas(gcf,'sinTaylorSeriesError.pdf')