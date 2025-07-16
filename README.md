# Z-Transform-Based-Stability-Analysis-of-a-Digital-Filter

This project implements a MATLAB-based analysis of the stability of a digital low-pass filter using the Z-Transform. It is tailored for audio signal processing applications, specifically focusing on noise reduction.

## Project Overview
The discrete-time signal under analysis is:

### x[n] = 0.8^n * u[n]
where u[n] is the unit step function. The system's behavior is studied in the Z-domain to evaluate its poles, zeros, and stability characteristics.

## Key Objectives
Compute the Z-transform of the given input signal symbolically.

Derive and visualize the pole-zero diagram.

Determine system stability by evaluating the Region of Convergence (ROC).

Discuss implications for audio noise reduction using digital low-pass filters.

## Core Methods
Symbolic math (symsum, numden, solve) to compute Z-transform and factor expressions.

Plotting poles/zeros in the complex plane.

Analyzing whether poles lie within the unit circle to confirm filter stability.

## Outcome
The system transfer function is:

### X(z) = z / (z - 0.8)
With a pole at z = 0.8, the system is stable as it lies within the unit circle.

Confirmed that the filter is suitable for real-time noise reduction in audio applications.
