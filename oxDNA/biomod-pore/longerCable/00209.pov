// switches for output
#declare DRAW_BASES = 1; // possible values are 0, 1; only relevant for DNA ribbons
#declare DRAW_BASES_TYPE = 3; // possible values are 1, 2, 3; only relevant for DNA ribbons
#declare DRAW_FOG = 0; // set to 1 to enable fog

#include "colors.inc"

#include "transforms.inc"
background { rgb <1, 1, 1>}

#default {
   normal{
       ripples 0.25
       frequency 0.20
       turbulence 0.2
       lambda 5
   }
	finish {
		phong 0.1
		phong_size 40.
	}
}

// original window dimensions: 1024x640


// camera settings

camera {
	sky <0, 0.179814, -0.983701>
	up <0, 0.179814, -0.983701>
	right 1.6 * <1, 0, 0>
	location <35, 94.9851, 44.8844>
	look_at <35, 29.7336, 32.9568>
	direction <0, -65.2515, -11.9276>
	angle 67.0682
}


# declare cpy_camera_pos = <35, 94.9851, 44.8844>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 56
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1.16352, -0.803886>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16352, 0.803886>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<23.850960, 35.282837, 35.178978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.153816, 35.218124, 34.925816>,  <24.335529, 35.179298, 34.773918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.153816, 35.218124, 34.925816>,  <23.850960, 35.282837, 35.178978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.153816, 35.218124, 34.925816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294680, -0.780087, 0.551931,
		-0.583011, -0.604393, -0.542962,
		0.757141, -0.161783, -0.632902,
		24.380959, 35.169590, 34.735947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.962011, 34.408001, 35.070049>,  <23.850960, 35.282837, 35.178978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.962011, 34.408001, 35.070049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.275053, 34.652119, 35.020947>,  <24.462877, 34.798592, 34.991486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.275053, 34.652119, 35.020947>,  <23.962011, 34.408001, 35.070049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.275053, 34.652119, 35.020947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487072, -0.477497, 0.731271,
		0.387678, -0.632085, -0.670950,
		0.782602, 0.610299, -0.122756,
		24.509834, 34.835209, 34.984119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.475954, 33.970375, 35.119507>,  <23.962011, 34.408001, 35.070049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.475954, 33.970375, 35.119507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.623383, 34.336201, 35.186119>,  <24.711840, 34.555695, 35.226086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.623383, 34.336201, 35.186119>,  <24.475954, 33.970375, 35.119507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.623383, 34.336201, 35.186119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664768, -0.384531, 0.640484,
		0.649800, -0.125356, -0.749697,
		0.368570, 0.914561, 0.166535,
		24.733953, 34.610569, 35.236080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.177990, 34.031567, 34.837009>,  <24.475954, 33.970375, 35.119507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.177990, 34.031567, 34.837009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.103495, 34.242611, 35.168537>,  <25.058798, 34.369236, 35.367455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.103495, 34.242611, 35.168537>,  <25.177990, 34.031567, 34.837009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.103495, 34.242611, 35.168537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741586, -0.477871, 0.470839,
		0.644488, 0.702331, -0.302268,
		-0.186240, 0.527608, 0.828821,
		25.047623, 34.400894, 35.417183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.837994, 34.436859, 34.949814>,  <25.177990, 34.031567, 34.837009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.837994, 34.436859, 34.949814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.635500, 34.328041, 35.277157>,  <25.514004, 34.262749, 35.473564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.635500, 34.328041, 35.277157>,  <25.837994, 34.436859, 34.949814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.635500, 34.328041, 35.277157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850299, -0.315834, 0.421000,
		0.143933, 0.908976, 0.391210,
		-0.506236, -0.272049, 0.818361,
		25.483629, 34.246426, 35.522667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.983236, 34.887177, 35.576469>,  <25.837994, 34.436859, 34.949814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.983236, 34.887177, 35.576469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.883774, 34.502506, 35.622677>,  <25.824097, 34.271702, 35.650402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.883774, 34.502506, 35.622677>,  <25.983236, 34.887177, 35.576469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.883774, 34.502506, 35.622677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911576, -0.192034, 0.363527,
		-0.327412, 0.195700, 0.924393,
		-0.248657, -0.961678, 0.115521,
		25.809177, 34.214005, 35.657333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.201576, 34.695732, 36.109081>,  <25.983236, 34.887177, 35.576469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.201576, 34.695732, 36.109081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.192795, 34.327015, 35.954254>,  <26.187527, 34.105785, 35.861359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.192795, 34.327015, 35.954254>,  <26.201576, 34.695732, 36.109081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.192795, 34.327015, 35.954254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902335, -0.184973, 0.389329,
		-0.430477, -0.340718, 0.835824,
		-0.021954, -0.921790, -0.387068,
		26.186209, 34.050476, 35.838135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.884949, 34.039722, 36.407253>,  <26.201576, 34.695732, 36.109081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.884949, 34.039722, 36.407253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.209003, 33.818378, 36.329819>,  <26.403437, 33.685574, 36.283360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.209003, 33.818378, 36.329819>,  <25.884949, 34.039722, 36.407253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.209003, 33.818378, 36.329819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075295, -0.229262, 0.970448,
		-0.581387, -0.800771, -0.144068,
		0.810135, -0.553359, -0.193584,
		26.452044, 33.652370, 36.271744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.695395, 33.314240, 36.577778>,  <25.884949, 34.039722, 36.407253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.695395, 33.314240, 36.577778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.091463, 33.368923, 36.589581>,  <26.329105, 33.401733, 36.596661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.091463, 33.368923, 36.589581>,  <25.695395, 33.314240, 36.577778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.091463, 33.368923, 36.589581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013659, -0.304482, 0.952420,
		0.139184, -0.942657, -0.303357,
		0.990172, 0.136705, 0.029503,
		26.388515, 33.409935, 36.598431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.951563, 32.643761, 36.813061>,  <25.695395, 33.314240, 36.577778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.951563, 32.643761, 36.813061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.272932, 32.876247, 36.864746>,  <26.465754, 33.015739, 36.895760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.272932, 32.876247, 36.864746>,  <25.951563, 32.643761, 36.813061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.272932, 32.876247, 36.864746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093453, -0.337429, 0.936701,
		0.588026, -0.740493, -0.325416,
		0.803425, 0.581216, 0.129216,
		26.513960, 33.050613, 36.903511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.426468, 32.249531, 36.986404>,  <25.951563, 32.643761, 36.813061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.426468, 32.249531, 36.986404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.513348, 32.611153, 37.133652>,  <26.565475, 32.828125, 37.222000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.513348, 32.611153, 37.133652>,  <26.426468, 32.249531, 36.986404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.513348, 32.611153, 37.133652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013151, -0.374376, 0.927184,
		0.976039, -0.206224, -0.069425,
		0.217199, 0.904054, 0.368118,
		26.578506, 32.882370, 37.244087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.025969, 32.235058, 37.428070>,  <26.426468, 32.249531, 36.986404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.025969, 32.235058, 37.428070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.803377, 32.550480, 37.532772>,  <26.669823, 32.739731, 37.595592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.803377, 32.550480, 37.532772>,  <27.025969, 32.235058, 37.428070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.803377, 32.550480, 37.532772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141509, -0.220484, 0.965071,
		0.818721, 0.574084, 0.011107,
		-0.556480, 0.788552, 0.261753,
		26.636433, 32.787045, 37.611298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.417360, 32.639938, 37.856583>,  <27.025969, 32.235058, 37.428070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.417360, 32.639938, 37.856583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.027195, 32.680935, 37.934624>,  <26.793097, 32.705532, 37.981449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.027195, 32.680935, 37.934624>,  <27.417360, 32.639938, 37.856583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.027195, 32.680935, 37.934624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175044, -0.177545, 0.968420,
		0.133896, 0.978761, 0.155239,
		-0.975413, 0.102494, 0.195099,
		26.734571, 32.711681, 37.993153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.326982, 33.035984, 38.450642>,  <27.417360, 32.639938, 37.856583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.326982, 33.035984, 38.450642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.015741, 32.785946, 38.425953>,  <26.828997, 32.635921, 38.411140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.015741, 32.785946, 38.425953>,  <27.326982, 33.035984, 38.450642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.015741, 32.785946, 38.425953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103640, -0.224676, 0.968906,
		-0.619530, 0.747510, 0.239606,
		-0.778101, -0.625100, -0.061722,
		26.782310, 32.598415, 38.407436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.651581, 33.215408, 38.232689>,  <27.326982, 33.035984, 38.450642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.651581, 33.215408, 38.232689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.456808, 33.564133, 38.254040>,  <26.339945, 33.773365, 38.266850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.456808, 33.564133, 38.254040>,  <26.651581, 33.215408, 38.232689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.456808, 33.564133, 38.254040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873103, 0.484135, 0.057486,
		0.024276, 0.074593, -0.996919,
		-0.486931, 0.871808, 0.053375,
		26.310728, 33.825676, 38.270054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.172375, 33.613308, 37.897327>,  <26.651581, 33.215408, 38.232689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.172375, 33.613308, 37.897327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.922470, 33.857506, 38.092041>,  <26.772528, 34.004025, 38.208870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.922470, 33.857506, 38.092041>,  <27.172375, 33.613308, 37.897327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.922470, 33.857506, 38.092041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731413, 0.675815, 0.091158,
		-0.273327, 0.412996, -0.868750,
		-0.624762, 0.610499, 0.486788,
		26.735041, 34.040657, 38.238079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.739285, 34.062241, 37.606140>,  <27.172375, 33.613308, 37.897327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.739285, 34.062241, 37.606140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.683121, 33.680450, 37.500870>,  <26.649422, 33.451378, 37.437706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.683121, 33.680450, 37.500870>,  <26.739285, 34.062241, 37.606140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.683121, 33.680450, 37.500870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483691, 0.165804, -0.859390,
		0.863902, -0.247965, 0.438391,
		-0.140411, -0.954475, -0.263177,
		26.640997, 33.394108, 37.421917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.408112, 34.018032, 37.055367>,  <26.739285, 34.062241, 37.606140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.408112, 34.018032, 37.055367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.141745, 33.719940, 37.041618>,  <26.981924, 33.541084, 37.033367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.141745, 33.719940, 37.041618>,  <27.408112, 34.018032, 37.055367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.141745, 33.719940, 37.041618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007315, 0.052595, -0.998589,
		0.745988, -0.664728, -0.040475,
		-0.665919, -0.745232, -0.034373,
		26.941969, 33.496372, 37.031307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.746759, 33.555565, 36.699276>,  <27.408112, 34.018032, 37.055367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.746759, 33.555565, 36.699276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.349930, 33.517147, 36.666859>,  <27.111832, 33.494095, 36.647408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.349930, 33.517147, 36.666859>,  <27.746759, 33.555565, 36.699276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.349930, 33.517147, 36.666859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080705, 0.007436, -0.996710,
		0.096335, -0.995349, 0.000374,
		-0.992072, -0.096048, -0.081046,
		27.052309, 33.488335, 36.642544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.533245, 33.036011, 36.172974>,  <27.746759, 33.555565, 36.699276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.533245, 33.036011, 36.172974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.211121, 33.270657, 36.207291>,  <27.017845, 33.411442, 36.227882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.211121, 33.270657, 36.207291>,  <27.533245, 33.036011, 36.172974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.211121, 33.270657, 36.207291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092917, 0.018036, -0.995511,
		-0.585524, -0.809669, 0.039981,
		-0.805313, 0.586610, 0.085792,
		26.969526, 33.446640, 36.233028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.898743, 32.740086, 35.820061>,  <27.533245, 33.036011, 36.172974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.898743, 32.740086, 35.820061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.880531, 33.139412, 35.834408>,  <26.869604, 33.379009, 35.843018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.880531, 33.139412, 35.834408>,  <26.898743, 32.740086, 35.820061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.880531, 33.139412, 35.834408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240266, 0.023908, -0.970412,
		-0.969639, -0.052799, 0.238774,
		-0.045528, 0.998319, 0.035868,
		26.866873, 33.438908, 35.845169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.200825, 32.996731, 35.661171>,  <26.898743, 32.740086, 35.820061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.200825, 32.996731, 35.661171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.478006, 33.269772, 35.568333>,  <26.644316, 33.433598, 35.512630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.478006, 33.269772, 35.568333>,  <26.200825, 32.996731, 35.661171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.478006, 33.269772, 35.568333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354129, 0.041841, -0.934260,
		-0.628020, 0.729589, 0.270724,
		0.692953, 0.682605, -0.232092,
		26.685892, 33.474552, 35.498707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.810080, 33.454353, 35.233425>,  <26.200825, 32.996731, 35.661171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.810080, 33.454353, 35.233425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.200916, 33.485229, 35.154095>,  <26.435419, 33.503757, 35.106499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.200916, 33.485229, 35.154095>,  <25.810080, 33.454353, 35.233425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.200916, 33.485229, 35.154095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199654, 0.009860, -0.979817,
		-0.073679, 0.996967, 0.025046,
		0.977092, 0.077193, -0.198322,
		26.494043, 33.508389, 35.094597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.809067, 33.655365, 34.605057>,  <25.810080, 33.454353, 35.233425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.809067, 33.655365, 34.605057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.195072, 33.551594, 34.620289>,  <26.426676, 33.489330, 34.629429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.195072, 33.551594, 34.620289>,  <25.809067, 33.655365, 34.605057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.195072, 33.551594, 34.620289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035671, -0.014000, -0.999265,
		0.259770, 0.965661, -0.004256,
		0.965011, -0.259428, 0.038083,
		26.484575, 33.473766, 34.631714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.128956, 34.184406, 34.285309>,  <25.809067, 33.655365, 34.605057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.128956, 34.184406, 34.285309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.303902, 33.824833, 34.275322>,  <26.408869, 33.609089, 34.269329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.303902, 33.824833, 34.275322>,  <26.128956, 34.184406, 34.285309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.303902, 33.824833, 34.275322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076921, -0.009729, -0.996990,
		0.895989, 0.437968, -0.073403,
		0.437364, -0.898938, -0.024972,
		26.435110, 33.555153, 34.267830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.514900, 34.147362, 33.667843>,  <26.128956, 34.184406, 34.285309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.514900, 34.147362, 33.667843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.484964, 33.766521, 33.786434>,  <26.467003, 33.538017, 33.857590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.484964, 33.766521, 33.786434>,  <26.514900, 34.147362, 33.667843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.484964, 33.766521, 33.786434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256207, -0.268970, -0.928447,
		0.963720, -0.145445, -0.223805,
		-0.074842, -0.952103, 0.296476,
		26.462511, 33.480892, 33.875378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.964441, 33.629040, 33.177868>,  <26.514900, 34.147362, 33.667843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.964441, 33.629040, 33.177868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.666386, 33.450840, 33.376381>,  <26.487553, 33.343922, 33.495491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.666386, 33.450840, 33.376381>,  <26.964441, 33.629040, 33.177868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.666386, 33.450840, 33.376381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254466, -0.497932, -0.829042,
		0.616454, -0.744039, 0.257663,
		-0.745139, -0.445500, 0.496285,
		26.442844, 33.317188, 33.525265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.272562, 34.137054, 32.613979>,  <26.964441, 33.629040, 33.177868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.272562, 34.137054, 32.613979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.657087, 34.049881, 32.681370>,  <27.887802, 33.997578, 32.721806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.657087, 34.049881, 32.681370>,  <27.272562, 34.137054, 32.613979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.657087, 34.049881, 32.681370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031904, -0.519417, -0.853925,
		0.273612, 0.826263, -0.492368,
		0.961311, -0.217935, 0.168480,
		27.945480, 33.984501, 32.731915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.696117, 34.237274, 31.935324>,  <27.272562, 34.137054, 32.613979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.696117, 34.237274, 31.935324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.887152, 33.999180, 32.193813>,  <28.001772, 33.856323, 32.348907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.887152, 33.999180, 32.193813>,  <27.696117, 34.237274, 31.935324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.887152, 33.999180, 32.193813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173069, -0.657380, -0.733415,
		0.861370, 0.462111, -0.210939,
		0.477586, -0.595235, 0.646225,
		28.030428, 33.820610, 32.387680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.207815, 33.940147, 31.561962>,  <27.696117, 34.237274, 31.935324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.207815, 33.940147, 31.561962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.169937, 33.684513, 31.867277>,  <28.147211, 33.531132, 32.050465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.169937, 33.684513, 31.867277>,  <28.207815, 33.940147, 31.561962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.169937, 33.684513, 31.867277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077752, -0.769137, -0.634337,
		0.992465, -0.000721, 0.122522,
		-0.094693, -0.639084, 0.763286,
		28.141529, 33.492786, 32.096264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.730555, 33.522644, 31.554398>,  <28.207815, 33.940147, 31.561962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.730555, 33.522644, 31.554398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.433422, 33.329407, 31.739796>,  <28.255142, 33.213467, 31.851034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.433422, 33.329407, 31.739796>,  <28.730555, 33.522644, 31.554398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.433422, 33.329407, 31.739796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122140, -0.778492, -0.615656,
		0.658244, -0.400716, 0.637292,
		-0.742830, -0.483091, 0.463494,
		28.210573, 33.184479, 31.878843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.948368, 32.872944, 31.695999>,  <28.730555, 33.522644, 31.554398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.948368, 32.872944, 31.695999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.549967, 32.870327, 31.660374>,  <28.310926, 32.868755, 31.638998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.549967, 32.870327, 31.660374>,  <28.948368, 32.872944, 31.695999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.549967, 32.870327, 31.660374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063784, -0.750136, -0.658201,
		-0.062502, -0.661251, 0.747556,
		-0.996005, -0.006543, -0.089063,
		28.251165, 32.868362, 31.633656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.840105, 32.278606, 31.337872>,  <28.948368, 32.872944, 31.695999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.840105, 32.278606, 31.337872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.467276, 32.423275, 31.346178>,  <28.243578, 32.510078, 31.351162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.467276, 32.423275, 31.346178>,  <28.840105, 32.278606, 31.337872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.467276, 32.423275, 31.346178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234230, -0.557921, -0.796153,
		-0.276364, -0.746937, 0.604738,
		-0.932073, 0.361676, 0.020766,
		28.187654, 32.531776, 31.352407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.346909, 31.677273, 31.385210>,  <28.840105, 32.278606, 31.337872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.346909, 31.677273, 31.385210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.185696, 31.994249, 31.202080>,  <28.088968, 32.184437, 31.092201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.185696, 31.994249, 31.202080>,  <28.346909, 31.677273, 31.385210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.185696, 31.994249, 31.202080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197414, -0.563754, -0.802004,
		-0.893641, -0.232851, 0.383649,
		-0.403030, 0.792441, -0.457825,
		28.064787, 32.231983, 31.064732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.648491, 31.602057, 31.254988>,  <28.346909, 31.677273, 31.385210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.648491, 31.602057, 31.254988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.852957, 31.796453, 30.971432>,  <27.975636, 31.913092, 30.801298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.852957, 31.796453, 30.971432>,  <27.648491, 31.602057, 31.254988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.852957, 31.796453, 30.971432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281174, -0.684845, -0.672256,
		-0.812189, 0.542955, -0.213421,
		0.511165, 0.485991, -0.708889,
		28.006306, 31.942251, 30.758764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.179106, 31.792017, 30.851702>,  <27.648491, 31.602057, 31.254988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.179106, 31.792017, 30.851702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.533207, 31.723034, 30.678919>,  <27.745668, 31.681644, 30.575249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.533207, 31.723034, 30.678919>,  <27.179106, 31.792017, 30.851702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.533207, 31.723034, 30.678919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416984, -0.705690, -0.572823,
		-0.206040, 0.687212, -0.696626,
		0.885253, -0.172458, -0.431956,
		27.798782, 31.671297, 30.549332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.754107, 31.794653, 31.450565>,  <27.179106, 31.792017, 30.851702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.754107, 31.794653, 31.450565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.371122, 31.788740, 31.565838>,  <26.141331, 31.785192, 31.635002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.371122, 31.788740, 31.565838>,  <26.754107, 31.794653, 31.450565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.371122, 31.788740, 31.565838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267514, 0.328946, 0.905666,
		-0.108182, 0.944233, -0.310999,
		-0.957462, -0.014780, 0.288182,
		26.083883, 31.784306, 31.652292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.414288, 32.504688, 31.711826>,  <26.754107, 31.794653, 31.450565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.414288, 32.504688, 31.711826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.274195, 32.170528, 31.881269>,  <26.190140, 31.970032, 31.982935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.274195, 32.170528, 31.881269>,  <26.414288, 32.504688, 31.711826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.274195, 32.170528, 31.881269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363839, 0.295404, 0.883379,
		-0.863110, 0.463513, 0.200491,
		-0.350231, -0.835400, 0.423610,
		26.169125, 31.919909, 32.008354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.968973, 32.726391, 31.315708>,  <26.414288, 32.504688, 31.711826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.968973, 32.726391, 31.315708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.363518, 32.673855, 31.355394>,  <27.600245, 32.642334, 31.379206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.363518, 32.673855, 31.355394>,  <26.968973, 32.726391, 31.315708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.363518, 32.673855, 31.355394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001401, 0.609434, 0.792836,
		-0.164595, -0.781882, 0.601305,
		0.986360, -0.131339, 0.099215,
		27.659426, 32.634453, 31.385159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.071995, 32.562813, 32.012070>,  <26.968973, 32.726391, 31.315708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.071995, 32.562813, 32.012070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.425720, 32.685856, 31.871574>,  <27.637955, 32.759682, 31.787277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.425720, 32.685856, 31.871574>,  <27.071995, 32.562813, 32.012070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.425720, 32.685856, 31.871574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091351, 0.623750, 0.776267,
		0.457873, -0.718548, 0.523489,
		0.884312, 0.307610, -0.351238,
		27.691013, 32.778141, 31.766203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.418447, 32.552166, 32.698215>,  <27.071995, 32.562813, 32.012070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.418447, 32.552166, 32.698215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.667913, 32.720760, 32.434887>,  <27.817593, 32.821918, 32.276890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.667913, 32.720760, 32.434887>,  <27.418447, 32.552166, 32.698215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.667913, 32.720760, 32.434887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377203, 0.575370, 0.725718,
		0.684661, -0.700927, 0.199852,
		0.623664, 0.421486, -0.658325,
		27.855013, 32.847206, 32.237389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.009785, 32.598991, 33.063622>,  <27.418447, 32.552166, 32.698215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.009785, 32.598991, 33.063622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.025854, 32.879734, 32.779144>,  <28.035496, 33.048180, 32.608459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.025854, 32.879734, 32.779144>,  <28.009785, 32.598991, 33.063622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.025854, 32.879734, 32.779144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306530, 0.668786, 0.677322,
		0.951013, -0.245212, -0.188270,
		0.040176, 0.701852, -0.711189,
		28.037907, 33.090290, 32.565788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.687004, 32.996426, 33.153534>,  <28.009785, 32.598991, 33.063622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.687004, 32.996426, 33.153534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.401627, 33.215878, 32.979176>,  <28.230400, 33.347549, 32.874561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.401627, 33.215878, 32.979176>,  <28.687004, 32.996426, 33.153534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.401627, 33.215878, 32.979176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275802, 0.791728, 0.545068,
		0.644154, 0.268653, -0.716164,
		-0.713442, 0.548627, -0.435900,
		28.187593, 33.380466, 32.848404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.961647, 33.616970, 32.817612>,  <28.687004, 32.996426, 33.153534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.961647, 33.616970, 32.817612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.589993, 33.650631, 32.961624>,  <28.366999, 33.670826, 33.048031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.589993, 33.650631, 32.961624>,  <28.961647, 33.616970, 32.817612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.589993, 33.650631, 32.961624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247656, 0.864684, 0.437023,
		-0.274534, 0.495218, -0.824251,
		-0.929138, 0.084153, 0.360029,
		28.311251, 33.675877, 33.069633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.805958, 34.263245, 32.586300>,  <28.961647, 33.616970, 32.817612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.805958, 34.263245, 32.586300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.577986, 34.148434, 32.894272>,  <28.441202, 34.079548, 33.079056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.577986, 34.148434, 32.894272>,  <28.805958, 34.263245, 32.586300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.577986, 34.148434, 32.894272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434110, 0.690385, 0.578720,
		-0.697659, 0.664065, -0.268867,
		-0.569929, -0.287031, 0.769931,
		28.407007, 34.062325, 33.125252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.257381, 34.817909, 32.875011>,  <28.805958, 34.263245, 32.586300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.257381, 34.817909, 32.875011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.393190, 34.572712, 33.160381>,  <28.474676, 34.425594, 33.331604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.393190, 34.572712, 33.160381>,  <28.257381, 34.817909, 32.875011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.393190, 34.572712, 33.160381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301326, 0.789385, 0.534858,
		-0.891027, 0.033378, 0.452722,
		0.339520, -0.612990, 0.713421,
		28.495047, 34.388817, 33.374409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.216156, 35.188568, 33.601959>,  <28.257381, 34.817909, 32.875011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.216156, 35.188568, 33.601959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.522463, 34.932255, 33.623856>,  <28.706247, 34.778465, 33.636993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.522463, 34.932255, 33.623856>,  <28.216156, 35.188568, 33.601959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.522463, 34.932255, 33.623856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560595, 0.706795, 0.431480,
		-0.315174, -0.299726, 0.900460,
		0.765766, -0.640785, 0.054739,
		28.752193, 34.740021, 33.640278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.410805, 35.239395, 34.302162>,  <28.216156, 35.188568, 33.601959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.410805, 35.239395, 34.302162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.676622, 35.146999, 34.017902>,  <28.836113, 35.091564, 33.847347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.676622, 35.146999, 34.017902>,  <28.410805, 35.239395, 34.302162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.676622, 35.146999, 34.017902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480080, 0.860761, 0.169155,
		0.572630, -0.453581, 0.682905,
		0.664543, -0.230986, -0.710653,
		28.875986, 35.077705, 33.804707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.022272, 35.119576, 34.608528>,  <28.410805, 35.239395, 34.302162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.022272, 35.119576, 34.608528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.077559, 35.231159, 34.228409>,  <29.110731, 35.298111, 34.000336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.077559, 35.231159, 34.228409>,  <29.022272, 35.119576, 34.608528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.077559, 35.231159, 34.228409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504557, 0.805829, 0.309938,
		0.852243, -0.522321, -0.029374,
		0.138216, 0.278963, -0.950303,
		29.119024, 35.314850, 33.943317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.822351, 35.231117, 34.507385>,  <29.022272, 35.119576, 34.608528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.822351, 35.231117, 34.507385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.585989, 35.476089, 34.297333>,  <29.444172, 35.623074, 34.171303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.585989, 35.476089, 34.297333>,  <29.822351, 35.231117, 34.507385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.585989, 35.476089, 34.297333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557701, 0.780444, 0.282625,
		0.582922, -0.125860, -0.802721,
		-0.590907, 0.612427, -0.525130,
		29.408716, 35.659817, 34.139793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.125668, 35.432953, 33.931904>,  <29.822351, 35.231117, 34.507385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.125668, 35.432953, 33.931904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.879055, 35.741570, 33.994648>,  <29.731087, 35.926739, 34.032295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.879055, 35.741570, 33.994648>,  <30.125668, 35.432953, 33.931904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.879055, 35.741570, 33.994648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785722, 0.615666, 0.059978,
		-0.050298, 0.160227, -0.985798,
		-0.616532, 0.771546, 0.156861,
		29.694096, 35.973034, 34.041706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.272556, 36.007710, 33.489914>,  <30.125668, 35.432953, 33.931904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.272556, 36.007710, 33.489914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.078110, 36.155529, 33.806679>,  <29.961441, 36.244221, 33.996738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.078110, 36.155529, 33.806679>,  <30.272556, 36.007710, 33.489914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.078110, 36.155529, 33.806679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790694, 0.571896, 0.218492,
		-0.372148, 0.732372, -0.570208,
		-0.486117, 0.369548, 0.791912,
		29.932274, 36.266392, 34.044250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.295813, 36.791325, 33.622574>,  <30.272556, 36.007710, 33.489914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.295813, 36.791325, 33.622574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.221664, 36.635567, 33.983463>,  <30.177176, 36.542114, 34.199997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.221664, 36.635567, 33.983463>,  <30.295813, 36.791325, 33.622574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.221664, 36.635567, 33.983463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615871, 0.669408, 0.415446,
		-0.765729, 0.632666, 0.115726,
		-0.185371, -0.389391, 0.902226,
		30.166054, 36.518749, 34.254131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.218458, 37.334084, 34.159317>,  <30.295813, 36.791325, 33.622574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.218458, 37.334084, 34.159317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.352207, 36.984795, 34.301121>,  <30.432457, 36.775223, 34.386204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.352207, 36.984795, 34.301121>,  <30.218458, 37.334084, 34.159317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.352207, 36.984795, 34.301121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705740, 0.481303, 0.519883,
		-0.624601, 0.076361, 0.777202,
		0.334371, -0.873222, 0.354513,
		30.452518, 36.722828, 34.407475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.827421, 37.988258, 34.176064>,  <30.218458, 37.334084, 34.159317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.827421, 37.988258, 34.176064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.225931, 37.963745, 34.151783>,  <31.465036, 37.949039, 34.137215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.225931, 37.963745, 34.151783>,  <30.827421, 37.988258, 34.176064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.225931, 37.963745, 34.151783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075362, 0.276061, 0.958181,
		-0.041962, -0.959184, 0.279651,
		0.996273, -0.061282, -0.060702,
		31.524813, 37.945362, 34.133572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.997894, 37.776382, 34.922424>,  <30.827421, 37.988258, 34.176064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.997894, 37.776382, 34.922424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.351215, 37.889126, 34.772579>,  <31.563208, 37.956772, 34.682671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.351215, 37.889126, 34.772579>,  <30.997894, 37.776382, 34.922424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.351215, 37.889126, 34.772579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264572, 0.359958, 0.894668,
		0.387019, -0.889372, 0.243378,
		0.883299, 0.281862, -0.374614,
		31.616205, 37.973682, 34.660194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.377428, 37.791416, 35.563568>,  <30.997894, 37.776382, 34.922424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.377428, 37.791416, 35.563568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.625494, 37.964573, 35.301880>,  <31.774334, 38.068466, 35.144867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.625494, 37.964573, 35.301880>,  <31.377428, 37.791416, 35.563568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.625494, 37.964573, 35.301880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393240, 0.550065, 0.736744,
		0.678791, -0.714168, 0.170901,
		0.620165, 0.432890, -0.654218,
		31.811544, 38.094440, 35.105614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.083893, 37.647209, 35.786686>,  <31.377428, 37.791416, 35.563568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.083893, 37.647209, 35.786686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.044285, 37.985947, 35.577667>,  <32.020519, 38.189190, 35.452255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.044285, 37.985947, 35.577667>,  <32.083893, 37.647209, 35.786686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.044285, 37.985947, 35.577667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321801, 0.524163, 0.788478,
		0.941615, -0.090078, -0.324419,
		-0.099024, 0.846841, -0.522547,
		32.014576, 38.239998, 35.420902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.689205, 37.958363, 35.993122>,  <32.083893, 37.647209, 35.786686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.689205, 37.958363, 35.993122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.450054, 38.233715, 35.828846>,  <32.306564, 38.398926, 35.730282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.450054, 38.233715, 35.828846>,  <32.689205, 37.958363, 35.993122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.450054, 38.233715, 35.828846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205527, 0.626867, 0.751529,
		0.774791, 0.364915, -0.516272,
		-0.597878, 0.688386, -0.410691,
		32.270691, 38.440231, 35.705639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.035480, 38.668781, 35.738663>,  <32.689205, 37.958363, 35.993122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.035480, 38.668781, 35.738663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.650665, 38.681293, 35.847111>,  <32.419777, 38.688801, 35.912178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.650665, 38.681293, 35.847111>,  <33.035480, 38.668781, 35.738663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.650665, 38.681293, 35.847111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239336, 0.574100, 0.783025,
		-0.131154, 0.818188, -0.559793,
		-0.962038, 0.031282, 0.271117,
		32.362053, 38.690678, 35.928444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.621880, 39.365143, 35.785603>,  <33.035480, 38.668781, 35.738663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.621880, 39.365143, 35.785603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.684765, 39.371353, 35.390625>,  <32.722496, 39.375080, 35.153641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.684765, 39.371353, 35.390625>,  <32.621880, 39.365143, 35.785603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.684765, 39.371353, 35.390625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416450, -0.905584, -0.080545,
		-0.895463, 0.423883, -0.135905,
		0.157215, 0.015528, -0.987442,
		32.731930, 39.376011, 35.094391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.943089, 39.201717, 35.306675>,  <32.621880, 39.365143, 35.785603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.943089, 39.201717, 35.306675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.295666, 39.106205, 35.143684>,  <32.507214, 39.048897, 35.045891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.295666, 39.106205, 35.143684>,  <31.943089, 39.201717, 35.306675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.295666, 39.106205, 35.143684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258150, -0.966074, 0.007702,
		-0.395496, 0.098402, -0.913181,
		0.881443, -0.238784, -0.407481,
		32.560097, 39.034569, 35.021439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.131252, 39.205761, 34.613743>,  <31.943089, 39.201717, 35.306675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.131252, 39.205761, 34.613743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.139751, 38.904686, 34.876953>,  <32.144852, 38.724041, 35.034882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.139751, 38.904686, 34.876953>,  <32.131252, 39.205761, 34.613743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.139751, 38.904686, 34.876953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041484, -0.658276, -0.751633,
		0.998913, -0.011327, -0.045212,
		0.021248, -0.752692, 0.658030,
		32.146126, 38.678879, 35.074364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.555424, 38.735420, 34.310871>,  <32.131252, 39.205761, 34.613743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.555424, 38.735420, 34.310871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.344212, 38.517399, 34.571362>,  <32.217484, 38.386585, 34.727657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.344212, 38.517399, 34.571362>,  <32.555424, 38.735420, 34.310871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.344212, 38.517399, 34.571362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177477, -0.679089, -0.712278,
		0.830474, -0.491681, 0.261844,
		-0.528029, -0.545057, 0.651229,
		32.185802, 38.353882, 34.766731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.796448, 38.152126, 34.269672>,  <32.555424, 38.735420, 34.310871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.796448, 38.152126, 34.269672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.413006, 38.124695, 34.380211>,  <32.182941, 38.108234, 34.446533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.413006, 38.124695, 34.380211>,  <32.796448, 38.152126, 34.269672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.413006, 38.124695, 34.380211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170848, -0.637861, -0.750962,
		0.227771, -0.767092, 0.599743,
		-0.958609, -0.068582, 0.276342,
		32.125423, 38.104122, 34.463112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.730438, 37.446064, 34.283504>,  <32.796448, 38.152126, 34.269672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.730438, 37.446064, 34.283504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.388233, 37.640953, 34.213402>,  <32.182911, 37.757885, 34.171341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.388233, 37.640953, 34.213402>,  <32.730438, 37.446064, 34.283504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.388233, 37.640953, 34.213402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039678, -0.399168, -0.916019,
		-0.516260, -0.776711, 0.360826,
		-0.855512, 0.487220, -0.175256,
		32.131580, 37.787117, 34.160824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.169365, 37.011829, 34.079311>,  <32.730438, 37.446064, 34.283504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.169365, 37.011829, 34.079311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.051460, 37.349308, 33.899849>,  <31.980719, 37.551796, 33.792171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.051460, 37.349308, 33.899849>,  <32.169365, 37.011829, 34.079311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.051460, 37.349308, 33.899849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012891, -0.472985, -0.880976,
		-0.955484, -0.253894, 0.150293,
		-0.294761, 0.843696, -0.448656,
		31.963032, 37.602417, 33.765251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.472206, 36.950714, 33.779022>,  <32.169365, 37.011829, 34.079311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.472206, 36.950714, 33.779022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.695393, 37.188602, 33.547512>,  <31.829304, 37.331337, 33.408607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.695393, 37.188602, 33.547512>,  <31.472206, 36.950714, 33.779022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.695393, 37.188602, 33.547512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099722, -0.644327, -0.758220,
		-0.823851, 0.480777, -0.300205,
		0.557965, 0.594723, -0.578774,
		31.862782, 37.367020, 33.373878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.057411, 37.126785, 33.209370>,  <31.472206, 36.950714, 33.779022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.057411, 37.126785, 33.209370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.449265, 37.166946, 33.139816>,  <31.684378, 37.191044, 33.098083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.449265, 37.166946, 33.139816>,  <31.057411, 37.126785, 33.209370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.449265, 37.166946, 33.139816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107824, -0.467491, -0.877398,
		-0.169381, 0.878278, -0.447144,
		0.979635, 0.100402, -0.173884,
		31.743155, 37.197067, 33.087650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.027462, 37.133667, 32.493828>,  <31.057411, 37.126785, 33.209370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.027462, 37.133667, 32.493828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.409468, 37.052887, 32.580700>,  <31.638670, 37.004417, 32.632824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.409468, 37.052887, 32.580700>,  <31.027462, 37.133667, 32.493828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.409468, 37.052887, 32.580700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028209, -0.667144, -0.744395,
		0.295221, 0.717032, -0.631434,
		0.955012, -0.201949, 0.217181,
		31.695971, 36.992302, 32.645855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.301920, 36.945663, 31.830088>,  <31.027462, 37.133667, 32.493828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.301920, 36.945663, 31.830088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.566650, 36.806946, 32.095936>,  <31.725489, 36.723717, 32.255444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.566650, 36.806946, 32.095936>,  <31.301920, 36.945663, 31.830088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.566650, 36.806946, 32.095936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349842, -0.641229, -0.682961,
		0.663022, 0.684513, -0.303058,
		0.661825, -0.346795, 0.664620,
		31.765198, 36.702908, 32.295322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.927753, 36.963070, 31.493919>,  <31.301920, 36.945663, 31.830088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.927753, 36.963070, 31.493919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.992279, 36.701172, 31.789293>,  <32.030994, 36.544033, 31.966516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.992279, 36.701172, 31.789293>,  <31.927753, 36.963070, 31.493919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.992279, 36.701172, 31.789293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273583, -0.689240, -0.670896,
		0.948225, 0.310246, 0.067945,
		0.161313, -0.654749, 0.738432,
		32.040672, 36.504745, 32.010822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.579216, 36.626419, 31.459274>,  <31.927753, 36.963070, 31.493919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.579216, 36.626419, 31.459274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.367821, 36.379997, 31.692913>,  <32.240982, 36.232143, 31.833097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.367821, 36.379997, 31.692913>,  <32.579216, 36.626419, 31.459274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.367821, 36.379997, 31.692913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113252, -0.733045, -0.670686,
		0.841352, -0.288299, 0.457176,
		-0.528488, -0.616059, 0.584098,
		32.209274, 36.195179, 31.868143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.983654, 36.056873, 31.575220>,  <32.579216, 36.626419, 31.459274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.983654, 36.056873, 31.575220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.624626, 35.899555, 31.654902>,  <32.409210, 35.805164, 31.702711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.624626, 35.899555, 31.654902>,  <32.983654, 36.056873, 31.575220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.624626, 35.899555, 31.654902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241765, -0.816949, -0.523588,
		0.368666, -0.421797, 0.828356,
		-0.897572, -0.393297, 0.199205,
		32.355354, 35.781567, 31.714663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.119686, 35.328239, 31.562679>,  <32.983654, 36.056873, 31.575220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.119686, 35.328239, 31.562679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.724239, 35.370659, 31.519974>,  <32.486973, 35.396111, 31.494350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.724239, 35.370659, 31.519974>,  <33.119686, 35.328239, 31.562679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.724239, 35.370659, 31.519974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012113, -0.763258, -0.645981,
		-0.149993, -0.637331, 0.755851,
		-0.988613, 0.106048, -0.106763,
		32.427654, 35.402473, 31.487946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.993568, 34.687840, 31.442322>,  <33.119686, 35.328239, 31.562679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.993568, 34.687840, 31.442322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.661419, 34.869762, 31.313551>,  <32.462132, 34.978916, 31.236288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.661419, 34.869762, 31.313551>,  <32.993568, 34.687840, 31.442322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.661419, 34.869762, 31.313551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108421, -0.698585, -0.707265,
		-0.546559, -0.552390, 0.629395,
		-0.830372, 0.454802, -0.321927,
		32.412308, 35.006203, 31.216972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.491951, 34.184219, 31.485561>,  <32.993568, 34.687840, 31.442322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.491951, 34.184219, 31.485561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.419388, 34.465729, 31.210812>,  <32.375851, 34.634636, 31.045961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.419388, 34.465729, 31.210812>,  <32.491951, 34.184219, 31.485561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.419388, 34.465729, 31.210812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107737, -0.680034, -0.725222,
		-0.977488, -0.205565, 0.047542,
		-0.181410, 0.703773, -0.686872,
		32.364964, 34.676861, 31.004749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.202106, 33.811073, 30.951754>,  <32.491951, 34.184219, 31.485561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.202106, 33.811073, 30.951754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.267586, 34.155567, 30.759306>,  <32.306873, 34.362263, 30.643837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.267586, 34.155567, 30.759306>,  <32.202106, 33.811073, 30.951754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.267586, 34.155567, 30.759306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286749, -0.508181, -0.812113,
		-0.943917, -0.005023, -0.330144,
		0.163694, 0.861236, -0.481121,
		32.316692, 34.413937, 30.614969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.949747, 33.630875, 30.342916>,  <32.202106, 33.811073, 30.951754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.949747, 33.630875, 30.342916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.188301, 33.947277, 30.288311>,  <32.331432, 34.137119, 30.255548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.188301, 33.947277, 30.288311>,  <31.949747, 33.630875, 30.342916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.188301, 33.947277, 30.288311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290540, -0.371258, -0.881904,
		-0.748271, 0.486293, -0.451231,
		0.596387, 0.791004, -0.136514,
		32.367218, 34.184578, 30.247356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.832632, 33.821373, 29.679733>,  <31.949747, 33.630875, 30.342916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.832632, 33.821373, 29.679733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.182545, 33.999054, 29.757130>,  <32.392494, 34.105663, 29.803568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.182545, 33.999054, 29.757130>,  <31.832632, 33.821373, 29.679733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.182545, 33.999054, 29.757130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282621, -0.143435, -0.948447,
		-0.393549, 0.884370, -0.251015,
		0.874783, 0.444203, 0.193493,
		32.444981, 34.132317, 29.815178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.847900, 34.455372, 29.265036>,  <31.832632, 33.821373, 29.679733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.847900, 34.455372, 29.265036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.209347, 34.308422, 29.353136>,  <32.426216, 34.220253, 29.405996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.209347, 34.308422, 29.353136>,  <31.847900, 34.455372, 29.265036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.209347, 34.308422, 29.353136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245927, 0.023955, -0.968992,
		0.350708, 0.929764, 0.111993,
		0.903617, -0.367376, 0.220253,
		32.480431, 34.198208, 29.419212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.314217, 34.889233, 28.906382>,  <31.847900, 34.455372, 29.265036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.314217, 34.889233, 28.906382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.521049, 34.558319, 28.994217>,  <32.645149, 34.359772, 29.046917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.521049, 34.558319, 28.994217>,  <32.314217, 34.889233, 28.906382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.521049, 34.558319, 28.994217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275026, -0.082354, -0.957903,
		0.810544, 0.555711, 0.184941,
		0.517087, -0.827287, 0.219587,
		32.676174, 34.310135, 29.060093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.869110, 34.917843, 28.466230>,  <32.314217, 34.889233, 28.906382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.869110, 34.917843, 28.466230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.866371, 34.534378, 28.580015>,  <32.864727, 34.304298, 28.648287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.866371, 34.534378, 28.580015>,  <32.869110, 34.917843, 28.466230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.866371, 34.534378, 28.580015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300185, -0.273320, -0.913885,
		0.953856, 0.079135, 0.289647,
		-0.006847, -0.958662, 0.284463,
		32.864319, 34.246780, 28.665354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.397369, 34.644833, 28.178226>,  <32.869110, 34.917843, 28.466230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.397369, 34.644833, 28.178226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.166115, 34.326950, 28.252193>,  <33.027363, 34.136219, 28.296574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.166115, 34.326950, 28.252193>,  <33.397369, 34.644833, 28.178226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.166115, 34.326950, 28.252193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112665, -0.302212, -0.946559,
		0.808123, -0.526408, 0.264256,
		-0.578138, -0.794709, 0.184917,
		32.992672, 34.088539, 28.307669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.754829, 34.070438, 27.917133>,  <33.397369, 34.644833, 28.178226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.754829, 34.070438, 27.917133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.364475, 33.983997, 27.929390>,  <33.130260, 33.932133, 27.936743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.364475, 33.983997, 27.929390>,  <33.754829, 34.070438, 27.917133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.364475, 33.983997, 27.929390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042832, -0.327258, -0.943964,
		0.214022, -0.919892, 0.328623,
		-0.975889, -0.216105, 0.030640,
		33.071709, 33.919167, 27.938581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.905289, 33.501068, 27.714062>,  <33.754829, 34.070438, 27.917133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.905289, 33.501068, 27.714062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.517170, 33.553661, 27.632837>,  <33.284298, 33.585217, 27.584103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.517170, 33.553661, 27.632837>,  <33.905289, 33.501068, 27.714062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.517170, 33.553661, 27.632837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077752, -0.625365, -0.776449,
		-0.229076, -0.769176, 0.596567,
		-0.970298, 0.131482, -0.203061,
		33.226082, 33.593105, 27.571918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.715115, 32.814178, 27.594061>,  <33.905289, 33.501068, 27.714062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.715115, 32.814178, 27.594061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.447472, 33.072075, 27.446224>,  <33.286884, 33.226814, 27.357523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.447472, 33.072075, 27.446224>,  <33.715115, 32.814178, 27.594061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.447472, 33.072075, 27.446224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042586, -0.529768, -0.847073,
		-0.741943, -0.551045, 0.381930,
		-0.669109, 0.644744, -0.369591,
		33.246738, 33.265499, 27.335346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.253674, 32.432003, 27.255445>,  <33.715115, 32.814178, 27.594061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.253674, 32.432003, 27.255445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.170734, 32.780308, 27.077108>,  <33.120972, 32.989292, 26.970106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.170734, 32.780308, 27.077108>,  <33.253674, 32.432003, 27.255445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.170734, 32.780308, 27.077108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079606, -0.469254, -0.879468,
		-0.975023, -0.146862, 0.166616,
		-0.207346, 0.870765, -0.445843,
		33.108532, 33.041538, 26.943356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.628654, 32.301769, 26.855024>,  <33.253674, 32.432003, 27.255445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.628654, 32.301769, 26.855024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.828072, 32.618168, 26.713163>,  <32.947720, 32.808006, 26.628046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.828072, 32.618168, 26.713163>,  <32.628654, 32.301769, 26.855024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.828072, 32.618168, 26.713163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057765, -0.377898, -0.924044,
		-0.864941, 0.481158, -0.142704,
		0.498539, 0.791000, -0.354653,
		32.977634, 32.855469, 26.606768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.338844, 32.512726, 26.234741>,  <32.628654, 32.301769, 26.855024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.338844, 32.512726, 26.234741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.690170, 32.699688, 26.194565>,  <32.900967, 32.811867, 26.170460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.690170, 32.699688, 26.194565>,  <32.338844, 32.512726, 26.234741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.690170, 32.699688, 26.194565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102288, -0.388954, -0.915561,
		-0.467008, 0.793879, -0.389435,
		0.878317, 0.467409, -0.100440,
		32.953667, 32.839912, 26.164433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.440838, 32.821648, 25.551640>,  <32.338844, 32.512726, 26.234741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.440838, 32.821648, 25.551640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.825371, 32.806293, 25.660727>,  <33.056091, 32.797081, 25.726179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.825371, 32.806293, 25.660727>,  <32.440838, 32.821648, 25.551640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.825371, 32.806293, 25.660727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260957, -0.189552, -0.946558,
		0.088026, 0.981120, -0.172206,
		0.961329, -0.038383, 0.272716,
		33.113770, 32.794777, 25.742540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.746758, 33.156731, 25.021980>,  <32.440838, 32.821648, 25.551640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.746758, 33.156731, 25.021980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.048401, 32.972469, 25.209219>,  <33.229389, 32.861912, 25.321562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.048401, 32.972469, 25.209219>,  <32.746758, 33.156731, 25.021980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.048401, 32.972469, 25.209219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386646, -0.264731, -0.883415,
		0.530867, 0.847181, -0.021527,
		0.754112, -0.460653, 0.468097,
		33.274635, 32.834274, 25.349648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.413601, 33.354790, 24.724360>,  <32.746758, 33.156731, 25.021980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.413601, 33.354790, 24.724360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.446789, 32.994595, 24.895113>,  <33.466702, 32.778477, 24.997564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.446789, 32.994595, 24.895113>,  <33.413601, 33.354790, 24.724360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.446789, 32.994595, 24.895113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402860, -0.361491, -0.840850,
		0.911494, 0.241739, 0.332779,
		0.082969, -0.900493, 0.426883,
		33.471680, 32.724445, 25.023178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.042614, 33.003067, 24.431099>,  <33.413601, 33.354790, 24.724360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.042614, 33.003067, 24.431099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.827858, 32.699017, 24.577501>,  <33.699005, 32.516586, 24.665342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.827858, 32.699017, 24.577501>,  <34.042614, 33.003067, 24.431099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.827858, 32.699017, 24.577501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375037, -0.603653, -0.703527,
		0.755706, -0.240454, 0.609171,
		-0.536894, -0.760122, 0.366005,
		33.666790, 32.470982, 24.687304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.543541, 32.497711, 24.349367>,  <34.042614, 33.003067, 24.431099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.543541, 32.497711, 24.349367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.188648, 32.316280, 24.383060>,  <33.975712, 32.207424, 24.403276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.188648, 32.316280, 24.383060>,  <34.543541, 32.497711, 24.349367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.188648, 32.316280, 24.383060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294893, -0.698020, -0.652538,
		0.354769, -0.554111, 0.753060,
		-0.887230, -0.453573, 0.084232,
		33.922478, 32.180210, 24.408331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.750259, 31.805975, 24.255630>,  <34.543541, 32.497711, 24.349367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.750259, 31.805975, 24.255630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.353508, 31.828106, 24.209833>,  <34.115456, 31.841385, 24.182356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.353508, 31.828106, 24.209833>,  <34.750259, 31.805975, 24.255630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.353508, 31.828106, 24.209833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050378, -0.655716, -0.753325,
		-0.116754, -0.752978, 0.647606,
		-0.991882, 0.055329, -0.114491,
		34.055943, 31.844704, 24.175486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.477032, 31.171438, 24.215403>,  <34.750259, 31.805975, 24.255630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.477032, 31.171438, 24.215403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.198193, 31.395735, 24.036686>,  <34.030888, 31.530312, 23.929455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.198193, 31.395735, 24.036686>,  <34.477032, 31.171438, 24.215403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.198193, 31.395735, 24.036686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068668, -0.672515, -0.736891,
		-0.713685, -0.483001, 0.507311,
		-0.697093, 0.560744, -0.446797,
		33.989063, 31.563957, 23.902647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.847458, 30.647116, 24.009075>,  <34.477032, 31.171438, 24.215403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.847458, 30.647116, 24.009075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.827244, 30.960680, 23.761549>,  <33.815113, 31.148819, 23.613033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.827244, 30.960680, 23.761549>,  <33.847458, 30.647116, 24.009075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.827244, 30.960680, 23.761549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060554, -0.620871, -0.781570,
		-0.996885, -0.002027, 0.078846,
		-0.050537, 0.783910, -0.618814,
		33.812084, 31.195852, 23.575905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.560375, 30.349434, 23.489874>,  <33.847458, 30.647116, 24.009075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.560375, 30.349434, 23.489874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.673389, 30.694118, 23.321293>,  <33.741199, 30.900930, 23.220144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.673389, 30.694118, 23.321293>,  <33.560375, 30.349434, 23.489874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.673389, 30.694118, 23.321293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029702, -0.431285, -0.901727,
		-0.958797, 0.267288, -0.096259,
		0.282536, 0.861714, -0.421453,
		33.758152, 30.952633, 23.194857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.320881, 30.275507, 22.865196>,  <33.560375, 30.349434, 23.489874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.320881, 30.275507, 22.865196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.557358, 30.583874, 22.770388>,  <33.699245, 30.768894, 22.713503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.557358, 30.583874, 22.770388>,  <33.320881, 30.275507, 22.865196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.557358, 30.583874, 22.770388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165574, -0.171609, -0.971152,
		-0.789353, 0.613381, 0.026190,
		0.591192, 0.770917, -0.237020,
		33.734715, 30.815149, 22.699282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.095387, 30.536835, 22.165380>,  <33.320881, 30.275507, 22.865196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.095387, 30.536835, 22.165380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.468975, 30.678974, 22.180466>,  <33.693127, 30.764257, 22.189516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.468975, 30.678974, 22.180466>,  <33.095387, 30.536835, 22.165380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.468975, 30.678974, 22.180466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159397, -0.319824, -0.933973,
		-0.319824, 0.878317, -0.355349,
		0.933973, 0.355349, 0.037714,
		33.749168, 30.785580, 22.191780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.176579, 30.857628, 21.541809>,  <33.095387, 30.536835, 22.165380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.176579, 30.857628, 21.541809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.545685, 30.805300, 21.686798>,  <33.767151, 30.773903, 21.773790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.545685, 30.805300, 21.686798>,  <33.176579, 30.857628, 21.541809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.545685, 30.805300, 21.686798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304511, -0.328903, -0.893921,
		0.236162, 0.935258, -0.263665,
		0.922768, -0.130822, 0.362471,
		33.822514, 30.766054, 21.795540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.621876, 31.401045, 21.321995>,  <33.176579, 30.857628, 21.541809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.621876, 31.401045, 21.321995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.822887, 31.063848, 21.398756>,  <33.943497, 30.861530, 21.444813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.822887, 31.063848, 21.398756>,  <33.621876, 31.401045, 21.321995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.822887, 31.063848, 21.398756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246034, -0.073349, -0.966482,
		0.828812, 0.532902, 0.170545,
		0.502531, -0.842992, 0.191905,
		33.973648, 30.810951, 21.456327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.246174, 31.472685, 20.967369>,  <33.621876, 31.401045, 21.321995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.246174, 31.472685, 20.967369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.198902, 31.081108, 21.033947>,  <34.170540, 30.846161, 21.073893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.198902, 31.081108, 21.033947>,  <34.246174, 31.472685, 20.967369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.198902, 31.081108, 21.033947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167672, -0.184883, -0.968352,
		0.978734, -0.086531, 0.185990,
		-0.118179, -0.978944, 0.166442,
		34.163448, 30.787424, 21.083879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.778732, 31.111784, 20.614183>,  <34.246174, 31.472685, 20.967369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.778732, 31.111784, 20.614183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.512836, 30.821985, 20.687092>,  <34.353298, 30.648106, 20.730837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.512836, 30.821985, 20.687092>,  <34.778732, 31.111784, 20.614183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.512836, 30.821985, 20.687092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130015, -0.352450, -0.926755,
		0.735672, -0.592355, 0.328484,
		-0.664743, -0.724496, 0.182272,
		34.313412, 30.604637, 20.741774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.154465, 30.490946, 20.274055>,  <34.778732, 31.111784, 20.614183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.154465, 30.490946, 20.274055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.764805, 30.417683, 20.326939>,  <34.531010, 30.373724, 20.358667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.764805, 30.417683, 20.326939>,  <35.154465, 30.490946, 20.274055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.764805, 30.417683, 20.326939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036602, -0.449547, -0.892506,
		0.222905, -0.874277, 0.431224,
		-0.974153, -0.183161, 0.132206,
		34.472557, 30.362734, 20.366600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.176601, 29.766947, 20.106998>,  <35.154465, 30.490946, 20.274055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.176601, 29.766947, 20.106998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.803829, 29.909603, 20.080727>,  <34.580166, 29.995197, 20.064964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.803829, 29.909603, 20.080727>,  <35.176601, 29.766947, 20.106998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.803829, 29.909603, 20.080727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081079, -0.381445, -0.920829,
		-0.353452, -0.852825, 0.384397,
		-0.931932, 0.356635, -0.065677,
		34.524250, 30.016596, 20.061022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.865032, 29.194553, 19.854147>,  <35.176601, 29.766947, 20.106998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.865032, 29.194553, 19.854147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.651455, 29.519972, 19.762016>,  <34.523308, 29.715223, 19.706738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.651455, 29.519972, 19.762016>,  <34.865032, 29.194553, 19.854147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.651455, 29.519972, 19.762016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095762, -0.328840, -0.939518,
		-0.840081, -0.479590, 0.253488,
		-0.533941, 0.813546, -0.230326,
		34.491272, 29.764036, 19.692919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.419300, 28.949703, 19.325695>,  <34.865032, 29.194553, 19.854147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.419300, 28.949703, 19.325695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.422512, 29.347424, 19.283167>,  <34.424438, 29.586056, 19.257650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.422512, 29.347424, 19.283167>,  <34.419300, 28.949703, 19.325695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.422512, 29.347424, 19.283167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057947, -0.105682, -0.992710,
		-0.998287, 0.014136, 0.056768,
		0.008033, 0.994299, -0.106321,
		34.424923, 29.645714, 19.251270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.912205, 29.060246, 18.808617>,  <34.419300, 28.949703, 19.325695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.912205, 29.060246, 18.808617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.133614, 29.393219, 18.798302>,  <34.266460, 29.593004, 18.792112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.133614, 29.393219, 18.798302>,  <33.912205, 29.060246, 18.808617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.133614, 29.393219, 18.798302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132758, 0.057625, -0.989472,
		-0.822186, 0.551117, 0.142409,
		0.553522, 0.832435, -0.025787,
		34.299671, 29.642950, 18.790565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.544811, 29.461559, 18.416521>,  <33.912205, 29.060246, 18.808617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.544811, 29.461559, 18.416521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.928661, 29.563854, 18.369658>,  <34.158970, 29.625231, 18.341539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.928661, 29.563854, 18.369658>,  <33.544811, 29.461559, 18.416521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.928661, 29.563854, 18.369658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104120, -0.063997, -0.992504,
		-0.261317, 0.964626, -0.034786,
		0.959621, 0.255737, -0.117160,
		34.216549, 29.640575, 18.334509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.612366, 29.732502, 17.693859>,  <33.544811, 29.461559, 18.416521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.612366, 29.732502, 17.693859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.001858, 29.697409, 17.777910>,  <34.235554, 29.676353, 17.828341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.001858, 29.697409, 17.777910>,  <33.612366, 29.732502, 17.693859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.001858, 29.697409, 17.777910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178285, -0.280303, -0.943210,
		0.141648, 0.955894, -0.257298,
		0.973730, -0.087731, 0.210126,
		34.293976, 29.671089, 17.840948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.007359, 30.025160, 17.062565>,  <33.612366, 29.732502, 17.693859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.007359, 30.025160, 17.062565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.152061, 29.710522, 17.262724>,  <34.238884, 29.521738, 17.382820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.152061, 29.710522, 17.262724>,  <34.007359, 30.025160, 17.062565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.152061, 29.710522, 17.262724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186712, -0.464745, -0.865535,
		0.913383, 0.406546, -0.021259,
		0.361760, -0.786596, 0.500397,
		34.260590, 29.474543, 17.412844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.637501, 29.771683, 16.716780>,  <34.007359, 30.025160, 17.062565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.637501, 29.771683, 16.716780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.482151, 29.454580, 16.904697>,  <34.388943, 29.264318, 17.017448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.482151, 29.454580, 16.904697>,  <34.637501, 29.771683, 16.716780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.482151, 29.454580, 16.904697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143799, -0.451428, -0.880644,
		0.910213, -0.409575, 0.061326,
		-0.388375, -0.792755, 0.469792,
		34.365639, 29.216753, 17.045635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.649963, 30.548077, 16.587420>,  <34.637501, 29.771683, 16.716780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.649963, 30.548077, 16.587420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.941906, 30.324198, 16.744419>,  <35.117069, 30.189871, 16.838619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.941906, 30.324198, 16.744419>,  <34.649963, 30.548077, 16.587420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.941906, 30.324198, 16.744419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636508, 0.346970, -0.688817,
		0.249345, 0.752562, 0.609489,
		0.729852, -0.559698, 0.392497,
		35.160862, 30.156288, 16.862167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.598801, 31.272150, 16.808409>,  <34.649963, 30.548077, 16.587420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.598801, 31.272150, 16.808409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.948032, 31.088106, 16.872940>,  <35.157574, 30.977680, 16.911659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.948032, 31.088106, 16.872940>,  <34.598801, 31.272150, 16.808409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.948032, 31.088106, 16.872940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047560, 0.409668, 0.910994,
		-0.485249, -0.787699, 0.379556,
		0.873082, -0.460111, 0.161328,
		35.209957, 30.950073, 16.921339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.599758, 30.998978, 17.457409>,  <34.598801, 31.272150, 16.808409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.599758, 30.998978, 17.457409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.971188, 31.098785, 17.347509>,  <35.194046, 31.158670, 17.281570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.971188, 31.098785, 17.347509>,  <34.599758, 30.998978, 17.457409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.971188, 31.098785, 17.347509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139468, 0.451429, 0.881340,
		0.343940, -0.856710, 0.384386,
		0.928577, 0.249519, -0.274748,
		35.249760, 31.173641, 17.265085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.304745, 30.865751, 17.991768>,  <34.599758, 30.998978, 17.457409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.304745, 30.865751, 17.991768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.323414, 31.188238, 17.755857>,  <35.334614, 31.381731, 17.614311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.323414, 31.188238, 17.755857>,  <35.304745, 30.865751, 17.991768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.323414, 31.188238, 17.755857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143546, 0.578879, 0.802679,
		0.988543, -0.122120, -0.088714,
		0.046669, 0.806217, -0.589777,
		35.337414, 31.430103, 17.578924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.933060, 31.270041, 18.174738>,  <35.304745, 30.865751, 17.991768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.933060, 31.270041, 18.174738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.636063, 31.487099, 18.017641>,  <35.457867, 31.617334, 17.923382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.636063, 31.487099, 18.017641>,  <35.933060, 31.270041, 18.174738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.636063, 31.487099, 18.017641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064865, 0.641795, 0.764128,
		0.666711, 0.541881, -0.511724,
		-0.742488, 0.542645, -0.392743,
		35.413315, 31.649893, 17.899818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.101543, 32.005848, 18.125406>,  <35.933060, 31.270041, 18.174738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.101543, 32.005848, 18.125406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.704067, 31.970856, 18.153482>,  <35.465580, 31.949860, 18.170328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.704067, 31.970856, 18.153482>,  <36.101543, 32.005848, 18.125406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.704067, 31.970856, 18.153482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009644, 0.690134, 0.723617,
		-0.111746, 0.718375, -0.686623,
		-0.993690, -0.087484, 0.070192,
		35.405960, 31.944611, 18.174540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.636841, 32.648739, 18.046585>,  <36.101543, 32.005848, 18.125406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.636841, 32.648739, 18.046585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.498199, 32.368866, 18.296486>,  <35.415016, 32.200943, 18.446426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.498199, 32.368866, 18.296486>,  <35.636841, 32.648739, 18.046585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.498199, 32.368866, 18.296486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043882, 0.677404, 0.734301,
		-0.936984, 0.227096, -0.265495,
		-0.346604, -0.699679, 0.624752,
		35.394218, 32.158962, 18.483912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.010868, 32.788639, 18.286589>,  <35.636841, 32.648739, 18.046585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.010868, 32.788639, 18.286589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.237926, 32.578213, 18.539896>,  <35.374161, 32.451958, 18.691881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.237926, 32.578213, 18.539896>,  <35.010868, 32.788639, 18.286589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.237926, 32.578213, 18.539896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186488, 0.667050, 0.721295,
		-0.801873, -0.527537, 0.280542,
		0.567646, -0.526070, 0.633268,
		35.408218, 32.420391, 18.729876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.654865, 32.830280, 18.819384>,  <35.010868, 32.788639, 18.286589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.654865, 32.830280, 18.819384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.010895, 32.723587, 18.967234>,  <35.224514, 32.659573, 19.055944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.010895, 32.723587, 18.967234>,  <34.654865, 32.830280, 18.819384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.010895, 32.723587, 18.967234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117604, 0.649074, 0.751580,
		-0.440384, -0.712431, 0.546356,
		0.890074, -0.266730, 0.369627,
		35.277916, 32.643570, 19.078121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.593819, 32.791084, 19.553762>,  <34.654865, 32.830280, 18.819384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.593819, 32.791084, 19.553762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.991432, 32.775799, 19.512884>,  <35.230000, 32.766628, 19.488358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.991432, 32.775799, 19.512884>,  <34.593819, 32.791084, 19.553762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.991432, 32.775799, 19.512884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107731, 0.491914, 0.863953,
		0.017259, -0.869805, 0.493093,
		0.994031, -0.038210, -0.102195,
		35.289642, 32.764336, 19.482225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.873890, 32.609623, 20.221106>,  <34.593819, 32.791084, 19.553762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.873890, 32.609623, 20.221106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.166447, 32.802761, 20.028471>,  <35.341980, 32.918644, 19.912889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.166447, 32.802761, 20.028471>,  <34.873890, 32.609623, 20.221106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.166447, 32.802761, 20.028471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169761, 0.555046, 0.814313,
		0.660489, -0.677337, 0.323988,
		0.731392, 0.482844, -0.481587,
		35.385864, 32.947613, 19.883995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.474442, 32.571800, 20.744802>,  <34.873890, 32.609623, 20.221106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.474442, 32.571800, 20.744802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.556576, 32.876957, 20.499584>,  <35.605858, 33.060051, 20.352453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.556576, 32.876957, 20.499584>,  <35.474442, 32.571800, 20.744802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.556576, 32.876957, 20.499584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325802, 0.537384, 0.777863,
		0.922870, -0.359456, -0.138207,
		0.205338, 0.762895, -0.613047,
		35.618176, 33.105827, 20.315670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.156765, 32.814598, 20.934544>,  <35.474442, 32.571800, 20.744802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.156765, 32.814598, 20.934544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.973263, 33.109375, 20.735968>,  <35.863159, 33.286243, 20.616821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.973263, 33.109375, 20.735968>,  <36.156765, 32.814598, 20.934544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.973263, 33.109375, 20.735968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199209, 0.629780, 0.750795,
		0.865942, 0.245538, -0.435723,
		-0.458759, 0.736945, -0.496439,
		35.835636, 33.330460, 20.587036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.566467, 33.382618, 21.019077>,  <36.156765, 32.814598, 20.934544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.566467, 33.382618, 21.019077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.206215, 33.524216, 20.918236>,  <35.990063, 33.609177, 20.857731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.206215, 33.524216, 20.918236>,  <36.566467, 33.382618, 21.019077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.206215, 33.524216, 20.918236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093606, 0.724486, 0.682904,
		0.424392, 0.591444, -0.685628,
		-0.900627, 0.353998, -0.252103,
		35.936028, 33.630417, 20.842606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.610874, 34.160191, 21.129332>,  <36.566467, 33.382618, 21.019077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.610874, 34.160191, 21.129332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.220322, 34.077671, 21.103666>,  <35.985989, 34.028160, 21.088268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.220322, 34.077671, 21.103666>,  <36.610874, 34.160191, 21.129332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.220322, 34.077671, 21.103666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197663, 0.733124, 0.650737,
		-0.087208, 0.648051, -0.756588,
		-0.976383, -0.206299, -0.064161,
		35.927406, 34.015781, 21.084417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.345215, 34.740585, 21.175686>,  <36.610874, 34.160191, 21.129332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.345215, 34.740585, 21.175686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.053875, 34.483864, 21.271679>,  <35.879070, 34.329830, 21.329275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.053875, 34.483864, 21.271679>,  <36.345215, 34.740585, 21.175686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.053875, 34.483864, 21.271679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316645, 0.625862, 0.712764,
		-0.607649, 0.443156, -0.659072,
		-0.728354, -0.641802, 0.239981,
		35.835369, 34.291325, 21.343674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.778111, 35.174976, 21.282698>,  <36.345215, 34.740585, 21.175686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.778111, 35.174976, 21.282698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.716751, 34.826649, 21.469522>,  <35.679935, 34.617653, 21.581617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.716751, 34.826649, 21.469522>,  <35.778111, 35.174976, 21.282698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.716751, 34.826649, 21.469522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125557, 0.486003, 0.864891,
		-0.980155, 0.074033, -0.183891,
		-0.153402, -0.870816, 0.467063,
		35.670731, 34.565403, 21.609642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.134930, 35.285740, 21.632727>,  <35.778111, 35.174976, 21.282698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.134930, 35.285740, 21.632727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.281864, 34.977665, 21.841297>,  <35.370026, 34.792820, 21.966438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.281864, 34.977665, 21.841297>,  <35.134930, 35.285740, 21.632727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.281864, 34.977665, 21.841297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077523, 0.533313, 0.842358,
		-0.926853, -0.349849, 0.136197,
		0.367334, -0.770184, 0.521424,
		35.392063, 34.746609, 21.997725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.640301, 35.082504, 22.052042>,  <35.134930, 35.285740, 21.632727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.640301, 35.082504, 22.052042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.985416, 34.963455, 22.215517>,  <35.192486, 34.892025, 22.313602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.985416, 34.963455, 22.215517>,  <34.640301, 35.082504, 22.052042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.985416, 34.963455, 22.215517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296042, 0.357879, 0.885597,
		-0.409831, -0.885068, 0.220665,
		0.862785, -0.297619, 0.408687,
		35.244251, 34.874168, 22.338123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.403400, 34.921597, 22.728388>,  <34.640301, 35.082504, 22.052042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.403400, 34.921597, 22.728388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.796989, 34.887100, 22.790808>,  <35.033142, 34.866402, 22.828260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.796989, 34.887100, 22.790808>,  <34.403400, 34.921597, 22.728388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.796989, 34.887100, 22.790808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140740, 0.161651, 0.976761,
		-0.109459, -0.983073, 0.146924,
		0.983977, -0.086237, 0.156051,
		35.092182, 34.861229, 22.837624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.600998, 34.363892, 23.359554>,  <34.403400, 34.921597, 22.728388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.600998, 34.363892, 23.359554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.886372, 34.641483, 23.320765>,  <35.057594, 34.808037, 23.297491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.886372, 34.641483, 23.320765>,  <34.600998, 34.363892, 23.359554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.886372, 34.641483, 23.320765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079470, 0.057363, 0.995185,
		0.696201, -0.717706, -0.014225,
		0.713435, 0.693979, -0.096972,
		35.100403, 34.849678, 23.291674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.025517, 34.290344, 24.015339>,  <34.600998, 34.363892, 23.359554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.025517, 34.290344, 24.015339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.139812, 34.640156, 23.858593>,  <35.208389, 34.850040, 23.764545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.139812, 34.640156, 23.858593>,  <35.025517, 34.290344, 24.015339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.139812, 34.640156, 23.858593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205353, 0.343540, 0.916412,
		0.936047, -0.342326, -0.081424,
		0.285739, 0.874525, -0.391867,
		35.225533, 34.902512, 23.741034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.706497, 34.492714, 24.262070>,  <35.025517, 34.290344, 24.015339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.706497, 34.492714, 24.262070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.537918, 34.830414, 24.129633>,  <35.436771, 35.033035, 24.050171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.537918, 34.830414, 24.129633>,  <35.706497, 34.492714, 24.262070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.537918, 34.830414, 24.129633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064959, 0.392266, 0.917555,
		0.904523, 0.365195, -0.220162,
		-0.421449, 0.844251, -0.331091,
		35.411484, 35.083691, 24.030306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.066734, 35.010643, 24.575710>,  <35.706497, 34.492714, 24.262070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.066734, 35.010643, 24.575710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.710510, 35.160366, 24.472324>,  <35.496777, 35.250198, 24.410294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.710510, 35.160366, 24.472324>,  <36.066734, 35.010643, 24.575710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.710510, 35.160366, 24.472324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063093, 0.461070, 0.885118,
		0.450477, 0.804554, -0.386993,
		-0.890556, 0.374309, -0.258463,
		35.443344, 35.272659, 24.394785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.014095, 35.651375, 24.925301>,  <36.066734, 35.010643, 24.575710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.014095, 35.651375, 24.925301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.632515, 35.579147, 24.829485>,  <35.403568, 35.535809, 24.771996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.632515, 35.579147, 24.829485>,  <36.014095, 35.651375, 24.925301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.632515, 35.579147, 24.829485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295354, 0.425759, 0.855275,
		-0.052454, 0.886636, -0.459484,
		-0.953947, -0.180573, -0.239539,
		35.346333, 35.524975, 24.757624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.748737, 36.220158, 25.107824>,  <36.014095, 35.651375, 24.925301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.748737, 36.220158, 25.107824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.436108, 35.970936, 25.095522>,  <35.248531, 35.821404, 25.088140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.436108, 35.970936, 25.095522>,  <35.748737, 36.220158, 25.107824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.436108, 35.970936, 25.095522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276741, 0.302117, 0.912217,
		-0.559067, 0.721477, -0.408552,
		-0.781574, -0.623054, -0.030758,
		35.201637, 35.784019, 25.086294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.164005, 36.605549, 25.339077>,  <35.748737, 36.220158, 25.107824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.164005, 36.605549, 25.339077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.078403, 36.220715, 25.406708>,  <35.027042, 35.989815, 25.447287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.078403, 36.220715, 25.406708>,  <35.164005, 36.605549, 25.339077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.078403, 36.220715, 25.406708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312177, 0.231371, 0.921419,
		-0.925607, 0.144405, -0.349856,
		-0.214004, -0.962089, 0.169078,
		35.014202, 35.932087, 25.457432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.518772, 36.695477, 25.519968>,  <35.164005, 36.605549, 25.339077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.518772, 36.695477, 25.519968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.645477, 36.351826, 25.680748>,  <34.721500, 36.145638, 25.777216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.645477, 36.351826, 25.680748>,  <34.518772, 36.695477, 25.519968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.645477, 36.351826, 25.680748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395162, 0.265710, 0.879344,
		-0.862268, -0.437382, -0.255325,
		0.316766, -0.859124, 0.401950,
		34.740509, 36.094090, 25.801332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.969055, 36.578285, 26.032097>,  <34.518772, 36.695477, 25.519968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.969055, 36.578285, 26.032097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.239994, 36.299198, 26.125383>,  <34.402557, 36.131744, 26.181355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.239994, 36.299198, 26.125383>,  <33.969055, 36.578285, 26.032097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.239994, 36.299198, 26.125383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262092, 0.067346, 0.962690,
		-0.687397, -0.713196, -0.137251,
		0.677343, -0.697722, 0.233216,
		34.443195, 36.089882, 26.195349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.648430, 36.189526, 26.469711>,  <33.969055, 36.578285, 26.032097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.648430, 36.189526, 26.469711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.034073, 36.106667, 26.536146>,  <34.265461, 36.056953, 26.576006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.034073, 36.106667, 26.536146>,  <33.648430, 36.189526, 26.469711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.034073, 36.106667, 26.536146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171620, -0.008909, 0.985123,
		-0.202584, -0.978270, -0.044140,
		0.964109, -0.207145, 0.166086,
		34.323307, 36.044525, 26.585972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.622772, 35.647346, 27.012888>,  <33.648430, 36.189526, 26.469711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.622772, 35.647346, 27.012888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.970062, 35.845802, 27.015488>,  <34.178436, 35.964874, 27.017048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.970062, 35.845802, 27.015488>,  <33.622772, 35.647346, 27.012888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.970062, 35.845802, 27.015488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100602, 0.163192, 0.981452,
		0.485873, -0.852770, 0.191599,
		0.868220, 0.496136, 0.006500,
		34.230530, 35.994644, 27.017437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.895081, 35.494259, 27.623636>,  <33.622772, 35.647346, 27.012888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.895081, 35.494259, 27.623636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.080429, 35.837185, 27.533930>,  <34.191639, 36.042942, 27.480106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.080429, 35.837185, 27.533930>,  <33.895081, 35.494259, 27.623636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.080429, 35.837185, 27.533930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103779, 0.303832, 0.947056,
		0.880068, -0.415561, 0.229758,
		0.463368, 0.857318, -0.224267,
		34.219440, 36.094379, 27.466650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.381042, 35.609924, 28.233849>,  <33.895081, 35.494259, 27.623636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.381042, 35.609924, 28.233849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.335869, 35.957664, 28.041397>,  <34.308765, 36.166309, 27.925926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.335869, 35.957664, 28.041397>,  <34.381042, 35.609924, 28.233849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.335869, 35.957664, 28.041397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074027, 0.475519, 0.876585,
		0.990841, 0.134609, 0.010655,
		-0.112930, 0.869346, -0.481128,
		34.301991, 36.218468, 27.897058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.828053, 36.188477, 28.449999>,  <34.381042, 35.609924, 28.233849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.828053, 36.188477, 28.449999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.515518, 36.383575, 28.294249>,  <34.327995, 36.500633, 28.200798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.515518, 36.383575, 28.294249>,  <34.828053, 36.188477, 28.449999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.515518, 36.383575, 28.294249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043122, 0.580213, 0.813322,
		0.622614, 0.652272, -0.432312,
		-0.781340, 0.487744, -0.389376,
		34.281116, 36.529900, 28.177435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.951515, 36.859772, 28.616407>,  <34.828053, 36.188477, 28.449999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.951515, 36.859772, 28.616407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.569481, 36.911552, 28.509790>,  <34.340260, 36.942619, 28.445820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.569481, 36.911552, 28.509790>,  <34.951515, 36.859772, 28.616407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.569481, 36.911552, 28.509790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159660, 0.532960, 0.830941,
		0.249625, 0.836180, -0.488356,
		-0.955090, 0.129453, -0.266544,
		34.282955, 36.950390, 28.429827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.804417, 37.595402, 28.640759>,  <34.951515, 36.859772, 28.616407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.804417, 37.595402, 28.640759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.484314, 37.360294, 28.688276>,  <34.292252, 37.219231, 28.716787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.484314, 37.360294, 28.688276>,  <34.804417, 37.595402, 28.640759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.484314, 37.360294, 28.688276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372038, 0.642028, 0.670363,
		-0.470289, 0.492268, -0.732462,
		-0.800259, -0.587769, 0.118797,
		34.244236, 37.183964, 28.723915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.245083, 38.088631, 28.808842>,  <34.804417, 37.595402, 28.640759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.245083, 38.088631, 28.808842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.110889, 37.725674, 28.910110>,  <34.030373, 37.507900, 28.970871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.110889, 37.725674, 28.910110>,  <34.245083, 38.088631, 28.808842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.110889, 37.725674, 28.910110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418735, 0.384371, 0.822751,
		-0.843869, 0.170005, -0.508905,
		-0.335480, -0.907390, 0.253171,
		34.010246, 37.453457, 28.986061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.465450, 38.129429, 28.969175>,  <34.245083, 38.088631, 28.808842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.465450, 38.129429, 28.969175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.612293, 37.808495, 29.157429>,  <33.700401, 37.615936, 29.270380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.612293, 37.808495, 29.157429>,  <33.465450, 38.129429, 28.969175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.612293, 37.808495, 29.157429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301490, 0.376012, 0.876196,
		-0.879963, -0.463551, -0.103858,
		0.367109, -0.802332, 0.470632,
		33.722427, 37.567795, 29.298618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.021759, 38.055580, 29.431450>,  <33.465450, 38.129429, 28.969175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.021759, 38.055580, 29.431450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.313381, 37.818153, 29.567772>,  <33.488354, 37.675697, 29.649565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.313381, 37.818153, 29.567772>,  <33.021759, 38.055580, 29.431450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.313381, 37.818153, 29.567772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251785, 0.230430, 0.939950,
		-0.636456, -0.771090, 0.018545,
		0.729060, -0.593567, 0.340807,
		33.532101, 37.640083, 29.670013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.731838, 37.860962, 29.999882>,  <33.021759, 38.055580, 29.431450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.731838, 37.860962, 29.999882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.118504, 37.773441, 30.053082>,  <33.350502, 37.720928, 30.085001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.118504, 37.773441, 30.053082>,  <32.731838, 37.860962, 29.999882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.118504, 37.773441, 30.053082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033894, 0.405510, 0.913462,
		-0.253798, -0.887518, 0.384576,
		0.966663, -0.218800, 0.133000,
		33.408501, 37.707802, 30.092981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.753010, 37.642204, 30.738527>,  <32.731838, 37.860962, 29.999882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.753010, 37.642204, 30.738527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.120800, 37.755085, 30.629038>,  <33.341473, 37.822815, 30.563343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.120800, 37.755085, 30.629038>,  <32.753010, 37.642204, 30.738527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.120800, 37.755085, 30.629038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103151, 0.498685, 0.860624,
		0.379370, -0.819559, 0.429420,
		0.919477, 0.282200, -0.273724,
		33.396645, 37.839745, 30.546921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.214798, 37.461678, 31.327677>,  <32.753010, 37.642204, 30.738527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.214798, 37.461678, 31.327677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.384998, 37.750790, 31.109856>,  <33.487118, 37.924255, 30.979162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.384998, 37.750790, 31.109856>,  <33.214798, 37.461678, 31.327677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.384998, 37.750790, 31.109856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209410, 0.506770, 0.836261,
		0.880395, -0.469865, 0.064274,
		0.425502, 0.722780, -0.544552,
		33.512650, 37.967625, 30.946489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.805080, 37.740627, 31.799704>,  <33.214798, 37.461678, 31.327677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.805080, 37.740627, 31.799704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.713249, 38.023251, 31.531950>,  <33.658150, 38.192825, 31.371298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.713249, 38.023251, 31.531950>,  <33.805080, 37.740627, 31.799704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.713249, 38.023251, 31.531950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075996, 0.698667, 0.711399,
		0.970319, 0.112452, -0.214095,
		-0.229579, 0.706554, -0.669384,
		33.644375, 38.235218, 31.331135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.300804, 38.271641, 31.873503>,  <33.805080, 37.740627, 31.799704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.300804, 38.271641, 31.873503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.977169, 38.436512, 31.705938>,  <33.782990, 38.535435, 31.605400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.977169, 38.436512, 31.705938>,  <34.300804, 38.271641, 31.873503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.977169, 38.436512, 31.705938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079095, 0.782694, 0.617361,
		0.582343, 0.466365, -0.665869,
		-0.809086, 0.412182, -0.418909,
		33.734444, 38.560165, 31.580265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.540031, 39.039978, 31.619940>,  <34.300804, 38.271641, 31.873503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.540031, 39.039978, 31.619940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.141953, 39.014763, 31.649910>,  <33.903107, 38.999634, 31.667892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.141953, 39.014763, 31.649910>,  <34.540031, 39.039978, 31.619940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.141953, 39.014763, 31.649910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025089, 0.903838, 0.427138,
		-0.094645, 0.423206, -0.901077,
		-0.995195, -0.063033, 0.074926,
		33.843395, 38.995853, 31.672388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.090183, 38.524025, 31.570517>,  <34.540031, 39.039978, 31.619940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.090183, 38.524025, 31.570517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.424984, 38.682392, 31.721607>,  <35.625866, 38.777412, 31.812262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.424984, 38.682392, 31.721607>,  <35.090183, 38.524025, 31.570517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.424984, 38.682392, 31.721607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542955, -0.686680, -0.483395,
		0.067993, 0.609691, -0.789718,
		0.837005, 0.395913, 0.377724,
		35.676086, 38.801167, 31.834925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.587650, 38.779594, 31.099493>,  <35.090183, 38.524025, 31.570517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.587650, 38.779594, 31.099493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.771439, 38.641907, 31.427004>,  <35.881714, 38.559296, 31.623510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.771439, 38.641907, 31.427004>,  <35.587650, 38.779594, 31.099493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.771439, 38.641907, 31.427004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574481, -0.587883, -0.569531,
		0.677389, 0.732057, -0.072369,
		0.459473, -0.344219, 0.818778,
		35.909279, 38.538643, 31.672638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.276676, 38.892372, 30.909868>,  <35.587650, 38.779594, 31.099493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.276676, 38.892372, 30.909868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.177937, 38.611656, 31.177168>,  <36.118690, 38.443226, 31.337547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.177937, 38.611656, 31.177168>,  <36.276676, 38.892372, 30.909868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.177937, 38.611656, 31.177168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501977, -0.682463, -0.531284,
		0.828904, 0.204297, 0.520750,
		-0.246853, -0.701788, 0.668249,
		36.103882, 38.401119, 31.377644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.920845, 38.525955, 31.021994>,  <36.276676, 38.892372, 30.909868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.920845, 38.525955, 31.021994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.624470, 38.291824, 31.153690>,  <36.446644, 38.151344, 31.232708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.624470, 38.291824, 31.153690>,  <36.920845, 38.525955, 31.021994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.624470, 38.291824, 31.153690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465722, -0.801055, -0.376050,
		0.483853, -0.125295, 0.866134,
		-0.740938, -0.585330, 0.329241,
		36.402187, 38.116226, 31.252462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.248875, 37.876385, 31.274206>,  <36.920845, 38.525955, 31.021994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.248875, 37.876385, 31.274206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.868847, 37.752247, 31.261238>,  <36.640831, 37.677765, 31.253458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.868847, 37.752247, 31.261238>,  <37.248875, 37.876385, 31.274206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.868847, 37.752247, 31.261238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278350, -0.795971, -0.537542,
		0.141018, -0.519727, 0.842614,
		-0.950071, -0.310344, -0.032420,
		36.583824, 37.659145, 31.251513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.358154, 37.213360, 31.260113>,  <37.248875, 37.876385, 31.274206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.358154, 37.213360, 31.260113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.980709, 37.258465, 31.135605>,  <36.754242, 37.285526, 31.060900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.980709, 37.258465, 31.135605>,  <37.358154, 37.213360, 31.260113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.980709, 37.258465, 31.135605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183213, -0.605250, -0.774665,
		-0.275746, -0.788009, 0.550460,
		-0.943609, 0.112759, -0.311269,
		36.697628, 37.292294, 31.042225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.170437, 36.525333, 31.077587>,  <37.358154, 37.213360, 31.260113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.170437, 36.525333, 31.077587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.930889, 36.765476, 30.865578>,  <36.787163, 36.909561, 30.738373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.930889, 36.765476, 30.865578>,  <37.170437, 36.525333, 31.077587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.930889, 36.765476, 30.865578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218529, -0.514208, -0.829359,
		-0.770457, -0.612501, 0.176745,
		-0.598866, 0.600361, -0.530024,
		36.751228, 36.945583, 30.706570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.838341, 36.041061, 30.531378>,  <37.170437, 36.525333, 31.077587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.838341, 36.041061, 30.531378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.746933, 36.391769, 30.362120>,  <36.692089, 36.602196, 30.260565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.746933, 36.391769, 30.362120>,  <36.838341, 36.041061, 30.531378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.746933, 36.391769, 30.362120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030511, -0.427983, -0.903271,
		-0.973060, -0.219330, 0.071053,
		-0.228524, 0.876770, -0.423145,
		36.678375, 36.654800, 30.235176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.349449, 35.879208, 29.921417>,  <36.838341, 36.041061, 30.531378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.349449, 35.879208, 29.921417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.504704, 36.240246, 29.846937>,  <36.597855, 36.456867, 29.802248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.504704, 36.240246, 29.846937>,  <36.349449, 35.879208, 29.921417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.504704, 36.240246, 29.846937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087674, -0.237287, -0.967475,
		-0.917423, 0.359185, -0.171234,
		0.388134, 0.902597, -0.186202,
		36.621143, 36.511024, 29.791077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.146000, 36.089851, 29.289244>,  <36.349449, 35.879208, 29.921417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.146000, 36.089851, 29.289244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.451260, 36.347332, 29.312096>,  <36.634415, 36.501820, 29.325806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.451260, 36.347332, 29.312096>,  <36.146000, 36.089851, 29.289244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.451260, 36.347332, 29.312096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352668, -0.340766, -0.871495,
		-0.541512, 0.685224, -0.487065,
		0.763145, 0.643697, 0.057128,
		36.680202, 36.540440, 29.329233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.143486, 36.466061, 28.665934>,  <36.146000, 36.089851, 29.289244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.143486, 36.466061, 28.665934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.502911, 36.490005, 28.839828>,  <36.718567, 36.504372, 28.944166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.502911, 36.490005, 28.839828>,  <36.143486, 36.466061, 28.665934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.502911, 36.490005, 28.839828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438829, -0.115161, -0.891161,
		-0.003283, 0.991541, -0.129749,
		0.898565, 0.059863, 0.434739,
		36.772480, 36.507965, 28.970251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.517246, 36.835793, 28.199663>,  <36.143486, 36.466061, 28.665934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.517246, 36.835793, 28.199663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.805752, 36.676601, 28.426426>,  <36.978855, 36.581085, 28.562485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.805752, 36.676601, 28.426426>,  <36.517246, 36.835793, 28.199663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.805752, 36.676601, 28.426426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529328, -0.211188, -0.821712,
		0.446748, 0.892756, 0.058338,
		0.721269, -0.397978, 0.566908,
		37.022133, 36.557209, 28.596498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.126324, 37.141903, 28.018093>,  <36.517246, 36.835793, 28.199663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.126324, 37.141903, 28.018093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.248962, 36.792156, 28.168545>,  <37.322548, 36.582306, 28.258816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.248962, 36.792156, 28.168545>,  <37.126324, 37.141903, 28.018093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.248962, 36.792156, 28.168545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423627, -0.228516, -0.876539,
		0.852371, 0.428085, 0.300344,
		0.306599, -0.874371, 0.376129,
		37.340942, 36.529846, 28.281384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.901539, 37.078217, 27.801289>,  <37.126324, 37.141903, 28.018093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.901539, 37.078217, 27.801289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.765751, 36.712692, 27.890472>,  <37.684280, 36.493378, 27.943983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.765751, 36.712692, 27.890472>,  <37.901539, 37.078217, 27.801289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.765751, 36.712692, 27.890472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381191, -0.350349, -0.855540,
		0.859917, -0.205436, 0.467268,
		-0.339466, -0.913812, 0.222961,
		37.663910, 36.438549, 27.957361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.516720, 36.524185, 27.634077>,  <37.901539, 37.078217, 27.801289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.516720, 36.524185, 27.634077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.157612, 36.348904, 27.651886>,  <37.942146, 36.243736, 27.662571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.157612, 36.348904, 27.651886>,  <38.516720, 36.524185, 27.634077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.157612, 36.348904, 27.651886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228981, -0.550680, -0.802695,
		0.376263, -0.710442, 0.594725,
		-0.897772, -0.438205, 0.044522,
		37.888279, 36.217442, 27.665243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.613487, 35.952091, 27.391985>,  <38.516720, 36.524185, 27.634077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.613487, 35.952091, 27.391985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.216320, 35.952766, 27.344456>,  <37.978020, 35.953171, 27.315939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.216320, 35.952766, 27.344456>,  <38.613487, 35.952091, 27.391985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.216320, 35.952766, 27.344456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102394, -0.495281, -0.862678,
		-0.060305, -0.868731, 0.491598,
		-0.992914, 0.001687, -0.118821,
		37.918446, 35.953274, 27.308809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.397446, 35.168831, 27.204432>,  <38.613487, 35.952091, 27.391985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.397446, 35.168831, 27.204432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.120148, 35.423973, 27.070240>,  <37.953770, 35.577057, 26.989725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.120148, 35.423973, 27.070240>,  <38.397446, 35.168831, 27.204432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.120148, 35.423973, 27.070240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016602, -0.479503, -0.877383,
		-0.720509, -0.602673, 0.343004,
		-0.693247, 0.637857, -0.335480,
		37.912174, 35.615330, 26.969597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.856033, 34.695236, 27.006485>,  <38.397446, 35.168831, 27.204432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.856033, 34.695236, 27.006485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.794197, 35.044029, 26.820692>,  <37.757095, 35.253307, 26.709215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.794197, 35.044029, 26.820692>,  <37.856033, 34.695236, 27.006485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.794197, 35.044029, 26.820692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258855, -0.489460, -0.832720,
		-0.953465, -0.008497, 0.301383,
		-0.154591, 0.871984, -0.464484,
		37.747818, 35.305626, 26.681347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.250393, 34.555573, 26.490047>,  <37.856033, 34.695236, 27.006485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.250393, 34.555573, 26.490047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.459084, 34.882839, 26.393379>,  <37.584297, 35.079201, 26.335379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.459084, 34.882839, 26.393379>,  <37.250393, 34.555573, 26.490047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.459084, 34.882839, 26.393379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057623, -0.248835, -0.966830,
		-0.851165, 0.518346, -0.082678,
		0.521726, 0.818168, -0.241668,
		37.615601, 35.128288, 26.320879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.941689, 34.815186, 25.907757>,  <37.250393, 34.555573, 26.490047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.941689, 34.815186, 25.907757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.274719, 35.035721, 25.886415>,  <37.474537, 35.168041, 25.873611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.274719, 35.035721, 25.886415>,  <36.941689, 34.815186, 25.907757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.274719, 35.035721, 25.886415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067611, 0.005553, -0.997696,
		-0.549773, 0.834263, 0.041900,
		0.832573, 0.551339, -0.053352,
		37.524490, 35.201122, 25.870409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.850071, 35.417919, 25.483126>,  <36.941689, 34.815186, 25.907757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.850071, 35.417919, 25.483126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.239876, 35.330158, 25.464376>,  <37.473759, 35.277500, 25.453127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.239876, 35.330158, 25.464376>,  <36.850071, 35.417919, 25.483126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.239876, 35.330158, 25.464376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045579, 0.010963, -0.998901,
		0.219673, 0.975573, 0.000684,
		0.974508, -0.219401, -0.046874,
		37.532227, 35.264339, 25.450314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.998978, 35.745590, 24.842731>,  <36.850071, 35.417919, 25.483126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.998978, 35.745590, 24.842731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.286114, 35.477531, 24.918215>,  <37.458393, 35.316696, 24.963505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.286114, 35.477531, 24.918215>,  <36.998978, 35.745590, 24.842731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.286114, 35.477531, 24.918215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072166, -0.197966, -0.977549,
		0.692459, 0.715340, -0.093746,
		0.717839, -0.670147, 0.188707,
		37.501465, 35.276485, 24.974827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.375240, 35.794941, 24.194490>,  <36.998978, 35.745590, 24.842731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.375240, 35.794941, 24.194490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.519424, 35.466068, 24.370708>,  <37.605934, 35.268745, 24.476440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.519424, 35.466068, 24.370708>,  <37.375240, 35.794941, 24.194490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.519424, 35.466068, 24.370708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198873, -0.393697, -0.897470,
		0.911327, 0.411116, 0.021598,
		0.360461, -0.822184, 0.440547,
		37.627563, 35.219414, 24.502872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.163525, 35.725826, 24.008474>,  <37.375240, 35.794941, 24.194490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.163525, 35.725826, 24.008474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.003334, 35.367298, 24.084599>,  <37.907219, 35.152180, 24.130274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.003334, 35.367298, 24.084599>,  <38.163525, 35.725826, 24.008474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.003334, 35.367298, 24.084599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328593, -0.334363, -0.883305,
		0.855361, -0.291210, 0.428431,
		-0.400479, -0.896325, 0.190312,
		37.883190, 35.098400, 24.141691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.583256, 35.383076, 23.699614>,  <38.163525, 35.725826, 24.008474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.583256, 35.383076, 23.699614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.274513, 35.131668, 23.738003>,  <38.089268, 34.980824, 23.761036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.274513, 35.131668, 23.738003>,  <38.583256, 35.383076, 23.699614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.274513, 35.131668, 23.738003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260294, -0.450094, -0.854203,
		0.580077, -0.634337, 0.511005,
		-0.771853, -0.628515, 0.095975,
		38.042957, 34.943115, 23.766796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.837761, 34.808289, 23.357424>,  <38.583256, 35.383076, 23.699614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.837761, 34.808289, 23.357424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.454937, 34.700523, 23.400242>,  <38.225243, 34.635864, 23.425934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.454937, 34.700523, 23.400242>,  <38.837761, 34.808289, 23.357424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.454937, 34.700523, 23.400242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069187, -0.570848, -0.818136,
		0.281523, -0.775596, 0.564973,
		-0.957057, -0.269413, 0.107046,
		38.167820, 34.619698, 23.432356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.782673, 34.069881, 23.218647>,  <38.837761, 34.808289, 23.357424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.782673, 34.069881, 23.218647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.419731, 34.219482, 23.141890>,  <38.201965, 34.309242, 23.095835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.419731, 34.219482, 23.141890>,  <38.782673, 34.069881, 23.218647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.419731, 34.219482, 23.141890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068790, -0.582453, -0.809949,
		-0.414693, -0.721713, 0.554221,
		-0.907358, 0.374004, -0.191892,
		38.147522, 34.331684, 23.084322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.394806, 33.488171, 23.183235>,  <38.782673, 34.069881, 23.218647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.394806, 33.488171, 23.183235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.203873, 33.764412, 22.965897>,  <38.089314, 33.930157, 22.835493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.203873, 33.764412, 22.965897>,  <38.394806, 33.488171, 23.183235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.203873, 33.764412, 22.965897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047221, -0.597283, -0.800639,
		-0.877453, -0.407828, 0.252492,
		-0.477332, 0.690601, -0.543346,
		38.060673, 33.971592, 22.802893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.943047, 33.092052, 22.797176>,  <38.394806, 33.488171, 23.183235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.943047, 33.092052, 22.797176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.931000, 33.436359, 22.593931>,  <37.923771, 33.642944, 22.471985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.931000, 33.436359, 22.593931>,  <37.943047, 33.092052, 22.797176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.931000, 33.436359, 22.593931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066996, -0.505461, -0.860245,
		-0.997298, -0.059953, -0.042443,
		-0.030121, 0.860765, -0.508112,
		37.921963, 33.694588, 22.441498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.526379, 32.973282, 22.161411>,  <37.943047, 33.092052, 22.797176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.526379, 32.973282, 22.161411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.746338, 33.295879, 22.074526>,  <37.878311, 33.489437, 22.022394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.746338, 33.295879, 22.074526>,  <37.526379, 32.973282, 22.161411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.746338, 33.295879, 22.074526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275519, -0.420659, -0.864370,
		-0.788482, 0.415466, -0.453523,
		0.549895, 0.806494, -0.217213,
		37.911308, 33.537827, 22.009361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.223457, 33.261116, 21.482306>,  <37.526379, 32.973282, 22.161411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.223457, 33.261116, 21.482306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.604733, 33.372490, 21.529457>,  <37.833500, 33.439316, 21.557749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.604733, 33.372490, 21.529457>,  <37.223457, 33.261116, 21.482306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.604733, 33.372490, 21.529457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201206, -0.293092, -0.934673,
		-0.225699, 0.914641, -0.335396,
		0.953192, 0.278439, 0.117881,
		37.890690, 33.456020, 21.564821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.447155, 33.333206, 20.671898>,  <37.223457, 33.261116, 21.482306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.447155, 33.333206, 20.671898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.787510, 33.340118, 20.881924>,  <37.991722, 33.344265, 21.007940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.787510, 33.340118, 20.881924>,  <37.447155, 33.333206, 20.671898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.787510, 33.340118, 20.881924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486206, -0.404479, -0.774597,
		0.198990, 0.914384, -0.352569,
		0.850886, 0.017284, 0.525067,
		38.042774, 33.345303, 21.039444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.925655, 33.622139, 20.183138>,  <37.447155, 33.333206, 20.671898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.925655, 33.622139, 20.183138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.114441, 33.392700, 20.450939>,  <38.227715, 33.255035, 20.611620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.114441, 33.392700, 20.450939>,  <37.925655, 33.622139, 20.183138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.114441, 33.392700, 20.450939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566935, -0.384097, -0.728735,
		0.675155, 0.723502, 0.143911,
		0.471965, -0.573597, 0.669503,
		38.256031, 33.220619, 20.651791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.611473, 33.597404, 19.968140>,  <37.925655, 33.622139, 20.183138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.611473, 33.597404, 19.968140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.583965, 33.299225, 20.233339>,  <38.567459, 33.120316, 20.392460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.583965, 33.299225, 20.233339>,  <38.611473, 33.597404, 19.968140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.583965, 33.299225, 20.233339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619789, -0.552689, -0.557133,
		0.781750, 0.372604, 0.500034,
		-0.068773, -0.745454, 0.663000,
		38.563332, 33.075588, 20.432240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.303387, 33.317726, 19.978109>,  <38.611473, 33.597404, 19.968140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.303387, 33.317726, 19.978109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.071320, 33.031277, 20.133320>,  <38.932079, 32.859406, 20.226446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.071320, 33.031277, 20.133320>,  <39.303387, 33.317726, 19.978109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.071320, 33.031277, 20.133320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548154, -0.695664, -0.464305,
		0.602440, -0.056675, 0.796150,
		-0.580167, -0.716128, 0.388029,
		38.897270, 32.816437, 20.249729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.829346, 32.848225, 20.205662>,  <39.303387, 33.317726, 19.978109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.829346, 32.848225, 20.205662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.478870, 32.673077, 20.125097>,  <39.268585, 32.567989, 20.076759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.478870, 32.673077, 20.125097>,  <39.829346, 32.848225, 20.205662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.478870, 32.673077, 20.125097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481246, -0.771934, -0.415356,
		0.026395, -0.460858, 0.887081,
		-0.876188, -0.437868, -0.201410,
		39.216015, 32.541718, 20.064674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.921722, 32.156593, 20.294415>,  <39.829346, 32.848225, 20.205662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.921722, 32.156593, 20.294415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.585480, 32.159863, 20.077778>,  <39.383736, 32.161823, 19.947796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.585480, 32.159863, 20.077778>,  <39.921722, 32.156593, 20.294415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.585480, 32.159863, 20.077778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272435, -0.857823, -0.435798,
		-0.468151, -0.513881, 0.718861,
		-0.840603, 0.008176, -0.541590,
		39.333298, 32.162315, 19.915300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.819065, 31.395756, 20.173363>,  <39.921722, 32.156593, 20.294415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.819065, 31.395756, 20.173363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.633514, 31.608984, 19.890333>,  <39.522186, 31.736921, 19.720516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.633514, 31.608984, 19.890333>,  <39.819065, 31.395756, 20.173363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.633514, 31.608984, 19.890333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291953, -0.662098, -0.690210,
		-0.836413, -0.526747, 0.151497,
		-0.463872, 0.533071, -0.707572,
		39.494354, 31.768906, 19.678062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.455994, 31.188892, 20.430511>,  <39.819065, 31.395756, 20.173363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.455994, 31.188892, 20.430511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.498959, 30.810484, 20.552830>,  <40.524738, 30.583439, 20.626221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.498959, 30.810484, 20.552830>,  <40.455994, 31.188892, 20.430511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.498959, 30.810484, 20.552830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064850, 0.300254, 0.951652,
		-0.992098, -0.122046, -0.029099,
		0.107409, -0.946019, 0.305796,
		40.531181, 30.526678, 20.644569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.885273, 31.101852, 20.879322>,  <40.455994, 31.188892, 20.430511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.885273, 31.101852, 20.879322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.156555, 30.831009, 20.993557>,  <40.319324, 30.668503, 21.062098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.156555, 30.831009, 20.993557>,  <39.885273, 31.101852, 20.879322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.156555, 30.831009, 20.993557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191672, 0.212186, 0.958248,
		-0.709436, -0.704629, 0.014123,
		0.678206, -0.677108, 0.285590,
		40.360016, 30.627876, 21.079233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.648090, 30.767851, 21.576342>,  <39.885273, 31.101852, 20.879322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.648090, 30.767851, 21.576342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.041527, 30.696089, 21.568655>,  <40.277588, 30.653030, 21.564043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.041527, 30.696089, 21.568655>,  <39.648090, 30.767851, 21.576342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.041527, 30.696089, 21.568655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056089, 0.202793, 0.977614,
		-0.171493, -0.962647, 0.209527,
		0.983587, -0.179406, -0.019216,
		40.336601, 30.642267, 21.562891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.807465, 30.273026, 22.041706>,  <39.648090, 30.767851, 21.576342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.807465, 30.273026, 22.041706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.168663, 30.440567, 22.003408>,  <40.385380, 30.541092, 21.980431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.168663, 30.440567, 22.003408>,  <39.807465, 30.273026, 22.041706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.168663, 30.440567, 22.003408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085258, 0.043732, 0.995399,
		0.421114, -0.907000, 0.003779,
		0.902992, 0.418854, -0.095745,
		40.439560, 30.566223, 21.974686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.269169, 29.992144, 22.514006>,  <39.807465, 30.273026, 22.041706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.269169, 29.992144, 22.514006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.407436, 30.360867, 22.443819>,  <40.490395, 30.582100, 22.401707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.407436, 30.360867, 22.443819>,  <40.269169, 29.992144, 22.514006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.407436, 30.360867, 22.443819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032082, 0.198494, 0.979577,
		0.937809, -0.332976, 0.098186,
		0.345665, 0.921806, -0.175467,
		40.511135, 30.637409, 22.391178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.700569, 30.114618, 23.103746>,  <40.269169, 29.992144, 22.514006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.700569, 30.114618, 23.103746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.668358, 30.484438, 22.954765>,  <40.649033, 30.706329, 22.865376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.668358, 30.484438, 22.954765>,  <40.700569, 30.114618, 23.103746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.668358, 30.484438, 22.954765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102083, 0.364054, 0.925767,
		0.991511, 0.112573, 0.065064,
		-0.080529, 0.924550, -0.372455,
		40.644199, 30.761803, 22.843029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.066299, 30.524393, 23.613398>,  <40.700569, 30.114618, 23.103746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.066299, 30.524393, 23.613398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.827801, 30.757788, 23.392841>,  <40.684700, 30.897823, 23.260508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.827801, 30.757788, 23.392841>,  <41.066299, 30.524393, 23.613398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.827801, 30.757788, 23.392841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063866, 0.650183, 0.757088,
		0.800255, 0.486628, -0.350407,
		-0.596249, 0.583485, -0.551391,
		40.648926, 30.932833, 23.227425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.361996, 31.192228, 23.681643>,  <41.066299, 30.524393, 23.613398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.361996, 31.192228, 23.681643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.972771, 31.241293, 23.603563>,  <40.739235, 31.270731, 23.556715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.972771, 31.241293, 23.603563>,  <41.361996, 31.192228, 23.681643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.972771, 31.241293, 23.603563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081326, 0.609638, 0.788497,
		0.215717, 0.783132, -0.583241,
		-0.973063, 0.122659, -0.195198,
		40.680851, 31.278091, 23.545004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.283577, 31.942665, 23.876558>,  <41.361996, 31.192228, 23.681643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.283577, 31.942665, 23.876558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.918304, 31.781012, 23.855452>,  <40.699142, 31.684019, 23.842789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.918304, 31.781012, 23.855452>,  <41.283577, 31.942665, 23.876558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.918304, 31.781012, 23.855452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263794, 0.487389, 0.832385,
		-0.310677, 0.774034, -0.551681,
		-0.913177, -0.404132, -0.052765,
		40.644352, 31.659771, 23.839622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.962181, 32.493279, 23.862690>,  <41.283577, 31.942665, 23.876558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.962181, 32.493279, 23.862690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.716557, 32.201614, 23.983522>,  <40.569180, 32.026615, 24.056023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.716557, 32.201614, 23.983522>,  <40.962181, 32.493279, 23.862690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.716557, 32.201614, 23.983522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346665, 0.593026, 0.726735,
		-0.709046, 0.341542, -0.616930,
		-0.614066, -0.729157, 0.302082,
		40.532337, 31.982868, 24.074146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.287762, 32.837036, 23.925407>,  <40.962181, 32.493279, 23.862690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.287762, 32.837036, 23.925407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.289978, 32.506432, 24.150566>,  <40.291309, 32.308071, 24.285662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.289978, 32.506432, 24.150566>,  <40.287762, 32.837036, 23.925407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.289978, 32.506432, 24.150566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211930, 0.549148, 0.808407,
		-0.977269, -0.123776, -0.172118,
		0.005543, -0.826508, 0.562897,
		40.291641, 32.258480, 24.319435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.687252, 32.907204, 24.295803>,  <40.287762, 32.837036, 23.925407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.687252, 32.907204, 24.295803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.899696, 32.629444, 24.490011>,  <40.027161, 32.462788, 24.606537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.899696, 32.629444, 24.490011>,  <39.687252, 32.907204, 24.295803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.899696, 32.629444, 24.490011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308341, 0.375333, 0.874100,
		-0.789208, -0.613948, -0.014770,
		0.531109, -0.694400, 0.485522,
		40.059029, 32.421124, 24.635668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.218773, 32.695908, 24.859137>,  <39.687252, 32.907204, 24.295803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.218773, 32.695908, 24.859137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.584694, 32.573963, 24.965117>,  <39.804245, 32.500797, 25.028706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.584694, 32.573963, 24.965117>,  <39.218773, 32.695908, 24.859137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.584694, 32.573963, 24.965117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230676, 0.144127, 0.962297,
		-0.331552, -0.941429, 0.061523,
		0.914801, -0.304860, 0.264951,
		39.859135, 32.482506, 25.044601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.239540, 32.011993, 25.342096>,  <39.218773, 32.695908, 24.859137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.239540, 32.011993, 25.342096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.578148, 32.219120, 25.391542>,  <39.781311, 32.343395, 25.421209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.578148, 32.219120, 25.391542>,  <39.239540, 32.011993, 25.342096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.578148, 32.219120, 25.391542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234124, 0.153566, 0.960002,
		0.478119, -0.841597, 0.251229,
		0.846515, 0.517814, 0.123615,
		39.832104, 32.374462, 25.428627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.558846, 31.781422, 26.011930>,  <39.239540, 32.011993, 25.342096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.558846, 31.781422, 26.011930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.699619, 32.148232, 25.936882>,  <39.784084, 32.368317, 25.891853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.699619, 32.148232, 25.936882>,  <39.558846, 31.781422, 26.011930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.699619, 32.148232, 25.936882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213642, 0.273852, 0.937743,
		0.911316, -0.289944, 0.292294,
		0.351938, 0.917026, -0.187621,
		39.805202, 32.423340, 25.880596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.993824, 32.000862, 26.548035>,  <39.558846, 31.781422, 26.011930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.993824, 32.000862, 26.548035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.894432, 32.352673, 26.385704>,  <39.834797, 32.563759, 26.288305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.894432, 32.352673, 26.385704>,  <39.993824, 32.000862, 26.548035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.894432, 32.352673, 26.385704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084953, 0.397562, 0.913634,
		0.964904, 0.261496, -0.024068,
		-0.248480, 0.879525, -0.405825,
		39.819889, 32.616531, 26.263956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.363159, 32.454987, 26.924326>,  <39.993824, 32.000862, 26.548035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.363159, 32.454987, 26.924326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.058582, 32.649551, 26.752924>,  <39.875835, 32.766289, 26.650084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.058582, 32.649551, 26.752924>,  <40.363159, 32.454987, 26.924326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.058582, 32.649551, 26.752924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246107, 0.394619, 0.885273,
		0.599702, 0.779539, -0.180768,
		-0.761439, 0.486411, -0.428504,
		39.830151, 32.795475, 26.624372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.379253, 33.144459, 27.172607>,  <40.363159, 32.454987, 26.924326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.379253, 33.144459, 27.172607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.001167, 33.143436, 27.042036>,  <39.774315, 33.142822, 26.963694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.001167, 33.143436, 27.042036>,  <40.379253, 33.144459, 27.172607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.001167, 33.143436, 27.042036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251775, 0.642179, 0.724027,
		0.207773, 0.766551, -0.607643,
		-0.945219, -0.002556, -0.326426,
		39.717602, 33.142670, 26.944109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.171108, 33.854374, 27.195847>,  <40.379253, 33.144459, 27.172607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.171108, 33.854374, 27.195847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.829884, 33.645809, 27.187634>,  <39.625149, 33.520672, 27.182707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.829884, 33.645809, 27.187634>,  <40.171108, 33.854374, 27.195847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.829884, 33.645809, 27.187634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388096, 0.607662, 0.692913,
		-0.348817, 0.599063, -0.720729,
		-0.853058, -0.521412, -0.020531,
		39.573967, 33.489384, 27.181475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.613209, 34.345459, 27.210604>,  <40.171108, 33.854374, 27.195847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.613209, 34.345459, 27.210604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.447140, 34.002003, 27.330851>,  <39.347500, 33.795929, 27.402998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.447140, 34.002003, 27.330851>,  <39.613209, 34.345459, 27.210604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.447140, 34.002003, 27.330851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328068, 0.449517, 0.830847,
		-0.848529, 0.246323, -0.468319,
		-0.415174, -0.858638, 0.300618,
		39.322586, 33.744411, 27.421036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.867302, 34.474564, 27.426178>,  <39.613209, 34.345459, 27.210604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.867302, 34.474564, 27.426178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.943878, 34.126034, 27.606911>,  <38.989822, 33.916916, 27.715351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.943878, 34.126034, 27.606911>,  <38.867302, 34.474564, 27.426178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.943878, 34.126034, 27.606911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563859, 0.279169, 0.777257,
		-0.803377, -0.403566, -0.437858,
		0.191438, -0.871320, 0.451832,
		39.001308, 33.864639, 27.742460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.308983, 34.351318, 27.795925>,  <38.867302, 34.474564, 27.426178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.308983, 34.351318, 27.795925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.556355, 34.070366, 27.936903>,  <38.704777, 33.901794, 28.021490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.556355, 34.070366, 27.936903>,  <38.308983, 34.351318, 27.795925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.556355, 34.070366, 27.936903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285822, 0.216734, 0.933452,
		-0.732023, -0.678005, -0.066721,
		0.618424, -0.702379, 0.352443,
		38.741882, 33.859653, 28.042635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.885906, 33.810680, 28.170187>,  <38.308983, 34.351318, 27.795925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.885906, 33.810680, 28.170187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.258308, 33.847980, 28.311348>,  <38.481750, 33.870361, 28.396044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.258308, 33.847980, 28.311348>,  <37.885906, 33.810680, 28.170187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.258308, 33.847980, 28.311348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364772, 0.202527, 0.908804,
		0.013275, -0.974827, 0.222568,
		0.931002, 0.093251, 0.352900,
		38.537609, 33.875957, 28.417217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.801094, 33.653248, 28.834568>,  <37.885906, 33.810680, 28.170187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.801094, 33.653248, 28.834568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.163029, 33.823402, 28.841715>,  <38.380188, 33.925495, 28.846003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.163029, 33.823402, 28.841715>,  <37.801094, 33.653248, 28.834568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.163029, 33.823402, 28.841715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217453, 0.425646, 0.878373,
		0.366049, -0.798666, 0.477641,
		0.904833, 0.425392, 0.017865,
		38.434479, 33.951019, 28.847075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.199013, 33.407234, 29.455393>,  <37.801094, 33.653248, 28.834568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.199013, 33.407234, 29.455393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.363850, 33.760204, 29.364609>,  <38.462749, 33.971985, 29.310139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.363850, 33.760204, 29.364609>,  <38.199013, 33.407234, 29.455393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.363850, 33.760204, 29.364609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166881, 0.317977, 0.933296,
		0.895730, -0.346727, 0.278295,
		0.412090, 0.882423, -0.226960,
		38.487476, 34.024933, 29.296520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.848705, 33.541317, 29.907866>,  <38.199013, 33.407234, 29.455393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.848705, 33.541317, 29.907866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.704975, 33.893749, 29.784853>,  <38.618736, 34.105209, 29.711044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.704975, 33.893749, 29.784853>,  <38.848705, 33.541317, 29.907866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.704975, 33.893749, 29.784853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011042, 0.333534, 0.942674,
		0.933146, 0.335333, -0.129577,
		-0.359328, 0.881083, -0.307533,
		38.597176, 34.158073, 29.692593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.106030, 33.985626, 30.446980>,  <38.848705, 33.541317, 29.907866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.106030, 33.985626, 30.446980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.882973, 34.256794, 30.255369>,  <38.749138, 34.419495, 30.140404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.882973, 34.256794, 30.255369>,  <39.106030, 33.985626, 30.446980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.882973, 34.256794, 30.255369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009216, 0.582102, 0.813063,
		0.830033, 0.448980, -0.330850,
		-0.557637, 0.677919, -0.479026,
		38.715683, 34.460171, 30.111662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.517071, 34.569908, 30.474258>,  <39.106030, 33.985626, 30.446980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.517071, 34.569908, 30.474258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.136253, 34.669449, 30.403059>,  <38.907761, 34.729172, 30.360338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.136253, 34.669449, 30.403059>,  <39.517071, 34.569908, 30.474258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.136253, 34.669449, 30.403059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005581, 0.567561, 0.823312,
		0.305905, 0.784824, -0.538956,
		-0.952046, 0.248847, -0.178000,
		38.850639, 34.744102, 30.349659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.386322, 35.380589, 30.381941>,  <39.517071, 34.569908, 30.474258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.386322, 35.380589, 30.381941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.035961, 35.226410, 30.498032>,  <38.825745, 35.133904, 30.567686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.035961, 35.226410, 30.498032>,  <39.386322, 35.380589, 30.381941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.035961, 35.226410, 30.498032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088045, 0.463731, 0.881590,
		-0.474396, 0.797736, -0.372244,
		-0.875898, -0.385448, 0.290229,
		38.773193, 35.110775, 30.585100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.073654, 35.933693, 30.636002>,  <39.386322, 35.380589, 30.381941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.073654, 35.933693, 30.636002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.889996, 35.611294, 30.785431>,  <38.779800, 35.417854, 30.875090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.889996, 35.611294, 30.785431>,  <39.073654, 35.933693, 30.636002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.889996, 35.611294, 30.785431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060834, 0.391008, 0.918375,
		-0.886274, 0.444396, -0.130498,
		-0.459148, -0.805993, 0.373575,
		38.752251, 35.369495, 30.897503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.584190, 36.255829, 31.133223>,  <39.073654, 35.933693, 30.636002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.584190, 36.255829, 31.133223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.567165, 35.876450, 31.258842>,  <38.556950, 35.648823, 31.334213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.567165, 35.876450, 31.258842>,  <38.584190, 36.255829, 31.133223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.567165, 35.876450, 31.258842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028655, 0.315362, 0.948539,
		-0.998683, 0.031372, -0.040601,
		-0.042562, -0.948453, 0.314048,
		38.554398, 35.591915, 31.353056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.134357, 36.275280, 31.641357>,  <38.584190, 36.255829, 31.133223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.134357, 36.275280, 31.641357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.279789, 35.910625, 31.718016>,  <38.367050, 35.691833, 31.764009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.279789, 35.910625, 31.718016>,  <38.134357, 36.275280, 31.641357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.279789, 35.910625, 31.718016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007660, 0.202791, 0.979192,
		-0.931531, -0.357484, 0.066748,
		0.363582, -0.911636, 0.191644,
		38.388863, 35.637135, 31.775509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.658909, 35.935616, 32.157486>,  <38.134357, 36.275280, 31.641357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.658909, 35.935616, 32.157486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.029217, 35.784843, 32.169338>,  <38.251400, 35.694378, 32.176449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.029217, 35.784843, 32.169338>,  <37.658909, 35.935616, 32.157486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.029217, 35.784843, 32.169338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057618, -0.063191, 0.996337,
		-0.373682, -0.924082, -0.080218,
		0.925766, -0.376935, 0.029631,
		38.306946, 35.671764, 32.178226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.572845, 35.476105, 32.628807>,  <37.658909, 35.935616, 32.157486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.572845, 35.476105, 32.628807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.967281, 35.542377, 32.634037>,  <38.203945, 35.582142, 32.637177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.967281, 35.542377, 32.634037>,  <37.572845, 35.476105, 32.628807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.967281, 35.542377, 32.634037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013775, 0.003080, 0.999900,
		0.165630, -0.986174, 0.005320,
		0.986092, 0.165687, 0.013074,
		38.263107, 35.592083, 32.637959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.796749, 35.305252, 33.281078>,  <37.572845, 35.476105, 32.628807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.796749, 35.305252, 33.281078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.138229, 35.490234, 33.185303>,  <38.343117, 35.601223, 33.127838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.138229, 35.490234, 33.185303>,  <37.796749, 35.305252, 33.281078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.138229, 35.490234, 33.185303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225585, 0.086016, 0.970419,
		0.469368, -0.882462, -0.030891,
		0.853701, 0.462453, -0.239443,
		38.394341, 35.628971, 33.113468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.282990, 34.935371, 33.657124>,  <37.796749, 35.305252, 33.281078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.282990, 34.935371, 33.657124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.416901, 35.302864, 33.573357>,  <38.497250, 35.523361, 33.523098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.416901, 35.302864, 33.573357>,  <38.282990, 34.935371, 33.657124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.416901, 35.302864, 33.573357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170662, 0.159445, 0.972343,
		0.926712, -0.361262, -0.103414,
		0.334782, 0.918731, -0.209413,
		38.517334, 35.578484, 33.510532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.955822, 35.066368, 33.943970>,  <38.282990, 34.935371, 33.657124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.955822, 35.066368, 33.943970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.801678, 35.431961, 33.893169>,  <38.709190, 35.651318, 33.862690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.801678, 35.431961, 33.893169>,  <38.955822, 35.066368, 33.943970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.801678, 35.431961, 33.893169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202428, 0.218014, 0.954722,
		0.900289, 0.342203, -0.269030,
		-0.385361, 0.913984, -0.127004,
		38.686069, 35.706158, 33.855068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.320335, 35.368618, 34.350540>,  <38.955822, 35.066368, 33.943970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.320335, 35.368618, 34.350540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.041870, 35.649326, 34.290031>,  <38.874790, 35.817749, 34.253727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.041870, 35.649326, 34.290031>,  <39.320335, 35.368618, 34.350540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.041870, 35.649326, 34.290031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067178, 0.273480, 0.959529,
		0.714736, 0.657824, -0.237529,
		-0.696160, 0.701767, -0.151275,
		38.833023, 35.859856, 34.244648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.636623, 35.906658, 34.728294>,  <39.320335, 35.368618, 34.350540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.636623, 35.906658, 34.728294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.252808, 36.009579, 34.682549>,  <39.022518, 36.071331, 34.655102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.252808, 36.009579, 34.682549>,  <39.636623, 35.906658, 34.728294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.252808, 36.009579, 34.682549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053824, 0.231065, 0.971448,
		0.276381, 0.938299, -0.207867,
		-0.959540, 0.257302, -0.114365,
		38.964947, 36.086769, 34.648239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.418552, 36.609253, 34.932072>,  <39.636623, 35.906658, 34.728294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.418552, 36.609253, 34.932072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.068695, 36.417099, 34.958088>,  <38.858780, 36.301807, 34.973698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.068695, 36.417099, 34.958088>,  <39.418552, 36.609253, 34.932072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.068695, 36.417099, 34.958088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052687, 0.227574, 0.972334,
		-0.481900, 0.847016, -0.224356,
		-0.874641, -0.480389, 0.065041,
		38.806301, 36.272984, 34.977600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.039642, 36.623524, 34.654610>,  <39.418552, 36.609253, 34.932072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.039642, 36.623524, 34.654610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.427273, 36.682987, 34.575821>,  <40.659851, 36.718666, 34.528549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.427273, 36.682987, 34.575821>,  <40.039642, 36.623524, 34.654610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.427273, 36.682987, 34.575821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067652, 0.927642, 0.367292,
		0.237319, -0.342608, 0.909010,
		0.969073, 0.148662, -0.196969,
		40.717995, 36.727585, 34.516731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.386932, 36.916031, 35.287148>,  <40.039642, 36.623524, 34.654610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.386932, 36.916031, 35.287148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.566185, 37.025467, 34.946720>,  <40.673737, 37.091129, 34.742462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.566185, 37.025467, 34.946720>,  <40.386932, 36.916031, 35.287148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.566185, 37.025467, 34.946720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059824, 0.959063, 0.276804,
		0.891963, -0.073131, 0.446155,
		0.448134, 0.273589, -0.851073,
		40.700626, 37.107544, 34.691399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.904598, 37.371033, 35.535664>,  <40.386932, 36.916031, 35.287148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.904598, 37.371033, 35.535664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.824268, 37.457565, 35.153488>,  <40.776070, 37.509487, 34.924183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.824268, 37.457565, 35.153488>,  <40.904598, 37.371033, 35.535664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.824268, 37.457565, 35.153488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128393, 0.961086, 0.244599,
		0.971178, 0.171793, -0.165230,
		-0.200820, 0.216335, -0.955442,
		40.764023, 37.522465, 34.866856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.232990, 38.004723, 35.415340>,  <40.904598, 37.371033, 35.535664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.232990, 38.004723, 35.415340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.944237, 37.976181, 35.140011>,  <40.770985, 37.959057, 34.974812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.944237, 37.976181, 35.140011>,  <41.232990, 38.004723, 35.415340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.944237, 37.976181, 35.140011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085639, 0.996235, -0.013453,
		0.686697, 0.049236, -0.725275,
		-0.721882, -0.071350, -0.688328,
		40.727673, 37.954777, 34.933514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.415958, 38.562103, 35.025356>,  <41.232990, 38.004723, 35.415340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.415958, 38.562103, 35.025356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.062923, 38.468754, 34.862103>,  <40.851101, 38.412743, 34.764149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.062923, 38.468754, 34.862103>,  <41.415958, 38.562103, 35.025356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.062923, 38.468754, 34.862103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141550, 0.959724, -0.242681,
		0.448332, -0.156416, -0.880075,
		-0.882588, -0.233377, -0.408135,
		40.798145, 38.398739, 34.739662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.463230, 38.722160, 34.428204>,  <41.415958, 38.562103, 35.025356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.463230, 38.722160, 34.428204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.076637, 38.746105, 34.528061>,  <40.844681, 38.760471, 34.587975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.076637, 38.746105, 34.528061>,  <41.463230, 38.722160, 34.428204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.076637, 38.746105, 34.528061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006586, 0.977893, -0.209003,
		-0.256638, -0.200355, -0.945513,
		-0.966485, 0.059866, 0.249645,
		40.786694, 38.764065, 34.602955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.223705, 39.264309, 34.051029>,  <41.463230, 38.722160, 34.428204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.223705, 39.264309, 34.051029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.899837, 39.236362, 34.284115>,  <40.705517, 39.219593, 34.423965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.899837, 39.236362, 34.284115>,  <41.223705, 39.264309, 34.051029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.899837, 39.236362, 34.284115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163273, 0.980507, -0.109303,
		-0.563715, -0.183640, -0.805296,
		-0.809671, -0.069867, 0.582710,
		40.656937, 39.215401, 34.458927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.747574, 39.805195, 33.842587>,  <41.223705, 39.264309, 34.051029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.747574, 39.805195, 33.842587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.608963, 39.698750, 34.202389>,  <40.525795, 39.634884, 34.418270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.608963, 39.698750, 34.202389>,  <40.747574, 39.805195, 33.842587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.608963, 39.698750, 34.202389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456273, 0.885651, 0.086237,
		-0.819594, -0.380536, -0.428320,
		-0.346525, -0.266110, 0.899503,
		40.505005, 39.618916, 34.472240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.066990, 40.117916, 33.822884>,  <40.747574, 39.805195, 33.842587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.066990, 40.117916, 33.822884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.107857, 39.988819, 34.199265>,  <40.132378, 39.911362, 34.425095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.107857, 39.988819, 34.199265>,  <40.066990, 40.117916, 33.822884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.107857, 39.988819, 34.199265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671140, 0.675827, 0.304678,
		-0.734257, -0.662641, -0.147560,
		0.102167, -0.322745, 0.940956,
		40.138508, 39.891994, 34.481552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.444099, 40.022015, 34.062840>,  <40.066990, 40.117916, 33.822884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.444099, 40.022015, 34.062840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.673000, 40.085613, 34.384647>,  <39.810341, 40.123772, 34.577732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.673000, 40.085613, 34.384647>,  <39.444099, 40.022015, 34.062840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.673000, 40.085613, 34.384647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615119, 0.732025, 0.292862,
		-0.542362, -0.662464, 0.516706,
		0.572253, 0.158998, 0.804516,
		39.844677, 40.133312, 34.626003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.016365, 40.009968, 34.689877>,  <39.444099, 40.022015, 34.062840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.016365, 40.009968, 34.689877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.336796, 40.242111, 34.748470>,  <39.529053, 40.381397, 34.783627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.336796, 40.242111, 34.748470>,  <39.016365, 40.009968, 34.689877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.336796, 40.242111, 34.748470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597252, 0.758819, 0.259775,
		0.039609, -0.295588, 0.954494,
		0.801075, 0.580363, 0.146485,
		39.577118, 40.416222, 34.792416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.858948, 40.305614, 35.259209>,  <39.016365, 40.009968, 34.689877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.858948, 40.305614, 35.259209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.153538, 40.547859, 35.138653>,  <39.330292, 40.693207, 35.066319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.153538, 40.547859, 35.138653>,  <38.858948, 40.305614, 35.259209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.153538, 40.547859, 35.138653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541154, 0.794794, 0.274690,
		0.405901, -0.039203, 0.913076,
		0.736476, 0.605612, -0.301393,
		39.374481, 40.729542, 35.048237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.929108, 40.769951, 35.783165>,  <38.858948, 40.305614, 35.259209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.929108, 40.769951, 35.783165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.085621, 40.944538, 35.459091>,  <39.179531, 41.049290, 35.264648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.085621, 40.944538, 35.459091>,  <38.929108, 40.769951, 35.783165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.085621, 40.944538, 35.459091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364083, 0.881965, 0.299300,
		0.845186, 0.177861, 0.504010,
		0.391286, 0.436466, -0.810181,
		39.203007, 41.075478, 35.216038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.437500, 41.313450, 35.980309>,  <38.929108, 40.769951, 35.783165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.437500, 41.313450, 35.980309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.236317, 41.380280, 35.641106>,  <39.115608, 41.420376, 35.437584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.236317, 41.380280, 35.641106>,  <39.437500, 41.313450, 35.980309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.236317, 41.380280, 35.641106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205384, 0.929934, 0.305025,
		0.839555, 0.327583, -0.433402,
		-0.502956, 0.167072, -0.848011,
		39.085430, 41.430401, 35.386703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.634392, 42.032848, 35.802647>,  <39.437500, 41.313450, 35.980309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.634392, 42.032848, 35.802647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.300957, 41.941063, 35.601658>,  <39.100895, 41.885990, 35.481064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.300957, 41.941063, 35.601658>,  <39.634392, 42.032848, 35.802647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.300957, 41.941063, 35.601658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345256, 0.926499, 0.149661,
		0.431194, 0.298236, -0.851544,
		-0.833589, -0.229468, -0.502468,
		39.050880, 41.872223, 35.450916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.537975, 42.640209, 35.402527>,  <39.634392, 42.032848, 35.802647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.537975, 42.640209, 35.402527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.184044, 42.454338, 35.388977>,  <38.971684, 42.342815, 35.380848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.184044, 42.454338, 35.388977>,  <39.537975, 42.640209, 35.402527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.184044, 42.454338, 35.388977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464750, 0.885420, -0.006308,
		0.032927, 0.010163, -0.999406,
		-0.884830, -0.464681, -0.033878,
		38.918594, 42.314934, 35.378815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.240757, 42.870277, 34.784966>,  <39.537975, 42.640209, 35.402527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.240757, 42.870277, 34.784966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.954533, 42.733959, 35.028873>,  <38.782799, 42.652168, 35.175220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.954533, 42.733959, 35.028873>,  <39.240757, 42.870277, 34.784966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.954533, 42.733959, 35.028873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522481, 0.840511, -0.143372,
		-0.463660, -0.421187, -0.779500,
		-0.715565, -0.340799, 0.609774,
		38.739864, 42.631721, 35.211807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.563908, 43.011814, 34.426521>,  <39.240757, 42.870277, 34.784966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.563908, 43.011814, 34.426521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.495716, 42.985355, 34.819775>,  <38.454800, 42.969479, 35.055729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.495716, 42.985355, 34.819775>,  <38.563908, 43.011814, 34.426521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.495716, 42.985355, 34.819775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514887, 0.856674, -0.031645,
		-0.840135, -0.511600, -0.180107,
		-0.170482, -0.066148, 0.983138,
		38.444572, 42.965511, 35.114716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.868431, 43.033314, 34.457726>,  <38.563908, 43.011814, 34.426521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.868431, 43.033314, 34.457726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.042797, 43.163059, 34.793526>,  <38.147419, 43.240906, 34.995007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.042797, 43.163059, 34.793526>,  <37.868431, 43.033314, 34.457726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.042797, 43.163059, 34.793526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495759, 0.865056, -0.076815,
		-0.751132, -0.382705, 0.537902,
		0.435918, 0.324368, 0.839501,
		38.173573, 43.260368, 35.045376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.437397, 43.311172, 34.837238>,  <37.868431, 43.033314, 34.457726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.437397, 43.311172, 34.837238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.774071, 43.501404, 34.939526>,  <37.976074, 43.615543, 35.000896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.774071, 43.501404, 34.939526>,  <37.437397, 43.311172, 34.837238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.774071, 43.501404, 34.939526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439385, 0.878496, -0.187577,
		-0.313854, 0.045523, 0.948380,
		0.841687, 0.475575, 0.255717,
		38.026577, 43.644077, 35.016239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.298080, 43.924789, 34.803680>,  <37.437397, 43.311172, 34.837238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.298080, 43.924789, 34.803680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.666904, 43.996483, 34.940895>,  <37.888199, 44.039501, 35.023224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.666904, 43.996483, 34.940895>,  <37.298080, 43.924789, 34.803680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.666904, 43.996483, 34.940895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176423, 0.983515, -0.039668,
		-0.344493, -0.023943, 0.938484,
		0.922063, 0.179235, 0.343038,
		37.943523, 44.050255, 35.043808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.357555, 44.641598, 34.766106>,  <37.298080, 43.924789, 34.803680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.357555, 44.641598, 34.766106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.745712, 44.633282, 34.862358>,  <37.978607, 44.628292, 34.920109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.745712, 44.633282, 34.862358>,  <37.357555, 44.641598, 34.766106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.745712, 44.633282, 34.862358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048008, 0.993012, -0.107811,
		-0.236705, 0.116171, 0.964611,
		0.970395, -0.020789, 0.240628,
		38.036831, 44.627045, 34.934547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.419071, 45.106583, 35.328781>,  <37.357555, 44.641598, 34.766106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.419071, 45.106583, 35.328781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.737854, 45.043652, 35.095505>,  <37.929123, 45.005894, 34.955540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.737854, 45.043652, 35.095505>,  <37.419071, 45.106583, 35.328781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.737854, 45.043652, 35.095505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052949, 0.943571, -0.326909,
		0.601712, 0.291411, 0.743654,
		0.796956, -0.157329, -0.583189,
		37.976940, 44.996452, 34.920547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.791744, 44.678024, 35.858105>,  <37.419071, 45.106583, 35.328781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.791744, 44.678024, 35.858105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.787605, 44.875614, 36.205872>,  <37.785122, 44.994167, 36.414532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.787605, 44.875614, 36.205872>,  <37.791744, 44.678024, 35.858105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.787605, 44.875614, 36.205872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255652, -0.841873, 0.475280,
		0.966714, -0.217350, 0.134997,
		-0.010348, 0.493972, 0.869416,
		37.784500, 45.023808, 36.466698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.543964, 44.528152, 35.679985>,  <37.791744, 44.678024, 35.858105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.543964, 44.528152, 35.679985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.182461, 44.357124, 35.671902>,  <37.965561, 44.254505, 35.667053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.182461, 44.357124, 35.671902>,  <38.543964, 44.528152, 35.679985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.182461, 44.357124, 35.671902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424287, -0.901057, 0.089868,
		-0.056633, 0.072645, 0.995749,
		-0.903755, -0.427572, -0.020207,
		37.911335, 44.228851, 35.665840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.547504, 43.947205, 36.095554>,  <38.543964, 44.528152, 35.679985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.547504, 43.947205, 36.095554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.249702, 43.845375, 35.848686>,  <38.071022, 43.784279, 35.700565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.249702, 43.845375, 35.848686>,  <38.547504, 43.947205, 36.095554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.249702, 43.845375, 35.848686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243951, -0.964254, 0.103449,
		-0.621446, -0.073541, 0.779998,
		-0.744508, -0.254569, -0.617173,
		38.026352, 43.769005, 35.663536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.522251, 43.306465, 36.301872>,  <38.547504, 43.947205, 36.095554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.522251, 43.306465, 36.301872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.317135, 43.278389, 35.959618>,  <38.194065, 43.261543, 35.754265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.317135, 43.278389, 35.959618>,  <38.522251, 43.306465, 36.301872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.317135, 43.278389, 35.959618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311717, -0.943857, -0.109387,
		-0.799921, -0.322810, 0.505886,
		-0.512795, -0.070193, -0.855636,
		38.163296, 43.257332, 35.702927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.081879, 42.801277, 36.343838>,  <38.522251, 43.306465, 36.301872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.081879, 42.801277, 36.343838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.197792, 42.868015, 35.966862>,  <38.267342, 42.908058, 35.740677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.197792, 42.868015, 35.966862>,  <38.081879, 42.801277, 36.343838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.197792, 42.868015, 35.966862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226378, -0.968696, -0.101884,
		-0.929935, -0.183822, -0.318482,
		0.289784, 0.166843, -0.942438,
		38.284729, 42.918068, 35.684132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.813305, 42.201271, 36.063137>,  <38.081879, 42.801277, 36.343838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.813305, 42.201271, 36.063137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.084446, 42.353874, 35.811749>,  <38.247131, 42.445435, 35.660915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.084446, 42.353874, 35.811749>,  <37.813305, 42.201271, 36.063137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.084446, 42.353874, 35.811749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303965, -0.923772, -0.232917,
		-0.669420, -0.033149, -0.742144,
		0.677851, 0.381505, -0.628468,
		38.287800, 42.468327, 35.623207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.637630, 42.029755, 35.353851>,  <37.813305, 42.201271, 36.063137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.637630, 42.029755, 35.353851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.033741, 42.085396, 35.353912>,  <38.271408, 42.118782, 35.353947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.033741, 42.085396, 35.353912>,  <37.637630, 42.029755, 35.353851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.033741, 42.085396, 35.353912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131673, -0.937016, -0.323516,
		-0.044861, 0.320391, -0.946223,
		0.990278, 0.139105, 0.000151,
		38.330826, 42.127129, 35.353958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.865131, 41.746414, 34.811760>,  <37.637630, 42.029755, 35.353851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.865131, 41.746414, 34.811760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.215473, 41.758877, 35.004387>,  <38.425678, 41.766354, 35.119965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.215473, 41.758877, 35.004387>,  <37.865131, 41.746414, 34.811760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.215473, 41.758877, 35.004387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292968, -0.827304, -0.479311,
		0.383472, 0.560891, -0.733724,
		0.875853, 0.031155, 0.481571,
		38.478230, 41.768223, 35.148857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.355751, 41.572025, 34.272072>,  <37.865131, 41.746414, 34.811760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.355751, 41.572025, 34.272072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.540508, 41.529053, 34.624233>,  <38.651363, 41.503269, 34.835529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.540508, 41.529053, 34.624233>,  <38.355751, 41.572025, 34.272072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.540508, 41.529053, 34.624233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345038, -0.892680, -0.289950,
		0.817068, 0.437700, -0.375259,
		0.461897, -0.107431, 0.880403,
		38.679077, 41.496822, 34.888355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.094334, 41.898251, 34.217873>,  <38.355751, 41.572025, 34.272072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.094334, 41.898251, 34.217873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.089603, 41.742397, 34.586231>,  <39.086765, 41.648884, 34.807247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.089603, 41.742397, 34.586231>,  <39.094334, 41.898251, 34.217873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.089603, 41.742397, 34.586231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719629, -0.642744, -0.262707,
		0.694259, 0.659594, 0.287996,
		-0.011828, -0.389636, 0.920893,
		39.086056, 41.625507, 34.862499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.784504, 41.743160, 34.255562>,  <39.094334, 41.898251, 34.217873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.784504, 41.743160, 34.255562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.635670, 41.542603, 34.568012>,  <39.546368, 41.422268, 34.755482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.635670, 41.542603, 34.568012>,  <39.784504, 41.743160, 34.255562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.635670, 41.542603, 34.568012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665519, -0.730734, -0.152030,
		0.647022, 0.463287, 0.605580,
		-0.372084, -0.501392, 0.781127,
		39.524044, 41.392185, 34.802349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.323132, 41.496883, 34.599503>,  <39.784504, 41.743160, 34.255562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.323132, 41.496883, 34.599503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.028751, 41.277729, 34.758602>,  <39.852123, 41.146236, 34.854061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.028751, 41.277729, 34.758602>,  <40.323132, 41.496883, 34.599503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.028751, 41.277729, 34.758602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591882, -0.805887, -0.014923,
		0.328716, 0.224438, 0.917373,
		-0.735950, -0.547882, 0.397748,
		39.807968, 41.113365, 34.877926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.634888, 41.188034, 35.057266>,  <40.323132, 41.496883, 34.599503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.634888, 41.188034, 35.057266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.316563, 40.953056, 34.998482>,  <40.125568, 40.812069, 34.963211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.316563, 40.953056, 34.998482>,  <40.634888, 41.188034, 35.057266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.316563, 40.953056, 34.998482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595122, -0.803565, -0.010601,
		-0.111862, -0.095894, 0.989086,
		-0.795812, -0.587442, -0.146957,
		40.077820, 40.776825, 34.954395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.560280, 40.657600, 35.610096>,  <40.634888, 41.188034, 35.057266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.560280, 40.657600, 35.610096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.383621, 40.519356, 35.278915>,  <40.277626, 40.436409, 35.080208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.383621, 40.519356, 35.278915>,  <40.560280, 40.657600, 35.610096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.383621, 40.519356, 35.278915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361138, -0.913246, 0.188576,
		-0.821294, -0.215719, 0.528148,
		-0.441650, -0.345611, -0.827948,
		40.251125, 40.415672, 35.030529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.675259, 39.996868, 35.786674>,  <40.560280, 40.657600, 35.610096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.675259, 39.996868, 35.786674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.520256, 39.986958, 35.418060>,  <40.427254, 39.981010, 35.196892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.520256, 39.986958, 35.418060>,  <40.675259, 39.996868, 35.786674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.520256, 39.986958, 35.418060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232345, -0.969993, -0.071623,
		-0.892108, -0.241868, 0.381632,
		-0.387504, -0.024775, -0.921535,
		40.404003, 39.979527, 35.141602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.398598, 39.410484, 35.721325>,  <40.675259, 39.996868, 35.786674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.398598, 39.410484, 35.721325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.409443, 39.482403, 35.327991>,  <40.415951, 39.525555, 35.091991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.409443, 39.482403, 35.327991>,  <40.398598, 39.410484, 35.721325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.409443, 39.482403, 35.327991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009928, -0.983594, -0.180120,
		-0.999583, 0.014646, -0.024887,
		0.027116, 0.179798, -0.983330,
		40.417580, 39.536343, 35.032993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.785564, 39.188980, 35.379524>,  <40.398598, 39.410484, 35.721325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.785564, 39.188980, 35.379524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.046452, 39.173893, 35.076687>,  <40.202984, 39.164841, 34.894985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.046452, 39.173893, 35.076687>,  <39.785564, 39.188980, 35.379524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.046452, 39.173893, 35.076687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119947, -0.991314, -0.053943,
		-0.748483, 0.125993, -0.651075,
		0.652216, -0.037719, -0.757094,
		40.242115, 39.162579, 34.849560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.572346, 38.503090, 35.038628>,  <39.785564, 39.188980, 35.379524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.572346, 38.503090, 35.038628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.937962, 38.583904, 34.897938>,  <40.157333, 38.632393, 34.813526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.937962, 38.583904, 34.897938>,  <39.572346, 38.503090, 35.038628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.937962, 38.583904, 34.897938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027117, -0.895621, -0.443990,
		-0.404710, 0.396288, -0.824115,
		0.914043, 0.202035, -0.351721,
		40.212173, 38.644516, 34.792423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.605530, 38.084007, 34.451698>,  <39.572346, 38.503090, 35.038628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.605530, 38.084007, 34.451698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.984501, 38.198639, 34.508633>,  <40.211884, 38.267418, 34.542793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.984501, 38.198639, 34.508633>,  <39.605530, 38.084007, 34.451698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.984501, 38.198639, 34.508633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319935, -0.855997, -0.406092,
		0.005458, 0.430279, -0.902680,
		0.947424, 0.286582, 0.142333,
		40.268726, 38.284615, 34.551334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.917400, 37.950752, 33.810261>,  <39.605530, 38.084007, 34.451698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.917400, 37.950752, 33.810261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.215725, 37.970715, 34.075974>,  <40.394718, 37.982693, 34.235401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.215725, 37.970715, 34.075974>,  <39.917400, 37.950752, 33.810261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.215725, 37.970715, 34.075974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388111, -0.843020, -0.372407,
		0.541419, 0.535562, -0.648104,
		0.745811, 0.049908, 0.664285,
		40.439468, 37.985687, 34.275261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.672207, 37.841568, 33.548897>,  <39.917400, 37.950752, 33.810261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.672207, 37.841568, 33.548897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.698463, 37.765610, 33.940739>,  <40.714218, 37.720036, 34.175846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.698463, 37.765610, 33.940739>,  <40.672207, 37.841568, 33.548897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.698463, 37.765610, 33.940739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402042, -0.893480, -0.200140,
		0.913265, 0.406982, 0.017695,
		0.065644, -0.189895, 0.979607,
		40.718155, 37.708641, 34.234619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.292618, 37.333363, 33.562241>,  <40.672207, 37.841568, 33.548897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.292618, 37.333363, 33.562241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.105511, 37.304646, 33.914612>,  <40.993248, 37.287415, 34.126034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.105511, 37.304646, 33.914612>,  <41.292618, 37.333363, 33.562241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.105511, 37.304646, 33.914612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361379, -0.925113, 0.116492,
		0.806599, 0.372842, 0.458680,
		-0.467765, -0.071795, 0.880932,
		40.965179, 37.283108, 34.178890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.828640, 37.092678, 34.023888>,  <41.292618, 37.333363, 33.562241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.828640, 37.092678, 34.023888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.472771, 36.986977, 34.172832>,  <41.259251, 36.923553, 34.262199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.472771, 36.986977, 34.172832>,  <41.828640, 37.092678, 34.023888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.472771, 36.986977, 34.172832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322416, -0.941032, 0.102506,
		0.323314, 0.211251, 0.922411,
		-0.889672, -0.264258, 0.372359,
		41.205868, 36.907700, 34.284538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.861103, 36.786617, 34.807663>,  <41.828640, 37.092678, 34.023888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.861103, 36.786617, 34.807663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.586143, 36.652912, 34.549747>,  <41.421165, 36.572689, 34.395000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.586143, 36.652912, 34.549747>,  <41.861103, 36.786617, 34.807663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.586143, 36.652912, 34.549747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526016, -0.841290, -0.124652,
		-0.500786, -0.424854, 0.754131,
		-0.687402, -0.334261, -0.644786,
		41.379925, 36.552635, 34.356312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.638515, 36.174370, 35.076710>,  <41.861103, 36.786617, 34.807663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.638515, 36.174370, 35.076710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.616409, 36.209190, 34.678841>,  <41.603146, 36.230083, 34.440121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.616409, 36.209190, 34.678841>,  <41.638515, 36.174370, 35.076710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.616409, 36.209190, 34.678841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720822, -0.685858, -0.100073,
		-0.690914, -0.722510, -0.024844,
		-0.055264, 0.087050, -0.994670,
		41.599831, 36.235306, 34.380440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.768272, 35.550667, 34.851654>,  <41.638515, 36.174370, 35.076710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.768272, 35.550667, 34.851654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.906063, 35.748528, 34.532490>,  <41.988735, 35.867245, 34.340992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.906063, 35.748528, 34.532490>,  <41.768272, 35.550667, 34.851654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.906063, 35.748528, 34.532490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692681, -0.707601, -0.139621,
		-0.633664, -0.504600, -0.586386,
		0.344474, 0.494652, -0.797908,
		42.009407, 35.896923, 34.293118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.816296, 35.136959, 34.116779>,  <41.768272, 35.550667, 34.851654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.816296, 35.136959, 34.116779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.115856, 35.391869, 34.189476>,  <42.295593, 35.544815, 34.233093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.115856, 35.391869, 34.189476>,  <41.816296, 35.136959, 34.116779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.115856, 35.391869, 34.189476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662666, -0.722001, -0.198968,
		0.004424, 0.269445, -0.963006,
		0.748902, 0.637271, 0.181746,
		42.340527, 35.583050, 34.243999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.301994, 35.207233, 33.441250>,  <41.816296, 35.136959, 34.116779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.301994, 35.207233, 33.441250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.462925, 35.229565, 33.806767>,  <42.559483, 35.242962, 34.026077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.462925, 35.229565, 33.806767>,  <42.301994, 35.207233, 33.441250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.462925, 35.229565, 33.806767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712169, -0.646295, -0.274075,
		0.575278, 0.761043, -0.299783,
		0.402331, 0.055827, 0.913790,
		42.583626, 35.246311, 34.080902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.966423, 35.516026, 33.467880>,  <42.301994, 35.207233, 33.441250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.966423, 35.516026, 33.467880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.935093, 35.196365, 33.706284>,  <42.916294, 35.004570, 33.849323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.935093, 35.196365, 33.706284>,  <42.966423, 35.516026, 33.467880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.935093, 35.196365, 33.706284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890173, -0.325223, -0.319097,
		0.448841, 0.505554, 0.736856,
		-0.078321, -0.799153, 0.596004,
		42.911598, 34.956619, 33.885086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.658123, 35.474709, 33.872124>,  <42.966423, 35.516026, 33.467880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.658123, 35.474709, 33.872124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.450520, 35.138741, 33.808659>,  <43.325958, 34.937160, 33.770580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.450520, 35.138741, 33.808659>,  <43.658123, 35.474709, 33.872124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.450520, 35.138741, 33.808659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794609, -0.405684, -0.451682,
		0.315009, -0.360500, 0.877958,
		-0.519005, -0.839917, -0.158662,
		43.294819, 34.886765, 33.761059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.143524, 34.926895, 34.019909>,  <43.658123, 35.474709, 33.872124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.143524, 34.926895, 34.019909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.918682, 34.665344, 33.817333>,  <43.783775, 34.508415, 33.695789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.918682, 34.665344, 33.817333>,  <44.143524, 34.926895, 34.019909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.918682, 34.665344, 33.817333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810363, -0.557864, -0.179164,
		-0.165371, -0.511107, 0.843458,
		-0.562107, -0.653879, -0.506437,
		43.750050, 34.469181, 33.665401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.986118, 34.259586, 34.319572>,  <44.143524, 34.926895, 34.019909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.986118, 34.259586, 34.319572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.997833, 34.226601, 33.921108>,  <44.004864, 34.206810, 33.682030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.997833, 34.226601, 33.921108>,  <43.986118, 34.259586, 34.319572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.997833, 34.226601, 33.921108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635980, -0.767312, 0.082221,
		-0.771149, -0.635948, 0.029976,
		0.029288, -0.082468, -0.996163,
		44.006618, 34.201859, 33.622261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.218540, 33.658676, 34.349129>,  <43.986118, 34.259586, 34.319572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.218540, 33.658676, 34.349129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.330456, 33.820805, 34.001007>,  <44.397606, 33.918083, 33.792133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.330456, 33.820805, 34.001007>,  <44.218540, 33.658676, 34.349129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.330456, 33.820805, 34.001007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867155, -0.495729, 0.047902,
		-0.412021, -0.768094, -0.490174,
		0.279786, 0.405320, -0.870307,
		44.414391, 33.942402, 33.739914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.363777, 33.211491, 33.996777>,  <44.218540, 33.658676, 34.349129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.363777, 33.211491, 33.996777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.567459, 33.508739, 33.823120>,  <44.689667, 33.687088, 33.718925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.567459, 33.508739, 33.823120>,  <44.363777, 33.211491, 33.996777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.567459, 33.508739, 33.823120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842455, -0.533545, 0.074835,
		-0.176022, -0.403849, -0.897732,
		0.509202, 0.743126, -0.434140,
		44.720219, 33.731678, 33.692879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.963047, 32.894791, 33.735043>,  <44.363777, 33.211491, 33.996777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.963047, 32.894791, 33.735043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.041672, 33.284355, 33.780399>,  <45.088848, 33.518093, 33.807613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.041672, 33.284355, 33.780399>,  <44.963047, 32.894791, 33.735043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.041672, 33.284355, 33.780399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979525, -0.200184, 0.021392,
		0.043534, 0.106869, -0.993320,
		0.196561, 0.973912, 0.113396,
		45.100639, 33.576530, 33.814419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.394897, 33.158112, 33.229084>,  <44.963047, 32.894791, 33.735043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.394897, 33.158112, 33.229084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.439857, 33.406765, 33.539165>,  <45.466831, 33.555958, 33.725212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.439857, 33.406765, 33.539165>,  <45.394897, 33.158112, 33.229084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.439857, 33.406765, 33.539165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993397, -0.088361, -0.073175,
		0.023009, 0.778307, -0.627462,
		0.112396, 0.621635, 0.775201,
		45.473576, 33.593254, 33.771725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.652283, 33.736469, 33.110786>,  <45.394897, 33.158112, 33.229084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.652283, 33.736469, 33.110786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.792816, 33.675560, 33.480301>,  <45.877136, 33.639015, 33.702011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.792816, 33.675560, 33.480301>,  <45.652283, 33.736469, 33.110786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.792816, 33.675560, 33.480301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929161, 0.177897, -0.324056,
		-0.114995, 0.972197, 0.203983,
		0.351334, -0.152268, 0.923785,
		45.898216, 33.629879, 33.757435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.103348, 34.321621, 33.218922>,  <45.652283, 33.736469, 33.110786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.103348, 34.321621, 33.218922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.184635, 34.002357, 33.445778>,  <46.233406, 33.810799, 33.581890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.184635, 34.002357, 33.445778>,  <46.103348, 34.321621, 33.218922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.184635, 34.002357, 33.445778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976002, 0.211418, -0.052186,
		-0.078250, 0.564133, 0.821968,
		0.203219, -0.798158, 0.567138,
		46.245602, 33.762909, 33.615921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.547440, 34.450825, 33.901463>,  <46.103348, 34.321621, 33.218922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.547440, 34.450825, 33.901463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.589951, 34.072132, 33.779865>,  <46.615456, 33.844917, 33.706909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.589951, 34.072132, 33.779865>,  <46.547440, 34.450825, 33.901463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.589951, 34.072132, 33.779865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984496, 0.143091, -0.101449,
		0.139543, -0.288495, 0.947258,
		0.106277, -0.946729, -0.303989,
		46.621834, 33.788113, 33.688667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.959343, 34.567436, 34.502750>,  <46.547440, 34.450825, 33.901463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.959343, 34.567436, 34.502750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.623672, 34.381104, 34.615021>,  <46.422268, 34.269302, 34.682381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.623672, 34.381104, 34.615021>,  <46.959343, 34.567436, 34.502750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.623672, 34.381104, 34.615021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513846, -0.510061, 0.689783,
		-0.178165, 0.723074, 0.667399,
		-0.839178, -0.465835, 0.280674,
		46.371918, 34.241352, 34.699223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.705143, 34.236546, 35.099262>,  <46.959343, 34.567436, 34.502750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.705143, 34.236546, 35.099262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.799065, 33.864964, 34.984779>,  <46.855415, 33.642014, 34.916088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.799065, 33.864964, 34.984779>,  <46.705143, 34.236546, 35.099262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.799065, 33.864964, 34.984779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764543, -0.005340, 0.644550,
		-0.600285, -0.370159, 0.708971,
		0.234800, -0.928953, -0.286208,
		46.869503, 33.586277, 34.898918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.179958, 33.811241, 35.539623>,  <46.705143, 34.236546, 35.099262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.179958, 33.811241, 35.539623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.170506, 34.070816, 35.843815>,  <47.164833, 34.226559, 36.026329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.170506, 34.070816, 35.843815>,  <47.179958, 33.811241, 35.539623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.170506, 34.070816, 35.843815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999715, 0.017896, 0.015794,
		-0.003360, 0.760634, -0.649172,
		-0.023632, 0.648934, 0.760478,
		47.163418, 34.265495, 36.071957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.646057, 34.471130, 35.413342>,  <47.179958, 33.811241, 35.539623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.646057, 34.471130, 35.413342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.612553, 34.384991, 35.802517>,  <47.592449, 34.333309, 36.036022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.612553, 34.384991, 35.802517>,  <47.646057, 34.471130, 35.413342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.612553, 34.384991, 35.802517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993810, 0.053448, 0.097391,
		-0.072974, 0.975074, 0.209536,
		-0.083765, -0.215346, 0.972939,
		47.587421, 34.320385, 36.094398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.388103, 35.078148, 35.034248>,  <47.646057, 34.471130, 35.413342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.388103, 35.078148, 35.034248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.610363, 34.762787, 34.928673>,  <47.743721, 34.573570, 34.865326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.610363, 34.762787, 34.928673>,  <47.388103, 35.078148, 35.034248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.610363, 34.762787, 34.928673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019303, 0.329610, -0.943920,
		0.831191, 0.519395, 0.198368,
		0.555652, -0.788407, -0.263943,
		47.777058, 34.526264, 34.849491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.911797, 31.163177, 27.260185> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.531269, 31.084675, 27.165121>,  <36.302952, 31.037573, 27.108082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.531269, 31.084675, 27.165121>,  <36.911797, 31.163177, 27.260185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.531269, 31.084675, 27.165121> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306108, 0.511449, 0.802943,
		-0.036033, 0.836602, -0.546625,
		-0.951315, -0.196258, -0.237662,
		36.245876, 31.025797, 27.093822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.553566, 31.786070, 27.152533>,  <36.911797, 31.163177, 27.260185>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.553566, 31.786070, 27.152533> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.257050, 31.530375, 27.234381>,  <36.079140, 31.376957, 27.283489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.257050, 31.530375, 27.234381>,  <36.553566, 31.786070, 27.152533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.257050, 31.530375, 27.234381> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262918, 0.557052, 0.787761,
		-0.617550, 0.530159, -0.581002,
		-0.741287, -0.639237, 0.204619,
		36.034664, 31.338604, 27.295767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.036366, 32.237431, 27.489941>,  <36.553566, 31.786070, 27.152533>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.036366, 32.237431, 27.489941> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.843449, 31.893488, 27.556917>,  <35.727699, 31.687122, 27.597103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.843449, 31.893488, 27.556917>,  <36.036366, 32.237431, 27.489941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.843449, 31.893488, 27.556917> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431999, 0.399737, 0.808447,
		-0.762083, 0.317574, -0.564249,
		-0.482293, -0.859859, 0.167441,
		35.698761, 31.635530, 27.607149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.297466, 32.419544, 27.684053>,  <36.036366, 32.237431, 27.489941>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.297466, 32.419544, 27.684053> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.398693, 32.066536, 27.842606>,  <35.459431, 31.854733, 27.937737>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.398693, 32.066536, 27.842606>,  <35.297466, 32.419544, 27.684053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.398693, 32.066536, 27.842606> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544552, 0.208706, 0.812345,
		-0.799636, -0.421431, -0.427760,
		0.253071, -0.882518, 0.396380,
		35.474613, 31.801781, 27.961519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.631832, 32.163216, 28.021675>,  <35.297466, 32.419544, 27.684053>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.631832, 32.163216, 28.021675> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.927197, 31.978590, 28.218330>,  <35.104416, 31.867815, 28.336323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.927197, 31.978590, 28.218330>,  <34.631832, 32.163216, 28.021675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.927197, 31.978590, 28.218330> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403036, 0.282449, 0.870508,
		-0.540655, -0.840942, 0.022538,
		0.738413, -0.461561, 0.491638,
		35.148720, 31.840122, 28.365822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.267117, 31.789989, 28.641249>,  <34.631832, 32.163216, 28.021675>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.267117, 31.789989, 28.641249> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.661068, 31.825909, 28.700500>,  <34.897438, 31.847460, 28.736052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.661068, 31.825909, 28.700500>,  <34.267117, 31.789989, 28.641249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.661068, 31.825909, 28.700500> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169888, 0.333736, 0.927231,
		0.033827, -0.938380, 0.343947,
		0.984883, 0.089798, 0.148131,
		34.956532, 31.852848, 28.744940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.325008, 31.584229, 29.284370>,  <34.267117, 31.789989, 28.641249>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.325008, 31.584229, 29.284370> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.664566, 31.786945, 29.224319>,  <34.868301, 31.908575, 29.188288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.664566, 31.786945, 29.224319>,  <34.325008, 31.584229, 29.284370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.664566, 31.786945, 29.224319> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096094, 0.427275, 0.899001,
		0.519754, -0.748731, 0.411411,
		0.848894, 0.506793, -0.150129,
		34.919235, 31.938984, 29.179281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.630852, 31.535551, 29.974108>,  <34.325008, 31.584229, 29.284370>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.630852, 31.535551, 29.974108> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.810673, 31.838907, 29.785322>,  <34.918564, 32.020920, 29.672050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.810673, 31.838907, 29.785322>,  <34.630852, 31.535551, 29.974108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.810673, 31.838907, 29.785322> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103426, 0.569002, 0.815806,
		0.887246, -0.317934, 0.334233,
		0.449552, 0.758389, -0.471962,
		34.945538, 32.066425, 29.643734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.947258, 31.923685, 30.512001>,  <34.630852, 31.535551, 29.974108>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.947258, 31.923685, 30.512001> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.949623, 32.185188, 30.209328>,  <34.951042, 32.342091, 30.027723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.949623, 32.185188, 30.209328>,  <34.947258, 31.923685, 30.512001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.949623, 32.185188, 30.209328> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059534, 0.755123, 0.652874,
		0.998209, -0.048906, -0.034459,
		0.005908, 0.653756, -0.756682,
		34.951397, 32.381313, 29.982323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.501751, 32.376469, 30.588568>,  <34.947258, 31.923685, 30.512001>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.501751, 32.376469, 30.588568> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.260292, 32.587318, 30.349319>,  <35.115417, 32.713829, 30.205770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.260292, 32.587318, 30.349319>,  <35.501751, 32.376469, 30.588568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.260292, 32.587318, 30.349319> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083558, 0.787929, 0.610071,
		0.792858, 0.318292, -0.519679,
		-0.603651, 0.527122, -0.598120,
		35.079197, 32.745457, 30.169884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.820759, 32.927002, 30.486902>,  <35.501751, 32.376469, 30.588568>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.820759, 32.927002, 30.486902> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.434517, 33.018780, 30.437971>,  <35.202770, 33.073845, 30.408611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.434517, 33.018780, 30.437971>,  <35.820759, 32.927002, 30.486902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.434517, 33.018780, 30.437971> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099726, 0.761296, 0.640689,
		0.240129, 0.606453, -0.757992,
		-0.965605, 0.229440, -0.122330,
		35.144836, 33.087612, 30.401272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.832554, 33.651134, 30.717224>,  <35.820759, 32.927002, 30.486902>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.832554, 33.651134, 30.717224> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.442314, 33.568378, 30.687824>,  <35.208172, 33.518726, 30.670183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.442314, 33.568378, 30.687824>,  <35.832554, 33.651134, 30.717224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.442314, 33.568378, 30.687824> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199893, 0.698496, 0.687129,
		-0.090819, 0.685055, -0.722808,
		-0.975600, -0.206889, -0.073501,
		35.149635, 33.506313, 30.665773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.473236, 34.319550, 30.708649>,  <35.832554, 33.651134, 30.717224>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.473236, 34.319550, 30.708649> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.211372, 34.041767, 30.828081>,  <35.054256, 33.875095, 30.899740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.211372, 34.041767, 30.828081>,  <35.473236, 34.319550, 30.708649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.211372, 34.041767, 30.828081> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215868, 0.550287, 0.806589,
		-0.724450, 0.463583, -0.510160,
		-0.654655, -0.694460, 0.298583,
		35.014977, 33.833427, 30.917656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.810547, 34.681194, 30.830742>,  <35.473236, 34.319550, 30.708649>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.810547, 34.681194, 30.830742> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.813992, 34.352657, 31.058891>,  <34.816059, 34.155537, 31.195782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.813992, 34.352657, 31.058891>,  <34.810547, 34.681194, 30.830742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.813992, 34.352657, 31.058891> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218552, 0.555059, 0.802586,
		-0.975787, -0.131569, -0.174725,
		0.008613, -0.821340, 0.570374,
		34.816574, 34.106255, 31.230003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.276150, 34.775894, 31.191498>,  <34.810547, 34.681194, 30.830742>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.276150, 34.775894, 31.191498> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.431934, 34.472576, 31.400610>,  <34.525406, 34.290585, 31.526077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.431934, 34.472576, 31.400610>,  <34.276150, 34.775894, 31.191498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.431934, 34.472576, 31.400610> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195822, 0.486448, 0.851482,
		-0.899984, -0.433994, 0.040963,
		0.389465, -0.758299, 0.522781,
		34.548775, 34.245087, 31.557444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.809929, 34.706512, 31.631937>,  <34.276150, 34.775894, 31.191498>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.809929, 34.706512, 31.631937> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.130508, 34.521778, 31.783928>,  <34.322857, 34.410938, 31.875122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.130508, 34.521778, 31.783928>,  <33.809929, 34.706512, 31.631937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.130508, 34.521778, 31.783928> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102281, 0.520146, 0.847931,
		-0.589250, -0.718439, 0.369635,
		0.801451, -0.461836, 0.379979,
		34.370945, 34.383228, 31.897923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.634819, 34.491673, 32.291595>,  <33.809929, 34.706512, 31.631937>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.634819, 34.491673, 32.291595> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.032436, 34.510880, 32.330734>,  <34.271008, 34.522404, 32.354218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.032436, 34.510880, 32.330734>,  <33.634819, 34.491673, 32.291595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.032436, 34.510880, 32.330734> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107456, 0.581994, 0.806062,
		-0.018241, -0.811774, 0.583687,
		0.994042, 0.048017, 0.097846,
		34.330650, 34.525284, 32.360088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.674152, 34.485725, 33.019238>,  <33.634819, 34.491673, 32.291595>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.674152, 34.485725, 33.019238> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.042389, 34.591824, 32.904583>,  <34.263332, 34.655483, 32.835789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.042389, 34.591824, 32.904583>,  <33.674152, 34.485725, 33.019238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.042389, 34.591824, 32.904583> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113288, 0.521029, 0.845987,
		0.373736, -0.811280, 0.449606,
		0.920590, 0.265241, -0.286635,
		34.318565, 34.671394, 32.818592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.206882, 34.329262, 33.589546>,  <33.674152, 34.485725, 33.019238>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.206882, 34.329262, 33.589546> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.348461, 34.622326, 33.357018>,  <34.433407, 34.798164, 33.217503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.348461, 34.622326, 33.357018>,  <34.206882, 34.329262, 33.589546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.348461, 34.622326, 33.357018> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315329, 0.491680, 0.811676,
		0.880506, -0.470596, -0.057001,
		0.353945, 0.732660, -0.581320,
		34.454643, 34.842125, 33.182621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.725605, 34.469494, 33.899231>,  <34.206882, 34.329262, 33.589546>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.725605, 34.469494, 33.899231> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.677776, 34.792206, 33.667778>,  <34.649078, 34.985832, 33.528908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.677776, 34.792206, 33.667778>,  <34.725605, 34.469494, 33.899231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.677776, 34.792206, 33.667778> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276275, 0.586832, 0.761118,
		0.953611, -0.068853, -0.293061,
		-0.119572, 0.806776, -0.578632,
		34.641903, 35.034237, 33.494190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.378452, 34.961899, 33.970371>,  <34.725605, 34.469494, 33.899231>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.378452, 34.961899, 33.970371> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.048649, 35.156559, 33.854881>,  <34.850769, 35.273354, 33.785587>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.048649, 35.156559, 33.854881>,  <35.378452, 34.961899, 33.970371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.048649, 35.156559, 33.854881> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121610, 0.650722, 0.749515,
		0.552633, 0.582866, -0.595705,
		-0.824505, 0.486650, -0.288727,
		34.801296, 35.302555, 33.768265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.725216, 34.308029, 34.171391>,  <35.378452, 34.961899, 33.970371>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.725216, 34.308029, 34.171391> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.093208, 34.344963, 34.323761>,  <36.314003, 34.367123, 34.415184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.093208, 34.344963, 34.323761>,  <35.725216, 34.308029, 34.171391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.093208, 34.344963, 34.323761> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370531, -0.521785, -0.768406,
		0.127814, 0.848066, -0.514245,
		0.919984, 0.092330, 0.380926,
		36.369202, 34.372662, 34.438038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.224319, 34.440281, 33.635990>,  <35.725216, 34.308029, 34.171391>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.224319, 34.440281, 33.635990> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.457848, 34.304100, 33.930813>,  <36.597965, 34.222393, 34.107704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.457848, 34.304100, 33.930813>,  <36.224319, 34.440281, 33.635990>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.457848, 34.304100, 33.930813> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466582, -0.602248, -0.647764,
		0.664423, 0.722072, -0.192754,
		0.583818, -0.340454, 0.737053,
		36.632992, 34.201965, 34.151928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.866631, 34.463306, 33.383694>,  <36.224319, 34.440281, 33.635990>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.866631, 34.463306, 33.383694> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.898163, 34.191116, 33.675102>,  <36.917084, 34.027802, 33.849945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.898163, 34.191116, 33.675102>,  <36.866631, 34.463306, 33.383694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.898163, 34.191116, 33.675102> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456944, -0.624834, -0.633075,
		0.885995, 0.382800, 0.261681,
		0.078834, -0.680475, 0.728518,
		36.921814, 33.986973, 33.893658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.565571, 34.125877, 33.327736>,  <36.866631, 34.463306, 33.383694>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.565571, 34.125877, 33.327736> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.322750, 33.875690, 33.523811>,  <37.177059, 33.725578, 33.641457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.322750, 33.875690, 33.523811>,  <37.565571, 34.125877, 33.327736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.322750, 33.875690, 33.523811> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235366, -0.730688, -0.640857,
		0.759009, -0.273657, 0.590777,
		-0.607048, -0.625465, 0.490190,
		37.140636, 33.688049, 33.670868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.065407, 33.544411, 33.496914>,  <37.565571, 34.125877, 33.327736>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.065407, 33.544411, 33.496914> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.686466, 33.423752, 33.539871>,  <37.459103, 33.351357, 33.565647>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.686466, 33.423752, 33.539871>,  <38.065407, 33.544411, 33.496914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.686466, 33.423752, 33.539871> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217107, -0.851678, -0.476979,
		0.235344, -0.428551, 0.872329,
		-0.947353, -0.301643, 0.107396,
		37.402260, 33.333260, 33.572090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.082264, 32.856426, 33.780357>,  <38.065407, 33.544411, 33.496914>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.082264, 32.856426, 33.780357> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.717949, 32.871639, 33.615906>,  <37.499359, 32.880768, 33.517235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.717949, 32.871639, 33.615906>,  <38.082264, 32.856426, 33.780357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.717949, 32.871639, 33.615906> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161344, -0.883792, -0.439182,
		-0.380053, -0.466333, 0.798808,
		-0.910784, 0.038029, -0.411128,
		37.444714, 32.883049, 33.492569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.909599, 32.193550, 33.741089>,  <38.082264, 32.856426, 33.780357>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.909599, 32.193550, 33.741089> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.627892, 32.343788, 33.500114>,  <37.458866, 32.433929, 33.355530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.627892, 32.343788, 33.500114>,  <37.909599, 32.193550, 33.741089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.627892, 32.343788, 33.500114> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044290, -0.870177, -0.490745,
		-0.708545, -0.318937, 0.629478,
		-0.704274, 0.375595, -0.602434,
		37.416611, 32.456467, 33.319386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.422935, 31.670132, 33.583519>,  <37.909599, 32.193550, 33.741089>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.422935, 31.670132, 33.583519> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.375679, 31.931190, 33.284161>,  <37.347324, 32.087826, 33.104546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.375679, 31.931190, 33.284161>,  <37.422935, 31.670132, 33.583519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.375679, 31.931190, 33.284161> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253853, -0.748480, -0.612646,
		-0.960001, 0.117607, 0.254099,
		-0.118136, 0.652645, -0.748397,
		37.340237, 32.126984, 33.059643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.870598, 31.369595, 33.143185>,  <37.422935, 31.670132, 33.583519>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.870598, 31.369595, 33.143185> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.035694, 31.664001, 32.928551>,  <37.134754, 31.840645, 32.799770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.035694, 31.664001, 32.928551>,  <36.870598, 31.369595, 33.143185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.035694, 31.664001, 32.928551> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194496, -0.504298, -0.841341,
		-0.889839, 0.451622, -0.064993,
		0.412744, 0.736017, -0.536583,
		37.159519, 31.884806, 32.767574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.312752, 31.564411, 32.588440>,  <36.870598, 31.369595, 33.143185>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.312752, 31.564411, 32.588440> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.669052, 31.674145, 32.443493>,  <36.882832, 31.739985, 32.356525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.669052, 31.674145, 32.443493>,  <36.312752, 31.564411, 32.588440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.669052, 31.674145, 32.443493> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228222, -0.419516, -0.878591,
		-0.393047, 0.865302, -0.311073,
		0.890746, 0.274334, -0.362370,
		36.936275, 31.756445, 32.334782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.220280, 31.662750, 31.902830>,  <36.312752, 31.564411, 32.588440>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.220280, 31.662750, 31.902830> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.619625, 31.642939, 31.891371>,  <36.859230, 31.631052, 31.884495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.619625, 31.642939, 31.891371>,  <36.220280, 31.662750, 31.902830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.619625, 31.642939, 31.891371> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042099, -0.296760, -0.954024,
		0.038749, 0.953667, -0.298359,
		0.998362, -0.049528, -0.028649,
		36.919132, 31.628080, 31.882776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.485775, 31.935286, 31.187601>,  <36.220280, 31.662750, 31.902830>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.485775, 31.935286, 31.187601> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.767826, 31.687521, 31.325657>,  <36.937057, 31.538862, 31.408491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.767826, 31.687521, 31.325657>,  <36.485775, 31.935286, 31.187601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.767826, 31.687521, 31.325657> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079208, -0.414891, -0.906417,
		0.704639, 0.666481, -0.243491,
		0.705132, -0.619410, 0.345139,
		36.979366, 31.501698, 31.429199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.036137, 31.905752, 30.648695>,  <36.485775, 31.935286, 31.187601>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.036137, 31.905752, 30.648695> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.110107, 31.578260, 30.866129>,  <37.154491, 31.381765, 30.996590>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.110107, 31.578260, 30.866129>,  <37.036137, 31.905752, 30.648695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.110107, 31.578260, 30.866129> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082087, -0.538326, -0.838730,
		0.979318, 0.199724, -0.032343,
		0.184926, -0.818728, 0.543587,
		37.165585, 31.332642, 31.029205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.739361, 31.665949, 30.486860>,  <37.036137, 31.905752, 30.648695>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.739361, 31.665949, 30.486860> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.520370, 31.356441, 30.614326>,  <37.388977, 31.170736, 30.690807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.520370, 31.356441, 30.614326>,  <37.739361, 31.665949, 30.486860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.520370, 31.356441, 30.614326> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315416, -0.543528, -0.777875,
		0.775102, -0.325356, 0.541628,
		-0.547477, -0.773771, 0.318667,
		37.356129, 31.124310, 30.709927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.166809, 30.987629, 30.298624>,  <37.739361, 31.665949, 30.486860>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.166809, 30.987629, 30.298624> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.799614, 30.853268, 30.382969>,  <37.579296, 30.772650, 30.433575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.799614, 30.853268, 30.382969>,  <38.166809, 30.987629, 30.298624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.799614, 30.853268, 30.382969> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078367, -0.674813, -0.733816,
		0.388784, -0.657112, 0.645795,
		-0.917990, -0.335905, 0.210861,
		37.524216, 30.752497, 30.446228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.116196, 30.152554, 30.478588>,  <38.166809, 30.987629, 30.298624>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.116196, 30.152554, 30.478588> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.774323, 30.304220, 30.336748>,  <37.569199, 30.395220, 30.251644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.774323, 30.304220, 30.336748>,  <38.116196, 30.152554, 30.478588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.774323, 30.304220, 30.336748> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078171, -0.769257, -0.634140,
		-0.513225, -0.514272, 0.687114,
		-0.854687, 0.379169, -0.354600,
		37.517918, 30.417971, 30.230368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.736244, 29.577465, 30.141647>,  <38.116196, 30.152554, 30.478588>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.736244, 29.577465, 30.141647> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.550182, 29.901405, 29.998667>,  <37.438545, 30.095770, 29.912878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.550182, 29.901405, 29.998667>,  <37.736244, 29.577465, 30.141647>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.550182, 29.901405, 29.998667> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016478, -0.411646, -0.911195,
		-0.885076, -0.417957, 0.204824,
		-0.465156, 0.809852, -0.357451,
		37.410637, 30.144361, 29.891432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.235989, 29.248692, 29.667326>,  <37.736244, 29.577465, 30.141647>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.235989, 29.248692, 29.667326> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.262257, 29.635483, 29.568821>,  <37.278019, 29.867558, 29.509718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.262257, 29.635483, 29.568821>,  <37.235989, 29.248692, 29.667326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.262257, 29.635483, 29.568821> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089040, -0.251489, -0.963756,
		-0.993861, 0.041363, -0.102615,
		0.065670, 0.966976, -0.246263,
		37.281960, 29.925575, 29.494942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.730141, 29.402857, 29.204323>,  <37.235989, 29.248692, 29.667326>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.730141, 29.402857, 29.204323> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.984196, 29.705210, 29.140760>,  <37.136627, 29.886621, 29.102623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.984196, 29.705210, 29.140760>,  <36.730141, 29.402857, 29.204323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.984196, 29.705210, 29.140760> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009550, -0.213399, -0.976919,
		-0.772344, 0.618956, -0.142755,
		0.635133, 0.755880, -0.158907,
		37.174736, 29.931974, 29.093088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.403267, 29.815830, 28.685648> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.797031, 29.885897, 28.679270>,  <37.033291, 29.927937, 28.675444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.797031, 29.885897, 28.679270>,  <36.403267, 29.815830, 28.685648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.797031, 29.885897, 28.679270> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028038, -0.245775, -0.968921,
		-0.173642, 0.953369, -0.246854,
		0.984410, 0.175167, -0.015946,
		37.092354, 29.938446, 28.674486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.454655, 30.136494, 28.058868>,  <36.403267, 29.815830, 28.685648>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.454655, 30.136494, 28.058868> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.831421, 30.034969, 28.146849>,  <37.057480, 29.974054, 28.199636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.831421, 30.034969, 28.146849>,  <36.454655, 30.136494, 28.058868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.831421, 30.034969, 28.146849> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163960, -0.224059, -0.960685,
		0.293113, 0.940946, -0.169429,
		0.941914, -0.253810, 0.219952,
		37.113995, 29.958826, 28.212833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.886852, 30.326946, 27.572418>,  <36.454655, 30.136494, 28.058868>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.886852, 30.326946, 27.572418> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.102615, 30.027905, 27.727404>,  <37.232071, 29.848478, 27.820396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.102615, 30.027905, 27.727404>,  <36.886852, 30.326946, 27.572418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.102615, 30.027905, 27.727404> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284623, -0.271188, -0.919482,
		0.792486, 0.606253, 0.066506,
		0.539403, -0.747606, 0.387466,
		37.264435, 29.803623, 27.843643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.389790, 30.327789, 27.142284>,  <36.886852, 30.326946, 27.572418>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.389790, 30.327789, 27.142284> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.426365, 29.983595, 27.342766>,  <37.448311, 29.777079, 27.463055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.426365, 29.983595, 27.342766>,  <37.389790, 30.327789, 27.142284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.426365, 29.983595, 27.342766> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483736, -0.401557, -0.777657,
		0.870424, 0.313558, 0.379530,
		0.091438, -0.860484, 0.501205,
		37.453796, 29.725451, 27.493128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.075104, 30.181671, 27.188776>,  <37.389790, 30.327789, 27.142284>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.075104, 30.181671, 27.188776> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.867023, 29.842480, 27.229427>,  <37.742176, 29.638966, 27.253819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.867023, 29.842480, 27.229427>,  <38.075104, 30.181671, 27.188776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.867023, 29.842480, 27.229427> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536688, -0.417139, -0.733458,
		0.664350, -0.326999, 0.672094,
		-0.520197, -0.847978, 0.101630,
		37.710964, 29.588087, 27.259916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.524326, 29.680332, 26.793947>,  <38.075104, 30.181671, 27.188776>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.524326, 29.680332, 26.793947> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.162582, 29.516193, 26.840857>,  <37.945538, 29.417711, 26.869001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.162582, 29.516193, 26.840857>,  <38.524326, 29.680332, 26.793947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.162582, 29.516193, 26.840857> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080252, -0.433397, -0.897623,
		0.419160, -0.802361, 0.424877,
		-0.904359, -0.410345, 0.117271,
		37.891273, 29.393089, 26.876038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.671009, 28.985037, 26.416960>,  <38.524326, 29.680332, 26.793947>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.671009, 28.985037, 26.416960> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.272671, 28.998348, 26.450848>,  <38.033669, 29.006334, 26.471180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.272671, 28.998348, 26.450848>,  <38.671009, 28.985037, 26.416960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.272671, 28.998348, 26.450848> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090929, -0.405898, -0.909384,
		0.004127, -0.913312, 0.407239,
		-0.995849, 0.033277, 0.084722,
		37.973915, 29.008331, 26.476265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.446381, 28.419210, 26.100065>,  <38.671009, 28.985037, 26.416960>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.446381, 28.419210, 26.100065> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.147377, 28.684275, 26.081696>,  <37.967976, 28.843313, 26.070673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.147377, 28.684275, 26.081696>,  <38.446381, 28.419210, 26.100065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.147377, 28.684275, 26.081696> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161092, -0.247924, -0.955292,
		-0.644421, -0.706692, 0.292075,
		-0.747510, 0.662661, -0.045925,
		37.923122, 28.883072, 26.067919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.905563, 28.130367, 25.796446>,  <38.446381, 28.419210, 26.100065>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.905563, 28.130367, 25.796446> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.837887, 28.518082, 25.725046>,  <37.797279, 28.750710, 25.682207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.837887, 28.518082, 25.725046>,  <37.905563, 28.130367, 25.796446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.837887, 28.518082, 25.725046> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276450, -0.220513, -0.935387,
		-0.946018, -0.108915, 0.305268,
		-0.169194, 0.969284, -0.178500,
		37.787128, 28.808867, 25.671495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.248970, 28.123590, 25.300247>,  <37.905563, 28.130367, 25.796446>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.248970, 28.123590, 25.300247> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.458504, 28.462902, 25.269213>,  <37.584225, 28.666489, 25.250593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.458504, 28.462902, 25.269213>,  <37.248970, 28.123590, 25.300247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.458504, 28.462902, 25.269213> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009488, -0.096885, -0.995250,
		-0.851766, 0.520612, -0.058800,
		0.523836, 0.848279, -0.077584,
		37.615654, 28.717386, 25.245937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.967148, 28.458561, 24.782129>,  <37.248970, 28.123590, 25.300247>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.967148, 28.458561, 24.782129> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.303448, 28.671261, 24.822889>,  <37.505226, 28.798882, 24.847345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.303448, 28.671261, 24.822889>,  <36.967148, 28.458561, 24.782129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.303448, 28.671261, 24.822889> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117507, 0.004509, -0.993062,
		-0.528521, 0.846889, -0.058693,
		0.840749, 0.531750, 0.101899,
		37.555672, 28.830786, 24.853458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.997128, 28.965147, 24.319809>,  <36.967148, 28.458561, 24.782129>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.997128, 28.965147, 24.319809> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.385300, 28.918243, 24.404202>,  <37.618202, 28.890102, 24.454838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.385300, 28.918243, 24.404202>,  <36.997128, 28.965147, 24.319809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.385300, 28.918243, 24.404202> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216247, 0.034022, -0.975746,
		0.107236, 0.992519, 0.058373,
		0.970432, -0.117258, 0.210981,
		37.676430, 28.883066, 24.467495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.299263, 29.465584, 23.824862>,  <36.997128, 28.965147, 24.319809>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.299263, 29.465584, 23.824862> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.611645, 29.229717, 23.907232>,  <37.799072, 29.088198, 23.956654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.611645, 29.229717, 23.907232>,  <37.299263, 29.465584, 23.824862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.611645, 29.229717, 23.907232> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344770, 0.132062, -0.929351,
		0.520813, 0.796776, 0.306433,
		0.780953, -0.589667, 0.205925,
		37.845932, 29.052816, 23.969009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.896271, 29.806747, 23.646425>,  <37.299263, 29.465584, 23.824862>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.896271, 29.806747, 23.646425> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.011303, 29.424133, 23.627092>,  <38.080322, 29.194565, 23.615494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.011303, 29.424133, 23.627092>,  <37.896271, 29.806747, 23.646425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.011303, 29.424133, 23.627092> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284483, 0.133496, -0.949341,
		0.914530, 0.259265, 0.310510,
		0.287583, -0.956536, -0.048330,
		38.097576, 29.137173, 23.612593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.454727, 29.861399, 23.277960>,  <37.896271, 29.806747, 23.646425>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.454727, 29.861399, 23.277960> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.374367, 29.470346, 23.253059>,  <38.326149, 29.235716, 23.238119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.374367, 29.470346, 23.253059>,  <38.454727, 29.861399, 23.277960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.374367, 29.470346, 23.253059> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243634, 0.011686, -0.969797,
		0.948831, -0.210004, 0.235836,
		-0.200905, -0.977631, -0.062252,
		38.314095, 29.177057, 23.234385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.102825, 29.476784, 22.874331>,  <38.454727, 29.861399, 23.277960>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.102825, 29.476784, 22.874331> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.808620, 29.206142, 22.860262>,  <38.632099, 29.043758, 22.851820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.808620, 29.206142, 22.860262>,  <39.102825, 29.476784, 22.874331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.808620, 29.206142, 22.860262> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138883, -0.099758, -0.985271,
		0.663127, -0.729561, 0.167341,
		-0.735509, -0.676601, -0.035171,
		38.587967, 29.003162, 22.849710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.413158, 28.806675, 22.486305>,  <39.102825, 29.476784, 22.874331>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.413158, 28.806675, 22.486305> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.015793, 28.850626, 22.473282>,  <38.777374, 28.876997, 22.465467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.015793, 28.850626, 22.473282>,  <39.413158, 28.806675, 22.486305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.015793, 28.850626, 22.473282> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026855, -0.053009, -0.998233,
		-0.111412, -0.992530, 0.049708,
		-0.993411, 0.109880, -0.032560,
		38.717770, 28.883589, 22.463514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.215431, 28.292482, 22.016666>,  <39.413158, 28.806675, 22.486305>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.215431, 28.292482, 22.016666> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.903034, 28.541494, 22.036671>,  <38.715595, 28.690901, 22.048674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.903034, 28.541494, 22.036671>,  <39.215431, 28.292482, 22.016666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.903034, 28.541494, 22.036671> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092396, -0.035976, -0.995072,
		-0.617662, -0.781769, 0.085616,
		-0.780997, 0.622529, 0.050011,
		38.668736, 28.728252, 22.051674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.729610, 28.046013, 21.553102>,  <39.215431, 28.292482, 22.016666>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.729610, 28.046013, 21.553102> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.622425, 28.429581, 21.590347>,  <38.558113, 28.659721, 21.612694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.622425, 28.429581, 21.590347>,  <38.729610, 28.046013, 21.553102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.622425, 28.429581, 21.590347> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090455, 0.071180, -0.993354,
		-0.959172, -0.274609, 0.067665,
		-0.267967, 0.958918, 0.093113,
		38.542034, 28.717257, 21.618280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.181435, 28.077236, 21.129522>,  <38.729610, 28.046013, 21.553102>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.181435, 28.077236, 21.129522> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.332798, 28.443390, 21.184483>,  <38.423618, 28.663082, 21.217459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.332798, 28.443390, 21.184483>,  <38.181435, 28.077236, 21.129522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.332798, 28.443390, 21.184483> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005234, 0.150551, -0.988588,
		-0.925623, 0.373373, 0.061761,
		0.378410, 0.915384, 0.137399,
		38.446320, 28.718004, 21.225702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.724640, 28.512705, 20.799158>,  <38.181435, 28.077236, 21.129522>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.724640, 28.512705, 20.799158> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.074715, 28.699907, 20.848171>,  <38.284760, 28.812229, 20.877579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.074715, 28.699907, 20.848171>,  <37.724640, 28.512705, 20.799158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.074715, 28.699907, 20.848171> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046325, 0.171049, -0.984173,
		-0.481556, 0.867015, 0.128020,
		0.875190, 0.468004, 0.122534,
		38.337273, 28.840309, 20.884932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.686310, 29.239925, 20.532021>,  <37.724640, 28.512705, 20.799158>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.686310, 29.239925, 20.532021> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.043674, 29.062187, 20.505566>,  <38.258095, 28.955544, 20.489693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.043674, 29.062187, 20.505566>,  <37.686310, 29.239925, 20.532021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.043674, 29.062187, 20.505566> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019033, 0.184524, -0.982644,
		0.448837, 0.876646, 0.173313,
		0.893411, -0.444346, -0.066136,
		38.311699, 28.928883, 20.485725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.350296, 29.554974, 19.858921>,  <37.686310, 29.239925, 20.532021>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.350296, 29.554974, 19.858921> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.040535, 29.434361, 19.636433>,  <36.854679, 29.361994, 19.502939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.040535, 29.434361, 19.636433>,  <37.350296, 29.554974, 19.858921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.040535, 29.434361, 19.636433> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116296, -0.931989, 0.343324,
		-0.621915, 0.201184, 0.756800,
		-0.774401, -0.301531, -0.556222,
		36.808216, 29.343901, 19.469566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.892334, 29.249538, 20.281683>,  <37.350296, 29.554974, 19.858921>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.892334, 29.249538, 20.281683> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.853958, 29.101425, 19.912102>,  <36.830933, 29.012558, 19.690353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.853958, 29.101425, 19.912102>,  <36.892334, 29.249538, 20.281683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.853958, 29.101425, 19.912102> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162922, -0.921556, 0.352406,
		-0.981963, -0.116722, 0.148743,
		-0.095942, -0.370283, -0.923951,
		36.825176, 28.990341, 19.634916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.193581, 28.884695, 20.219574>,  <36.892334, 29.249538, 20.281683>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.193581, 28.884695, 20.219574> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.464115, 28.724024, 19.972603>,  <36.626438, 28.627621, 19.824421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.464115, 28.724024, 19.972603>,  <36.193581, 28.884695, 20.219574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.464115, 28.724024, 19.972603> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004216, -0.836101, 0.548559,
		-0.736576, -0.373617, -0.563796,
		0.676341, -0.401678, -0.617427,
		36.667019, 28.603519, 19.787374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.981972, 28.236155, 19.783684>,  <36.193581, 28.884695, 20.219574>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.981972, 28.236155, 19.783684> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.369648, 28.256100, 19.880165>,  <36.602253, 28.268066, 19.938053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.369648, 28.256100, 19.880165>,  <35.981972, 28.236155, 19.783684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.369648, 28.256100, 19.880165> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085750, -0.849715, 0.520223,
		0.230894, -0.524880, -0.819261,
		0.969193, 0.049864, 0.241203,
		36.660404, 28.271059, 19.952526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.707150, 28.267405, 20.449947>,  <35.981972, 28.236155, 19.783684>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.707150, 28.267405, 20.449947> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.431595, 28.031487, 20.618507>,  <35.266262, 27.889936, 20.719643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.431595, 28.031487, 20.618507>,  <35.707150, 28.267405, 20.449947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.431595, 28.031487, 20.618507> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020884, 0.597253, 0.801781,
		-0.724570, 0.543534, -0.423756,
		-0.688885, -0.589796, 0.421400,
		35.224930, 27.854548, 20.744928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.212379, 28.688087, 20.568905>,  <35.707150, 28.267405, 20.449947>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.212379, 28.688087, 20.568905> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.147121, 28.380405, 20.816034>,  <35.107967, 28.195795, 20.964312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.147121, 28.380405, 20.816034>,  <35.212379, 28.688087, 20.568905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.147121, 28.380405, 20.816034> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034626, 0.630290, 0.775587,
		-0.985994, 0.105141, -0.129464,
		-0.163146, -0.769207, 0.617822,
		35.098179, 28.149643, 21.001381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.641148, 28.880993, 21.036434>,  <35.212379, 28.688087, 20.568905>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.641148, 28.880993, 21.036434> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.832493, 28.582863, 21.222191>,  <34.947300, 28.403986, 21.333645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.832493, 28.582863, 21.222191>,  <34.641148, 28.880993, 21.036434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.832493, 28.582863, 21.222191> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030909, 0.514206, 0.857110,
		-0.877618, -0.424364, 0.222940,
		0.478363, -0.745324, 0.464393,
		34.976002, 28.359266, 21.361509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.314510, 28.550791, 21.691605>,  <34.641148, 28.880993, 21.036434>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.314510, 28.550791, 21.691605> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.708042, 28.486267, 21.722738>,  <34.944160, 28.447554, 21.741419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.708042, 28.486267, 21.722738>,  <34.314510, 28.550791, 21.691605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.708042, 28.486267, 21.722738> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000636, 0.431421, 0.902150,
		-0.179104, -0.887612, 0.424343,
		0.983830, -0.161309, 0.077834,
		35.003193, 28.437874, 21.746088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.383743, 28.375765, 22.472446>,  <34.314510, 28.550791, 21.691605>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.383743, 28.375765, 22.472446> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.734417, 28.467585, 22.303343>,  <34.944820, 28.522676, 22.201881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.734417, 28.467585, 22.303343>,  <34.383743, 28.375765, 22.472446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.734417, 28.467585, 22.303343> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253454, 0.526537, 0.811492,
		0.408875, -0.818576, 0.403429,
		0.876688, 0.229548, -0.422759,
		34.997425, 28.536449, 22.176516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.909580, 28.320759, 23.101398>,  <34.383743, 28.375765, 22.472446>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.909580, 28.320759, 23.101398> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.099224, 28.518326, 22.809847>,  <35.213009, 28.636866, 22.634916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.099224, 28.518326, 22.809847>,  <34.909580, 28.320759, 23.101398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.099224, 28.518326, 22.809847> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422562, 0.598621, 0.680510,
		0.772441, -0.630631, 0.075099,
		0.474106, 0.493920, -0.728880,
		35.241455, 28.666502, 22.591183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.587284, 28.333700, 23.273304>,  <34.909580, 28.320759, 23.101398>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.587284, 28.333700, 23.273304> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.549213, 28.642345, 23.021732>,  <35.526371, 28.827534, 22.870789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.549213, 28.642345, 23.021732>,  <35.587284, 28.333700, 23.273304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.549213, 28.642345, 23.021732> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376451, 0.612778, 0.694830,
		0.921535, -0.170632, -0.348795,
		-0.095174, 0.771614, -0.628931,
		35.520660, 28.873829, 22.833054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.274269, 28.638933, 23.206450>,  <35.587284, 28.333700, 23.273304>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.274269, 28.638933, 23.206450> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.002602, 28.923826, 23.135498>,  <35.839603, 29.094761, 23.092928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.002602, 28.923826, 23.135498>,  <36.274269, 28.638933, 23.206450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.002602, 28.923826, 23.135498> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441933, 0.589754, 0.675933,
		0.586029, 0.380681, -0.715299,
		-0.679165, 0.712231, -0.177378,
		35.798851, 29.137495, 23.082285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.625786, 29.313690, 23.168785>,  <36.274269, 28.638933, 23.206450>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.625786, 29.313690, 23.168785> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.243565, 29.412876, 23.232578>,  <36.014233, 29.472387, 23.270855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.243565, 29.412876, 23.232578>,  <36.625786, 29.313690, 23.168785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.243565, 29.412876, 23.232578> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287921, 0.668492, 0.685726,
		0.063421, 0.701165, -0.710172,
		-0.955552, 0.247963, 0.159484,
		35.956898, 29.487265, 23.280424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.607861, 29.982485, 23.161795>,  <36.625786, 29.313690, 23.168785>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.607861, 29.982485, 23.161795> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.266766, 29.894215, 23.351170>,  <36.062107, 29.841251, 23.464794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.266766, 29.894215, 23.351170>,  <36.607861, 29.982485, 23.161795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.266766, 29.894215, 23.351170> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295456, 0.543669, 0.785576,
		-0.430751, 0.809769, -0.398406,
		-0.852736, -0.220677, 0.473437,
		36.010944, 29.828012, 23.493200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.555267, 30.603611, 23.668339>,  <36.607861, 29.982485, 23.161795>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.555267, 30.603611, 23.668339> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.289505, 30.329838, 23.788416>,  <36.130047, 30.165575, 23.860462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.289505, 30.329838, 23.788416>,  <36.555267, 30.603611, 23.668339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.289505, 30.329838, 23.788416> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193451, 0.230481, 0.953654,
		-0.721899, 0.691688, -0.020730,
		-0.664408, -0.684432, 0.300192,
		36.090183, 30.124508, 23.878473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.910084, 30.842947, 24.080421>,  <36.555267, 30.603611, 23.668339>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.910084, 30.842947, 24.080421> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.925655, 30.456875, 24.183891>,  <35.934998, 30.225231, 24.245974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.925655, 30.456875, 24.183891>,  <35.910084, 30.842947, 24.080421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.925655, 30.456875, 24.183891> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211213, 0.245076, 0.946217,
		-0.976664, -0.091473, -0.194318,
		0.038930, -0.965179, 0.258677,
		35.937336, 30.167320, 24.261494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.372932, 30.924278, 24.631292>,  <35.910084, 30.842947, 24.080421>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.372932, 30.924278, 24.631292> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.553734, 30.569799, 24.671993>,  <35.662212, 30.357113, 24.696413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.553734, 30.569799, 24.671993>,  <35.372932, 30.924278, 24.631292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.553734, 30.569799, 24.671993> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215853, 0.002016, 0.976424,
		-0.865507, -0.463308, -0.190377,
		0.452001, -0.886195, 0.101751,
		35.689335, 30.303942, 24.702518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.919407, 30.419807, 25.035135>,  <35.372932, 30.924278, 24.631292>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.919407, 30.419807, 25.035135> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.299904, 30.302088, 25.072067>,  <35.528202, 30.231455, 25.094227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.299904, 30.302088, 25.072067>,  <34.919407, 30.419807, 25.035135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.299904, 30.302088, 25.072067> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057472, 0.124976, 0.990494,
		-0.303042, -0.947506, 0.101968,
		0.951243, -0.294301, 0.092328,
		35.585278, 30.213799, 25.099766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.960892, 29.911150, 25.641045>,  <34.919407, 30.419807, 25.035135>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.960892, 29.911150, 25.641045> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.337646, 30.036985, 25.593912>,  <35.563698, 30.112488, 25.565632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.337646, 30.036985, 25.593912>,  <34.960892, 29.911150, 25.641045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.337646, 30.036985, 25.593912> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079412, 0.132305, 0.988023,
		0.326412, -0.939962, 0.099634,
		0.941885, 0.314591, -0.117831,
		35.620213, 30.131363, 25.558563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.256630, 29.570004, 26.222326>,  <34.960892, 29.911150, 25.641045>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.256630, 29.570004, 26.222326> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.507950, 29.859371, 26.107849>,  <35.658741, 30.032991, 26.039164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.507950, 29.859371, 26.107849>,  <35.256630, 29.570004, 26.222326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.507950, 29.859371, 26.107849> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287996, 0.125455, 0.949378,
		0.722702, -0.678916, -0.129518,
		0.628299, 0.723419, -0.286191,
		35.696438, 30.076397, 26.021992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.955357, 29.505293, 26.609274>,  <35.256630, 29.570004, 26.222326>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.955357, 29.505293, 26.609274> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.904583, 29.880392, 26.479959>,  <35.874119, 30.105452, 26.402370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.904583, 29.880392, 26.479959>,  <35.955357, 29.505293, 26.609274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.904583, 29.880392, 26.479959> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143592, 0.339860, 0.929449,
		0.981462, 0.071562, -0.177795,
		-0.126938, 0.937749, -0.323284,
		35.866501, 30.161716, 26.382975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.423176, 29.795298, 27.025581>,  <35.955357, 29.505293, 26.609274>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.423176, 29.795298, 27.025581> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.199287, 30.100897, 26.897194>,  <36.064953, 30.284256, 26.820162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.199287, 30.100897, 26.897194>,  <36.423176, 29.795298, 27.025581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.199287, 30.100897, 26.897194> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116257, 0.311101, 0.943239,
		0.820485, 0.565266, -0.085310,
		-0.559722, 0.763996, -0.320970,
		36.031372, 30.330095, 26.800903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<37.354084, 30.307367, 31.770439> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.325279, 30.629873, 31.535578>,  <37.307999, 30.823378, 31.394661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.325279, 30.629873, 31.535578>,  <37.354084, 30.307367, 31.770439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.325279, 30.629873, 31.535578> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130392, 0.591238, 0.795886,
		0.988844, -0.019249, -0.147705,
		-0.072009, 0.806267, -0.587152,
		37.303677, 30.871754, 31.359432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.858612, 30.736597, 31.932829>,  <37.354084, 30.307367, 31.770439>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.858612, 30.736597, 31.932829> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.597115, 30.981642, 31.755142>,  <37.440216, 31.128670, 31.648529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.597115, 30.981642, 31.755142>,  <37.858612, 30.736597, 31.932829>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.597115, 30.981642, 31.755142> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141933, 0.675881, 0.723215,
		0.743290, 0.409745, -0.528799,
		-0.653739, 0.612613, -0.444219,
		37.400993, 31.165426, 31.621876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.195335, 31.447235, 31.959414>,  <37.858612, 30.736597, 31.932829>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.195335, 31.447235, 31.959414> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.800484, 31.500586, 31.924137>,  <37.563572, 31.532597, 31.902971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.800484, 31.500586, 31.924137>,  <38.195335, 31.447235, 31.959414>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.800484, 31.500586, 31.924137> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037702, 0.730155, 0.682240,
		0.155388, 0.670137, -0.725789,
		-0.987134, 0.133376, -0.088192,
		37.504345, 31.540598, 31.897680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.097401, 32.048641, 31.886824>,  <38.195335, 31.447235, 31.959414>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.097401, 32.048641, 31.886824> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.730637, 31.985491, 32.033436>,  <37.510578, 31.947601, 32.121403>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.730637, 31.985491, 32.033436>,  <38.097401, 32.048641, 31.886824>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.730637, 31.985491, 32.033436> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143397, 0.726762, 0.671754,
		-0.372434, 0.668500, -0.643739,
		-0.916913, -0.157874, 0.366532,
		37.455563, 31.938129, 32.143394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.778797, 32.713192, 31.971289>,  <38.097401, 32.048641, 31.886824>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.778797, 32.713192, 31.971289> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.585110, 32.452606, 32.204914>,  <37.468895, 32.296257, 32.345089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.585110, 32.452606, 32.204914>,  <37.778797, 32.713192, 31.971289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.585110, 32.452606, 32.204914> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000718, 0.667837, 0.744308,
		-0.874945, 0.359991, -0.323849,
		-0.484222, -0.651461, 0.584062,
		37.439842, 32.257168, 32.380131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.155968, 33.054443, 32.202366>,  <37.778797, 32.713192, 31.971289>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.155968, 33.054443, 32.202366> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.235397, 32.762501, 32.464016>,  <37.283054, 32.587334, 32.621006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.235397, 32.762501, 32.464016>,  <37.155968, 33.054443, 32.202366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.235397, 32.762501, 32.464016> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121932, 0.643831, 0.755390,
		-0.972472, -0.229758, 0.038854,
		0.198572, -0.729858, 0.654122,
		37.294968, 32.543545, 32.660252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.485310, 32.929401, 32.529087>,  <37.155968, 33.054443, 32.202366>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.485310, 32.929401, 32.529087> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.780594, 32.798683, 32.765133>,  <36.957764, 32.720253, 32.906761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.780594, 32.798683, 32.765133>,  <36.485310, 32.929401, 32.529087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.780594, 32.798683, 32.765133> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330836, 0.586977, 0.738922,
		-0.587865, -0.740716, 0.325198,
		0.738215, -0.326799, 0.590119,
		37.002060, 32.700642, 32.942169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.206615, 32.763248, 33.145966>,  <36.485310, 32.929401, 32.529087>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.206615, 32.763248, 33.145966> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.594231, 32.806240, 33.234886>,  <36.826797, 32.832035, 33.288239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.594231, 32.806240, 33.234886>,  <36.206615, 32.763248, 33.145966>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.594231, 32.806240, 33.234886> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242865, 0.577368, 0.779527,
		-0.044567, -0.809379, 0.585593,
		0.969036, 0.107479, 0.222301,
		36.884941, 32.838482, 33.301575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.162312, 32.881088, 33.845695>,  <36.206615, 32.763248, 33.145966>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.162312, 32.881088, 33.845695> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.531437, 33.006172, 33.755692>,  <36.752911, 33.081223, 33.701691>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.531437, 33.006172, 33.755692>,  <36.162312, 32.881088, 33.845695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.531437, 33.006172, 33.755692> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029553, 0.639806, 0.767968,
		0.384112, -0.702041, 0.599663,
		0.922813, 0.312707, -0.225009,
		36.808281, 33.099983, 33.688190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.576111, 32.805351, 34.427010>,  <36.162312, 32.881088, 33.845695>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.576111, 32.805351, 34.427010> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.742119, 33.087116, 34.196686>,  <36.841724, 33.256176, 34.058491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.742119, 33.087116, 34.196686>,  <36.576111, 32.805351, 34.427010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.742119, 33.087116, 34.196686> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105579, 0.665906, 0.738527,
		0.903664, -0.245712, 0.350737,
		0.415023, 0.704411, -0.575814,
		36.866627, 33.298439, 34.023941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.175961, 33.073090, 34.808144>,  <36.576111, 32.805351, 34.427010>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.175961, 33.073090, 34.808144> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.075180, 33.351891, 34.539608>,  <37.014709, 33.519173, 34.378487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.075180, 33.351891, 34.539608>,  <37.175961, 33.073090, 34.808144>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.075180, 33.351891, 34.539608> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150383, 0.657097, 0.738653,
		0.955983, 0.287067, -0.060741,
		-0.251956, 0.697005, -0.671344,
		36.999592, 33.560993, 34.338203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.392384, 33.662468, 35.029774>,  <37.175961, 33.073090, 34.808144>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.392384, 33.662468, 35.029774> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.157959, 33.833481, 34.754456>,  <37.017303, 33.936089, 34.589264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.157959, 33.833481, 34.754456>,  <37.392384, 33.662468, 35.029774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.157959, 33.833481, 34.754456> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148964, 0.778132, 0.610181,
		0.796456, 0.460134, -0.392346,
		-0.586061, 0.427537, -0.688291,
		36.982140, 33.961742, 34.547970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.563068, 34.373734, 34.994148>,  <37.392384, 33.662468, 35.029774>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.563068, 34.373734, 34.994148> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.186344, 34.358265, 34.860584>,  <36.960308, 34.348984, 34.780445>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.186344, 34.358265, 34.860584>,  <37.563068, 34.373734, 34.994148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.186344, 34.358265, 34.860584> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258703, 0.717640, 0.646581,
		0.214621, 0.695340, -0.685886,
		-0.941812, -0.038670, -0.333907,
		36.903801, 34.346664, 34.760410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.460346, 35.031204, 34.977787>,  <37.563068, 34.373734, 34.994148>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.460346, 35.031204, 34.977787> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.132618, 34.802574, 34.995708>,  <36.935982, 34.665394, 35.006462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.132618, 34.802574, 34.995708>,  <37.460346, 35.031204, 34.977787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.132618, 34.802574, 34.995708> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434846, 0.670450, 0.601169,
		-0.373652, 0.473071, -0.797865,
		-0.819324, -0.571577, 0.044802,
		36.886822, 34.631100, 35.009148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.660599, 35.709042, 35.018223>,  <37.460346, 35.031204, 34.977787>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.660599, 35.709042, 35.018223> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.013264, 35.896221, 34.993923>,  <38.224865, 36.008530, 34.979343>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.013264, 35.896221, 34.993923>,  <37.660599, 35.709042, 35.018223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.013264, 35.896221, 34.993923> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109837, 0.078307, -0.990860,
		-0.458911, 0.880281, 0.120438,
		0.881667, 0.467945, -0.060751,
		38.277763, 36.036606, 34.975697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.640659, 36.290279, 34.549206>,  <37.660599, 35.709042, 35.018223>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.640659, 36.290279, 34.549206> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.033020, 36.217262, 34.576065>,  <38.268436, 36.173450, 34.592182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.033020, 36.217262, 34.576065>,  <37.640659, 36.290279, 34.549206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.033020, 36.217262, 34.576065> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069542, 0.006737, -0.997556,
		0.181648, 0.983174, 0.019303,
		0.980902, -0.182546, 0.067148,
		38.327290, 36.162498, 34.596210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.916882, 36.795708, 34.279987>,  <37.640659, 36.290279, 34.549206>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.916882, 36.795708, 34.279987> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.183174, 36.498856, 34.248894>,  <38.342949, 36.320744, 34.230236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.183174, 36.498856, 34.248894>,  <37.916882, 36.795708, 34.279987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.183174, 36.498856, 34.248894> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071216, 0.166890, -0.983400,
		0.742785, 0.649145, 0.163955,
		0.665732, -0.742131, -0.077734,
		38.382893, 36.276215, 34.225574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.343563, 36.941414, 33.650867>,  <37.916882, 36.795708, 34.279987>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.343563, 36.941414, 33.650867> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.451057, 36.563015, 33.723385>,  <38.515553, 36.335976, 33.766895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.451057, 36.563015, 33.723385>,  <38.343563, 36.941414, 33.650867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.451057, 36.563015, 33.723385> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230483, -0.119598, -0.965698,
		0.935233, 0.301299, 0.185897,
		0.268731, -0.946000, 0.181297,
		38.531677, 36.279217, 33.777775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.941467, 36.754017, 33.184601>,  <38.343563, 36.941414, 33.650867>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.941467, 36.754017, 33.184601> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.817440, 36.387825, 33.287174>,  <38.743023, 36.168110, 33.348717>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.817440, 36.387825, 33.287174>,  <38.941467, 36.754017, 33.184601>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.817440, 36.387825, 33.287174> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177255, -0.320665, -0.930459,
		0.934045, -0.243048, 0.261700,
		-0.310065, -0.915479, 0.256434,
		38.724419, 36.113182, 33.364105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.398132, 36.296921, 32.792171>,  <38.941467, 36.754017, 33.184601>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.398132, 36.296921, 32.792171> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.079983, 36.074451, 32.888554>,  <38.889095, 35.940971, 32.946384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.079983, 36.074451, 32.888554>,  <39.398132, 36.296921, 32.792171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.079983, 36.074451, 32.888554> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076157, -0.486084, -0.870587,
		0.601321, -0.674088, 0.428973,
		-0.795370, -0.556172, 0.240956,
		38.841373, 35.907600, 32.960842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.558212, 35.693153, 32.524876>,  <39.398132, 36.296921, 32.792171>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.558212, 35.693153, 32.524876> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.163807, 35.654652, 32.579308>,  <38.927166, 35.631550, 32.611965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.163807, 35.654652, 32.579308>,  <39.558212, 35.693153, 32.524876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.163807, 35.654652, 32.579308> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086430, -0.402798, -0.911199,
		0.142523, -0.910213, 0.388843,
		-0.986011, -0.096259, 0.136078,
		38.868004, 35.625774, 32.620132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.422874, 35.088650, 32.192463>,  <39.558212, 35.693153, 32.524876>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.422874, 35.088650, 32.192463> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.059921, 35.255093, 32.216152>,  <38.842148, 35.354958, 32.230366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.059921, 35.255093, 32.216152>,  <39.422874, 35.088650, 32.192463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.059921, 35.255093, 32.216152> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192598, -0.286402, -0.938552,
		-0.373579, -0.863033, 0.340018,
		-0.907383, 0.416110, 0.059225,
		38.787704, 35.379925, 32.233921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.990883, 34.547031, 32.136036>,  <39.422874, 35.088650, 32.192463>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.990883, 34.547031, 32.136036> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.824924, 34.884125, 31.998833>,  <38.725349, 35.086380, 31.916512>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.824924, 34.884125, 31.998833>,  <38.990883, 34.547031, 32.136036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.824924, 34.884125, 31.998833> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184582, -0.447106, -0.875229,
		-0.890947, -0.299820, 0.341058,
		-0.414900, 0.842736, -0.343006,
		38.700455, 35.136944, 31.895931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.483311, 34.306679, 31.689529>,  <38.990883, 34.547031, 32.136036>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.483311, 34.306679, 31.689529> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.513775, 34.693005, 31.590420>,  <38.532055, 34.924801, 31.530954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.513775, 34.693005, 31.590420>,  <38.483311, 34.306679, 31.689529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.513775, 34.693005, 31.590420> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299939, -0.214796, -0.929462,
		-0.950913, 0.145108, 0.273327,
		0.076163, 0.965819, -0.247776,
		38.536625, 34.982750, 31.516087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.968014, 34.424774, 31.358776>,  <38.483311, 34.306679, 31.689529>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.968014, 34.424774, 31.358776> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.203033, 34.713989, 31.213448>,  <38.344044, 34.887520, 31.126251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.203033, 34.713989, 31.213448>,  <37.968014, 34.424774, 31.358776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.203033, 34.713989, 31.213448> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291601, -0.229636, -0.928566,
		-0.754820, 0.651523, 0.075916,
		0.587550, 0.723038, -0.363319,
		38.379299, 34.930901, 31.104452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.566830, 34.773029, 30.866375>,  <37.968014, 34.424774, 31.358776>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.566830, 34.773029, 30.866375> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.946514, 34.867073, 30.782736>,  <38.174324, 34.923500, 30.732552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.946514, 34.867073, 30.782736>,  <37.566830, 34.773029, 30.866375>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.946514, 34.867073, 30.782736> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135054, -0.295789, -0.945658,
		-0.284178, 0.925870, -0.249014,
		0.949212, 0.235105, -0.209100,
		38.231277, 34.937603, 30.720005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.578556, 35.013233, 30.154331>,  <37.566830, 34.773029, 30.866375>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.578556, 35.013233, 30.154331> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.962952, 34.924843, 30.220869>,  <38.193588, 34.871807, 30.260792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.962952, 34.924843, 30.220869>,  <37.578556, 35.013233, 30.154331>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.962952, 34.924843, 30.220869> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101526, -0.277616, -0.955312,
		0.257280, 0.934933, -0.244351,
		0.960989, -0.220975, 0.166345,
		38.251247, 34.858551, 30.270773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.897766, 35.330528, 29.665295>,  <37.578556, 35.013233, 30.154331>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.897766, 35.330528, 29.665295> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.149971, 35.052055, 29.802576>,  <38.301292, 34.884972, 29.884945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.149971, 35.052055, 29.802576>,  <37.897766, 35.330528, 29.665295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.149971, 35.052055, 29.802576> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117506, -0.351458, -0.928800,
		0.767234, 0.625947, -0.139793,
		0.630511, -0.696181, 0.343203,
		38.339123, 34.843201, 29.905537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.932957, 35.977852, 29.291735>,  <37.897766, 35.330528, 29.665295>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.932957, 35.977852, 29.291735> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.641296, 36.148689, 29.077845>,  <37.466301, 36.251190, 28.949511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.641296, 36.148689, 29.077845>,  <37.932957, 35.977852, 29.291735>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.641296, 36.148689, 29.077845> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312404, 0.487466, 0.815341,
		0.608883, 0.761559, -0.222014,
		-0.729154, 0.427089, -0.534724,
		37.422550, 36.276817, 28.917427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.989399, 36.666748, 29.471956>,  <37.932957, 35.977852, 29.291735>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.989399, 36.666748, 29.471956> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.618977, 36.621536, 29.327930>,  <37.396725, 36.594410, 29.241514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.618977, 36.621536, 29.327930>,  <37.989399, 36.666748, 29.471956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.618977, 36.621536, 29.327930> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357024, 0.571573, 0.738808,
		0.122296, 0.812729, -0.569663,
		-0.926055, -0.113030, -0.360065,
		37.341160, 36.587627, 29.219912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.696892, 37.282299, 29.531158>,  <37.989399, 36.666748, 29.471956>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.696892, 37.282299, 29.531158> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.385277, 37.033581, 29.498991>,  <37.198307, 36.884350, 29.479691>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.385277, 37.033581, 29.498991>,  <37.696892, 37.282299, 29.531158>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.385277, 37.033581, 29.498991> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503869, 0.544571, 0.670491,
		-0.373118, 0.562857, -0.737546,
		-0.779037, -0.621799, -0.080417,
		37.151566, 36.847042, 29.474867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.175404, 37.700104, 29.582615>,  <37.696892, 37.282299, 29.531158>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.175404, 37.700104, 29.582615> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.009186, 37.344391, 29.659039>,  <36.909454, 37.130962, 29.704893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.009186, 37.344391, 29.659039>,  <37.175404, 37.700104, 29.582615>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.009186, 37.344391, 29.659039> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527353, 0.406698, 0.745987,
		-0.741093, 0.209238, -0.637966,
		-0.415548, -0.889279, 0.191059,
		36.884521, 37.077606, 29.716356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.384727, 37.809444, 29.714075>,  <37.175404, 37.700104, 29.582615>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.384727, 37.809444, 29.714075> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.466854, 37.456226, 29.882870>,  <36.516132, 37.244297, 29.984146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.466854, 37.456226, 29.882870>,  <36.384727, 37.809444, 29.714075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.466854, 37.456226, 29.882870> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472206, 0.288284, 0.833015,
		-0.857243, -0.370300, -0.357789,
		0.205321, -0.883046, 0.421987,
		36.528450, 37.191311, 30.009466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.847496, 37.481491, 29.991631>,  <36.384727, 37.809444, 29.714075>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.847496, 37.481491, 29.991631> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.144073, 37.348740, 30.224911>,  <36.322021, 37.269089, 30.364878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.144073, 37.348740, 30.224911>,  <35.847496, 37.481491, 29.991631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.144073, 37.348740, 30.224911> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369465, 0.523607, 0.767680,
		-0.560140, -0.784662, 0.265609,
		0.741444, -0.331875, 0.583198,
		36.366508, 37.249176, 30.399870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.487209, 37.412189, 30.546368>,  <35.847496, 37.481491, 29.991631>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.487209, 37.412189, 30.546368> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.861050, 37.400650, 30.688175>,  <36.085354, 37.393726, 30.773260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.861050, 37.400650, 30.688175>,  <35.487209, 37.412189, 30.546368>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.861050, 37.400650, 30.688175> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294585, 0.495785, 0.816956,
		-0.199336, -0.867966, 0.454863,
		0.934604, -0.028853, 0.354517,
		36.141430, 37.391994, 30.794531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.424160, 37.097103, 31.209780>,  <35.487209, 37.412189, 30.546368>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.424160, 37.097103, 31.209780> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.774017, 37.290909, 31.203619>,  <35.983932, 37.407192, 31.199923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.774017, 37.290909, 31.203619>,  <35.424160, 37.097103, 31.209780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.774017, 37.290909, 31.203619> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269358, 0.512167, 0.815556,
		0.403035, -0.709177, 0.578473,
		0.874648, 0.484514, -0.015399,
		36.036411, 37.436264, 31.198999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.581928, 37.273167, 31.909470>,  <35.424160, 37.097103, 31.209780>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.581928, 37.273167, 31.909470> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.816719, 37.517700, 31.697157>,  <35.957592, 37.664421, 31.569769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.816719, 37.517700, 31.697157>,  <35.581928, 37.273167, 31.909470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.816719, 37.517700, 31.697157> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192838, 0.742307, 0.641712,
		0.786307, -0.274311, 0.553602,
		0.586972, 0.611338, -0.530783,
		35.992809, 37.701103, 31.537922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.956749, 37.481483, 32.340172>,  <35.581928, 37.273167, 31.909470>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.956749, 37.481483, 32.340172> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.978630, 37.755318, 32.049423>,  <35.991760, 37.919621, 31.874973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.978630, 37.755318, 32.049423>,  <35.956749, 37.481483, 32.340172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.978630, 37.755318, 32.049423> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074355, 0.728736, 0.680746,
		0.995730, 0.016809, 0.090765,
		0.054701, 0.684588, -0.726875,
		35.995041, 37.960693, 31.831360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.486942, 37.834911, 32.606388>,  <35.956749, 37.481483, 32.340172>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.486942, 37.834911, 32.606388> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.276630, 38.066002, 32.356655>,  <36.150444, 38.204655, 32.206818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.276630, 38.066002, 32.356655>,  <36.486942, 37.834911, 32.606388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.276630, 38.066002, 32.356655> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052924, 0.710331, 0.701875,
		0.848972, 0.402075, -0.342904,
		-0.525782, 0.577724, -0.624330,
		36.118896, 38.239319, 32.169357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.629608, 38.487335, 32.730782>,  <36.486942, 37.834911, 32.606388>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.629608, 38.487335, 32.730782> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.278381, 38.555737, 32.552006>,  <36.067646, 38.596775, 32.444740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.278381, 38.555737, 32.552006>,  <36.629608, 38.487335, 32.730782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.278381, 38.555737, 32.552006> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127441, 0.816681, 0.562842,
		0.461251, 0.551172, -0.695311,
		-0.878070, 0.171000, -0.446937,
		36.014961, 38.607037, 32.417923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.767857, 35.087162, 25.535456> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.373646, 35.140125, 25.493116>,  <38.137119, 35.171902, 25.467712>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.373646, 35.140125, 25.493116>,  <38.767857, 35.087162, 25.535456>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.373646, 35.140125, 25.493116> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080003, 0.187199, 0.979059,
		0.149451, 0.973357, -0.173896,
		-0.985527, 0.132409, -0.105848,
		38.077988, 35.179848, 25.461361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.678318, 35.748001, 25.744587>,  <38.767857, 35.087162, 25.535456>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.678318, 35.748001, 25.744587> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.311531, 35.592056, 25.778469>,  <38.091457, 35.498489, 25.798798>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.311531, 35.592056, 25.778469>,  <38.678318, 35.748001, 25.744587>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.311531, 35.592056, 25.778469> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053297, 0.330115, 0.942435,
		-0.395385, 0.859668, -0.323484,
		-0.916968, -0.389865, 0.084705,
		38.036442, 35.475098, 25.803881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.222130, 36.250622, 25.913208>,  <38.678318, 35.748001, 25.744587>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.222130, 36.250622, 25.913208> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.034866, 35.917526, 26.031437>,  <37.922508, 35.717667, 26.102375>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.034866, 35.917526, 26.031437>,  <38.222130, 36.250622, 25.913208>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.034866, 35.917526, 26.031437> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211120, 0.430218, 0.877691,
		-0.858051, 0.348501, -0.377221,
		-0.468163, -0.832742, 0.295573,
		37.894417, 35.667702, 26.120110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.517792, 36.392155, 26.054850>,  <38.222130, 36.250622, 25.913208>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.517792, 36.392155, 26.054850> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.598846, 36.059101, 26.261015>,  <37.647480, 35.859268, 26.384714>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.598846, 36.059101, 26.261015>,  <37.517792, 36.392155, 26.054850>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.598846, 36.059101, 26.261015> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257055, 0.462649, 0.848456,
		-0.944914, -0.304416, -0.120286,
		0.202633, -0.832639, 0.515415,
		37.659637, 35.809311, 26.415640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.991726, 36.430412, 26.503210>,  <37.517792, 36.392155, 26.054850>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.991726, 36.430412, 26.503210> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.254875, 36.165154, 26.646006>,  <37.412766, 36.005997, 26.731684>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.254875, 36.165154, 26.646006>,  <36.991726, 36.430412, 26.503210>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.254875, 36.165154, 26.646006> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178747, 0.322979, 0.929373,
		-0.731614, -0.675216, 0.093942,
		0.657868, -0.663150, 0.356989,
		37.452236, 35.966209, 26.753101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.641495, 36.046768, 27.026140>,  <36.991726, 36.430412, 26.503210>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.641495, 36.046768, 27.026140> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.028797, 36.016769, 27.121513>,  <37.261181, 35.998772, 27.178738>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.028797, 36.016769, 27.121513>,  <36.641495, 36.046768, 27.026140>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.028797, 36.016769, 27.121513> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219043, 0.204890, 0.953960,
		-0.120393, -0.975908, 0.181960,
		0.968259, -0.074993, 0.238434,
		37.319275, 35.994270, 27.193043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.656925, 35.633648, 27.642271>,  <36.641495, 36.046768, 27.026140>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.656925, 35.633648, 27.642271> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.020149, 35.800980, 27.650629>,  <37.238083, 35.901379, 27.655643>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.020149, 35.800980, 27.650629>,  <36.656925, 35.633648, 27.642271>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.020149, 35.800980, 27.650629> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170797, 0.324276, 0.930415,
		0.382444, -0.848437, 0.365910,
		0.908056, 0.418328, 0.020894,
		37.292564, 35.926479, 27.656897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.027073, 35.373089, 28.301172>,  <36.656925, 35.633648, 27.642271>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.027073, 35.373089, 28.301172> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.223415, 35.699287, 28.178520>,  <37.341221, 35.895008, 28.104929>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.223415, 35.699287, 28.178520>,  <37.027073, 35.373089, 28.301172>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.223415, 35.699287, 28.178520> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110662, 0.407455, 0.906495,
		0.864183, -0.411027, 0.290248,
		0.490857, 0.815498, -0.306631,
		37.370674, 35.943935, 28.086531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.759880, 35.457329, 28.756651>,  <37.027073, 35.373089, 28.301172>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.759880, 35.457329, 28.756651> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.602455, 35.793339, 28.607267>,  <37.507999, 35.994946, 28.517637>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.602455, 35.793339, 28.607267>,  <37.759880, 35.457329, 28.756651>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.602455, 35.793339, 28.607267> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226604, 0.305065, 0.924979,
		0.890933, 0.448662, 0.070292,
		-0.393559, 0.840023, -0.373461,
		37.484386, 36.045345, 28.495230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.381618, 35.292130, 29.081186>,  <37.759880, 35.457329, 28.756651>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.381618, 35.292130, 29.081186> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.453594, 34.949818, 29.275204>,  <38.496780, 34.744431, 29.391615>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.453594, 34.949818, 29.275204>,  <38.381618, 35.292130, 29.081186>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.453594, 34.949818, 29.275204> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412725, -0.381908, -0.826925,
		0.892904, 0.348988, 0.284479,
		0.179942, -0.855777, 0.485043,
		38.507576, 34.693085, 29.420717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.079288, 35.126911, 28.921782>,  <38.381618, 35.292130, 29.081186>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.079288, 35.126911, 28.921782> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.907410, 34.789181, 29.049828>,  <38.804283, 34.586544, 29.126656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.907410, 34.789181, 29.049828>,  <39.079288, 35.126911, 28.921782>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.907410, 34.789181, 29.049828> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486155, -0.515067, -0.705946,
		0.760927, -0.147721, 0.631798,
		-0.429701, -0.844325, 0.320113,
		38.778500, 34.535885, 29.145861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.559177, 34.621502, 28.926872>,  <39.079288, 35.126911, 28.921782>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.559177, 34.621502, 28.926872> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.223965, 34.404568, 28.902967>,  <39.022839, 34.274406, 28.888624>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.223965, 34.404568, 28.902967>,  <39.559177, 34.621502, 28.926872>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.223965, 34.404568, 28.902967> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347273, -0.445694, -0.825081,
		0.420835, -0.712199, 0.561845,
		-0.838033, -0.542337, -0.059764,
		38.972553, 34.241867, 28.885038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.753098, 33.921368, 28.852428>,  <39.559177, 34.621502, 28.926872>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.753098, 33.921368, 28.852428> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.376781, 33.921017, 28.716829>,  <39.150993, 33.920807, 28.635469>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.376781, 33.921017, 28.716829>,  <39.753098, 33.921368, 28.852428>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.376781, 33.921017, 28.716829> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261001, -0.640018, -0.722673,
		-0.216328, -0.768360, 0.602350,
		-0.940787, -0.000880, -0.338997,
		39.094543, 33.920753, 28.615129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.682755, 33.174927, 28.575457>,  <39.753098, 33.921368, 28.852428>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.682755, 33.174927, 28.575457> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.382019, 33.389538, 28.422163>,  <39.201576, 33.518307, 28.330187>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.382019, 33.389538, 28.422163>,  <39.682755, 33.174927, 28.575457>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.382019, 33.389538, 28.422163> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027260, -0.555444, -0.831107,
		-0.658779, -0.635308, 0.402981,
		-0.751842, 0.536531, -0.383233,
		39.156467, 33.550495, 28.307194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.164459, 32.665646, 28.227673>,  <39.682755, 33.174927, 28.575457>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.164459, 32.665646, 28.227673> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.139866, 33.033726, 28.073038>,  <39.125111, 33.254574, 27.980257>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.139866, 33.033726, 28.073038>,  <39.164459, 32.665646, 28.227673>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.139866, 33.033726, 28.073038> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007343, -0.386889, -0.922097,
		-0.998081, -0.059536, 0.017032,
		-0.061487, 0.920202, -0.386584,
		39.121418, 33.309788, 27.957064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.646358, 32.649467, 27.774805>,  <39.164459, 32.665646, 28.227673>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.646358, 32.649467, 27.774805> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.860878, 32.969471, 27.667208>,  <38.989590, 33.161472, 27.602650>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.860878, 32.969471, 27.667208>,  <38.646358, 32.649467, 27.774805>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.860878, 32.969471, 27.667208> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007977, -0.323495, -0.946196,
		-0.843988, 0.505302, -0.179873,
		0.536303, 0.800013, -0.268995,
		39.021770, 33.209476, 27.586510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.501675, 32.747440, 27.111685>,  <38.646358, 32.649467, 27.774805>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.501675, 32.747440, 27.111685> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.830002, 32.975101, 27.130945>,  <39.026997, 33.111698, 27.142502>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.830002, 32.975101, 27.130945>,  <38.501675, 32.747440, 27.111685>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.830002, 32.975101, 27.130945> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259770, -0.296890, -0.918899,
		-0.508702, 0.766758, -0.391542,
		0.820818, 0.569157, 0.048152,
		39.076248, 33.145847, 27.145391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.503250, 33.165646, 26.498014>,  <38.501675, 32.747440, 27.111685>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.503250, 33.165646, 26.498014> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.879471, 33.166763, 26.633867>,  <39.105206, 33.167435, 26.715380>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.879471, 33.166763, 26.633867>,  <38.503250, 33.165646, 26.498014>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.879471, 33.166763, 26.633867> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320653, -0.337007, -0.885216,
		0.111982, 0.941498, -0.317870,
		0.940554, 0.002798, 0.339633,
		39.161636, 33.167603, 26.735758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.922913, 33.516712, 26.056295>,  <38.503250, 33.165646, 26.498014>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.922913, 33.516712, 26.056295> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.212063, 33.302601, 26.231081>,  <39.385551, 33.174133, 26.335953>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.212063, 33.302601, 26.231081>,  <38.922913, 33.516712, 26.056295>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.212063, 33.302601, 26.231081> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203236, -0.439704, -0.874846,
		0.660418, 0.721208, -0.209062,
		0.722871, -0.535275, 0.436964,
		39.428925, 33.142017, 26.362171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.563553, 33.756630, 25.719046>,  <38.922913, 33.516712, 26.056295>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.563553, 33.756630, 25.719046> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.632645, 33.400082, 25.886673>,  <39.674099, 33.186153, 25.987249>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.632645, 33.400082, 25.886673>,  <39.563553, 33.756630, 25.719046>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.632645, 33.400082, 25.886673> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426681, -0.315758, -0.847491,
		0.887755, 0.325192, 0.325793,
		0.172725, -0.891374, 0.419069,
		39.684464, 33.132668, 26.012394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.299561, 33.569416, 25.504089>,  <39.563553, 33.756630, 25.719046>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.299561, 33.569416, 25.504089> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.148693, 33.226345, 25.643875>,  <40.058170, 33.020500, 25.727747>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.148693, 33.226345, 25.643875>,  <40.299561, 33.569416, 25.504089>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.148693, 33.226345, 25.643875> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401681, -0.491490, -0.772716,
		0.834502, -0.151072, 0.529890,
		-0.377171, -0.857680, 0.349467,
		40.035542, 32.969040, 25.748714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.877903, 33.090340, 25.464912>,  <40.299561, 33.569416, 25.504089>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.877903, 33.090340, 25.464912> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.541496, 32.873959, 25.461754>,  <40.339653, 32.744129, 25.459860>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.541496, 32.873959, 25.461754>,  <40.877903, 33.090340, 25.464912>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.541496, 32.873959, 25.461754> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362085, -0.551976, -0.751144,
		0.401973, -0.634585, 0.660092,
		-0.841019, -0.540948, -0.007894,
		40.289192, 32.711674, 25.459385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.044842, 32.287544, 25.502342>,  <40.877903, 33.090340, 25.464912>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.044842, 32.287544, 25.502342> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.678257, 32.348042, 25.354164>,  <40.458305, 32.384342, 25.265257>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.678257, 32.348042, 25.354164>,  <41.044842, 32.287544, 25.502342>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.678257, 32.348042, 25.354164> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262329, -0.471971, -0.841681,
		-0.302141, -0.868544, 0.392865,
		-0.916458, 0.151247, -0.370445,
		40.403320, 32.393417, 25.243031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<32.710152, 31.631224, 24.537212> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.079418, 31.782812, 24.511471>,  <33.300980, 31.873766, 24.496025>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.079418, 31.782812, 24.511471>,  <32.710152, 31.631224, 24.537212>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.079418, 31.782812, 24.511471> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123542, 0.451048, 0.883908,
		0.364001, -0.808046, 0.463212,
		0.923169, 0.378969, -0.064355,
		33.356369, 31.896503, 24.492165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.001350, 31.476341, 25.134617>,  <32.710152, 31.631224, 24.537212>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.001350, 31.476341, 25.134617> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.216969, 31.781418, 24.991657>,  <33.346340, 31.964464, 24.905882>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.216969, 31.781418, 24.991657>,  <33.001350, 31.476341, 25.134617>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.216969, 31.781418, 24.991657> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045590, 0.450119, 0.891804,
		0.841044, -0.464425, 0.277404,
		0.539041, 0.762693, -0.357397,
		33.378681, 32.010227, 24.884438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.523457, 31.607630, 25.686991>,  <33.001350, 31.476341, 25.134617>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.523457, 31.607630, 25.686991> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.536079, 31.951342, 25.482777>,  <33.543652, 32.157570, 25.360249>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.536079, 31.951342, 25.482777>,  <33.523457, 31.607630, 25.686991>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.536079, 31.951342, 25.482777> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049463, 0.511505, 0.857855,
		0.998277, -0.001816, 0.058643,
		0.031554, 0.859278, -0.510534,
		33.545547, 32.209126, 25.329617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.006336, 31.962921, 25.997280>,  <33.523457, 31.607630, 25.686991>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.006336, 31.962921, 25.997280> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.787987, 32.240341, 25.809233>,  <33.656979, 32.406796, 25.696404>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.787987, 32.240341, 25.809233>,  <34.006336, 31.962921, 25.997280>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.787987, 32.240341, 25.809233> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091186, 0.508582, 0.856171,
		0.832894, 0.510226, -0.214377,
		-0.545869, 0.693552, -0.470120,
		33.624226, 32.448406, 25.668198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.311314, 32.708252, 26.124428>,  <34.006336, 31.962921, 25.997280>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.311314, 32.708252, 26.124428> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.926514, 32.733982, 26.018286>,  <33.695633, 32.749420, 25.954599>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.926514, 32.733982, 26.018286>,  <34.311314, 32.708252, 26.124428>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.926514, 32.733982, 26.018286> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160164, 0.654142, 0.739219,
		0.221133, 0.753631, -0.618983,
		-0.962002, 0.064327, -0.265357,
		33.637913, 32.753281, 25.938679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.181282, 33.346825, 26.172447>,  <34.311314, 32.708252, 26.124428>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.181282, 33.346825, 26.172447> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.820488, 33.174305, 26.180433>,  <33.604012, 33.070793, 26.185225>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.820488, 33.174305, 26.180433>,  <34.181282, 33.346825, 26.172447>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.820488, 33.174305, 26.180433> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271811, 0.603160, 0.749878,
		-0.335462, 0.670955, -0.661275,
		-0.901989, -0.431297, 0.019965,
		33.549892, 33.044914, 26.186422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.618729, 33.895947, 26.208399>,  <34.181282, 33.346825, 26.172447>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.618729, 33.895947, 26.208399> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.406414, 33.579350, 26.329601>,  <33.279026, 33.389393, 26.402323>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.406414, 33.579350, 26.329601>,  <33.618729, 33.895947, 26.208399>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.406414, 33.579350, 26.329601> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363502, 0.535580, 0.762247,
		-0.765594, 0.294446, -0.571986,
		-0.530785, -0.791489, 0.303005,
		33.247177, 33.341904, 26.420504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.009712, 34.213699, 26.359118>,  <33.618729, 33.895947, 26.208399>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.009712, 34.213699, 26.359118> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.026051, 33.860226, 26.545637>,  <33.035854, 33.648140, 26.657549>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.026051, 33.860226, 26.545637>,  <33.009712, 34.213699, 26.359118>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.026051, 33.860226, 26.545637> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239197, 0.444468, 0.863269,
		-0.970112, -0.146798, -0.193220,
		0.040846, -0.883685, 0.466297,
		33.038303, 33.595119, 26.685526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.479095, 34.250969, 26.806250>,  <33.009712, 34.213699, 26.359118>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.479095, 34.250969, 26.806250> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.699795, 33.954239, 26.958708>,  <32.832214, 33.776203, 27.050182>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.699795, 33.954239, 26.958708>,  <32.479095, 34.250969, 26.806250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.699795, 33.954239, 26.958708> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340033, 0.217209, 0.914985,
		-0.761545, -0.634444, -0.132399,
		0.551749, -0.741822, 0.381146,
		32.865318, 33.731693, 27.073051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.993853, 33.909035, 27.310171>,  <32.479095, 34.250969, 26.806250>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.993853, 33.909035, 27.310171> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.367874, 33.803497, 27.404875>,  <32.592289, 33.740173, 27.461697>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.367874, 33.803497, 27.404875>,  <31.993853, 33.909035, 27.310171>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.367874, 33.803497, 27.404875> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232912, 0.046244, 0.971398,
		-0.267250, -0.963455, -0.018213,
		0.935056, -0.263848, 0.236759,
		32.648392, 33.724342, 27.475903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.871227, 33.492329, 27.863668>,  <31.993853, 33.909035, 27.310171>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.871227, 33.492329, 27.863668> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.250771, 33.615318, 27.892311>,  <32.478497, 33.689110, 27.909496>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.250771, 33.615318, 27.892311>,  <31.871227, 33.492329, 27.863668>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.250771, 33.615318, 27.892311> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107415, 0.101146, 0.989056,
		0.296864, -0.946166, 0.129001,
		0.948859, 0.307472, 0.071606,
		32.535427, 33.707561, 27.913794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.212196, 33.117317, 28.464088>,  <31.871227, 33.492329, 27.863668>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.212196, 33.117317, 28.464088> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.442711, 33.440590, 28.415529>,  <32.581020, 33.634552, 28.386395>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.442711, 33.440590, 28.415529>,  <32.212196, 33.117317, 28.464088>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.442711, 33.440590, 28.415529> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175633, 0.022599, 0.984196,
		0.798151, -0.588503, -0.128919,
		0.576289, 0.808179, -0.121398,
		32.615597, 33.683044, 28.379110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.725601, 33.038933, 29.004351>,  <32.212196, 33.117317, 28.464088>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.725601, 33.038933, 29.004351> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.738823, 33.422333, 28.891085>,  <32.746754, 33.652374, 28.823126>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.738823, 33.422333, 28.891085>,  <32.725601, 33.038933, 29.004351>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.738823, 33.422333, 28.891085> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255069, 0.265849, 0.929658,
		0.966358, -0.102953, -0.235697,
		0.033051, 0.958502, -0.283165,
		32.748737, 33.709885, 28.806135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.345539, 33.246765, 29.332613>,  <32.725601, 33.038933, 29.004351>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.345539, 33.246765, 29.332613> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.095272, 33.549946, 29.258795>,  <32.945114, 33.731853, 29.214504>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.095272, 33.549946, 29.258795>,  <33.345539, 33.246765, 29.332613>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.095272, 33.549946, 29.258795> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150514, 0.349417, 0.924799,
		0.765433, 0.550838, -0.332700,
		-0.625665, 0.757948, -0.184547,
		32.907574, 33.777328, 29.203430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.192799, 33.282166, 29.381489>,  <33.345539, 33.246765, 29.332613>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.192799, 33.282166, 29.381489> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.470375, 33.120525, 29.619865>,  <34.636921, 33.023540, 29.762892>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.470375, 33.120525, 29.619865>,  <34.192799, 33.282166, 29.381489>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.470375, 33.120525, 29.619865> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330197, -0.556903, -0.762121,
		0.639854, 0.725647, -0.253027,
		0.693943, -0.404097, 0.595944,
		34.678558, 32.999294, 29.798649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.850754, 33.293507, 29.065020>,  <34.192799, 33.282166, 29.381489>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.850754, 33.293507, 29.065020> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.894386, 33.003662, 29.337208>,  <34.920567, 32.829754, 29.500521>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.894386, 33.003662, 29.337208>,  <34.850754, 33.293507, 29.065020>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.894386, 33.003662, 29.337208> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473843, -0.563871, -0.676404,
		0.873828, 0.396217, 0.281846,
		0.109078, -0.724612, 0.680471,
		34.927109, 32.786278, 29.541349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.486275, 33.059578, 29.013210>,  <34.850754, 33.293507, 29.065020>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.486275, 33.059578, 29.013210> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.327263, 32.742599, 29.198252>,  <35.231857, 32.552414, 29.309277>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.327263, 32.742599, 29.198252>,  <35.486275, 33.059578, 29.013210>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.327263, 32.742599, 29.198252> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432228, -0.606430, -0.667399,
		0.809413, -0.065362, 0.583591,
		-0.397530, -0.792446, 0.462601,
		35.208004, 32.504868, 29.337032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.103016, 32.547634, 29.038464>,  <35.486275, 33.059578, 29.013210>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.103016, 32.547634, 29.038464> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.748482, 32.367386, 29.081074>,  <35.535759, 32.259239, 29.106640>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.748482, 32.367386, 29.081074>,  <36.103016, 32.547634, 29.038464>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.748482, 32.367386, 29.081074> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209143, -0.594850, -0.776152,
		0.413115, -0.665655, 0.621482,
		-0.886338, -0.450619, 0.106525,
		35.482582, 32.232201, 29.113031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.239819, 31.965820, 29.072329>,  <36.103016, 32.547634, 29.038464>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.239819, 31.965820, 29.072329> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.851292, 31.946379, 28.979227>,  <35.618176, 31.934713, 28.923367>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.851292, 31.946379, 28.979227>,  <36.239819, 31.965820, 29.072329>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.851292, 31.946379, 28.979227> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208253, -0.646291, -0.734124,
		-0.114745, -0.761541, 0.637878,
		-0.971321, -0.048603, -0.232752,
		35.559895, 31.931797, 28.909401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.087933, 31.280754, 28.985327>,  <36.239819, 31.965820, 29.072329>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.087933, 31.280754, 28.985327> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.789310, 31.445642, 28.776432>,  <35.610138, 31.544575, 28.651096>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.789310, 31.445642, 28.776432>,  <36.087933, 31.280754, 28.985327>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.789310, 31.445642, 28.776432> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114620, -0.693512, -0.711269,
		-0.655373, -0.590862, 0.470499,
		-0.746558, 0.412218, -0.522234,
		35.565346, 31.569309, 28.619761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.645794, 30.689707, 28.623737>,  <36.087933, 31.280754, 28.985327>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.645794, 30.689707, 28.623737> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.629471, 31.031084, 28.415901>,  <35.619678, 31.235910, 28.291201>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.629471, 31.031084, 28.415901>,  <35.645794, 30.689707, 28.623737>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.629471, 31.031084, 28.415901> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338947, -0.477362, -0.810704,
		-0.939920, -0.209195, -0.269792,
		-0.040807, 0.853442, -0.519588,
		35.617229, 31.287117, 28.260025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.162495, 30.540802, 28.033346>,  <35.645794, 30.689707, 28.623737>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.162495, 30.540802, 28.033346> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.384037, 30.859224, 27.935745>,  <35.516960, 31.050278, 27.877184>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.384037, 30.859224, 27.935745>,  <35.162495, 30.540802, 28.033346>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.384037, 30.859224, 27.935745> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181396, -0.401386, -0.897766,
		-0.812614, 0.452970, -0.366711,
		0.553854, 0.796057, -0.244005,
		35.550194, 31.098042, 27.862543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.973251, 30.687454, 27.391859>,  <35.162495, 30.540802, 28.033346>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.973251, 30.687454, 27.391859> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.335876, 30.856274, 27.389942>,  <35.553452, 30.957565, 27.388792>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.335876, 30.856274, 27.389942>,  <34.973251, 30.687454, 27.391859>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.335876, 30.856274, 27.389942> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181240, -0.399511, -0.898634,
		-0.381181, 0.813798, -0.438673,
		0.906561, 0.422047, -0.004793,
		35.607845, 30.982887, 27.388504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.973614, 30.711418, 26.735785>,  <34.973251, 30.687454, 27.391859>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.973614, 30.711418, 26.735785> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.344387, 30.805962, 26.852356>,  <35.566853, 30.862688, 26.922298>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.344387, 30.805962, 26.852356>,  <34.973614, 30.711418, 26.735785>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.344387, 30.805962, 26.852356> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367905, -0.419786, -0.829714,
		-0.073771, 0.876307, -0.476071,
		0.926932, 0.236358, 0.291430,
		35.622467, 30.876869, 26.939785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.326511, 31.277557, 26.309631>,  <34.973614, 30.711418, 26.735785>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.326511, 31.277557, 26.309631> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.568932, 31.003096, 26.470577>,  <35.714382, 30.838419, 26.567144>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.568932, 31.003096, 26.470577>,  <35.326511, 31.277557, 26.309631>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.568932, 31.003096, 26.470577> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288630, -0.281670, -0.915071,
		0.741213, 0.670713, 0.027339,
		0.606049, -0.686154, 0.402365,
		35.750748, 30.797249, 26.591288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.906620, 31.380733, 25.952475>,  <35.326511, 31.277557, 26.309631>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.906620, 31.380733, 25.952475> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.898968, 31.003124, 26.084206>,  <35.894375, 30.776560, 26.163244>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.898968, 31.003124, 26.084206>,  <35.906620, 31.380733, 25.952475>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.898968, 31.003124, 26.084206> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151345, -0.328327, -0.932360,
		0.988296, 0.032007, 0.149154,
		-0.019130, -0.944022, 0.329329,
		35.893230, 30.719917, 26.183004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.497555, 31.056227, 25.691135>,  <35.906620, 31.380733, 25.952475>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.497555, 31.056227, 25.691135> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.251171, 30.753368, 25.778152>,  <36.103340, 30.571653, 25.830362>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.251171, 30.753368, 25.778152>,  <36.497555, 31.056227, 25.691135>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.251171, 30.753368, 25.778152> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080269, -0.335034, -0.938781,
		0.783678, -0.560788, 0.267143,
		-0.615959, -0.757145, 0.217545,
		36.066383, 30.526224, 25.843416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.878529, 30.464514, 25.513498>,  <36.497555, 31.056227, 25.691135>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.878529, 30.464514, 25.513498> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.490288, 30.368690, 25.522806>,  <36.257343, 30.311197, 25.528391>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.490288, 30.368690, 25.522806>,  <36.878529, 30.464514, 25.513498>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.490288, 30.368690, 25.522806> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068422, -0.367323, -0.927573,
		0.230756, -0.898713, 0.372916,
		-0.970603, -0.239559, 0.023271,
		36.199108, 30.296824, 25.529787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.022602, 29.815231, 25.934977>,  <36.878529, 30.464514, 25.513498>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.022602, 29.815231, 25.934977> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.306190, 29.539305, 25.993656>,  <37.476341, 29.373749, 26.028864>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.306190, 29.539305, 25.993656>,  <37.022602, 29.815231, 25.934977>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.306190, 29.539305, 25.993656> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151416, 0.054276, 0.986979,
		-0.688795, -0.721949, -0.065969,
		0.708968, -0.689815, 0.146699,
		37.518883, 29.332361, 26.037666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.697327, 29.353329, 26.498850>,  <37.022602, 29.815231, 25.934977>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.697327, 29.353329, 26.498850> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.079601, 29.235586, 26.497072>,  <37.308968, 29.164940, 26.496006>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.079601, 29.235586, 26.497072>,  <36.697327, 29.353329, 26.498850>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.079601, 29.235586, 26.497072> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014258, -0.061353, 0.998014,
		-0.294046, -0.953724, -0.062831,
		0.955685, -0.294358, -0.004443,
		37.366306, 29.147280, 26.495739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.737309, 28.829664, 26.914692>,  <36.697327, 29.353329, 26.498850>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.737309, 28.829664, 26.914692> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.114895, 28.961672, 26.913588>,  <37.341446, 29.040876, 26.912926>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.114895, 28.961672, 26.913588>,  <36.737309, 28.829664, 26.914692>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.114895, 28.961672, 26.913588> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002597, 0.000936, 0.999996,
		0.330023, -0.943973, 0.000027,
		0.943969, 0.330022, -0.002761,
		37.398087, 29.060678, 26.912760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.191463, 28.450384, 27.448267>,  <36.737309, 28.829664, 26.914692>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.191463, 28.450384, 27.448267> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.346638, 28.813309, 27.383417>,  <37.439743, 29.031063, 27.344507>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.346638, 28.813309, 27.383417>,  <37.191463, 28.450384, 27.448267>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.346638, 28.813309, 27.383417> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002241, 0.174974, 0.984571,
		0.921682, -0.382318, 0.065846,
		0.387940, 0.907313, -0.162127,
		37.463020, 29.085503, 27.334780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.587364, 28.599472, 28.109306>,  <37.191463, 28.450384, 27.448267>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.587364, 28.599472, 28.109306> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.567673, 28.947544, 27.913198>,  <37.555859, 29.156387, 27.795534>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.567673, 28.947544, 27.913198>,  <37.587364, 28.599472, 28.109306>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.567673, 28.947544, 27.913198> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099332, 0.492695, 0.864514,
		0.993836, -0.006137, -0.110694,
		-0.049233, 0.870180, -0.490268,
		37.552902, 29.208599, 27.766119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.040508, 28.989109, 28.474070>,  <37.587364, 28.599472, 28.109306>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.040508, 28.989109, 28.474070> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.792519, 29.221201, 28.262800>,  <37.643726, 29.360456, 28.136038>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.792519, 29.221201, 28.262800>,  <38.040508, 28.989109, 28.474070>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.792519, 29.221201, 28.262800> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020285, 0.684782, 0.728465,
		0.784363, 0.440913, -0.436315,
		-0.619971, 0.580231, -0.528174,
		37.606529, 29.395271, 28.104347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.303215, 29.626083, 28.629923>,  <38.040508, 28.989109, 28.474070>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.303215, 29.626083, 28.629923> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.945889, 29.727200, 28.481287>,  <37.731491, 29.787870, 28.392105>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.945889, 29.727200, 28.481287>,  <38.303215, 29.626083, 28.629923>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.945889, 29.727200, 28.481287> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115547, 0.669832, 0.733467,
		0.434316, 0.698156, -0.569164,
		-0.893319, 0.252791, -0.371589,
		37.677895, 29.803038, 28.369810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.335468, 30.288603, 28.730732>,  <38.303215, 29.626083, 28.629923>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.335468, 30.288603, 28.730732> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.948456, 30.193447, 28.696558>,  <37.716248, 30.136354, 28.676054>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.948456, 30.193447, 28.696558>,  <38.335468, 30.288603, 28.730732>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.948456, 30.193447, 28.696558> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196093, 0.493161, 0.847549,
		-0.159491, 0.836780, -0.523795,
		-0.967528, -0.237889, -0.085433,
		37.658199, 30.122080, 28.670929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.949310, 30.946415, 28.817146>,  <38.335468, 30.288603, 28.730732>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.949310, 30.946415, 28.817146> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.713726, 30.635815, 28.906740>,  <37.572376, 30.449453, 28.960497>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.713726, 30.635815, 28.906740>,  <37.949310, 30.946415, 28.817146>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.713726, 30.635815, 28.906740> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293536, 0.463764, 0.835919,
		-0.752970, 0.426575, -0.501070,
		-0.588960, -0.776503, 0.223985,
		37.537037, 30.402864, 28.973936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.417789, 31.294949, 29.093548>,  <37.949310, 30.946415, 28.817146>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.417789, 31.294949, 29.093548> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.387867, 30.913589, 29.210468>,  <37.369915, 30.684774, 29.280621>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.387867, 30.913589, 29.210468>,  <37.417789, 31.294949, 29.093548>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.387867, 30.913589, 29.210468> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349425, 0.299598, 0.887774,
		-0.933973, -0.035727, -0.355552,
		-0.074805, -0.953397, 0.292300,
		37.365425, 30.627571, 29.298159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.701302, 31.152250, 29.457239>,  <37.417789, 31.294949, 29.093548>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.701302, 31.152250, 29.457239> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.927948, 30.850275, 29.589312>,  <37.063934, 30.669090, 29.668554>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.927948, 30.850275, 29.589312>,  <36.701302, 31.152250, 29.457239>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.927948, 30.850275, 29.589312> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291360, 0.191259, 0.937299,
		-0.770752, -0.627287, -0.111589,
		0.566613, -0.754938, 0.330179,
		37.097931, 30.623795, 29.688366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.298706, 30.626408, 29.922728>,  <36.701302, 31.152250, 29.457239>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.298706, 30.626408, 29.922728> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.688519, 30.599136, 30.008186>,  <36.922405, 30.582773, 30.059462>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.688519, 30.599136, 30.008186>,  <36.298706, 30.626408, 29.922728>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.688519, 30.599136, 30.008186> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198391, 0.182126, 0.963053,
		-0.104570, -0.980909, 0.163961,
		0.974528, -0.068178, 0.213648,
		36.980877, 30.578684, 30.072281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.316833, 30.332066, 30.675821>,  <36.298706, 30.626408, 29.922728>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.316833, 30.332066, 30.675821> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.693214, 30.441881, 30.596592>,  <36.919044, 30.507771, 30.549055>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.693214, 30.441881, 30.596592>,  <36.316833, 30.332066, 30.675821>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.693214, 30.441881, 30.596592> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112107, 0.299380, 0.947525,
		0.319441, -0.913781, 0.250924,
		0.940951, 0.274548, -0.198075,
		36.975502, 30.524242, 30.537170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.804661, 30.035801, 31.180902>,  <36.316833, 30.332066, 30.675821>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.804661, 30.035801, 31.180902> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.975803, 30.364384, 31.030090>,  <37.078487, 30.561533, 30.939604>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.975803, 30.364384, 31.030090>,  <36.804661, 30.035801, 31.180902>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.975803, 30.364384, 31.030090> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058031, 0.391310, 0.918427,
		0.901983, -0.414833, 0.119754,
		0.427855, 0.821456, -0.377029,
		37.104160, 30.610821, 30.916983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<40.533703, 31.487995, 25.408642> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.397404, 31.764866, 25.154152>,  <40.315624, 31.930988, 25.001457>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.397404, 31.764866, 25.154152>,  <40.533703, 31.487995, 25.408642>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.397404, 31.764866, 25.154152> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135244, -0.705774, -0.695408,
		-0.930376, -0.150913, 0.334104,
		-0.340748, 0.692176, -0.636225,
		40.295177, 31.972519, 24.963284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.164864, 31.154020, 24.961161>,  <40.533703, 31.487995, 25.408642>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.164864, 31.154020, 24.961161> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.246906, 31.491840, 24.763304>,  <40.296131, 31.694532, 24.644590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.246906, 31.491840, 24.763304>,  <40.164864, 31.154020, 24.961161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.246906, 31.491840, 24.763304> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085003, -0.518847, -0.850631,
		-0.975042, 0.132420, -0.178205,
		0.205102, 0.844549, -0.494642,
		40.308437, 31.745205, 24.614912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.545471, 31.211441, 24.489315>,  <40.164864, 31.154020, 24.961161>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.545471, 31.211441, 24.489315> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.866516, 31.413074, 24.361746>,  <40.059143, 31.534056, 24.285204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.866516, 31.413074, 24.361746>,  <39.545471, 31.211441, 24.489315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.866516, 31.413074, 24.361746> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098372, -0.415480, -0.904267,
		-0.588334, 0.757149, -0.283881,
		0.802612, 0.504086, -0.318923,
		40.107300, 31.564301, 24.266069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.451000, 31.145012, 23.846907>,  <39.545471, 31.211441, 24.489315>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.451000, 31.145012, 23.846907> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.809277, 31.322851, 23.843683>,  <40.024242, 31.429556, 23.841749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.809277, 31.322851, 23.843683>,  <39.451000, 31.145012, 23.846907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.809277, 31.322851, 23.843683> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109923, -0.238942, -0.964792,
		-0.430873, 0.863272, -0.262890,
		0.895693, 0.444600, -0.008061,
		40.077984, 31.456232, 23.841265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.441883, 31.576332, 23.265522>,  <39.451000, 31.145012, 23.846907>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.441883, 31.576332, 23.265522> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.805695, 31.441133, 23.362280>,  <40.023983, 31.360014, 23.420336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.805695, 31.441133, 23.362280>,  <39.441883, 31.576332, 23.265522>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.805695, 31.441133, 23.362280> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130972, -0.319276, -0.938568,
		0.394463, 0.885337, -0.246123,
		0.909530, -0.337995, 0.241897,
		40.078552, 31.339735, 23.434849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.845406, 31.759069, 22.677475>,  <39.441883, 31.576332, 23.265522>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.845406, 31.759069, 22.677475> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.088238, 31.494610, 22.853807>,  <40.233936, 31.335934, 22.959606>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.088238, 31.494610, 22.853807>,  <39.845406, 31.759069, 22.677475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.088238, 31.494610, 22.853807> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255406, -0.362976, -0.896112,
		0.752477, 0.656603, -0.051494,
		0.607081, -0.661151, 0.440832,
		40.270363, 31.296265, 22.986057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.394302, 31.912403, 22.291485>,  <39.845406, 31.759069, 22.677475>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.394302, 31.912403, 22.291485> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.477375, 31.556168, 22.453333>,  <40.527218, 31.342426, 22.550442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.477375, 31.556168, 22.453333>,  <40.394302, 31.912403, 22.291485>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.477375, 31.556168, 22.453333> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397758, -0.301016, -0.866705,
		0.893677, 0.340938, 0.291725,
		0.207679, -0.890590, 0.404622,
		40.539680, 31.288990, 22.574720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.088581, 31.767832, 22.115847>,  <40.394302, 31.912403, 22.291485>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.088581, 31.767832, 22.115847> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.902271, 31.421469, 22.188791>,  <40.790485, 31.213650, 22.232557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.902271, 31.421469, 22.188791>,  <41.088581, 31.767832, 22.115847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.902271, 31.421469, 22.188791> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268054, -0.334461, -0.903483,
		0.843328, -0.371935, 0.387894,
		-0.465772, -0.865910, 0.182362,
		40.762539, 31.161695, 22.243500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.520447, 31.238075, 21.739868>,  <41.088581, 31.767832, 22.115847>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.520447, 31.238075, 21.739868> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.188560, 31.028059, 21.815657>,  <40.989429, 30.902050, 21.861130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.188560, 31.028059, 21.815657>,  <41.520447, 31.238075, 21.739868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.188560, 31.028059, 21.815657> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033822, -0.386106, -0.921834,
		0.557156, -0.758455, 0.338117,
		-0.829719, -0.525041, 0.189469,
		40.939644, 30.870546, 21.872498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.675446, 30.510813, 21.492876>,  <41.520447, 31.238075, 21.739868>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.675446, 30.510813, 21.492876> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.279591, 30.567451, 21.502354>,  <41.042076, 30.601435, 21.508041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.279591, 30.567451, 21.502354>,  <41.675446, 30.510813, 21.492876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.279591, 30.567451, 21.502354> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088059, -0.468332, -0.879153,
		-0.113388, -0.872133, 0.475949,
		-0.989641, 0.141597, 0.023696,
		40.982697, 30.609930, 21.509462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.363201, 29.824734, 21.303486>,  <41.675446, 30.510813, 21.492876>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.363201, 29.824734, 21.303486> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.053356, 30.068033, 21.234196>,  <40.867447, 30.214012, 21.192621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.053356, 30.068033, 21.234196>,  <41.363201, 29.824734, 21.303486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.053356, 30.068033, 21.234196> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125291, -0.416063, -0.900663,
		-0.619898, -0.675963, 0.398497,
		-0.774615, 0.608248, -0.173224,
		40.820972, 30.250507, 21.182228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.872967, 29.359350, 21.067333>,  <41.363201, 29.824734, 21.303486>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.872967, 29.359350, 21.067333> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.779835, 29.732084, 20.955997>,  <40.723953, 29.955725, 20.889196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.779835, 29.732084, 20.955997>,  <40.872967, 29.359350, 21.067333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.779835, 29.732084, 20.955997> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320644, -0.343759, -0.882619,
		-0.918137, -0.116255, 0.378826,
		-0.232834, 0.931834, -0.278341,
		40.709984, 30.011635, 20.872496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.118835, 29.407215, 20.871870>,  <40.872967, 29.359350, 21.067333>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.118835, 29.407215, 20.871870> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.329418, 29.698164, 20.695791>,  <40.455769, 29.872732, 20.590143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.329418, 29.698164, 20.695791>,  <40.118835, 29.407215, 20.871870>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.329418, 29.698164, 20.695791> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437416, -0.212251, -0.873851,
		-0.729046, 0.652596, 0.206422,
		0.526459, 0.727370, -0.440197,
		40.487354, 29.916374, 20.563732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.604198, 29.758066, 20.394039>,  <40.118835, 29.407215, 20.871870>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.604198, 29.758066, 20.394039> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.987080, 29.807131, 20.289185>,  <40.216808, 29.836569, 20.226271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.987080, 29.807131, 20.289185>,  <39.604198, 29.758066, 20.394039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.987080, 29.807131, 20.289185> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251335, -0.096796, -0.963048,
		-0.143502, 0.987717, -0.061824,
		0.957203, 0.122660, -0.262138,
		40.274242, 29.843929, 20.210543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.448536, 29.146347, 20.707289>,  <39.604198, 29.758066, 20.394039>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.448536, 29.146347, 20.707289> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.142544, 29.398813, 20.656000>,  <38.958950, 29.550293, 20.625227>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.142544, 29.398813, 20.656000>,  <39.448536, 29.146347, 20.707289>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.142544, 29.398813, 20.656000> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283274, -0.150930, 0.947088,
		0.578416, 0.760823, 0.294251,
		-0.764978, 0.631165, -0.128221,
		38.913052, 29.588163, 20.617535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.370270, 29.646858, 21.162592>,  <39.448536, 29.146347, 20.707289>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.370270, 29.646858, 21.162592> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.989624, 29.581722, 21.058352>,  <38.761238, 29.542641, 20.995808>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.989624, 29.581722, 21.058352>,  <39.370270, 29.646858, 21.162592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.989624, 29.581722, 21.058352> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214373, -0.255807, 0.942660,
		-0.220166, 0.952915, 0.208521,
		-0.951615, -0.162840, -0.260599,
		38.704140, 29.532869, 20.980171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.782310, 29.962782, 21.562931>,  <39.370270, 29.646858, 21.162592>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.782310, 29.962782, 21.562931> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.614899, 29.625107, 21.428955>,  <38.514454, 29.422503, 21.348570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.614899, 29.625107, 21.428955>,  <38.782310, 29.962782, 21.562931>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.614899, 29.625107, 21.428955> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306105, -0.216097, 0.927147,
		-0.855065, 0.490563, -0.167967,
		-0.418527, -0.844186, -0.334941,
		38.489342, 29.371851, 21.328472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.151825, 29.915619, 21.747318>,  <38.782310, 29.962782, 21.562931>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.151825, 29.915619, 21.747318> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.245651, 29.529757, 21.699282>,  <38.301949, 29.298239, 21.670460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.245651, 29.529757, 21.699282>,  <38.151825, 29.915619, 21.747318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.245651, 29.529757, 21.699282> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375623, -0.203885, 0.904068,
		-0.896597, -0.166956, -0.410171,
		0.234567, -0.964653, -0.120090,
		38.316021, 29.240360, 21.663256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.610699, 29.462160, 21.994081>,  <38.151825, 29.915619, 21.747318>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.610699, 29.462160, 21.994081> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.937588, 29.232723, 22.016485>,  <38.133720, 29.095060, 22.029928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.937588, 29.232723, 22.016485>,  <37.610699, 29.462160, 21.994081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.937588, 29.232723, 22.016485> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262431, -0.283841, 0.922261,
		-0.513106, -0.768391, -0.382490,
		0.817222, -0.573594, 0.056009,
		38.182755, 29.060646, 22.033287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.413757, 28.793398, 22.247194>,  <37.610699, 29.462160, 21.994081>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.413757, 28.793398, 22.247194> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.806404, 28.808350, 22.322056>,  <38.041992, 28.817320, 22.366974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.806404, 28.808350, 22.322056>,  <37.413757, 28.793398, 22.247194>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.806404, 28.808350, 22.322056> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153905, -0.424868, 0.892077,
		0.112861, -0.904483, -0.411305,
		0.981619, 0.037379, 0.187156,
		38.100891, 28.819563, 22.378202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.654541, 28.140459, 22.655771>,  <37.413757, 28.793398, 22.247194>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.654541, 28.140459, 22.655771> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.932289, 28.419073, 22.728088>,  <38.098938, 28.586243, 22.771479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.932289, 28.419073, 22.728088>,  <37.654541, 28.140459, 22.655771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.932289, 28.419073, 22.728088> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016131, -0.236108, 0.971593,
		0.719438, -0.677561, -0.152710,
		0.694370, 0.696537, 0.180795,
		38.140598, 28.628035, 22.782328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.089809, 27.890837, 23.079533>,  <37.654541, 28.140459, 22.655771>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.089809, 27.890837, 23.079533> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.147717, 28.281776, 23.141285>,  <38.182461, 28.516340, 23.178337>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.147717, 28.281776, 23.141285>,  <38.089809, 27.890837, 23.079533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.147717, 28.281776, 23.141285> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056764, -0.147565, 0.987422,
		0.987837, -0.151706, 0.034117,
		0.144763, 0.977349, 0.154381,
		38.191147, 28.574982, 23.187599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.414192, 27.870461, 23.754759>,  <38.089809, 27.890837, 23.079533>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.414192, 27.870461, 23.754759> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.336876, 28.260586, 23.712048>,  <38.290485, 28.494661, 23.686420>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.336876, 28.260586, 23.712048>,  <38.414192, 27.870461, 23.754759>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.336876, 28.260586, 23.712048> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079616, 0.092879, 0.992489,
		0.977906, 0.200342, 0.059698,
		-0.193292, 0.975314, -0.106777,
		38.278889, 28.553181, 23.680014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.683067, 28.167475, 24.398411>,  <38.414192, 27.870461, 23.754759>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.683067, 28.167475, 24.398411> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.432899, 28.448700, 24.263031>,  <38.282799, 28.617435, 24.181803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.432899, 28.448700, 24.263031>,  <38.683067, 28.167475, 24.398411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.432899, 28.448700, 24.263031> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054018, 0.393697, 0.917652,
		0.778415, 0.592201, -0.208248,
		-0.625421, 0.703065, -0.338449,
		38.245274, 28.659620, 24.161497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.957516, 28.876501, 24.752314>,  <38.683067, 28.167475, 24.398411>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.957516, 28.876501, 24.752314> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.567295, 28.893238, 24.666006>,  <38.333164, 28.903280, 24.614222>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.567295, 28.893238, 24.666006>,  <38.957516, 28.876501, 24.752314>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.567295, 28.893238, 24.666006> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196286, 0.275849, 0.940946,
		0.098891, 0.960290, -0.260891,
		-0.975547, 0.041841, -0.215771,
		38.274632, 28.905790, 24.601274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.715874, 29.460443, 25.067148>,  <38.957516, 28.876501, 24.752314>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.715874, 29.460443, 25.067148> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.370415, 29.268972, 25.003925>,  <38.163139, 29.154091, 24.965992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.370415, 29.268972, 25.003925>,  <38.715874, 29.460443, 25.067148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.370415, 29.268972, 25.003925> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246429, 0.127380, 0.960753,
		-0.439756, 0.868702, -0.227971,
		-0.863648, -0.478676, -0.158057,
		38.111320, 29.125370, 24.956509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.239838, 29.894562, 25.308079>,  <38.715874, 29.460443, 25.067148>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.239838, 29.894562, 25.308079> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.067474, 29.534084, 25.289461>,  <37.964054, 29.317799, 25.278290>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.067474, 29.534084, 25.289461>,  <38.239838, 29.894562, 25.308079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.067474, 29.534084, 25.289461> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337240, 0.112983, 0.934614,
		-0.837010, 0.418432, -0.352604,
		-0.430910, -0.901194, -0.046544,
		37.938202, 29.263725, 25.275497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.557312, 30.069586, 25.519072>,  <38.239838, 29.894562, 25.308079>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.557312, 30.069586, 25.519072> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.667458, 29.689711, 25.578754>,  <37.733547, 29.461784, 25.614563>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.667458, 29.689711, 25.578754>,  <37.557312, 30.069586, 25.519072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.667458, 29.689711, 25.578754> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382130, 0.034286, 0.923473,
		-0.882128, -0.311309, -0.353463,
		0.275367, -0.949690, 0.149205,
		37.750069, 29.404804, 25.623516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.835495, 29.788273, 25.252693>,  <37.557312, 30.069586, 25.519072>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.835495, 29.788273, 25.252693> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.451775, 29.888206, 25.200039>,  <36.221542, 29.948166, 25.168446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.451775, 29.888206, 25.200039>,  <36.835495, 29.788273, 25.252693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.451775, 29.888206, 25.200039> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013972, -0.423593, -0.905745,
		-0.282044, -0.870720, 0.402862,
		-0.959300, 0.249831, -0.131637,
		36.163986, 29.963156, 25.160547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.465416, 29.181749, 24.859343>,  <36.835495, 29.788273, 25.252693>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.465416, 29.181749, 24.859343> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.221786, 29.495365, 24.811499>,  <36.075607, 29.683535, 24.782793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.221786, 29.495365, 24.811499>,  <36.465416, 29.181749, 24.859343>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.221786, 29.495365, 24.811499> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226607, -0.316559, -0.921108,
		-0.760049, -0.533921, 0.370477,
		-0.609077, 0.784040, -0.119610,
		36.039062, 29.730577, 24.775616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.973064, 28.929586, 24.352512>,  <36.465416, 29.181749, 24.859343>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.973064, 28.929586, 24.352512> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.906914, 29.324078, 24.353065>,  <35.867222, 29.560772, 24.353397>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.906914, 29.324078, 24.353065>,  <35.973064, 28.929586, 24.352512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.906914, 29.324078, 24.353065> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378730, -0.062216, -0.923414,
		-0.910611, -0.153238, 0.383804,
		-0.165381, 0.986229, 0.001381,
		35.857300, 29.619946, 24.353479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.266041, 29.145100, 24.090580>,  <35.973064, 28.929586, 24.352512>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.266041, 29.145100, 24.090580> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.505344, 29.462744, 24.047735>,  <35.648926, 29.653330, 24.022028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.505344, 29.462744, 24.047735>,  <35.266041, 29.145100, 24.090580>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.505344, 29.462744, 24.047735> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404524, 0.183927, -0.895841,
		-0.691696, 0.579276, 0.431273,
		0.598262, 0.794110, -0.107110,
		35.684822, 29.700977, 24.015602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.819057, 29.770754, 23.986881>,  <35.266041, 29.145100, 24.090580>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.819057, 29.770754, 23.986881> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.191845, 29.783075, 23.842390>,  <35.415516, 29.790468, 23.755695>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.191845, 29.783075, 23.842390>,  <34.819057, 29.770754, 23.986881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.191845, 29.783075, 23.842390> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343919, -0.240100, -0.907784,
		-0.114692, 0.970259, -0.213172,
		0.931968, 0.030801, -0.361229,
		35.471436, 29.792316, 23.734022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.771656, 30.038599, 23.303726>,  <34.819057, 29.770754, 23.986881>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.771656, 30.038599, 23.303726> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.131046, 29.863695, 23.288000>,  <35.346680, 29.758753, 23.278564>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.131046, 29.863695, 23.288000>,  <34.771656, 30.038599, 23.303726>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.131046, 29.863695, 23.288000> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261888, -0.461930, -0.847370,
		0.352361, 0.771637, -0.529546,
		0.898475, -0.437261, -0.039316,
		35.400589, 29.732517, 23.276205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.757980, 29.992411, 22.678541>,  <34.771656, 30.038599, 23.303726>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.757980, 29.992411, 22.678541> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.067314, 29.757198, 22.773340>,  <35.252914, 29.616072, 22.830219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.067314, 29.757198, 22.773340>,  <34.757980, 29.992411, 22.678541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.067314, 29.757198, 22.773340> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145011, -0.527967, -0.836793,
		0.617188, 0.612756, -0.493568,
		0.773337, -0.588031, 0.236999,
		35.299316, 29.580790, 22.844440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.043903, 30.437517, 22.219975>,  <34.757980, 29.992411, 22.678541>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.043903, 30.437517, 22.219975> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.676865, 30.536470, 22.095514>,  <34.456642, 30.595842, 22.020838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.676865, 30.536470, 22.095514>,  <35.043903, 30.437517, 22.219975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.676865, 30.536470, 22.095514> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135458, 0.541304, 0.829844,
		0.373716, 0.803612, -0.463190,
		-0.917599, 0.247383, -0.311149,
		34.401585, 30.610685, 22.002169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.992931, 31.070404, 22.324903>,  <35.043903, 30.437517, 22.219975>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.992931, 31.070404, 22.324903> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.604553, 30.990019, 22.272928>,  <34.371529, 30.941788, 22.241743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.604553, 30.990019, 22.272928>,  <34.992931, 31.070404, 22.324903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.604553, 30.990019, 22.272928> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229976, 0.633380, 0.738878,
		-0.066185, 0.747291, -0.661193,
		-0.970943, -0.200961, -0.129939,
		34.313271, 30.929731, 22.233946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.651150, 31.660715, 22.395954>,  <34.992931, 31.070404, 22.324903>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.651150, 31.660715, 22.395954> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.346035, 31.411711, 22.465960>,  <34.162964, 31.262308, 22.507963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.346035, 31.411711, 22.465960>,  <34.651150, 31.660715, 22.395954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.346035, 31.411711, 22.465960> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285289, 0.566857, 0.772841,
		-0.580311, 0.539585, -0.609989,
		-0.762790, -0.622511, 0.175016,
		34.117199, 31.224957, 22.518465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.266991, 32.039810, 22.754854>,  <34.651150, 31.660715, 22.395954>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.266991, 32.039810, 22.754854> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.088524, 31.708834, 22.891249>,  <33.981445, 31.510246, 22.973085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.088524, 31.708834, 22.891249>,  <34.266991, 32.039810, 22.754854>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.088524, 31.708834, 22.891249> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427723, 0.531829, 0.730898,
		-0.786123, 0.180254, -0.591201,
		-0.446165, -0.827446, 0.340984,
		33.954674, 31.460600, 22.993544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.646881, 32.285931, 23.003647>,  <34.266991, 32.039810, 22.754854>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.646881, 32.285931, 23.003647> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.684402, 31.939167, 23.199469>,  <33.706917, 31.731108, 23.316961>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.684402, 31.939167, 23.199469>,  <33.646881, 32.285931, 23.003647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.684402, 31.939167, 23.199469> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254006, 0.454611, 0.853704,
		-0.962643, -0.204433, -0.177555,
		0.093806, -0.866912, 0.489555,
		33.712543, 31.679094, 23.346334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.018879, 32.103813, 23.244274>,  <33.646881, 32.285931, 23.003647>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.018879, 32.103813, 23.244274> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.288330, 31.918016, 23.474222>,  <33.450001, 31.806540, 23.612190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.288330, 31.918016, 23.474222>,  <33.018879, 32.103813, 23.244274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.288330, 31.918016, 23.474222> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207367, 0.627799, 0.750245,
		-0.709382, -0.624596, 0.326584,
		0.673629, -0.464488, 0.574870,
		33.490417, 31.778669, 23.646683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.732502, 32.033482, 23.799772>,  <33.018879, 32.103813, 23.244274>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.732502, 32.033482, 23.799772> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.108025, 31.965792, 23.919777>,  <33.333340, 31.925179, 23.991779>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.108025, 31.965792, 23.919777>,  <32.732502, 32.033482, 23.799772>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.108025, 31.965792, 23.919777> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160627, 0.555415, 0.815913,
		-0.304702, -0.814174, 0.494245,
		0.938806, -0.169221, 0.300014,
		33.389668, 31.915026, 24.009781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<38.743324, 32.477150, 18.788309> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.941223, 32.246410, 19.048302>,  <39.059963, 32.107967, 19.204298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.941223, 32.246410, 19.048302>,  <38.743324, 32.477150, 18.788309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.941223, 32.246410, 19.048302> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395868, 0.516234, 0.759468,
		-0.773640, -0.633048, 0.027047,
		0.494743, -0.576848, 0.649983,
		39.089645, 32.073357, 19.243296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.218334, 32.285595, 19.292248>,  <38.743324, 32.477150, 18.788309>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.218334, 32.285595, 19.292248> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.571152, 32.248055, 19.476938>,  <38.782841, 32.225529, 19.587751>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.571152, 32.248055, 19.476938>,  <38.218334, 32.285595, 19.292248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.571152, 32.248055, 19.476938> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364915, 0.483829, 0.795454,
		-0.298054, -0.870115, 0.392509,
		0.882044, -0.093856, 0.461725,
		38.835766, 32.219898, 19.615456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.995247, 31.999758, 19.951878>,  <38.218334, 32.285595, 19.292248>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.995247, 31.999758, 19.951878> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.360752, 32.161842, 19.963448>,  <38.580055, 32.259094, 19.970390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.360752, 32.161842, 19.963448>,  <37.995247, 31.999758, 19.951878>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.360752, 32.161842, 19.963448> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244946, 0.492760, 0.834978,
		0.324088, -0.770060, 0.549522,
		0.913766, 0.405209, 0.028926,
		38.634880, 32.283405, 19.972124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.177700, 31.846397, 20.624489>,  <37.995247, 31.999758, 19.951878>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.177700, 31.846397, 20.624489> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.427738, 32.137100, 20.510590>,  <38.577759, 32.311523, 20.442249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.427738, 32.137100, 20.510590>,  <38.177700, 31.846397, 20.624489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.427738, 32.137100, 20.510590> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216737, 0.512069, 0.831150,
		0.749856, -0.457830, 0.477606,
		0.625093, 0.726758, -0.284750,
		38.615265, 32.355129, 20.425165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.474743, 32.056831, 21.227211>,  <38.177700, 31.846397, 20.624489>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.474743, 32.056831, 21.227211> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.520897, 32.363827, 20.974974>,  <38.548588, 32.548023, 20.823631>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.520897, 32.363827, 20.974974>,  <38.474743, 32.056831, 21.227211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.520897, 32.363827, 20.974974> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279843, 0.634235, 0.720718,
		0.953086, 0.093306, 0.287958,
		0.115386, 0.767489, -0.630592,
		38.555511, 32.594074, 20.785795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.897289, 32.614937, 21.591064>,  <38.474743, 32.056831, 21.227211>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.897289, 32.614937, 21.591064> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.707558, 32.802639, 21.293121>,  <38.593719, 32.915260, 21.114355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.707558, 32.802639, 21.293121>,  <38.897289, 32.614937, 21.591064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.707558, 32.802639, 21.293121> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269821, 0.727882, 0.630384,
		0.837980, 0.499987, -0.218639,
		-0.474327, 0.469256, -0.744857,
		38.565258, 32.943417, 21.069664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.167988, 33.312218, 21.668480>,  <38.897289, 32.614937, 21.591064>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.167988, 33.312218, 21.668480> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.817268, 33.337288, 21.477776>,  <38.606838, 33.352329, 21.363352>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.817268, 33.337288, 21.477776>,  <39.167988, 33.312218, 21.668480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.817268, 33.337288, 21.477776> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302778, 0.698292, 0.648624,
		0.373571, 0.713064, -0.593283,
		-0.876796, 0.062674, -0.476762,
		38.554230, 33.356091, 21.334747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.038700, 34.052753, 21.526007>,  <39.167988, 33.312218, 21.668480>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.038700, 34.052753, 21.526007> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.687447, 33.862499, 21.546646>,  <38.476696, 33.748348, 21.559031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.687447, 33.862499, 21.546646>,  <39.038700, 34.052753, 21.526007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.687447, 33.862499, 21.546646> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263609, 0.571026, 0.777458,
		-0.399249, 0.669106, -0.626815,
		-0.878129, -0.475633, 0.051599,
		38.424007, 33.719810, 21.562126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.573101, 34.565422, 21.612627>,  <39.038700, 34.052753, 21.526007>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.573101, 34.565422, 21.612627> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.373089, 34.246552, 21.747967>,  <38.253082, 34.055229, 21.829170>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.373089, 34.246552, 21.747967>,  <38.573101, 34.565422, 21.612627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.373089, 34.246552, 21.747967> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349513, 0.543239, 0.763369,
		-0.792342, 0.263453, -0.550261,
		-0.500034, -0.797173, 0.338351,
		38.223080, 34.007401, 21.849472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.060371, 34.858265, 21.942827>,  <38.573101, 34.565422, 21.612627>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.060371, 34.858265, 21.942827> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.997463, 34.483437, 22.067514>,  <37.959717, 34.258541, 22.142326>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.997463, 34.483437, 22.067514>,  <38.060371, 34.858265, 21.942827>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.997463, 34.483437, 22.067514> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453488, 0.348927, 0.820121,
		-0.877276, -0.012376, -0.479826,
		-0.157275, -0.937068, 0.311718,
		37.950279, 34.202316, 22.161030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.329914, 34.768909, 22.057016>,  <38.060371, 34.858265, 21.942827>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.329914, 34.768909, 22.057016> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.549782, 34.527348, 22.287899>,  <37.681702, 34.382412, 22.426428>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.549782, 34.527348, 22.287899>,  <37.329914, 34.768909, 22.057016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.549782, 34.527348, 22.287899> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385905, 0.429246, 0.816594,
		-0.740909, -0.671599, 0.002891,
		0.549665, -0.603906, 0.577205,
		37.714680, 34.346176, 22.461061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.930954, 34.608902, 22.633486>,  <37.329914, 34.768909, 22.057016>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.930954, 34.608902, 22.633486> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.300987, 34.547535, 22.772446>,  <37.523006, 34.510715, 22.855822>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.300987, 34.547535, 22.772446>,  <36.930954, 34.608902, 22.633486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.300987, 34.547535, 22.772446> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274873, 0.360728, 0.891246,
		-0.262048, -0.919967, 0.291534,
		0.925082, -0.153414, 0.347402,
		37.578510, 34.501511, 22.876667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.260593, 34.315868, 22.890528>,  <36.930954, 34.608902, 22.633486>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.260593, 34.315868, 22.890528> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.934418, 34.481106, 22.728338>,  <35.738712, 34.580250, 22.631023>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.934418, 34.481106, 22.728338>,  <36.260593, 34.315868, 22.890528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.934418, 34.481106, 22.728338> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195381, -0.462956, -0.864580,
		-0.544870, -0.784236, 0.296802,
		-0.815440, 0.413094, -0.405475,
		35.689785, 34.605034, 22.606695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.987911, 33.748325, 22.625399>,  <36.260593, 34.315868, 22.890528>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.987911, 33.748325, 22.625399> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.815136, 34.051044, 22.429163>,  <35.711472, 34.232677, 22.311422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.815136, 34.051044, 22.429163>,  <35.987911, 33.748325, 22.625399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.815136, 34.051044, 22.429163> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158616, -0.599215, -0.784718,
		-0.887845, -0.261136, 0.378866,
		-0.431941, 0.756802, -0.490589,
		35.685555, 34.278084, 22.281986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.313187, 33.468502, 22.256847>,  <35.987911, 33.748325, 22.625399>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.313187, 33.468502, 22.256847> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.420155, 33.795788, 22.053274>,  <35.484333, 33.992161, 21.931129>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.420155, 33.795788, 22.053274>,  <35.313187, 33.468502, 22.256847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.420155, 33.795788, 22.053274> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182464, -0.475614, -0.860521,
		-0.946147, 0.322980, 0.022107,
		0.267417, 0.818214, -0.508934,
		35.500381, 34.041252, 21.900595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.886700, 33.423431, 21.719929>,  <35.313187, 33.468502, 22.256847>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.886700, 33.423431, 21.719929> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.163544, 33.682617, 21.592728>,  <35.329651, 33.838127, 21.516407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.163544, 33.682617, 21.592728>,  <34.886700, 33.423431, 21.719929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.163544, 33.682617, 21.592728> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043649, -0.402198, -0.914512,
		-0.720467, 0.646827, -0.250084,
		0.692114, 0.647960, -0.318003,
		35.371178, 33.877007, 21.497326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.685040, 33.748085, 21.072088>,  <34.886700, 33.423431, 21.719929>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.685040, 33.748085, 21.072088> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.075546, 33.834641, 21.075644>,  <35.309849, 33.886574, 21.077776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.075546, 33.834641, 21.075644>,  <34.685040, 33.748085, 21.072088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.075546, 33.834641, 21.075644> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061396, -0.237174, -0.969525,
		-0.207686, 0.947061, -0.244830,
		0.976267, 0.216388, 0.008888,
		35.368427, 33.899555, 21.078310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.779705, 34.011181, 20.384153>,  <34.685040, 33.748085, 21.072088>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.779705, 34.011181, 20.384153> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.137562, 33.896782, 20.521450>,  <35.352276, 33.828144, 20.603828>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.137562, 33.896782, 20.521450>,  <34.779705, 34.011181, 20.384153>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.137562, 33.896782, 20.521450> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225776, -0.373545, -0.899716,
		0.385531, 0.882423, -0.269619,
		0.894646, -0.285995, 0.343243,
		35.405956, 33.810982, 20.624424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.276161, 34.296146, 19.846054>,  <34.779705, 34.011181, 20.384153>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.276161, 34.296146, 19.846054> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.443024, 34.003433, 20.061638>,  <35.543140, 33.827805, 20.190989>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.443024, 34.003433, 20.061638>,  <35.276161, 34.296146, 19.846054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.443024, 34.003433, 20.061638> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249381, -0.478094, -0.842161,
		0.873951, 0.485717, -0.016947,
		0.417154, -0.731781, 0.538960,
		35.568169, 33.783897, 20.223326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.989445, 34.160950, 19.522043>,  <35.276161, 34.296146, 19.846054>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.989445, 34.160950, 19.522043> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.872868, 33.853443, 19.749746>,  <35.802921, 33.668938, 19.886368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.872868, 33.853443, 19.749746>,  <35.989445, 34.160950, 19.522043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.872868, 33.853443, 19.749746> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124882, -0.620577, -0.774138,
		0.948401, -0.154527, 0.276869,
		-0.291443, -0.768769, 0.569258,
		35.785435, 33.622814, 19.920525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.342152, 33.598709, 19.293150>,  <35.989445, 34.160950, 19.522043>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.342152, 33.598709, 19.293150> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.054783, 33.397137, 19.484953>,  <35.882362, 33.276192, 19.600035>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.054783, 33.397137, 19.484953>,  <36.342152, 33.598709, 19.293150>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.054783, 33.397137, 19.484953> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020794, -0.704581, -0.709319,
		0.695299, -0.499617, 0.516663,
		-0.718419, -0.503933, 0.479506,
		35.839256, 33.245956, 19.628805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.588776, 32.884140, 19.222702>,  <36.342152, 33.598709, 19.293150>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.588776, 32.884140, 19.222702> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.198048, 32.854805, 19.303150>,  <35.963612, 32.837204, 19.351419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.198048, 32.854805, 19.303150>,  <36.588776, 32.884140, 19.222702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.198048, 32.854805, 19.303150> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083364, -0.735012, -0.672909,
		0.197175, -0.674076, 0.711859,
		-0.976817, -0.073337, 0.201120,
		35.905003, 32.832806, 19.363485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.457401, 32.200966, 19.422840>,  <36.588776, 32.884140, 19.222702>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.457401, 32.200966, 19.422840> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.105602, 32.348904, 19.303038>,  <35.894524, 32.437668, 19.231155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.105602, 32.348904, 19.303038>,  <36.457401, 32.200966, 19.422840>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.105602, 32.348904, 19.303038> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154423, -0.817061, -0.555485,
		-0.450158, -0.442295, 0.775714,
		-0.879494, 0.369845, -0.299506,
		35.841755, 32.459858, 19.213186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.020336, 31.653177, 19.516302>,  <36.457401, 32.200966, 19.422840>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.020336, 31.653177, 19.516302> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.865299, 31.913685, 19.255342>,  <35.772278, 32.069988, 19.098766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.865299, 31.913685, 19.255342>,  <36.020336, 31.653177, 19.516302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.865299, 31.913685, 19.255342> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055425, -0.689975, -0.721708,
		-0.920165, -0.315885, 0.231331,
		-0.387589, 0.651269, -0.652399,
		35.749023, 32.109066, 19.059624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.438690, 31.294708, 19.098225>,  <36.020336, 31.653177, 19.516302>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.438690, 31.294708, 19.098225> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.590797, 31.599747, 18.888903>,  <35.682060, 31.782770, 18.763309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.590797, 31.599747, 18.888903>,  <35.438690, 31.294708, 19.098225>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.590797, 31.599747, 18.888903> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066670, -0.541734, -0.837902,
		-0.922472, 0.353513, -0.155160,
		0.380265, 0.762596, -0.523303,
		35.704876, 31.828526, 18.731913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.987331, 30.767431, 18.715343>,  <35.438690, 31.294708, 19.098225>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.987331, 30.767431, 18.715343> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.778393, 30.430616, 18.769207>,  <34.653030, 30.228527, 18.801525>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.778393, 30.430616, 18.769207>,  <34.987331, 30.767431, 18.715343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.778393, 30.430616, 18.769207> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253383, 0.304044, 0.918343,
		-0.814220, 0.445571, -0.372173,
		-0.522344, -0.842036, 0.134658,
		34.621689, 30.178005, 18.809605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.361439, 30.912605, 19.112165>,  <34.987331, 30.767431, 18.715343>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.361439, 30.912605, 19.112165> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.365364, 30.518866, 19.182547>,  <34.367718, 30.282621, 19.224775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.365364, 30.518866, 19.182547>,  <34.361439, 30.912605, 19.112165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.365364, 30.518866, 19.182547> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393135, 0.157993, 0.905805,
		-0.919428, -0.078058, -0.385433,
		0.009810, -0.984350, 0.175951,
		34.368305, 30.223560, 19.235332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.699268, 30.801373, 19.462162>,  <34.361439, 30.912605, 19.112165>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.699268, 30.801373, 19.462162> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.909409, 30.469011, 19.535490>,  <34.035492, 30.269594, 19.579487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.909409, 30.469011, 19.535490>,  <33.699268, 30.801373, 19.462162>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.909409, 30.469011, 19.535490> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312537, 0.011951, 0.949831,
		-0.791407, -0.556290, -0.253409,
		0.525353, -0.830902, 0.183319,
		34.067013, 30.219740, 19.590487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.290813, 30.398014, 19.874166>,  <33.699268, 30.801373, 19.462162>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.290813, 30.398014, 19.874166> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.675709, 30.300901, 19.923416>,  <33.906647, 30.242634, 19.952967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.675709, 30.300901, 19.923416>,  <33.290813, 30.398014, 19.874166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.675709, 30.300901, 19.923416> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098384, 0.111568, 0.988875,
		-0.253819, -0.963643, 0.083468,
		0.962235, -0.242784, 0.123125,
		33.964378, 30.228065, 19.960354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.252392, 30.002319, 20.455906>,  <33.290813, 30.398014, 19.874166>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.252392, 30.002319, 20.455906> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.636608, 30.112234, 20.438725>,  <33.867138, 30.178183, 20.428415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.636608, 30.112234, 20.438725>,  <33.252392, 30.002319, 20.455906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.636608, 30.112234, 20.438725> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000952, 0.151187, 0.988505,
		0.278124, -0.949544, 0.144960,
		0.960545, 0.274789, -0.042952,
		33.924770, 30.194670, 20.425838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.667736, 29.537357, 20.894268>,  <33.252392, 30.002319, 20.455906>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.667736, 29.537357, 20.894268> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.874123, 29.879534, 20.876383>,  <33.997955, 30.084839, 20.865652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.874123, 29.879534, 20.876383>,  <33.667736, 29.537357, 20.894268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.874123, 29.879534, 20.876383> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066788, 0.092211, 0.993497,
		0.853999, -0.509629, 0.104711,
		0.515970, 0.855439, -0.044711,
		34.028915, 30.136166, 20.862970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.218781, 29.532022, 21.367332>,  <33.667736, 29.537357, 20.894268>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.218781, 29.532022, 21.367332> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.214577, 29.925514, 21.295597>,  <34.212055, 30.161610, 21.252556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.214577, 29.925514, 21.295597>,  <34.218781, 29.532022, 21.367332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.214577, 29.925514, 21.295597> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057126, 0.179644, 0.982072,
		0.998312, 0.000072, -0.058083,
		-0.010505, 0.983732, -0.179337,
		34.211426, 30.220634, 21.241796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.769932, 29.781294, 21.841070>,  <34.218781, 29.532022, 21.367332>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.769932, 29.781294, 21.841070> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.527214, 30.081882, 21.737457>,  <34.381584, 30.262236, 21.675289>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.527214, 30.081882, 21.737457>,  <34.769932, 29.781294, 21.841070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.527214, 30.081882, 21.737457> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208495, 0.464946, 0.860439,
		0.767030, 0.468100, -0.438802,
		-0.606791, 0.751471, -0.259031,
		34.345177, 30.307323, 21.659748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.486328, 29.887218, 22.071835>,  <34.769932, 29.781294, 21.841070>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.486328, 29.887218, 22.071835> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.498085, 29.566832, 22.311029>,  <35.505138, 29.374599, 22.454546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.498085, 29.566832, 22.311029>,  <35.486328, 29.887218, 22.071835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.498085, 29.566832, 22.311029> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106368, -0.597353, -0.794893,
		0.993892, -0.040244, -0.102754,
		0.029391, -0.800968, 0.597985,
		35.506901, 29.326542, 22.490425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.878090, 29.379589, 21.707140>,  <35.486328, 29.887218, 22.071835>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.878090, 29.379589, 21.707140> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.679070, 29.153471, 21.970314>,  <35.559658, 29.017799, 22.128220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.679070, 29.153471, 21.970314>,  <35.878090, 29.379589, 21.707140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.679070, 29.153471, 21.970314> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021136, -0.750361, -0.660691,
		0.867177, -0.342633, 0.361395,
		-0.497551, -0.565298, 0.657938,
		35.529804, 28.983881, 22.167696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.159691, 28.705561, 21.647877>,  <35.878090, 29.379589, 21.707140>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.159691, 28.705561, 21.647877> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.798370, 28.669191, 21.815578>,  <35.581577, 28.647369, 21.916201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.798370, 28.669191, 21.815578>,  <36.159691, 28.705561, 21.647877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.798370, 28.669191, 21.815578> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161315, -0.833573, -0.528331,
		0.397517, -0.544876, 0.738302,
		-0.903303, -0.090921, 0.419256,
		35.527378, 28.641914, 21.941355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.128155, 27.974836, 21.951984>,  <36.159691, 28.705561, 21.647877>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.128155, 27.974836, 21.951984> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.758850, 28.109482, 21.877934>,  <35.537266, 28.190269, 21.833502>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.758850, 28.109482, 21.877934>,  <36.128155, 27.974836, 21.951984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.758850, 28.109482, 21.877934> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164003, -0.781146, -0.602423,
		-0.347397, -0.525835, 0.776411,
		-0.923265, 0.336614, -0.185129,
		35.481869, 28.210466, 21.822395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.709988, 27.400677, 21.901072>,  <36.128155, 27.974836, 21.951984>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.709988, 27.400677, 21.901072> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.486103, 27.694933, 21.748466>,  <35.351772, 27.871487, 21.656902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.486103, 27.694933, 21.748466>,  <35.709988, 27.400677, 21.901072>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.486103, 27.694933, 21.748466> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223121, -0.577164, -0.785556,
		-0.798083, -0.354563, 0.487184,
		-0.559715, 0.735640, -0.381515,
		35.318188, 27.915625, 21.634012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.046898, 27.050518, 21.751659>,  <35.709988, 27.400677, 21.901072>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.046898, 27.050518, 21.751659> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.026890, 27.381775, 21.528349>,  <35.014885, 27.580530, 21.394361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.026890, 27.381775, 21.528349>,  <35.046898, 27.050518, 21.751659>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.026890, 27.381775, 21.528349> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185721, -0.556942, -0.809521,
		-0.981328, 0.063189, 0.181664,
		-0.050024, 0.828145, -0.558278,
		35.011883, 27.630219, 21.360865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.397663, 27.022093, 21.305483>,  <35.046898, 27.050518, 21.751659>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.397663, 27.022093, 21.305483> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.684994, 27.251017, 21.147257>,  <34.857391, 27.388371, 21.052320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.684994, 27.251017, 21.147257>,  <34.397663, 27.022093, 21.305483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.684994, 27.251017, 21.147257> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048872, -0.525667, -0.849285,
		-0.693989, 0.629394, -0.349630,
		0.718324, 0.572308, -0.395567,
		34.900490, 27.422709, 21.028587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.202026, 27.318745, 20.585348>,  <34.397663, 27.022093, 21.305483>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.202026, 27.318745, 20.585348> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.596718, 27.290890, 20.644035>,  <34.833530, 27.274178, 20.679247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.596718, 27.290890, 20.644035>,  <34.202026, 27.318745, 20.585348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.596718, 27.290890, 20.644035> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081884, -0.566853, -0.819739,
		0.140251, 0.820870, -0.553626,
		0.986724, -0.069637, 0.146718,
		34.892735, 27.269999, 20.688051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.641438, 27.595535, 19.994030>,  <34.202026, 27.318745, 20.585348>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.641438, 27.595535, 19.994030> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.807728, 27.300755, 20.207224>,  <34.907501, 27.123886, 20.335140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.807728, 27.300755, 20.207224>,  <34.641438, 27.595535, 19.994030>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.807728, 27.300755, 20.207224> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098157, -0.546248, -0.831852,
		0.904177, 0.398140, -0.154754,
		0.415728, -0.736951, 0.532985,
		34.932446, 27.079670, 20.367119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<33.578224, 35.745411, 33.950924> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.976921, 35.775459, 33.962635>,  <34.216141, 35.793488, 33.969662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.976921, 35.775459, 33.962635>,  <33.578224, 35.745411, 33.950924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.976921, 35.775459, 33.962635> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074628, -0.722210, -0.687636,
		-0.030516, 0.687582, -0.725465,
		0.996744, 0.075124, 0.029274,
		34.275944, 35.797997, 33.971416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.745365, 35.894321, 33.286175>,  <33.578224, 35.745411, 33.950924>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.745365, 35.894321, 33.286175> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.058197, 35.710892, 33.454967>,  <34.245895, 35.600834, 33.556244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.058197, 35.710892, 33.454967>,  <33.745365, 35.894321, 33.286175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.058197, 35.710892, 33.454967> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129784, -0.542444, -0.830007,
		0.609519, 0.703895, -0.364717,
		0.782076, -0.458571, 0.421984,
		34.292820, 35.573322, 33.581562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.294739, 36.101398, 32.808353>,  <33.745365, 35.894321, 33.286175>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.294739, 36.101398, 32.808353> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.426651, 35.778877, 33.004772>,  <34.505798, 35.585365, 33.122623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.426651, 35.778877, 33.004772>,  <34.294739, 36.101398, 32.808353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.426651, 35.778877, 33.004772> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320243, -0.393757, -0.861626,
		0.888081, 0.441403, 0.128358,
		0.329782, -0.806300, 0.491044,
		34.525585, 35.536987, 33.152084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.944462, 35.802483, 32.474033>,  <34.294739, 36.101398, 32.808353>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.944462, 35.802483, 32.474033> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.793472, 35.505257, 32.695072>,  <34.702877, 35.326920, 32.827698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.793472, 35.505257, 32.695072>,  <34.944462, 35.802483, 32.474033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.793472, 35.505257, 32.695072> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127696, -0.632817, -0.763699,
		0.917172, -0.217715, 0.333761,
		-0.377478, -0.743063, 0.552601,
		34.680229, 35.282337, 32.860851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.430027, 35.253471, 32.392246>,  <34.944462, 35.802483, 32.474033>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.430027, 35.253471, 32.392246> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.094032, 35.068802, 32.506279>,  <34.892433, 34.958000, 32.574699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.094032, 35.068802, 32.506279>,  <35.430027, 35.253471, 32.392246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.094032, 35.068802, 32.506279> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079457, -0.624402, -0.777051,
		0.536753, -0.630063, 0.561175,
		-0.839990, -0.461674, 0.285087,
		34.842037, 34.930298, 32.591805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.628944, 34.583588, 32.503410>,  <35.430027, 35.253471, 32.392246>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.628944, 34.583588, 32.503410> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.233604, 34.576618, 32.442924>,  <34.996403, 34.572437, 32.406631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.233604, 34.576618, 32.442924>,  <35.628944, 34.583588, 32.503410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.233604, 34.576618, 32.442924> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118512, -0.711520, -0.692600,
		-0.095525, -0.702450, 0.705294,
		-0.988347, -0.017425, -0.151217,
		34.937099, 34.571392, 32.397560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.551891, 33.855530, 32.326046>,  <35.628944, 34.583588, 32.503410>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.551891, 33.855530, 32.326046> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.199806, 34.006039, 32.210365>,  <34.988556, 34.096344, 32.140957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.199806, 34.006039, 32.210365>,  <35.551891, 33.855530, 32.326046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.199806, 34.006039, 32.210365> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078774, -0.716788, -0.692827,
		-0.467991, -0.587055, 0.660568,
		-0.880215, 0.376273, -0.289205,
		34.935741, 34.118919, 32.123604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.120560, 33.275074, 32.229675>,  <35.551891, 33.855530, 32.326046>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.120560, 33.275074, 32.229675> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.966961, 33.577007, 32.016972>,  <34.874802, 33.758167, 31.889349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.966961, 33.577007, 32.016972>,  <35.120560, 33.275074, 32.229675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.966961, 33.577007, 32.016972> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007382, -0.573389, -0.819250,
		-0.923305, -0.318516, 0.214607,
		-0.383997, 0.754833, -0.531764,
		34.851761, 33.803455, 31.857443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.616566, 32.974072, 31.881767>,  <35.120560, 33.275074, 32.229675>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.616566, 32.974072, 31.881767> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.685547, 33.316772, 31.687353>,  <34.726936, 33.522392, 31.570704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.685547, 33.316772, 31.687353>,  <34.616566, 32.974072, 31.881767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.685547, 33.316772, 31.687353> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067758, -0.502578, -0.861872,
		-0.982685, 0.115698, -0.144722,
		0.172451, 0.856755, -0.486036,
		34.737282, 33.573799, 31.541542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.276489, 32.831444, 31.317623>,  <34.616566, 32.974072, 31.881767>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.276489, 32.831444, 31.317623> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.470901, 33.161907, 31.203617>,  <34.587547, 33.360184, 31.135214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.470901, 33.161907, 31.203617>,  <34.276489, 32.831444, 31.317623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.470901, 33.161907, 31.203617> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094993, -0.374135, -0.922496,
		-0.868763, 0.421288, -0.260321,
		0.486032, 0.826159, -0.285015,
		34.616711, 33.409756, 31.118113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.924969, 33.066620, 30.754379>,  <34.276489, 32.831444, 31.317623>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.924969, 33.066620, 30.754379> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.305939, 33.185608, 30.727865>,  <34.534523, 33.257000, 30.711956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.305939, 33.185608, 30.727865>,  <33.924969, 33.066620, 30.754379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.305939, 33.185608, 30.727865> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039359, -0.335734, -0.941134,
		-0.302212, 0.893754, -0.331470,
		0.952428, 0.297468, -0.066285,
		34.591667, 33.274849, 30.707979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.890221, 33.410797, 30.142752>,  <33.924969, 33.066620, 30.754379>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.890221, 33.410797, 30.142752> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.267738, 33.309158, 30.227312>,  <34.494247, 33.248177, 30.278049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.267738, 33.309158, 30.227312>,  <33.890221, 33.410797, 30.142752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.267738, 33.309158, 30.227312> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076070, -0.455430, -0.887016,
		0.321666, 0.853240, -0.410502,
		0.943792, -0.254096, 0.211402,
		34.550877, 33.232929, 30.290733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.721321, 33.979225, 29.645416>,  <33.890221, 33.410797, 30.142752>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.721321, 33.979225, 29.645416> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.334507, 34.050167, 29.572323>,  <33.102421, 34.092731, 29.528467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.334507, 34.050167, 29.572323>,  <33.721321, 33.979225, 29.645416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.334507, 34.050167, 29.572323> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042880, 0.593928, 0.803375,
		0.251017, 0.784725, -0.566742,
		-0.967032, 0.177359, -0.182736,
		33.044395, 34.103374, 29.517502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.641788, 34.494919, 30.093433>,  <33.721321, 33.979225, 29.645416>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.641788, 34.494919, 30.093433> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.266254, 34.413303, 29.982464>,  <33.040936, 34.364334, 29.915882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.266254, 34.413303, 29.982464>,  <33.641788, 34.494919, 30.093433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.266254, 34.413303, 29.982464> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344250, 0.577776, 0.740045,
		0.009295, 0.790282, -0.612674,
		-0.938832, -0.204035, -0.277425,
		32.984604, 34.352093, 29.899237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.267235, 35.106956, 30.141880>,  <33.641788, 34.494919, 30.093433>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.267235, 35.106956, 30.141880> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.974907, 34.834503, 30.159639>,  <32.799511, 34.671032, 30.170296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.974907, 34.834503, 30.159639>,  <33.267235, 35.106956, 30.141880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.974907, 34.834503, 30.159639> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514041, 0.592001, 0.620722,
		-0.449076, 0.430811, -0.782772,
		-0.730816, -0.681128, 0.044399,
		32.755661, 34.630165, 30.172958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.662922, 35.509991, 29.988798>,  <33.267235, 35.106956, 30.141880>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.662922, 35.509991, 29.988798> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.548141, 35.169403, 30.164370>,  <32.479275, 34.965050, 30.269712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.548141, 35.169403, 30.164370>,  <32.662922, 35.509991, 29.988798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.548141, 35.169403, 30.164370> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520903, 0.523223, 0.674461,
		-0.803941, -0.035104, -0.593672,
		-0.286946, -0.851472, 0.438927,
		32.462059, 34.913963, 30.296047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.974438, 35.610573, 30.145515>,  <32.662922, 35.509991, 29.988798>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.974438, 35.610573, 30.145515> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.077778, 35.326714, 30.407707>,  <32.139782, 35.156399, 30.565022>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.077778, 35.326714, 30.407707>,  <31.974438, 35.610573, 30.145515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.077778, 35.326714, 30.407707> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358712, 0.559534, 0.747159,
		-0.896985, -0.428155, -0.110006,
		0.258348, -0.709651, 0.655478,
		32.155281, 35.113819, 30.604351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.388327, 35.553173, 30.690453>,  <31.974438, 35.610573, 30.145515>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.388327, 35.553173, 30.690453> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.713055, 35.393635, 30.861036>,  <31.907892, 35.297913, 30.963387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.713055, 35.393635, 30.861036>,  <31.388327, 35.553173, 30.690453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.713055, 35.393635, 30.861036> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285484, 0.365987, 0.885750,
		-0.509357, -0.840818, 0.183252,
		0.811822, -0.398847, 0.426457,
		31.956602, 35.273979, 30.988974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.163652, 35.422543, 31.265703>,  <31.388327, 35.553173, 30.690453>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.163652, 35.422543, 31.265703> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.557791, 35.432602, 31.333189>,  <31.794273, 35.438637, 31.373680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.557791, 35.432602, 31.333189>,  <31.163652, 35.422543, 31.265703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.557791, 35.432602, 31.333189> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161281, 0.459415, 0.873456,
		-0.055542, -0.887865, 0.456739,
		0.985344, 0.025150, 0.168713,
		31.853394, 35.440147, 31.383802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.150337, 35.367886, 31.905003>,  <31.163652, 35.422543, 31.265703>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.150337, 35.367886, 31.905003> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.523151, 35.496521, 31.838205>,  <31.746840, 35.573704, 31.798126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.523151, 35.496521, 31.838205>,  <31.150337, 35.367886, 31.905003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.523151, 35.496521, 31.838205> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080906, 0.633896, 0.769175,
		0.353214, -0.703389, 0.616833,
		0.932038, 0.321589, -0.166992,
		31.802763, 35.592999, 31.788107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.467047, 35.407806, 32.599743>,  <31.150337, 35.367886, 31.905003>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.467047, 35.407806, 32.599743> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.699343, 35.644398, 32.375996>,  <31.838720, 35.786350, 32.241745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.699343, 35.644398, 32.375996>,  <31.467047, 35.407806, 32.599743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.699343, 35.644398, 32.375996> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103274, 0.628038, 0.771300,
		0.807511, -0.505694, 0.303643,
		0.580741, 0.591474, -0.559372,
		31.873566, 35.821838, 32.208183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.024551, 35.708908, 33.046616>,  <31.467047, 35.407806, 32.599743>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.024551, 35.708908, 33.046616> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.062515, 35.938408, 32.721210>,  <32.085293, 36.076107, 32.525967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.062515, 35.938408, 32.721210>,  <32.024551, 35.708908, 33.046616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.062515, 35.938408, 32.721210> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047356, 0.813673, 0.579391,
		0.994359, -0.093514, 0.050053,
		0.094908, 0.573752, -0.813511,
		32.090988, 36.110535, 32.477158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.660431, 36.162838, 33.144070>,  <32.024551, 35.708908, 33.046616>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.660431, 36.162838, 33.144070> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.398834, 36.325687, 32.889027>,  <32.241875, 36.423397, 32.736000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.398834, 36.325687, 32.889027>,  <32.660431, 36.162838, 33.144070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.398834, 36.325687, 32.889027> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083844, 0.876651, 0.473765,
		0.751839, 0.256380, -0.607459,
		-0.653994, 0.407127, -0.637604,
		32.202637, 36.447826, 32.697746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.912468, 36.687061, 32.880974>,  <32.660431, 36.162838, 33.144070>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.912468, 36.687061, 32.880974> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.536686, 36.801495, 32.805511>,  <32.311218, 36.870155, 32.760235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.536686, 36.801495, 32.805511>,  <32.912468, 36.687061, 32.880974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.536686, 36.801495, 32.805511> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183493, 0.884890, 0.428135,
		0.289418, 0.367596, -0.883805,
		-0.939451, 0.286082, -0.188652,
		32.254852, 36.887318, 32.748917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.973103, 37.329067, 32.755402>,  <32.912468, 36.687061, 32.880974>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.973103, 37.329067, 32.755402> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.583698, 37.308979, 32.844631>,  <32.350056, 37.296925, 32.898167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.583698, 37.308979, 32.844631>,  <32.973103, 37.329067, 32.755402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.583698, 37.308979, 32.844631> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108337, 0.757820, 0.643407,
		-0.201360, 0.650528, -0.732303,
		-0.973508, -0.050221, 0.223071,
		32.291645, 37.293911, 32.911552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.736965, 37.964333, 32.635174>,  <32.973103, 37.329067, 32.755402>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.736965, 37.964333, 32.635174> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.460926, 37.801880, 32.874783>,  <32.295303, 37.704407, 33.018547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.460926, 37.801880, 32.874783>,  <32.736965, 37.964333, 32.635174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.460926, 37.801880, 32.874783> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042555, 0.803491, 0.593794,
		-0.722466, 0.435266, -0.537202,
		-0.690095, -0.406136, 0.599018,
		32.253899, 37.680038, 33.054489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.129383, 38.401592, 32.770496>,  <32.736965, 37.964333, 32.635174>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.129383, 38.401592, 32.770496> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.220219, 38.168339, 33.082493>,  <32.274719, 38.028389, 33.269691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.220219, 38.168339, 33.082493>,  <32.129383, 38.401592, 32.770496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.220219, 38.168339, 33.082493> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095471, 0.810390, 0.578061,
		-0.969183, -0.056804, 0.239702,
		0.227088, -0.583131, 0.779993,
		32.288345, 37.993401, 33.316490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.503231, 38.738270, 32.327026>,  <32.129383, 38.401592, 32.770496>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.503231, 38.738270, 32.327026> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.748127, 39.004913, 32.156948>,  <32.895065, 39.164902, 32.054901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.748127, 39.004913, 32.156948>,  <32.503231, 38.738270, 32.327026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.748127, 39.004913, 32.156948> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399798, -0.724955, -0.560893,
		-0.682146, 0.173409, -0.710357,
		0.612241, 0.666610, -0.425196,
		32.931801, 39.204895, 32.029388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.481201, 38.974751, 31.684202>,  <32.503231, 38.738270, 32.327026>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.481201, 38.974751, 31.684202> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.880398, 39.000080, 31.685534>,  <33.119915, 39.015278, 31.686333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.880398, 39.000080, 31.685534>,  <32.481201, 38.974751, 31.684202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.880398, 39.000080, 31.685534> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042369, -0.626813, -0.778017,
		-0.047181, 0.776592, -0.628235,
		0.997987, 0.063326, 0.003330,
		33.179794, 39.019077, 31.686533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.716629, 39.041393, 30.929411>,  <32.481201, 38.974751, 31.684202>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.716629, 39.041393, 30.929411> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.041340, 38.910000, 31.122540>,  <33.236164, 38.831161, 31.238417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.041340, 38.910000, 31.122540>,  <32.716629, 39.041393, 30.929411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.041340, 38.910000, 31.122540> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211674, -0.605052, -0.767533,
		0.544256, 0.725265, -0.421634,
		0.811775, -0.328486, 0.482823,
		33.284874, 38.811455, 31.267385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.301647, 39.098667, 30.500483>,  <32.716629, 39.041393, 30.929411>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.301647, 39.098667, 30.500483> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.417564, 38.808704, 30.750456>,  <33.487114, 38.634727, 30.900440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.417564, 38.808704, 30.750456>,  <33.301647, 39.098667, 30.500483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.417564, 38.808704, 30.750456> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371266, -0.516680, -0.771494,
		0.882148, 0.455586, 0.119403,
		0.289789, -0.724902, 0.624931,
		33.504501, 38.591232, 30.937935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.082218, 38.872227, 30.227165>,  <33.301647, 39.098667, 30.500483>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.082218, 38.872227, 30.227165> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.905663, 38.583485, 30.440369>,  <33.799728, 38.410240, 30.568291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.905663, 38.583485, 30.440369>,  <34.082218, 38.872227, 30.227165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.905663, 38.583485, 30.440369> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211776, -0.661028, -0.719857,
		0.871967, -0.204858, 0.444642,
		-0.441389, -0.721856, 0.533010,
		33.773247, 38.366928, 30.600271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.514603, 38.321510, 30.247990>,  <34.082218, 38.872227, 30.227165>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.514603, 38.321510, 30.247990> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.177288, 38.137280, 30.358795>,  <33.974899, 38.026741, 30.425278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.177288, 38.137280, 30.358795>,  <34.514603, 38.321510, 30.247990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.177288, 38.137280, 30.358795> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166547, -0.713970, -0.680081,
		0.511008, -0.527367, 0.678789,
		-0.843287, -0.460577, 0.277013,
		33.924301, 37.999107, 30.441898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.672035, 37.609772, 30.101009>,  <34.514603, 38.321510, 30.247990>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.672035, 37.609772, 30.101009> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.273655, 37.624798, 30.133684>,  <34.034626, 37.633816, 30.153290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.273655, 37.624798, 30.133684>,  <34.672035, 37.609772, 30.101009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.273655, 37.624798, 30.133684> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086040, -0.662003, -0.744546,
		0.026106, -0.748559, 0.662554,
		-0.995950, 0.037569, 0.081689,
		33.974869, 37.636070, 30.158190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.394970, 36.890514, 30.227530>,  <34.672035, 37.609772, 30.101009>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.394970, 36.890514, 30.227530> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.118423, 37.116905, 30.047894>,  <33.952496, 37.252739, 29.940111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.118423, 37.116905, 30.047894>,  <34.394970, 36.890514, 30.227530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.118423, 37.116905, 30.047894> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112798, -0.698508, -0.706656,
		-0.713647, -0.437900, 0.546765,
		-0.691364, 0.565977, -0.449094,
		33.911015, 37.286697, 29.913166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.854279, 36.508907, 29.928415>,  <34.394970, 36.890514, 30.227530>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.854279, 36.508907, 29.928415> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.807884, 36.841019, 29.710356>,  <33.780048, 37.040287, 29.579521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.807884, 36.841019, 29.710356>,  <33.854279, 36.508907, 29.928415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.807884, 36.841019, 29.710356> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039123, -0.552245, -0.832763,
		-0.992480, -0.075260, 0.096535,
		-0.115985, 0.830278, -0.545148,
		33.773090, 37.090103, 29.546812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.383049, 36.346832, 29.378075>,  <33.854279, 36.508907, 29.928415>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.383049, 36.346832, 29.378075> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.587345, 36.673130, 29.269485>,  <33.709923, 36.868908, 29.204332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.587345, 36.673130, 29.269485>,  <33.383049, 36.346832, 29.378075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.587345, 36.673130, 29.269485> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091879, -0.365748, -0.926168,
		-0.854809, 0.448092, -0.261754,
		0.510744, 0.815746, -0.271475,
		33.740570, 36.917854, 29.188044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.149235, 36.488209, 28.780914>,  <33.383049, 36.346832, 29.378075>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.149235, 36.488209, 28.780914> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.477669, 36.716415, 28.773642>,  <33.674728, 36.853340, 28.769278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.477669, 36.716415, 28.773642>,  <33.149235, 36.488209, 28.780914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.477669, 36.716415, 28.773642> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170076, -0.274932, -0.946302,
		-0.544877, 0.773903, -0.322774,
		0.821087, 0.570514, -0.018182,
		33.723995, 36.887569, 28.768187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.977741, 36.938030, 28.227383>,  <33.149235, 36.488209, 28.780914>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.977741, 36.938030, 28.227383> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.372730, 36.916935, 28.286869>,  <33.609722, 36.904278, 28.322561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.372730, 36.916935, 28.286869>,  <32.977741, 36.938030, 28.227383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.372730, 36.916935, 28.286869> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130591, -0.255876, -0.957849,
		0.088567, 0.965270, -0.245783,
		0.987473, -0.052737, 0.148717,
		33.668972, 36.901115, 28.331484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.257698, 37.130695, 27.572327>,  <32.977741, 36.938030, 28.227383>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.257698, 37.130695, 27.572327> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.578575, 36.965378, 27.744690>,  <33.771103, 36.866188, 27.848108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.578575, 36.965378, 27.744690>,  <33.257698, 37.130695, 27.572327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.578575, 36.965378, 27.744690> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288071, -0.364240, -0.885632,
		0.522977, 0.834578, -0.173133,
		0.802191, -0.413290, 0.430907,
		33.819233, 36.841393, 27.873962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.885143, 37.266663, 27.192799>,  <33.257698, 37.130695, 27.572327>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.885143, 37.266663, 27.192799> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.031464, 36.959881, 27.403690>,  <34.119255, 36.775810, 27.530226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.031464, 36.959881, 27.403690>,  <33.885143, 37.266663, 27.192799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.031464, 36.959881, 27.403690> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409712, -0.375940, -0.831147,
		0.835658, 0.520048, 0.176710,
		0.365804, -0.766954, 0.527227,
		34.141205, 36.729794, 27.561859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.698578, 37.203587, 27.183350>,  <33.885143, 37.266663, 27.192799>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.698578, 37.203587, 27.183350> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.519115, 36.853943, 27.257793>,  <34.411438, 36.644157, 27.302460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.519115, 36.853943, 27.257793>,  <34.698578, 37.203587, 27.183350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.519115, 36.853943, 27.257793> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629190, -0.456832, -0.628828,
		0.634686, -0.165030, 0.754943,
		-0.448658, -0.874111, 0.186110,
		34.384518, 36.591709, 27.313627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.223991, 36.716698, 27.307631>,  <34.698578, 37.203587, 27.183350>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.223991, 36.716698, 27.307631> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.920918, 36.492981, 27.173105>,  <34.739071, 36.358753, 27.092390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.920918, 36.492981, 27.173105>,  <35.223991, 36.716698, 27.307631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.920918, 36.492981, 27.173105> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589476, -0.365379, -0.720428,
		0.280045, -0.744107, 0.606530,
		-0.757689, -0.559287, -0.336311,
		34.693611, 36.325195, 27.072212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.542259, 36.079361, 26.954472>,  <35.223991, 36.716698, 27.307631>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.542259, 36.079361, 26.954472> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.162697, 36.062435, 26.829393>,  <34.934959, 36.052280, 26.754347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.162697, 36.062435, 26.829393>,  <35.542259, 36.079361, 26.954472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.162697, 36.062435, 26.829393> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299478, -0.432961, -0.850210,
		-0.099407, -0.900419, 0.423515,
		-0.948910, -0.042316, -0.312695,
		34.878025, 36.049740, 26.735584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.442165, 35.385796, 26.635567>,  <35.542259, 36.079361, 26.954472>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.442165, 35.385796, 26.635567> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.132862, 35.598412, 26.497271>,  <34.947281, 35.725983, 26.414293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.132862, 35.598412, 26.497271>,  <35.442165, 35.385796, 26.635567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.132862, 35.598412, 26.497271> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021923, -0.522516, -0.852348,
		-0.633717, -0.666661, 0.392385,
		-0.773255, 0.531545, -0.345742,
		34.900887, 35.757874, 26.393549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.999512, 34.903629, 26.279751>,  <35.442165, 35.385796, 26.635567>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.999512, 34.903629, 26.279751> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.914928, 35.265186, 26.131016>,  <34.864178, 35.482121, 26.041775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.914928, 35.265186, 26.131016>,  <34.999512, 34.903629, 26.279751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.914928, 35.265186, 26.131016> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103583, -0.357573, -0.928123,
		-0.971883, -0.234772, -0.018017,
		-0.211455, 0.903893, -0.371838,
		34.851494, 35.536354, 26.019464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.574020, 34.775024, 25.682539>,  <34.999512, 34.903629, 26.279751>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.574020, 34.775024, 25.682539> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.692211, 35.149326, 25.605541>,  <34.763126, 35.373909, 25.559343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.692211, 35.149326, 25.605541>,  <34.574020, 34.775024, 25.682539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.692211, 35.149326, 25.605541> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157422, -0.246424, -0.956291,
		-0.942292, 0.252256, -0.220121,
		0.295474, 0.935757, -0.192493,
		34.780853, 35.430054, 25.547792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.241467, 34.923405, 25.105822>,  <34.574020, 34.775024, 25.682539>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.241467, 34.923405, 25.105822> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.526474, 35.204060, 25.104004>,  <34.697479, 35.372452, 25.102913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.526474, 35.204060, 25.104004>,  <34.241467, 34.923405, 25.105822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.526474, 35.204060, 25.104004> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114319, -0.122476, -0.985865,
		-0.692274, 0.701932, -0.167477,
		0.712523, 0.701635, -0.004542,
		34.740231, 35.414551, 25.102642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.121029, 35.223343, 24.521568>,  <34.241467, 34.923405, 25.105822>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.121029, 35.223343, 24.521568> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.500744, 35.306255, 24.616135>,  <34.728573, 35.356003, 24.672874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.500744, 35.306255, 24.616135>,  <34.121029, 35.223343, 24.521568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.500744, 35.306255, 24.616135> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281848, -0.227729, -0.932042,
		-0.139351, 0.951407, -0.274600,
		0.949286, 0.207276, 0.236418,
		34.785530, 35.368439, 24.687059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.336296, 35.804253, 24.017370>,  <34.121029, 35.223343, 24.521568>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.336296, 35.804253, 24.017370> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.689182, 35.654850, 24.132040>,  <34.900913, 35.565208, 24.200842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.689182, 35.654850, 24.132040>,  <34.336296, 35.804253, 24.017370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.689182, 35.654850, 24.132040> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265772, -0.107550, -0.958018,
		0.388656, 0.921373, 0.004385,
		0.882220, -0.373504, 0.286675,
		34.953850, 35.542797, 24.218042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.786469, 36.169430, 23.635538>,  <34.336296, 35.804253, 24.017370>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.786469, 36.169430, 23.635538> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.960640, 35.830048, 23.755886>,  <35.065144, 35.626419, 23.828094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.960640, 35.830048, 23.755886>,  <34.786469, 36.169430, 23.635538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.960640, 35.830048, 23.755886> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285108, -0.187041, -0.940069,
		0.853885, 0.495109, 0.160460,
		0.435424, -0.848459, 0.300871,
		35.091267, 35.575508, 23.846148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.509701, 36.097927, 23.341509>,  <34.786469, 36.169430, 23.635538>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.509701, 36.097927, 23.341509> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.418182, 35.723488, 23.448366>,  <35.363270, 35.498825, 23.512480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.418182, 35.723488, 23.448366>,  <35.509701, 36.097927, 23.341509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.418182, 35.723488, 23.448366> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425031, -0.342943, -0.837699,
		0.875786, -0.078119, 0.476336,
		-0.228797, -0.936102, 0.267142,
		35.349545, 35.442657, 23.528509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.025330, 35.706257, 23.192455>,  <35.509701, 36.097927, 23.341509>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.025330, 35.706257, 23.192455> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.738132, 35.430626, 23.231750>,  <35.565815, 35.265247, 23.255327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.738132, 35.430626, 23.231750>,  <36.025330, 35.706257, 23.192455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.738132, 35.430626, 23.231750> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337465, -0.468061, -0.816723,
		0.608767, -0.553254, 0.568607,
		-0.717997, -0.689079, 0.098236,
		35.522732, 35.223904, 23.261221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.382484, 35.028027, 23.048361>,  <36.025330, 35.706257, 23.192455>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.382484, 35.028027, 23.048361> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.990631, 34.994793, 22.975245>,  <35.755520, 34.974854, 22.931374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.990631, 34.994793, 22.975245>,  <36.382484, 35.028027, 23.048361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.990631, 34.994793, 22.975245> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200722, -0.428463, -0.880983,
		-0.005125, -0.899732, 0.436414,
		-0.979635, -0.083083, -0.182792,
		35.696739, 34.969868, 22.920406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.824574, 34.485996, 23.377150>,  <36.382484, 35.028027, 23.048361>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.824574, 34.485996, 23.377150> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.222904, 34.520916, 23.366505>,  <37.461903, 34.541870, 23.360117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.222904, 34.520916, 23.366505>,  <36.824574, 34.485996, 23.377150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.222904, 34.520916, 23.366505> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006906, 0.218681, 0.975772,
		0.091004, -0.971884, 0.217165,
		0.995826, 0.087299, -0.026613,
		37.521652, 34.547108, 23.358521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.112278, 34.055981, 23.881853>,  <36.824574, 34.485996, 23.377150>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.112278, 34.055981, 23.881853> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.384548, 34.347031, 23.847816>,  <37.547909, 34.521660, 23.827394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.384548, 34.347031, 23.847816>,  <37.112278, 34.055981, 23.881853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.384548, 34.347031, 23.847816> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163444, 0.264061, 0.950557,
		0.714121, -0.633111, 0.298666,
		0.680674, 0.727628, -0.085094,
		37.588749, 34.565319, 23.822289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.389824, 33.991673, 24.576437>,  <37.112278, 34.055981, 23.881853>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.389824, 33.991673, 24.576437> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.544136, 34.331512, 24.432570>,  <37.636723, 34.535416, 24.346249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.544136, 34.331512, 24.432570>,  <37.389824, 33.991673, 24.576437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.544136, 34.331512, 24.432570> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076732, 0.358950, 0.930197,
		0.919395, -0.386448, 0.073284,
		0.385778, 0.849596, -0.359670,
		37.659870, 34.586391, 24.324669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.013718, 34.076012, 24.991648>,  <37.389824, 33.991673, 24.576437>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.013718, 34.076012, 24.991648> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.898750, 34.432510, 24.851324>,  <37.829769, 34.646412, 24.767130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.898750, 34.432510, 24.851324>,  <38.013718, 34.076012, 24.991648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.898750, 34.432510, 24.851324> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056640, 0.349808, 0.935108,
		0.956129, 0.288636, -0.050060,
		-0.287417, 0.891249, -0.350810,
		37.812527, 34.699886, 24.746080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.580288, 34.486019, 25.151854>,  <38.013718, 34.076012, 24.991648>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.580288, 34.486019, 25.151854> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.278095, 34.740631, 25.089771>,  <38.096779, 34.893398, 25.052523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.278095, 34.740631, 25.089771>,  <38.580288, 34.486019, 25.151854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.278095, 34.740631, 25.089771> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135092, 0.383138, 0.913759,
		0.641096, 0.669357, -0.375442,
		-0.755477, 0.636526, -0.155204,
		38.051453, 34.931587, 25.043211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <70.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <70.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 70.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 70.000000>,  <70.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 0.000000>,  <0.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 0.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 0.000000, 70.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 70.000000, 0.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
