# NPA_hierarchy
## Fast generation of constraint matrices for any setting of the Navascués-Pironio-Acín hierarchy

The Navascués-Pironio-Acín (NPA) hiearchy was formulated in:

Miguel Navascués, Stefano Pironio and Antonio Acín  
A convergent hierarchy of semidefinite programs characterizing the set of quantum correlations  
*New Journal of Physics*, Volume **10**, (2008)  
(http://iopscience.iop.org/article/10.1088/1367-2630/10/7/073013)  

Since the hierarchy is a set of semi-definite programs, instances of it are typically implemented as constraints in convex optimisation problems in MatLab. In this respository, we present a faster method for generating the constraints using Mathematica, rather than MatLab. The resulting constraint matrices can then be called and implemented easily in a Matlab code.

There are two files: 

NPA.nb - Mathematica module that generates the constraint matrices of any scenario in the NPA hierarchy. Includes a description of how the code works and an example. Once the function has been called the constraint matrix will be exported locally to the user (use 'Directory[]' to check where this is).

maximiseCHSH.m  - MatLab script that implements the constraint matrix output by Mathematica. In this example for level 2 of the NPA hiearchy in the scenario with 2 parties each with 2 inputs and 2 outputs the CHSH inequality recovers the Tsirelson bound.
