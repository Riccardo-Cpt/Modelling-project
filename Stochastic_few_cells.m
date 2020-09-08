function Stochastic_few_cells()
    [v_minus, v_plus, v, c] = Stochastic_Model();
    initial = [5, 0];
    %tic
    for i=1:10
        [T,Dynamics] = simDM_optimized_disc(v_minus, v_plus,c, initial,13, 0.01);
        plot(T,(Dynamics(:,1)+Dynamics(:,2))/10^5)
        hold on
    end
    %toc
    %plot(transpose(horzcat([0:0.01:12],transpose(T+12))),transpose(horzcat(zeros(1,1201)+50000/10^5,transpose(Dynamics(:,1)+Dynamics(:,2))/10^5))), xlabel('Time (Days)')
    %plot(T,Dynamics)
end