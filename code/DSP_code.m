% Define symbolic variables
syms z n

% Define the discrete-time signal x[n] = 0.8^n
a = 0.8;
x_n = a^n;

% Compute the Z-transform by summing from n = 0 to infinity
X_z = symsum(x_n * z^(-n), n, 0, inf);

% Simplify the Z-transform expression
X_z = simplify(X_z);

% Find the zeros and poles
zeros = solve(X_z == 0, z);
poles = solve(z - 0.8 == 0, z); % Directly finding poles from the denominator

% Display zeros and poles
disp('Zeros:');
disp(zeros);
disp('Poles:');
disp(poles);

% Plot the pole-zero diagram
figure;
hold on;

% Plot zeros
for k = 1:length(zeros)
    plot(real(zeros(k)), imag(zeros(k)), 'bo', 'MarkerSize', 10, 'DisplayName', 'Zero');
end

% Plot poles
for k = 1:length(poles)
    plot(real(poles(k)), imag(poles(k)), 'rx', 'MarkerSize', 10, 'DisplayName', 'Pole');
end

% Plot the unit circle
theta = linspace(0, 2*pi, 100);
plot(cos(theta), sin(theta), 'g--', 'DisplayName', 'Unit Circle');

% Add labels and title
xlabel('Re(z)');
ylabel('Im(z)');
title('Pole-Zero Diagram');
grid on;
axis equal;
legend show;
hold off;

% Stability Analysis
roc = '|z| > 0.8';
disp('The Region of Convergence (ROC) is:');
disp(roc);

% Conclusion about stability
if abs(double(poles)) < 1
    disp('The system is stable because the pole is inside the unit circle.');
else
    disp('The system is unstable because the pole is outside the unit circle.');
end
