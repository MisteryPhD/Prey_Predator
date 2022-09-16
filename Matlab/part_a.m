%% Preparations
% Clear all: command window, workspace, figures
clc;
clear all;
close all;

% Define constants
R_o_prey = 0.04;
R_o_pred = 0.2;
y = 0.0005;
e = 0.1;

% Define the Lotka-Volterra model equations

dN_prey = @(N_prey, N_pred) R_o_prey.*N_prey - y*N_prey.*N_pred;
dN_pred = @(N_prey, N_pred) e*y*N_prey.*N_pred -R_o_pred.*N_pred;

% Define initial conditions
% (three cases)
N_prey_0 = [200 5000 4000];
N_pred_0 = [50  100  80];

% Define the time vector and array to hold the simulation results
dt = 0.01; time = 0:0.01:365;  % (year with 0.01 day time step)
N_prey = zeros(size(time,2),size(N_prey_0,2));
N_pred = zeros(size(time,2),size(N_pred_0,2));

% Initialization:
N_prey(1,:) = N_prey_0;
N_pred(1,:) = N_pred_0;

%% Solving
    % Use Euler method - step through all time steps
for i = 2:size(time,2)
    N_prey(i,:) = N_prey(i-1,:) +...
                 dt * dN_prey(N_prey(i-1,:),N_pred(i-1,:));
    N_pred(i,:) = N_pred(i-1,:) +...
                 dt * dN_pred(N_prey(i-1,:),N_pred(i-1,:));         
end

%% Present the result

    % Plot simulated results for each initial condition.
for j = 1:size(N_prey_0,2)
    figure;
    hold on;
    grid on;
    plot(time, N_prey(:,j),'g');
    plot(time, N_pred(:,j),'r');
    hold off;
    xlabel('t, day');
    ylabel('Population');
    title(strcat('Prey/predators population evolution [',...
                  num2str(N_prey_0(j)),', ',num2str(N_pred_0(j)),']'));
    legend('Prey','Predators');
   
    % Plot the Pred-to-Prey population with derivative vectors
    figure;
    grid on;
    hold on;
        % Pred-to-Prey population (somekind of phase plane)
    plot(N_prey(:,j),N_pred(:,j));
    
        % Estimate the meshgrid for derivatives presenting
    [N_prey_mesh,N_pred_mesh] = meshgrid(min(N_prey(:,j)):((max(N_prey(:,j))-min(N_prey(:,j)))/20):max(N_prey(:,j)),...
                                         min(N_pred(:,j)):((max(N_pred(:,j))-min(N_pred(:,j)))/20):max(N_pred(:,j)));
        % Plot the vector field of derivatives
    quiver(N_prey_mesh,N_pred_mesh,...
           dN_prey(N_prey_mesh,N_pred_mesh),...
           dN_pred(N_prey_mesh,N_pred_mesh));
    hold off;
    xlabel('Prey');
    ylabel('Predator');    
    title(strcat('Prey/predators population evolution [',...
                  num2str(N_prey_0(j)),', ',num2str(N_pred_0(j)),']'));
end