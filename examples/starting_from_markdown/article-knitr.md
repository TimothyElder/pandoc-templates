---
title: This Article Looks Quite Authoritative
author:
- name: Timothy Elder
  affiliation: University of Chicago
  email: timothyelder@uchicago.edu
- name: Joe Bloggs
  affiliation: Northwestern University
  email: joebloggs@northwestern.edu
date: November 2022
thanks: "Here is a thank you to all those that are deserving."
abstract: Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enimad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
bibliography: [/Users/timothyelder/Documents/bibs/socbib-pandoc.bib] 
...









# Introduction
Lorem ipsum dolor sit amet, consectetur [@timmermans_sudden_1999] adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua . Notice that citation there [@abbott_system_1988]. Ut enimad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat [@martin_lifes_2010].

# Results
Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enimad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enimad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enimad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.

![Tea and Biscuits are correlated but there may be identifiability issues.](figures/paper-sample-plot.png){#fig:example_fig}


When you create figures you can reference them as well, so Figure {@fig:example_fig} displays some imporant and convincing information for you to refer to. You can also use footnotes for paranthetical information.^[Here is a footnote that is automatically numbered using `pandoc-xnos`, which is a filter that must appear before `--citeproc` in your Makefile.]. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enimad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.


                    **Model 1**   **Model 2**   **Model 3**  
------------------- ------------- ------------- -------------
  **(Intercept)**   -0.039        -0.030        0.020        
                    (0.072)       (0.068)       (0.059)      
   **biscuits**     0.359***      0.327***      0.239***     
                    (0.045)       (0.044)       (0.041)      
     **chips**                    0.110**       0.085**      
                                  (0.034)       (0.029)      
    **cheese**                                  0.206***     
                                                (0.035)      
   **Deviance**     49.369        44.521        32.481       
       **N**        100           100           100          
------------------- ------------- ------------- -------------


# Conclusion
Right now, your options for formatting bibliographies using Pandoc are to offload the work to biblatex (or natbib), or have pandoc handle everything via `citeproc` and CSL files. The latter way is simpler and cleaner, especially if we want to preserve the ability to easily generate both HTML and LaTeX/PDF outputs. You have to do two things. First, explicitly specify the "References" header. Second, pandoc does not (yet) support some standard layout options for bibliography entries---it will treat each entry like a regular paragraph, when we want the first lines of each bibliography entry to have no indentation, with subsequent lines (if any) to hang in from the margin. The LaTeX commands below the "References" header accomplish this . The LaTeX commands are ignored when HTML is produced, and do not show up in the output file.

# References
\setlength{\parindent}{-0.2in}
\setlength{\leftskip}{0.2in}
\setlength{\parskip}{8pt}
\vspace*{-0.2in}
\noindent
