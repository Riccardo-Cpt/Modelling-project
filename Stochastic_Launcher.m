function Stochastic_Launcher()
    [v_minus, v_plus, v, c] = Stochastic_Model();
    initial = [50000, 0];
    tic
    [T,Dynamics] = simDM_optimized_disc(v_minus, v_plus,c, initial,13, 0.01);
    toc
    plot(transpose(horzcat([0:0.01:12],transpose(T+12))),transpose(horzcat(zeros(1,1201)+50000/10^5,transpose(Dynamics(:,1)+Dynamics(:,2))/10^5))), xlabel('Time (Days)')
    %plot(T,Dynamics)
end