function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %
    n = length(theta);
    theta_temp = zeros(size(theta));
    v_error = X*theta - y;
    for j = 1:n
        %alpha * (v_error') * X(:,j) / m
        theta_temp(j) = theta(j) - alpha * (v_error') * X(:,j) / m;
    end

    theta = theta_temp;

   % v_error = X*theta - y;
    %xv_error = v_error;
    %size(delta)
    %size(X)
    %size(theta)

    %theta = theta - (alpha/m) * delta*;





    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end

end
