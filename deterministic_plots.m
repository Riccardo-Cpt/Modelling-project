function deterministic_plots()

%%%%%%%%%%%%%%%%%%%
%%%%%New Model%%%%%
%%%%%%%%%%%%%%%%%%%
%Fig. 2 a
par = [0.3,5.3*10^(-4),0.15,0,0,0.05,1.8,0,0,0,0,0,0,0,0,0.2,0,0,0.2,0,2.5*10^4,2.5*10^4];


%Non-Stem
initial = [0 50000 0 0 0 0 0];
[t,populations] = ode45(@(t,populations)ODEs_Generator_2v2(t,populations,par),[0 25], initial);
plot(t,(populations(:,1)+populations(:,2))/10^5)

hold on

%Stem
initial = [50000 0 0 0 0 0 0];
%tic
[t,populations] = ode45(@(t,populations)ODEs_Generator_2v2(t,populations,par),[0 25], initial);
%toc
plot(t,(populations(:,1)+populations(:,2))/10^5), xlabel('Time (Days)'), ylabel('Tumor Size (mm^3)')

legend({'50,000 ALDH-low cells','50,000 ALDH-high cells'}, 'Location', 'northwest', 'Orientation', 'vertical');
%lgd.N

hold off
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%Fig. 5 c
par = [0.3,5.3*10^(-4),0.15,6.2*10^(-8),1.4*10^(-3),0.05,1.8,6.2*10^(-8),5*10^(-3),4.5*10^4,0.02,4.5*10^4,0.02,0,6.2*10^(-8),0.2,0,6.2*10^(-8),0.2,50,2.5*10^4,2.5*10^4];

%chemotherapy
initial = [5000 95000 0 0 0 0 0];
[t,populations] = ode45(@(t,populations)ODEs_Generator_5v2(t,populations,par,string('chemotherapy')),[0 40], initial);
plot(t,(populations(:,1)+populations(:,2))/10^5)

hold

%ALDH-high T-Cell
initial = [5000 95000 0 0 0 0 0];
[t,populations] = ode45(@(t,populations)ODEs_Generator_5v2(t,populations,par,string('ALDH-high T-Cell')),[0 40], initial);
plot(t,(populations(:,1)+populations(:,2))/10^5)

%hold

%ALDH-low T-Cell
initial = [5000 95000 0 0 0 0 0];
[t,populations] = ode45(@(t,populations)ODEs_Generator_5v2(t,populations,par,string('ALDH-low T-Cell')),[0 40], initial);
plot(t,(populations(:,1)+populations(:,2))/10^5)

%chemotherapy + ALDH-high T-Cell
initial = [5000 95000 0 0 0 0 0];
[t,populations] = ode45(@(t,populations)ODEs_Generator_5v2(t,populations,par,string('chemotherapy + ALDH-high T-Cell')),[0 40], initial);
plot(t,(populations(:,1)+populations(:,2))/10^5)

%chemotherapy + ALDH-low T-Cell
initial = [5000 95000 0 0 0 0 0];
[t,populations] = ode45(@(t,populations)ODEs_Generator_5v2(t,populations,par,string('chemotherapy + ALDH-low T-Cell')),[0 40], initial);
plot(t,(populations(:,1)+populations(:,2))/10^5)

%No Treatment
initial = [5000 95000 0 0 0 0 0];
[t,populations] = ode45(@(t,populations)ODEs_Generator_5v2(t,populations,par,string('None')),[0 40], initial);
plot(t,(populations(:,1)+populations(:,2))/10^5), ylabel('Tumor size (mm^3)'), xlabel('Time (Days)')

legend({'Chemotherapy','ALDH-high T-cells', 'ALDH-low T-Cell', 'Chemotherapy + ALDH-high T-Cell', 'Chemotherapy + ALDH-low T-Cell', 'No Treatment'}, 'Location', 'northwest', 'Orientation', 'vertical');




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Fig. 2 a
par = [0.3,5.3*10^(-4),0.15,0,0,0.05,1.8,0,0,0,0,0,0,0,0,0.2,0,0,0.2,0];


%Non-Stem
initial = [0 50000 0 0 0 0 0];
[t,populations] = ode45(@(t,populations)ODEs_Generator_2(t,populations,par),[0 25], initial);
plot(t,(populations(:,1)+populations(:,2))/10^5)

hold on

%Stem
initial = [50000 0 0 0 0 0 0];
%tic
[t,populations] = ode45(@(t,populations)ODEs_Generator_2(t,populations,par),[0 25], initial);
%toc
plot(t,(populations(:,1)+populations(:,2))/10^5), xlabel('Time (Days)'), ylabel('Tumor Size (mm^3)')

legend({'50,000 ALDH-low cells','50,000 ALDH-high cells'}, 'Location', 'northwest', 'Orientation', 'vertical');
%lgd.N

hold off
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Fig. 5 c
par = [0.3,5.3*10^(-4),0.15,6.2*10^(-8),1.4*10^(-3),0.05,1.8,6.2*10^(-8),5*10^(-3),4.5*10^4,0.02,4.5*10^4,0.02,0,6.2*10^(-8),0.2,0,6.2*10^(-8),0.2,50];

%chemotherapy
initial = [5000 95000 0 0 0 0 0];
[t,populations] = ode45(@(t,populations)ODEs_Generator_5(t,populations,par,string('chemotherapy')),[0 40], initial);
plot(t,(populations(:,1)+populations(:,2))/10^5)

hold

%ALDH-high T-Cell
initial = [5000 95000 0 0 0 0 0];
[t,populations] = ode45(@(t,populations)ODEs_Generator_5(t,populations,par,string('ALDH-high T-Cell')),[0 40], initial);
plot(t,(populations(:,1)+populations(:,2))/10^5)

%hold

%ALDH-low T-Cell
initial = [5000 95000 0 0 0 0 0];
[t,populations] = ode45(@(t,populations)ODEs_Generator_5(t,populations,par,string('ALDH-low T-Cell')),[0 40], initial);
plot(t,(populations(:,1)+populations(:,2))/10^5)

%chemotherapy + ALDH-high T-Cell
initial = [5000 95000 0 0 0 0 0];
[t,populations] = ode45(@(t,populations)ODEs_Generator_5(t,populations,par,string('chemotherapy + ALDH-high T-Cell')),[0 40], initial);
plot(t,(populations(:,1)+populations(:,2))/10^5)

%chemotherapy + ALDH-low T-Cell
initial = [5000 95000 0 0 0 0 0];
[t,populations] = ode45(@(t,populations)ODEs_Generator_5(t,populations,par,string('chemotherapy + ALDH-low T-Cell')),[0 40], initial);
plot(t,(populations(:,1)+populations(:,2))/10^5)

%No Treatment
initial = [5000 95000 0 0 0 0 0];
[t,populations] = ode45(@(t,populations)ODEs_Generator_5(t,populations,par,string('None')),[0 40], initial);
plot(t,(populations(:,1)+populations(:,2))/10^5), ylabel('Tumor size (mm^3)'), xlabel('Time (Days)')

legend({'Chemotherapy','ALDH-high T-cells', 'ALDH-low T-Cell', 'Chemotherapy + ALDH-high T-Cell', 'Chemotherapy + ALDH-low T-Cell', 'No Treatment'}, 'Location', 'northwest', 'Orientation', 'vertical');

end
