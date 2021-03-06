function makeplots

x=1:1:100;
y=sin(2*x);
z=cos(2*x);

figure(1);
hold on
plot(x,y,'b-',x,z,'ro')
title('someplots')
xlabel('x')
ylabel('variable')
legend('y','z')

myStyle = hgexport('factorystyle');
myStyle.Resolution=480;
myStyle.Format='png';

outfile='c:/users/davidchristopherson/documents/matlab/~testing/Results/plotsout.png';
hgexport(gcf,outfile,myStyle)