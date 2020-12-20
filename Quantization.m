function [yq, eq, SNRdB] = Quantization(y, xmax, xmin, m)
    if ~isvector(y)
        error('y is not a vector.')
    end
    if ~(xmax > xmin)
        error('Range is invalid, xmax is not greater than xmin.')
    end
    if ~(m > 0)
        error('Number of bits cannot be zero.')
    end
    R = xmax - xmin;
    step_size = R/(2^m);
    length_y = length(y);
    yq = zeros(1, length_y);
    eq = zeros(1, length_y);
    n = 1:length_y;
    for idx = 1:length_y
        i = round((y(idx) - xmin)/step_size);
        yq(idx) = xmin + (i*step_size);
        eq(idx) = yq(idx) - y(idx);
    end
    % Assume input signal is a sinusoid with peak R/2
    Sig_rms = R/(2*sqrt(2));
    Noise_rms = step_size/(sqrt(12));
    SNRdB = 20*log10(Sig_rms/Noise_rms);
    %plot(n, yq)
    %stem(n, yq)
    f1 = figure('Name','Quantized signal');
    stairs(n, yq)
    f2 = figure('Name','Quantization Error');
    stairs(n, eq)
end