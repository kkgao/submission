function output = quant_saturation(input, length_bits)
dim = size(input);
for i = 1: dim(1)
    for j = 1: dim(2)
        if input(i,j) >= 0
            output(i,j) = min(2^length_bits, input(i,j));
        else
            output(i,j) = max(-2^length_bits, input(i,j));
        end
    end
    
end
