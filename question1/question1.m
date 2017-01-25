clear all

% Parameter setting
max_range = 5000;    % Maximum unambiguous range
range_res = 50;      % Required range resolution
tgt_rcs = 1;         % Required target radar cross section
C = 3e8; % light speed 3x10^8
fs=6e6; %sampling freq
pulse_bw = C/(2*range_res);    % Pulse bandwidth
pulse_width = 1/pulse_bw;               % Pulse width
prf = C/(2*max_range);         % Pulse repetition frequency
prt=1/prf; %pulse period
num_pulse_int = 10;
peak_power = 25; %dB peak_power =rms_factor(prt/pulse_width) * noise_power * SNR_requirement_RX
noise_power = 0; %dB
sample_num_pulse = fix(pulse_width*fs);
sample_num_period = fix(prt*fs);
total_sample = 10*sample_num_period;

%Tx waveform
waveform = rectangular(pulse_width, prt, fs, num_pulse_int) * sqrt(10^(peak_power/10));

%target 
target_num = 3;
target_distance(1:target_num)=[2024 3518 3845];
delay(1:target_num)= fix(fs*2*target_distance(1:target_num)/C);
target_velocity(1:target_num) = [0 0 0];

% channel from TX to RX
signal_total = zeros(1,total_sample);
for i=1:target_num
    signal_temp = [waveform(end-delay(i)+1:end) waveform(1:end-delay(i))];
    signal_total= signal_total+signal_temp;
end


%system noise
noise = randn(1, total_sample) * sqrt(10^(noise_power/10));

%Rx side
echo = signal_total+noise;
cycle_signal = rectangular(pulse_width, prt, fs, 1);
demod=conv(echo,cycle_signal);
%integrate 10 pulses
integrated_result = zeros(1,sample_num_period);
for i=1: num_pulse_int
    integrated_result = integrated_result + demod((i-1)*sample_num_period+1:i*sample_num_period);
end

figure
plot(demod);
figure
plot(integrated_result);









