# ballvsAball
A MATLAB implementation to visualize the transformation of a unit ball under a linear transformation.

## Description 
This repository contains a MATLAB code that visualizes the transformation of a unit ball in a chosen norm (p-norm) under a 2x2 matrix. It displays the matrix's determinant, eigenvalues, and condition number, alongside dynamic plots of the unit ball and its transformed counterpart, illustrating linear algebra concepts.

## Code Overview 
The main function ballvsAball visualizes the transformation of a unit ball iteratively. The code includes:
- Initialization of a matrix, norm type, and visualization granularity.
- Calculation of matrix properties: Determinant, Condition number, Eigenvalues
- Dynamic plotting of: The unit ball in the chosen p-norm (left plot) and The transformed ball (y = Ax) (right plot).

```matlab
function ballvsAball(A, p, k)
    % A: 2x2 matrix (default: random 2x2 matrix)
    % p: Norm type (default: p = 2, Euclidean norm)
    % k: Number of iterations (default: k = 30)
```
## Helper Functions
```matlab
loc_ball
```
Plots the unit ball in the p-norm (||x||_p = 1) using a specified number of points.
```matlab 
loc_Aball
```
Plots the transformed ball (y = Ax) by applying the matrix transformation A to the unit ball.

## Usage 
To run the code, call the ballvsAball function with optional parameters. For example:
```matlab
% Example 1: Using default values
ballvsAball();

% Example 2: Specifying matrix and norm
A = [2, 1; 0, 1]; % Custom matrix
p = 1;            % Use 1-norm
k = 50;           % Number of iterations
ballvsAball(A, p, k);
```

## License
This project is licensed under the MIT License - see the LICENSE file for details.
```
Feel free to adjust any part of this README to better fit your specific needs or preferences.
