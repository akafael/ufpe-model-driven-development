function rpm = calculateRPM(periodSignalInput)
    % FUNCTION Calculate Air Tempperature [K]
    rpm = 1e6 / (periodSignalInput * 128);
end