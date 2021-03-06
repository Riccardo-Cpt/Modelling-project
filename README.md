# Modelling-project
Project for exam Modelling and simulations

In the first part we reproduced the simulations present in the aricle, setting initial populations and parameters accordingly. For all the simulations 
we employed the runge-kutta45 algorithm.

The 2 simplest simulation present in the article, evaluating growth of the two types of cancer cells:
![alt text](https://github.com/Riccardo-Cpt/Modelling-project/blob/master/Fig2A_merged.jpg?raw=true)

Then we included the effects of immunotherapic and chemoterapic treatments:
![alt text](https://github.com/Riccardo-Cpt/Modelling-project/blob/master/Fig5B_Merge.jpg?raw=true)

In the next step we converted the deterministic settings of the first simulation into stochastic to check the behaviour. In this case relied on Direct metod
to obtain an exact stochastic simulation.
![alt text](https://github.com/Riccardo-Cpt/Modelling-project/blob/master/Stochastic.jpg?raw=true)

Lastly we optimize our parameters in order to fit the ODEs model with "experimental data" of the simplest simulations. Trust region algorithm with multistart approach was used for the scope. Parameters constrains were taken from the article
![alt text](https://github.com/Riccardo-Cpt/Modelling-project/blob/master/ParameterEstimation.jpg?raw=true)


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

  
  
  

