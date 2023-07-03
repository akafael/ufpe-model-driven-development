function ve = calculateVolumetricEfficiency(rpm,airTemperature,airPressure)
    % FUNCTION Calculate Volumetric Efficiency
    %
    % $$ve_{teoric} = V_t \left(\frac{P_{MAP}}{R \cdot T_{MAP}}\right)$$
    % 
    % Args:
    %   rpm: Motor RPM [RPM]
    %   airTemperature: Air Temperature [K]
    %   airPressure: Air Pressure [kPa]
    %
    % Returns:
    %   ve: Volumetric Efficiency
    arguments
        rpm (1,:) double {mustBeNumeric,mustBeReal,mustBeNonnegative,mustBeInRange(rpm,0,6000)}
        airTemperature (1,:) double {mustBeNumeric,mustBeReal,mustBePositive}
        airPressure (1,:) double {mustBeNumeric,mustBeReal,mustBePositive}
    end


    % Constants
    R = 8.314462618;                  % [J/(K*mol)] Universal Gases Constant
    rpmMax = 6000;                    % [RPM] Max RPM Allowed 
    veMax = 1;                        % Max Volumetric Eficiency
    volumeEngineTotal  = 1.984/1000;  % 1.984 * 10^(-3) [m^3]
    
    
    % Full Volumetric Efficience Equation
    % veReal = volumeEngineTotal*(airPressure/(R*airTemperature))*(rpm/2)
    % veTeoric = volumeEngineTotal*(rpmMax/2)*veMax
    % ve = veReal/veTeoric

    % Simplified Volumetric Efficiency Equation
    ve = ((airPressure/(R.*airTemperature)).*rpm )/(rpmMax.*veMax);
end
