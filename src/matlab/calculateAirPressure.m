function airPressure = calculateAirPressure(mapSignal)
    % FUNCTION Calculate Air Pressure
    airPressure = ((0.0435 .* mapSignal) + 1.08).*10; 
end