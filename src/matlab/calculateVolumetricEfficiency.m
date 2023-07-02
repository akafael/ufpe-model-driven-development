%% Calculate Volumetric Efficiency
function ve = calculateVolumetricEfficiency(rpm,airTemperature,airPressure)
    % FUNCTION Calculate Volumetric Efficiency
    %
    % $$ve_{teoric} = V_t \left(\frac{P_{MAP}}{R \cdot T_{MAP}}\right)$$
    % 
    % Args:
    %   rpm: Motor RPM
    %   airTemperature: Air Temperature
    %   airPressure: Air Pressure
    %
    % Returns:
    %   ve: Volumetric Efficiency
    arguments
        rpm (1,1) double {mustBeNumeric,mustBeReal,mustBeNonnegative}
        airTemperature (1,1) double {mustBeNumeric,mustBeReal,mustBePositive}
        airPressure (1,1) double {mustBeNumeric,mustBeReal,mustBePositive}
    end


    % Constants
    R = 8.134;                        % [J/mol*K] Universal Gases Constant
    volumeEngineTotal  = 1.984/1000;  % 1.984 * 10^(-3) [m^3]
    rpmMax = 6000;                    % [RPM] Max RPM Allowed 
    veMax = 1;                        % Max Volumetric Eficiency
    
    veReal = volumeEngineTotal*(airPressure/(R*airTemperature))*(rpm/2)
    veTeoric = volumeEngineTotal*(rpmMax/2)*veMax

    % Full Volumetric Efficience Equation
    % ve = veReal/veTeoric

    % Simplified Volumetric Efficiency Equation
    ve = ((airPressure/(R*airTemperature))*rpm )/(rpmMax*veMax);
end