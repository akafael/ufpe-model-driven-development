function rpm = calculateRPM(periodSignalInput)
    % FUNCTION Calculate Air Tempperature [K]
    arguments
        periodSignalInput (1,:) double {mustBeNonnegative}
    end
    rpm = 1e6 ./ (periodSignalInput .* 128);
end