function [Estimation,t,tum] = par_optimization()
    %Generate Our Experimental Data
    %par = [0.3,5.3*10^(-4),0.15,0,0,0.05,1.8,0,0,0,0,0,0,0,0,0.2,0,0,0.2,0,2.5*10^4,2.5*10^4];
    %Stem
    initial = [50000 0];
    par = [0.3,5.3*10^(-4),0.15,0.05,1.8];
    %[t,populations] = ode45(@(t,populations)ODEs_Generator_2v2(t,populations,par),[0 25], initial);
    [t,populations] = ode45(@(t,populations)ODEs_Optimization_1(t,populations,par),[0 13], initial);
    
    %data = zeros(2,25);  %t and populations
    %data(1,:) = t(145:169);
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %T = t;
    %tum = zeros(93,2);
    %tum(:,1) = populations(:,1);
    %tum(:,2) = populations(:,2);
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    T = t(55:93); %+ normrnd(0,1,39,1);
    tum = zeros(39,2);
    tum(:,1) = populations(55:93,1)/10^5 + normrnd(0,1,39,1);
    tum(:,2) = populations(55:93,2)/10^5 + normrnd(0,1,39,1);

    
    ms = MultiStart('UseParallel', 'always', 'Display', 'iter', 'StartPointsToRun', 'bounds', 'TolFun', 10^(-10), 'TolX', 10^(-10));
    %'debug1'

    nRun = 50;
    ub = [
        0.76,           %rS
        10^(-3),            %roPS    ????
        0.76,           %roSP
        0.8,            %rP
        6,               %alfaSP
        ];
    
    lb = [
        10^(-5),           %rS
        10^(-10),            %roPS    ????
        10^(-5),           %roSP
        10^(-5),            %rP
        0.4,               %alfaSP
        ];
    %x0 = [0.4, 10^(-4), 0.2, 0.07, 2];
    x0 = rand(1,5);
    %x0 = lhsdesign(1,5);
    %x0 = par;
    problem = createOptimProblem('lsqnonlin', 'objective', @(param) myobjfun(param, T, tum, 0, 13, initial), 'lb', lb, 'ub', ub, 'x0', x0);
    %'debug2'
    Estimation = run(ms, problem, nRun);
    %'debug3'
end