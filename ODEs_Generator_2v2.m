function odes = ODEs_Generator_2v2(t,populations,parameters)
    %ODEs
    odes = zeros(1, 7);
    %parameters = [0.3,5.3*10^(-4),0.15,0,0,0.05,1.8,0,0,0,0,0,0,0,0,0.2,0,0,0.2,0];
    %alfaS = parameters(1);
    
    
    rS = parameters(1);         %rs = alfaS - deltaS
    roPS = parameters(2);
    roSP = parameters(3);
    betaS = parameters(4);
    GammaS = parameters(5);
    
    rP = parameters(6);         %rp = alfaP - deltaP
    alfaSP = parameters(7);
    %roSP2 = 2*parameters(3);
    %roPS = parameters(2);
    betaP = parameters(8);
    GammaP = parameters(9);
    
    X_ts = parameters(10);       %X_ts = Xts * Ts^n
    deltaTS = parameters(11);
    
    X_tp = parameters(12);       %X_tp = Xtp * Tp^n
    deltaTP = parameters(13);
    
    
    gamma_DS = parameters(14);   %gamma_DS = gammaDS * D
    betaDs = parameters(15);
    deltaDS = parameters(16);
    
    gamma_DP = parameters(17);   %gamma_DP = gammaDP * D
    betaDP = parameters(18);
    deltaDP = parameters(19);
    
    eC = parameters(20);
    S_Ts = parameters(21);
    S_Tp = parameters(22);
    
    S = populations(1);
    P = populations(2);
    Ts = populations(3);
    Tp = populations(4);
    Ds = populations(5);
    Dp = populations(6);
    %Sts = populations(7);
    %Stp = populations(8);
    C = populations(7);
    
    if t < 12
        rS = 0;
        rP = 0;
        alfaSP = 0;
        roSP = 0;
        roPS = 0;
    end
    
    %odes(1,1) = alfaS*S + roPS*P - roSP*S - betaS*S*Ts -deltaS*S - GammaS*S*C;
    odes(1) = rS*S + roPS*P - roSP*S - betaS*S*Ts - GammaS*S*C;
    odes(2) = rP*P + alfaSP*S + 2*roSP*S - roPS*P - betaP*P*Tp - GammaP*P*C;
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    odes(3) = X_ts * Ds/(S_Ts + Ds) - deltaTS*Ts;
    odes(4) = X_tp * Ds/(S_Tp + Ds) - deltaTP*Tp;

    odes(5) = gamma_DS * S - betaDs * Ds*Ts - deltaDS * Ds;
    odes(6) = gamma_DP  * P - betaDP *Dp * Tp - deltaDP * Dp;
    odes(7) = -eC*C;

    
    %if t < 12
        %odes(1) = 0;
        %odes(2) = 0;
    %end
    
    odes = transpose(odes);
end