# Modelling-project
Project for exam Modelling and simulations

BiologicalNetworks___Report.pdf report file containing our work

Presentation_ppt_marchetti.pdf power point presentation of the project

The others are matlab scripts 
  - ODEs_Generator = 2 scrpipts for running ODEs with different model parameters 
  - deterministic_plots.m used for plotting both of them
  
  - simDM_optimized_disc.m: DM stochastic algorithm
  - Stochastic_Launcher.m launched by parameters v_minus, v_plus,c, initial created in Stochastic_Model.m. Employs DM algorithm
  - Stochastic_Model.m launches 10 times Stochastic_Launcher.m
  
  - ODEs_Optimization_1.m: Produces ODEs
  - par_optimization.m: run many times multi start optimization with non linear least squares model to find best fit parameters. 
    In this case was used on data produced in ODEs_Optimization_1.m + error given by normal standard
  - myobjfun.m: to compute residuals between interpolated line and data provided

  
  
  
![alt text](https://github.com/Riccardo-Cpt/Modelling-project/blob/master/Fig2A_merged.jpg?raw=true)
