clear all
constant_rand = 4294967291;


c0_table = [44196,32028,20880,10308,75384,66188,58140,50884,100536,92916,86376,80600,122072,115452,...
    109832,104924,141152,135232,130248,125916,158432,153040,148520,144608,174328,169344,165184,161596,...
    189108,184460,180588,177256,202980,198604,194968,191852,216080,211940,208504,205560,228528,224588,...
    221324,218528,240404,236640,233524,230860,251780,248172,245184,242636,262716,259244,256372,253924,...
    273256,269904,267136,264776,283436,280196,277524,275244,293292,290152,287564,285360,302856,299808,...
    297296,295160,312144,309184,306744,304668,321188,318304,315928,313908,330000,327188,324872,322904,...
    338596,335852,333592,331672,346992,344312,342104,340228,355200,352580,350424,348588,363236,360668,...
    358560,356764,371108,368592,366524,364768,378824,376360,374332,372608,386396,383976,381984,380296,...
    393828,391452,389496,387840,401128,398792,396876,395244,408304,406008,404124,402520,415364,413104,...
    411248,409676,422308,420084,418260,416712,429144,426956,425160,423636,435880,433724,431956,430452,...
    442516,440392,438648,437168,449060,446964,445244,443784,455512,453444,451748,450312,461876,459836,...
    458164,456744,468160,466144,464496,463096,474360,472372,470744,469360,480484,478520,476912,475548,...
    486532,484596,483004,481656,492512,490596,489024,487692,498420,496528,494972,493656,504260,502388,...
    500852,499552,510040,508188,506668,505380,515752,513920,512420,511144,521404,519592,518108,516848,...
    527000,525204,523736,522488,532536,530760,529304,528072,538020,536260,534820,533600,543448,541704,...
    540280,539068,548824,547100,545684,544488,554148,552440,551040,549852,559424,557732,556344,555168,...
    564652,562972,561600,560436,569832,568168,566808,565652,574968,573320,571968,570824,580060,578424,...
    577088,575952,585108,583488,582160,581036,600000,595076,590112,587188];


c1_table = [
    -102514, -92199, -86162, -82951, -79070, -68105, -60693, -55396, -66134, -55839,...
    -48783, -43639, -57755, -48215, -41670, -36890, -51803, -42932, -36856, -32421,...
    -47313, -39012, -33338, -29203, -43778, -35964, -30631, -26751, -40907, -33511,...
    -28470, -24807, -38519, -31483, -26695, -23220, -36492, -29774, -25206, -21893,...
    -34747, -28307, -23933, -20765, -33223, -27032, -22831, -19789, -31878, -25911,...
    -21864, -18936, -30681, -24915, -21007, -18182, -29606, -24023, -20242, -17509,...
    -28634, -23218, -19552, -16903, -27750, -22488, -18927, -16356, -26942, -21821,...
    -18357, -15857, -26198, -21208, -17835, -15400, -25512, -20644, -17354, -14980,...
    -24876, -20121, -16909, -14591, -24285, -19636, -16496, -14231, -23733, -19184,...
    -16111, -13896, -23217, -18760, -15752, -13583, -22732, -18364, -15415, -13290,...
    -22276, -17991, -15099, -13015, -21846, -17639, -14801, -12756, -21440, -17307,...
    -14520, -12512, -21055, -16993, -14253, -12281, -20690, -16695, -14001, -12062,...
    -20342, -16412, -13762, -11854, -20012, -16143, -13534, -11656, -19697, -15886,...
    -13317, -11468, -19396, -15641, -13111, -11289, -19109, -15407, -12913, -11118,...
    -18834, -15183, -12724, -10954, -18570, -14969, -12543, -10797, -18317, -14763,...
    -12369, -10646, -18073, -14565, -12202, -10502, -17839, -14375, -12042, -10363,...
    -17614, -14193, -11888, -10230, -17397, -14016, -11739, -10102, -17188, -13847,...
    -11596, -9978, -16986, -13683, -11458, -9858, -16791, -13525, -11325, -9743,...
    -16603, -13372, -11196, -9632, -16421, -13224, -11072, -9524, -16244, -13081,...
    -10951, -9420, -16073, -12942, -10835, -9319, -15907, -12808, -10722, -9222,...
    -15747, -12678, -10612, -9127, -15591, -12552, -10506, -9035, -15440, -12429,...
    -10403, -8946, -15294, -12311, -10303, -8860, -15154, -12196, -10206, -8776,...
    -15020, -12086, -10113, -8695, -14894, -11982, -10024, -8618, -14779, -11885,...
    -9940, -8544, -14681, -11797, -9863, -8475, -13792, -11190, -9418, -8133,...
    0, 0, 0, 0, 0, 0, 0, 0];

c2_table = [
    83840, 48883, 25920, 8147, 88988, 59916, 42707, 31577, 83526, 57019,...
    41464, 31523, 77411, 52885, 38533, 29386, 71990, 49106, 35743, 27241,...
    67363, 45865, 33332, 25372, 63422, 43107, 31282, 23780, 60040, 40746,...
    29530, 22422, 57109, 38706, 28020, 21254, 54545, 36926, 26705, 20239,...
    52279, 35358, 25549, 19349, 50262, 33965, 24525, 18561, 48452, 32718,...
    23609, 17858, 46818, 31593, 22785, 17226, 45333, 30573, 22038, 16654,...
    43976, 29643, 21358, 16134, 42731, 28790, 20735, 15658, 41583, 28005,...
    20163, 15221, 40521, 27279, 19634, 14817, 39534, 26606, 19143, 14444,...
    38614, 25978, 18687, 14096, 37754, 25392, 18261, 13772, 36948, 24844,...
    17862, 13468, 36190, 24328, 17488, 13184, 35477, 23843, 17136, 12916,...
    34803, 23385, 16804, 12664, 34165, 22952, 16490, 12426, 33561, 22542,...
    16193, 12200, 32987, 22153, 15911, 11986, 32441, 21783, 15643, 11783,...
    31921, 21431, 15388, 11590, 31425, 21094, 15145, 11406, 30951, 20773,...
    14913, 11230, 30497, 20466, 14691, 11061, 30063, 20173, 14479, 10901,...
    29646, 19891, 14275, 10746, 29246, 19620, 14080, 10599, 28861, 19360,...
    13892, 10456, 28492, 19110, 13711, 10320, 28135, 18870, 13538, 10189,...
    27792, 18638, 13370, 10062, 27461, 18414, 13209, 9940, 27141, 18199,...
    13053, 9822, 26832, 17990, 12903, 9709, 26534, 17788, 12758, 9599,...
    26245, 17593, 12617, 9492, 25965, 17405, 12481, 9390, 25694, 17222,...
    12349, 9290, 25432, 17045, 12222, 9194, 25178, 16874, 12098, 9100,...
    24933, 16708, 11979, 9010, 24697, 16549, 11864, 8923, 24474, 16397,...
    11754, 8840, 24268, 16255, 11650, 8761, 24088, 16129, 11557, 8689,...
    23954, 16029, 11480, 8628, 23908, 15977, 11432, 8586, 24029, 16017,...
    11440, 8581, 24481, 16238, 11559, 8648, 0, 0, 0, 0,...
    0, 0, 0, 0, 0, 0, 0, 0];




init_1_num = constant_rand;
init_2_num = constant_rand^2;
init_3_num = constant_rand^3;
if (init_1_num < 2) 
    init_1_num = init_1_num+2;
end

if (init_2_num < 64) 
    init_2_num = init_2_num+64;
end

if (init_1_num < 512) 
    init_3_num = init_3_num+512;
end
    
init_1 = uint64(init_1_num);
init_2 = uint64(init_2_num);
init_3 = uint64(init_3_num);

bits1 = bitget(init_1, 1:64, 'uint64');
bits2 = bitget(init_2, 1:64, 'uint64');
bits3 = bitget(init_3, 1:64, 'uint64');

    count = 0;

for j = 1:1000000
    % Array starting from 0, compared to 0:63, each index has to add 1;

    bits1 = [bitxor(bits1(18:59),bits1(23:64)) bits1(2:23)];
    bits2 = [bitxor(bits2(18:42),bits2(40:64)) bits2(8:46)];
    bits3 = [bitxor(bits3(3:40),bits3(27:64)) bits3(20:45)];


    URNG_output = bitxor(bitxor(bits1, bits2), bits3);
    URNG_temp = 0;
    for i = 1 : 64
        URNG_temp = URNG_temp + URNG_output(i)*2^(i-1);
    end
    URNG_val(j) = double(URNG_temp)/(2^64-1);
    

% figure
% histogram(URNG_val,100)



    lzd_num = 0;
    for i = 64:-1:4
        if URNG_output(i)==0
            break;
        else
            lzd_num = lzd_num + 1;
        end

    end


    if URNG_output(64)==0
        count = count+1;
    end
    offset = URNG_output(3)*2 + URNG_output(2);

    % Using P2Sl segmentation for the first pass and US segmentation for the
    % second pass

    segment_address = lzd_num * 4 + offset;

    c0 = c0_table(segment_address+1);
    c1 = c1_table(segment_address+1);
    c2 = c2_table(segment_address+1);
    
    



    % Mask to 0
    temp = URNG_output;
    if (lzd_num <= 60)
        temp((64-lzd_num):64) = 0;
    end
    Mask_output = bitand(temp(4:18), URNG_output(4:18));
    % reverse the order of bits
    Mask_output = Mask_output(end: -1: 1);
    Mask_output_val = 0;
    for i = 1 : 15
        Mask_output_val = Mask_output_val + Mask_output(i) * 2^(i-1);
    end
    
    
    check_point_a(j) = c2 * double(Mask_output_val);
   
    check_point_b(j) = fix((check_point_a(j) + c1 *2^19) / 2^20);
    
    check_point_c(j) = fix(check_point_b(j) * double(Mask_output_val)/2^17);
    
    check_point_d(j) = check_point_c(j) + c0;
    

    if URNG_output(1) == 0
        result(j) =  check_point_d(j) / 2^16;
    else
        result(j) =  -1 * check_point_d(j) / 2^16;
    end
    
end

figure
histogram(result,1000)






    
    