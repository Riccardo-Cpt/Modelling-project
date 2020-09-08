function odes = ODEs_Optimization_1(t,populations,parameters)
    %ODEs
    odes = zeros(1, 2);
    %parameters = [0.3,5.3*10^(-4),0.15,0,0,0.05,1.8,0,0,0,0,0,0,0,0,0.2,0,0,0.2,0];
    %alfaS = parameters(1);
    
    
    rS = parameters(1);         %rs = alfaS - deltaS
    roPS = parameters(2);
    roSP = parameters(3);
    
    rP = parameters(4);         %rp = alfaP - deltaP
    alfaSP = parameters(5);
    
    S = populations(1);
    P = populations(2);
    
    %if t < 12
     %   rS = 0;
      %  rP = 0;
       % alfaSP = 0;
        %roSP = 0;
        %roPS = 0;
    %end
    
    %odes(1,1) = alfaS*S + roPS*P - roSP*S - betaS*S*Ts -deltaS*S - GammaS*S*C;
    odes(1) = rS*S + roPS*P - roSP*S;
    odes(2) = rP*P + alfaSP*S + 2*roSP*S - roPS*P;
    
    odes = transpose(odes);
end