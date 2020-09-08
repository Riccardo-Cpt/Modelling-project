function  [v_minus, v_plus, v, c] = Stochastic_Model()
    %[v_minus, v_plus, v, c] = Stochastic_Model()
    %initial = [50000, 0]
    %[T,Dynamics] = simDM_optimized_disc(v_minus, v_plus,c, initial,13, 0.01)
    
    %plot(T,(Dynamics(:,1)+Dynamics(:,2))/10^5), xlabel('Time (Days)')
    %%%plot(transpose(horzcat([0:0.01:12],transpose(T+12))),transpose(horzcat(zeros(1,1201)+50000/10^5,transpose(Dynamics(:,1)+Dynamics(:,2))/10^5))), xlabel('Time (Days)')
    %hold on
    
    %initial = [0, 50000]
    %[T,Dynamics] = simDM_optimized_disc(v_minus, v_plus,c, initial,13, 0.01)
    %plot(transpose(horzcat([0:0.01:12],transpose(T+12))),transpose(horzcat(zeros(1,1201)+50000/10^5,transpose(Dynamics(:,1)+Dynamics(:,2))/10^5))), xlabel('Time (Days)')
    
    
    
    %Species:
        %1. S
        %2. P
        
    %Reactions
        %1. S -> 2S         rS
        %2. P -> S          roPS
        %3. S -> 2P         roSP
        %4. P -> 2P         rP
        %5. S -> S + P      alfaSP
        
    v_minus = [
        1,0;
        0,1;
        1,0;
        0,1;
        1,0;
        ];
    v_plus = [
        2,0;
        1,0;
        0,2;        
        0,2;
        1,1;
        ];
    
    v = v_plus - v_minus;
    
    c = [
        0.3,            %rS
        5.3*10^(-4),    %roPS
        0.15,           %roSP
        0.05,           %rP
        1.8             %alfaSP
        ];
   
end