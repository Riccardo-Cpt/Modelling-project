function [residual, SSE] = myobjfun(parameters, te, ye, tin, tfin , Xiniz)

    % [t,y] = ode45(@(t,X) enzReaction(t,X, rates), [tin tfin], Xiniz);
    [t,y]  = ode15s(@(t,X) ODEs_Optimization_1(t,X, parameters), [tin tfin], Xiniz);
    y = y/10^5;
    ysimul = interp1(t,y,te);

    %unweighted residual
    residual = (ysimul-ye);

    %weighted residual
    %residual= (ysimul-ye)./ye;

    %residual as vector
    residual = residual(:);

    % sum of squares 
    SSE = sum(residual.^2);

end