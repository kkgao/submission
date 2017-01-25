function waveform=rectangular(pulse_width,prt,fs,num_pulse_int)

sample_num_pulse = fix(pulse_width*fs);
sample_num_period = fix(prt*fs);
waveform =  zeros(1,sample_num_period*num_pulse_int);

for i=1:num_pulse_int
    waveform(1,(i-1)*sample_num_period+1:(i-1)*sample_num_period+sample_num_pulse)=1;
end
