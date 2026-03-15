#include <a_samp>
#include <YSI\y_hooks>

// ==== Enum Data Toys ====
enum eToyData 
{
    tModel,
    tBone,
    Float:tX, 
    Float:tY, 
    Float:tZ,
    Float:tRX, 
    Float:tRY, 
    Float:tRZ,
    Float:tSX, 
    Float:tSY, 
    Float:tSZ
};
 
// ==== Settings Toys ====
new HeadToys[][eToyData] = 
{
    {19197, 2, 0.209998, 0.0, 0.0, 0.0, 84.499977, 0.0, 0.265998, 0.273000, 0.0},
    {19487, 2, 0.085000, 0.005998, -0.003998, 83.900001, 67.899978, 3.199999, 1.078999, 0.962000, 1.0},
    {19352, 2, 0.109999, -0.003000, 0.0, -78.300010, 113.100013, -13.799969, 1.114999, 1.097000, 1.0},
    {19094, 2, 0.136997, -0.000999, -0.002999, 0.0, 0.0, 0.0, 0.829999, 0.823000, 0.793999},
    {18952, 2, 0.088999, 0.018999, -0.002000, 0.0, 0.0, -6.299999, 1.278000, 1.188002, 1.254999},
    {19553, 2, 0.153999, -0.018998, 0.006000, -5.499998, -7.799994, -32.600002, 1.130998, 1.456001, 1.271000},
    {19528, 2, 0.108999, -0.001999, -0.002000, 0.0, 0.0, -29.199979, 1.0, 1.506001, 1.071998},
    {18638, 2, 0.164002, 0.016999, -0.000999, 0.0, 0.0, -8.399974, 0.694998, 0.927995, 1.002995},
    {18979, 2, 0.072999, 0.013000, 0.0, 88.600006, 91.099998, 0.0, 1.129001, 0.972998, 1.049999},
    {18977, 2, 0.072999, 0.013000, 0.0, 88.600006, 91.099998, 0.0, 1.129001, 0.972998, 1.049999},
    {18978, 2, 0.072999, 0.013000, 0.0, 88.600006, 91.099998, 0.0, 1.129001, 0.972998, 1.049999},
    {18645, 2, 0.072999, 0.013000, 0.0, 88.600006, 91.099998, 0.0, 1.129001, 0.972998, 1.049999},
    {19064, 2, 0.128999, 0.008999, -0.000999, 3.400000, 87.100013, 88.299980, 1.116997, 1.320001, 1.044000},
    {19137, 2, 0.102999, 0.013999, 0.002999, 0.0, 0.0, 0.0, 1.0, 1.027999, 1.161998},
    {19520, 2, 0.122000, -0.015999, 0.004000, -2.0, 0.299997, -7.599994, 0.848999, 1.220999, 1.253003},
    {19320, 2, 0.156999, -0.004000, 0.0, 0.0, 89.799995, 0.0, 0.656000, 0.633998, 0.723999},
    {19099, 2, 0.175999, -0.006000, -0.002999, 0.0, 0.0, -11.100002, 1.050999, 1.128002, 1.111001},
    {1736, 2, 0.057900, -0.018899, -0.016899, 83.799896, 18.699899, 95.699996, 0.972899, 0.873000, 0.616900},
    {6865, 2, 0.001999, 0.035000, 0.0, -124.299972, 105.300033, -7.600008, 0.138999, 0.155000, 0.116999},
    {2908, 2, 0.090998, 0.066999, -0.004000, 178.900039, 0.0, 99.700012, 1.702998, 1.435999, 1.701001},
    {18636, 2, 0.141001, 0.043999, -0.004999, 1.599998, 92.800109, 82.199951, 1.039998, 1.086004, 0.836997},
    {19346, 2, 0.167005, -0.010999, -0.005998, 95.699905, 68.800086, -104.899940, 2.339998, 0.964999, 1.636000},
    {1603, 2, 0.191002, 0.021999, 0.014999, -4.399999, 83.999992, 2.299998, 0.384000, 0.500998, 0.359999},
    {18782, 2, 0.167000, -0.017999, 0.001999, -91.000045, 116.799980, 163.000015, 0.020998, 0.017999, 0.054997},
    {19558, 2, 0.144998, -0.002000, 0.000999, 0.0, 0.0, -30.400007, 1.0, 1.023000, 1.012001},
    {2238, 2, 0.460000, -0.133000, 0.051899, 65.400001, 67.099998, 21.399999, 1.179000, 1.215899, 0.851899},
    {18925, 2, 0.138998, 0.012000, -0.007000, 0.199998, -5.700015, -8.800018, 1.074000, 1.026998, 1.125},
    {18950, 2, 0.151997, 0.012000, 0.001999, 0.0, 0.600003, -6.399981, 1.0, 0.990998, 1.049000},
    {19514, 2, 0.097998, -0.001000, -0.000999, 0.0, 0.0, -3.400000, 1.144000, 1.021000, 1.088003}
};

new MaskToys[][eToyData] = 
{
    {18963, 2, 0.102999, 0.013999, -0.001999, 87.299995, 81.200103, 0.0, 1.179002, 1.135015, 1.157003},
    {11704, 2, 0.086000, 0.114000, -0.006000, 90.200019, 83.900115, 87.0, 0.285997, 0.414000, 0.377997},
    {19472, 2, -0.007000, 0.128998, -0.000999, -2.900000, 88.200019, 93.200096, 1.043988, 1.214002, 1.096001},
    {368, 2, 0.0, 0.100998, -0.003998, 0.0, 0.0, -1.099997, 1.0, 1.0, 0.980998},
    {11736, 2, -0.017000, 0.064000, -0.001999, 0.0, 0.0, 11.199993, 0.261000, 0.446999, 2.697000},
    {19517, 2, -0.010999, 0.064000, 0.0, 0.0, 0.0, -162.100189, 0.333000, 0.603999, 0.570999},
    {1013, 2, 0.164900, 0.007000, 0.0, 92.499900, 178.300003, -92.799896, 0.104900, 0.789900, 0.228000},
    {19314, 2, 0.086998, 0.001000, -0.001999, 0.0, 0.0, -83.199989, 0.707998, 0.601999, 0.319999},
    {19351, 2, 0.025999, 0.121999, -0.000999, 0.0, 0.0, -79.300033, 1.0, 1.0, 1.0},
    {19036, 2, 0.112999, 0.026000, -0.006998, -1.599997, 91.100051, 92.199989, 1.146999, 1.319998, 1.156000},
    {13667, 2, 0.090899, 0.149900, -0.003899, 82.099998, 78.299896, 18.699899, 0.051899, 0.025900, 0.025900}
};

new HandToys[][eToyData] = 
{
    {364, 6, 0.078998, 0.018999, 0.008999, 0.0, -93.299949, 5.000002, 1.0, 1.0, 1.0},
    {1366, 14, 0.046900, 0.016000, -0.039900, 17.200000, 175.999694, 114.300003, 2.700000, 1.312899, 0.038899},
    {1877, 14, 0.312900, -0.584900, -0.128900, 105.400001, 0.0, 0.0, 0.086900, 0.103900, 1.779000},
    {1882, 14, 0.312900, -0.584900, -0.128900, 105.400001, 0.0, 0.0, 0.086900, 0.103900, 1.779000},
    {1878, 14, 0.312900, -0.584900, -0.128900, 105.400001, 0.0, 0.0, 0.086900, 0.103900, 1.779000},
    {1880, 14, 0.312900, -0.584900, -0.128900, 105.400001, 0.0, 0.0, 0.086900, 0.103900, 1.779000},
    {1879, 14, 0.312900, -0.584900, -0.128900, 105.400001, 0.0, 0.0, 0.086900, 0.103900, 1.779000},
    {1881, 14, 0.312900, -0.584900, -0.128900, 105.400001, 0.0, 0.0, 0.086900, 0.103900, 1.779000},
    {3801, 13, 0.675899, -0.804000, 0.071900, -90.199897, 65.899803, -5.799900, 5.476900, 0.245900, 0.442900},
    {2805, 13, 0.623000, 0.020899, 0.0, -2.599900, -93.999900, 109.699897, 1.080899, 0.694899, 0.368000},
    {2901, 1, 0.109999, 0.360000, 0.0, 0.0, 90.0, 0.0, 1.0, 1.0, 1.0}
};

new NeckToys[][eToyData] = 
{
    {1274, 1, 0.127000, 0.135000, -0.001999, -88.600067, 106.299995, -95.799903, 0.236000, 1.516999, 0.214000},
    {1240, 1, 0.122900, 0.152899, -0.004000, 87.299896, 78.199897, -89.599899, 0.637000, 0.868900, 0.610000},
    {1240, 1, 0.239998, 0.100000, 0.004999, -87.300003, 121.900329, -90.299980, 0.320998, 0.601000, 0.279000},
    {19623, 1, 0.201000, 0.171998, -0.008999, 79.799972, 60.200038, 97.800003, 0.615998, 0.715999, 0.592000},
    {11712, 1, 0.266000, 0.125, -0.005998, 87.900009, 60.300243, 0.0, 1.418998, 0.566999, 0.472999},
    {19621, 1, -0.093000, 0.086998, -0.196999, 0.0, 69.999984, -145.900009, 0.658999, 0.723999, 0.812999},
    {19130, 1, 0.136000, 0.135000, -0.016899, 79.199897, 66.299797, 6.999899, 0.828899, 0.497900, 0.136000}
};

new PundakToys[][eToyData] = 
{
    {19079, 1, 0.292001, -0.054999, 0.127998, 0.0, -20.699991, 0.12, 0.533999, 0.649999, 0.647000},
    {16776, 1, 0.303999, -0.012999, 0.142998, 3.800009, 79.100120, -179.599838, 0.007000, 0.006000, 0.009998},
    {16778, 1, 0.131899, 0.002000, 0.112000, 0.0, 70.699996, 98.099899, 0.041000, 0.037000, 0.040899},
    {19332, 1, 0.353998, -0.017000, 0.185999, 0.0, 86.599998, 0.0, 0.008999, 0.008999, 0.008999},
    {19333, 1, 0.353998, -0.017000, 0.185999, 0.0, 86.599998, 0.0, 0.008999, 0.008999, 0.008999},
    {19334, 1, 0.353998, -0.017000, 0.185999, 0.0, 86.599998, 0.0, 0.008999, 0.008999, 0.008999},
    {19335, 1, 0.353998, -0.017000, 0.185999, 0.0, 86.599998, 0.0, 0.008999, 0.008999, 0.008999},
    {19336, 1, 0.353998, -0.017000, 0.185999, 0.0, 86.599998, 0.0, 0.008999, 0.008999, 0.008999},
    {19337, 1, 0.353998, -0.017000, 0.185999, 0.0, 86.599998, 0.0, 0.008999, 0.008999, 0.008999},
    {19338, 1, 0.353998, -0.017000, 0.185999, 0.0, 86.599998, 0.0, 0.008999, 0.008999, 0.008999},
    {19315, 1, 0.211899, 0.100000, -0.163000, 87.699897, 80.999900, 1.899899, 1.0, 1.0, 1.0},
    {14467, 1, 0.455900, 0.018899, 0.176899, 0.0, 85.399902, -178.0, 0.090899, 0.104000, 0.082900},
    {19076, 16, 0.177900, -0.014899, 0.0, 2.799900, -176.899902, 0.0, 0.046000, 0.050000, 0.041000},
    {19076, 1, 0.305007, -0.012000, 0.156999, 0.0, 88.400009, 0.0, 0.019999, 0.025999, 0.018999}
};

new BackpToys[][eToyData] = 
{
    {337, 1, -0.061999, -0.179000, -0.082000, -1.200000, 59.700004, 97.699943, 1.0, 1.0, 1.0},
    {1212, 1, 0.125999, -0.077999, -0.004999, 90.499923, 0.0, -23.599962, 2.040997, 2.689001, 1.411999},
    {1575, 1, 0.061997, -0.030999, 0.002998, 89.900100, 0.0, 0.0, 0.730000, 0.739997, 0.953000},
    {19636, 1, -0.093998, -0.204999, 0.004999, -0.300000, 89.300079, -1.299998, 0.462998, 0.202997, 2.552000},
    {2805, 1, 0.127998, -0.179997, 0.008999, 0.0, 74.400016, 0.0, 0.593999, 0.635999, 0.427998},
    {19840, 1, -0.400900, -0.254900, 0.025000, 94.699897, 59.499900, -96.999900, 0.054900, 0.072899, 0.123899},
    {18637, 1, 0.077999, -0.034999, 0.120999, 87.199943, -0.9, -73.0, 0.714999, 0.786000, 1.047999},
    {339, 1, 0.302998, -0.120001, -0.213999, 0.199996, -53.899978, -5.499989, 1.0, 1.0, 0.796999},
    {19590, 1, 0.294997, -0.11, 0.142997, -1.099933, 147.300079, 89.601707, 0.961996, 0.950999, 0.723999},
    {362, 1, 0.527998, -0.181998, -0.004999, 176.599990, -178.399581, 0.0, 0.652999, 0.776998, 0.827000},
    {361, 1, 0.543999, -0.155999, -0.103000, -177.300079, 176.400054, 0.0, 0.768000, 0.705999, 0.748998},
    {341, 1, 0.478998, -0.154992, 0.131999, 0.0, 174.400253, 0.0, 1.0, 1.0, 1.0},
    {19620, 1, 0.0, -0.110899, 0.005900, 86.900001, 5.199999, -33.700000, 1.800899, 0.111000, 0.209900},
    {19806, 1, -0.338899, -0.138899, -0.046000, -162.899993, -88.099899, -81.199897, 0.509000, 2.155900, 1.335000},
    {1603, 1, 0.361900, -0.008000, 0.0, 0.0, 91.399902, 0.0, 1.274000, 0.666899, 1.0},
    {1609, 1, 0.120999, -0.150997, 0.004999, 90.900001, -1.100002, -86.100006, 0.197999, 0.194999, 0.193000},
    {7392, 1, 0.028899, -0.126900, -0.036899, -92.299896, 95.599899, 0.0, 0.062899, 0.047899, 0.041900},
    {19874, 1, 0.032000, -0.079899, -0.014000, 84.399902, 5.099899, 0.0, 3.461899, 3.065900, 4.671999},
    {326, 1, 0.322999, -0.136002, -0.342999, -9.100003, -45.499980, 0.0, 1.0, 1.0, 1.0},
    {1228, 1, 0.0, -0.114900, 0.014000, 2.200000, 33.599998, -89.199897, 1.0, 1.442899, 0.223900},
    {19317, 1, 0.175999, -0.108000, -0.052999, 4.199994, 119.299995, -4.700000, 0.688000, 1.0, 0.695999},
    {19318, 1, 0.175999, -0.108000, -0.052999, 4.199994, 119.299995, -4.700000, 0.688000, 1.0, 0.695999},
    {19319, 1, 0.150000, -0.116999, -0.014999, 4.199994, 119.299995, -4.700000, 0.688000, 1.0, 0.695999},
    {336, 1, -0.125999, -0.142997, -0.130998, 0.0, 47.100002, 0.0, 1.0, 1.0, 1.0},
    {19057, 1, 0.109999, -0.186998, 0.0, 0.0, 85.899986, 0.0, 0.239999, 0.180999, 0.398999},
    {8492, 1, 0.054999, -0.111000, -0.001999, -91.699813, -96.099952, -109.600036, 0.057000, 0.034000, 0.090000},
    {1177, 1, -0.109899, -0.155000, 0.423900, -89.800003, -0.799899, 88.300003, 0.468899, 1.840000, 0.307900},
    {322, 1, -0.008999, -0.183998, 0.082999, 0.0, 69.499992, 0.0, 1.619999, 1.637999, 2.549998},
    {2226, 1, 0.080999, -0.203994, -0.062999, 0.0, 34.5, 0.0, 0.675999, 0.783999, 0.759998},
    {19878, 1, 0.104999, -0.156000, -0.010999, -90.699935, -6.000006, 158.299942, 0.686999, 0.697999, 1.0},
    {2404, 1, 0.050999, -0.107000, -0.040998, 3.0, 56.200027, -6.899995, 0.563998, 0.889998, 0.469998},
    {2405, 1, 0.050999, -0.107000, -0.040998, 3.0, 56.200027, -6.899995, 0.563998, 0.889998, 0.469998},
    {2406, 1, 0.050999, -0.107000, -0.040998, 3.0, 56.200027, -6.899995, 0.563998, 0.889998, 0.469998},
    {2102, 1, 0.043999, -0.155999, -0.076999, 0.0, 31.199995, 0.0, 0.754000, 0.762998, 0.711998},
    {3272, 1, 0.082000, -0.089900, -0.008899, -85.399902, 178.699996, -89.099998, 0.263000, 0.240899, 0.064000},
    {1371, 1, 0.148000, -0.216900, 0.0, 4.099899, 88.0, 0.0, 0.442900, 0.374000, 0.414900},
    {2690, 1, 0.076999, -0.145996, 0.008999, 0.0, 62.5, 0.0, 0.773000, 0.649999, 0.834999},
    {2712, 1, 0.087999, -0.167999, 0.119999, -13.400010, 103.399993, -1.099998, 0.842998, 1.0, 0.982999},
    {2045, 1, 0.052999, -0.109999, -0.039999, 5.400000, -30.800043, -88.699951, 1.0, 1.0, 1.0},
    {7093, 1, 0.0, 0.465900, -0.065899, 0.0, 92.400001, -5.499899, 0.112899, 0.199900, 0.136899},    
    {19578, 1, -0.012900, -0.186900, 0.0, 0.0, 0.0, -24.399999, 1.929900, 3.200000, 4.907000},
    {1607, 1, 0.121899, -0.239899, 0.008899, 87.599998, 21.899999, -91.199996, 0.250900, 0.149900, 0.206000}
};

// === Toys Dragon Vip ===
#define DRAGON_COUNT 3
new DragonToys[DRAGON_COUNT][eToyData] = 
{
    {3528, 2, 0.064000, 0.082999, -0.034000, 0.0, 81.399971, 80.599983, 0.068998, 0.083998, 0.080999},
    {3528, 1, 0.155999, -0.187000, 0.295001, -159.300048, 0.0, 0.0, 0.25, 0.007999, 0.166998},
    {3528, 1, 0.155999, -0.187000, -0.345999, -21.599996, 0.0, 0.0, 0.25, 0.007999, 0.166998}
};

// === Toys Sonic Vip ===
#define SONIC_COUNT 6
new SonicToys[SONIC_COUNT][eToyData] = 
{
    {3100, 2, 0.068000, 0.002000, 0.004000, 82.599998, 0.200000, 99.499900, 3.515899, 3.949899, 4.007900},
    {3100, 2, 0.115000, -0.101899, 0.004000, 80.199996, 147.600006, 99.499900, 2.856899, 1.883900, 4.007900},
    {3100, 2, -0.019899, -0.113899, 0.004000, 84.599998, 128.800003, 99.499900, 2.275899, 1.483899, 3.930900},
    {19094, 2, 0.009899, 0.059000, -0.003000, 178.299896, 7.599899, -85.599899, 0.979900, 0.345899, 0.572000},
    {1254, 2, 0.063000, 0.116899, -0.037900, -17.499900, 144.100006, -2.200000, 0.364899, 0.270900, 0.474900},
    {1254, 2, 0.056000, 0.113899, 0.037900, 17.600000, 18.499900, 9.099900, 0.364899, 0.270900, 0.474900}
};

// === Toys Grinch Vip ===
#define GRINCH_COUNT 7
new GrinchToys[GRINCH_COUNT][eToyData] = 
{
    {19576, 2, 0.153899, 0.008899, 0.008000, 0.0, -89.299896, 176.600006, 2.485899, 2.765000, 3.763000},
    {19570, 2, 0.201000, 0.100900, 0.030899, -89.399803, 13.5, 7.899899, 0.264899, 0.497900, 0.061900},
    {19570, 2, 0.202900, 0.096900, -0.016000, -103.5, 14.399900, -11.800000, 0.268000, 0.513899, 0.061900},
    {19576, 2, 0.099899, 0.035900, 0.004900, 79.599998, -144.299804, -85.499900, 3.509000, 3.006000, 2.914999},
    {19078, 2, 0.296900, 0.0, 0.004900, 176.399993, -176.199905, -51.799900, 0.504899, 0.552900, 0.559000},
    {19576, 1, 0.040899, 0.009899, -0.010900, 13.900099, -91.999702, -160.699798, 5.093900, 4.400000, 7.552999},
    {2788, 1, 0.310900, 0.030899, -0.024900, 84.799896, -88.199996, -89.5, 0.586000, 0.549000, 1.707900}
};

// === Toys Ghost Vip ===
#define GHOST_COUNT 5
new GhostToys[GHOST_COUNT][eToyData] = 
{
    {19200, 1, -0.162900, 0.013899, -0.124899, -99.800003, -178.100006, -173.699905, 5.429900, 2.203900, 2.358900},
    {19200, 1, -0.193900, -0.004900, 0.104000, 94.099899, -178.100006, -173.699905, 5.783899, 2.463900, 2.567899},
    {19200, 1, 0.082000, -0.001000, 0.0, -4.400000, 176.499893, 176.600006, 5.783899, 1.593899, 2.127899},
    {11741, 1, 0.461899, 0.178900, -0.046900, 79.199897, 0.0, -59.799900, 0.247899, 0.486900, 1.0},
    {11741, 1, 0.461899, 0.178900, 0.060899, 95.799896, -5.999899, -117.699996, 0.247899, 0.486900, 1.0}
};

public OnFilterScriptInit()
{
    print("==== [Filterscript Toys] ====");
    print("==> FS Toys Custome Berhasil Load! <==");
    print("==> Script By: Axell <==");
    return 1;
}

public OnFilterScriptExit()
{
    print("==== [Filterscript Toys Unloaded] ====");
    return 1;
}

// === Fungsi Remove dengan nama unique ===
stock RemoveFSToys_AXELL(playerid)
{
    for(new i = 0; i <= 9; i++)
    {
        if(IsPlayerAttachedObjectSlotUsed(playerid, i))
            RemovePlayerAttachedObject(playerid, i);
    }
    return 1;
}

// ==== Fungsi Toys Vip dengan nama unique ====
stock ApplyToySet_AXELL(playerid, setid)
{
    RemoveFSToys_AXELL(playerid);
    switch(setid)
    {
        case 0: // Dragon
        {
            for(new i = 0; i < DRAGON_COUNT; i++)
            {
                SetPlayerAttachedObject(playerid, 0 + i,
                    DragonToys[i][tModel], DragonToys[i][tBone],
                    DragonToys[i][tX], DragonToys[i][tY], DragonToys[i][tZ],
                    DragonToys[i][tRX], DragonToys[i][tRY], DragonToys[i][tRZ],
                    DragonToys[i][tSX], DragonToys[i][tSY], DragonToys[i][tSZ]);
            }
            SendClientMessage(playerid, -1, "{ffff00}===>> Toys Vip Dragon Set berhasil dipasang!");
        }
        case 1: // Sonic
        {
            for(new i = 0; i < SONIC_COUNT; i++)
            {
                SetPlayerAttachedObject(playerid, 0 + i,
                    SonicToys[i][tModel], SonicToys[i][tBone],
                    SonicToys[i][tX], SonicToys[i][tY], SonicToys[i][tZ],
                    SonicToys[i][tRX], SonicToys[i][tRY], SonicToys[i][tRZ],
                    SonicToys[i][tSX], SonicToys[i][tSY], SonicToys[i][tSZ]);
            }
            SendClientMessage(playerid, -1, "{ffff00}===>> Toys Vip Sonic Set berhasil dipasang!");
        }
        case 2: // Grinch
        {
            for(new i = 0; i < GRINCH_COUNT; i++)
            {
                SetPlayerAttachedObject(playerid, 0 + i,
                    GrinchToys[i][tModel], GrinchToys[i][tBone],
                    GrinchToys[i][tX], GrinchToys[i][tY], GrinchToys[i][tZ],
                    GrinchToys[i][tRX], GrinchToys[i][tRY], GrinchToys[i][tRZ],
                    GrinchToys[i][tSX], GrinchToys[i][tSY], GrinchToys[i][tSZ]);
            }
            SendClientMessage(playerid, -1, "{ffff00}===>> Toys Vip Grinch Set berhasil dipasang!");
        }
        case 3: // Ghost
        {
            for(new i = 0; i < GHOST_COUNT; i++)
            {
                SetPlayerAttachedObject(playerid, 0 + i,
                    GhostToys[i][tModel], GhostToys[i][tBone],
                    GhostToys[i][tX], GhostToys[i][tY], GhostToys[i][tZ],
                    GhostToys[i][tRX], GhostToys[i][tRY], GhostToys[i][tRZ],
                    GhostToys[i][tSX], GhostToys[i][tSY], GhostToys[i][tSZ]);
            }
            SendClientMessage(playerid, -1, "{ffff00}===>> Toys Vip Ghost Set berhasil dipasang!");
        }
    }
    return 1;
}

// === Command Text ===
public OnPlayerCommandText(playerid, cmdtext[])
{
    if(!strcmp(cmdtext, "/axp", true))
    {
        ShowPlayerDialog(playerid, 2000, DIALOG_STYLE_LIST, "Menu Toys", 
            "Kepala\nMasker\nTangan\nDada/Neck\nBahu/Pundak\nPunggung/Tas\n{E91E1E}Hide All", 
            "Pilih", "Batal");
        return 1;
    }
    if(!strcmp(cmdtext, "/toysaxp", true))
    {
        ShowPlayerDialog(playerid, 3000, DIALOG_STYLE_LIST, "Toys Vip",
            "Dragon/Naga\nKepla Sonic\nGrinch\nGhost/Hantu",
            "Pilih", "Batal");
        return 1;
    }
    return 0;
}

// === Handler Dialog ===
public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
    if(dialogid == 2000 && response)
    {
        switch(listitem)
        {
            case 0: // Kepala
            {
                ShowPlayerDialog(playerid, 2001, DIALOG_STYLE_LIST, "Toys Kepala",
                    "Piring Kuning\nTopi Pesulap\nTopi Pesulap-2\nTopi Burger\nPelindung Tinju\nTopi Petani\nTopi Penyihir\nHelm Pembangun\nHelm Pink\nHelm Merah\nHelm 1 Warna\nHelm Merah Putih\nTopi Santa\nKepala Ayam\nTopi Polisi\nLabu\nTopi Polisi Cowboy\nKepala Rusa\nTopeng Banteng\nKepala Zombie\nTopi\nHot Dog\nTopi Emas\nTopi Kue\nTopi Pizza\nTopi Rocket\nBaret Merah\nTopi Merah\nHelm SWAT", 
                    "Pilih", "Batal");
            }
            case 1: // masker
            {
                ShowPlayerDialog(playerid, 2002, DIALOG_STYLE_LIST, "Toys Masker", 
                    "Kepala CJ\nTopeng Setan\nAlat Pernafasan\nNVG\nMasker Medis\nJenggot\nTelinga Batman\nTanduk\nKumis\nTopeng Hoki\nTopeng Monyet", 
                    "Pilih", "Batal");
            }
            case 2: // tangan
            {
                ShowPlayerDialog(playerid, 2003, DIALOG_STYLE_LIST, "Toys Tangan",
                    "Remote R/C\nPerisai Abu Abu\nLightSaber (Orange)\nLightSaber (Ungu)\nLightSaber (Kuning)\nLightSaber (Biru)\nLightSaber (Hijau)\nLightSaber (Merah)\nKapak Panjang\nTas Dengan Hati\nJerami",
                    "Pilih", "Batal");
            }
            case 3: // dada
            {
                ShowPlayerDialog(playerid, 2004, DIALOG_STYLE_LIST, "Toys Neck", 
                    "Dolar\nLove (B)\nLove (M)\nKamera\nSilang\nKaleng\nPanah", 
                    "Pilih", "Batal");
            }
            case 4: // Pundak
            {
                ShowPlayerDialog(playerid, 2005, DIALOG_STYLE_LIST, "Toys Pundak", 
                    "Burung\nAyam\nUFO\nBalon (1)\nBalon (2)\nBalon (3)\nBalon (4)\nBalon (5)\nBalon (6)\nBalon (7)\nRusa\nBigSmoke\nPohon Natal (Besar)\nPohon Natal (Kecil)", 
                    "Pilih", "Batal");
            }
            case 5: // backpack/punggung
            {
                ShowPlayerDialog(playerid, 2006, DIALOG_STYLE_LIST, "Toys Punggung/Tas",
                    "Skop\nDolar\nPaket Ilegal\nKotak Kayu\nSekantong Daging\nAir Mancur\nTameng\nKatana\nPedang\nMini Gun\nPenyebur Api\nGergaji\nTongkat\nSayap Lampu\nJubah Emas\nPenyu\nGadis\nRansel (Sabun)\nTongkat Kakek\nPenghalang Jalan\nGitar (Merah)\nGitar (Putih)\nGitar (Hitam)\nTongkat BaseBall\nKado\nSayap (1)\nSayap (2)\nDildo\nBoombox\nSkateBoard\nPapan Luncur (1)\nPapan Luncur (2)\nPapan Luncur (3)\nRadio\nLaba-Laba\nRansel (Kuda nill)\nAlat Pemadam Api\nSapu\nTongkat Berduri\nPermen Hati\nTas Pisang\nLumba-Lumba",
                    "Pilih", "Batal");
            }
            case 6: // Hapus Semua Toys
            {
                RemoveFSToys_AXELL(playerid);
                SendClientMessage(playerid, -1, "[i] {1DD61D}Semua Toys berhasil di Hide!");
            }
        }
    }

    // === Dialog Kepala ===
    if(dialogid == 2001 && response)
    {
        new toyid = listitem;
        if(toyid < sizeof(HeadToys))
        {
            SetPlayerAttachedObject(playerid, 0, 
                HeadToys[toyid][tModel], 
                HeadToys[toyid][tBone],
                HeadToys[toyid][tX], HeadToys[toyid][tY], HeadToys[toyid][tZ],
                HeadToys[toyid][tRX], HeadToys[toyid][tRY], HeadToys[toyid][tRZ],
                HeadToys[toyid][tSX], HeadToys[toyid][tSY], HeadToys[toyid][tSZ]);
            SendClientMessage(playerid, -1, "{A6FF00}==>> Toys Kepala berhasil dipasang!");
        }
    }

    // === Dialog Masker ===
    if(dialogid == 2002 && response)
    {
        new toyid = listitem;
        if(toyid < sizeof(MaskToys))
        {
            SetPlayerAttachedObject(playerid, 1, 
                MaskToys[toyid][tModel], 
                MaskToys[toyid][tBone],
                MaskToys[toyid][tX], MaskToys[toyid][tY], MaskToys[toyid][tZ],
                MaskToys[toyid][tRX], MaskToys[toyid][tRY], MaskToys[toyid][tRZ],
                MaskToys[toyid][tSX], MaskToys[toyid][tSY], MaskToys[toyid][tSZ]);
            SendClientMessage(playerid, -1, "{A6FF00}==>> Toys Masker berhasil dipasang!");
        }
    }

    // === Dialog Tangan ===
    if(dialogid == 2003 && response)
    {
        new toyid = listitem;
        if(toyid < sizeof(HandToys))
        {
            SetPlayerAttachedObject(playerid, 2, 
                HandToys[toyid][tModel], 
                HandToys[toyid][tBone],
                HandToys[toyid][tX], HandToys[toyid][tY], HandToys[toyid][tZ],
                HandToys[toyid][tRX], HandToys[toyid][tRY], HandToys[toyid][tRZ],
                HandToys[toyid][tSX], HandToys[toyid][tSY], HandToys[toyid][tSZ]);
            SendClientMessage(playerid, -1, "{A6FF00}==>> Toys Tangan berhasil dipasang!");
        }
    }

    // === Dialog Dada ===
    if(dialogid == 2004 && response)
    {
        new toyid = listitem;
        if(toyid < sizeof(NeckToys))
        {
            SetPlayerAttachedObject(playerid, 3, 
                NeckToys[toyid][tModel], 
                NeckToys[toyid][tBone],
                NeckToys[toyid][tX], NeckToys[toyid][tY], NeckToys[toyid][tZ],
                NeckToys[toyid][tRX], NeckToys[toyid][tRY], NeckToys[toyid][tRZ],
                NeckToys[toyid][tSX], NeckToys[toyid][tSY], NeckToys[toyid][tSZ]);
            SendClientMessage(playerid, -1, "{A6FF00}==>> Toys Dada berhasil dipasang!");
        }
    }

    // ==== Dialog Pundak ====
    if(dialogid == 2005 && response)
    {
        new toyid = listitem;
        if(toyid < sizeof(PundakToys))
        {
            SetPlayerAttachedObject(playerid, 4, 
                PundakToys[toyid][tModel], 
                PundakToys[toyid][tBone],
                PundakToys[toyid][tX], PundakToys[toyid][tY], PundakToys[toyid][tZ],
                PundakToys[toyid][tRX], PundakToys[toyid][tRY], PundakToys[toyid][tRZ],
                PundakToys[toyid][tSX], PundakToys[toyid][tSY], PundakToys[toyid][tSZ]);
            SendClientMessage(playerid, -1, "{A6FF00}==>> Toys Pundak berhasil dipasang!");
        }
    }

    // ==== Dialog Punggung/Tas ====
    if(dialogid == 2006 && response)
    {
        new toyid = listitem;
        if(toyid < sizeof(BackpToys))
        {
            SetPlayerAttachedObject(playerid, 5, 
                BackpToys[toyid][tModel], 
                BackpToys[toyid][tBone],
                BackpToys[toyid][tX], BackpToys[toyid][tY], BackpToys[toyid][tZ],
                BackpToys[toyid][tRX], BackpToys[toyid][tRY], BackpToys[toyid][tRZ],
                BackpToys[toyid][tSX], BackpToys[toyid][tSY], BackpToys[toyid][tSZ]);
            SendClientMessage(playerid, -1, "{A6FF00}==>> Toys Punggung berhasil dipasang!");
        }
    }

    // ==== Dialog Toys Vip ====
    if(dialogid == 3000 && response)
    {
        ApplyToySet_AXELL(playerid, listitem);
    }
    return 1;
}

public OnPlayerDisconnect(playerid, reason) 
{ 
    RemoveFSToys_AXELL(playerid); 
    return 1; 
}

public OnPlayerSpawn(playerid) 
{ 
    RemoveFSToys_AXELL(playerid); 
    return 1; 
}