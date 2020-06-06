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
	<24.056717, 34.573566, 35.195999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.323671, 34.869102, 35.158669>,  <24.483843, 35.046425, 35.136272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.323671, 34.869102, 35.158669>,  <24.056717, 34.573566, 35.195999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.323671, 34.869102, 35.158669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001729, 0.126852, 0.991920,
		0.744711, -0.661831, 0.085937,
		0.667385, 0.738842, -0.093324,
		24.523888, 35.090755, 35.130672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.572046, 34.503647, 35.694916>,  <24.056717, 34.573566, 35.195999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.572046, 34.503647, 35.694916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.583189, 34.896393, 35.619900>,  <24.589874, 35.132038, 35.574890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.583189, 34.896393, 35.619900>,  <24.572046, 34.503647, 35.694916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.583189, 34.896393, 35.619900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277538, 0.172638, 0.945076,
		0.960311, -0.078376, -0.267694,
		0.027858, 0.981862, -0.187538,
		24.591547, 35.190952, 35.563637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.212057, 34.980068, 35.575714>,  <24.572046, 34.503647, 35.694916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.212057, 34.980068, 35.575714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.931059, 35.196991, 35.760063>,  <24.762461, 35.327145, 35.870674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.931059, 35.196991, 35.760063>,  <25.212057, 34.980068, 35.575714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.931059, 35.196991, 35.760063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397580, -0.238063, 0.886147,
		0.590280, 0.805748, -0.048372,
		-0.702496, 0.542306, 0.460873,
		24.720310, 35.359684, 35.898327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.413343, 35.533951, 36.015789>,  <25.212057, 34.980068, 35.575714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.413343, 35.533951, 36.015789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.069561, 35.391693, 36.162678>,  <24.863293, 35.306339, 36.250813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.069561, 35.391693, 36.162678>,  <25.413343, 35.533951, 36.015789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.069561, 35.391693, 36.162678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495719, -0.404294, 0.768641,
		-0.124901, 0.842651, 0.523774,
		-0.859455, -0.355649, 0.367221,
		24.811724, 35.285000, 36.272842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.560003, 35.012016, 36.542469>,  <25.413343, 35.533951, 36.015789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.560003, 35.012016, 36.542469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.165308, 34.984978, 36.601498>,  <24.928492, 34.968754, 36.636917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.165308, 34.984978, 36.601498>,  <25.560003, 35.012016, 36.542469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.165308, 34.984978, 36.601498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161872, -0.477284, 0.863712,
		0.012049, 0.876145, 0.481896,
		-0.986738, -0.067599, 0.147574,
		24.869286, 34.964699, 36.645771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.358479, 35.325977, 37.244247>,  <25.560003, 35.012016, 36.542469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.358479, 35.325977, 37.244247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.104347, 35.044037, 37.118050>,  <24.951868, 34.874874, 37.042332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.104347, 35.044037, 37.118050>,  <25.358479, 35.325977, 37.244247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.104347, 35.044037, 37.118050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011853, -0.399601, 0.916612,
		-0.772149, 0.586091, 0.245525,
		-0.635331, -0.704852, -0.315498,
		24.913748, 34.832581, 37.023399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.515995, 35.469971, 37.886131>,  <25.358479, 35.325977, 37.244247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.515995, 35.469971, 37.886131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.439968, 35.792995, 38.109459>,  <25.394352, 35.986809, 38.243454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.439968, 35.792995, 38.109459>,  <25.515995, 35.469971, 37.886131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.439968, 35.792995, 38.109459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711480, 0.278566, -0.645133,
		-0.676513, -0.519851, 0.521618,
		-0.190068, 0.807562, 0.558317,
		25.382948, 36.035263, 38.276955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.803898, 35.593109, 37.866776>,  <25.515995, 35.469971, 37.886131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.803898, 35.593109, 37.866776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.000931, 35.936745, 37.922382>,  <25.119150, 36.142925, 37.955746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.000931, 35.936745, 37.922382>,  <24.803898, 35.593109, 37.866776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.000931, 35.936745, 37.922382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611646, 0.455388, -0.646924,
		-0.619075, 0.233631, 0.749775,
		0.492581, 0.859091, 0.139020,
		25.148705, 36.194473, 37.964088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.297136, 36.097759, 38.114979>,  <24.803898, 35.593109, 37.866776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.297136, 36.097759, 38.114979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.596342, 36.292030, 37.934052>,  <24.775866, 36.408592, 37.825497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.596342, 36.292030, 37.934052>,  <24.297136, 36.097759, 38.114979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.596342, 36.292030, 37.934052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657193, 0.637104, -0.402735,
		0.092575, 0.598512, 0.795746,
		0.748016, 0.485676, -0.452318,
		24.820747, 36.437733, 37.798355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.085665, 36.726772, 38.155514>,  <24.297136, 36.097759, 38.114979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.085665, 36.726772, 38.155514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.343042, 36.711243, 37.849709>,  <24.497469, 36.701923, 37.666225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.343042, 36.711243, 37.849709>,  <24.085665, 36.726772, 38.155514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.343042, 36.711243, 37.849709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492771, 0.743260, -0.452484,
		0.585796, 0.667875, 0.459114,
		0.643443, -0.038825, -0.764508,
		24.536076, 36.699596, 37.620358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.276743, 37.539085, 38.016037>,  <24.085665, 36.726772, 38.155514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.276743, 37.539085, 38.016037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.323902, 37.308525, 37.692589>,  <24.352198, 37.170189, 37.498520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.323902, 37.308525, 37.692589>,  <24.276743, 37.539085, 38.016037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.323902, 37.308525, 37.692589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465564, 0.687175, -0.557710,
		0.877127, 0.442216, -0.187335,
		0.117896, -0.576399, -0.808619,
		24.359270, 37.135605, 37.450005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.494799, 38.003479, 37.461895>,  <24.276743, 37.539085, 38.016037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.494799, 38.003479, 37.461895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.338257, 37.675133, 37.295509>,  <24.244331, 37.478127, 37.195679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.338257, 37.675133, 37.295509>,  <24.494799, 38.003479, 37.461895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.338257, 37.675133, 37.295509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498052, 0.569024, -0.654337,
		0.773813, -0.048907, -0.631523,
		-0.391353, -0.820865, -0.415960,
		24.220850, 37.428875, 37.170723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.597879, 37.885742, 36.778080>,  <24.494799, 38.003479, 37.461895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.597879, 37.885742, 36.778080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.265059, 37.664845, 36.798927>,  <24.065365, 37.532307, 36.811436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.265059, 37.664845, 36.798927>,  <24.597879, 37.885742, 36.778080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.265059, 37.664845, 36.798927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314519, 0.392300, -0.864395,
		0.456911, -0.735613, -0.500106,
		-0.832051, -0.552245, 0.052118,
		24.015442, 37.499172, 36.814564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.454447, 37.280819, 36.191677>,  <24.597879, 37.885742, 36.778080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.454447, 37.280819, 36.191677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.154186, 37.473503, 36.372555>,  <23.974030, 37.589115, 36.481083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.154186, 37.473503, 36.372555>,  <24.454447, 37.280819, 36.191677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.154186, 37.473503, 36.372555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368678, 0.262556, -0.891707,
		-0.548271, -0.836073, -0.019492,
		-0.750650, 0.481711, 0.452193,
		23.928991, 37.618015, 36.508213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.103325, 36.963413, 35.608437>,  <24.454447, 37.280819, 36.191677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.103325, 36.963413, 35.608437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.122452, 37.322887, 35.434048>,  <24.133928, 37.538574, 35.329414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.122452, 37.322887, 35.434048>,  <24.103325, 36.963413, 35.608437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.122452, 37.322887, 35.434048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825524, 0.281280, 0.489276,
		0.562338, 0.336510, 0.755339,
		0.047816, 0.898689, -0.435972,
		24.136797, 37.592495, 35.303257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.115398, 36.351585, 36.250057>,  <24.103325, 36.963413, 35.608437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.115398, 36.351585, 36.250057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.177855, 36.688572, 36.456310>,  <24.215328, 36.890762, 36.580063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.177855, 36.688572, 36.456310>,  <24.115398, 36.351585, 36.250057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.177855, 36.688572, 36.456310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660605, -0.477165, 0.579582,
		0.734317, 0.250131, -0.631041,
		0.156139, 0.842465, 0.515628,
		24.224697, 36.941311, 36.611000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.810163, 36.467037, 36.399109>,  <24.115398, 36.351585, 36.250057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.810163, 36.467037, 36.399109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.662687, 36.671242, 36.709835>,  <24.574202, 36.793766, 36.896271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.662687, 36.671242, 36.709835>,  <24.810163, 36.467037, 36.399109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.662687, 36.671242, 36.709835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626889, -0.480490, 0.613303,
		0.686352, 0.713095, -0.142884,
		-0.368689, 0.510514, 0.776817,
		24.552080, 36.824394, 36.942879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.439913, 36.763622, 36.710114>,  <24.810163, 36.467037, 36.399109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.439913, 36.763622, 36.710114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.165718, 36.777504, 37.001015>,  <25.001202, 36.785835, 37.175556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.165718, 36.777504, 37.001015>,  <25.439913, 36.763622, 36.710114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.165718, 36.777504, 37.001015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686448, -0.302130, 0.661442,
		0.242683, 0.952635, 0.183282,
		-0.685488, 0.034707, 0.727256,
		24.960072, 36.787914, 37.219193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.687290, 37.145939, 37.184132>,  <25.439913, 36.763622, 36.710114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.687290, 37.145939, 37.184132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.418596, 36.965279, 37.419006>,  <25.257380, 36.856880, 37.559929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.418596, 36.965279, 37.419006>,  <25.687290, 37.145939, 37.184132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.418596, 36.965279, 37.419006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736488, -0.321844, 0.594980,
		-0.079743, 0.832122, 0.548830,
		-0.671733, -0.451652, 0.587183,
		25.217075, 36.829784, 37.595161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.816790, 37.333923, 37.918358>,  <25.687290, 37.145939, 37.184132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.816790, 37.333923, 37.918358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.611763, 36.990841, 37.934422>,  <25.488747, 36.784992, 37.944061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.611763, 36.990841, 37.934422>,  <25.816790, 37.333923, 37.918358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.611763, 36.990841, 37.934422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670315, -0.370476, 0.642982,
		-0.536612, 0.356491, 0.764828,
		-0.512567, -0.857707, 0.040159,
		25.457993, 36.733528, 37.946468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.759285, 37.075760, 38.725277>,  <25.816790, 37.333923, 37.918358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.759285, 37.075760, 38.725277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.768122, 36.800785, 38.434914>,  <25.773424, 36.635799, 38.260696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.768122, 36.800785, 38.434914>,  <25.759285, 37.075760, 38.725277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.768122, 36.800785, 38.434914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811231, -0.412037, 0.414886,
		-0.584309, -0.598045, 0.548567,
		0.022090, -0.687436, -0.725909,
		25.774748, 36.594555, 38.217140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.877193, 36.363876, 39.057892>,  <25.759285, 37.075760, 38.725277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.877193, 36.363876, 39.057892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.035177, 36.348347, 38.690742>,  <26.129969, 36.339031, 38.470451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.035177, 36.348347, 38.690742>,  <25.877193, 36.363876, 39.057892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.035177, 36.348347, 38.690742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741143, -0.576926, 0.343313,
		-0.542874, -0.815874, -0.199094,
		0.394962, -0.038819, -0.917877,
		26.153666, 36.336700, 38.415379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.206406, 35.645432, 38.952839>,  <25.877193, 36.363876, 39.057892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.206406, 35.645432, 38.952839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.384388, 35.905594, 38.706593>,  <26.491179, 36.061691, 38.558846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.384388, 35.905594, 38.706593>,  <26.206406, 35.645432, 38.952839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.384388, 35.905594, 38.706593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875789, -0.459642, 0.147388,
		-0.187100, -0.604731, -0.774141,
		0.444958, 0.650407, -0.615616,
		26.517876, 36.100716, 38.521908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.884518, 35.375099, 38.869564>,  <26.206406, 35.645432, 38.952839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.884518, 35.375099, 38.869564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.881313, 35.654766, 38.583599>,  <26.879391, 35.822567, 38.412018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.881313, 35.654766, 38.583599>,  <26.884518, 35.375099, 38.869564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.881313, 35.654766, 38.583599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954175, -0.208529, -0.214628,
		-0.299141, -0.683876, -0.665454,
		-0.008013, 0.699164, -0.714917,
		26.878910, 35.864513, 38.369125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.927057, 35.073994, 38.161995>,  <26.884518, 35.375099, 38.869564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.927057, 35.073994, 38.161995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.085178, 35.437584, 38.214901>,  <27.180052, 35.655739, 38.246643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.085178, 35.437584, 38.214901>,  <26.927057, 35.073994, 38.161995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.085178, 35.437584, 38.214901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855537, -0.311933, -0.413225,
		-0.334355, 0.276508, -0.900972,
		0.395302, 0.908978, 0.132266,
		27.203770, 35.710278, 38.254581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.076847, 35.240116, 37.505104>,  <26.927057, 35.073994, 38.161995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.076847, 35.240116, 37.505104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.326979, 35.415829, 37.763096>,  <27.477058, 35.521255, 37.917892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.326979, 35.415829, 37.763096>,  <27.076847, 35.240116, 37.505104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.326979, 35.415829, 37.763096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748840, -0.105249, -0.654341,
		-0.219553, 0.892165, -0.394764,
		0.625328, 0.439277, 0.644981,
		27.514578, 35.547611, 37.956589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.407846, 35.926548, 37.328686>,  <27.076847, 35.240116, 37.505104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.407846, 35.926548, 37.328686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.631737, 35.675404, 37.545017>,  <27.766071, 35.524715, 37.674816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.631737, 35.675404, 37.545017>,  <27.407846, 35.926548, 37.328686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.631737, 35.675404, 37.545017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779078, 0.176306, -0.601625,
		0.282388, 0.758091, 0.587839,
		0.559727, -0.627864, 0.540826,
		27.799654, 35.487045, 37.707264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.877764, 36.218090, 37.810909>,  <27.407846, 35.926548, 37.328686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.877764, 36.218090, 37.810909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.010012, 35.866673, 37.673012>,  <28.089361, 35.655823, 37.590275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.010012, 35.866673, 37.673012>,  <27.877764, 36.218090, 37.810909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.010012, 35.866673, 37.673012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601049, 0.477634, -0.640786,
		0.727620, 0.004651, 0.685965,
		0.330620, -0.878547, -0.344740,
		28.109198, 35.603107, 37.569592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.697813, 36.186596, 37.843754>,  <27.877764, 36.218090, 37.810909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.697813, 36.186596, 37.843754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.509445, 35.974682, 37.561600>,  <28.396423, 35.847534, 37.392307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.509445, 35.974682, 37.561600>,  <28.697813, 36.186596, 37.843754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.509445, 35.974682, 37.561600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579865, 0.416694, -0.700088,
		0.664823, -0.738712, 0.110972,
		-0.470922, -0.529784, -0.705381,
		28.368168, 35.815746, 37.349987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.154905, 35.821262, 37.416523>,  <28.697813, 36.186596, 37.843754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.154905, 35.821262, 37.416523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.816704, 35.934959, 37.235714>,  <28.613783, 36.003178, 37.127228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.816704, 35.934959, 37.235714>,  <29.154905, 35.821262, 37.416523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.816704, 35.934959, 37.235714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528024, 0.571035, -0.628577,
		0.079453, -0.770145, -0.632901,
		-0.845505, 0.284245, -0.452026,
		28.563053, 36.020233, 37.100105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.479568, 35.837261, 37.974770>,  <29.154905, 35.821262, 37.416523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.479568, 35.837261, 37.974770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.471956, 35.541359, 38.243813>,  <29.467390, 35.363815, 38.405239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.471956, 35.541359, 38.243813>,  <29.479568, 35.837261, 37.974770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.471956, 35.541359, 38.243813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535744, -0.560450, -0.631565,
		0.844166, -0.372361, -0.385657,
		-0.019028, -0.739759, 0.672603,
		29.466248, 35.319431, 38.445595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.620827, 35.229454, 37.639748>,  <29.479568, 35.837261, 37.974770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.620827, 35.229454, 37.639748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.469276, 35.079609, 37.978241>,  <29.378345, 34.989700, 38.181339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.469276, 35.079609, 37.978241>,  <29.620827, 35.229454, 37.639748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.469276, 35.079609, 37.978241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565346, -0.630262, -0.532122,
		0.732691, -0.680026, 0.027005,
		-0.378877, -0.374614, 0.846237,
		29.355614, 34.967224, 38.232113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.824327, 34.457657, 37.714260>,  <29.620827, 35.229454, 37.639748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.824327, 34.457657, 37.714260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.484482, 34.529690, 37.912540>,  <29.280575, 34.572910, 38.031509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.484482, 34.529690, 37.912540>,  <29.824327, 34.457657, 37.714260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.484482, 34.529690, 37.912540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510121, -0.519230, -0.685695,
		0.133899, -0.835445, 0.533012,
		-0.849616, 0.180087, 0.495702,
		29.229597, 34.583717, 38.061253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.397469, 34.492134, 37.129425>,  <29.824327, 34.457657, 37.714260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.397469, 34.492134, 37.129425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.182127, 34.510281, 37.466026>,  <29.052923, 34.521168, 37.667988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.182127, 34.510281, 37.466026>,  <29.397469, 34.492134, 37.129425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.182127, 34.510281, 37.466026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.842688, -0.037699, -0.537081,
		0.007369, -0.998260, 0.058509,
		-0.538352, 0.045347, 0.841500,
		29.020622, 34.523891, 37.718475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.755863, 34.359596, 36.996464>,  <29.397469, 34.492134, 37.129425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.755863, 34.359596, 36.996464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.644440, 34.054249, 37.229588>,  <28.577585, 33.871040, 37.369461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.644440, 34.054249, 37.229588>,  <28.755863, 34.359596, 36.996464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.644440, 34.054249, 37.229588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049847, 0.617506, 0.784985,
		-0.959125, 0.189611, -0.210062,
		-0.278557, -0.763370, 0.582814,
		28.560873, 33.825237, 37.404430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.132130, 34.479733, 37.458393>,  <28.755863, 34.359596, 36.996464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.132130, 34.479733, 37.458393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.341673, 34.221905, 37.681141>,  <28.467400, 34.067207, 37.814789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.341673, 34.221905, 37.681141>,  <28.132130, 34.479733, 37.458393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.341673, 34.221905, 37.681141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043952, 0.632426, 0.773373,
		-0.850671, -0.429613, 0.302971,
		0.523857, -0.644570, 0.556869,
		28.498831, 34.028534, 37.848202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.868208, 34.317123, 38.176014>,  <28.132130, 34.479733, 37.458393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.868208, 34.317123, 38.176014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.267410, 34.314270, 38.150936>,  <28.506931, 34.312557, 38.135891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.267410, 34.314270, 38.150936>,  <27.868208, 34.317123, 38.176014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.267410, 34.314270, 38.150936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050531, 0.685438, 0.726375,
		0.037791, -0.728096, 0.684433,
		0.998007, -0.007134, -0.062695,
		28.566813, 34.312130, 38.132126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.118788, 34.625813, 38.812103>,  <27.868208, 34.317123, 38.176014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.118788, 34.625813, 38.812103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.459196, 34.599098, 38.603756>,  <28.663441, 34.583069, 38.478748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.459196, 34.599098, 38.603756>,  <28.118788, 34.625813, 38.812103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.459196, 34.599098, 38.603756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456008, 0.585877, 0.669929,
		0.260421, -0.807643, 0.529050,
		0.851022, -0.066787, -0.520867,
		28.714502, 34.579063, 38.447495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.703331, 34.552422, 39.296764>,  <28.118788, 34.625813, 38.812103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.703331, 34.552422, 39.296764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.893772, 34.672478, 38.966129>,  <29.008038, 34.744511, 38.767750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.893772, 34.672478, 38.966129>,  <28.703331, 34.552422, 39.296764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.893772, 34.672478, 38.966129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551569, 0.630158, 0.546510,
		0.684907, -0.716114, 0.134474,
		0.476103, 0.300136, -0.826586,
		29.036604, 34.762520, 38.718155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.435499, 34.271355, 39.189007>,  <28.703331, 34.552422, 39.296764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.435499, 34.271355, 39.189007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.352974, 34.638142, 39.052418>,  <29.303459, 34.858215, 38.970463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.352974, 34.638142, 39.052418>,  <29.435499, 34.271355, 39.189007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.352974, 34.638142, 39.052418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664572, 0.387458, 0.638921,
		0.718177, -0.095118, -0.689329,
		-0.206313, 0.916967, -0.341476,
		29.291080, 34.913231, 38.949974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.109322, 34.736202, 38.975426>,  <29.435499, 34.271355, 39.189007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.109322, 34.736202, 38.975426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.780502, 34.919224, 39.111008>,  <29.583212, 35.029037, 39.192356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.780502, 34.919224, 39.111008>,  <30.109322, 34.736202, 38.975426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.780502, 34.919224, 39.111008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533210, 0.409660, 0.740179,
		0.199815, 0.789194, -0.580730,
		-0.822047, 0.457550, 0.338950,
		29.533888, 35.056488, 39.212692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.137938, 35.575245, 39.013309>,  <30.109322, 34.736202, 38.975426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.137938, 35.575245, 39.013309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.924311, 35.378822, 39.288593>,  <29.796135, 35.260967, 39.453766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.924311, 35.378822, 39.288593>,  <30.137938, 35.575245, 39.013309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.924311, 35.378822, 39.288593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445303, 0.528572, 0.722715,
		-0.718662, 0.692442, -0.063625,
		-0.534069, -0.491056, 0.688211,
		29.764090, 35.231506, 39.495056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.907398, 35.628391, 38.814007>,  <30.137938, 35.575245, 39.013309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.907398, 35.628391, 38.814007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.735136, 35.561405, 38.459270>,  <30.631779, 35.521214, 38.246429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.735136, 35.561405, 38.459270>,  <30.907398, 35.628391, 38.814007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.735136, 35.561405, 38.459270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896609, 0.032850, -0.441604,
		0.103088, -0.985330, 0.136007,
		-0.430657, -0.167469, -0.886842,
		30.605938, 35.511166, 38.193218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.219049, 35.083672, 38.346439>,  <30.907398, 35.628391, 38.814007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.219049, 35.083672, 38.346439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.106390, 35.441647, 38.208015>,  <31.038794, 35.656433, 38.124962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.106390, 35.441647, 38.208015>,  <31.219049, 35.083672, 38.346439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.106390, 35.441647, 38.208015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943149, 0.191880, -0.271388,
		-0.176474, -0.402821, -0.898105,
		-0.281649, 0.894940, -0.346058,
		31.021894, 35.710129, 38.104198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.285223, 35.075867, 37.602013>,  <31.219049, 35.083672, 38.346439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.285223, 35.075867, 37.602013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.401035, 35.416378, 37.777054>,  <31.470522, 35.620686, 37.882080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.401035, 35.416378, 37.777054>,  <31.285223, 35.075867, 37.602013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.401035, 35.416378, 37.777054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938911, -0.163716, -0.302728,
		-0.186062, 0.498524, -0.846673,
		0.289531, 0.851276, 0.437608,
		31.487894, 35.671761, 37.908337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.587034, 35.710983, 37.155033>,  <31.285223, 35.075867, 37.602013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.587034, 35.710983, 37.155033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.742796, 35.640518, 37.516659>,  <31.836252, 35.598240, 37.733635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.742796, 35.640518, 37.516659>,  <31.587034, 35.710983, 37.155033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.742796, 35.640518, 37.516659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872117, -0.245207, -0.423421,
		0.296273, 0.953331, 0.058148,
		0.389402, -0.176160, 0.904065,
		31.859617, 35.587669, 37.787880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.760426, 35.414799, 36.436031>,  <31.587034, 35.710983, 37.155033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.760426, 35.414799, 36.436031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.959909, 35.757027, 36.491596>,  <32.079601, 35.962364, 36.524937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.959909, 35.757027, 36.491596>,  <31.760426, 35.414799, 36.436031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.959909, 35.757027, 36.491596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472438, -0.402678, 0.783998,
		0.726699, -0.325358, -0.605021,
		0.498709, 0.855566, 0.138914,
		32.109524, 36.013695, 36.533272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.466904, 35.163193, 36.678532>,  <31.760426, 35.414799, 36.436031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.466904, 35.163193, 36.678532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.483448, 35.527119, 36.843716>,  <32.493374, 35.745472, 36.942825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.483448, 35.527119, 36.843716>,  <32.466904, 35.163193, 36.678532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.483448, 35.527119, 36.843716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538748, -0.368385, 0.757656,
		0.841451, 0.191144, -0.505395,
		0.041358, 0.909811, 0.412956,
		32.495857, 35.800060, 36.967602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.979816, 35.171574, 37.111614>,  <32.466904, 35.163193, 36.678532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.979816, 35.171574, 37.111614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.832264, 35.519623, 37.242348>,  <32.743732, 35.728451, 37.320789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.832264, 35.519623, 37.242348>,  <32.979816, 35.171574, 37.111614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.832264, 35.519623, 37.242348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396675, -0.170630, 0.901961,
		0.840582, 0.462362, -0.282212,
		-0.368878, 0.870119, 0.326836,
		32.721600, 35.780659, 37.340397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.503883, 35.766743, 37.392616>,  <32.979816, 35.171574, 37.111614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.503883, 35.766743, 37.392616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.156155, 35.801426, 37.587250>,  <32.947517, 35.822235, 37.704029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.156155, 35.801426, 37.587250>,  <33.503883, 35.766743, 37.392616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.156155, 35.801426, 37.587250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429783, -0.353548, 0.830837,
		0.244076, 0.931389, 0.270078,
		-0.869318, 0.086712, 0.486588,
		32.895359, 35.827438, 37.733227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.884998, 36.443130, 37.165550>,  <33.503883, 35.766743, 37.392616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.884998, 36.443130, 37.165550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.690151, 36.735016, 37.357483>,  <33.573242, 36.910145, 37.472641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.690151, 36.735016, 37.357483>,  <33.884998, 36.443130, 37.165550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.690151, 36.735016, 37.357483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527795, 0.683712, -0.503955,
		-0.695808, 0.007769, -0.718185,
		-0.487116, 0.729711, 0.479833,
		33.544018, 36.953930, 37.501434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.285801, 35.857155, 37.622448>,  <33.884998, 36.443130, 37.165550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.285801, 35.857155, 37.622448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.323528, 35.841072, 38.020340>,  <34.346165, 35.831421, 38.259075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.323528, 35.841072, 38.020340>,  <34.285801, 35.857155, 37.622448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.323528, 35.841072, 38.020340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129779, 0.991154, 0.027756,
		-0.987047, 0.126477, 0.098700,
		0.094316, -0.040206, 0.994730,
		34.351822, 35.829010, 38.318760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.790394, 36.215973, 37.903156>,  <34.285801, 35.857155, 37.622448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.790394, 36.215973, 37.903156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.101116, 36.210186, 38.154987>,  <34.287548, 36.206715, 38.306087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.101116, 36.210186, 38.154987>,  <33.790394, 36.215973, 37.903156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.101116, 36.210186, 38.154987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050884, 0.997909, -0.039847,
		-0.627686, 0.062989, 0.775914,
		0.776802, -0.014470, 0.629579,
		34.334156, 36.205845, 38.343861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.675991, 36.679432, 38.492699>,  <33.790394, 36.215973, 37.903156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.675991, 36.679432, 38.492699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.064713, 36.632149, 38.411095>,  <34.297947, 36.603779, 38.362133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.064713, 36.632149, 38.411095>,  <33.675991, 36.679432, 38.492699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.064713, 36.632149, 38.411095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082117, 0.980761, -0.177099,
		0.221022, 0.155353, 0.962816,
		0.971806, -0.118206, -0.204013,
		34.356255, 36.596687, 38.349892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.205975, 36.677811, 38.945343>,  <33.675991, 36.679432, 38.492699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.205975, 36.677811, 38.945343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.350368, 36.963089, 38.704998>,  <34.437004, 37.134254, 38.560791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.350368, 36.963089, 38.704998>,  <34.205975, 36.677811, 38.945343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.350368, 36.963089, 38.704998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801239, 0.566878, 0.191484,
		0.477183, 0.412314, 0.776076,
		0.360988, 0.713195, -0.600866,
		34.458664, 37.177048, 38.524738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.184189, 37.413944, 39.288784>,  <34.205975, 36.677811, 38.945343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.184189, 37.413944, 39.288784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.175179, 37.478226, 38.894085>,  <34.169773, 37.516796, 38.657265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.175179, 37.478226, 38.894085>,  <34.184189, 37.413944, 39.288784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.175179, 37.478226, 38.894085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747387, 0.652831, 0.123388,
		0.664007, 0.740260, 0.105402,
		-0.022530, 0.160707, -0.986745,
		34.168419, 37.526440, 38.598061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.076607, 38.126869, 39.278500>,  <34.184189, 37.413944, 39.288784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.076607, 38.126869, 39.278500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.969662, 38.006508, 38.912334>,  <33.905495, 37.934292, 38.692635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.969662, 38.006508, 38.912334>,  <34.076607, 38.126869, 39.278500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.969662, 38.006508, 38.912334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684595, 0.727863, -0.039312,
		0.678121, 0.616174, -0.400601,
		-0.267360, -0.300908, -0.915409,
		33.889454, 37.916237, 38.637711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.107151, 38.653427, 38.878376>,  <34.076607, 38.126869, 39.278500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.107151, 38.653427, 38.878376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.840763, 38.410374, 38.705280>,  <33.680931, 38.264542, 38.601421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.840763, 38.410374, 38.705280>,  <34.107151, 38.653427, 38.878376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.840763, 38.410374, 38.705280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683857, 0.729051, 0.028721,
		0.298036, 0.315058, -0.901063,
		-0.665969, -0.607638, -0.432738,
		33.640972, 38.228081, 38.575459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.708275, 39.108253, 38.511852>,  <34.107151, 38.653427, 38.878376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.708275, 39.108253, 38.511852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.507507, 38.766148, 38.563381>,  <33.387047, 38.560883, 38.594299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.507507, 38.766148, 38.563381>,  <33.708275, 39.108253, 38.511852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.507507, 38.766148, 38.563381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859462, 0.509889, 0.036591,
		-0.096980, -0.092352, -0.990992,
		-0.501917, -0.855269, 0.128822,
		33.356934, 38.509567, 38.602028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.167374, 38.841087, 37.968403>,  <33.708275, 39.108253, 38.511852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.167374, 38.841087, 37.968403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.055935, 38.723633, 38.334171>,  <32.989071, 38.653160, 38.553631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.055935, 38.723633, 38.334171>,  <33.167374, 38.841087, 37.968403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.055935, 38.723633, 38.334171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.894424, 0.426145, -0.135666,
		-0.349837, -0.855673, -0.381362,
		-0.278601, -0.293639, 0.914417,
		32.972355, 38.635540, 38.608498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.526764, 38.425728, 37.975361>,  <33.167374, 38.841087, 37.968403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.526764, 38.425728, 37.975361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.585724, 38.655727, 38.297268>,  <32.621101, 38.793728, 38.490410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.585724, 38.655727, 38.297268>,  <32.526764, 38.425728, 37.975361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.585724, 38.655727, 38.297268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.939383, 0.336050, -0.068049,
		-0.309569, -0.745952, 0.589680,
		0.147400, 0.575001, 0.804765,
		32.629944, 38.828228, 38.538696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.803848, 37.898987, 38.513561>,  <32.526764, 38.425728, 37.975361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.803848, 37.898987, 38.513561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.977802, 38.110237, 38.221817>,  <33.082176, 38.236988, 38.046772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.977802, 38.110237, 38.221817>,  <32.803848, 37.898987, 38.513561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.977802, 38.110237, 38.221817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762827, -0.646467, -0.013263,
		-0.478509, -0.550605, -0.684005,
		0.434884, 0.528124, -0.729357,
		33.108269, 38.268673, 38.003010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.919941, 37.623482, 37.845745>,  <32.803848, 37.898987, 38.513561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.919941, 37.623482, 37.845745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.208466, 37.877560, 37.956184>,  <33.381580, 38.030006, 38.022446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.208466, 37.877560, 37.956184>,  <32.919941, 37.623482, 37.845745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.208466, 37.877560, 37.956184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659228, -0.751905, 0.007595,
		0.212422, 0.176531, -0.961100,
		0.721315, 0.635197, 0.276096,
		33.424862, 38.068119, 38.039013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.535103, 37.688328, 37.367779>,  <32.919941, 37.623482, 37.845745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.535103, 37.688328, 37.367779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.649742, 37.751995, 37.745674>,  <33.718525, 37.790195, 37.972412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.649742, 37.751995, 37.745674>,  <33.535103, 37.688328, 37.367779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.649742, 37.751995, 37.745674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900495, -0.381393, -0.208923,
		0.327063, 0.910608, -0.252633,
		0.286599, 0.159164, 0.944737,
		33.735722, 37.799744, 38.029095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.197182, 37.875416, 37.327274>,  <33.535103, 37.688328, 37.367779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.197182, 37.875416, 37.327274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.193909, 37.763653, 37.711330>,  <34.191944, 37.696594, 37.941765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.193909, 37.763653, 37.711330>,  <34.197182, 37.875416, 37.327274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.193909, 37.763653, 37.711330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937967, -0.334979, -0.089487,
		0.346629, 0.899844, 0.264819,
		-0.008184, -0.279410, 0.960137,
		34.191452, 37.679829, 37.999371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.783268, 38.142502, 37.699429>,  <34.197182, 37.875416, 37.327274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.783268, 38.142502, 37.699429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.691051, 37.830616, 37.932289>,  <34.635723, 37.643486, 38.072006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.691051, 37.830616, 37.932289>,  <34.783268, 38.142502, 37.699429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.691051, 37.830616, 37.932289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922951, -0.364735, -0.123008,
		0.308242, 0.508941, 0.803720,
		-0.230541, -0.779710, 0.582154,
		34.621891, 37.596703, 38.106934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.784420, 38.559364, 38.286533>,  <34.783268, 38.142502, 37.699429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.784420, 38.559364, 38.286533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.064175, 38.800987, 38.439362>,  <35.232029, 38.945961, 38.531059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.064175, 38.800987, 38.439362>,  <34.784420, 38.559364, 38.286533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.064175, 38.800987, 38.439362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413264, 0.094379, -0.905707,
		-0.583158, 0.791333, -0.183628,
		0.699385, 0.604057, 0.382067,
		35.273991, 38.982204, 38.553982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.714462, 39.203449, 37.901882>,  <34.784420, 38.559364, 38.286533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.714462, 39.203449, 37.901882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.077187, 39.126675, 38.052002>,  <35.294823, 39.080608, 38.142075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.077187, 39.126675, 38.052002>,  <34.714462, 39.203449, 37.901882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.077187, 39.126675, 38.052002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357986, -0.119419, -0.926059,
		0.222565, 0.974114, -0.039580,
		0.906814, -0.191939, 0.375298,
		35.349232, 39.069092, 38.164593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.198349, 39.800358, 37.593201>,  <34.714462, 39.203449, 37.901882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.198349, 39.800358, 37.593201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.414650, 39.471676, 37.665188>,  <35.544430, 39.274467, 37.708382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.414650, 39.471676, 37.665188>,  <35.198349, 39.800358, 37.593201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.414650, 39.471676, 37.665188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497259, 0.139696, -0.856282,
		0.678467, 0.552531, 0.484141,
		0.540755, -0.821702, 0.179972,
		35.576878, 39.225166, 37.719181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.717075, 39.914131, 37.215748>,  <35.198349, 39.800358, 37.593201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.717075, 39.914131, 37.215748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.786743, 39.526478, 37.285549>,  <35.828545, 39.293888, 37.327431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.786743, 39.526478, 37.285549>,  <35.717075, 39.914131, 37.215748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.786743, 39.526478, 37.285549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369930, -0.099834, -0.923680,
		0.912588, 0.225429, 0.341122,
		0.174169, -0.969131, 0.174500,
		35.838993, 39.235737, 37.337898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.395081, 39.827717, 37.079594>,  <35.717075, 39.914131, 37.215748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.395081, 39.827717, 37.079594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.218849, 39.469070, 37.061893>,  <36.113110, 39.253883, 37.051273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.218849, 39.469070, 37.061893>,  <36.395081, 39.827717, 37.079594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.218849, 39.469070, 37.061893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499520, -0.203900, -0.841965,
		0.745900, -0.393060, 0.537715,
		-0.440583, -0.896621, -0.044252,
		36.086674, 39.200085, 37.048618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.907654, 39.279423, 36.890518>,  <36.395081, 39.827717, 37.079594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.907654, 39.279423, 36.890518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.552658, 39.111279, 36.814987>,  <36.339661, 39.010391, 36.769669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.552658, 39.111279, 36.814987>,  <36.907654, 39.279423, 36.890518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.552658, 39.111279, 36.814987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357805, -0.370352, -0.857213,
		0.290409, -0.828332, 0.479092,
		-0.887490, -0.420364, -0.188827,
		36.286411, 38.985168, 36.758339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.098969, 38.670238, 36.693432>,  <36.907654, 39.279423, 36.890518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.098969, 38.670238, 36.693432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.721989, 38.713509, 36.566883>,  <36.495800, 38.739471, 36.490955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.721989, 38.713509, 36.566883>,  <37.098969, 38.670238, 36.693432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.721989, 38.713509, 36.566883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306327, -0.099880, -0.946672,
		-0.134010, -0.989101, 0.060993,
		-0.942446, 0.108179, -0.316373,
		36.439255, 38.745960, 36.471970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.894981, 38.104885, 36.190620>,  <37.098969, 38.670238, 36.693432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.894981, 38.104885, 36.190620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.671585, 38.429554, 36.122173>,  <36.537548, 38.624355, 36.081104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.671585, 38.429554, 36.122173>,  <36.894981, 38.104885, 36.190620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.671585, 38.429554, 36.122173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344994, 0.039686, -0.937766,
		-0.754366, -0.582766, -0.302186,
		-0.558491, 0.811670, -0.171113,
		36.504036, 38.673054, 36.070839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.613327, 37.923122, 35.479954>,  <36.894981, 38.104885, 36.190620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.613327, 37.923122, 35.479954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.553616, 38.316170, 35.524082>,  <36.517788, 38.551998, 35.550560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.553616, 38.316170, 35.524082>,  <36.613327, 37.923122, 35.479954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.553616, 38.316170, 35.524082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333490, 0.155068, -0.929913,
		-0.930860, -0.102022, -0.350843,
		-0.149276, 0.982622, 0.110323,
		36.508831, 38.610958, 35.557178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.215767, 38.079472, 34.920864>,  <36.613327, 37.923122, 35.479954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.215767, 38.079472, 34.920864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.362579, 38.433590, 35.035080>,  <36.450668, 38.646061, 35.103611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.362579, 38.433590, 35.035080>,  <36.215767, 38.079472, 34.920864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.362579, 38.433590, 35.035080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266578, 0.193981, -0.944091,
		-0.891192, 0.422630, -0.164804,
		0.367032, 0.885300, 0.285538,
		36.472691, 38.699181, 35.120743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.009579, 38.519123, 34.438057>,  <36.215767, 38.079472, 34.920864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.009579, 38.519123, 34.438057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.345768, 38.654625, 34.607216>,  <36.547482, 38.735928, 34.708710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.345768, 38.654625, 34.607216>,  <36.009579, 38.519123, 34.438057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.345768, 38.654625, 34.607216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390218, 0.163086, -0.906164,
		-0.375936, 0.926633, 0.004882,
		0.840478, 0.338754, 0.422898,
		36.597912, 38.756252, 34.734085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.178368, 39.125141, 33.981739>,  <36.009579, 38.519123, 34.438057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.178368, 39.125141, 33.981739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.511990, 39.056427, 34.191444>,  <36.712162, 39.015198, 34.317268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.511990, 39.056427, 34.191444>,  <36.178368, 39.125141, 33.981739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.511990, 39.056427, 34.191444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542462, 0.428411, -0.722633,
		-0.100463, 0.887105, 0.450502,
		0.834051, -0.171783, 0.524260,
		36.762203, 39.004890, 34.348724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.540936, 39.751427, 33.967937>,  <36.178368, 39.125141, 33.981739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.540936, 39.751427, 33.967937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.823109, 39.473503, 34.023952>,  <36.992413, 39.306747, 34.057560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.823109, 39.473503, 34.023952>,  <36.540936, 39.751427, 33.967937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.823109, 39.473503, 34.023952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617179, 0.505002, -0.603377,
		0.348511, 0.512069, 0.785064,
		0.705429, -0.694808, 0.140039,
		37.034737, 39.265060, 34.065964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.060421, 40.057434, 33.845284>,  <36.540936, 39.751427, 33.967937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.060421, 40.057434, 33.845284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.186783, 39.680347, 33.802418>,  <37.262600, 39.454094, 33.776699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.186783, 39.680347, 33.802418>,  <37.060421, 40.057434, 33.845284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.186783, 39.680347, 33.802418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763951, 0.319716, -0.560501,
		0.562658, 0.095193, 0.821191,
		0.315904, -0.942719, -0.107168,
		37.281555, 39.397533, 33.770267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.672932, 40.073353, 34.071297>,  <37.060421, 40.057434, 33.845284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.672932, 40.073353, 34.071297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.666222, 39.745255, 33.842594>,  <37.662193, 39.548393, 33.705372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.666222, 39.745255, 33.842594>,  <37.672932, 40.073353, 34.071297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.666222, 39.745255, 33.842594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758974, 0.361819, -0.541337,
		0.650904, -0.443034, 0.616478,
		-0.016777, -0.820249, -0.571760,
		37.661190, 39.499180, 33.671066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.310169, 39.924076, 34.039494>,  <37.672932, 40.073353, 34.071297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.310169, 39.924076, 34.039494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.146008, 39.722538, 33.735462>,  <38.047512, 39.601616, 33.553043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.146008, 39.722538, 33.735462>,  <38.310169, 39.924076, 34.039494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.146008, 39.722538, 33.735462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709051, 0.347811, -0.613412,
		0.573424, -0.790678, 0.214506,
		-0.410404, -0.503841, -0.760074,
		38.022888, 39.571384, 33.507439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.838623, 39.583256, 33.746723>,  <38.310169, 39.924076, 34.039494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.838623, 39.583256, 33.746723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.578873, 39.601280, 33.443069>,  <38.423023, 39.612095, 33.260876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.578873, 39.601280, 33.443069>,  <38.838623, 39.583256, 33.746723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.578873, 39.601280, 33.443069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747342, 0.222507, -0.626076,
		0.140701, -0.973889, -0.178165,
		-0.649372, 0.045061, -0.759135,
		38.384060, 39.614799, 33.215328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.234219, 39.180359, 33.220734>,  <38.838623, 39.583256, 33.746723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.234219, 39.180359, 33.220734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.957443, 39.418232, 33.056992>,  <38.791378, 39.560955, 32.958748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.957443, 39.418232, 33.056992>,  <39.234219, 39.180359, 33.220734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.957443, 39.418232, 33.056992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657825, 0.285708, -0.696876,
		-0.297464, -0.751481, -0.588889,
		-0.691940, 0.594682, -0.409356,
		38.749863, 39.596638, 32.934185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.265621, 39.079979, 32.502411>,  <39.234219, 39.180359, 33.220734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.265621, 39.079979, 32.502411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.083843, 39.435646, 32.523796>,  <38.974777, 39.649048, 32.536625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.083843, 39.435646, 32.523796>,  <39.265621, 39.079979, 32.502411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.083843, 39.435646, 32.523796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534889, 0.320378, -0.781826,
		-0.712304, -0.326700, -0.621200,
		-0.454442, 0.889171, 0.053458,
		38.947510, 39.702396, 32.539833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.073399, 39.232243, 31.771687>,  <39.265621, 39.079979, 32.502411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.073399, 39.232243, 31.771687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.095657, 39.569038, 31.986330>,  <39.109013, 39.771118, 32.115116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.095657, 39.569038, 31.986330>,  <39.073399, 39.232243, 31.771687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.095657, 39.569038, 31.986330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571567, 0.413804, -0.708574,
		-0.818666, 0.346139, -0.458229,
		0.055649, 0.841994, 0.536609,
		39.112350, 39.821636, 32.147312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.938023, 39.833992, 31.276237>,  <39.073399, 39.232243, 31.771687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.938023, 39.833992, 31.276237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.094212, 40.025196, 31.590954>,  <39.187927, 40.139919, 31.779783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.094212, 40.025196, 31.590954>,  <38.938023, 39.833992, 31.276237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.094212, 40.025196, 31.590954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420628, 0.667580, -0.614336,
		-0.818901, 0.570830, 0.059612,
		0.390477, 0.478006, 0.786790,
		39.211353, 40.168598, 31.826990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.887093, 40.505306, 31.064291>,  <38.938023, 39.833992, 31.276237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.887093, 40.505306, 31.064291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.153599, 40.512882, 31.362480>,  <39.313503, 40.517429, 31.541393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.153599, 40.512882, 31.362480>,  <38.887093, 40.505306, 31.064291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.153599, 40.512882, 31.362480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436068, 0.801046, -0.410087,
		-0.604924, 0.598304, 0.525452,
		0.666267, 0.018939, 0.745473,
		39.353477, 40.518562, 31.586123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.914108, 41.179676, 31.416029>,  <38.887093, 40.505306, 31.064291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.914108, 41.179676, 31.416029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.262505, 40.988441, 31.461296>,  <39.471542, 40.873699, 31.488457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.262505, 40.988441, 31.461296>,  <38.914108, 41.179676, 31.416029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.262505, 40.988441, 31.461296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488892, 0.820648, -0.295840,
		0.048567, 0.313001, 0.948510,
		0.870992, -0.478087, 0.113167,
		39.523804, 40.845016, 31.495247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.286232, 41.653561, 31.753128>,  <38.914108, 41.179676, 31.416029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.286232, 41.653561, 31.753128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.585533, 41.416824, 31.633232>,  <39.765114, 41.274780, 31.561295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.585533, 41.416824, 31.633232>,  <39.286232, 41.653561, 31.753128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.585533, 41.416824, 31.633232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449206, 0.784466, -0.427583,
		0.488198, 0.185294, 0.852836,
		0.748250, -0.591844, -0.299739,
		39.810009, 41.239269, 31.543310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.930439, 42.016022, 31.835333>,  <39.286232, 41.653561, 31.753128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.930439, 42.016022, 31.835333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.023018, 41.744976, 31.556112>,  <40.078564, 41.582348, 31.388580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.023018, 41.744976, 31.556112>,  <39.930439, 42.016022, 31.835333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.023018, 41.744976, 31.556112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468718, 0.706432, -0.530337,
		0.852488, -0.204445, 0.481110,
		0.231447, -0.677611, -0.698052,
		40.092453, 41.541695, 31.346697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.552601, 42.272766, 31.575838>,  <39.930439, 42.016022, 31.835333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.552601, 42.272766, 31.575838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.473701, 41.984169, 31.310347>,  <40.426361, 41.811008, 31.151052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.473701, 41.984169, 31.310347>,  <40.552601, 42.272766, 31.575838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.473701, 41.984169, 31.310347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531067, 0.490451, -0.690960,
		0.824052, -0.488775, 0.286422,
		-0.197248, -0.721496, -0.663729,
		40.414528, 41.767719, 31.111227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.261822, 42.052982, 31.199377>,  <40.552601, 42.272766, 31.575838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.261822, 42.052982, 31.199377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.937836, 41.962959, 30.982750>,  <40.743443, 41.908943, 30.852774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.937836, 41.962959, 30.982750>,  <41.261822, 42.052982, 31.199377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.937836, 41.962959, 30.982750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421447, 0.418805, -0.804354,
		0.407849, -0.879742, -0.244362,
		-0.809964, -0.225070, -0.541574,
		40.694843, 41.895443, 30.820278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.462082, 41.773380, 30.568960>,  <41.261822, 42.052982, 31.199377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.462082, 41.773380, 30.568960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.107082, 41.942005, 30.494524>,  <40.894081, 42.043179, 30.449863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.107082, 41.942005, 30.494524>,  <41.462082, 41.773380, 30.568960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.107082, 41.942005, 30.494524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394455, 0.486243, -0.779727,
		-0.238216, -0.765412, -0.597827,
		-0.887501, 0.421559, -0.186090,
		40.840832, 42.068474, 30.438698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.439384, 41.768265, 29.757477>,  <41.462082, 41.773380, 30.568960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.439384, 41.768265, 29.757477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.162384, 42.029156, 29.880789>,  <40.996185, 42.185692, 29.954777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.162384, 42.029156, 29.880789>,  <41.439384, 41.768265, 29.757477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.162384, 42.029156, 29.880789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154129, 0.551224, -0.819998,
		-0.704760, -0.520334, -0.482251,
		-0.692501, 0.652230, 0.308282,
		40.954632, 42.224823, 29.973274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.998329, 41.947891, 29.218807>,  <41.439384, 41.768265, 29.757477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.998329, 41.947891, 29.218807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.952049, 42.272236, 29.448282>,  <40.924282, 42.466843, 29.585968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.952049, 42.272236, 29.448282>,  <40.998329, 41.947891, 29.218807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.952049, 42.272236, 29.448282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037435, 0.573598, -0.818281,
		-0.992578, -0.116155, -0.036013,
		-0.115704, 0.810859, 0.573689,
		40.917339, 42.515495, 29.620390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.360332, 42.328362, 28.937765>,  <40.998329, 41.947891, 29.218807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.360332, 42.328362, 28.937765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.553810, 42.591621, 29.168547>,  <40.669895, 42.749577, 29.307016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.553810, 42.591621, 29.168547>,  <40.360332, 42.328362, 28.937765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.553810, 42.591621, 29.168547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043689, 0.676534, -0.735114,
		-0.874145, 0.330365, 0.355991,
		0.483696, 0.658150, 0.576955,
		40.698917, 42.789066, 29.341633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.972786, 42.925060, 28.923655>,  <40.360332, 42.328362, 28.937765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.972786, 42.925060, 28.923655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.336540, 43.038502, 29.045366>,  <40.554790, 43.106567, 29.118393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.336540, 43.038502, 29.045366>,  <39.972786, 42.925060, 28.923655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.336540, 43.038502, 29.045366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003082, 0.736094, -0.676873,
		-0.415946, 0.614599, 0.670266,
		0.909384, 0.283608, 0.304281,
		40.609356, 43.123585, 29.136650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.925541, 43.596092, 28.841036>,  <39.972786, 42.925060, 28.923655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.925541, 43.596092, 28.841036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.320541, 43.536072, 28.860334>,  <40.557541, 43.500061, 28.871914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.320541, 43.536072, 28.860334>,  <39.925541, 43.596092, 28.841036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.320541, 43.536072, 28.860334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149664, 0.796671, -0.585590,
		0.049434, 0.585491, 0.809170,
		0.987500, -0.150052, 0.048244,
		40.616791, 43.491055, 28.874807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.170399, 44.225353, 29.109940>,  <39.925541, 43.596092, 28.841036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.170399, 44.225353, 29.109940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.459106, 44.026112, 28.917713>,  <40.632332, 43.906567, 28.802378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.459106, 44.026112, 28.917713>,  <40.170399, 44.225353, 29.109940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.459106, 44.026112, 28.917713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306946, 0.852664, -0.422786,
		0.620353, 0.157645, 0.768316,
		0.721766, -0.498108, -0.480564,
		40.675636, 43.876678, 28.773544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.710724, 44.668034, 29.221590>,  <40.170399, 44.225353, 29.109940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.710724, 44.668034, 29.221590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.819126, 44.438061, 28.912783>,  <40.884167, 44.300076, 28.727499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.819126, 44.438061, 28.912783>,  <40.710724, 44.668034, 29.221590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.819126, 44.438061, 28.912783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399578, 0.796857, -0.453163,
		0.875724, -0.185670, 0.445684,
		0.271008, -0.574931, -0.772016,
		40.900429, 44.265583, 28.681177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.162373, 45.094368, 28.941467>,  <40.710724, 44.668034, 29.221590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.162373, 45.094368, 28.941467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.166794, 44.844032, 28.629519>,  <41.169445, 44.693829, 28.442350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.166794, 44.844032, 28.629519>,  <41.162373, 45.094368, 28.941467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.166794, 44.844032, 28.629519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630890, 0.609457, -0.480146,
		0.775794, -0.486706, 0.401574,
		0.011052, -0.625843, -0.779871,
		41.170109, 44.656281, 28.395557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.899162, 44.908195, 28.748791>,  <41.162373, 45.094368, 28.941467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.899162, 44.908195, 28.748791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.661915, 44.829681, 28.436460>,  <41.519566, 44.782574, 28.249062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.661915, 44.829681, 28.436460>,  <41.899162, 44.908195, 28.748791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.661915, 44.829681, 28.436460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684335, 0.388012, -0.617359,
		0.424147, -0.900510, -0.095812,
		-0.593114, -0.196284, -0.780825,
		41.483982, 44.770798, 28.202213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.323578, 44.716545, 28.316111>,  <41.899162, 44.908195, 28.748791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.323578, 44.716545, 28.316111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.017612, 44.799511, 28.072180>,  <41.834034, 44.849289, 27.925821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.017612, 44.799511, 28.072180>,  <42.323578, 44.716545, 28.316111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.017612, 44.799511, 28.072180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639220, 0.361132, -0.678956,
		0.079404, -0.909156, -0.408817,
		-0.764913, 0.207413, -0.609826,
		41.788139, 44.861736, 27.889233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.435040, 44.389877, 27.549952>,  <42.323578, 44.716545, 28.316111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.435040, 44.389877, 27.549952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.195263, 44.709423, 27.529987>,  <42.051399, 44.901150, 27.518009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.195263, 44.709423, 27.529987>,  <42.435040, 44.389877, 27.549952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.195263, 44.709423, 27.529987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572628, 0.384441, -0.724087,
		-0.559260, -0.462625, -0.687900,
		-0.599438, 0.798864, -0.049909,
		42.015430, 44.949081, 27.515015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.338223, 44.430786, 26.816149>,  <42.435040, 44.389877, 27.549952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.338223, 44.430786, 26.816149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.212914, 44.767853, 26.991316>,  <42.137726, 44.970093, 27.096416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.212914, 44.767853, 26.991316>,  <42.338223, 44.430786, 26.816149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.212914, 44.767853, 26.991316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512472, 0.538232, -0.669088,
		-0.799519, 0.014811, -0.600458,
		-0.313276, 0.842666, 0.437918,
		42.118931, 45.020653, 27.122690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.243675, 44.916603, 26.364542>,  <42.338223, 44.430786, 26.816149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.243675, 44.916603, 26.364542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.261642, 45.179249, 26.665697>,  <42.272423, 45.336838, 26.846390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.261642, 45.179249, 26.665697>,  <42.243675, 44.916603, 26.364542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.261642, 45.179249, 26.665697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439559, 0.663784, -0.605128,
		-0.897090, 0.358120, -0.258804,
		0.044918, 0.656614, 0.752888,
		42.275116, 45.376232, 26.891563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.924210, 45.617584, 26.103542>,  <42.243675, 44.916603, 26.364542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.924210, 45.617584, 26.103542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.150257, 45.691433, 26.425179>,  <42.285885, 45.735741, 26.618160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.150257, 45.691433, 26.425179>,  <41.924210, 45.617584, 26.103542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.150257, 45.691433, 26.425179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538293, 0.656088, -0.528951,
		-0.625209, 0.731754, 0.271386,
		0.565115, 0.184619, 0.804090,
		42.319790, 45.746819, 26.666405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.992386, 46.311634, 26.034338>,  <41.924210, 45.617584, 26.103542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.992386, 46.311634, 26.034338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.290283, 46.214710, 26.283058>,  <42.469025, 46.156555, 26.432289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.290283, 46.214710, 26.283058>,  <41.992386, 46.311634, 26.034338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.290283, 46.214710, 26.283058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626419, 0.575111, -0.526162,
		-0.230107, 0.781365, 0.580103,
		0.744748, -0.242314, 0.621799,
		42.513706, 46.142017, 26.469599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.191986, 46.862400, 26.268902>,  <41.992386, 46.311634, 26.034338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.191986, 46.862400, 26.268902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.502144, 46.614311, 26.316378>,  <42.688236, 46.465458, 26.344864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.502144, 46.614311, 26.316378>,  <42.191986, 46.862400, 26.268902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.502144, 46.614311, 26.316378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537095, 0.548893, -0.640504,
		0.332110, 0.560389, 0.758727,
		0.775392, -0.620226, 0.118689,
		42.734760, 46.428242, 26.351984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.833946, 47.265770, 26.296804>,  <42.191986, 46.862400, 26.268902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.833946, 47.265770, 26.296804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.953396, 46.894985, 26.205978>,  <43.025066, 46.672512, 26.151482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.953396, 46.894985, 26.205978>,  <42.833946, 47.265770, 26.296804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.953396, 46.894985, 26.205978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662098, 0.372581, -0.650238,
		0.687348, 0.043839, 0.725004,
		0.298629, -0.926964, -0.227067,
		43.042984, 46.616898, 26.137857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.631634, 47.105854, 26.361065>,  <42.833946, 47.265770, 26.296804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.631634, 47.105854, 26.361065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.467850, 46.863533, 26.088202>,  <43.369579, 46.718140, 25.924482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.467850, 46.863533, 26.088202>,  <43.631634, 47.105854, 26.361065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.467850, 46.863533, 26.088202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612497, 0.371622, -0.697671,
		0.676157, -0.703491, 0.218888,
		-0.409462, -0.605804, -0.682161,
		43.345013, 46.681793, 25.883553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.215137, 46.861336, 26.113810>,  <43.631634, 47.105854, 26.361065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.215137, 46.861336, 26.113810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.893238, 46.835075, 25.877817>,  <43.700100, 46.819321, 25.736221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.893238, 46.835075, 25.877817>,  <44.215137, 46.861336, 26.113810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.893238, 46.835075, 25.877817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579468, 0.128853, -0.804744,
		0.128853, -0.989488, -0.065651,
		0.804744, 0.065651, 0.589980,
		43.651814, 46.815380, 25.700823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.300510, 46.310169, 25.723608>,  <44.215137, 46.861336, 26.113810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.300510, 46.310169, 25.723608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.086098, 46.581612, 25.522747>,  <43.957451, 46.744476, 25.402231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.086098, 46.581612, 25.522747>,  <44.300510, 46.310169, 25.723608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.086098, 46.581612, 25.522747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693276, 0.014447, -0.720528,
		-0.481702, -0.734357, -0.478208,
		-0.536033, 0.678609, -0.502153,
		43.925289, 46.785194, 25.372101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.422676, 45.951519, 25.048599>,  <44.300510, 46.310169, 25.723608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.422676, 45.951519, 25.048599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.304367, 46.332104, 25.082645>,  <44.233383, 46.560455, 25.103073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.304367, 46.332104, 25.082645>,  <44.422676, 45.951519, 25.048599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.304367, 46.332104, 25.082645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771855, 0.290531, -0.565537,
		-0.562814, -0.101574, -0.820319,
		-0.295772, 0.951459, 0.085114,
		44.215637, 46.617542, 25.108179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.910767, 45.339020, 25.063948>,  <44.422676, 45.951519, 25.048599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.910767, 45.339020, 25.063948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.836060, 45.416969, 25.449100>,  <44.791237, 45.463737, 25.680193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.836060, 45.416969, 25.449100>,  <44.910767, 45.339020, 25.063948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.836060, 45.416969, 25.449100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964452, -0.150152, 0.217456,
		0.186955, 0.969267, -0.159901,
		-0.186763, 0.194871, 0.962883,
		44.780029, 45.475430, 25.737965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.253494, 45.922924, 25.281685>,  <44.910767, 45.339020, 25.063948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.253494, 45.922924, 25.281685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.210712, 45.646244, 25.567375>,  <45.185043, 45.480236, 25.738789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.210712, 45.646244, 25.567375>,  <45.253494, 45.922924, 25.281685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.210712, 45.646244, 25.567375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976858, -0.206931, -0.054115,
		0.185226, 0.691907, 0.697823,
		-0.106959, -0.691697, 0.714224,
		45.178623, 45.438736, 25.781643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.571850, 46.087109, 25.871370>,  <45.253494, 45.922924, 25.281685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.571850, 46.087109, 25.871370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.586277, 46.434246, 26.069584>,  <45.594933, 46.642529, 26.188511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.586277, 46.434246, 26.069584>,  <45.571850, 46.087109, 25.871370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.586277, 46.434246, 26.069584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136885, -0.486891, 0.862670,
		0.989930, -0.098945, 0.101234,
		0.036067, 0.867840, 0.495533,
		45.597095, 46.694599, 26.218245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.896652, 45.873344, 26.409910>,  <45.571850, 46.087109, 25.871370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.896652, 45.873344, 26.409910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.678440, 46.193287, 26.510017>,  <45.547512, 46.385250, 26.570082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.678440, 46.193287, 26.510017>,  <45.896652, 45.873344, 26.409910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.678440, 46.193287, 26.510017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200363, -0.414427, 0.887753,
		0.813790, 0.434149, 0.386343,
		-0.545528, 0.799853, 0.250269,
		45.514782, 46.433243, 26.585098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.204163, 46.170269, 27.021505>,  <45.896652, 45.873344, 26.409910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.204163, 46.170269, 27.021505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.816048, 46.249962, 26.966599>,  <45.583179, 46.297779, 26.933655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.816048, 46.249962, 26.966599>,  <46.204163, 46.170269, 27.021505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.816048, 46.249962, 26.966599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175534, -0.189250, 0.966112,
		0.166505, 0.961504, 0.218600,
		-0.970291, 0.199234, -0.137265,
		45.524960, 46.309731, 26.925419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.022823, 46.680916, 27.505470>,  <46.204163, 46.170269, 27.021505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.022823, 46.680916, 27.505470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.695728, 46.482201, 27.389187>,  <45.499474, 46.362972, 27.319418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.695728, 46.482201, 27.389187>,  <46.022823, 46.680916, 27.505470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.695728, 46.482201, 27.389187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284453, -0.090285, 0.954429,
		-0.500395, 0.863163, -0.067483,
		-0.817735, -0.496788, -0.290707,
		45.450409, 46.333164, 27.301975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.509403, 46.976429, 27.857128>,  <46.022823, 46.680916, 27.505470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.509403, 46.976429, 27.857128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.375904, 46.613560, 27.754637>,  <45.295803, 46.395840, 27.693142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.375904, 46.613560, 27.754637>,  <45.509403, 46.976429, 27.857128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.375904, 46.613560, 27.754637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311185, -0.150551, 0.938348,
		-0.889817, 0.392908, -0.232052,
		-0.333749, -0.907170, -0.256230,
		45.275780, 46.341408, 27.677767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.785896, 46.924572, 28.105148>,  <45.509403, 46.976429, 27.857128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.785896, 46.924572, 28.105148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.895500, 46.542076, 28.064100>,  <44.961262, 46.312580, 28.039471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.895500, 46.542076, 28.064100>,  <44.785896, 46.924572, 28.105148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.895500, 46.542076, 28.064100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283962, -0.182388, 0.941329,
		-0.918850, -0.228790, -0.321510,
		0.274006, -0.956237, -0.102620,
		44.977703, 46.255203, 28.033314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.181602, 46.611263, 28.348398>,  <44.785896, 46.924572, 28.105148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.181602, 46.611263, 28.348398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.467350, 46.333344, 28.315094>,  <44.638798, 46.166592, 28.295111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.467350, 46.333344, 28.315094>,  <44.181602, 46.611263, 28.348398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.467350, 46.333344, 28.315094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346031, -0.454158, 0.820977,
		-0.608228, -0.557668, -0.564858,
		0.714368, -0.694800, -0.083261,
		44.681660, 46.124905, 28.290115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.820515, 46.016209, 28.523085>,  <44.181602, 46.611263, 28.348398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.820515, 46.016209, 28.523085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.205173, 45.928520, 28.589029>,  <44.435966, 45.875908, 28.628595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.205173, 45.928520, 28.589029>,  <43.820515, 46.016209, 28.523085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.205173, 45.928520, 28.589029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247774, -0.436416, 0.864956,
		-0.117670, -0.872629, -0.473995,
		0.961645, -0.219223, 0.164862,
		44.493668, 45.862755, 28.638489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.952717, 45.262371, 28.575970>,  <43.820515, 46.016209, 28.523085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.952717, 45.262371, 28.575970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.254223, 45.442345, 28.767548>,  <44.435127, 45.550331, 28.882494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.254223, 45.442345, 28.767548>,  <43.952717, 45.262371, 28.575970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.254223, 45.442345, 28.767548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084018, -0.656869, 0.749309,
		0.651747, -0.605046, -0.457324,
		0.753769, 0.449936, 0.478947,
		44.480354, 45.577324, 28.911232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.250671, 44.686565, 28.834654>,  <43.952717, 45.262371, 28.575970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.250671, 44.686565, 28.834654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.384796, 44.989708, 29.058517>,  <44.465271, 45.171593, 29.192835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.384796, 44.989708, 29.058517>,  <44.250671, 44.686565, 28.834654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.384796, 44.989708, 29.058517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085585, -0.567090, 0.819198,
		0.938210, -0.322588, -0.125293,
		0.335316, 0.757857, 0.559658,
		44.485390, 45.217064, 29.226416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.776894, 44.500504, 29.265287>,  <44.250671, 44.686565, 28.834654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.776894, 44.500504, 29.265287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.676807, 44.827160, 29.473324>,  <44.616756, 45.023151, 29.598146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.676807, 44.827160, 29.473324>,  <44.776894, 44.500504, 29.265287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.676807, 44.827160, 29.473324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101139, -0.556288, 0.824812,
		0.962893, 0.153781, 0.221787,
		-0.250218, 0.816636, 0.520093,
		44.601742, 45.072151, 29.629353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.103210, 44.397350, 29.796961>,  <44.776894, 44.500504, 29.265287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.103210, 44.397350, 29.796961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.822311, 44.661636, 29.903027>,  <44.653774, 44.820206, 29.966667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.822311, 44.661636, 29.903027>,  <45.103210, 44.397350, 29.796961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.822311, 44.661636, 29.903027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210404, -0.548428, 0.809294,
		0.680134, 0.512531, 0.524147,
		-0.702245, 0.660711, 0.265166,
		44.611637, 44.859848, 29.982576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.155880, 44.482483, 30.537584>,  <45.103210, 44.397350, 29.796961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.155880, 44.482483, 30.537584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.793514, 44.616810, 30.434399>,  <44.576096, 44.697407, 30.372488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.793514, 44.616810, 30.434399>,  <45.155880, 44.482483, 30.537584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.793514, 44.616810, 30.434399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401295, -0.486316, 0.776183,
		0.135204, 0.806675, 0.575322,
		-0.905915, 0.335817, -0.257963,
		44.521740, 44.717556, 30.357010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.753464, 44.597996, 31.129219>,  <45.155880, 44.482483, 30.537584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.753464, 44.597996, 31.129219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.452328, 44.573441, 30.867085>,  <44.271645, 44.558708, 30.709805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.452328, 44.573441, 30.867085>,  <44.753464, 44.597996, 31.129219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.452328, 44.573441, 30.867085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577665, -0.415611, 0.702546,
		-0.315493, 0.907469, 0.277426,
		-0.752840, -0.061389, -0.655335,
		44.226475, 44.555023, 30.670485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.186943, 44.680614, 31.554434>,  <44.753464, 44.597996, 31.129219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.186943, 44.680614, 31.554434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.016834, 44.530682, 31.224915>,  <43.914768, 44.440723, 31.027203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.016834, 44.530682, 31.224915>,  <44.186943, 44.680614, 31.554434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.016834, 44.530682, 31.224915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709453, -0.427114, 0.560580,
		-0.561981, 0.822845, -0.084288,
		-0.425270, -0.374834, -0.823799,
		43.889252, 44.418232, 30.977776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.530354, 44.970161, 31.531521>,  <44.186943, 44.680614, 31.554434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.530354, 44.970161, 31.531521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.495342, 44.653698, 31.289394>,  <43.474335, 44.463821, 31.144117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.495342, 44.653698, 31.289394>,  <43.530354, 44.970161, 31.531521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.495342, 44.653698, 31.289394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676664, -0.398727, 0.618985,
		-0.731070, 0.463776, -0.500447,
		-0.087529, -0.791156, -0.605318,
		43.469082, 44.416351, 31.107800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.790524, 44.910442, 31.272348>,  <43.530354, 44.970161, 31.531521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.790524, 44.910442, 31.272348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.950237, 44.544334, 31.251001>,  <43.046066, 44.324669, 31.238194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.950237, 44.544334, 31.251001>,  <42.790524, 44.910442, 31.272348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.950237, 44.544334, 31.251001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692018, -0.339046, 0.637306,
		-0.601403, -0.217534, -0.768761,
		0.399282, -0.915274, -0.053366,
		43.070023, 44.269753, 31.234991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.173321, 44.498993, 31.118700>,  <42.790524, 44.910442, 31.272348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.173321, 44.498993, 31.118700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.475899, 44.291382, 31.277897>,  <42.657448, 44.166817, 31.373415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.475899, 44.291382, 31.277897>,  <42.173321, 44.498993, 31.118700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.475899, 44.291382, 31.277897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601501, -0.313072, 0.734971,
		-0.256868, -0.795361, -0.549017,
		0.756449, -0.519025, 0.397992,
		42.702835, 44.135674, 31.397293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.778774, 44.111031, 31.565399>,  <42.173321, 44.498993, 31.118700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.778774, 44.111031, 31.565399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.156208, 44.027916, 31.668524>,  <42.382668, 43.978046, 31.730398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.156208, 44.027916, 31.668524>,  <41.778774, 44.111031, 31.565399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.156208, 44.027916, 31.668524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317350, -0.345275, 0.883218,
		-0.094502, -0.915211, -0.391738,
		0.943588, -0.207784, 0.257813,
		42.439285, 43.965580, 31.745867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.844505, 43.424168, 31.634329>,  <41.778774, 44.111031, 31.565399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.844505, 43.424168, 31.634329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.109768, 43.590149, 31.883499>,  <42.268925, 43.689735, 32.033001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.109768, 43.590149, 31.883499>,  <41.844505, 43.424168, 31.634329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.109768, 43.590149, 31.883499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353104, -0.560376, 0.749197,
		0.659950, -0.716796, -0.225099,
		0.663161, 0.414949, 0.622924,
		42.308716, 43.714634, 32.070377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.956547, 42.932632, 32.055759>,  <41.844505, 43.424168, 31.634329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.956547, 42.932632, 32.055759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.117245, 43.238922, 32.256664>,  <42.213665, 43.422695, 32.377205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.117245, 43.238922, 32.256664>,  <41.956547, 42.932632, 32.055759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.117245, 43.238922, 32.256664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282177, -0.418268, 0.863382,
		0.871193, -0.488586, 0.048033,
		0.401745, 0.765726, 0.502259,
		42.237770, 43.468639, 32.407341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.425472, 42.604156, 32.593758>,  <41.956547, 42.932632, 32.055759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.425472, 42.604156, 32.593758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.333775, 42.978893, 32.699413>,  <42.278755, 43.203735, 32.762806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.333775, 42.978893, 32.699413>,  <42.425472, 42.604156, 32.593758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.333775, 42.978893, 32.699413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328331, -0.329888, 0.885083,
		0.916323, 0.116173, 0.383219,
		-0.229243, 0.936845, 0.264141,
		42.265003, 43.259945, 32.778656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.621155, 42.597473, 33.180885>,  <42.425472, 42.604156, 32.593758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.621155, 42.597473, 33.180885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.364109, 42.903927, 33.177311>,  <42.209881, 43.087799, 33.175167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.364109, 42.903927, 33.177311>,  <42.621155, 42.597473, 33.180885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.364109, 42.903927, 33.177311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302700, -0.243147, 0.921549,
		0.703861, 0.594905, 0.388160,
		-0.642614, 0.766138, -0.008936,
		42.171326, 43.133770, 33.174629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.828842, 43.016541, 33.784813>,  <42.621155, 42.597473, 33.180885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.828842, 43.016541, 33.784813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.451275, 43.093838, 33.677731>,  <42.224735, 43.140217, 33.613480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.451275, 43.093838, 33.677731>,  <42.828842, 43.016541, 33.784813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.451275, 43.093838, 33.677731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295272, -0.131260, 0.946353,
		0.147738, 0.972331, 0.180959,
		-0.943922, 0.193244, -0.267710,
		42.168098, 43.151810, 33.597416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.567066, 43.304012, 34.345657>,  <42.828842, 43.016541, 33.784813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.567066, 43.304012, 34.345657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.233833, 43.225746, 34.138702>,  <42.033894, 43.178787, 34.014530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.233833, 43.225746, 34.138702>,  <42.567066, 43.304012, 34.345657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.233833, 43.225746, 34.138702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471054, -0.239387, 0.849001,
		-0.289978, 0.951004, 0.107259,
		-0.833079, -0.195666, -0.517391,
		41.983910, 43.167046, 33.983486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.937737, 43.450073, 34.821568>,  <42.567066, 43.304012, 34.345657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.937737, 43.450073, 34.821568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.769966, 43.231384, 34.531693>,  <41.669304, 43.100170, 34.357769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.769966, 43.231384, 34.531693>,  <41.937737, 43.450073, 34.821568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.769966, 43.231384, 34.531693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535440, -0.495657, 0.683833,
		-0.733065, 0.674846, -0.084846,
		-0.419428, -0.546724, -0.724688,
		41.644138, 43.067368, 34.314285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.214043, 43.534714, 34.896450>,  <41.937737, 43.450073, 34.821568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.214043, 43.534714, 34.896450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.297291, 43.188961, 34.713352>,  <41.347240, 42.981510, 34.603493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.297291, 43.188961, 34.713352>,  <41.214043, 43.534714, 34.896450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.297291, 43.188961, 34.713352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703621, -0.457388, 0.543795,
		-0.679412, 0.208901, -0.703391,
		0.208124, -0.864382, -0.457742,
		41.359730, 42.929646, 34.576031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.570221, 43.232689, 34.670235>,  <41.214043, 43.534714, 34.896450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.570221, 43.232689, 34.670235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.825500, 42.926117, 34.699326>,  <40.978668, 42.742172, 34.716782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.825500, 42.926117, 34.699326>,  <40.570221, 43.232689, 34.670235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.825500, 42.926117, 34.699326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720131, -0.560889, 0.408431,
		-0.272242, -0.313032, -0.909887,
		0.638198, -0.766430, 0.072726,
		41.016960, 42.696186, 34.721142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.204243, 42.537235, 34.617199>,  <40.570221, 43.232689, 34.670235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.204243, 42.537235, 34.617199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.550358, 42.460346, 34.802380>,  <40.758026, 42.414211, 34.913486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.550358, 42.460346, 34.802380>,  <40.204243, 42.537235, 34.617199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.550358, 42.460346, 34.802380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462625, -0.661830, 0.589880,
		0.193002, -0.724589, -0.661605,
		0.865290, -0.192227, 0.462948,
		40.809944, 42.402679, 34.941265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.186440, 41.851707, 34.600155>,  <40.204243, 42.537235, 34.617199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.186440, 41.851707, 34.600155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.461052, 41.930695, 34.880066>,  <40.625820, 41.978088, 35.048012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.461052, 41.930695, 34.880066>,  <40.186440, 41.851707, 34.600155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.461052, 41.930695, 34.880066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338910, -0.764566, 0.548251,
		0.643288, -0.613550, -0.457971,
		0.686529, 0.197472, 0.699774,
		40.667011, 41.989937, 35.089996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.371948, 41.158928, 34.909119>,  <40.186440, 41.851707, 34.600155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.371948, 41.158928, 34.909119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.496002, 41.419254, 35.186321>,  <40.570435, 41.575451, 35.352642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.496002, 41.419254, 35.186321>,  <40.371948, 41.158928, 34.909119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.496002, 41.419254, 35.186321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303441, -0.623054, 0.720921,
		0.900967, -0.433867, 0.004256,
		0.310132, 0.650817, 0.693004,
		40.589043, 41.614498, 35.394222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.809174, 40.778038, 35.382736>,  <40.371948, 41.158928, 34.909119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.809174, 40.778038, 35.382736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.663021, 41.107288, 35.556614>,  <40.575329, 41.304840, 35.660942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.663021, 41.107288, 35.556614>,  <40.809174, 40.778038, 35.382736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.663021, 41.107288, 35.556614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332868, -0.551645, 0.764779,
		0.869307, 0.134739, 0.475553,
		-0.365382, 0.823124, 0.434698,
		40.553406, 41.354225, 35.687023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.803669, 40.567326, 36.088596>,  <40.809174, 40.778038, 35.382736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.803669, 40.567326, 36.088596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.562599, 40.886379, 36.098125>,  <40.417957, 41.077812, 36.103844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.562599, 40.886379, 36.098125>,  <40.803669, 40.567326, 36.088596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.562599, 40.886379, 36.098125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643229, -0.503248, 0.577060,
		0.472271, 0.332454, 0.816354,
		-0.602675, 0.797631, 0.023826,
		40.381798, 41.125668, 36.105274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.861347, 40.793869, 36.829365>,  <40.803669, 40.567326, 36.088596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.861347, 40.793869, 36.829365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.529064, 40.949047, 36.669651>,  <40.329697, 41.042152, 36.573822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.529064, 40.949047, 36.669651>,  <40.861347, 40.793869, 36.829365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.529064, 40.949047, 36.669651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555067, -0.522070, 0.647568,
		0.042763, 0.759569, 0.649019,
		-0.830706, 0.387941, -0.399286,
		40.279854, 41.065430, 36.549866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.450668, 40.875549, 37.354115>,  <40.861347, 40.793869, 36.829365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.450668, 40.875549, 37.354115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.196770, 40.862316, 37.045311>,  <40.044430, 40.854378, 36.860027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.196770, 40.862316, 37.045311>,  <40.450668, 40.875549, 37.354115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.196770, 40.862316, 37.045311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594554, -0.617239, 0.515288,
		-0.493562, 0.786080, 0.372123,
		-0.634746, -0.033080, -0.772013,
		40.006348, 40.852394, 36.813705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.845699, 40.959892, 37.654465>,  <40.450668, 40.875549, 37.354115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.845699, 40.959892, 37.654465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.754078, 40.778629, 37.309864>,  <39.699104, 40.669872, 37.103104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.754078, 40.778629, 37.309864>,  <39.845699, 40.959892, 37.654465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.754078, 40.778629, 37.309864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708530, -0.529255, 0.466769,
		-0.667473, 0.717315, -0.199846,
		-0.229051, -0.453153, -0.861503,
		39.685364, 40.642685, 37.051414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.139275, 40.727024, 37.769520>,  <39.845699, 40.959892, 37.654465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.139275, 40.727024, 37.769520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.194004, 40.529774, 37.425869>,  <39.226841, 40.411423, 37.219677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.194004, 40.529774, 37.425869>,  <39.139275, 40.727024, 37.769520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.194004, 40.529774, 37.425869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647867, -0.700631, 0.298973,
		-0.749364, 0.515693, -0.415348,
		0.136827, -0.493130, -0.859128,
		39.235054, 40.381836, 37.168129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.453896, 40.481400, 37.556355>,  <39.139275, 40.727024, 37.769520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.453896, 40.481400, 37.556355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.742306, 40.265308, 37.382790>,  <38.915352, 40.135654, 37.278652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.742306, 40.265308, 37.382790>,  <38.453896, 40.481400, 37.556355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.742306, 40.265308, 37.382790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491175, -0.840181, 0.229877,
		-0.488750, 0.047379, -0.871137,
		0.721021, -0.540233, -0.433910,
		38.958611, 40.103237, 37.252617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.036476, 40.071083, 37.336689>,  <38.453896, 40.481400, 37.556355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.036476, 40.071083, 37.336689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.397102, 39.900085, 37.310085>,  <38.613480, 39.797489, 37.294125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.397102, 39.900085, 37.310085>,  <38.036476, 40.071083, 37.336689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.397102, 39.900085, 37.310085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392781, -0.873237, 0.288409,
		-0.181370, -0.233897, -0.955195,
		0.901570, -0.427491, -0.066509,
		38.667572, 39.771839, 37.290134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.894211, 39.423542, 37.129227>,  <38.036476, 40.071083, 37.336689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.894211, 39.423542, 37.129227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.259193, 39.373184, 37.284962>,  <38.478184, 39.342968, 37.378403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.259193, 39.373184, 37.284962>,  <37.894211, 39.423542, 37.129227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.259193, 39.373184, 37.284962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278401, -0.888316, 0.365222,
		0.299874, -0.441639, -0.845595,
		0.912452, -0.125893, 0.389336,
		38.532928, 39.335415, 37.401764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.131474, 38.686340, 37.030834>,  <37.894211, 39.423542, 37.129227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.131474, 38.686340, 37.030834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.367397, 38.825291, 37.322437>,  <38.508953, 38.908661, 37.497398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.367397, 38.825291, 37.322437>,  <38.131474, 38.686340, 37.030834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.367397, 38.825291, 37.322437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210782, -0.805234, 0.554228,
		0.779549, -0.480551, -0.401715,
		0.589809, 0.347373, 0.729011,
		38.544338, 38.929504, 37.541142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.566345, 38.150784, 37.324543>,  <38.131474, 38.686340, 37.030834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.566345, 38.150784, 37.324543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.569839, 38.421715, 37.618793>,  <38.571934, 38.584274, 37.795345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.569839, 38.421715, 37.618793>,  <38.566345, 38.150784, 37.324543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.569839, 38.421715, 37.618793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126845, -0.728961, 0.672701,
		0.991884, -0.099183, 0.079551,
		0.008731, 0.677332, 0.735626,
		38.572460, 38.624916, 37.839481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.971107, 37.543701, 37.582256>,  <38.566345, 38.150784, 37.324543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.971107, 37.543701, 37.582256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.104855, 37.170670, 37.527855>,  <39.185104, 36.946850, 37.495216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.104855, 37.170670, 37.527855>,  <38.971107, 37.543701, 37.582256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.104855, 37.170670, 37.527855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730725, 0.347674, -0.587506,
		0.595180, 0.097064, 0.797709,
		0.334369, -0.932578, -0.136001,
		39.205166, 36.890896, 37.487053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.664600, 37.522686, 37.800621>,  <38.971107, 37.543701, 37.582256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.664600, 37.522686, 37.800621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.609001, 37.218662, 37.546696>,  <39.575642, 37.036247, 37.394341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.609001, 37.218662, 37.546696>,  <39.664600, 37.522686, 37.800621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.609001, 37.218662, 37.546696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802549, 0.289094, -0.521861,
		0.580167, -0.582008, 0.569801,
		-0.139001, -0.760060, -0.634813,
		39.567303, 36.990643, 37.356251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.325233, 37.271816, 37.694153>,  <39.664600, 37.522686, 37.800621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.325233, 37.271816, 37.694153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.095951, 37.180458, 37.379375>,  <39.958382, 37.125645, 37.190510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.095951, 37.180458, 37.379375>,  <40.325233, 37.271816, 37.694153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.095951, 37.180458, 37.379375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756469, 0.221628, -0.615334,
		0.314946, -0.948007, 0.045735,
		-0.573204, -0.228395, -0.786939,
		39.923988, 37.111938, 37.143295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.793716, 36.865204, 37.289074>,  <40.325233, 37.271816, 37.694153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.793716, 36.865204, 37.289074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.498447, 36.996063, 37.053082>,  <40.321285, 37.074577, 36.911484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.498447, 36.996063, 37.053082>,  <40.793716, 36.865204, 37.289074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.498447, 36.996063, 37.053082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664327, 0.200344, -0.720092,
		-0.117377, -0.923491, -0.365221,
		-0.738168, 0.327148, -0.589984,
		40.276997, 37.094208, 36.876087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.996521, 36.528809, 36.673298>,  <40.793716, 36.865204, 37.289074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.996521, 36.528809, 36.673298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.749260, 36.823658, 36.564095>,  <40.600903, 37.000568, 36.498573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.749260, 36.823658, 36.564095>,  <40.996521, 36.528809, 36.673298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.749260, 36.823658, 36.564095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632582, 0.260329, -0.729430,
		-0.466609, -0.623601, -0.627215,
		-0.618156, 0.737123, -0.273006,
		40.563812, 37.044796, 36.482193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.695988, 36.367760, 35.940800>,  <40.996521, 36.528809, 36.673298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.695988, 36.367760, 35.940800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.653507, 36.757442, 36.020439>,  <40.628021, 36.991253, 36.068222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.653507, 36.757442, 36.020439>,  <40.695988, 36.367760, 35.940800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.653507, 36.757442, 36.020439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410198, 0.225321, -0.883724,
		-0.905793, -0.012179, -0.423546,
		-0.106197, 0.974209, 0.199098,
		40.621647, 37.049706, 36.080170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.542702, 36.577579, 35.350563>,  <40.695988, 36.367760, 35.940800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.542702, 36.577579, 35.350563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.655033, 36.915379, 35.532970>,  <40.722431, 37.118057, 35.642414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.655033, 36.915379, 35.532970>,  <40.542702, 36.577579, 35.350563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.655033, 36.915379, 35.532970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478674, 0.288585, -0.829211,
		-0.831869, 0.451152, -0.323197,
		0.280830, 0.844500, 0.456019,
		40.739281, 37.168728, 35.669777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.349438, 37.183918, 34.895763>,  <40.542702, 36.577579, 35.350563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.349438, 37.183918, 34.895763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.636059, 37.291679, 35.153126>,  <40.808033, 37.356335, 35.307545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.636059, 37.291679, 35.153126>,  <40.349438, 37.183918, 34.895763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.636059, 37.291679, 35.153126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519826, 0.408811, -0.750103,
		-0.465110, 0.871949, 0.152894,
		0.716557, 0.269402, 0.643404,
		40.851025, 37.372501, 35.346146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.428127, 37.855343, 34.817257>,  <40.349438, 37.183918, 34.895763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.428127, 37.855343, 34.817257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.781593, 37.743397, 34.967354>,  <40.993675, 37.676231, 35.057411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.781593, 37.743397, 34.967354>,  <40.428127, 37.855343, 34.817257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.781593, 37.743397, 34.967354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466873, 0.468562, -0.749986,
		0.034066, 0.837930, 0.544713,
		0.883668, -0.279862, 0.375245,
		41.046692, 37.659439, 35.079926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.809456, 38.442226, 34.737659>,  <40.428127, 37.855343, 34.817257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.809456, 38.442226, 34.737659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.083885, 38.158974, 34.804417>,  <41.248543, 37.989021, 34.844471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.083885, 38.158974, 34.804417>,  <40.809456, 38.442226, 34.737659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.083885, 38.158974, 34.804417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618904, 0.447487, -0.645533,
		0.382442, 0.546171, 0.745275,
		0.686072, -0.708133, 0.166890,
		41.289707, 37.946533, 34.854485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.469658, 38.802574, 34.916477>,  <40.809456, 38.442226, 34.737659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.469658, 38.802574, 34.916477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.556740, 38.431416, 34.795403>,  <41.608990, 38.208721, 34.722759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.556740, 38.431416, 34.795403>,  <41.469658, 38.802574, 34.916477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.556740, 38.431416, 34.795403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675798, 0.367061, -0.639190,
		0.704204, -0.065401, 0.706979,
		0.217700, -0.927895, -0.302684,
		41.622051, 38.153046, 34.704597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.163280, 38.686039, 35.176758>,  <41.469658, 38.802574, 34.916477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.163280, 38.686039, 35.176758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.072445, 38.471519, 34.851597>,  <42.017944, 38.342808, 34.656498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.072445, 38.471519, 34.851597>,  <42.163280, 38.686039, 35.176758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.072445, 38.471519, 34.851597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658055, 0.530826, -0.534030,
		0.717910, -0.656209, 0.232369,
		-0.227088, -0.536297, -0.812907,
		42.004318, 38.310631, 34.607723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.822132, 38.513096, 34.968094>,  <42.163280, 38.686039, 35.176758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.822132, 38.513096, 34.968094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.570015, 38.471470, 34.660355>,  <42.418743, 38.446495, 34.475712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.570015, 38.471470, 34.660355>,  <42.822132, 38.513096, 34.968094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.570015, 38.471470, 34.660355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604662, 0.555752, -0.570547,
		0.486944, -0.824809, -0.287361,
		-0.630293, -0.104068, -0.769350,
		42.380928, 38.440250, 34.429550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.229477, 38.348911, 34.453846>,  <42.822132, 38.513096, 34.968094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.229477, 38.348911, 34.453846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.907402, 38.469128, 34.249359>,  <42.714157, 38.541260, 34.126667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.907402, 38.469128, 34.249359>,  <43.229477, 38.348911, 34.453846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.907402, 38.469128, 34.249359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592101, 0.455434, -0.664829,
		0.033016, -0.838005, -0.544662,
		-0.805187, 0.300545, -0.511220,
		42.665844, 38.559292, 34.095993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.523937, 38.351063, 33.747242>,  <43.229477, 38.348911, 34.453846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.523937, 38.351063, 33.747242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.180397, 38.550640, 33.700871>,  <42.974274, 38.670387, 33.673046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.180397, 38.550640, 33.700871>,  <43.523937, 38.351063, 33.747242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.180397, 38.550640, 33.700871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392359, 0.495298, -0.775070,
		-0.329296, -0.711152, -0.621150,
		-0.858847, 0.498941, -0.115927,
		42.922745, 38.700321, 33.666092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.225697, 38.204884, 33.010319>,  <43.523937, 38.351063, 33.747242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.225697, 38.204884, 33.010319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.094547, 38.558804, 33.142765>,  <43.015858, 38.771156, 33.222233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.094547, 38.558804, 33.142765>,  <43.225697, 38.204884, 33.010319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.094547, 38.558804, 33.142765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295445, 0.428939, -0.853653,
		-0.897336, -0.182064, -0.402046,
		-0.327873, 0.884796, 0.331112,
		42.996185, 38.824242, 33.242100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.988224, 38.558537, 32.344559>,  <43.225697, 38.204884, 33.010319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.988224, 38.558537, 32.344559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.942993, 38.841145, 32.624001>,  <42.915855, 39.010708, 32.791664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.942993, 38.841145, 32.624001>,  <42.988224, 38.558537, 32.344559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.942993, 38.841145, 32.624001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242617, 0.701463, -0.670139,
		-0.963509, 0.093714, -0.250734,
		-0.113079, 0.706518, 0.698603,
		42.909069, 39.053101, 32.833580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.493816, 39.021420, 32.161667>,  <42.988224, 38.558537, 32.344559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.493816, 39.021420, 32.161667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.742699, 39.221371, 32.402657>,  <42.892029, 39.341343, 32.547249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.742699, 39.221371, 32.402657>,  <42.493816, 39.021420, 32.161667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.742699, 39.221371, 32.402657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296082, 0.562159, -0.772213,
		-0.724701, 0.658859, 0.201774,
		0.622209, 0.499882, 0.602474,
		42.929359, 39.371334, 32.583397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.355217, 39.753841, 32.009315>,  <42.493816, 39.021420, 32.161667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.355217, 39.753841, 32.009315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.713524, 39.741356, 32.186684>,  <42.928509, 39.733864, 32.293106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.713524, 39.741356, 32.186684>,  <42.355217, 39.753841, 32.009315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.713524, 39.741356, 32.186684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353274, 0.655446, -0.667524,
		-0.269805, 0.754597, 0.598154,
		0.895770, -0.031211, 0.443422,
		42.982254, 39.731991, 32.319710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.549229, 40.400639, 31.992416>,  <42.355217, 39.753841, 32.009315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.549229, 40.400639, 31.992416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.915993, 40.254707, 32.057137>,  <43.136051, 40.167149, 32.095970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.915993, 40.254707, 32.057137>,  <42.549229, 40.400639, 31.992416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.915993, 40.254707, 32.057137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397839, 0.867706, -0.298012,
		-0.031673, 0.337620, 0.940749,
		0.916908, -0.364828, 0.161801,
		43.191067, 40.145260, 32.105679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.991592, 40.880714, 32.346390>,  <42.549229, 40.400639, 31.992416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.991592, 40.880714, 32.346390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.205269, 40.632698, 32.116543>,  <43.333473, 40.483887, 31.978634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.205269, 40.632698, 32.116543>,  <42.991592, 40.880714, 32.346390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.205269, 40.632698, 32.116543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443305, 0.784235, -0.434116,
		0.719808, -0.022832, 0.693798,
		0.534188, -0.620044, -0.574620,
		43.365524, 40.446686, 31.944157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.606895, 41.128651, 32.259907>,  <42.991592, 40.880714, 32.346390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.606895, 41.128651, 32.259907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.585621, 40.896229, 31.935059>,  <43.572857, 40.756775, 31.740149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.585621, 40.896229, 31.935059>,  <43.606895, 41.128651, 32.259907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.585621, 40.896229, 31.935059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414317, 0.727128, -0.547381,
		0.908577, -0.365589, 0.202069,
		-0.053187, -0.581059, -0.812122,
		43.569664, 40.721912, 31.691422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.297501, 41.204674, 31.888926>,  <43.606895, 41.128651, 32.259907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.297501, 41.204674, 31.888926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.003208, 41.101959, 31.638245>,  <43.826633, 41.040329, 31.487837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.003208, 41.101959, 31.638245>,  <44.297501, 41.204674, 31.888926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.003208, 41.101959, 31.638245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254847, 0.752358, -0.607463,
		0.627493, -0.606644, -0.488093,
		-0.735734, -0.256789, -0.626701,
		43.782490, 41.024921, 31.450233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.603039, 41.257095, 31.193714>,  <44.297501, 41.204674, 31.888926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.603039, 41.257095, 31.193714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.223087, 41.232689, 31.071074>,  <43.995117, 41.218044, 30.997490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.223087, 41.232689, 31.071074>,  <44.603039, 41.257095, 31.193714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.223087, 41.232689, 31.071074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226743, 0.540706, -0.810077,
		0.215210, -0.838996, -0.499770,
		-0.949880, -0.061017, -0.306602,
		43.938122, 41.214382, 30.979094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.597580, 40.956688, 30.542124>,  <44.603039, 41.257095, 31.193714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.597580, 40.956688, 30.542124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.236755, 41.128662, 30.557291>,  <44.020260, 41.231846, 30.566391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.236755, 41.128662, 30.557291>,  <44.597580, 40.956688, 30.542124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.236755, 41.128662, 30.557291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163707, 0.422113, -0.891639,
		-0.399357, -0.798105, -0.451156,
		-0.902061, 0.429940, 0.037919,
		43.966137, 41.257645, 30.568666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.240093, 40.840336, 29.902927>,  <44.597580, 40.956688, 30.542124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.240093, 40.840336, 29.902927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.054115, 41.145824, 30.082062>,  <43.942528, 41.329117, 30.189543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.054115, 41.145824, 30.082062>,  <44.240093, 40.840336, 29.902927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.054115, 41.145824, 30.082062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133796, 0.560635, -0.817182,
		-0.875172, -0.320026, -0.362847,
		-0.464944, 0.763722, 0.447834,
		43.914631, 41.374943, 30.216412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.781197, 40.986786, 29.527756>,  <44.240093, 40.840336, 29.902927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.781197, 40.986786, 29.527756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.807346, 41.332066, 29.728004>,  <43.823036, 41.539234, 29.848154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.807346, 41.332066, 29.728004>,  <43.781197, 40.986786, 29.527756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.807346, 41.332066, 29.728004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094752, 0.504796, -0.858023,
		-0.993352, 0.008654, 0.114788,
		0.065370, 0.863195, 0.500621,
		43.826958, 41.591022, 29.878191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.145100, 41.350990, 29.333752>,  <43.781197, 40.986786, 29.527756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.145100, 41.350990, 29.333752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.417747, 41.620380, 29.448170>,  <43.581337, 41.782013, 29.516821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.417747, 41.620380, 29.448170>,  <43.145100, 41.350990, 29.333752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.417747, 41.620380, 29.448170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199060, 0.546866, -0.813211,
		-0.704106, 0.497362, 0.506818,
		0.681622, 0.673474, 0.286047,
		43.622234, 41.822422, 29.533983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.783722, 42.097309, 29.173561>,  <43.145100, 41.350990, 29.333752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.783722, 42.097309, 29.173561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.176441, 42.151760, 29.226542>,  <43.412071, 42.184433, 29.258329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.176441, 42.151760, 29.226542>,  <42.783722, 42.097309, 29.173561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.176441, 42.151760, 29.226542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019438, 0.621687, -0.783025,
		-0.188936, 0.771346, 0.607724,
		0.981797, 0.136129, 0.132452,
		43.470982, 42.192600, 29.266277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.853909, 42.779182, 29.109240>,  <42.783722, 42.097309, 29.173561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.853909, 42.779182, 29.109240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.215469, 42.627136, 29.030775>,  <43.432407, 42.535908, 28.983696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.215469, 42.627136, 29.030775>,  <42.853909, 42.779182, 29.109240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.215469, 42.627136, 29.030775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016417, 0.427427, -0.903901,
		0.427427, 0.820257, 0.380111,
		0.903901, -0.380111, -0.196160,
		43.486641, 42.513103, 28.971928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.191219, 43.358158, 28.716978>,  <42.853909, 42.779182, 29.109240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.191219, 43.358158, 28.716978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.418804, 43.032822, 28.668385>,  <43.555355, 42.837620, 28.639229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.418804, 43.032822, 28.668385>,  <43.191219, 43.358158, 28.716978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.418804, 43.032822, 28.668385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223045, 0.294811, -0.929160,
		0.791536, 0.501565, 0.349148,
		0.568966, -0.813339, -0.121482,
		43.589493, 42.788818, 28.631941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.762119, 43.655235, 28.344490>,  <43.191219, 43.358158, 28.716978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.762119, 43.655235, 28.344490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.804218, 43.260494, 28.295412>,  <43.829479, 43.023651, 28.265966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.804218, 43.260494, 28.295412>,  <43.762119, 43.655235, 28.344490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.804218, 43.260494, 28.295412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224128, 0.143745, -0.963900,
		0.968860, 0.073951, 0.236309,
		0.105249, -0.986848, -0.122694,
		43.835793, 42.964439, 28.258604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.531796, 43.501610, 28.102341>,  <43.762119, 43.655235, 28.344490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.531796, 43.501610, 28.102341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.303497, 43.195343, 27.983679>,  <44.166519, 43.011581, 27.912481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.303497, 43.195343, 27.983679>,  <44.531796, 43.501610, 28.102341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.303497, 43.195343, 27.983679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160845, 0.250029, -0.954785,
		0.805222, -0.592651, -0.019548,
		-0.570742, -0.765670, -0.296654,
		44.132275, 42.965641, 27.894682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.874905, 43.130295, 27.568806>,  <44.531796, 43.501610, 28.102341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.874905, 43.130295, 27.568806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.498234, 43.023857, 27.486397>,  <44.272232, 42.959995, 27.436953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.498234, 43.023857, 27.486397>,  <44.874905, 43.130295, 27.568806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.498234, 43.023857, 27.486397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120452, 0.305138, -0.944660,
		0.314252, -0.914371, -0.255285,
		-0.941667, -0.266112, -0.206028,
		44.215733, 42.944031, 27.424591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.916344, 42.686096, 26.955294>,  <44.874905, 43.130295, 27.568806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.916344, 42.686096, 26.955294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.532520, 42.797123, 26.974077>,  <44.302227, 42.863739, 26.985348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.532520, 42.797123, 26.974077>,  <44.916344, 42.686096, 26.955294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.532520, 42.797123, 26.974077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008799, 0.137151, -0.990511,
		-0.281376, -0.950865, -0.129162,
		-0.959557, 0.277570, 0.046958,
		44.244652, 42.880394, 26.988165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.568516, 42.289215, 26.548000>,  <44.916344, 42.686096, 26.955294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.568516, 42.289215, 26.548000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.359718, 42.630383, 26.551044>,  <44.234440, 42.835083, 26.552870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.359718, 42.630383, 26.551044>,  <44.568516, 42.289215, 26.548000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.359718, 42.630383, 26.551044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091681, 0.064975, -0.993666,
		-0.848009, -0.517988, -0.112113,
		-0.521992, 0.852916, 0.007609,
		44.203121, 42.886257, 26.553328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.256676, 42.246983, 25.942257>,  <44.568516, 42.289215, 26.548000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.256676, 42.246983, 25.942257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.245461, 42.627724, 26.064363>,  <44.238731, 42.856167, 26.137629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.245461, 42.627724, 26.064363>,  <44.256676, 42.246983, 25.942257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.245461, 42.627724, 26.064363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446725, 0.285128, -0.848021,
		-0.894232, 0.112594, -0.433211,
		-0.028038, 0.951853, 0.305269,
		44.237049, 42.913280, 26.155945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.083755, 42.561577, 25.362827>,  <44.256676, 42.246983, 25.942257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.083755, 42.561577, 25.362827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.261795, 42.816345, 25.614611>,  <44.368618, 42.969208, 25.765680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.261795, 42.816345, 25.614611>,  <44.083755, 42.561577, 25.362827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.261795, 42.816345, 25.614611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542799, 0.367177, -0.755348,
		-0.712219, 0.677875, -0.182289,
		0.445100, 0.636920, 0.629460,
		44.395325, 43.007420, 25.803450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.833626, 43.019989, 24.981577>,  <44.083755, 42.561577, 25.362827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.833626, 43.019989, 24.981577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.561691, 42.797218, 24.790720>,  <43.398533, 42.663555, 24.676205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.561691, 42.797218, 24.790720>,  <43.833626, 43.019989, 24.981577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.561691, 42.797218, 24.790720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532945, -0.071764, 0.843101,
		-0.503784, 0.827459, -0.248021,
		-0.679832, -0.556922, -0.477143,
		43.357742, 42.630142, 24.647577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.155853, 43.158344, 25.347315>,  <43.833626, 43.019989, 24.981577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.155853, 43.158344, 25.347315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.137142, 42.816292, 25.140797>,  <43.125916, 42.611061, 25.016886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.137142, 42.816292, 25.140797>,  <43.155853, 43.158344, 25.347315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.137142, 42.816292, 25.140797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431987, -0.448714, 0.782331,
		-0.900666, 0.259626, -0.348418,
		-0.046773, -0.855131, -0.516297,
		43.123112, 42.559753, 24.985909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.489651, 42.919056, 25.419573>,  <43.155853, 43.158344, 25.347315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.489651, 42.919056, 25.419573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.688282, 42.585033, 25.324841>,  <42.807461, 42.384621, 25.268002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.688282, 42.585033, 25.324841>,  <42.489651, 42.919056, 25.419573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.688282, 42.585033, 25.324841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435559, -0.475737, 0.764175,
		-0.750801, -0.276316, -0.599956,
		0.496575, -0.835059, -0.236832,
		42.837254, 42.334515, 25.253792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.072735, 42.324909, 25.537857>,  <42.489651, 42.919056, 25.419573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.072735, 42.324909, 25.537857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.407520, 42.107212, 25.514931>,  <42.608391, 41.976593, 25.501175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.407520, 42.107212, 25.514931>,  <42.072735, 42.324909, 25.537857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.407520, 42.107212, 25.514931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281565, -0.518064, 0.807670,
		-0.469262, -0.659855, -0.586843,
		0.836967, -0.544243, -0.057316,
		42.658611, 41.943939, 25.497736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.839798, 41.644428, 25.577671>,  <42.072735, 42.324909, 25.537857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.839798, 41.644428, 25.577671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.226727, 41.632324, 25.678362>,  <42.458885, 41.625061, 25.738775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.226727, 41.632324, 25.678362>,  <41.839798, 41.644428, 25.577671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.226727, 41.632324, 25.678362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223791, -0.568518, 0.791647,
		0.119160, -0.822114, -0.556712,
		0.967325, -0.030255, 0.251726,
		42.516926, 41.623249, 25.753880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.005226, 40.921108, 25.674545>,  <41.839798, 41.644428, 25.577671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.005226, 40.921108, 25.674545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.295990, 41.112495, 25.871590>,  <42.470448, 41.227329, 25.989817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.295990, 41.112495, 25.871590>,  <42.005226, 40.921108, 25.674545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.295990, 41.112495, 25.871590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042210, -0.684839, 0.727470,
		0.685431, -0.549601, -0.477622,
		0.726913, 0.478471, 0.492609,
		42.514065, 41.256035, 26.019373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.414131, 40.434921, 25.926468>,  <42.005226, 40.921108, 25.674545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.414131, 40.434921, 25.926468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.488598, 40.752335, 26.158207>,  <42.533279, 40.942783, 26.297251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.488598, 40.752335, 26.158207>,  <42.414131, 40.434921, 25.926468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.488598, 40.752335, 26.158207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030813, -0.594083, 0.803814,
		0.982034, -0.131794, -0.135052,
		0.186170, 0.793534, 0.579349,
		42.544449, 40.990395, 26.332012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.989887, 40.326603, 26.481169>,  <42.414131, 40.434921, 25.926468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.989887, 40.326603, 26.481169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.739975, 40.595573, 26.639914>,  <42.590027, 40.756954, 26.735161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.739975, 40.595573, 26.639914>,  <42.989887, 40.326603, 26.481169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.739975, 40.595573, 26.639914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113963, -0.581364, 0.805623,
		0.772439, 0.458110, 0.439856,
		-0.624781, 0.672422, 0.396860,
		42.552540, 40.797298, 26.758972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.142479, 40.287235, 27.153759>,  <42.989887, 40.326603, 26.481169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.142479, 40.287235, 27.153759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.785999, 40.468430, 27.144188>,  <42.572113, 40.577145, 27.138445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.785999, 40.468430, 27.144188>,  <43.142479, 40.287235, 27.153759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.785999, 40.468430, 27.144188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311749, -0.573305, 0.757716,
		0.329517, 0.682734, 0.652145,
		-0.891197, 0.452986, -0.023927,
		42.518639, 40.604324, 27.137011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.098656, 40.398029, 27.807632>,  <43.142479, 40.287235, 27.153759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.098656, 40.398029, 27.807632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.725910, 40.461990, 27.677370>,  <42.502262, 40.500366, 27.599213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.725910, 40.461990, 27.677370>,  <43.098656, 40.398029, 27.807632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.725910, 40.461990, 27.677370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362637, -0.437139, 0.823045,
		-0.010749, 0.885065, 0.465343,
		-0.931868, 0.159904, -0.325656,
		42.446350, 40.509960, 27.579674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.727856, 40.760555, 28.259769>,  <43.098656, 40.398029, 27.807632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.727856, 40.760555, 28.259769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.455128, 40.564152, 28.042868>,  <42.291492, 40.446312, 27.912725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.455128, 40.564152, 28.042868>,  <42.727856, 40.760555, 28.259769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.455128, 40.564152, 28.042868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270034, -0.519983, 0.810370,
		-0.679860, 0.698950, 0.221944,
		-0.681815, -0.491006, -0.542256,
		42.250584, 40.416851, 27.880192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.202744, 40.698296, 28.708267>,  <42.727856, 40.760555, 28.259769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.202744, 40.698296, 28.708267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.098175, 40.422813, 28.437759>,  <42.035435, 40.257523, 28.275454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.098175, 40.422813, 28.437759>,  <42.202744, 40.698296, 28.708267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.098175, 40.422813, 28.437759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091075, -0.679910, 0.727618,
		-0.960917, 0.251809, 0.115021,
		-0.261424, -0.688705, -0.676271,
		42.019749, 40.216202, 28.234879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.459099, 40.533588, 28.811850>,  <42.202744, 40.698296, 28.708267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.459099, 40.533588, 28.811850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.685814, 40.239002, 28.664133>,  <41.821842, 40.062252, 28.575504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.685814, 40.239002, 28.664133>,  <41.459099, 40.533588, 28.811850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.685814, 40.239002, 28.664133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355373, -0.622941, 0.696890,
		-0.743280, -0.263751, -0.614793,
		0.566785, -0.736465, -0.369290,
		41.855850, 40.018063, 28.553347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.043839, 39.992714, 28.884714>,  <41.459099, 40.533588, 28.811850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.043839, 39.992714, 28.884714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.395210, 39.818497, 28.806053>,  <41.606033, 39.713966, 28.758858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.395210, 39.818497, 28.806053>,  <41.043839, 39.992714, 28.884714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.395210, 39.818497, 28.806053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310391, -0.832895, 0.458196,
		-0.363352, -0.341453, -0.866825,
		0.878426, -0.435541, -0.196650,
		41.658737, 39.687836, 28.747059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.859230, 39.286190, 28.804575>,  <41.043839, 39.992714, 28.884714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.859230, 39.286190, 28.804575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.251778, 39.297993, 28.880520>,  <41.487305, 39.305073, 28.926086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.251778, 39.297993, 28.880520>,  <40.859230, 39.286190, 28.804575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.251778, 39.297993, 28.880520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080602, -0.833771, 0.546195,
		0.174420, -0.551321, -0.815857,
		0.981367, 0.029507, 0.189864,
		41.546188, 39.306847, 28.937479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.982498, 38.638969, 28.851803>,  <40.859230, 39.286190, 28.804575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.982498, 38.638969, 28.851803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.301697, 38.814255, 29.017298>,  <41.493214, 38.919426, 29.116594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.301697, 38.814255, 29.017298>,  <40.982498, 38.638969, 28.851803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.301697, 38.814255, 29.017298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002855, -0.689254, 0.724514,
		0.602659, -0.576977, -0.551271,
		0.797994, 0.438209, 0.413738,
		41.541096, 38.945717, 29.141418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.504135, 38.144821, 28.971199>,  <40.982498, 38.638969, 28.851803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.504135, 38.144821, 28.971199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.578991, 38.437489, 29.233389>,  <41.623905, 38.613087, 29.390703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.578991, 38.437489, 29.233389>,  <41.504135, 38.144821, 28.971199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.578991, 38.437489, 29.233389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008978, -0.668506, 0.743652,
		0.982293, -0.133280, -0.131671,
		0.187137, 0.731667, 0.655472,
		41.635132, 38.656990, 29.430031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.078907, 37.892735, 29.403748>,  <41.504135, 38.144821, 28.971199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.078907, 37.892735, 29.403748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.913479, 38.193012, 29.609825>,  <41.814224, 38.373177, 29.733473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.913479, 38.193012, 29.609825>,  <42.078907, 37.892735, 29.403748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.913479, 38.193012, 29.609825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013906, -0.570996, 0.820835,
		0.910367, 0.332307, 0.246585,
		-0.413568, 0.750690, 0.515195,
		41.789410, 38.418221, 29.764383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.562546, 38.052525, 29.957718>,  <42.078907, 37.892735, 29.403748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.562546, 38.052525, 29.957718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.189415, 38.149303, 30.064526>,  <41.965538, 38.207371, 30.128611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.189415, 38.149303, 30.064526>,  <42.562546, 38.052525, 29.957718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.189415, 38.149303, 30.064526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109038, -0.516767, 0.849154,
		0.343435, 0.821228, 0.455672,
		-0.932825, 0.241943, 0.267021,
		41.909569, 38.221886, 30.144632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.575916, 38.391968, 30.622862>,  <42.562546, 38.052525, 29.957718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.575916, 38.391968, 30.622862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.192291, 38.279263, 30.611414>,  <41.962116, 38.211639, 30.604546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.192291, 38.279263, 30.611414>,  <42.575916, 38.391968, 30.622862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.192291, 38.279263, 30.611414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062732, -0.309897, 0.948698,
		-0.276174, 0.908062, 0.314884,
		-0.959058, -0.281759, -0.028621,
		41.904575, 38.194736, 30.602827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.308659, 38.598198, 31.287699>,  <42.575916, 38.391968, 30.622862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.308659, 38.598198, 31.287699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.073544, 38.307285, 31.145956>,  <41.932476, 38.132736, 31.060911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.073544, 38.307285, 31.145956>,  <42.308659, 38.598198, 31.287699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.073544, 38.307285, 31.145956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017685, -0.426353, 0.904384,
		-0.808823, 0.537852, 0.237743,
		-0.587787, -0.727282, -0.354356,
		41.897209, 38.089100, 31.039650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.690033, 38.593899, 31.651606>,  <42.308659, 38.598198, 31.287699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.690033, 38.593899, 31.651606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.745708, 38.229191, 31.497046>,  <41.779114, 38.010365, 31.404310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.745708, 38.229191, 31.497046>,  <41.690033, 38.593899, 31.651606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.745708, 38.229191, 31.497046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151829, -0.405233, 0.901518,
		-0.978558, -0.066814, -0.194836,
		0.139188, -0.911768, -0.386400,
		41.787464, 37.955662, 31.381126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.029839, 38.252071, 31.795511>,  <41.690033, 38.593899, 31.651606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.029839, 38.252071, 31.795511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.286842, 37.959724, 31.703409>,  <41.441044, 37.784317, 31.648148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.286842, 37.959724, 31.703409>,  <41.029839, 38.252071, 31.795511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.286842, 37.959724, 31.703409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346047, -0.544846, 0.763803,
		-0.683689, -0.411073, -0.602983,
		0.642512, -0.730864, -0.230255,
		41.479595, 37.740467, 31.634333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.652905, 37.635090, 31.683138>,  <41.029839, 38.252071, 31.795511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.652905, 37.635090, 31.683138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.019489, 37.505493, 31.777046>,  <41.239441, 37.427734, 31.833391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.019489, 37.505493, 31.777046>,  <40.652905, 37.635090, 31.683138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.019489, 37.505493, 31.777046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396333, -0.654658, 0.643695,
		-0.054858, -0.682973, -0.728381,
		0.916466, -0.323993, 0.234772,
		41.294430, 37.408295, 31.847477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.526340, 36.874626, 31.900745>,  <40.652905, 37.635090, 31.683138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.526340, 36.874626, 31.900745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.905113, 36.910686, 32.024158>,  <41.132378, 36.932323, 32.098206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.905113, 36.910686, 32.024158>,  <40.526340, 36.874626, 31.900745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.905113, 36.910686, 32.024158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171122, -0.671138, 0.721312,
		0.272097, -0.735830, -0.620095,
		0.946933, 0.090155, 0.308531,
		41.189194, 36.937733, 32.116718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.812580, 36.249290, 31.924299>,  <40.526340, 36.874626, 31.900745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.812580, 36.249290, 31.924299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.014282, 36.477283, 32.183788>,  <41.135303, 36.614079, 32.339481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.014282, 36.477283, 32.183788>,  <40.812580, 36.249290, 31.924299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.014282, 36.477283, 32.183788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099551, -0.707847, 0.699315,
		0.857798, -0.417213, -0.300192,
		0.504254, 0.569987, 0.648724,
		41.165558, 36.648281, 32.378407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.259892, 35.780506, 32.254448>,  <40.812580, 36.249290, 31.924299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.259892, 35.780506, 32.254448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.202488, 36.095013, 32.494846>,  <41.168045, 36.283714, 32.639084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.202488, 36.095013, 32.494846>,  <41.259892, 35.780506, 32.254448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.202488, 36.095013, 32.494846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196806, -0.617825, 0.761288,
		0.969883, -0.009028, 0.243405,
		-0.143509, 0.786264, 0.600995,
		41.159435, 36.330891, 32.675144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.711872, 35.666180, 32.881443>,  <41.259892, 35.780506, 32.254448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.711872, 35.666180, 32.881443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.422852, 35.926888, 32.973625>,  <41.249439, 36.083313, 33.028934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.422852, 35.926888, 32.973625>,  <41.711872, 35.666180, 32.881443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.422852, 35.926888, 32.973625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225176, -0.537070, 0.812928,
		0.653613, 0.535492, 0.534826,
		-0.722555, 0.651770, 0.230456,
		41.206085, 36.122417, 33.042763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.784107, 35.680668, 33.603397>,  <41.711872, 35.666180, 32.881443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.784107, 35.680668, 33.603397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.428024, 35.845692, 33.526119>,  <41.214375, 35.944706, 33.479752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.428024, 35.845692, 33.526119>,  <41.784107, 35.680668, 33.603397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.428024, 35.845692, 33.526119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435762, -0.647520, 0.625164,
		0.132824, 0.640711, 0.756206,
		-0.890208, 0.412562, -0.193191,
		41.160961, 35.969460, 33.468163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.438396, 35.764389, 34.235451>,  <41.784107, 35.680668, 33.603397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.438396, 35.764389, 34.235451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.131599, 35.768490, 33.978821>,  <40.947521, 35.770950, 33.824844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.131599, 35.768490, 33.978821>,  <41.438396, 35.764389, 34.235451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.131599, 35.768490, 33.978821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527453, -0.579464, 0.621301,
		-0.365398, 0.814934, 0.449853,
		-0.766993, 0.010253, -0.641574,
		40.901501, 35.771564, 33.786350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.916267, 35.538158, 34.683273>,  <41.438396, 35.764389, 34.235451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.916267, 35.538158, 34.683273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.726101, 35.505318, 34.332905>,  <40.612003, 35.485615, 34.122684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.726101, 35.505318, 34.332905>,  <40.916267, 35.538158, 34.683273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.726101, 35.505318, 34.332905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601627, -0.696099, 0.391779,
		-0.641894, 0.713236, 0.281542,
		-0.475412, -0.082097, -0.875924,
		40.583477, 35.480690, 34.070129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.225254, 35.593658, 34.877625>,  <40.916267, 35.538158, 34.683273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.225254, 35.593658, 34.877625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.242058, 35.418911, 34.518208>,  <40.252140, 35.314060, 34.302559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.242058, 35.418911, 34.518208>,  <40.225254, 35.593658, 34.877625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.242058, 35.418911, 34.518208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643392, -0.699875, 0.310198,
		-0.764383, 0.565082, -0.310485,
		0.042013, -0.436873, -0.898541,
		40.254662, 35.287849, 34.248646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.519470, 35.480392, 34.648346>,  <40.225254, 35.593658, 34.877625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.519470, 35.480392, 34.648346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.750343, 35.222931, 34.447323>,  <39.888866, 35.068455, 34.326710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.750343, 35.222931, 34.447323>,  <39.519470, 35.480392, 34.648346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.750343, 35.222931, 34.447323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633133, -0.741403, 0.222403,
		-0.515752, 0.189821, -0.835445,
		0.577185, -0.643653, -0.502562,
		39.923500, 35.029835, 34.296555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.116535, 35.096836, 34.181534>,  <39.519470, 35.480392, 34.648346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.116535, 35.096836, 34.181534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.446304, 34.882587, 34.254677>,  <39.644165, 34.754040, 34.298561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.446304, 34.882587, 34.254677>,  <39.116535, 35.096836, 34.181534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.446304, 34.882587, 34.254677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562948, -0.809408, 0.167178,
		0.058463, -0.240764, -0.968821,
		0.824423, -0.535622, 0.182858,
		39.693630, 34.721901, 34.309536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.027950, 34.461002, 33.806950>,  <39.116535, 35.096836, 34.181534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.027950, 34.461002, 33.806950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.322803, 34.331173, 34.044029>,  <39.499714, 34.253277, 34.186275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.322803, 34.331173, 34.044029>,  <39.027950, 34.461002, 33.806950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.322803, 34.331173, 34.044029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525219, -0.827059, 0.200298,
		0.425183, -0.458941, -0.780124,
		0.737133, -0.324572, 0.592696,
		39.543941, 34.233803, 34.221836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.017723, 33.781570, 33.700195>,  <39.027950, 34.461002, 33.806950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.017723, 33.781570, 33.700195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.218910, 33.826691, 34.042961>,  <39.339622, 33.853764, 34.248619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.218910, 33.826691, 34.042961>,  <39.017723, 33.781570, 33.700195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.218910, 33.826691, 34.042961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480200, -0.787874, 0.385569,
		0.718634, -0.605417, -0.342104,
		0.502965, 0.112805, 0.856914,
		39.369801, 33.860531, 34.300034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.255527, 33.152622, 33.866638>,  <39.017723, 33.781570, 33.700195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.255527, 33.152622, 33.866638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.282967, 33.337444, 34.220314>,  <39.299431, 33.448338, 34.432522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.282967, 33.337444, 34.220314>,  <39.255527, 33.152622, 33.866638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.282967, 33.337444, 34.220314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404812, -0.797147, 0.447977,
		0.911823, -0.388664, 0.132361,
		0.068602, 0.462057, 0.884193,
		39.303547, 33.476063, 34.485573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.609592, 32.654621, 34.253803>,  <39.255527, 33.152622, 33.866638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.609592, 32.654621, 34.253803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.436123, 32.916458, 34.501492>,  <39.332039, 33.073559, 34.650105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.436123, 32.916458, 34.501492>,  <39.609592, 32.654621, 34.253803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.436123, 32.916458, 34.501492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488324, -0.748280, 0.449017,
		0.757275, -0.107654, 0.644163,
		-0.433675, 0.654589, 0.619224,
		39.306019, 33.112835, 34.687260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.620598, 32.283600, 34.877785>,  <39.609592, 32.654621, 34.253803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.620598, 32.283600, 34.877785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.344006, 32.569923, 34.916718>,  <39.178051, 32.741718, 34.940075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.344006, 32.569923, 34.916718>,  <39.620598, 32.283600, 34.877785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.344006, 32.569923, 34.916718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651557, -0.676171, 0.343900,
		0.311978, 0.174384, 0.933949,
		-0.691480, 0.715810, 0.097329,
		39.136562, 32.784668, 34.945915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.216850, 32.394588, 35.534462>,  <39.620598, 32.283600, 34.877785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.216850, 32.394588, 35.534462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.972145, 32.464855, 35.225945>,  <38.825321, 32.507015, 35.040836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.972145, 32.464855, 35.225945>,  <39.216850, 32.394588, 35.534462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.972145, 32.464855, 35.225945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649994, -0.667331, 0.363562,
		-0.450839, 0.723747, 0.522433,
		-0.611762, 0.175670, -0.771289,
		38.788616, 32.517555, 34.994556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.790264, 32.254913, 36.169903>,  <39.216850, 32.394588, 35.534462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.790264, 32.254913, 36.169903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.113964, 32.074841, 36.320873>,  <39.308186, 31.966797, 36.411453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.113964, 32.074841, 36.320873>,  <38.790264, 32.254913, 36.169903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.113964, 32.074841, 36.320873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462819, -0.884257, -0.062360,
		0.361811, -0.124213, -0.923939,
		0.809254, -0.450179, 0.377422,
		39.356739, 31.939787, 36.434101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.834530, 31.743088, 35.851227>,  <38.790264, 32.254913, 36.169903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.834530, 31.743088, 35.851227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.087601, 31.629061, 36.139244>,  <39.239441, 31.560644, 36.312054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.087601, 31.629061, 36.139244>,  <38.834530, 31.743088, 35.851227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.087601, 31.629061, 36.139244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449529, -0.892290, 0.041725,
		0.630592, -0.350078, -0.692675,
		0.632675, -0.285067, 0.720041,
		39.277405, 31.543541, 36.355255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.026234, 31.078743, 35.637936>,  <38.834530, 31.743088, 35.851227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.026234, 31.078743, 35.637936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.083534, 31.109631, 36.032604>,  <39.117916, 31.128162, 36.269405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.083534, 31.109631, 36.032604>,  <39.026234, 31.078743, 35.637936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.083534, 31.109631, 36.032604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355330, -0.926467, 0.124099,
		0.923698, -0.368370, -0.105283,
		0.143255, 0.077220, 0.986669,
		39.126511, 31.132797, 36.328606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.326744, 30.418943, 35.831764>,  <39.026234, 31.078743, 35.637936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.326744, 30.418943, 35.831764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.182247, 30.580814, 36.167797>,  <39.095547, 30.677937, 36.369415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.182247, 30.580814, 36.167797>,  <39.326744, 30.418943, 35.831764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.182247, 30.580814, 36.167797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447863, -0.865501, 0.224334,
		0.817875, -0.295202, 0.493900,
		-0.361247, 0.404677, 0.840082,
		39.073872, 30.702217, 36.419823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.268677, 29.930746, 36.315228>,  <39.326744, 30.418943, 35.831764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.268677, 29.930746, 36.315228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.004780, 30.197874, 36.453072>,  <38.846443, 30.358150, 36.535778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.004780, 30.197874, 36.453072>,  <39.268677, 29.930746, 36.315228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.004780, 30.197874, 36.453072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490462, -0.730076, 0.475853,
		0.569376, 0.144922, 0.809203,
		-0.659741, 0.667822, 0.344609,
		38.806858, 30.398220, 36.556454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.099442, 29.764622, 37.072628>,  <39.268677, 29.930746, 36.315228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.099442, 29.764622, 37.072628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.799835, 29.971380, 36.906834>,  <38.620071, 30.095434, 36.807358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.799835, 29.971380, 36.906834>,  <39.099442, 29.764622, 37.072628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.799835, 29.971380, 36.906834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630459, -0.748385, 0.206012,
		-0.203706, 0.415620, 0.886433,
		-0.749016, 0.516894, -0.414481,
		38.575130, 30.126448, 36.782490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.616417, 29.727007, 37.635067>,  <39.099442, 29.764622, 37.072628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.616417, 29.727007, 37.635067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.416412, 29.795704, 37.295540>,  <38.296410, 29.836922, 37.091824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.416412, 29.795704, 37.295540>,  <38.616417, 29.727007, 37.635067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.416412, 29.795704, 37.295540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549508, -0.820472, 0.157692,
		-0.669348, 0.545280, 0.504622,
		-0.500014, 0.171743, -0.848817,
		38.266407, 29.847227, 37.040894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.936398, 29.543839, 37.713600>,  <38.616417, 29.727007, 37.635067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.936398, 29.543839, 37.713600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.962753, 29.528769, 37.314754>,  <37.978565, 29.519726, 37.075447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.962753, 29.528769, 37.314754>,  <37.936398, 29.543839, 37.713600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.962753, 29.528769, 37.314754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510373, -0.859952, -0.001230,
		-0.857425, 0.508982, -0.075889,
		0.065887, -0.037677, -0.997115,
		37.982521, 29.517466, 37.015621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.278587, 29.687349, 37.352425>,  <37.936398, 29.543839, 37.713600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.278587, 29.687349, 37.352425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.463161, 29.411457, 37.129230>,  <37.573906, 29.245922, 36.995316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.463161, 29.411457, 37.129230>,  <37.278587, 29.687349, 37.352425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.463161, 29.411457, 37.129230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774107, -0.620273, 0.126564,
		-0.433399, 0.373541, -0.820142,
		0.461436, -0.689731, -0.557987,
		37.601593, 29.204538, 36.961834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.826958, 29.505171, 36.825706>,  <37.278587, 29.687349, 37.352425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.826958, 29.505171, 36.825706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.090382, 29.204575, 36.841492>,  <37.248436, 29.024216, 36.850964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.090382, 29.204575, 36.841492>,  <36.826958, 29.505171, 36.825706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.090382, 29.204575, 36.841492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741054, -0.638508, 0.207717,
		-0.130902, -0.166037, -0.977393,
		0.658562, -0.751492, 0.039461,
		37.287949, 28.979128, 36.853329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.461159, 28.906731, 36.462696>,  <36.826958, 29.505171, 36.825706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.461159, 28.906731, 36.462696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.775059, 28.749434, 36.654335>,  <36.963398, 28.655054, 36.769318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.775059, 28.749434, 36.654335>,  <36.461159, 28.906731, 36.462696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.775059, 28.749434, 36.654335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561620, -0.778137, 0.281223,
		0.262212, -0.489758, -0.831494,
		0.784747, -0.393244, 0.479094,
		37.010483, 28.631460, 36.798065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.499798, 28.215372, 36.152252>,  <36.461159, 28.906731, 36.462696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.499798, 28.215372, 36.152252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.675259, 28.182241, 36.510185>,  <36.780537, 28.162363, 36.724945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.675259, 28.182241, 36.510185>,  <36.499798, 28.215372, 36.152252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.675259, 28.182241, 36.510185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625540, -0.743047, 0.237868,
		0.645200, -0.664094, -0.377751,
		0.438654, -0.082826, 0.894831,
		36.806854, 28.157394, 36.778633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.852188, 27.511000, 36.287487>,  <36.499798, 28.215372, 36.152252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.852188, 27.511000, 36.287487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.790398, 27.675951, 36.646614>,  <36.753323, 27.774921, 36.862091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.790398, 27.675951, 36.646614>,  <36.852188, 27.511000, 36.287487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.790398, 27.675951, 36.646614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528947, -0.802046, 0.277375,
		0.834476, -0.432051, 0.342024,
		-0.154479, 0.412376, 0.897820,
		36.744053, 27.799664, 36.915962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.108360, 27.081875, 36.882648>,  <36.852188, 27.511000, 36.287487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.108360, 27.081875, 36.882648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.792591, 27.314068, 36.962502>,  <36.603130, 27.453384, 37.010414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.792591, 27.314068, 36.962502>,  <37.108360, 27.081875, 36.882648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.792591, 27.314068, 36.962502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533160, -0.809555, 0.245684,
		0.304227, 0.087514, 0.948571,
		-0.789422, 0.580484, 0.199630,
		36.555763, 27.488213, 37.022392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.120602, 26.931221, 37.677727>,  <37.108360, 27.081875, 36.882648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.120602, 26.931221, 37.677727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.779964, 27.137812, 37.641872>,  <36.575581, 27.261766, 37.620361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.779964, 27.137812, 37.641872>,  <37.120602, 26.931221, 37.677727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.779964, 27.137812, 37.641872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447615, -0.627480, 0.637110,
		0.272807, 0.582684, 0.765543,
		-0.851597, 0.516477, -0.089637,
		36.524487, 27.292755, 37.614983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.764755, 26.916653, 38.386063>,  <37.120602, 26.931221, 37.677727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.764755, 26.916653, 38.386063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.455925, 27.024275, 38.155754>,  <36.270626, 27.088848, 38.017570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.455925, 27.024275, 38.155754>,  <36.764755, 26.916653, 38.386063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.455925, 27.024275, 38.155754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609908, -0.568344, 0.552265,
		-0.178648, 0.777557, 0.602901,
		-0.772073, 0.269054, -0.575772,
		36.224304, 27.104990, 37.983021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.247078, 27.198990, 38.873856>,  <36.764755, 26.916653, 38.386063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.247078, 27.198990, 38.873856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.081764, 27.079906, 38.529633>,  <35.982578, 27.008455, 38.323097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.081764, 27.079906, 38.529633>,  <36.247078, 27.198990, 38.873856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.081764, 27.079906, 38.529633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575945, -0.646544, 0.500268,
		-0.705326, 0.702388, 0.095740,
		-0.413282, -0.297711, -0.860561,
		35.957779, 26.990593, 38.271465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.591423, 27.176802, 39.067410>,  <36.247078, 27.198990, 38.873856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.591423, 27.176802, 39.067410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.631134, 26.946939, 38.742470>,  <35.654961, 26.809023, 38.547504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.631134, 26.946939, 38.742470>,  <35.591423, 27.176802, 39.067410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.631134, 26.946939, 38.742470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470830, -0.746342, 0.470417,
		-0.876620, 0.335776, -0.344663,
		0.099281, -0.574655, -0.812352,
		35.660919, 26.774544, 38.498764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.884598, 26.922171, 39.016697>,  <35.591423, 27.176802, 39.067410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.884598, 26.922171, 39.016697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.118126, 26.674532, 38.806602>,  <35.258244, 26.525949, 38.680546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.118126, 26.674532, 38.806602>,  <34.884598, 26.922171, 39.016697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.118126, 26.674532, 38.806602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464278, -0.785302, 0.409569,
		-0.666029, 0.004737, -0.745911,
		0.583825, -0.619095, -0.525233,
		35.293274, 26.488804, 38.649033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.459198, 26.426729, 38.630127>,  <34.884598, 26.922171, 39.016697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.459198, 26.426729, 38.630127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.814674, 26.263830, 38.714390>,  <35.027962, 26.166090, 38.764950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.814674, 26.263830, 38.714390>,  <34.459198, 26.426729, 38.630127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.814674, 26.263830, 38.714390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443470, -0.880152, 0.169312,
		0.116462, -0.243888, -0.962785,
		0.888691, -0.407248, 0.210661,
		35.081280, 26.141655, 38.777588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.097767, 25.870300, 38.468227>,  <34.459198, 26.426729, 38.630127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.097767, 25.870300, 38.468227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.701149, 25.883493, 38.418030>,  <33.463177, 25.891409, 38.387909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.701149, 25.883493, 38.418030>,  <34.097767, 25.870300, 38.468227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.701149, 25.883493, 38.418030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123096, -0.544981, 0.829363,
		-0.041040, 0.837799, 0.544433,
		-0.991546, 0.032981, -0.125496,
		33.403687, 25.893387, 38.380383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.132973, 25.161970, 38.214699>,  <34.097767, 25.870300, 38.468227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.132973, 25.161970, 38.214699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.058678, 24.845654, 38.447990>,  <34.014099, 24.655865, 38.587963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.058678, 24.845654, 38.447990>,  <34.132973, 25.161970, 38.214699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.058678, 24.845654, 38.447990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584111, -0.388433, -0.712695,
		0.790136, -0.473044, -0.389762,
		-0.185740, -0.790791, 0.583225,
		34.002956, 24.608416, 38.622959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.501659, 24.477705, 38.008198>,  <34.132973, 25.161970, 38.214699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.501659, 24.477705, 38.008198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.139233, 24.456123, 38.176071>,  <33.921776, 24.443174, 38.276794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.139233, 24.456123, 38.176071>,  <34.501659, 24.477705, 38.008198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.139233, 24.456123, 38.176071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331748, -0.525099, -0.783718,
		0.262660, -0.849329, 0.457875,
		-0.906064, -0.053952, 0.419686,
		33.867413, 24.439938, 38.301975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.952995, 24.545431, 38.729939>,  <34.501659, 24.477705, 38.008198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.952995, 24.545431, 38.729939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.152519, 24.771433, 38.992832>,  <35.272232, 24.907034, 39.150570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.152519, 24.771433, 38.992832>,  <34.952995, 24.545431, 38.729939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.152519, 24.771433, 38.992832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841460, -0.133980, -0.523444,
		-0.207692, 0.814136, -0.542261,
		0.498807, 0.565006, 0.657236,
		35.302162, 24.940935, 39.190002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.265850, 25.119764, 38.366158>,  <34.952995, 24.545431, 38.729939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.265850, 25.119764, 38.366158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.452137, 24.993752, 38.696941>,  <35.563908, 24.918144, 38.895412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.452137, 24.993752, 38.696941>,  <35.265850, 25.119764, 38.366158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.452137, 24.993752, 38.696941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834077, -0.155961, -0.529142,
		0.295671, 0.936178, 0.190129,
		0.465718, -0.315034, 0.826958,
		35.591854, 24.899240, 38.945030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.945183, 25.443075, 38.637539>,  <35.265850, 25.119764, 38.366158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.945183, 25.443075, 38.637539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.956146, 25.049126, 38.705975>,  <35.962723, 24.812756, 38.747036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.956146, 25.049126, 38.705975>,  <35.945183, 25.443075, 38.637539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.956146, 25.049126, 38.705975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818684, -0.076095, -0.569181,
		0.573591, 0.155666, 0.804215,
		0.027405, -0.984874, 0.171088,
		35.964367, 24.753664, 38.757301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.158817, 25.722403, 38.010136>,  <35.945183, 25.443075, 38.637539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.158817, 25.722403, 38.010136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.870510, 25.954428, 38.161934>,  <35.697525, 26.093643, 38.253014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.870510, 25.954428, 38.161934>,  <36.158817, 25.722403, 38.010136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.870510, 25.954428, 38.161934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216346, 0.708379, -0.671859,
		-0.658546, -0.402154, -0.636073,
		-0.720772, 0.580061, 0.379495,
		35.654278, 26.128447, 38.275784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.824291, 25.912354, 37.506413>,  <36.158817, 25.722403, 38.010136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.824291, 25.912354, 37.506413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.771347, 26.181456, 37.797585>,  <35.739578, 26.342916, 37.972286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.771347, 26.181456, 37.797585>,  <35.824291, 25.912354, 37.506413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.771347, 26.181456, 37.797585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475535, 0.687458, -0.548879,
		-0.869682, 0.273505, -0.410912,
		-0.132364, 0.672753, 0.727931,
		35.731636, 26.383282, 38.015965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.570961, 26.552179, 37.119114>,  <35.824291, 25.912354, 37.506413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.570961, 26.552179, 37.119114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.689930, 26.680861, 37.478680>,  <35.761311, 26.758068, 37.694420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.689930, 26.680861, 37.478680>,  <35.570961, 26.552179, 37.119114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.689930, 26.680861, 37.478680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385349, 0.820978, -0.421309,
		-0.873525, 0.471702, 0.120210,
		0.297422, 0.321702, 0.898915,
		35.779156, 26.777370, 37.748356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.295929, 27.218510, 37.178345>,  <35.570961, 26.552179, 37.119114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.295929, 27.218510, 37.178345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.590485, 27.224258, 37.448910>,  <35.767216, 27.227709, 37.611248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.590485, 27.224258, 37.448910>,  <35.295929, 27.218510, 37.178345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.590485, 27.224258, 37.448910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248793, 0.923969, -0.290488,
		-0.629155, 0.382198, 0.676822,
		0.736387, 0.014374, 0.676408,
		35.811401, 27.228571, 37.651833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.350609, 27.837187, 37.461685>,  <35.295929, 27.218510, 37.178345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.350609, 27.837187, 37.461685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.717747, 27.685036, 37.507080>,  <35.938030, 27.593744, 37.534317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.717747, 27.685036, 37.507080>,  <35.350609, 27.837187, 37.461685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.717747, 27.685036, 37.507080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396287, 0.894535, -0.206792,
		-0.022858, 0.234775, 0.971781,
		0.917842, -0.380377, 0.113486,
		35.993099, 27.570923, 37.541126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.803055, 28.330511, 37.812485>,  <35.350609, 27.837187, 37.461685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.803055, 28.330511, 37.812485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.029675, 28.074335, 37.605076>,  <36.165646, 27.920630, 37.480629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.029675, 28.074335, 37.605076>,  <35.803055, 28.330511, 37.812485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.029675, 28.074335, 37.605076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631709, 0.741604, -0.225759,
		0.529123, -0.199651, 0.824723,
		0.566545, -0.640439, -0.518521,
		36.199638, 27.882204, 37.449520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.517933, 28.328268, 38.067032>,  <35.803055, 28.330511, 37.812485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.517933, 28.328268, 38.067032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.515648, 28.218565, 37.682377>,  <36.514278, 28.152742, 37.451584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.515648, 28.218565, 37.682377>,  <36.517933, 28.328268, 38.067032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.515648, 28.218565, 37.682377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748235, 0.636810, -0.186059,
		0.663410, -0.720594, 0.201573,
		-0.005709, -0.274258, -0.961639,
		36.513935, 28.136288, 37.393887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.166550, 28.208363, 37.962315>,  <36.517933, 28.328268, 38.067032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.166550, 28.208363, 37.962315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.049576, 28.202778, 37.579842>,  <36.979393, 28.199427, 37.350357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.049576, 28.202778, 37.579842>,  <37.166550, 28.208363, 37.962315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.049576, 28.202778, 37.579842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849940, 0.454466, -0.266576,
		0.438274, -0.890655, -0.121036,
		-0.292434, -0.013960, -0.956184,
		36.961845, 28.198589, 37.292988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.783646, 28.087410, 37.620720>,  <37.166550, 28.208363, 37.962315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.783646, 28.087410, 37.620720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.528610, 28.228390, 37.346710>,  <37.375587, 28.312979, 37.182304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.528610, 28.228390, 37.346710>,  <37.783646, 28.087410, 37.620720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.528610, 28.228390, 37.346710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760648, 0.428886, -0.487311,
		0.122045, -0.831766, -0.541544,
		-0.637589, 0.352450, -0.685025,
		37.337334, 28.334126, 37.141201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.138485, 27.953035, 36.980667>,  <37.783646, 28.087410, 37.620720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.138485, 27.953035, 36.980667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.903236, 28.275309, 36.952400>,  <37.762089, 28.468672, 36.935440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.903236, 28.275309, 36.952400>,  <38.138485, 27.953035, 36.980667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.903236, 28.275309, 36.952400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716014, 0.478043, -0.508724,
		-0.376087, -0.349789, -0.858025,
		-0.588118, 0.805682, -0.070668,
		37.726799, 28.517014, 36.931198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.110073, 28.159819, 36.302868>,  <38.138485, 27.953035, 36.980667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.110073, 28.159819, 36.302868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.017391, 28.498514, 36.494427>,  <37.961781, 28.701731, 36.609364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.017391, 28.498514, 36.494427>,  <38.110073, 28.159819, 36.302868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.017391, 28.498514, 36.494427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676353, 0.494061, -0.546306,
		-0.699185, 0.197325, -0.687171,
		-0.231704, 0.846739, 0.478901,
		37.947880, 28.752537, 36.638096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.011765, 28.809925, 35.897301>,  <38.110073, 28.159819, 36.302868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.011765, 28.809925, 35.897301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.866051, 28.974159, 36.231659>,  <37.778622, 29.072699, 36.432274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.866051, 28.974159, 36.231659>,  <38.011765, 28.809925, 35.897301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.866051, 28.974159, 36.231659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544722, 0.821954, -0.166343,
		-0.755362, 0.394732, -0.523082,
		-0.364288, 0.410584, 0.835892,
		37.756763, 29.097334, 36.482426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.837822, 29.508375, 35.730721>,  <38.011765, 28.809925, 35.897301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.837822, 29.508375, 35.730721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.877522, 29.521559, 36.128529>,  <37.901340, 29.529469, 36.367214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.877522, 29.521559, 36.128529>,  <37.837822, 29.508375, 35.730721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.877522, 29.521559, 36.128529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435140, 0.897385, -0.073168,
		-0.894875, 0.440016, 0.074726,
		0.099253, 0.032960, 0.994516,
		37.907299, 29.531446, 36.426884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.528454, 30.140457, 36.008614>,  <37.837822, 29.508375, 35.730721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.528454, 30.140457, 36.008614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.772968, 30.041147, 36.309196>,  <37.919678, 29.981562, 36.489548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.772968, 30.041147, 36.309196>,  <37.528454, 30.140457, 36.008614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.772968, 30.041147, 36.309196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367414, 0.930020, 0.008395,
		-0.700957, 0.270965, 0.659725,
		0.611283, -0.248276, 0.751460,
		37.956352, 29.966665, 36.534634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.531948, 30.770323, 36.425442>,  <37.528454, 30.140457, 36.008614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.531948, 30.770323, 36.425442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.863876, 30.557226, 36.491875>,  <38.063034, 30.429369, 36.531734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.863876, 30.557226, 36.491875>,  <37.531948, 30.770323, 36.425442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.863876, 30.557226, 36.491875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524638, 0.846221, 0.093091,
		-0.190135, 0.009884, 0.981708,
		0.829822, -0.532741, 0.166082,
		38.112823, 30.397404, 36.541698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.944023, 31.066088, 37.113724>,  <37.531948, 30.770323, 36.425442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.944023, 31.066088, 37.113724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.246605, 30.844227, 36.975079>,  <38.428154, 30.711111, 36.891891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.246605, 30.844227, 36.975079>,  <37.944023, 31.066088, 37.113724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.246605, 30.844227, 36.975079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587544, 0.809096, -0.012452,
		0.287347, -0.194230, 0.937927,
		0.756454, -0.554651, -0.346610,
		38.473541, 30.677832, 36.871094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.391117, 31.505527, 37.203991>,  <37.944023, 31.066088, 37.113724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.391117, 31.505527, 37.203991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.630455, 31.222675, 37.053288>,  <38.774059, 31.052963, 36.962868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.630455, 31.222675, 37.053288>,  <38.391117, 31.505527, 37.203991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.630455, 31.222675, 37.053288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732950, 0.673019, -0.099146,
		0.323672, -0.216819, 0.920992,
		0.598348, -0.707132, -0.376755,
		38.809959, 31.010536, 36.940262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.060287, 31.438654, 37.614117>,  <38.391117, 31.505527, 37.203991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.060287, 31.438654, 37.614117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.086929, 31.337191, 37.228119>,  <39.102913, 31.276312, 36.996521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.086929, 31.337191, 37.228119>,  <39.060287, 31.438654, 37.614117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.086929, 31.337191, 37.228119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698681, 0.702313, -0.136387,
		0.712327, -0.665142, 0.224001,
		0.066602, -0.253658, -0.964998,
		39.106911, 31.261093, 36.938618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.802681, 31.429283, 37.534840>,  <39.060287, 31.438654, 37.614117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.802681, 31.429283, 37.534840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.644760, 31.442522, 37.167572>,  <39.550007, 31.450464, 36.947212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.644760, 31.442522, 37.167572>,  <39.802681, 31.429283, 37.534840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.644760, 31.442522, 37.167572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588684, 0.776377, -0.225145,
		0.705393, -0.629399, -0.326000,
		-0.394805, 0.033096, -0.918168,
		39.526318, 31.452450, 36.892120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.359863, 31.392414, 36.997295>,  <39.802681, 31.429283, 37.534840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.359863, 31.392414, 36.997295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.036888, 31.595589, 36.877262>,  <39.843105, 31.717493, 36.805241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.036888, 31.595589, 36.877262>,  <40.359863, 31.392414, 36.997295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.036888, 31.595589, 36.877262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574177, 0.793442, -0.201919,
		0.135537, -0.335337, -0.932297,
		-0.807435, 0.507936, -0.300083,
		39.794659, 31.747969, 36.787235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.526279, 31.546463, 36.322491>,  <40.359863, 31.392414, 36.997295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.526279, 31.546463, 36.322491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.284336, 31.804897, 36.508705>,  <40.139172, 31.959957, 36.620434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.284336, 31.804897, 36.508705>,  <40.526279, 31.546463, 36.322491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.284336, 31.804897, 36.508705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674348, 0.726502, -0.132099,
		-0.423558, 0.234030, -0.875116,
		-0.604859, 0.646084, 0.465533,
		40.102879, 31.998722, 36.648365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.274399, 32.167629, 35.827923>,  <40.526279, 31.546463, 36.322491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.274399, 32.167629, 35.827923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.312046, 32.250675, 36.217392>,  <40.334637, 32.300503, 36.451073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.312046, 32.250675, 36.217392>,  <40.274399, 32.167629, 35.827923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.312046, 32.250675, 36.217392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771930, 0.602402, -0.203065,
		-0.628701, 0.770720, -0.103563,
		0.094120, 0.207611, 0.973673,
		40.340282, 32.312958, 36.509495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.510635, 32.893826, 35.761570>,  <40.274399, 32.167629, 35.827923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.510635, 32.893826, 35.761570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.626019, 32.717133, 36.101372>,  <40.695248, 32.611118, 36.305252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.626019, 32.717133, 36.101372>,  <40.510635, 32.893826, 35.761570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.626019, 32.717133, 36.101372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888785, 0.453553, -0.065953,
		-0.356164, 0.774055, 0.523437,
		0.288458, -0.441733, 0.849508,
		40.712555, 32.584614, 36.356224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.736504, 33.305885, 36.352077>,  <40.510635, 32.893826, 35.761570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.736504, 33.305885, 36.352077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.960732, 32.974712, 36.345295>,  <41.095268, 32.776009, 36.341225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.960732, 32.974712, 36.345295>,  <40.736504, 33.305885, 36.352077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.960732, 32.974712, 36.345295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828052, 0.560166, 0.023300,
		-0.009793, -0.027101, 0.999585,
		0.560565, -0.827937, -0.016956,
		41.128902, 32.726330, 36.340210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.107140, 33.260284, 36.966473>,  <40.736504, 33.305885, 36.352077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.107140, 33.260284, 36.966473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.287388, 33.116508, 36.639610>,  <41.395538, 33.030243, 36.443493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.287388, 33.116508, 36.639610>,  <41.107140, 33.260284, 36.966473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.287388, 33.116508, 36.639610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782903, 0.598954, 0.168275,
		0.428956, -0.715583, 0.551305,
		0.450621, -0.359436, -0.817157,
		41.422573, 33.008678, 36.394463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.768192, 32.828903, 37.056984>,  <41.107140, 33.260284, 36.966473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.768192, 32.828903, 37.056984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.764690, 33.043770, 36.719612>,  <41.762589, 33.172688, 36.517189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.764690, 33.043770, 36.719612>,  <41.768192, 32.828903, 37.056984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.764690, 33.043770, 36.719612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743756, 0.567286, 0.353572,
		0.668393, -0.624212, -0.404486,
		-0.008755, 0.537165, -0.843432,
		41.762062, 33.204918, 36.466583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.461037, 32.809311, 36.576874>,  <41.768192, 32.828903, 37.056984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.461037, 32.809311, 36.576874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.262001, 33.156082, 36.565258>,  <42.142578, 33.364143, 36.558289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.262001, 33.156082, 36.565258>,  <42.461037, 32.809311, 36.576874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.262001, 33.156082, 36.565258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842223, 0.490880, 0.222930,
		0.207520, 0.086468, -0.974402,
		-0.497591, 0.866926, -0.029042,
		42.112724, 33.416161, 36.556545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.823662, 33.356075, 36.176895>,  <42.461037, 32.809311, 36.576874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.823662, 33.356075, 36.176895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.601673, 33.534607, 36.457695>,  <42.468479, 33.641724, 36.626175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.601673, 33.534607, 36.457695>,  <42.823662, 33.356075, 36.176895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.601673, 33.534607, 36.457695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795869, 0.530447, 0.291922,
		-0.242082, 0.720708, -0.649597,
		-0.554968, 0.446325, 0.702001,
		42.435184, 33.668503, 36.668297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.514740, 33.248718, 36.106564>,  <42.823662, 33.356075, 36.176895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.514740, 33.248718, 36.106564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.863815, 33.192104, 35.919636>,  <44.073261, 33.158138, 35.807480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.863815, 33.192104, 35.919636>,  <43.514740, 33.248718, 36.106564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.863815, 33.192104, 35.919636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393824, -0.361774, 0.844998,
		-0.288658, -0.921460, -0.259976,
		0.872684, -0.141531, -0.467322,
		44.125622, 33.149643, 35.779438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.861328, 32.579044, 36.363411>,  <43.514740, 33.248718, 36.106564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.861328, 32.579044, 36.363411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.127388, 32.840611, 36.219204>,  <44.287022, 32.997551, 36.132679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.127388, 32.840611, 36.219204>,  <43.861328, 32.579044, 36.363411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.127388, 32.840611, 36.219204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548508, -0.100264, 0.830112,
		0.506676, -0.749894, -0.425368,
		0.665145, 0.653916, -0.360522,
		44.326931, 33.036785, 36.111046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.589272, 32.352524, 36.297421>,  <43.861328, 32.579044, 36.363411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.589272, 32.352524, 36.297421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.603630, 32.750492, 36.335022>,  <44.612247, 32.989273, 36.357582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.603630, 32.750492, 36.335022>,  <44.589272, 32.352524, 36.297421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.603630, 32.750492, 36.335022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572018, -0.097593, 0.814415,
		0.819455, 0.024537, -0.572618,
		0.035900, 0.994924, 0.094008,
		44.614399, 33.048969, 36.363224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.242054, 32.580833, 36.485123>,  <44.589272, 32.352524, 36.297421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.242054, 32.580833, 36.485123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.961044, 32.830059, 36.622673>,  <44.792439, 32.979595, 36.705204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.961044, 32.830059, 36.622673>,  <45.242054, 32.580833, 36.485123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.961044, 32.830059, 36.622673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419438, -0.027845, 0.907357,
		0.574918, 0.781674, -0.241775,
		-0.702525, 0.623065, 0.343872,
		44.750286, 33.016979, 36.725834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.104931, 33.098820, 37.205128>,  <45.242054, 32.580833, 36.485123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.104931, 33.098820, 37.205128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.303959, 33.138729, 36.860462>,  <45.423378, 33.162674, 36.653664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.303959, 33.138729, 36.860462>,  <45.104931, 33.098820, 37.205128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.303959, 33.138729, 36.860462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863209, 0.040838, 0.503192,
		0.085392, -0.994172, -0.065802,
		0.497572, 0.099769, -0.861666,
		45.453232, 33.168659, 36.601963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.566605, 32.558655, 37.138737>,  <45.104931, 33.098820, 37.205128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.566605, 32.558655, 37.138737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.695511, 32.903252, 36.981781>,  <45.772854, 33.110012, 36.887608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.695511, 32.903252, 36.981781>,  <45.566605, 32.558655, 37.138737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.695511, 32.903252, 36.981781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854922, -0.086861, 0.511433,
		0.406513, -0.500282, -0.764503,
		0.322267, 0.861494, -0.392392,
		45.792191, 33.161701, 36.864063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.257778, 32.523640, 36.818260>,  <45.566605, 32.558655, 37.138737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.257778, 32.523640, 36.818260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.169865, 32.888672, 36.956184>,  <46.117115, 33.107693, 37.038937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.169865, 32.888672, 36.956184>,  <46.257778, 32.523640, 36.818260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.169865, 32.888672, 36.956184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862105, 0.016264, 0.506468,
		0.456585, 0.408572, -0.790316,
		-0.219783, 0.912581, 0.344806,
		46.103931, 33.162445, 37.059628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.940739, 32.856964, 36.897457>,  <46.257778, 32.523640, 36.818260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.940739, 32.856964, 36.897457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.690880, 33.106102, 37.085873>,  <46.540966, 33.255585, 37.198921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.690880, 33.106102, 37.085873>,  <46.940739, 32.856964, 36.897457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.690880, 33.106102, 37.085873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770326, 0.392506, 0.502530,
		0.128110, 0.676761, -0.724971,
		-0.624648, 0.622843, 0.471043,
		46.503487, 33.292953, 37.227184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.197884, 33.588776, 36.866249>,  <46.940739, 32.856964, 36.897457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.197884, 33.588776, 36.866249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.961498, 33.548252, 37.186375>,  <46.819668, 33.523937, 37.378448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.961498, 33.548252, 37.186375>,  <47.197884, 33.588776, 36.866249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.961498, 33.548252, 37.186375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721642, 0.377018, 0.580595,
		-0.360550, 0.920649, -0.149697,
		-0.590962, -0.101306, 0.800313,
		46.784210, 33.517860, 37.426468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.284065, 34.151474, 37.175930>,  <47.197884, 33.588776, 36.866249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.284065, 34.151474, 37.175930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.127075, 33.924507, 37.465485>,  <47.032883, 33.788326, 37.639217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.127075, 33.924507, 37.465485>,  <47.284065, 34.151474, 37.175930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.127075, 33.924507, 37.465485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615050, 0.423271, 0.665248,
		-0.683869, 0.706318, 0.182864,
		-0.392476, -0.567413, 0.723882,
		47.009331, 33.754284, 37.682648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.015705, 34.296806, 36.449123>,  <47.284065, 34.151474, 37.175930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.015705, 34.296806, 36.449123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.846451, 34.160622, 36.784988>,  <46.744900, 34.078911, 36.986507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.846451, 34.160622, 36.784988>,  <47.015705, 34.296806, 36.449123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.846451, 34.160622, 36.784988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.893296, 0.001707, -0.449466,
		0.151595, -0.940255, -0.304861,
		-0.423133, -0.340467, 0.839666,
		46.719509, 34.058483, 37.036888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.522778, 34.772263, 36.164295>,  <47.015705, 34.296806, 36.449123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.522778, 34.772263, 36.164295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.695038, 34.856335, 35.813213>,  <47.798393, 34.906780, 35.602566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.695038, 34.856335, 35.813213>,  <47.522778, 34.772263, 36.164295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.695038, 34.856335, 35.813213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237808, 0.964563, 0.114302,
		0.870624, 0.159500, 0.465375,
		0.430653, 0.210184, -0.877702,
		47.824234, 34.919392, 35.549904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.462746, 34.561882, 35.355343>,  <47.522778, 34.772263, 36.164295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.462746, 34.561882, 35.355343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.509411, 34.875809, 35.111881>,  <47.537411, 35.064163, 34.965805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.509411, 34.875809, 35.111881>,  <47.462746, 34.561882, 35.355343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.509411, 34.875809, 35.111881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848127, -0.240154, -0.472235,
		-0.516787, 0.571307, 0.637604,
		0.116668, 0.784814, -0.608650,
		47.544411, 35.111252, 34.929287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.364220, 39.524643, 28.192041> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.326683, 39.782894, 28.495188>,  <38.304161, 39.937843, 28.677076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.326683, 39.782894, 28.495188>,  <38.364220, 39.524643, 28.192041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.326683, 39.782894, 28.495188> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087239, -0.763631, 0.639732,
		0.991757, -0.006080, 0.127987,
		-0.093845, 0.645624, 0.757867,
		38.298531, 39.976582, 28.722548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.736393, 39.262321, 28.772018>,  <38.364220, 39.524643, 28.192041>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.736393, 39.262321, 28.772018> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.474705, 39.512630, 28.941912>,  <38.317692, 39.662815, 29.043848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.474705, 39.512630, 28.941912>,  <38.736393, 39.262321, 28.772018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.474705, 39.512630, 28.941912> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194390, -0.681857, 0.705183,
		0.730892, 0.378784, 0.567731,
		-0.654224, 0.625774, 0.424732,
		38.278439, 39.700363, 29.069332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.943348, 39.162724, 29.492769>,  <38.736393, 39.262321, 28.772018>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.943348, 39.162724, 29.492769> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.586216, 39.342873, 29.494291>,  <38.371937, 39.450962, 29.495205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.586216, 39.342873, 29.494291>,  <38.943348, 39.162724, 29.492769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.586216, 39.342873, 29.494291> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258030, -0.518412, 0.815273,
		0.369148, 0.726921, 0.579065,
		-0.892833, 0.450372, 0.003803,
		38.318367, 39.477985, 29.495432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.917301, 39.348614, 30.184107>,  <38.943348, 39.162724, 29.492769>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.917301, 39.348614, 30.184107> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.556168, 39.325817, 30.013632>,  <38.339485, 39.312138, 29.911346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.556168, 39.325817, 30.013632>,  <38.917301, 39.348614, 30.184107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.556168, 39.325817, 30.013632> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347861, -0.485787, 0.801875,
		-0.252736, 0.872217, 0.418762,
		-0.902839, -0.056991, -0.426186,
		38.285316, 39.308720, 29.885777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.377235, 39.471260, 30.719362>,  <38.917301, 39.348614, 30.184107>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.377235, 39.471260, 30.719362> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.184032, 39.269108, 30.433344>,  <38.068111, 39.147816, 30.261732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.184032, 39.269108, 30.433344>,  <38.377235, 39.471260, 30.719362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.184032, 39.269108, 30.433344> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461097, -0.547418, 0.698371,
		-0.744376, 0.667023, 0.031374,
		-0.483004, -0.505385, -0.715048,
		38.039131, 39.117493, 30.218830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.720596, 39.416595, 30.991226>,  <38.377235, 39.471260, 30.719362>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.720596, 39.416595, 30.991226> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.715630, 39.141060, 30.701302>,  <37.712650, 38.975739, 30.527348>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.715630, 39.141060, 30.701302>,  <37.720596, 39.416595, 30.991226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.715630, 39.141060, 30.701302> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302547, -0.688303, 0.659321,
		-0.953054, 0.227478, -0.199857,
		-0.012419, -0.688835, -0.724812,
		37.711903, 38.934410, 30.483858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.015644, 39.206657, 31.023607>,  <37.720596, 39.416595, 30.991226>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.015644, 39.206657, 31.023607> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.248848, 38.929489, 30.853918>,  <37.388771, 38.763187, 30.752104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.248848, 38.929489, 30.853918>,  <37.015644, 39.206657, 31.023607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.248848, 38.929489, 30.853918> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221141, -0.637765, 0.737803,
		-0.781792, -0.336332, -0.525054,
		0.583008, -0.692919, -0.424222,
		37.423752, 38.721615, 30.726652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.638145, 38.680439, 31.066637>,  <37.015644, 39.206657, 31.023607>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.638145, 38.680439, 31.066637> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.007042, 38.533165, 31.019466>,  <37.228382, 38.444801, 30.991163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.007042, 38.533165, 31.019466>,  <36.638145, 38.680439, 31.066637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.007042, 38.533165, 31.019466> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201671, -0.718398, 0.665757,
		-0.329838, -0.590209, -0.736791,
		0.922245, -0.368181, -0.117927,
		37.283714, 38.422710, 30.984089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.545792, 37.944878, 30.924599>,  <36.638145, 38.680439, 31.066637>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.545792, 37.944878, 30.924599> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.917797, 38.018875, 31.051632>,  <37.140999, 38.063274, 31.127851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.917797, 38.018875, 31.051632>,  <36.545792, 37.944878, 30.924599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.917797, 38.018875, 31.051632> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092357, -0.718739, 0.689119,
		0.355742, -0.670218, -0.651349,
		0.930010, 0.184992, 0.317585,
		37.196800, 38.074371, 31.146908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.868435, 37.303192, 30.873247>,  <36.545792, 37.944878, 30.924599>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.868435, 37.303192, 30.873247> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.087887, 37.521397, 31.126677>,  <37.219559, 37.652321, 31.278734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.087887, 37.521397, 31.126677>,  <36.868435, 37.303192, 30.873247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.087887, 37.521397, 31.126677> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076628, -0.721806, 0.687840,
		0.832543, -0.425922, -0.354206,
		0.548634, 0.545515, 0.633573,
		37.252476, 37.685051, 31.316748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.340313, 36.897640, 31.129147>,  <36.868435, 37.303192, 30.873247>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.340313, 36.897640, 31.129147> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.283577, 37.191349, 31.394695>,  <37.249535, 37.367573, 31.554024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.283577, 37.191349, 31.394695>,  <37.340313, 36.897640, 31.129147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.283577, 37.191349, 31.394695> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312148, -0.669612, 0.673931,
		0.939385, -0.111635, 0.324180,
		-0.141841, 0.734273, 0.663870,
		37.241024, 37.411633, 31.593857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.679993, 36.697681, 31.756783>,  <37.340313, 36.897640, 31.129147>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.679993, 36.697681, 31.756783> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.390209, 36.958179, 31.847158>,  <37.216339, 37.114479, 31.901384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.390209, 36.958179, 31.847158>,  <37.679993, 36.697681, 31.756783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.390209, 36.958179, 31.847158> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233695, -0.540400, 0.808303,
		0.648500, 0.532778, 0.543687,
		-0.724455, 0.651242, 0.225942,
		37.172874, 37.153553, 31.914942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.787224, 36.763905, 32.515869>,  <37.679993, 36.697681, 31.756783>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.787224, 36.763905, 32.515869> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.434792, 36.951405, 32.490681>,  <37.223331, 37.063904, 32.475567>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.434792, 36.951405, 32.490681>,  <37.787224, 36.763905, 32.515869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.434792, 36.951405, 32.490681> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271349, -0.391954, 0.879058,
		0.387374, 0.791612, 0.472539,
		-0.881085, 0.468747, -0.062971,
		37.170467, 37.092030, 32.471790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.648731, 37.267868, 33.165077>,  <37.787224, 36.763905, 32.515869>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.648731, 37.267868, 33.165077> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.304382, 37.141201, 33.005768>,  <37.097775, 37.065201, 32.910183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.304382, 37.141201, 33.005768>,  <37.648731, 37.267868, 33.165077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.304382, 37.141201, 33.005768> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283812, -0.350828, 0.892396,
		-0.422324, 0.881271, 0.212141,
		-0.860868, -0.316672, -0.398278,
		37.046124, 37.046200, 32.886284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.179588, 37.380905, 33.699352>,  <37.648731, 37.267868, 33.165077>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.179588, 37.380905, 33.699352> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.012711, 37.110344, 33.456558>,  <36.912582, 36.948009, 33.310883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.012711, 37.110344, 33.456558>,  <37.179588, 37.380905, 33.699352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.012711, 37.110344, 33.456558> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304150, -0.525458, 0.794599,
		-0.856410, 0.516120, 0.013493,
		-0.417198, -0.676398, -0.606985,
		36.887550, 36.907425, 33.274464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.622948, 37.261082, 34.027920>,  <37.179588, 37.380905, 33.699352>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.622948, 37.261082, 34.027920> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.692204, 36.953644, 33.781574>,  <36.733757, 36.769180, 33.633766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.692204, 36.953644, 33.781574>,  <36.622948, 37.261082, 34.027920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.692204, 36.953644, 33.781574> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429325, -0.621671, 0.655137,
		-0.886398, 0.150975, -0.437612,
		0.173142, -0.768591, -0.615866,
		36.744144, 36.723068, 33.596813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.060417, 36.801792, 34.200592>,  <36.622948, 37.261082, 34.027920>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.060417, 36.801792, 34.200592> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.303436, 36.560471, 33.993942>,  <36.449249, 36.415676, 33.869953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.303436, 36.560471, 33.993942>,  <36.060417, 36.801792, 34.200592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.303436, 36.560471, 33.993942> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315584, -0.780240, 0.540029,
		-0.728895, -0.165058, -0.664431,
		0.607552, -0.603308, -0.516623,
		36.485703, 36.379478, 33.838955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.693031, 36.223068, 34.162567>,  <36.060417, 36.801792, 34.200592>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.693031, 36.223068, 34.162567> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.064812, 36.104782, 34.074326>,  <36.287880, 36.033810, 34.021381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.064812, 36.104782, 34.074326>,  <35.693031, 36.223068, 34.162567>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.064812, 36.104782, 34.074326> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138814, -0.834324, 0.533511,
		-0.341823, -0.465251, -0.816516,
		0.929455, -0.295711, -0.220608,
		36.343647, 36.016068, 34.008144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.641003, 35.558430, 33.872044>,  <35.693031, 36.223068, 34.162567>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.641003, 35.558430, 33.872044> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.014725, 35.579220, 34.013111>,  <36.238956, 35.591694, 34.097752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.014725, 35.579220, 34.013111>,  <35.641003, 35.558430, 33.872044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.014725, 35.579220, 34.013111> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115337, -0.892023, 0.437027,
		0.337302, -0.448992, -0.827426,
		0.934305, 0.051977, 0.352666,
		36.295017, 35.594814, 34.118912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.936195, 34.878914, 33.839386>,  <35.641003, 35.558430, 33.872044>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.936195, 34.878914, 33.839386> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.152424, 35.081070, 34.108418>,  <36.282162, 35.202362, 34.269836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.152424, 35.081070, 34.108418>,  <35.936195, 34.878914, 33.839386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.152424, 35.081070, 34.108418> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113245, -0.748470, 0.653428,
		0.833641, -0.429392, -0.347369,
		0.540572, 0.505387, 0.672581,
		36.314594, 35.232685, 34.310192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.519161, 34.512039, 34.075237>,  <35.936195, 34.878914, 33.839386>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.519161, 34.512039, 34.075237> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.448708, 34.750278, 34.388729>,  <36.406433, 34.893223, 34.576824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.448708, 34.750278, 34.388729>,  <36.519161, 34.512039, 34.075237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.448708, 34.750278, 34.388729> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101279, -0.802921, 0.587419,
		0.979141, 0.024091, 0.201746,
		-0.176137, 0.595599, 0.783733,
		36.395866, 34.928959, 34.623848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.942799, 35.112713, 33.869419>,  <36.519161, 34.512039, 34.075237>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.942799, 35.112713, 33.869419> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.982121, 34.714996, 33.852837>,  <37.005714, 34.476368, 33.842888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.982121, 34.714996, 33.852837>,  <36.942799, 35.112713, 33.869419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.982121, 34.714996, 33.852837> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259126, 0.014647, -0.965733,
		0.960828, 0.105677, -0.256207,
		0.098303, -0.994292, -0.041457,
		37.011612, 34.416710, 33.840401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.313843, 35.013268, 33.259434>,  <36.942799, 35.112713, 33.869419>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.313843, 35.013268, 33.259434> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.190632, 34.635738, 33.307297>,  <37.116707, 34.409222, 33.336014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.190632, 34.635738, 33.307297>,  <37.313843, 35.013268, 33.259434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.190632, 34.635738, 33.307297> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157032, -0.073612, -0.984846,
		0.938328, -0.322151, -0.125536,
		-0.308028, -0.943822, 0.119660,
		37.098225, 34.352592, 33.343193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.753922, 34.688992, 32.785351>,  <37.313843, 35.013268, 33.259434>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.753922, 34.688992, 32.785351> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.426334, 34.467541, 32.845737>,  <37.229782, 34.334671, 32.881969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.426334, 34.467541, 32.845737>,  <37.753922, 34.688992, 32.785351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.426334, 34.467541, 32.845737> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133589, -0.071910, -0.988424,
		0.558076, -0.829653, -0.015066,
		-0.818966, -0.553629, 0.150964,
		37.180645, 34.301453, 32.891026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.788662, 34.048103, 32.397438>,  <37.753922, 34.688992, 32.785351>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.788662, 34.048103, 32.397438> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.397552, 34.118504, 32.443020>,  <37.162888, 34.160744, 32.470367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.397552, 34.118504, 32.443020>,  <37.788662, 34.048103, 32.397438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.397552, 34.118504, 32.443020> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133096, -0.101049, -0.985938,
		-0.162013, -0.979189, 0.122229,
		-0.977772, 0.176003, 0.113955,
		37.104221, 34.171303, 32.477207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.469391, 33.774422, 31.855112>,  <37.788662, 34.048103, 32.397438>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.469391, 33.774422, 31.855112> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.172413, 34.016224, 31.970591>,  <36.994225, 34.161304, 32.039879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.172413, 34.016224, 31.970591>,  <37.469391, 33.774422, 31.855112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.172413, 34.016224, 31.970591> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400832, -0.055569, -0.914465,
		-0.536760, -0.794657, 0.283564,
		-0.742443, 0.604510, 0.288697,
		36.949680, 34.197578, 32.057201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.903835, 33.589622, 31.373493>,  <37.469391, 33.774422, 31.855112>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.903835, 33.589622, 31.373493> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.769932, 33.931141, 31.532974>,  <36.689590, 34.136051, 31.628664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.769932, 33.931141, 31.532974>,  <36.903835, 33.589622, 31.373493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.769932, 33.931141, 31.532974> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288759, 0.309811, -0.905889,
		-0.896968, -0.418387, 0.142829,
		-0.334763, 0.853797, 0.398703,
		36.669502, 34.187279, 31.652586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.267063, 33.613644, 31.021570>,  <36.903835, 33.589622, 31.373493>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.267063, 33.613644, 31.021570> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.410702, 33.953243, 31.176622>,  <36.496883, 34.157001, 31.269653>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.410702, 33.953243, 31.176622>,  <36.267063, 33.613644, 31.021570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.410702, 33.953243, 31.176622> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110811, 0.451181, -0.885527,
		-0.926700, 0.275033, 0.256094,
		0.359094, 0.848995, 0.387632,
		36.518429, 34.207943, 31.292912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.873474, 34.110958, 30.724138>,  <36.267063, 33.613644, 31.021570>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.873474, 34.110958, 30.724138> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.228100, 34.274788, 30.810156>,  <36.440876, 34.373085, 30.861767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.228100, 34.274788, 30.810156>,  <35.873474, 34.110958, 30.724138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.228100, 34.274788, 30.810156> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007688, 0.477844, -0.878411,
		-0.462537, 0.777117, 0.426789,
		0.886567, 0.409579, 0.215046,
		36.494068, 34.397663, 30.874670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.874340, 34.689884, 30.338495>,  <35.873474, 34.110958, 30.724138>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.874340, 34.689884, 30.338495> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.256989, 34.703903, 30.454184>,  <36.486576, 34.712315, 30.523596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.256989, 34.703903, 30.454184>,  <35.874340, 34.689884, 30.338495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.256989, 34.703903, 30.454184> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228383, 0.526156, -0.819146,
		-0.180881, 0.849665, 0.495329,
		0.956621, 0.035043, 0.289221,
		36.543976, 34.714417, 30.540951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.084690, 35.346588, 30.397018>,  <35.874340, 34.689884, 30.338495>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.084690, 35.346588, 30.397018> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.421627, 35.137745, 30.343546>,  <36.623787, 35.012440, 30.311462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.421627, 35.137745, 30.343546>,  <36.084690, 35.346588, 30.397018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.421627, 35.137745, 30.343546> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298905, 0.658964, -0.690233,
		0.448468, 0.541451, 0.711131,
		0.842338, -0.522108, -0.133682,
		36.674328, 34.981113, 30.303442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.726452, 35.907864, 30.424786>,  <36.084690, 35.346588, 30.397018>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.726452, 35.907864, 30.424786> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.838238, 35.565144, 30.251448>,  <36.905308, 35.359512, 30.147444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.838238, 35.565144, 30.251448>,  <36.726452, 35.907864, 30.424786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.838238, 35.565144, 30.251448> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568131, 0.511402, -0.644744,
		0.774033, -0.066015, 0.629695,
		0.279464, -0.856803, -0.433347,
		36.922077, 35.308102, 30.121443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.410404, 36.056084, 30.258425>,  <36.726452, 35.907864, 30.424786>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.410404, 36.056084, 30.258425> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.343334, 35.727486, 30.040422>,  <37.303093, 35.530327, 29.909620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.343334, 35.727486, 30.040422>,  <37.410404, 36.056084, 30.258425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.343334, 35.727486, 30.040422> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527395, 0.392325, -0.753615,
		0.832909, -0.413799, 0.367467,
		-0.167679, -0.821493, -0.545007,
		37.293030, 35.481037, 29.876921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.059212, 35.620399, 30.122604>,  <37.410404, 36.056084, 30.258425>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.059212, 35.620399, 30.122604> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.781944, 35.574463, 29.837978>,  <37.615582, 35.546902, 29.667204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.781944, 35.574463, 29.837978>,  <38.059212, 35.620399, 30.122604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.781944, 35.574463, 29.837978> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652662, 0.318905, -0.687264,
		0.305851, -0.940803, -0.146100,
		-0.693172, -0.114846, -0.711564,
		37.573994, 35.540009, 29.624510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.471062, 35.503910, 29.480482>,  <38.059212, 35.620399, 30.122604>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.471062, 35.503910, 29.480482> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.100842, 35.549278, 29.335987>,  <37.878708, 35.576500, 29.249290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.100842, 35.549278, 29.335987>,  <38.471062, 35.503910, 29.480482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.100842, 35.549278, 29.335987> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377469, 0.351018, -0.856915,
		0.029606, -0.929473, -0.367699,
		-0.925549, 0.113425, -0.361240,
		37.823177, 35.583305, 29.227615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.554295, 35.440365, 28.776859>,  <38.471062, 35.503910, 29.480482>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.554295, 35.440365, 28.776859> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.198509, 35.623146, 28.773811>,  <37.985039, 35.732815, 28.771982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.198509, 35.623146, 28.773811>,  <38.554295, 35.440365, 28.776859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.198509, 35.623146, 28.773811> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276113, 0.524022, -0.805706,
		-0.364174, -0.718748, -0.592266,
		-0.889460, 0.456949, -0.007620,
		37.931671, 35.760231, 28.771524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.434814, 35.635235, 28.027756>,  <38.554295, 35.440365, 28.776859>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.434814, 35.635235, 28.027756> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.193993, 35.871128, 28.243067>,  <38.049500, 36.012665, 28.372253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.193993, 35.871128, 28.243067>,  <38.434814, 35.635235, 28.027756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.193993, 35.871128, 28.243067> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063179, 0.707220, -0.704165,
		-0.795952, -0.389938, -0.463044,
		-0.602054, 0.589736, 0.538277,
		38.013378, 36.048050, 28.404551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.759308, 35.730865, 27.649288>,  <38.434814, 35.635235, 28.027756>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.759308, 35.730865, 27.649288> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.837448, 36.041767, 27.888523>,  <37.884331, 36.228310, 28.032064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.837448, 36.041767, 27.888523>,  <37.759308, 35.730865, 27.649288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.837448, 36.041767, 27.888523> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100531, 0.590755, -0.800563,
		-0.975567, 0.216517, 0.037266,
		0.195351, 0.777257, 0.598088,
		37.896053, 36.274944, 28.067949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.472710, 36.304478, 27.247423>,  <37.759308, 35.730865, 27.649288>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.472710, 36.304478, 27.247423> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.732327, 36.460148, 27.508894>,  <37.888096, 36.553551, 27.665775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.732327, 36.460148, 27.508894>,  <37.472710, 36.304478, 27.247423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.732327, 36.460148, 27.508894> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191485, 0.748012, -0.635462,
		-0.736260, 0.537610, 0.410970,
		0.649041, 0.389171, 0.653675,
		37.927040, 36.576900, 27.704996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.283737, 37.073357, 27.237728>,  <37.472710, 36.304478, 27.247423>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.283737, 37.073357, 27.237728> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.646481, 37.042034, 27.403370>,  <37.864124, 37.023243, 27.502754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.646481, 37.042034, 27.403370>,  <37.283737, 37.073357, 27.237728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.646481, 37.042034, 27.403370> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303257, 0.803573, -0.512158,
		-0.292659, 0.590033, 0.752470,
		0.906855, -0.078304, 0.414105,
		37.918537, 37.018543, 27.527601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.428356, 37.715866, 27.546017> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.777416, 37.535202, 27.471731>,  <37.986851, 37.426804, 27.427160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.777416, 37.535202, 27.471731>,  <37.428356, 37.715866, 27.546017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.777416, 37.535202, 27.471731> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349119, 0.842886, -0.409463,
		0.341475, 0.292480, 0.893225,
		0.872646, -0.451663, -0.185714,
		38.039211, 37.399704, 27.416018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.914555, 38.237984, 27.670176>,  <37.428356, 37.715866, 27.546017>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.914555, 38.237984, 27.670176> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.156445, 37.975700, 27.489355>,  <38.301579, 37.818329, 27.380863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.156445, 37.975700, 27.489355>,  <37.914555, 38.237984, 27.670176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.156445, 37.975700, 27.489355> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589668, 0.750147, -0.299285,
		0.535348, -0.085573, 0.840286,
		0.604726, -0.655711, -0.452050,
		38.337864, 37.778988, 27.353741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.614761, 38.407948, 27.907259>,  <37.914555, 38.237984, 27.670176>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.614761, 38.407948, 27.907259> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.663868, 38.184727, 27.578989>,  <38.693333, 38.050793, 27.382027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.663868, 38.184727, 27.578989>,  <38.614761, 38.407948, 27.907259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.663868, 38.184727, 27.578989> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559543, 0.721887, -0.407173,
		0.819658, -0.409216, 0.400878,
		0.122767, -0.558051, -0.820675,
		38.700699, 38.017311, 27.332787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.312565, 38.446541, 27.686453>,  <38.614761, 38.407948, 27.907259>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.312565, 38.446541, 27.686453> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.096443, 38.340893, 27.366875>,  <38.966770, 38.277504, 27.175127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.096443, 38.340893, 27.366875>,  <39.312565, 38.446541, 27.686453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.096443, 38.340893, 27.366875> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369028, 0.778915, -0.507061,
		0.756233, -0.568801, -0.323385,
		-0.540305, -0.264118, -0.798944,
		38.934353, 38.261658, 27.127192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.786953, 38.511101, 27.203814>,  <39.312565, 38.446541, 27.686453>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.786953, 38.511101, 27.203814> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.425167, 38.531033, 27.034363>,  <39.208096, 38.542992, 26.932692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.425167, 38.531033, 27.034363>,  <39.786953, 38.511101, 27.203814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.425167, 38.531033, 27.034363> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297401, 0.785614, -0.542552,
		0.305773, -0.616707, -0.725380,
		-0.904464, 0.049831, -0.423629,
		39.153828, 38.545982, 26.907274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.000240, 38.743786, 26.492830>,  <39.786953, 38.511101, 27.203814>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.000240, 38.743786, 26.492830> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.603970, 38.795059, 26.511305>,  <39.366207, 38.825825, 26.522388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.603970, 38.795059, 26.511305>,  <40.000240, 38.743786, 26.492830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.603970, 38.795059, 26.511305> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080631, 0.824790, -0.559662,
		-0.109834, -0.550718, -0.827434,
		-0.990674, 0.128187, 0.046185,
		39.306767, 38.833515, 26.525160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.615734, 38.718189, 25.737141>,  <40.000240, 38.743786, 26.492830>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.615734, 38.718189, 25.737141> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.396763, 38.929497, 25.996756>,  <39.265381, 39.056282, 26.152525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.396763, 38.929497, 25.996756>,  <39.615734, 38.718189, 25.737141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.396763, 38.929497, 25.996756> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095935, 0.810074, -0.578426,
		-0.831333, -0.254383, -0.494140,
		-0.547432, 0.528270, 0.649038,
		39.232533, 39.087978, 26.191467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.386265, 39.105576, 25.290094>,  <39.615734, 38.718189, 25.737141>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.386265, 39.105576, 25.290094> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.264465, 39.265171, 25.636063>,  <39.191387, 39.360928, 25.843643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.264465, 39.265171, 25.636063>,  <39.386265, 39.105576, 25.290094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.264465, 39.265171, 25.636063> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082021, 0.893683, -0.441137,
		-0.948975, -0.205267, -0.239398,
		-0.304497, 0.398993, 0.864920,
		39.173115, 39.384869, 25.895538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.809822, 39.384857, 25.156792>,  <39.386265, 39.105576, 25.290094>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.809822, 39.384857, 25.156792> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.969543, 39.570339, 25.473154>,  <39.065376, 39.681629, 25.662971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.969543, 39.570339, 25.473154>,  <38.809822, 39.384857, 25.156792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.969543, 39.570339, 25.473154> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054069, 0.849252, -0.525212,
		-0.915223, 0.252482, 0.314037,
		0.399303, 0.463707, 0.790906,
		39.089333, 39.709450, 25.710426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.372044, 39.976078, 25.219986>,  <38.809822, 39.384857, 25.156792>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.372044, 39.976078, 25.219986> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.741508, 40.028568, 25.363998>,  <38.963188, 40.060062, 25.450405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.741508, 40.028568, 25.363998>,  <38.372044, 39.976078, 25.219986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.741508, 40.028568, 25.363998> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159037, 0.723523, -0.671731,
		-0.348640, 0.677712, 0.647423,
		0.923665, 0.131228, 0.360030,
		39.018608, 40.067936, 25.472008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.426891, 40.626286, 25.255276>,  <38.372044, 39.976078, 25.219986>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.426891, 40.626286, 25.255276> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.818539, 40.557064, 25.297934>,  <39.053528, 40.515530, 25.323528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.818539, 40.557064, 25.297934>,  <38.426891, 40.626286, 25.255276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.818539, 40.557064, 25.297934> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199874, 0.724000, -0.660208,
		0.037043, 0.667739, 0.743473,
		0.979121, -0.173057, 0.106645,
		39.112274, 40.505146, 25.329927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.750710, 41.225899, 25.418304>,  <38.426891, 40.626286, 25.255276>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.750710, 41.225899, 25.418304> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.047497, 41.007034, 25.263334>,  <39.225571, 40.875717, 25.170353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.047497, 41.007034, 25.263334>,  <38.750710, 41.225899, 25.418304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.047497, 41.007034, 25.263334> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353989, 0.810480, -0.466706,
		0.569361, 0.209139, 0.795040,
		0.741970, -0.547160, -0.387423,
		39.270088, 40.842888, 25.147108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.206711, 41.745384, 25.233444>,  <38.750710, 41.225899, 25.418304>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.206711, 41.745384, 25.233444> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.318680, 41.408932, 25.048344>,  <39.385860, 41.207062, 24.937283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.318680, 41.408932, 25.048344>,  <39.206711, 41.745384, 25.233444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.318680, 41.408932, 25.048344> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605068, 0.528810, -0.595191,
		0.745342, -0.113387, 0.656969,
		0.279925, -0.841132, -0.462751,
		39.402657, 41.156593, 24.909519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.010780, 41.692371, 25.306932>,  <39.206711, 41.745384, 25.233444>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.010780, 41.692371, 25.306932> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.893051, 41.478569, 24.990028>,  <39.822414, 41.350288, 24.799885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.893051, 41.478569, 24.990028>,  <40.010780, 41.692371, 25.306932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.893051, 41.478569, 24.990028> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594322, 0.546830, -0.589710,
		0.748436, -0.644422, 0.156726,
		-0.294320, -0.534506, -0.792262,
		39.804756, 41.318218, 24.752350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.613567, 41.389404, 25.000204>,  <40.010780, 41.692371, 25.306932>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.613567, 41.389404, 25.000204> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.317368, 41.422382, 24.733414>,  <40.139648, 41.442169, 24.573339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.317368, 41.422382, 24.733414>,  <40.613567, 41.389404, 25.000204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.317368, 41.422382, 24.733414> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596494, 0.537819, -0.595773,
		0.309596, -0.839019, -0.447433,
		-0.740503, 0.082443, -0.666977,
		40.095215, 41.447113, 24.533321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.944878, 41.365257, 24.338831>,  <40.613567, 41.389404, 25.000204>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.944878, 41.365257, 24.338831> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.578415, 41.506958, 24.263828>,  <40.358536, 41.591976, 24.218826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.578415, 41.506958, 24.263828>,  <40.944878, 41.365257, 24.338831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.578415, 41.506958, 24.263828> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388857, 0.672154, -0.630078,
		-0.097170, -0.650166, -0.753553,
		-0.916159, 0.354249, -0.187508,
		40.303566, 41.613232, 24.207575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.958344, 41.386581, 23.635950>,  <40.944878, 41.365257, 24.338831>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.958344, 41.386581, 23.635950> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.654575, 41.625340, 23.739481>,  <40.472313, 41.768593, 23.801600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.654575, 41.625340, 23.739481>,  <40.958344, 41.386581, 23.635950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.654575, 41.625340, 23.739481> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291317, 0.667701, -0.685063,
		-0.581729, -0.444852, -0.680953,
		-0.759425, 0.596894, 0.258828,
		40.426746, 41.804409, 23.817129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.535290, 41.568047, 22.932581>,  <40.958344, 41.386581, 23.635950>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.535290, 41.568047, 22.932581> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.418034, 41.859619, 23.180040>,  <40.347679, 42.034561, 23.328516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.418034, 41.859619, 23.180040>,  <40.535290, 41.568047, 22.932581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.418034, 41.859619, 23.180040> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004267, 0.646071, -0.763265,
		-0.956059, -0.226387, -0.186282,
		-0.293145, 0.728931, 0.618648,
		40.330090, 42.078297, 23.365635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.074162, 41.959290, 22.553770>,  <40.535290, 41.568047, 22.932581>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.074162, 41.959290, 22.553770> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.203552, 42.198589, 22.847017>,  <40.281185, 42.342171, 23.022964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.203552, 42.198589, 22.847017>,  <40.074162, 41.959290, 22.553770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.203552, 42.198589, 22.847017> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003259, 0.774062, -0.633101,
		-0.946230, 0.207183, 0.248441,
		0.323477, 0.598250, 0.733116,
		40.300594, 42.378063, 23.066952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.783058, 42.718670, 22.447607>,  <40.074162, 41.959290, 22.553770>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.783058, 42.718670, 22.447607> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.083721, 42.764950, 22.707338>,  <40.264118, 42.792717, 22.863178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.083721, 42.764950, 22.707338>,  <39.783058, 42.718670, 22.447607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.083721, 42.764950, 22.707338> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232695, 0.874669, -0.425213,
		-0.617144, 0.470710, 0.630528,
		0.751655, 0.115697, 0.649329,
		40.309219, 42.799660, 22.902138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.751442, 43.435509, 22.628286>,  <39.783058, 42.718670, 22.447607>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.751442, 43.435509, 22.628286> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.127853, 43.316032, 22.691854>,  <40.353699, 43.244347, 22.729996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.127853, 43.316032, 22.691854>,  <39.751442, 43.435509, 22.628286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.127853, 43.316032, 22.691854> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325706, 0.926883, -0.186560,
		-0.091575, 0.227318, 0.969505,
		0.941026, -0.298689, 0.158918,
		40.410160, 43.226425, 22.739531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.138268, 43.957996, 22.996954>,  <39.751442, 43.435509, 22.628286>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.138268, 43.957996, 22.996954> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.440472, 43.769699, 22.814695>,  <40.621792, 43.656723, 22.705339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.440472, 43.769699, 22.814695>,  <40.138268, 43.957996, 22.996954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.440472, 43.769699, 22.814695> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400736, 0.882263, -0.247027,
		0.518285, 0.004038, 0.855199,
		0.755508, -0.470739, -0.455646,
		40.667126, 43.628479, 22.678001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.860725, 43.961746, 23.349611>,  <40.138268, 43.957996, 22.996954>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.860725, 43.961746, 23.349611> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.920631, 43.939194, 22.954765>,  <40.956573, 43.925663, 22.717857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.920631, 43.939194, 22.954765>,  <40.860725, 43.961746, 23.349611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.920631, 43.939194, 22.954765> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264084, 0.964383, -0.015017,
		0.952801, -0.258431, 0.159320,
		0.149764, -0.056382, -0.987113,
		40.965561, 43.922279, 22.658632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.475376, 44.195076, 23.162352>,  <40.860725, 43.961746, 23.349611>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.475376, 44.195076, 23.162352> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.219933, 44.289459, 22.869366>,  <41.066666, 44.346088, 22.693575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.219933, 44.289459, 22.869366>,  <41.475376, 44.195076, 23.162352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.219933, 44.289459, 22.869366> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078959, 0.966900, 0.242632,
		0.765470, 0.097112, -0.636100,
		-0.638608, 0.235954, -0.732465,
		41.028351, 44.360245, 22.649626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.831078, 44.909855, 23.429363>,  <41.475376, 44.195076, 23.162352>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.831078, 44.909855, 23.429363> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.731014, 45.215714, 23.666927>,  <41.670975, 45.399231, 23.809465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.731014, 45.215714, 23.666927>,  <41.831078, 44.909855, 23.429363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.731014, 45.215714, 23.666927> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666496, -0.580940, 0.467218,
		0.702285, -0.278960, 0.654964,
		-0.250159, 0.764651, 0.593911,
		41.655968, 45.445110, 23.845100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.001663, 44.798161, 24.066790>,  <41.831078, 44.909855, 23.429363>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.001663, 44.798161, 24.066790> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.722401, 45.079872, 24.118277>,  <41.554844, 45.248898, 24.149168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.722401, 45.079872, 24.118277>,  <42.001663, 44.798161, 24.066790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.722401, 45.079872, 24.118277> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501088, -0.609091, 0.614752,
		0.511355, 0.364696, 0.778147,
		-0.698159, 0.704276, 0.128717,
		41.512955, 45.291157, 24.156891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.887970, 44.784237, 24.825720>,  <42.001663, 44.798161, 24.066790>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.887970, 44.784237, 24.825720> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.563179, 44.952251, 24.663603>,  <41.368305, 45.053059, 24.566332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.563179, 44.952251, 24.663603>,  <41.887970, 44.784237, 24.825720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.563179, 44.952251, 24.663603> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572573, -0.438333, 0.692838,
		0.113363, 0.794629, 0.596418,
		-0.811978, 0.420035, -0.405292,
		41.319584, 45.078262, 24.542015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.542873, 45.145710, 25.447222>,  <41.887970, 44.784237, 24.825720>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.542873, 45.145710, 25.447222> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.284409, 45.100014, 25.145382>,  <41.129330, 45.072594, 24.964277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.284409, 45.100014, 25.145382>,  <41.542873, 45.145710, 25.447222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.284409, 45.100014, 25.145382> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648032, -0.440151, 0.621548,
		-0.403146, 0.890626, 0.210376,
		-0.646164, -0.114245, -0.754599,
		41.090561, 45.065739, 24.919003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.958282, 45.401058, 25.664295>,  <41.542873, 45.145710, 25.447222>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.958282, 45.401058, 25.664295> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.863567, 45.124851, 25.390911>,  <40.806736, 44.959126, 25.226881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.863567, 45.124851, 25.390911>,  <40.958282, 45.401058, 25.664295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.863567, 45.124851, 25.390911> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530190, -0.497646, 0.686474,
		-0.814143, 0.524915, -0.248266,
		-0.236792, -0.690516, -0.683460,
		40.792530, 44.917698, 25.185873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.160259, 45.287132, 25.790953>,  <40.958282, 45.401058, 25.664295>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.160259, 45.287132, 25.790953> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.284206, 44.974617, 25.574223>,  <40.358574, 44.787109, 25.444185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.284206, 44.974617, 25.574223>,  <40.160259, 45.287132, 25.790953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.284206, 44.974617, 25.574223> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528003, -0.615325, 0.585311,
		-0.790694, 0.104717, -0.603189,
		0.309865, -0.781287, -0.541825,
		40.377167, 44.740231, 25.411674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.556271, 44.916069, 25.562550>,  <40.160259, 45.287132, 25.790953>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.556271, 44.916069, 25.562550> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.846279, 44.641277, 25.542919>,  <40.020283, 44.476402, 25.531141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.846279, 44.641277, 25.542919>,  <39.556271, 44.916069, 25.562550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.846279, 44.641277, 25.542919> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549887, -0.620294, 0.559339,
		-0.414696, -0.378545, -0.827485,
		0.725019, -0.686979, -0.049076,
		40.063786, 44.435184, 25.528196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.184532, 44.345608, 25.595352>,  <39.556271, 44.916069, 25.562550>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.184532, 44.345608, 25.595352> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.551113, 44.200089, 25.662003>,  <39.771061, 44.112778, 25.701992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.551113, 44.200089, 25.662003>,  <39.184532, 44.345608, 25.595352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.551113, 44.200089, 25.662003> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364742, -0.588265, 0.721739,
		-0.164545, -0.722216, -0.671809,
		0.916454, -0.363796, 0.166626,
		39.826050, 44.090950, 25.711990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.017330, 43.637978, 25.603666>,  <39.184532, 44.345608, 25.595352>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.017330, 43.637978, 25.603666> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.368370, 43.649925, 25.795052>,  <39.578995, 43.657093, 25.909883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.368370, 43.649925, 25.795052>,  <39.017330, 43.637978, 25.603666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.368370, 43.649925, 25.795052> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335800, -0.673997, 0.658001,
		0.342139, -0.738130, -0.581469,
		0.877599, 0.029870, 0.478465,
		39.631649, 43.658886, 25.938591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.374287, 42.968124, 25.387398>,  <39.017330, 43.637978, 25.603666>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.374287, 42.968124, 25.387398> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.507660, 43.113770, 25.735249>,  <39.587685, 43.201157, 25.943958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.507660, 43.113770, 25.735249>,  <39.374287, 42.968124, 25.387398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.507660, 43.113770, 25.735249> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416670, -0.770520, 0.482374,
		0.845702, -0.523184, -0.105199,
		0.333428, 0.364111, 0.869625,
		39.607689, 43.223003, 25.996136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.620861, 42.353794, 25.709377>,  <39.374287, 42.968124, 25.387398>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.620861, 42.353794, 25.709377> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.618877, 42.611378, 26.015394>,  <39.617687, 42.765930, 26.199005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.618877, 42.611378, 26.015394>,  <39.620861, 42.353794, 25.709377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.618877, 42.611378, 26.015394> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342430, -0.719891, 0.603737,
		0.939530, -0.258979, 0.224082,
		-0.004960, 0.643962, 0.765042,
		39.617390, 42.804565, 26.244907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.000404, 42.090836, 26.243423>,  <39.620861, 42.353794, 25.709377>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.000404, 42.090836, 26.243423> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.754818, 42.347469, 26.427343>,  <39.607464, 42.501450, 26.537695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.754818, 42.347469, 26.427343>,  <40.000404, 42.090836, 26.243423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.754818, 42.347469, 26.427343> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206169, -0.692646, 0.691185,
		0.761930, 0.329569, 0.557537,
		-0.613969, 0.641581, 0.459801,
		39.570629, 42.539944, 26.565283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.141541, 41.992119, 26.930946>,  <40.000404, 42.090836, 26.243423>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.141541, 41.992119, 26.930946> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.781700, 42.165909, 26.913300>,  <39.565796, 42.270184, 26.902712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.781700, 42.165909, 26.913300>,  <40.141541, 41.992119, 26.930946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.781700, 42.165909, 26.913300> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355228, -0.669251, 0.652623,
		0.254023, 0.602773, 0.756398,
		-0.899603, 0.434475, -0.044117,
		39.511818, 42.296253, 26.900064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.917271, 42.132736, 27.641737>,  <40.141541, 41.992119, 26.930946>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.917271, 42.132736, 27.641737> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.580254, 42.154129, 27.427347>,  <39.378044, 42.166965, 27.298714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.580254, 42.154129, 27.427347>,  <39.917271, 42.132736, 27.641737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.580254, 42.154129, 27.427347> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442310, -0.636565, 0.631780,
		-0.307392, 0.769366, 0.559988,
		-0.842539, 0.053484, -0.535974,
		39.327492, 42.170174, 27.266556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.485664, 42.273594, 28.204533>,  <39.917271, 42.132736, 27.641737>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.485664, 42.273594, 28.204533> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.236347, 42.156853, 27.914337>,  <39.086758, 42.086807, 27.740221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.236347, 42.156853, 27.914337>,  <39.485664, 42.273594, 28.204533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.236347, 42.156853, 27.914337> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473222, -0.597815, 0.647053,
		-0.622553, 0.746618, 0.234500,
		-0.623289, -0.291854, -0.725488,
		39.049362, 42.069298, 27.696692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.706635, 42.268570, 28.521761>,  <39.485664, 42.273594, 28.204533>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.706635, 42.268570, 28.521761> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.743923, 42.027866, 28.204472>,  <38.766296, 41.883446, 28.014099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.743923, 42.027866, 28.204472>,  <38.706635, 42.268570, 28.521761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.743923, 42.027866, 28.204472> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357679, -0.763746, 0.537362,
		-0.929180, 0.233626, -0.286432,
		0.093219, -0.601756, -0.793221,
		38.771889, 41.847340, 27.966505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.091396, 41.908070, 28.386736>,  <38.706635, 42.268570, 28.521761>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.091396, 41.908070, 28.386736> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.373993, 41.675915, 28.224739>,  <38.543552, 41.536621, 28.127541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.373993, 41.675915, 28.224739>,  <38.091396, 41.908070, 28.386736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.373993, 41.675915, 28.224739> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325600, -0.774648, 0.542131,
		-0.628371, -0.251147, -0.736258,
		0.706495, -0.580384, -0.404993,
		38.585941, 41.501801, 28.103241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.674442, 41.382786, 28.286779>,  <38.091396, 41.908070, 28.386736>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.674442, 41.382786, 28.286779> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.051365, 41.253883, 28.250547>,  <38.277519, 41.176544, 28.228809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.051365, 41.253883, 28.250547>,  <37.674442, 41.382786, 28.286779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.051365, 41.253883, 28.250547> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276332, -0.901584, 0.332848,
		-0.188925, -0.288616, -0.938620,
		0.942310, -0.322254, -0.090578,
		38.334057, 41.157207, 28.223373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.615013, 40.666573, 28.084188>,  <37.674442, 41.382786, 28.286779>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.615013, 40.666573, 28.084188> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.986580, 40.703060, 28.227739>,  <38.209518, 40.724953, 28.313869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.986580, 40.703060, 28.227739>,  <37.615013, 40.666573, 28.084188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.986580, 40.703060, 28.227739> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140096, -0.810561, 0.568651,
		0.342765, -0.578506, -0.740164,
		0.928916, 0.091220, 0.358878,
		38.265255, 40.730427, 28.335403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.907364, 40.024681, 27.998896>,  <37.615013, 40.666573, 28.084188>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.907364, 40.024681, 27.998896> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.112843, 40.213318, 28.285593>,  <38.236130, 40.326500, 28.457611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.112843, 40.213318, 28.285593>,  <37.907364, 40.024681, 27.998896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.112843, 40.213318, 28.285593> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057797, -0.814473, 0.577315,
		0.856026, -0.337988, -0.391132,
		0.513692, 0.471590, 0.716745,
		38.266949, 40.354794, 28.500616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<36.855259, 35.012314, 28.678297> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.065624, 35.184776, 28.971560>,  <37.191845, 35.288254, 29.147516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.065624, 35.184776, 28.971560>,  <36.855259, 35.012314, 28.678297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.065624, 35.184776, 28.971560> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495416, -0.545382, 0.676107,
		0.691357, -0.718793, -0.073225,
		0.525917, 0.431155, 0.733156,
		37.223400, 35.314121, 29.191505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.018921, 34.489616, 29.090572>,  <36.855259, 35.012314, 28.678297>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.018921, 34.489616, 29.090572> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.103485, 34.789730, 29.341133>,  <37.154224, 34.969799, 29.491470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.103485, 34.789730, 29.341133>,  <37.018921, 34.489616, 29.090572>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.103485, 34.789730, 29.341133> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306790, -0.557558, 0.771368,
		0.928000, -0.355252, 0.112304,
		0.211414, 0.750284, 0.626401,
		37.166908, 35.014816, 29.529053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.333755, 34.153934, 29.616026>,  <37.018921, 34.489616, 29.090572>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.333755, 34.153934, 29.616026> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.238106, 34.511692, 29.767223>,  <37.180717, 34.726345, 29.857943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.238106, 34.511692, 29.767223>,  <37.333755, 34.153934, 29.616026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.238106, 34.511692, 29.767223> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087797, -0.407610, 0.908926,
		0.967013, 0.184155, 0.175993,
		-0.239120, 0.894394, 0.377996,
		37.166370, 34.780010, 29.880623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.804920, 34.371281, 30.150908>,  <37.333755, 34.153934, 29.616026>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.804920, 34.371281, 30.150908> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.460598, 34.566875, 30.207331>,  <37.254005, 34.684231, 30.241184>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.460598, 34.566875, 30.207331>,  <37.804920, 34.371281, 30.150908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.460598, 34.566875, 30.207331> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059158, -0.371431, 0.926574,
		0.505478, 0.789259, 0.348658,
		-0.860809, 0.488988, 0.141059,
		37.202354, 34.713573, 30.249649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.830406, 34.735462, 30.802774>,  <37.804920, 34.371281, 30.150908>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.830406, 34.735462, 30.802774> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.438614, 34.731186, 30.722273>,  <37.203537, 34.728619, 30.673971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.438614, 34.731186, 30.722273>,  <37.830406, 34.735462, 30.802774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.438614, 34.731186, 30.722273> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190603, -0.275293, 0.942276,
		-0.065482, 0.961301, 0.267606,
		-0.979481, -0.010695, -0.201254,
		37.144768, 34.727978, 30.661896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.531425, 35.080112, 31.286362>,  <37.830406, 34.735462, 30.802774>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.531425, 35.080112, 31.286362> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.231701, 34.853256, 31.149611>,  <37.051865, 34.717144, 31.067560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.231701, 34.853256, 31.149611>,  <37.531425, 35.080112, 31.286362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.231701, 34.853256, 31.149611> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190348, -0.310015, 0.931482,
		-0.634269, 0.763048, 0.124344,
		-0.749314, -0.567141, -0.341877,
		37.006908, 34.683113, 31.047047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.007320, 35.342163, 31.706951>,  <37.531425, 35.080112, 31.286362>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.007320, 35.342163, 31.706951> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.843437, 35.003666, 31.570715>,  <36.745106, 34.800568, 31.488974>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.843437, 35.003666, 31.570715>,  <37.007320, 35.342163, 31.706951>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.843437, 35.003666, 31.570715> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184495, -0.288781, 0.939450,
		-0.893364, 0.447741, -0.037812,
		-0.409711, -0.846247, -0.340593,
		36.720524, 34.749790, 31.468536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.234261, 35.346901, 31.895063>,  <37.007320, 35.342163, 31.706951>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.234261, 35.346901, 31.895063> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.412357, 34.991699, 31.849102>,  <36.519215, 34.778576, 31.821526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.412357, 34.991699, 31.849102>,  <36.234261, 35.346901, 31.895063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.412357, 34.991699, 31.849102> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242596, -0.243160, 0.939160,
		-0.861922, -0.390274, -0.323692,
		0.445238, -0.888009, -0.114906,
		36.545929, 34.725296, 31.814631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.771591, 34.807526, 32.226768>,  <36.234261, 35.346901, 31.895063>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.771591, 34.807526, 32.226768> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.132145, 34.635540, 32.206226>,  <36.348476, 34.532349, 32.193901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.132145, 34.635540, 32.206226>,  <35.771591, 34.807526, 32.226768>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.132145, 34.635540, 32.206226> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067188, -0.256032, 0.964331,
		-0.427780, -0.865780, -0.259672,
		0.901382, -0.429968, -0.051355,
		36.402561, 34.506550, 32.190819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.831570, 34.328480, 32.735199>,  <35.771591, 34.807526, 32.226768>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.831570, 34.328480, 32.735199> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.216732, 34.282665, 32.637470>,  <36.447830, 34.255177, 32.578835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.216732, 34.282665, 32.637470>,  <35.831570, 34.328480, 32.735199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.216732, 34.282665, 32.637470> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163253, -0.473651, 0.865450,
		-0.214848, -0.873234, -0.437383,
		0.962906, -0.114536, -0.244321,
		36.505604, 34.248306, 32.564175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.119076, 33.584885, 32.952133>,  <35.831570, 34.328480, 32.735199>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.119076, 33.584885, 32.952133> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.463963, 33.786274, 32.929886>,  <36.670895, 33.907108, 32.916538>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.463963, 33.786274, 32.929886>,  <36.119076, 33.584885, 32.952133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.463963, 33.786274, 32.929886> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239816, -0.309021, 0.920323,
		0.446172, -0.806857, -0.387185,
		0.862217, 0.503476, -0.055621,
		36.722630, 33.937317, 32.913200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.558342, 33.188019, 33.426407>,  <36.119076, 33.584885, 32.952133>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.558342, 33.188019, 33.426407> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.754543, 33.536098, 33.407799>,  <36.872265, 33.744946, 33.396633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.754543, 33.536098, 33.407799>,  <36.558342, 33.188019, 33.426407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.754543, 33.536098, 33.407799> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301704, -0.119493, 0.945884,
		0.817547, -0.477993, -0.321154,
		0.490502, 0.870198, -0.046521,
		36.901695, 33.797157, 33.393841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.170959, 33.123543, 33.659031>,  <36.558342, 33.188019, 33.426407>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.170959, 33.123543, 33.659031> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.104282, 33.515388, 33.703873>,  <37.064278, 33.750496, 33.730778>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.104282, 33.515388, 33.703873>,  <37.170959, 33.123543, 33.659031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.104282, 33.515388, 33.703873> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053075, -0.104618, 0.993095,
		0.984580, 0.171487, -0.034555,
		-0.166688, 0.979616, 0.112106,
		37.054276, 33.809273, 33.737503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.630287, 33.481586, 34.214233>,  <37.170959, 33.123543, 33.659031>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.630287, 33.481586, 34.214233> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.289417, 33.689045, 34.186508>,  <37.084896, 33.813519, 34.169872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.289417, 33.689045, 34.186508>,  <37.630287, 33.481586, 34.214233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.289417, 33.689045, 34.186508> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105360, -0.040332, 0.993616,
		0.512537, 0.854039, 0.089014,
		-0.852177, 0.518643, -0.069310,
		37.033764, 33.844639, 34.165714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.981098, 33.084732, 34.735992>,  <37.630287, 33.481586, 34.214233>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.981098, 33.084732, 34.735992> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.275970, 32.969864, 34.980648>,  <38.452892, 32.900944, 35.127441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.275970, 32.969864, 34.980648>,  <37.981098, 33.084732, 34.735992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.275970, 32.969864, 34.980648> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492975, 0.847634, -0.196194,
		-0.462105, 0.446153, 0.766424,
		0.737180, -0.287166, 0.611638,
		38.497124, 32.883713, 35.164139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.188438, 33.643219, 35.154320>,  <37.981098, 33.084732, 34.735992>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.188438, 33.643219, 35.154320> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.502773, 33.397411, 35.126537>,  <38.691376, 33.249928, 35.109867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.502773, 33.397411, 35.126537>,  <38.188438, 33.643219, 35.154320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.502773, 33.397411, 35.126537> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592900, 0.780567, -0.197950,
		0.175856, 0.114378, 0.977748,
		0.785840, -0.614518, -0.069452,
		38.738525, 33.213055, 35.105701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.732018, 33.897640, 35.535263>,  <38.188438, 33.643219, 35.154320>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.732018, 33.897640, 35.535263> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.929543, 33.649689, 35.291328>,  <39.048058, 33.500919, 35.144966>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.929543, 33.649689, 35.291328>,  <38.732018, 33.897640, 35.535263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.929543, 33.649689, 35.291328> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713917, 0.689403, -0.122660,
		0.496459, -0.374803, 0.782976,
		0.493813, -0.619875, -0.609839,
		39.077686, 33.463726, 35.108376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.445534, 33.955345, 35.677425>,  <38.732018, 33.897640, 35.535263>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.445534, 33.955345, 35.677425> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.400112, 33.813828, 35.306065>,  <39.372860, 33.728916, 35.083248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.400112, 33.813828, 35.306065>,  <39.445534, 33.955345, 35.677425>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.400112, 33.813828, 35.306065> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478305, 0.799569, -0.363198,
		0.870821, -0.485305, 0.078424,
		-0.113556, -0.353791, -0.928405,
		39.366047, 33.707691, 35.027542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.035217, 34.107990, 35.467953>,  <39.445534, 33.955345, 35.677425>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.035217, 34.107990, 35.467953> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.825470, 34.030212, 35.136356>,  <39.699623, 33.983547, 34.937397>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.825470, 34.030212, 35.136356>,  <40.035217, 34.107990, 35.467953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.825470, 34.030212, 35.136356> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612464, 0.590232, -0.525847,
		0.591561, -0.783460, -0.190385,
		-0.524351, -0.194466, -0.828999,
		39.668159, 33.971878, 34.887657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.538025, 33.948727, 35.024597>,  <40.035217, 34.107990, 35.467953>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.538025, 33.948727, 35.024597> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.229378, 34.051468, 34.791828>,  <40.044189, 34.113113, 34.652168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.229378, 34.051468, 34.791828>,  <40.538025, 33.948727, 35.024597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.229378, 34.051468, 34.791828> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572368, 0.679457, -0.459056,
		0.277481, -0.687289, -0.671295,
		-0.771621, 0.256849, -0.581919,
		39.997890, 34.128521, 34.617252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.772053, 33.990601, 34.354675>,  <40.538025, 33.948727, 35.024597>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.772053, 33.990601, 34.354675> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.450012, 34.227791, 34.349110>,  <40.256786, 34.370106, 34.345768>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.450012, 34.227791, 34.349110>,  <40.772053, 33.990601, 34.354675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.450012, 34.227791, 34.349110> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494978, 0.658753, -0.566605,
		-0.326812, -0.463065, -0.823872,
		-0.805103, 0.592972, -0.013918,
		40.208481, 34.405682, 34.344933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.705509, 34.220043, 33.697956>,  <40.772053, 33.990601, 34.354675>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.705509, 34.220043, 33.697956> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.447014, 34.479195, 33.859268>,  <40.291916, 34.634686, 33.956055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.447014, 34.479195, 33.859268>,  <40.705509, 34.220043, 33.697956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.447014, 34.479195, 33.859268> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573106, 0.760960, -0.304119,
		-0.503910, 0.034588, -0.863063,
		-0.646238, 0.647876, 0.403279,
		40.253143, 34.673557, 33.980251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.306023, 34.665775, 33.138153>,  <40.705509, 34.220043, 33.697956>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.306023, 34.665775, 33.138153> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.299755, 34.858612, 33.488544>,  <40.295994, 34.974312, 33.698780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.299755, 34.858612, 33.488544>,  <40.306023, 34.665775, 33.138153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.299755, 34.858612, 33.488544> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413047, 0.800963, -0.433417,
		-0.910575, 0.355031, -0.211674,
		-0.015666, 0.482090, 0.875982,
		40.295055, 35.003239, 33.751339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.215893, 35.309086, 32.828495>,  <40.306023, 34.665775, 33.138153>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.215893, 35.309086, 32.828495> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.289421, 35.362236, 33.218071>,  <40.333538, 35.394127, 33.451817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.289421, 35.362236, 33.218071>,  <40.215893, 35.309086, 32.828495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.289421, 35.362236, 33.218071> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392923, 0.898283, -0.196719,
		-0.901011, 0.418843, 0.112915,
		0.183824, 0.132879, 0.973936,
		40.344570, 35.402100, 33.510250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.890251, 35.941036, 33.042183>,  <40.215893, 35.309086, 32.828495>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.890251, 35.941036, 33.042183> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.210548, 35.883976, 33.274895>,  <40.402725, 35.849739, 33.414520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.210548, 35.883976, 33.274895>,  <39.890251, 35.941036, 33.042183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.210548, 35.883976, 33.274895> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456544, 0.774100, -0.438561,
		-0.387791, 0.616781, 0.684982,
		0.800741, -0.142654, 0.581776,
		40.450771, 35.841179, 33.449429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.972404, 36.590286, 33.341179>,  <39.890251, 35.941036, 33.042183>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.972404, 36.590286, 33.341179> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.320946, 36.394173, 33.348820>,  <40.530071, 36.276505, 33.353401>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.320946, 36.394173, 33.348820>,  <39.972404, 36.590286, 33.341179>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.320946, 36.394173, 33.348820> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441249, 0.765990, -0.467503,
		0.214582, 0.415786, 0.883785,
		0.871352, -0.490287, 0.019097,
		40.582352, 36.247086, 33.354549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.404369, 37.046055, 33.445847>,  <39.972404, 36.590286, 33.341179>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.404369, 37.046055, 33.445847> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.638092, 36.753372, 33.305454>,  <40.778324, 36.577763, 33.221218>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.638092, 36.753372, 33.305454>,  <40.404369, 37.046055, 33.445847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.638092, 36.753372, 33.305454> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489651, 0.662772, -0.566547,
		0.647170, 0.159177, 0.745542,
		0.584305, -0.731708, -0.350985,
		40.813385, 36.533859, 33.200157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.962582, 37.371109, 33.498219>,  <40.404369, 37.046055, 33.445847>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.962582, 37.371109, 33.498219> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.999157, 37.053616, 33.257675>,  <41.021103, 36.863121, 33.113350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.999157, 37.053616, 33.257675>,  <40.962582, 37.371109, 33.498219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.999157, 37.053616, 33.257675> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327561, 0.594253, -0.734552,
		0.940395, -0.129817, 0.314332,
		0.091436, -0.793732, -0.601356,
		41.026588, 36.815495, 33.077267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.684746, 37.454636, 33.696873>,  <40.962582, 37.371109, 33.498219>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.684746, 37.454636, 33.696873> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.805744, 37.714603, 33.975758>,  <41.878345, 37.870583, 34.143089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.805744, 37.714603, 33.975758>,  <41.684746, 37.454636, 33.696873>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.805744, 37.714603, 33.975758> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433108, -0.557878, 0.707947,
		0.849065, -0.516122, 0.112726,
		0.302500, 0.649916, 0.697211,
		41.896496, 37.909576, 34.184921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.009666, 37.007488, 34.234795>,  <41.684746, 37.454636, 33.696873>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.009666, 37.007488, 34.234795> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.887314, 37.359360, 34.380451>,  <41.813900, 37.570484, 34.467846>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.887314, 37.359360, 34.380451>,  <42.009666, 37.007488, 34.234795>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.887314, 37.359360, 34.380451> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416632, -0.467589, 0.779601,
		0.856068, 0.086753, 0.509530,
		-0.305884, 0.879678, 0.364144,
		41.795547, 37.623264, 34.489693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.270355, 37.091946, 34.997734>,  <42.009666, 37.007488, 34.234795>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.270355, 37.091946, 34.997734> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.963047, 37.344093, 34.953201>,  <41.778664, 37.495384, 34.926483>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.963047, 37.344093, 34.953201>,  <42.270355, 37.091946, 34.997734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.963047, 37.344093, 34.953201> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387600, -0.319683, 0.864621,
		0.509443, 0.707412, 0.489935,
		-0.768267, 0.630374, -0.111332,
		41.732567, 37.533207, 34.919800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.188461, 37.467609, 35.638718>,  <42.270355, 37.091946, 34.997734>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.188461, 37.467609, 35.638718> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.830715, 37.550026, 35.479897>,  <41.616066, 37.599476, 35.384605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.830715, 37.550026, 35.479897>,  <42.188461, 37.467609, 35.638718>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.830715, 37.550026, 35.479897> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441735, -0.266836, 0.856545,
		0.070535, 0.941459, 0.329666,
		-0.894368, 0.206042, -0.397054,
		41.562405, 37.611839, 35.360779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.764553, 37.930077, 36.176380>,  <42.188461, 37.467609, 35.638718>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.764553, 37.930077, 36.176380> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.496830, 37.765675, 35.928802>,  <41.336197, 37.667034, 35.780254>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.496830, 37.765675, 35.928802>,  <41.764553, 37.930077, 36.176380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.496830, 37.765675, 35.928802> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506723, -0.356729, 0.784842,
		-0.543373, 0.838938, 0.030496,
		-0.669312, -0.411009, -0.618945,
		41.296036, 37.642372, 35.743118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.107349, 38.299843, 36.353958>,  <41.764553, 37.930077, 36.176380>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.107349, 38.299843, 36.353958> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.022156, 37.949329, 36.181095>,  <40.971039, 37.739021, 36.077377>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.022156, 37.949329, 36.181095>,  <41.107349, 38.299843, 36.353958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.022156, 37.949329, 36.181095> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740678, -0.143654, 0.656322,
		-0.637206, 0.459881, -0.618448,
		-0.212988, -0.876284, -0.432161,
		40.958260, 37.686443, 36.051445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.434078, 38.340805, 36.235588>,  <41.107349, 38.299843, 36.353958>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.434078, 38.340805, 36.235588> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.499748, 37.949512, 36.184814>,  <40.539150, 37.714737, 36.154350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.499748, 37.949512, 36.184814>,  <40.434078, 38.340805, 36.235588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.499748, 37.949512, 36.184814> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803373, -0.207262, 0.558242,
		-0.572398, 0.010326, -0.819911,
		0.164172, -0.978231, -0.126932,
		40.549000, 37.656044, 36.146736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.720978, 38.051067, 36.244965>,  <40.434078, 38.340805, 36.235588>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.720978, 38.051067, 36.244965> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.964924, 37.737289, 36.290070>,  <40.111290, 37.549023, 36.317131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.964924, 37.737289, 36.290070>,  <39.720978, 38.051067, 36.244965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.964924, 37.737289, 36.290070> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705525, -0.472596, 0.528098,
		-0.360974, -0.401622, -0.841664,
		0.609863, -0.784444, 0.112759,
		40.147884, 37.501957, 36.323898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.320637, 37.457966, 36.090275>,  <39.720978, 38.051067, 36.244965>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.320637, 37.457966, 36.090275> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.616421, 37.342945, 36.333752>,  <39.793892, 37.273933, 36.479839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.616421, 37.342945, 36.333752>,  <39.320637, 37.457966, 36.090275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.616421, 37.342945, 36.333752> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630070, -0.614042, 0.475358,
		0.237076, -0.735030, -0.635236,
		0.739464, -0.287547, 0.608695,
		39.838261, 37.256680, 36.516361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.397594, 36.676823, 36.068764>,  <39.320637, 37.457966, 36.090275>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.397594, 36.676823, 36.068764> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.560452, 36.807873, 36.409798>,  <39.658165, 36.886501, 36.614418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.560452, 36.807873, 36.409798>,  <39.397594, 36.676823, 36.068764>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.560452, 36.807873, 36.409798> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663526, -0.535377, 0.522594,
		0.627668, -0.778481, -0.000587,
		0.407143, 0.327626, 0.852582,
		39.682594, 36.906162, 36.665573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.485615, 35.936504, 36.562069>,  <39.397594, 36.676823, 36.068764>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.485615, 35.936504, 36.562069> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.505329, 36.260529, 36.795780>,  <39.517159, 36.454941, 36.936005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.505329, 36.260529, 36.795780>,  <39.485615, 35.936504, 36.562069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.505329, 36.260529, 36.795780> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468413, -0.497918, 0.729840,
		0.882134, -0.309653, 0.354901,
		0.049286, 0.810057, 0.584276,
		39.520115, 36.503544, 36.971062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.872494, 35.774944, 37.121410>,  <39.485615, 35.936504, 36.562069>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.872494, 35.774944, 37.121410> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.609123, 36.055576, 37.230412>,  <39.451099, 36.223957, 37.295815>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.609123, 36.055576, 37.230412>,  <39.872494, 35.774944, 37.121410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.609123, 36.055576, 37.230412> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455399, -0.659627, 0.597916,
		0.599238, 0.269585, 0.753816,
		-0.658426, 0.701581, 0.272505,
		39.411594, 36.266052, 37.312164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<44.266232, 39.627758, 31.448769> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.006767, 39.893890, 31.596596>,  <43.851089, 40.053570, 31.685293>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.006767, 39.893890, 31.596596>,  <44.266232, 39.627758, 31.448769>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.006767, 39.893890, 31.596596> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409820, -0.714514, 0.567025,
		0.641321, 0.216347, 0.736139,
		-0.648656, 0.665330, 0.369570,
		43.812172, 40.093491, 31.707466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.258610, 39.501881, 32.088509>,  <44.266232, 39.627758, 31.448769>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.258610, 39.501881, 32.088509> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.907379, 39.691471, 32.062183>,  <43.696640, 39.805225, 32.046387>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.907379, 39.691471, 32.062183>,  <44.258610, 39.501881, 32.088509>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.907379, 39.691471, 32.062183> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383909, -0.615662, 0.688168,
		0.285652, 0.629531, 0.722560,
		-0.878076, 0.473974, -0.065818,
		43.643955, 39.833664, 32.042439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.171741, 39.623840, 32.811344>,  <44.258610, 39.501881, 32.088509>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.171741, 39.623840, 32.811344> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.800831, 39.651478, 32.664162>,  <43.578285, 39.668060, 32.575851>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.800831, 39.651478, 32.664162>,  <44.171741, 39.623840, 32.811344>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.800831, 39.651478, 32.664162> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351558, -0.498649, 0.792311,
		-0.128735, 0.864046, 0.486675,
		-0.927272, 0.069097, -0.367956,
		43.522648, 39.672207, 32.553776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.770290, 39.993324, 33.331188>,  <44.171741, 39.623840, 32.811344>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.770290, 39.993324, 33.331188> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.509415, 39.795891, 33.101048>,  <43.352890, 39.677433, 32.962963>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.509415, 39.795891, 33.101048>,  <43.770290, 39.993324, 33.331188>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.509415, 39.795891, 33.101048> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395623, -0.425797, 0.813744,
		-0.646630, 0.758337, 0.082428,
		-0.652190, -0.493581, -0.575348,
		43.313759, 39.647816, 32.928444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.278309, 39.960293, 33.781322>,  <43.770290, 39.993324, 33.331188>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.278309, 39.960293, 33.781322> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.155762, 39.709618, 33.494717>,  <43.082233, 39.559212, 33.322754>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.155762, 39.709618, 33.494717>,  <43.278309, 39.960293, 33.781322>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.155762, 39.709618, 33.494717> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665896, -0.396793, 0.631773,
		-0.680234, 0.670685, -0.295742,
		-0.306372, -0.626687, -0.716519,
		43.063850, 39.521610, 33.279762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.461166, 39.860519, 33.898788>,  <43.278309, 39.960293, 33.781322>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.461166, 39.860519, 33.898788> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.599007, 39.560749, 33.672649>,  <42.681709, 39.380886, 33.536968>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.599007, 39.560749, 33.672649>,  <42.461166, 39.860519, 33.898788>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.599007, 39.560749, 33.672649> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556805, -0.648031, 0.519638,
		-0.755791, 0.135721, -0.640593,
		0.344599, -0.749423, -0.565346,
		42.702385, 39.335922, 33.503044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.883709, 39.465225, 33.736801>,  <42.461166, 39.860519, 33.898788>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.883709, 39.465225, 33.736801> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.203320, 39.227409, 33.700867>,  <42.395088, 39.084721, 33.679306>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.203320, 39.227409, 33.700867>,  <41.883709, 39.465225, 33.736801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.203320, 39.227409, 33.700867> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488734, -0.729201, 0.478963,
		-0.350269, -0.338802, -0.873227,
		0.799031, -0.594541, -0.089832,
		42.443027, 39.049046, 33.673916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.621773, 38.885258, 33.412758>,  <41.883709, 39.465225, 33.736801>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.621773, 38.885258, 33.412758> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.944084, 38.790096, 33.629688>,  <42.137470, 38.733002, 33.759846>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.944084, 38.790096, 33.629688>,  <41.621773, 38.885258, 33.412758>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.944084, 38.790096, 33.629688> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537573, -0.678035, 0.501282,
		0.248462, -0.695464, -0.674237,
		0.805781, -0.237902, 0.542329,
		42.185818, 38.718727, 33.792385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.741482, 38.154411, 33.324406>,  <41.621773, 38.885258, 33.412758>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.741482, 38.154411, 33.324406> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.914165, 38.266296, 33.667423>,  <42.017776, 38.333427, 33.873234>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.914165, 38.266296, 33.667423>,  <41.741482, 38.154411, 33.324406>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.914165, 38.266296, 33.667423> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480505, -0.733269, 0.481073,
		0.763376, -0.619739, -0.182155,
		0.431708, 0.279713, 0.857548,
		42.043678, 38.350212, 33.924686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.962593, 37.460804, 32.993446>,  <41.741482, 38.154411, 33.324406>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.962593, 37.460804, 32.993446> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.727173, 37.185215, 32.824249>,  <41.585922, 37.019863, 32.722729>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.727173, 37.185215, 32.824249>,  <41.962593, 37.460804, 32.993446>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.727173, 37.185215, 32.824249> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026018, 0.506799, -0.861672,
		0.808041, -0.518143, -0.280351,
		-0.588551, -0.688972, -0.422995,
		41.550606, 36.978523, 32.697350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.399239, 37.135895, 32.536201>,  <41.962593, 37.460804, 32.993446>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.399239, 37.135895, 32.536201> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.026379, 37.087830, 32.399578>,  <41.802662, 37.058990, 32.317604>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.026379, 37.087830, 32.399578>,  <42.399239, 37.135895, 32.536201>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.026379, 37.087830, 32.399578> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251815, 0.462690, -0.850004,
		0.260169, -0.878340, -0.401038,
		-0.932149, -0.120158, -0.341557,
		41.746735, 37.051781, 32.297112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.441521, 36.852455, 31.864254>,  <42.399239, 37.135895, 32.536201>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.441521, 36.852455, 31.864254> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.084702, 37.033119, 31.870571>,  <41.870609, 37.141518, 31.874361>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.084702, 37.033119, 31.870571>,  <42.441521, 36.852455, 31.864254>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.084702, 37.033119, 31.870571> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261868, 0.545053, -0.796456,
		-0.368336, -0.706343, -0.604491,
		-0.892050, 0.451660, 0.015794,
		41.817085, 37.168617, 31.875309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.112392, 36.658768, 31.290356>,  <42.441521, 36.852455, 31.864254>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.112392, 36.658768, 31.290356> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.931629, 36.998955, 31.398052>,  <41.823170, 37.203068, 31.462669>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.931629, 36.998955, 31.398052>,  <42.112392, 36.658768, 31.290356>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.931629, 36.998955, 31.398052> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180537, 0.382765, -0.906034,
		-0.873605, -0.360836, -0.326514,
		-0.451908, 0.850464, 0.269242,
		41.796059, 37.254093, 31.478825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.764812, 36.870449, 30.623013>,  <42.112392, 36.658768, 31.290356>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.764812, 36.870449, 30.623013> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.754490, 37.190014, 30.863371>,  <41.748299, 37.381752, 31.007586>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.754490, 37.190014, 30.863371>,  <41.764812, 36.870449, 30.623013>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.754490, 37.190014, 30.863371> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012563, 0.601306, -0.798920,
		-0.999588, -0.013067, -0.025553,
		-0.025804, 0.798912, 0.600895,
		41.746750, 37.429688, 31.043640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.087120, 37.227119, 30.535576>,  <41.764812, 36.870449, 30.623013>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.087120, 37.227119, 30.535576> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.354637, 37.475677, 30.698835>,  <41.515148, 37.624813, 30.796791>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.354637, 37.475677, 30.698835>,  <41.087120, 37.227119, 30.535576>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.354637, 37.475677, 30.698835> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189230, 0.673194, -0.714844,
		-0.718964, 0.400848, 0.567813,
		0.668792, 0.621394, 0.408150,
		41.555275, 37.662094, 30.821280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.668541, 37.789223, 30.489073>,  <41.087120, 37.227119, 30.535576>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.668541, 37.789223, 30.489073> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.047550, 37.911732, 30.525717>,  <41.274956, 37.985237, 30.547703>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.047550, 37.911732, 30.525717>,  <40.668541, 37.789223, 30.489073>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.047550, 37.911732, 30.525717> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138833, 0.652375, -0.745072,
		-0.287958, 0.693257, 0.660662,
		0.947526, 0.306271, 0.091609,
		41.331806, 38.003613, 30.553200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.758404, 38.653976, 30.555887>,  <40.668541, 37.789223, 30.489073>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.758404, 38.653976, 30.555887> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.108833, 38.518993, 30.418123>,  <41.319092, 38.438004, 30.335464>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.108833, 38.518993, 30.418123>,  <40.758404, 38.653976, 30.555887>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.108833, 38.518993, 30.418123> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026696, 0.747124, -0.664149,
		0.481440, 0.572648, 0.663543,
		0.876072, -0.337462, -0.344408,
		41.371655, 38.417755, 30.314800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.143051, 39.346397, 30.353884>,  <40.758404, 38.653976, 30.555887>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.143051, 39.346397, 30.353884> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.369846, 39.064892, 30.182655>,  <41.505924, 38.895988, 30.079918>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.369846, 39.064892, 30.182655>,  <41.143051, 39.346397, 30.353884>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.369846, 39.064892, 30.182655> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284730, 0.655083, -0.699854,
		0.772954, 0.274921, 0.571805,
		0.566984, -0.703765, -0.428070,
		41.539940, 38.853764, 30.054234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.728024, 39.674675, 30.146057>,  <41.143051, 39.346397, 30.353884>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.728024, 39.674675, 30.146057> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.699104, 39.349380, 29.915089>,  <41.681755, 39.154202, 29.776508>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.699104, 39.349380, 29.915089>,  <41.728024, 39.674675, 30.146057>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.699104, 39.349380, 29.915089> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422143, 0.499574, -0.756453,
		0.903642, -0.298441, 0.307187,
		-0.072294, -0.813240, -0.577421,
		41.677418, 39.105408, 29.741863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.500858, 39.430328, 29.866320>,  <41.728024, 39.674675, 30.146057>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.500858, 39.430328, 29.866320> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.209606, 39.296844, 29.626833>,  <42.034855, 39.216755, 29.483141>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.209606, 39.296844, 29.626833>,  <42.500858, 39.430328, 29.866320>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.209606, 39.296844, 29.626833> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449824, 0.426437, -0.784736,
		0.517192, -0.840707, -0.160389,
		-0.728129, -0.333712, -0.598719,
		41.991169, 39.196732, 29.447218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.829922, 39.217060, 29.270130>,  <42.500858, 39.430328, 29.866320>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.829922, 39.217060, 29.270130> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.448463, 39.247971, 29.153790>,  <42.219589, 39.266518, 29.083986>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.448463, 39.247971, 29.153790>,  <42.829922, 39.217060, 29.270130>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.448463, 39.247971, 29.153790> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295586, 0.421989, -0.857061,
		0.056509, -0.903302, -0.425267,
		-0.953643, 0.077272, -0.290850,
		42.162369, 39.271152, 29.066534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.748989, 39.036564, 28.547230>,  <42.829922, 39.217060, 29.270130>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.748989, 39.036564, 28.547230> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.411156, 39.240097, 28.613894>,  <42.208458, 39.362217, 28.653891>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.411156, 39.240097, 28.613894>,  <42.748989, 39.036564, 28.547230>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.411156, 39.240097, 28.613894> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146652, 0.519191, -0.841982,
		-0.514956, -0.686679, -0.513119,
		-0.844579, 0.508834, 0.166658,
		42.157784, 39.392746, 28.663891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.447880, 39.114895, 27.860773>,  <42.748989, 39.036564, 28.547230>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.447880, 39.114895, 27.860773> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.266220, 39.379147, 28.099878>,  <42.157227, 39.537697, 28.243341>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.266220, 39.379147, 28.099878>,  <42.447880, 39.114895, 27.860773>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.266220, 39.379147, 28.099878> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044781, 0.687023, -0.725254,
		-0.889801, -0.302603, -0.341593,
		-0.454146, 0.660629, 0.597763,
		42.129974, 39.577335, 28.279207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<39.954842, 42.986198, 30.319418> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.272755, 42.769081, 30.210827>,  <40.463501, 42.638813, 30.145672>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.272755, 42.769081, 30.210827>,  <39.954842, 42.986198, 30.319418>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.272755, 42.769081, 30.210827> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392567, -0.800936, 0.452099,
		-0.462829, -0.252748, -0.849652,
		0.794784, -0.542790, -0.271475,
		40.511189, 42.606243, 30.129385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.711201, 42.418324, 30.024473>,  <39.954842, 42.986198, 30.319418>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.711201, 42.418324, 30.024473> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.071407, 42.324928, 30.171200>,  <40.287533, 42.268890, 30.259235>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.071407, 42.324928, 30.171200>,  <39.711201, 42.418324, 30.024473>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.071407, 42.324928, 30.171200> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409066, -0.740947, 0.532600,
		0.147433, -0.629666, -0.762748,
		0.900516, -0.233491, 0.366815,
		40.341560, 42.254879, 30.281244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.587639, 41.750153, 30.195877>,  <39.711201, 42.418324, 30.024473>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.587639, 41.750153, 30.195877> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.943916, 41.800694, 30.370552>,  <40.157684, 41.831020, 30.475357>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.943916, 41.800694, 30.370552>,  <39.587639, 41.750153, 30.195877>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.943916, 41.800694, 30.370552> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186955, -0.773789, 0.605225,
		0.414377, -0.620713, -0.665588,
		0.890696, 0.126356, 0.436686,
		40.211124, 41.838600, 30.501558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.946846, 41.098938, 30.127604>,  <39.587639, 41.750153, 30.195877>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.946846, 41.098938, 30.127604> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.088306, 41.298023, 30.444391>,  <40.173183, 41.417473, 30.634464>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.088306, 41.298023, 30.444391>,  <39.946846, 41.098938, 30.127604>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.088306, 41.298023, 30.444391> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280683, -0.751197, 0.597428,
		0.892271, -0.433573, -0.125962,
		0.353651, 0.497712, 0.791968,
		40.194401, 41.447338, 30.681982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.389488, 40.636124, 30.510307>,  <39.946846, 41.098938, 30.127604>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.389488, 40.636124, 30.510307> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.313553, 40.923870, 30.777582>,  <40.267990, 41.096519, 30.937946>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.313553, 40.923870, 30.777582>,  <40.389488, 40.636124, 30.510307>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.313553, 40.923870, 30.777582> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204408, -0.694607, 0.689738,
		0.960302, -0.005645, 0.278906,
		-0.189837, 0.719367, 0.668186,
		40.256603, 41.139679, 30.978039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.588718, 40.334000, 31.166193>,  <40.389488, 40.636124, 30.510307>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.588718, 40.334000, 31.166193> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.356548, 40.642902, 31.269516>,  <40.217247, 40.828243, 31.331511>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.356548, 40.642902, 31.269516>,  <40.588718, 40.334000, 31.166193>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.356548, 40.642902, 31.269516> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483912, -0.582232, 0.653326,
		0.654932, 0.254208, 0.711647,
		-0.580424, 0.772260, 0.258308,
		40.182423, 40.874580, 31.347008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.629574, 40.294441, 31.902714>,  <40.588718, 40.334000, 31.166193>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.629574, 40.294441, 31.902714> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.298717, 40.485050, 31.783545>,  <40.100204, 40.599415, 31.712042>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.298717, 40.485050, 31.783545>,  <40.629574, 40.294441, 31.902714>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.298717, 40.485050, 31.783545> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542633, -0.539253, 0.644015,
		0.146233, 0.694356, 0.704618,
		-0.827143, 0.476525, -0.297924,
		40.050575, 40.628006, 31.694168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.274765, 40.316833, 32.431229>,  <40.629574, 40.294441, 31.902714>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.274765, 40.316833, 32.431229> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.974674, 40.419876, 32.187656>,  <39.794621, 40.481701, 32.041512>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.974674, 40.419876, 32.187656>,  <40.274765, 40.316833, 32.431229>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.974674, 40.419876, 32.187656> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649308, -0.460793, 0.605037,
		-0.124731, 0.849300, 0.512965,
		-0.750228, 0.257606, -0.608932,
		39.749607, 40.497158, 32.004978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.829746, 40.716682, 32.862083>,  <40.274765, 40.316833, 32.431229>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.829746, 40.716682, 32.862083> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.648155, 40.544559, 32.549995>,  <39.539200, 40.441288, 32.362743>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.648155, 40.544559, 32.549995>,  <39.829746, 40.716682, 32.862083>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.648155, 40.544559, 32.549995> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696269, -0.375072, 0.611988,
		-0.555980, 0.821071, -0.129334,
		-0.453977, -0.430305, -0.780220,
		39.511963, 40.415466, 32.315929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.128853, 40.985207, 32.802338>,  <39.829746, 40.716682, 32.862083>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.128853, 40.985207, 32.802338> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.134869, 40.628433, 32.621571>,  <39.138477, 40.414368, 32.513111>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.134869, 40.628433, 32.621571>,  <39.128853, 40.985207, 32.802338>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.134869, 40.628433, 32.621571> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811239, -0.275095, 0.515960,
		-0.584522, 0.358852, -0.727708,
		0.015036, -0.891935, -0.451914,
		39.139378, 40.360851, 32.485996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.401981, 40.833122, 32.629944>,  <39.128853, 40.985207, 32.802338>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.401981, 40.833122, 32.629944> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.560589, 40.468002, 32.590813>,  <38.655754, 40.248932, 32.567333>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.560589, 40.468002, 32.590813>,  <38.401981, 40.833122, 32.629944>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.560589, 40.468002, 32.590813> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706173, -0.371367, 0.602832,
		-0.586594, -0.169951, -0.791848,
		0.396519, -0.912799, -0.097827,
		38.679546, 40.194164, 32.561466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.882172, 40.422096, 32.316566>,  <38.401981, 40.833122, 32.629944>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.882172, 40.422096, 32.316566> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.132648, 40.173698, 32.505142>,  <38.282936, 40.024658, 32.618286>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.132648, 40.173698, 32.505142>,  <37.882172, 40.422096, 32.316566>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.132648, 40.173698, 32.505142> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773535, -0.419127, 0.475369,
		-0.097610, -0.662344, -0.742814,
		0.626192, -0.620994, 0.471435,
		38.320507, 39.987400, 32.646572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.544491, 39.844604, 32.271465>,  <37.882172, 40.422096, 32.316566>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.544491, 39.844604, 32.271465> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.801056, 39.762539, 32.567165>,  <37.954994, 39.713299, 32.744587>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.801056, 39.762539, 32.567165>,  <37.544491, 39.844604, 32.271465>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.801056, 39.762539, 32.567165> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703044, -0.542909, 0.459324,
		0.307108, -0.814344, -0.492473,
		0.641415, -0.205168, 0.739251,
		37.993481, 39.700989, 32.788940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.517147, 39.102921, 32.414284>,  <37.544491, 39.844604, 32.271465>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.517147, 39.102921, 32.414284> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.672138, 39.238266, 32.757298>,  <37.765133, 39.319473, 32.963104>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.672138, 39.238266, 32.757298>,  <37.517147, 39.102921, 32.414284>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.672138, 39.238266, 32.757298> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676080, -0.528079, 0.513857,
		0.626718, -0.778872, 0.024142,
		0.387480, 0.338365, 0.857536,
		37.788383, 39.339775, 33.014557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.885532, 38.560612, 32.022049>,  <37.517147, 39.102921, 32.414284>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.885532, 38.560612, 32.022049> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.726246, 38.246937, 31.831692>,  <37.630672, 38.058731, 31.717478>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.726246, 38.246937, 31.831692>,  <37.885532, 38.560612, 32.022049>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.726246, 38.246937, 31.831692> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259074, 0.401527, -0.878440,
		0.879945, -0.473102, 0.043267,
		-0.398219, -0.784188, -0.475890,
		37.606781, 38.011681, 31.688925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.423084, 38.286781, 31.549681>,  <37.885532, 38.560612, 32.022049>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.423084, 38.286781, 31.549681> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.051300, 38.206993, 31.425539>,  <37.828232, 38.159119, 31.351055>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.051300, 38.206993, 31.425539>,  <38.423084, 38.286781, 31.549681>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.051300, 38.206993, 31.425539> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164876, 0.527955, -0.833115,
		0.330037, -0.825514, -0.457823,
		-0.929458, -0.199474, -0.310352,
		37.772461, 38.147152, 31.332434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.516735, 37.947495, 30.800831>,  <38.423084, 38.286781, 31.549681>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.516735, 37.947495, 30.800831> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.150467, 38.103691, 30.838921>,  <37.930706, 38.197411, 30.861774>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.150467, 38.103691, 30.838921>,  <38.516735, 37.947495, 30.800831>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.150467, 38.103691, 30.838921> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075955, 0.400760, -0.913029,
		-0.394695, -0.828798, -0.396623,
		-0.915668, 0.390493, 0.095227,
		37.875767, 38.220840, 30.867489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.080658, 37.742558, 30.200148>,  <38.516735, 37.947495, 30.800831>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.080658, 37.742558, 30.200148> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.897659, 38.062298, 30.355957>,  <37.787861, 38.254143, 30.449444>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.897659, 38.062298, 30.355957>,  <38.080658, 37.742558, 30.200148>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.897659, 38.062298, 30.355957> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101588, 0.388204, -0.915957,
		-0.883387, -0.458622, -0.096399,
		-0.457501, 0.799352, 0.389525,
		37.760410, 38.302105, 30.472815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.674568, 38.025322, 29.568638>,  <38.080658, 37.742558, 30.200148>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.674568, 38.025322, 29.568638> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.696465, 38.316181, 29.842358>,  <37.709602, 38.490696, 30.006590>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.696465, 38.316181, 29.842358>,  <37.674568, 38.025322, 29.568638>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.696465, 38.316181, 29.842358> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057293, 0.686486, -0.724883,
		-0.996856, 0.000474, 0.079238,
		0.054740, 0.727143, 0.684300,
		37.712887, 38.534325, 30.047647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.243809, 38.590824, 29.337685>,  <37.674568, 38.025322, 29.568638>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.243809, 38.590824, 29.337685> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.522682, 38.732258, 29.587137>,  <37.690006, 38.817120, 29.736809>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.522682, 38.732258, 29.587137>,  <37.243809, 38.590824, 29.337685>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.522682, 38.732258, 29.587137> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137288, 0.787955, -0.600232,
		-0.703627, 0.504088, 0.500803,
		0.697180, 0.353585, 0.623632,
		37.731834, 38.838333, 29.774227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.106571, 39.259258, 29.363234>,  <37.243809, 38.590824, 29.337685>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.106571, 39.259258, 29.363234> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.466663, 39.281956, 29.535912>,  <37.682720, 39.295574, 29.639519>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.466663, 39.281956, 29.535912>,  <37.106571, 39.259258, 29.363234>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.466663, 39.281956, 29.535912> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200896, 0.825493, -0.527448,
		-0.386289, 0.561552, 0.731738,
		0.900234, 0.056744, 0.431693,
		37.736732, 39.298981, 29.665419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.144142, 39.976887, 29.566032>,  <37.106571, 39.259258, 29.363234>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.144142, 39.976887, 29.566032> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.519844, 39.842667, 29.537184>,  <37.745266, 39.762135, 29.519875>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.519844, 39.842667, 29.537184>,  <37.144142, 39.976887, 29.566032>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.519844, 39.842667, 29.537184> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291328, 0.890556, -0.349339,
		0.181448, 0.307109, 0.934217,
		0.939258, -0.335550, -0.072120,
		37.801620, 39.742001, 29.515547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.591694, 40.540432, 29.774679>,  <37.144142, 39.976887, 29.566032>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.591694, 40.540432, 29.774679> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.800030, 40.284203, 29.548973>,  <37.925030, 40.130466, 29.413549>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.800030, 40.284203, 29.548973>,  <37.591694, 40.540432, 29.774679>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.800030, 40.284203, 29.548973> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385079, 0.766226, -0.514404,
		0.761868, 0.050633, 0.645750,
		0.520836, -0.640573, -0.564265,
		37.956280, 40.092030, 29.379694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.210838, 40.864971, 29.737219>,  <37.591694, 40.540432, 29.774679>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.210838, 40.864971, 29.737219> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.212742, 40.598511, 29.438898>,  <38.213886, 40.438637, 29.259905>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.212742, 40.598511, 29.438898>,  <38.210838, 40.864971, 29.737219>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.212742, 40.598511, 29.438898> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455870, 0.665252, -0.591289,
		0.890034, -0.337173, 0.306845,
		0.004762, -0.666149, -0.745804,
		38.214172, 40.398666, 29.215157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.961220, 40.979164, 29.315262>,  <38.210838, 40.864971, 29.737219>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.961220, 40.979164, 29.315262> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.755566, 40.746922, 29.062735>,  <38.632175, 40.607574, 28.911219>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.755566, 40.746922, 29.062735>,  <38.961220, 40.979164, 29.315262>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.755566, 40.746922, 29.062735> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389494, 0.497736, -0.774953,
		0.764174, -0.644323, -0.029759,
		-0.514133, -0.580608, -0.631317,
		38.601326, 40.572739, 28.873339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.448788, 40.823895, 28.820391>,  <38.961220, 40.979164, 29.315262>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.448788, 40.823895, 28.820391> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.098740, 40.756203, 28.639050>,  <38.888710, 40.715588, 28.530245>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.098740, 40.756203, 28.639050>,  <39.448788, 40.823895, 28.820391>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.098740, 40.756203, 28.639050> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254369, 0.636107, -0.728467,
		0.411660, -0.752814, -0.513622,
		-0.875119, -0.169231, -0.453352,
		38.836205, 40.705433, 28.503044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.503143, 40.614326, 28.002998>,  <39.448788, 40.823895, 28.820391>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.503143, 40.614326, 28.002998> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.152378, 40.787514, 28.086475>,  <38.941917, 40.891426, 28.136562>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.152378, 40.787514, 28.086475>,  <39.503143, 40.614326, 28.002998>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.152378, 40.787514, 28.086475> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232848, 0.762532, -0.603595,
		-0.420476, -0.480709, -0.769493,
		-0.876916, 0.432972, 0.208694,
		38.889301, 40.917404, 28.149084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.222176, 40.653557, 27.434328>,  <39.503143, 40.614326, 28.002998>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.222176, 40.653557, 27.434328> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.039211, 40.935501, 27.651197>,  <38.929432, 41.104668, 27.781319>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.039211, 40.935501, 27.651197>,  <39.222176, 40.653557, 27.434328>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.039211, 40.935501, 27.651197> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287775, 0.694215, -0.659735,
		-0.841402, -0.145749, -0.520384,
		-0.457415, 0.704856, 0.542171,
		38.901985, 41.146957, 27.813848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.987984, 40.120056, 26.941261>,  <39.222176, 40.653557, 27.434328>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.987984, 40.120056, 26.941261> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.046570, 39.884762, 26.623137>,  <39.081722, 39.743584, 26.432262>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.046570, 39.884762, 26.623137>,  <38.987984, 40.120056, 26.941261>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.046570, 39.884762, 26.623137> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450117, -0.755562, 0.475943,
		-0.880876, 0.288274, -0.375441,
		0.146467, -0.588239, -0.795313,
		39.090511, 39.708290, 26.384542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.411507, 39.806015, 26.854509>,  <38.987984, 40.120056, 26.941261>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.411507, 39.806015, 26.854509> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.676025, 39.570202, 26.668982>,  <38.834736, 39.428715, 26.557665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.676025, 39.570202, 26.668982>,  <38.411507, 39.806015, 26.854509>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.676025, 39.570202, 26.668982> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418919, -0.803171, 0.423584,
		-0.622246, -0.085813, -0.778105,
		0.661300, -0.589536, -0.463821,
		38.874416, 39.393341, 26.529835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.046059, 39.124657, 26.668945>,  <38.411507, 39.806015, 26.854509>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.046059, 39.124657, 26.668945> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.434429, 39.038849, 26.626438>,  <38.667450, 38.987366, 26.600935>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.434429, 39.038849, 26.626438>,  <38.046059, 39.124657, 26.668945>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.434429, 39.038849, 26.626438> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185139, -0.954255, 0.234777,
		-0.151768, -0.208276, -0.966223,
		0.970922, -0.214517, -0.106265,
		38.725704, 38.974495, 26.594559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.989407, 38.549458, 26.323076>,  <38.046059, 39.124657, 26.668945>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.989407, 38.549458, 26.323076> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.352066, 38.543785, 26.491739>,  <38.569660, 38.540382, 26.592937>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.352066, 38.543785, 26.491739>,  <37.989407, 38.549458, 26.323076>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.352066, 38.543785, 26.491739> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142407, -0.951067, 0.274212,
		0.397134, -0.308660, -0.864299,
		0.906645, -0.014184, 0.421656,
		38.624058, 38.539532, 26.618237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.386795, 37.972076, 26.018467>,  <37.989407, 38.549458, 26.323076>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.386795, 37.972076, 26.018467> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.536606, 38.064426, 26.377672>,  <38.626492, 38.119835, 26.593195>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.536606, 38.064426, 26.377672>,  <38.386795, 37.972076, 26.018467>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.536606, 38.064426, 26.377672> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293619, -0.889132, 0.351044,
		0.879499, -0.395149, -0.265214,
		0.374524, 0.230871, 0.898014,
		38.648964, 38.133686, 26.647076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.789883, 37.464130, 26.126335>,  <38.386795, 37.972076, 26.018467>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.789883, 37.464130, 26.126335> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.744919, 37.614098, 26.494423>,  <38.717941, 37.704079, 26.715275>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.744919, 37.614098, 26.494423>,  <38.789883, 37.464130, 26.126335>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.744919, 37.614098, 26.494423> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085173, -0.926315, 0.366997,
		0.990005, -0.037125, 0.136056,
		-0.112406, 0.374917, 0.920219,
		38.711197, 37.726574, 26.770489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.034035, 36.993889, 26.589878>,  <38.789883, 37.464130, 26.126335>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.034035, 36.993889, 26.589878> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.824371, 37.238174, 26.827295>,  <38.698574, 37.384747, 26.969746>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.824371, 37.238174, 26.827295>,  <39.034035, 36.993889, 26.589878>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.824371, 37.238174, 26.827295> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214007, -0.769048, 0.602300,
		0.824294, 0.188676, 0.533798,
		-0.524156, 0.610709, 0.593544,
		38.667126, 37.421387, 27.005358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.253304, 36.795593, 27.270851>,  <39.034035, 36.993889, 26.589878>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.253304, 36.795593, 27.270851> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.900330, 36.981770, 27.298216>,  <38.688545, 37.093475, 27.314634>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.900330, 36.981770, 27.298216>,  <39.253304, 36.795593, 27.270851>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.900330, 36.981770, 27.298216> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296002, -0.662359, 0.688231,
		0.365642, 0.587068, 0.722258,
		-0.882433, 0.465436, 0.068413,
		38.635601, 37.121399, 27.318739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.156887, 36.913383, 28.018808>,  <39.253304, 36.795593, 27.270851>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.156887, 36.913383, 28.018808> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.793461, 36.909901, 27.851751>,  <38.575405, 36.907810, 27.751516>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.793461, 36.909901, 27.851751>,  <39.156887, 36.913383, 28.018808>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.793461, 36.909901, 27.851751> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350613, -0.527625, 0.773746,
		-0.227096, 0.849433, 0.476331,
		-0.908569, -0.008707, -0.417644,
		38.520889, 36.907288, 27.726458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.755089, 37.190845, 28.549679>,  <39.156887, 36.913383, 28.018808>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.755089, 37.190845, 28.549679> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.509480, 36.990742, 28.305475>,  <38.362114, 36.870682, 28.158953>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.509480, 36.990742, 28.305475>,  <38.755089, 37.190845, 28.549679>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.509480, 36.990742, 28.305475> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218850, -0.635254, 0.740646,
		-0.758341, 0.588383, 0.280579,
		-0.614022, -0.500258, -0.610507,
		38.325272, 36.840664, 28.122322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.010429, 37.261604, 28.844416>,  <38.755089, 37.190845, 28.549679>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.010429, 37.261604, 28.844416> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.979221, 36.948410, 28.597565>,  <37.960499, 36.760494, 28.449455>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.979221, 36.948410, 28.597565>,  <38.010429, 37.261604, 28.844416>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.979221, 36.948410, 28.597565> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309871, -0.569308, 0.761491,
		-0.947572, 0.250638, -0.198210,
		-0.078016, -0.782987, -0.617126,
		37.955818, 36.713512, 28.412426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.450657, 36.904335, 29.169308>,  <38.010429, 37.261604, 28.844416>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.450657, 36.904335, 29.169308> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.610855, 36.634750, 28.920994>,  <37.706974, 36.473000, 28.772005>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.610855, 36.634750, 28.920994>,  <37.450657, 36.904335, 29.169308>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.610855, 36.634750, 28.920994> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434910, -0.736133, 0.518615,
		-0.806509, 0.062283, -0.587932,
		0.400495, -0.673964, -0.620786,
		37.731003, 36.432560, 28.734758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.927769, 36.523247, 28.831623>,  <37.450657, 36.904335, 29.169308>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.927769, 36.523247, 28.831623> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.230450, 36.267807, 28.775633>,  <37.412056, 36.114544, 28.742039>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.230450, 36.267807, 28.775633>,  <36.927769, 36.523247, 28.831623>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.230450, 36.267807, 28.775633> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548783, -0.736823, 0.394877,
		-0.355306, -0.221988, -0.908008,
		0.756700, -0.638602, -0.139974,
		37.457458, 36.076225, 28.733641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.711353, 35.752243, 28.622435>,  <36.927769, 36.523247, 28.831623>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.711353, 35.752243, 28.622435> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.051567, 35.691238, 28.823763>,  <37.255695, 35.654636, 28.944559>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.051567, 35.691238, 28.823763>,  <36.711353, 35.752243, 28.622435>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.051567, 35.691238, 28.823763> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455187, -0.692838, 0.559268,
		0.263425, -0.704781, -0.658703,
		0.850536, -0.152508, 0.503318,
		37.306728, 35.645485, 28.974758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<41.743717, 39.324669, 27.332140> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.835636, 39.590878, 27.616188>,  <41.890789, 39.750603, 27.786617>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.835636, 39.590878, 27.616188>,  <41.743717, 39.324669, 27.332140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.835636, 39.590878, 27.616188> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114938, 0.705983, -0.698840,
		-0.966427, 0.242213, 0.085740,
		0.229799, 0.665524, 0.710120,
		41.904575, 39.790535, 27.829224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.367661, 39.875336, 27.170521>,  <41.743717, 39.324669, 27.332140>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.367661, 39.875336, 27.170521> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.623817, 40.051086, 27.422503>,  <41.777512, 40.156536, 27.573692>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.623817, 40.051086, 27.422503>,  <41.367661, 39.875336, 27.170521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.623817, 40.051086, 27.422503> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060862, 0.846655, -0.528651,
		-0.765631, 0.300205, 0.568934,
		0.640395, 0.439378, 0.629954,
		41.815937, 40.182899, 27.611488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.195259, 40.608070, 27.145397>,  <41.367661, 39.875336, 27.170521>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.195259, 40.608070, 27.145397> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.567204, 40.568882, 27.287245>,  <41.790371, 40.545368, 27.372355>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.567204, 40.568882, 27.287245>,  <41.195259, 40.608070, 27.145397>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.567204, 40.568882, 27.287245> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268987, 0.838646, -0.473623,
		-0.250999, 0.535793, 0.806180,
		0.929863, -0.097973, 0.354621,
		41.846161, 40.539490, 27.393631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.344883, 41.226643, 27.065313>,  <41.195259, 40.608070, 27.145397>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.344883, 41.226643, 27.065313> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.696682, 41.043713, 27.117992>,  <41.907761, 40.933956, 27.149599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.696682, 41.043713, 27.117992>,  <41.344883, 41.226643, 27.065313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.696682, 41.043713, 27.117992> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432912, 0.653848, -0.620539,
		0.197678, 0.602774, 0.773037,
		0.879494, -0.457325, 0.131697,
		41.960529, 40.906517, 27.157501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.842407, 41.765961, 27.173950>,  <41.344883, 41.226643, 27.065313>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.842407, 41.765961, 27.173950> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.044811, 41.440235, 27.060221>,  <42.166256, 41.244801, 26.991983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.044811, 41.440235, 27.060221>,  <41.842407, 41.765961, 27.173950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.044811, 41.440235, 27.060221> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484451, 0.541056, -0.687434,
		0.713624, 0.210110, 0.668278,
		0.506012, -0.814317, -0.284322,
		42.196613, 41.195938, 26.974924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.534340, 42.097118, 27.011724>,  <41.842407, 41.765961, 27.173950>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.534340, 42.097118, 27.011724> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.537151, 41.745529, 26.820993>,  <42.538837, 41.534576, 26.706554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.537151, 41.745529, 26.820993>,  <42.534340, 42.097118, 27.011724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.537151, 41.745529, 26.820993> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520477, 0.410373, -0.748797,
		0.853846, -0.242915, 0.460368,
		0.007028, -0.878969, -0.476827,
		42.539261, 41.481838, 26.677946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.304916, 42.032219, 26.687536>,  <42.534340, 42.097118, 27.011724>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.304916, 42.032219, 26.687536> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.065056, 41.788315, 26.480223>,  <42.921139, 41.641972, 26.355835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.065056, 41.788315, 26.480223>,  <43.304916, 42.032219, 26.687536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.065056, 41.788315, 26.480223> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362928, 0.370000, -0.855210,
		0.713237, -0.700922, -0.000570,
		-0.599646, -0.609761, -0.518281,
		42.885162, 41.605385, 26.324738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.726410, 41.676361, 26.157398>,  <43.304916, 42.032219, 26.687536>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.726410, 41.676361, 26.157398> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.341099, 41.697727, 26.052145>,  <43.109913, 41.710548, 25.988993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.341099, 41.697727, 26.052145>,  <43.726410, 41.676361, 26.157398>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.341099, 41.697727, 26.052145> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259940, 0.431056, -0.864073,
		0.067266, -0.900743, -0.429113,
		-0.963279, 0.053420, -0.263135,
		43.052116, 41.713753, 25.973204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.726814, 41.229290, 25.516478>,  <43.726410, 41.676361, 26.157398>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.726814, 41.229290, 25.516478> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.400158, 41.459511, 25.499348>,  <43.204163, 41.597641, 25.489071>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.400158, 41.459511, 25.499348>,  <43.726814, 41.229290, 25.516478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.400158, 41.459511, 25.499348> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240592, 0.272051, -0.931721,
		-0.524602, -0.771188, -0.360641,
		-0.816645, 0.575550, -0.042823,
		43.155163, 41.632175, 25.486502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.308666, 41.164772, 24.961569>,  <43.726814, 41.229290, 25.516478>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.308666, 41.164772, 24.961569> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.209175, 41.544052, 25.040615>,  <43.149479, 41.771618, 25.088043>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.209175, 41.544052, 25.040615>,  <43.308666, 41.164772, 24.961569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.209175, 41.544052, 25.040615> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280255, 0.265758, -0.922404,
		-0.927141, -0.174047, -0.331840,
		-0.248730, 0.948198, 0.197618,
		43.134556, 41.828510, 25.099901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.992031, 41.379841, 24.414202>,  <43.308666, 41.164772, 24.961569>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.992031, 41.379841, 24.414202> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.018860, 41.746460, 24.571909>,  <43.034958, 41.966431, 24.666534>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.018860, 41.746460, 24.571909>,  <42.992031, 41.379841, 24.414202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.018860, 41.746460, 24.571909> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083617, 0.388606, -0.917602,
		-0.994238, 0.094510, -0.050575,
		0.067069, 0.916544, 0.394270,
		43.038982, 42.021423, 24.690189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.532116, 41.816620, 23.959021>,  <42.992031, 41.379841, 24.414202>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.532116, 41.816620, 23.959021> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.792377, 42.054214, 24.148262>,  <42.948536, 42.196774, 24.261806>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.792377, 42.054214, 24.148262>,  <42.532116, 41.816620, 23.959021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.792377, 42.054214, 24.148262> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086125, 0.561274, -0.823137,
		-0.754474, 0.576324, 0.314039,
		0.650655, 0.593989, 0.473102,
		42.987576, 42.232410, 24.290194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.785828, 41.718689, 23.270891>,  <42.532116, 41.816620, 23.959021>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.785828, 41.718689, 23.270891> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.540504, 41.864040, 22.990374>,  <42.393311, 41.951252, 22.822063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.540504, 41.864040, 22.990374>,  <42.785828, 41.718689, 23.270891>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.540504, 41.864040, 22.990374> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463299, 0.553594, 0.692018,
		0.639697, 0.749326, -0.171168,
		-0.613304, 0.363380, -0.701294,
		42.356514, 41.973053, 22.779985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.713219, 42.522572, 23.271992>,  <42.785828, 41.718689, 23.270891>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.713219, 42.522572, 23.271992> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.372147, 42.353718, 23.148870>,  <42.167503, 42.252403, 23.074999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.372147, 42.353718, 23.148870>,  <42.713219, 42.522572, 23.271992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.372147, 42.353718, 23.148870> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513865, 0.571373, 0.639903,
		-0.094257, 0.703799, -0.704118,
		-0.852677, -0.422136, -0.307802,
		42.116344, 42.227077, 23.056530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.248184, 43.038811, 23.354071>,  <42.713219, 42.522572, 23.271992>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.248184, 43.038811, 23.354071> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.038036, 42.699165, 23.332180>,  <41.911945, 42.495380, 23.319046>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.038036, 42.699165, 23.332180>,  <42.248184, 43.038811, 23.354071>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.038036, 42.699165, 23.332180> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518576, 0.268544, 0.811765,
		-0.674581, 0.454859, -0.581414,
		-0.525374, -0.849109, -0.054724,
		41.880424, 42.444431, 23.315763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.616718, 42.790947, 23.060070>,  <42.248184, 43.038811, 23.354071>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.616718, 42.790947, 23.060070> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.248825, 42.913734, 22.962202>,  <41.028091, 42.987408, 22.903481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.248825, 42.913734, 22.962202>,  <41.616718, 42.790947, 23.060070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.248825, 42.913734, 22.962202> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351817, -0.368111, 0.860650,
		0.174129, 0.877646, 0.446560,
		-0.919730, 0.306972, -0.244672,
		40.972904, 43.005825, 22.888800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.290955, 43.071133, 23.644234>,  <41.616718, 42.790947, 23.060070>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.290955, 43.071133, 23.644234> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.974064, 42.979549, 23.417976>,  <40.783928, 42.924599, 23.282221>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.974064, 42.979549, 23.417976>,  <41.290955, 43.071133, 23.644234>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.974064, 42.979549, 23.417976> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442886, -0.421942, 0.791086,
		-0.419795, 0.877236, 0.232872,
		-0.792228, -0.228958, -0.565645,
		40.736397, 42.910862, 23.248283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.584129, 43.212399, 23.992861>,  <41.290955, 43.071133, 23.644234>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.584129, 43.212399, 23.992861> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.506416, 42.939678, 23.710754>,  <40.459789, 42.776047, 23.541491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.506416, 42.939678, 23.710754>,  <40.584129, 43.212399, 23.992861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.506416, 42.939678, 23.710754> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398626, -0.602051, 0.691832,
		-0.896298, 0.415550, -0.154814,
		-0.194285, -0.681800, -0.705267,
		40.448132, 42.735138, 23.499174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.941364, 42.973671, 24.250614>,  <40.584129, 43.212399, 23.992861>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.941364, 42.973671, 24.250614> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.058685, 42.703121, 23.980356>,  <40.129078, 42.540791, 23.818201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.058685, 42.703121, 23.980356>,  <39.941364, 42.973671, 24.250614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.058685, 42.703121, 23.980356> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363746, -0.732525, 0.575410,
		-0.884117, 0.076994, -0.460879,
		0.293302, -0.676372, -0.675644,
		40.146675, 42.500210, 23.777662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.363224, 42.607567, 24.127245>,  <39.941364, 42.973671, 24.250614>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.363224, 42.607567, 24.127245> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.669659, 42.372238, 24.023720>,  <39.853519, 42.231041, 23.961605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.669659, 42.372238, 24.023720>,  <39.363224, 42.607567, 24.127245>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.669659, 42.372238, 24.023720> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399890, -0.751535, 0.524675,
		-0.503185, -0.298451, -0.811007,
		0.766090, -0.588321, -0.258813,
		39.899487, 42.195744, 23.946075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.095837, 41.934071, 23.898220>,  <39.363224, 42.607567, 24.127245>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.095837, 41.934071, 23.898220> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.473072, 41.849213, 24.000647>,  <39.699413, 41.798298, 24.062101>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.473072, 41.849213, 24.000647>,  <39.095837, 41.934071, 23.898220>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.473072, 41.849213, 24.000647> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293538, -0.892937, 0.341321,
		0.156240, -0.397062, -0.904395,
		0.943093, -0.212146, 0.256065,
		39.756001, 41.785568, 24.077467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.142632, 41.270168, 23.653561>,  <39.095837, 41.934071, 23.898220>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.142632, 41.270168, 23.653561> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.438259, 41.325607, 23.917248>,  <39.615635, 41.358871, 24.075460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.438259, 41.325607, 23.917248>,  <39.142632, 41.270168, 23.653561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.438259, 41.325607, 23.917248> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204628, -0.886172, 0.415724,
		0.641797, -0.442144, -0.626583,
		0.739070, 0.138594, 0.659217,
		39.659981, 41.367184, 24.115013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.475853, 40.612167, 23.697401>,  <39.142632, 41.270168, 23.653561>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.475853, 40.612167, 23.697401> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.567616, 40.828487, 24.021107>,  <39.622673, 40.958279, 24.215330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.567616, 40.828487, 24.021107>,  <39.475853, 40.612167, 23.697401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.567616, 40.828487, 24.021107> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105936, -0.812627, 0.573074,
		0.967548, -0.217198, -0.129132,
		0.229407, 0.540798, 0.809265,
		39.636436, 40.990726, 24.263885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.885612, 40.141342, 24.179483>,  <39.475853, 40.612167, 23.697401>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.885612, 40.141342, 24.179483> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.729458, 40.430149, 24.407969>,  <39.635765, 40.603436, 24.545059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.729458, 40.430149, 24.407969>,  <39.885612, 40.141342, 24.179483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.729458, 40.430149, 24.407969> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127406, -0.656843, 0.743186,
		0.911793, 0.217354, 0.348412,
		-0.390386, 0.722022, 0.571212,
		39.612343, 40.646755, 24.579332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.314362, 40.129612, 24.822666>,  <39.885612, 40.141342, 24.179483>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.314362, 40.129612, 24.822666> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.983330, 40.338326, 24.905468>,  <39.784710, 40.463554, 24.955149>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.983330, 40.338326, 24.905468>,  <40.314362, 40.129612, 24.822666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.983330, 40.338326, 24.905468> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191262, -0.608802, 0.769922,
		0.527757, 0.597581, 0.603630,
		-0.827582, 0.521783, 0.207005,
		39.735054, 40.494862, 24.967569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.351006, 40.118702, 25.487925>,  <40.314362, 40.129612, 24.822666>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.351006, 40.118702, 25.487925> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.974049, 40.245583, 25.445438>,  <39.747875, 40.321709, 25.419947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.974049, 40.245583, 25.445438>,  <40.351006, 40.118702, 25.487925>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.974049, 40.245583, 25.445438> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271324, -0.539111, 0.797335,
		0.195653, 0.780221, 0.594118,
		-0.942392, 0.317199, -0.106214,
		39.691330, 40.340744, 25.413574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.069710, 40.444469, 26.137651>,  <40.351006, 40.118702, 25.487925>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.069710, 40.444469, 26.137651> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.748379, 40.315945, 25.937080>,  <39.555580, 40.238831, 25.816738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.748379, 40.315945, 25.937080>,  <40.069710, 40.444469, 26.137651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.748379, 40.315945, 25.937080> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378250, -0.375058, 0.846321,
		-0.459998, 0.869534, 0.179756,
		-0.803324, -0.321313, -0.501427,
		39.507381, 40.219551, 25.786652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.563541, 40.492226, 26.668072>,  <40.069710, 40.444469, 26.137651>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.563541, 40.492226, 26.668072> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.440769, 40.239220, 26.383615>,  <39.367107, 40.087418, 26.212942>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.440769, 40.239220, 26.383615>,  <39.563541, 40.492226, 26.668072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.440769, 40.239220, 26.383615> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423099, -0.578630, 0.697262,
		-0.852515, 0.514893, -0.090017,
		-0.306929, -0.632513, -0.711141,
		39.348690, 40.049465, 26.170273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.139126, 41.145775, 26.893166>,  <39.563541, 40.492226, 26.668072>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.139126, 41.145775, 26.893166> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.983757, 41.324314, 27.215631>,  <38.890537, 41.431438, 27.409111>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.983757, 41.324314, 27.215631>,  <39.139126, 41.145775, 26.893166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.983757, 41.324314, 27.215631> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003219, 0.874195, -0.485565,
		-0.921477, -0.191198, -0.338119,
		-0.388421, 0.446348, 0.806166,
		38.867229, 41.458218, 27.457481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.543549, 41.523407, 26.625160>,  <39.139126, 41.145775, 26.893166>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.543549, 41.523407, 26.625160> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.641338, 41.723705, 26.957300>,  <38.700012, 41.843884, 27.156584>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.641338, 41.723705, 26.957300>,  <38.543549, 41.523407, 26.625160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.641338, 41.723705, 26.957300> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158005, 0.824318, -0.543631,
		-0.956696, 0.264103, 0.122404,
		0.244475, 0.500749, 0.830351,
		38.714680, 41.873928, 27.206406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.331577, 42.211163, 26.501183>,  <38.543549, 41.523407, 26.625160>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.331577, 42.211163, 26.501183> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.617107, 42.212231, 26.781311>,  <38.788425, 42.212872, 26.949389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.617107, 42.212231, 26.781311>,  <38.331577, 42.211163, 26.501183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.617107, 42.212231, 26.781311> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462101, 0.749608, -0.473867,
		-0.526234, 0.661876, 0.533852,
		0.713821, 0.002671, 0.700323,
		38.831253, 42.213032, 26.991407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.391167, 42.904278, 26.842487>,  <38.331577, 42.211163, 26.501183>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.391167, 42.904278, 26.842487> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.743938, 42.717793, 26.870317>,  <38.955601, 42.605904, 26.887014>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.743938, 42.717793, 26.870317>,  <38.391167, 42.904278, 26.842487>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.743938, 42.717793, 26.870317> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444204, 0.772610, -0.453605,
		0.157722, 0.430954, 0.888483,
		0.881934, -0.466211, 0.069574,
		39.008518, 42.577930, 26.891190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.856102, 43.501488, 27.091646>,  <38.391167, 42.904278, 26.842487>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.856102, 43.501488, 27.091646> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.069927, 43.197887, 26.942970>,  <39.198223, 43.015728, 26.853764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.069927, 43.197887, 26.942970>,  <38.856102, 43.501488, 27.091646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.069927, 43.197887, 26.942970> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517041, 0.641609, -0.566575,
		0.668513, 0.110692, 0.735417,
		0.534565, -0.759003, -0.371691,
		39.230297, 42.970188, 26.831463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.522556, 43.659760, 27.240410>,  <38.856102, 43.501488, 27.091646>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.522556, 43.659760, 27.240410> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.534924, 43.400097, 26.936399>,  <39.542343, 43.244301, 26.753992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.534924, 43.400097, 26.936399>,  <39.522556, 43.659760, 27.240410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.534924, 43.400097, 26.936399> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619015, 0.609453, -0.495366,
		0.784770, -0.455155, 0.420678,
		0.030915, -0.649155, -0.760028,
		39.544197, 43.205349, 26.708391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.251564, 43.476223, 27.095140>,  <39.522556, 43.659760, 27.240410>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.251564, 43.476223, 27.095140> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.020592, 43.420898, 26.773285>,  <39.882008, 43.387703, 26.580172>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.020592, 43.420898, 26.773285>,  <40.251564, 43.476223, 27.095140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.020592, 43.420898, 26.773285> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575214, 0.630486, -0.521168,
		0.579395, -0.763779, -0.284507,
		-0.577434, -0.138309, -0.804637,
		39.847363, 43.379406, 26.531895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.779865, 43.792961, 27.521469>,  <40.251564, 43.476223, 27.095140>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.779865, 43.792961, 27.521469> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.952389, 44.022564, 27.799889>,  <41.055904, 44.160328, 27.966940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.952389, 44.022564, 27.799889>,  <40.779865, 43.792961, 27.521469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.952389, 44.022564, 27.799889> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087893, -0.741096, 0.665620,
		0.897913, -0.348266, -0.269190,
		0.431309, 0.574009, 0.696050,
		41.081783, 44.194767, 28.008703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.332500, 43.509247, 27.751865>,  <40.779865, 43.792961, 27.521469>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.332500, 43.509247, 27.751865> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.199863, 43.741028, 28.049664>,  <41.120281, 43.880096, 28.228342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.199863, 43.741028, 28.049664>,  <41.332500, 43.509247, 27.751865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.199863, 43.741028, 28.049664> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066817, -0.801589, 0.594131,
		0.941052, 0.147267, 0.304522,
		-0.331597, 0.579455, 0.744496,
		41.100384, 43.914864, 28.273012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.716305, 43.255951, 28.322779>,  <41.332500, 43.509247, 27.751865>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.716305, 43.255951, 28.322779> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.403595, 43.453674, 28.474823>,  <41.215969, 43.572308, 28.566050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.403595, 43.453674, 28.474823>,  <41.716305, 43.255951, 28.322779>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.403595, 43.453674, 28.474823> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059207, -0.665671, 0.743892,
		0.620741, 0.559053, 0.549673,
		-0.781777, 0.494309, 0.380110,
		41.169064, 43.601967, 28.588856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.867428, 43.300869, 28.984154>,  <41.716305, 43.255951, 28.322779>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.867428, 43.300869, 28.984154> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.473019, 43.364479, 28.964298>,  <41.236374, 43.402645, 28.952385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.473019, 43.364479, 28.964298>,  <41.867428, 43.300869, 28.984154>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.473019, 43.364479, 28.964298> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130499, -0.552101, 0.823501,
		0.103552, 0.818471, 0.565139,
		-0.986026, 0.159025, -0.049638,
		41.177212, 43.412186, 28.949408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.708916, 43.550102, 29.604029>,  <41.867428, 43.300869, 28.984154>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.708916, 43.550102, 29.604029> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.359100, 43.433079, 29.449316>,  <41.149212, 43.362865, 29.356489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.359100, 43.433079, 29.449316>,  <41.708916, 43.550102, 29.604029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.359100, 43.433079, 29.449316> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207803, -0.494557, 0.843938,
		-0.438186, 0.818427, 0.371713,
		-0.874535, -0.292559, -0.386779,
		41.096741, 43.345310, 29.333282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.300827, 43.562683, 30.195360>,  <41.708916, 43.550102, 29.604029>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.300827, 43.562683, 30.195360> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.098312, 43.340130, 29.931812>,  <40.976803, 43.206596, 29.773684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.098312, 43.340130, 29.931812>,  <41.300827, 43.562683, 30.195360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.098312, 43.340130, 29.931812> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424301, -0.504433, 0.752008,
		-0.750762, 0.660291, 0.019312,
		-0.506286, -0.556385, -0.658871,
		40.946426, 43.173214, 29.734152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.543751, 43.425602, 30.451822>,  <41.300827, 43.562683, 30.195360>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.543751, 43.425602, 30.451822> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.644524, 43.148129, 30.181910>,  <40.704987, 42.981644, 30.019962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.644524, 43.148129, 30.181910>,  <40.543751, 43.425602, 30.451822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.644524, 43.148129, 30.181910> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457151, -0.699877, 0.548804,
		-0.852961, 0.170214, -0.493441,
		0.251934, -0.693685, -0.674781,
		40.720104, 42.940022, 29.979475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<44.899406, 43.822540, 26.408400> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.620647, 43.676655, 26.161394>,  <44.453392, 43.589123, 26.013191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.620647, 43.676655, 26.161394>,  <44.899406, 43.822540, 26.408400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.620647, 43.676655, 26.161394> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580309, -0.219163, 0.784352,
		-0.421400, 0.904960, -0.058913,
		-0.696896, -0.364714, -0.617512,
		44.411579, 43.567242, 25.976141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.179832, 44.134811, 26.507252>,  <44.899406, 43.822540, 26.408400>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.179832, 44.134811, 26.507252> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.164822, 43.752434, 26.390799>,  <44.155815, 43.523006, 26.320927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.164822, 43.752434, 26.390799>,  <44.179832, 44.134811, 26.507252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.164822, 43.752434, 26.390799> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501897, -0.233898, 0.832701,
		-0.864113, 0.177368, -0.471009,
		-0.037527, -0.955945, -0.291135,
		44.153564, 43.465649, 26.303457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.410694, 43.935307, 26.554964>,  <44.179832, 44.134811, 26.507252>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.410694, 43.935307, 26.554964> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.642593, 43.610085, 26.576275>,  <43.781734, 43.414951, 26.589062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.642593, 43.610085, 26.576275>,  <43.410694, 43.935307, 26.554964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.642593, 43.610085, 26.576275> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448763, -0.264047, 0.853751,
		-0.680075, -0.518872, -0.517948,
		0.579750, -0.813051, 0.053279,
		43.816517, 43.366169, 26.592258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.069340, 43.450054, 27.073063>,  <43.410694, 43.935307, 26.554964>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.069340, 43.450054, 27.073063> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.412323, 43.246799, 27.040682>,  <43.618114, 43.124847, 27.021254>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.412323, 43.246799, 27.040682>,  <43.069340, 43.450054, 27.073063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.412323, 43.246799, 27.040682> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267890, -0.575188, 0.772912,
		-0.439308, -0.641058, -0.629328,
		0.857464, -0.508137, -0.080952,
		43.669563, 43.094357, 27.016396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.985313, 42.662628, 27.172592>,  <43.069340, 43.450054, 27.073063>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.985313, 42.662628, 27.172592> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.373775, 42.726048, 27.243832>,  <43.606853, 42.764099, 27.286575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.373775, 42.726048, 27.243832>,  <42.985313, 42.662628, 27.172592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.373775, 42.726048, 27.243832> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086844, -0.460417, 0.883445,
		0.222069, -0.873429, -0.433367,
		0.971156, 0.158551, 0.178096,
		43.665123, 42.773613, 27.297260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.204567, 42.068638, 27.615911>,  <42.985313, 42.662628, 27.172592>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.204567, 42.068638, 27.615911> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.501740, 42.325394, 27.691830>,  <43.680042, 42.479446, 27.737381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.501740, 42.325394, 27.691830>,  <43.204567, 42.068638, 27.615911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.501740, 42.325394, 27.691830> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109970, -0.162643, 0.980538,
		0.660269, -0.749347, -0.050244,
		0.742935, 0.641893, 0.189793,
		43.724621, 42.517960, 27.748768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.848911, 41.708900, 27.881840>,  <43.204567, 42.068638, 27.615911>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.848911, 41.708900, 27.881840> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.842827, 42.084003, 28.020628>,  <43.839176, 42.309063, 28.103901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.842827, 42.084003, 28.020628>,  <43.848911, 41.708900, 27.881840>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.842827, 42.084003, 28.020628> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019188, -0.347219, 0.937588,
		0.999700, 0.007603, 0.023275,
		-0.015210, 0.937753, 0.346969,
		43.838264, 42.365330, 28.124718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.362114, 41.769642, 28.258682>,  <43.848911, 41.708900, 27.881840>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.362114, 41.769642, 28.258682> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.119438, 42.063705, 28.379652>,  <43.973831, 42.240143, 28.452234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.119438, 42.063705, 28.379652>,  <44.362114, 41.769642, 28.258682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.119438, 42.063705, 28.379652> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111443, -0.298026, 0.948030,
		0.787086, 0.608866, 0.098882,
		-0.606692, 0.735162, 0.302426,
		43.937431, 42.284252, 28.470379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.695034, 42.099037, 28.759649>,  <44.362114, 41.769642, 28.258682>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.695034, 42.099037, 28.759649> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.318237, 42.213673, 28.829517>,  <44.092159, 42.282455, 28.871439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.318237, 42.213673, 28.829517>,  <44.695034, 42.099037, 28.759649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.318237, 42.213673, 28.829517> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136806, -0.147359, 0.979576,
		0.306476, 0.946653, 0.099605,
		-0.941996, 0.286590, 0.174670,
		44.035637, 42.299648, 28.881918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.721245, 42.426155, 29.448090>,  <44.695034, 42.099037, 28.759649>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.721245, 42.426155, 29.448090> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.333710, 42.364372, 29.370642>,  <44.101189, 42.327305, 29.324173>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.333710, 42.364372, 29.370642>,  <44.721245, 42.426155, 29.448090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.333710, 42.364372, 29.370642> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153420, -0.239471, 0.958705,
		-0.194442, 0.958539, 0.208314,
		-0.968842, -0.154454, -0.193622,
		44.043056, 42.318035, 29.312555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.365704, 42.729557, 30.078373>,  <44.721245, 42.426155, 29.448090>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.365704, 42.729557, 30.078373> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.124474, 42.449726, 29.925072>,  <43.979736, 42.281826, 29.833092>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.124474, 42.449726, 29.925072>,  <44.365704, 42.729557, 30.078373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.124474, 42.449726, 29.925072> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177520, -0.350701, 0.919508,
		-0.777677, 0.622572, 0.087311,
		-0.603080, -0.699581, -0.383251,
		43.943550, 42.239853, 29.810097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.914398, 42.703854, 30.542843>,  <44.365704, 42.729557, 30.078373>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.914398, 42.703854, 30.542843> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.875916, 42.359943, 30.342234>,  <43.852825, 42.153595, 30.221869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.875916, 42.359943, 30.342234>,  <43.914398, 42.703854, 30.542843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.875916, 42.359943, 30.342234> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392061, -0.430394, 0.813049,
		-0.914895, 0.274849, -0.295678,
		-0.096207, -0.859779, -0.501523,
		43.847054, 42.102009, 30.191776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.489601, 43.329918, 30.389425>,  <43.914398, 42.703854, 30.542843>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.489601, 43.329918, 30.389425> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.472099, 43.663727, 30.609118>,  <43.461597, 43.864014, 30.740932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.472099, 43.663727, 30.609118>,  <43.489601, 43.329918, 30.389425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.472099, 43.663727, 30.609118> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400626, 0.518273, -0.755574,
		-0.915197, 0.186978, -0.357008,
		-0.043752, 0.834526, 0.549230,
		43.458973, 43.914085, 30.773886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.375553, 43.852901, 29.935831>,  <43.489601, 43.329918, 30.389425>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.375553, 43.852901, 29.935831> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.528549, 44.039909, 30.254610>,  <43.620346, 44.152115, 30.445877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.528549, 44.039909, 30.254610>,  <43.375553, 43.852901, 29.935831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.528549, 44.039909, 30.254610> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482054, 0.634863, -0.603799,
		-0.788240, 0.615120, 0.017460,
		0.382493, 0.467522, 0.796946,
		43.643295, 44.180164, 30.493694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.270741, 44.528072, 29.821941>,  <43.375553, 43.852901, 29.935831>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.270741, 44.528072, 29.821941> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.560146, 44.530056, 30.098059>,  <43.733788, 44.531246, 30.263729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.560146, 44.530056, 30.098059>,  <43.270741, 44.528072, 29.821941>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.560146, 44.530056, 30.098059> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391777, 0.820379, -0.416520,
		-0.568367, 0.571799, 0.591612,
		0.723512, 0.004956, 0.690294,
		43.777199, 44.531544, 30.305147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.283947, 45.136032, 30.134205>,  <43.270741, 44.528072, 29.821941>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.283947, 45.136032, 30.134205> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.660870, 45.010796, 30.181589>,  <43.887024, 44.935654, 30.210020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.660870, 45.010796, 30.181589>,  <43.283947, 45.136032, 30.134205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.660870, 45.010796, 30.181589> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332664, 0.836351, -0.435719,
		0.037346, 0.449988, 0.892253,
		0.942306, -0.313093, 0.118460,
		43.943562, 44.916866, 30.217127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.710949, 45.801125, 30.292431>,  <43.283947, 45.136032, 30.134205>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.710949, 45.801125, 30.292431> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.978268, 45.518597, 30.199055>,  <44.138660, 45.349079, 30.143028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.978268, 45.518597, 30.199055>,  <43.710949, 45.801125, 30.292431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.978268, 45.518597, 30.199055> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475026, 0.646691, -0.596776,
		0.572478, 0.287932, 0.767700,
		0.668295, -0.706319, -0.233441,
		44.178757, 45.306702, 30.129023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.274075, 46.123951, 30.280727>,  <43.710949, 45.801125, 30.292431>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.274075, 46.123951, 30.280727> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.362629, 45.788818, 30.081114>,  <44.415760, 45.587738, 29.961346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.362629, 45.788818, 30.081114>,  <44.274075, 46.123951, 30.280727>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.362629, 45.788818, 30.081114> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447949, 0.541914, -0.711105,
		0.866217, -0.066116, 0.495274,
		0.221381, -0.837829, -0.499032,
		44.429043, 45.537468, 29.931404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.913410, 46.194252, 29.969927>,  <44.274075, 46.123951, 30.280727>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.913410, 46.194252, 29.969927> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.780334, 45.889736, 29.747305>,  <44.700489, 45.707027, 29.613731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.780334, 45.889736, 29.747305>,  <44.913410, 46.194252, 29.969927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.780334, 45.889736, 29.747305> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385410, 0.428872, -0.817024,
		0.860683, -0.486318, 0.150728,
		-0.332691, -0.761291, -0.556555,
		44.680527, 45.661350, 29.580339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.546974, 46.028339, 29.502039>,  <44.913410, 46.194252, 29.969927>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.546974, 46.028339, 29.502039> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.212349, 45.897820, 29.325998>,  <45.011574, 45.819508, 29.220373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.212349, 45.897820, 29.325998>,  <45.546974, 46.028339, 29.502039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.212349, 45.897820, 29.325998> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351754, 0.295978, -0.888069,
		0.420034, -0.897735, -0.132829,
		-0.836565, -0.326296, -0.440102,
		44.961380, 45.799931, 29.193968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.760529, 45.768978, 28.910086>,  <45.546974, 46.028339, 29.502039>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.760529, 45.768978, 28.910086> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.369339, 45.812840, 28.839045>,  <45.134624, 45.839157, 28.796419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.369339, 45.812840, 28.839045>,  <45.760529, 45.768978, 28.910086>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.369339, 45.812840, 28.839045> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194118, 0.165065, -0.966991,
		-0.076720, -0.980168, -0.182715,
		-0.977973, 0.109656, -0.177605,
		45.075947, 45.845737, 28.785763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.663300, 45.309063, 28.388430>,  <45.760529, 45.768978, 28.910086>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.663300, 45.309063, 28.388430> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.356941, 45.566124, 28.380516>,  <45.173126, 45.720360, 28.375769>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.356941, 45.566124, 28.380516>,  <45.663300, 45.309063, 28.388430>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.356941, 45.566124, 28.380516> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181953, 0.187133, -0.965336,
		-0.616676, -0.742951, -0.260259,
		-0.765900, 0.642654, -0.019782,
		45.127171, 45.758919, 28.374582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.253483, 45.019634, 27.836315>,  <45.663300, 45.309063, 28.388430>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.253483, 45.019634, 27.836315> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.180252, 45.409748, 27.885803>,  <45.136314, 45.643814, 27.915497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.180252, 45.409748, 27.885803>,  <45.253483, 45.019634, 27.836315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.180252, 45.409748, 27.885803> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168529, 0.155119, -0.973415,
		-0.968545, -0.157363, -0.192762,
		-0.183081, 0.975282, 0.123719,
		45.125328, 45.702332, 27.922918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.839523, 45.184601, 27.267498>,  <45.253483, 45.019634, 27.836315>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.839523, 45.184601, 27.267498> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.980618, 45.537735, 27.391548>,  <45.065273, 45.749615, 27.465979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.980618, 45.537735, 27.391548>,  <44.839523, 45.184601, 27.267498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.980618, 45.537735, 27.391548> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226081, 0.241200, -0.943774,
		-0.908001, 0.403014, -0.114513,
		0.352734, 0.882838, 0.310124,
		45.086437, 45.802586, 27.484585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.387280, 45.626957, 27.044741>,  <44.839523, 45.184601, 27.267498>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.387280, 45.626957, 27.044741> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.719261, 45.840740, 27.108658>,  <44.918449, 45.969009, 27.147007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.719261, 45.840740, 27.108658>,  <44.387280, 45.626957, 27.044741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.719261, 45.840740, 27.108658> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026616, 0.324062, -0.945661,
		-0.557202, 0.780599, 0.283181,
		0.829950, 0.534461, 0.159792,
		44.968246, 46.001080, 27.156595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.768078, 45.682510, 26.810389>,  <44.387280, 45.626957, 27.044741>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.768078, 45.682510, 26.810389> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.471100, 45.919003, 26.684389>,  <43.292912, 46.060898, 26.608789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.471100, 45.919003, 26.684389>,  <43.768078, 45.682510, 26.810389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.471100, 45.919003, 26.684389> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623965, -0.439183, 0.646364,
		0.243808, 0.676437, 0.694975,
		-0.742446, 0.591229, -0.314997,
		43.248367, 46.096371, 26.589890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.428223, 46.059139, 27.377922>,  <43.768078, 45.682510, 26.810389>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.428223, 46.059139, 27.377922> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.150940, 46.046509, 27.089903>,  <42.984570, 46.038933, 26.917091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.150940, 46.046509, 27.089903>,  <43.428223, 46.059139, 27.377922>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.150940, 46.046509, 27.089903> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667371, -0.349150, 0.657807,
		-0.272173, 0.936535, 0.220962,
		-0.693208, -0.031574, -0.720046,
		42.942978, 46.037037, 26.873890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.968796, 46.024757, 27.776937>,  <43.428223, 46.059139, 27.377922>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.968796, 46.024757, 27.776937> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.771381, 45.970715, 27.433270>,  <42.652935, 45.938290, 27.227068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.771381, 45.970715, 27.433270>,  <42.968796, 46.024757, 27.776937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.771381, 45.970715, 27.433270> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762319, -0.408353, 0.502112,
		-0.418683, 0.902770, 0.098542,
		-0.493532, -0.135106, -0.859170,
		42.623322, 45.930183, 27.175518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.257992, 46.235767, 27.882664>,  <42.968796, 46.024757, 27.776937>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.257992, 46.235767, 27.882664> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.257290, 45.975426, 27.578983>,  <42.256870, 45.819221, 27.396776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.257290, 45.975426, 27.578983>,  <42.257992, 46.235767, 27.882664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.257290, 45.975426, 27.578983> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828093, -0.424654, 0.365967,
		-0.560589, 0.629330, -0.538223,
		-0.001756, -0.650856, -0.759200,
		42.256763, 45.780170, 27.351223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.575703, 46.038940, 27.821066>,  <42.257992, 46.235767, 27.882664>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.575703, 46.038940, 27.821066> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.730724, 45.760372, 27.579470>,  <41.823738, 45.593231, 27.434513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.730724, 45.760372, 27.579470>,  <41.575703, 46.038940, 27.821066>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.730724, 45.760372, 27.579470> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715759, -0.640225, 0.278929,
		-0.580940, 0.324209, -0.746590,
		0.387554, -0.696419, -0.603988,
		41.846992, 45.551445, 27.398273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.049450, 45.801743, 27.506493>,  <41.575703, 46.038940, 27.821066>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.049450, 45.801743, 27.506493> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.335411, 45.523315, 27.479963>,  <41.506989, 45.356258, 27.464045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.335411, 45.523315, 27.479963>,  <41.049450, 45.801743, 27.506493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.335411, 45.523315, 27.479963> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610482, -0.667604, 0.426165,
		-0.340920, -0.264177, -0.902211,
		0.714902, -0.696072, -0.066324,
		41.549881, 45.314495, 27.460066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.745979, 45.173161, 27.211708>,  <41.049450, 45.801743, 27.506493>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.745979, 45.173161, 27.211708> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.064548, 45.064182, 27.427664>,  <41.255692, 44.998795, 27.557238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.064548, 45.064182, 27.427664>,  <40.745979, 45.173161, 27.211708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.064548, 45.064182, 27.427664> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556358, -0.679992, 0.477574,
		0.237009, -0.680724, -0.693139,
		0.796425, -0.272444, 0.539890,
		41.303474, 44.982449, 27.589630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.739498, 44.465229, 27.197796>,  <40.745979, 45.173161, 27.211708>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.739498, 44.465229, 27.197796> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.961784, 44.575829, 27.511415>,  <41.095154, 44.642189, 27.699587>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.961784, 44.575829, 27.511415>,  <40.739498, 44.465229, 27.197796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.961784, 44.575829, 27.511415> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509009, -0.632497, 0.583829,
		0.657338, -0.723528, -0.210744,
		0.555712, 0.276503, 0.784047,
		41.128498, 44.658779, 27.746630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.685856, 43.847645, 26.620838>,  <40.739498, 44.465229, 27.197796>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.685856, 43.847645, 26.620838> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.365185, 43.761551, 26.397770>,  <40.172783, 43.709896, 26.263929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.365185, 43.761551, 26.397770>,  <40.685856, 43.847645, 26.620838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.365185, 43.761551, 26.397770> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314517, 0.641474, -0.699707,
		0.508329, -0.736334, -0.446559,
		-0.801674, -0.215231, -0.557669,
		40.124683, 43.696980, 26.230469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.025429, 43.859440, 26.065813>,  <40.685856, 43.847645, 26.620838>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.025429, 43.859440, 26.065813> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.646706, 43.892441, 25.941401>,  <40.419472, 43.912239, 25.866753>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.646706, 43.892441, 25.941401>,  <41.025429, 43.859440, 26.065813>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.646706, 43.892441, 25.941401> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303363, 0.551210, -0.777263,
		0.107319, -0.830278, -0.546920,
		-0.946813, 0.082500, -0.311031,
		40.362663, 43.917191, 25.848091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.002964, 43.629520, 25.428421>,  <41.025429, 43.859440, 26.065813>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.002964, 43.629520, 25.428421> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.702328, 43.888588, 25.478437>,  <40.521946, 44.044029, 25.508448>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.702328, 43.888588, 25.478437>,  <41.002964, 43.629520, 25.428421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.702328, 43.888588, 25.478437> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322796, 0.526440, -0.786552,
		-0.575256, -0.550799, -0.604732,
		-0.751587, 0.647674, 0.125042,
		40.476852, 44.082890, 25.515949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.686668, 43.695015, 24.716576>,  <41.002964, 43.629520, 25.428421>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.686668, 43.695015, 24.716576> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.620525, 44.025379, 24.932177>,  <40.580841, 44.223598, 25.061537>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.620525, 44.025379, 24.932177>,  <40.686668, 43.695015, 24.716576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.620525, 44.025379, 24.932177> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423904, 0.552986, -0.717294,
		-0.890484, 0.109876, -0.441549,
		-0.165357, 0.825914, 0.539003,
		40.570919, 44.273151, 25.093878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.457691, 44.157364, 24.194016>,  <40.686668, 43.695015, 24.716576>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.457691, 44.157364, 24.194016> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.568523, 44.387196, 24.502064>,  <40.635021, 44.525093, 24.686893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.568523, 44.387196, 24.502064>,  <40.457691, 44.157364, 24.194016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.568523, 44.387196, 24.502064> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566630, 0.549591, -0.613905,
		-0.775989, 0.606474, -0.173294,
		0.277077, 0.574577, 0.770123,
		40.651646, 44.559570, 24.733101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.261345, 44.849213, 23.953449>,  <40.457691, 44.157364, 24.194016>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.261345, 44.849213, 23.953449> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.501526, 44.932110, 24.262386>,  <40.645634, 44.981846, 24.447748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.501526, 44.932110, 24.262386>,  <40.261345, 44.849213, 23.953449>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.501526, 44.932110, 24.262386> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596204, 0.527641, -0.605092,
		-0.532918, 0.823800, 0.193266,
		0.600450, 0.207239, 0.772342,
		40.681660, 44.994282, 24.494089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.273479, 45.663429, 24.100666>,  <40.261345, 44.849213, 23.953449>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.273479, 45.663429, 24.100666> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.594296, 45.481728, 24.255787>,  <40.786785, 45.372707, 24.348860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.594296, 45.481728, 24.255787>,  <40.273479, 45.663429, 24.100666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.594296, 45.481728, 24.255787> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596342, 0.572762, -0.562423,
		0.033364, 0.682348, 0.730266,
		0.802037, -0.454253, 0.387803,
		40.834908, 45.345451, 24.372128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.674553, 46.242611, 24.363400>,  <40.273479, 45.663429, 24.100666>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.674553, 46.242611, 24.363400> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.943417, 45.956398, 24.287285>,  <41.104736, 45.784668, 24.241615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.943417, 45.956398, 24.287285>,  <40.674553, 46.242611, 24.363400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.943417, 45.956398, 24.287285> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640367, 0.690823, -0.335699,
		0.371660, 0.103789, 0.922549,
		0.672160, -0.715536, -0.190288,
		41.145065, 45.741737, 24.230198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.297661, 46.402935, 24.691303>,  <40.674553, 46.242611, 24.363400>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.297661, 46.402935, 24.691303> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.394535, 46.126522, 24.418886>,  <41.452660, 45.960674, 24.255436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.394535, 46.126522, 24.418886>,  <41.297661, 46.402935, 24.691303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.394535, 46.126522, 24.418886> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785237, 0.551893, -0.280742,
		0.569866, -0.466789, 0.676285,
		0.242190, -0.691029, -0.681045,
		41.467194, 45.919212, 24.214573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.897945, 35.404785, 35.674412> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.167641, 35.179405, 35.483440>,  <36.329456, 35.044178, 35.368858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.167641, 35.179405, 35.483440>,  <35.897945, 35.404785, 35.674412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.167641, 35.179405, 35.483440> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318304, 0.805046, -0.500583,
		0.666401, 0.185544, 0.722138,
		0.674235, -0.563448, -0.477424,
		36.369911, 35.010372, 35.340214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.534889, 35.681908, 35.706230>,  <35.897945, 35.404785, 35.674412>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.534889, 35.681908, 35.706230> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.553089, 35.443779, 35.385349>,  <36.564011, 35.300903, 35.192822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.553089, 35.443779, 35.385349>,  <36.534889, 35.681908, 35.706230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.553089, 35.443779, 35.385349> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427788, 0.737288, -0.522880,
		0.902733, -0.319380, 0.288218,
		0.045502, -0.595318, -0.802201,
		36.566738, 35.265182, 35.144688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.990562, 35.927792, 35.201668>,  <36.534889, 35.681908, 35.706230>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.990562, 35.927792, 35.201668> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.814598, 35.694782, 34.928276>,  <36.709019, 35.554977, 34.764240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.814598, 35.694782, 34.928276>,  <36.990562, 35.927792, 35.201668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.814598, 35.694782, 34.928276> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317175, 0.611249, -0.725103,
		0.840165, -0.535764, -0.084134,
		-0.439911, -0.582521, -0.683482,
		36.682625, 35.520027, 34.723232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.513943, 35.760796, 34.644924>,  <36.990562, 35.927792, 35.201668>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.513943, 35.760796, 34.644924> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.152245, 35.708519, 34.482315>,  <36.935226, 35.677155, 34.384750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.152245, 35.708519, 34.482315>,  <37.513943, 35.760796, 34.644924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.152245, 35.708519, 34.482315> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240577, 0.630621, -0.737862,
		0.352789, -0.765009, -0.538796,
		-0.904247, -0.130688, -0.406520,
		36.880970, 35.669312, 34.360359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.631207, 35.690754, 33.922020>,  <37.513943, 35.760796, 34.644924>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.631207, 35.690754, 33.922020> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.252083, 35.808323, 33.971436>,  <37.024609, 35.878864, 34.001083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.252083, 35.808323, 33.971436>,  <37.631207, 35.690754, 33.922020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.252083, 35.808323, 33.971436> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139075, 0.729807, -0.669358,
		-0.286901, -0.617244, -0.732597,
		-0.947811, 0.293925, 0.123539,
		36.967739, 35.896500, 34.008499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.444057, 35.715862, 33.249203>,  <37.631207, 35.690754, 33.922020>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.444057, 35.715862, 33.249203> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.170483, 35.922771, 33.454983>,  <37.006340, 36.046917, 33.578453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.170483, 35.922771, 33.454983>,  <37.444057, 35.715862, 33.249203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.170483, 35.922771, 33.454983> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057179, 0.664995, -0.744656,
		-0.727301, -0.538711, -0.425235,
		-0.683933, 0.517275, 0.514454,
		36.965302, 36.077953, 33.609318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.778126, 35.708698, 32.861980>,  <37.444057, 35.715862, 33.249203>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.778126, 35.708698, 32.861980> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.755615, 36.024242, 33.106777>,  <36.742111, 36.213570, 33.253654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.755615, 36.024242, 33.106777>,  <36.778126, 35.708698, 32.861980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.755615, 36.024242, 33.106777> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082092, 0.607235, -0.790270,
		-0.995035, -0.094710, 0.030589,
		-0.056272, 0.788857, 0.611995,
		36.738735, 36.260899, 33.290375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.288368, 36.127621, 32.489250>,  <36.778126, 35.708698, 32.861980>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.288368, 36.127621, 32.489250> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.448887, 36.382126, 32.752804>,  <36.545200, 36.534828, 32.910938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.448887, 36.382126, 32.752804>,  <36.288368, 36.127621, 32.489250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.448887, 36.382126, 32.752804> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002136, 0.718700, -0.695317,
		-0.915944, 0.280438, 0.287055,
		0.401300, 0.636258, 0.658888,
		36.569275, 36.573002, 32.950470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.924175, 36.735592, 32.362637>,  <36.288368, 36.127621, 32.489250>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.924175, 36.735592, 32.362637> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.261497, 36.846405, 32.546848>,  <36.463890, 36.912891, 32.657375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.261497, 36.846405, 32.546848>,  <35.924175, 36.735592, 32.362637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.261497, 36.846405, 32.546848> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182459, 0.658434, -0.730188,
		-0.505517, 0.699798, 0.504712,
		0.843304, 0.277033, 0.460534,
		36.514488, 36.929516, 32.685009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.977386, 37.487423, 32.290234>,  <35.924175, 36.735592, 32.362637>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.977386, 37.487423, 32.290234> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.348869, 37.354301, 32.355648>,  <36.571758, 37.274429, 32.394897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.348869, 37.354301, 32.355648>,  <35.977386, 37.487423, 32.290234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.348869, 37.354301, 32.355648> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354834, 0.669492, -0.652589,
		0.107697, 0.664093, 0.739853,
		0.928706, -0.332807, 0.163541,
		36.627480, 37.254459, 32.404709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.384747, 38.012383, 32.480244>,  <35.977386, 37.487423, 32.290234>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.384747, 38.012383, 32.480244> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.634777, 37.751022, 32.309437>,  <36.784794, 37.594204, 32.206951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.634777, 37.751022, 32.309437>,  <36.384747, 38.012383, 32.480244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.634777, 37.751022, 32.309437> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444904, 0.747736, -0.492900,
		0.641359, 0.118119, 0.758094,
		0.625075, -0.653405, -0.427016,
		36.822300, 37.555000, 32.181332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.005833, 38.355621, 32.469177>,  <36.384747, 38.012383, 32.480244>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.005833, 38.355621, 32.469177> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.082359, 38.070248, 32.199539>,  <37.128273, 37.899025, 32.037754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.082359, 38.070248, 32.199539>,  <37.005833, 38.355621, 32.469177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.082359, 38.070248, 32.199539> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541349, 0.649578, -0.533845,
		0.818743, -0.262791, 0.510490,
		0.191313, -0.713435, -0.674099,
		37.139751, 37.856216, 31.997309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.577312, 38.385555, 32.917526>,  <37.005833, 38.355621, 32.469177>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.577312, 38.385555, 32.917526> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.600594, 38.717304, 33.139790>,  <37.614563, 38.916351, 33.273148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.600594, 38.717304, 33.139790>,  <37.577312, 38.385555, 32.917526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.600594, 38.717304, 33.139790> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563591, -0.432123, 0.704013,
		0.824001, -0.354140, 0.442276,
		0.058202, 0.829370, 0.555659,
		37.618053, 38.966114, 33.306488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.766510, 38.183945, 33.714607>,  <37.577312, 38.385555, 32.917526>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.766510, 38.183945, 33.714607> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.597832, 38.546638, 33.713245>,  <37.496624, 38.764256, 33.712429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.597832, 38.546638, 33.713245>,  <37.766510, 38.183945, 33.714607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.597832, 38.546638, 33.713245> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487703, -0.223649, 0.843876,
		0.764410, 0.357515, 0.536527,
		-0.421692, 0.906733, -0.003401,
		37.471325, 38.818657, 33.712227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.951912, 38.442001, 34.466599>,  <37.766510, 38.183945, 33.714607>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.951912, 38.442001, 34.466599> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.679848, 38.705872, 34.338718>,  <37.516609, 38.864193, 34.261990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.679848, 38.705872, 34.338718>,  <37.951912, 38.442001, 34.466599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.679848, 38.705872, 34.338718> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582459, -0.221516, 0.782094,
		0.445113, 0.718160, 0.534903,
		-0.680158, 0.659679, -0.319699,
		37.475800, 38.903774, 34.242809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.843868, 38.817245, 35.001774>,  <37.951912, 38.442001, 34.466599>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.843868, 38.817245, 35.001774> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.509888, 38.897362, 34.796745>,  <37.309498, 38.945431, 34.673729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.509888, 38.897362, 34.796745>,  <37.843868, 38.817245, 35.001774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.509888, 38.897362, 34.796745> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522698, 0.002737, 0.852513,
		0.172155, 0.979732, 0.102407,
		-0.834955, 0.200292, -0.512575,
		37.259399, 38.957451, 34.642971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.537647, 39.287209, 35.423046>,  <37.843868, 38.817245, 35.001774>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.537647, 39.287209, 35.423046> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.241619, 39.142548, 35.196239>,  <37.064003, 39.055752, 35.060158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.241619, 39.142548, 35.196239>,  <37.537647, 39.287209, 35.423046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.241619, 39.142548, 35.196239> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607738, -0.001438, 0.794137,
		-0.288018, 0.932311, -0.218727,
		-0.740068, -0.361654, -0.567015,
		37.019600, 39.034050, 35.026134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.036713, 39.753574, 35.582970>,  <37.537647, 39.287209, 35.423046>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.036713, 39.753574, 35.582970> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.848251, 39.435741, 35.429787>,  <36.735176, 39.245041, 35.337879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.848251, 39.435741, 35.429787>,  <37.036713, 39.753574, 35.582970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.848251, 39.435741, 35.429787> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523540, -0.097497, 0.846404,
		-0.709875, 0.599277, -0.370060,
		-0.471151, -0.794583, -0.382956,
		36.706905, 39.197365, 35.314899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.279282, 39.878525, 35.685120>,  <37.036713, 39.753574, 35.582970>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.279282, 39.878525, 35.685120> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.317200, 39.482265, 35.645874>,  <36.339951, 39.244511, 35.622326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.317200, 39.482265, 35.645874>,  <36.279282, 39.878525, 35.685120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.317200, 39.482265, 35.645874> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603161, -0.135562, 0.786016,
		-0.791967, -0.015336, -0.610372,
		0.094797, -0.990650, -0.098110,
		36.345638, 39.185070, 35.616440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.561867, 39.506447, 35.671364>,  <36.279282, 39.878525, 35.685120>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.561867, 39.506447, 35.671364> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.839809, 39.257599, 35.815662>,  <36.006577, 39.108292, 35.902241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.839809, 39.257599, 35.815662>,  <35.561867, 39.506447, 35.671364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.839809, 39.257599, 35.815662> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530826, -0.105273, 0.840917,
		-0.485173, -0.775814, -0.403386,
		0.694861, -0.622118, 0.360746,
		36.048267, 39.070965, 35.923885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.249256, 38.908169, 35.976894>,  <35.561867, 39.506447, 35.671364>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.249256, 38.908169, 35.976894> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.610073, 38.877117, 36.146736>,  <35.826565, 38.858486, 36.248642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.610073, 38.877117, 36.146736>,  <35.249256, 38.908169, 35.976894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.610073, 38.877117, 36.146736> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427795, -0.291830, 0.855469,
		0.057505, -0.953315, -0.296452,
		0.902045, -0.077627, 0.424605,
		35.880688, 38.853828, 36.274117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.168587, 38.383316, 36.493114>,  <35.249256, 38.908169, 35.976894>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.168587, 38.383316, 36.493114> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.511345, 38.567665, 36.585491>,  <35.716999, 38.678276, 36.640915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.511345, 38.567665, 36.585491>,  <35.168587, 38.383316, 36.493114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.511345, 38.567665, 36.585491> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183348, -0.146219, 0.972113,
		0.481791, -0.875336, -0.040793,
		0.856891, 0.460876, 0.230938,
		35.768414, 38.705929, 36.654774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.413879, 38.063442, 37.098091>,  <35.168587, 38.383316, 36.493114>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.413879, 38.063442, 37.098091> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.636978, 38.395176, 37.084618>,  <35.770836, 38.594215, 37.076534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.636978, 38.395176, 37.084618>,  <35.413879, 38.063442, 37.098091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.636978, 38.395176, 37.084618> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014914, 0.030559, 0.999422,
		0.829880, -0.557923, 0.004675,
		0.557743, 0.829330, -0.033681,
		35.804302, 38.643974, 37.074512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.039188, 38.000919, 37.581497>,  <35.413879, 38.063442, 37.098091>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.039188, 38.000919, 37.581497> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.961357, 38.388165, 37.518387>,  <35.914658, 38.620510, 37.480518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.961357, 38.388165, 37.518387>,  <36.039188, 38.000919, 37.581497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.961357, 38.388165, 37.518387> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028905, 0.155126, 0.987472,
		0.980461, 0.196703, -0.002201,
		-0.194580, 0.968114, -0.157781,
		35.902985, 38.678600, 37.471054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.500359, 38.397038, 38.084644>,  <36.039188, 38.000919, 37.581497>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.500359, 38.397038, 38.084644> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.196808, 38.632713, 37.973682>,  <36.014679, 38.774120, 37.907104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.196808, 38.632713, 37.973682>,  <36.500359, 38.397038, 38.084644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.196808, 38.632713, 37.973682> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122978, 0.288657, 0.949502,
		0.639515, 0.754671, -0.146598,
		-0.758878, 0.589193, -0.277409,
		35.969143, 38.809471, 37.890461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.651882, 38.961823, 38.463970>,  <36.500359, 38.397038, 38.084644>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.651882, 38.961823, 38.463970> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.260372, 38.974751, 38.383018>,  <36.025467, 38.982506, 38.334446>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.260372, 38.974751, 38.383018>,  <36.651882, 38.961823, 38.463970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.260372, 38.974751, 38.383018> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190441, 0.221433, 0.956399,
		0.075724, 0.974640, -0.210578,
		-0.978774, 0.032320, -0.202380,
		35.966740, 38.984447, 38.322304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.364220, 38.648029, 38.444912>,  <36.651882, 38.961823, 38.463970>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.364220, 38.648029, 38.444912> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.719215, 38.468864, 38.488258>,  <37.932213, 38.361366, 38.514267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.719215, 38.468864, 38.488258>,  <37.364220, 38.648029, 38.444912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.719215, 38.468864, 38.488258> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451833, 0.799518, -0.395750,
		0.090619, 0.400187, 0.911942,
		0.887488, -0.447908, 0.108366,
		37.985462, 38.334492, 38.520767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.827690, 39.122623, 38.675854>,  <37.364220, 38.648029, 38.444912>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.827690, 39.122623, 38.675854> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.070602, 38.844826, 38.521511>,  <38.216351, 38.678146, 38.428905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.070602, 38.844826, 38.521511>,  <37.827690, 39.122623, 38.675854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.070602, 38.844826, 38.521511> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479320, 0.707592, -0.519198,
		0.633611, 0.130350, 0.762592,
		0.607281, -0.694495, -0.385859,
		38.252785, 38.636478, 38.405754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.526443, 39.404102, 38.858604>,  <37.827690, 39.122623, 38.675854>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.526443, 39.404102, 38.858604> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.543606, 39.152775, 38.547894>,  <38.553905, 39.001980, 38.361469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.543606, 39.152775, 38.547894>,  <38.526443, 39.404102, 38.858604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.543606, 39.152775, 38.547894> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421440, 0.716314, -0.556131,
		0.905840, -0.303499, 0.295535,
		0.042911, -0.628317, -0.776773,
		38.556480, 38.964279, 38.314861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.182861, 39.441490, 38.557323>,  <38.526443, 39.404102, 38.858604>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.182861, 39.441490, 38.557323> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.971355, 39.311237, 38.243797>,  <38.844452, 39.233086, 38.055679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.971355, 39.311237, 38.243797>,  <39.182861, 39.441490, 38.557323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.971355, 39.311237, 38.243797> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297690, 0.793666, -0.530542,
		0.794869, -0.513857, -0.322700,
		-0.528739, -0.325647, -0.783830,
		38.812725, 39.213547, 38.008652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.660107, 39.384644, 38.065544>,  <39.182861, 39.441490, 38.557323>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.660107, 39.384644, 38.065544> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.325436, 39.370525, 37.846924>,  <39.124634, 39.362057, 37.715752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.325436, 39.370525, 37.846924>,  <39.660107, 39.384644, 38.065544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.325436, 39.370525, 37.846924> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352447, 0.729145, -0.586624,
		0.419219, -0.683449, -0.597624,
		-0.836682, -0.035293, -0.546551,
		39.074432, 39.359936, 37.682957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.827339, 39.183910, 37.395069>,  <39.660107, 39.384644, 38.065544>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.827339, 39.183910, 37.395069> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.473244, 39.366756, 37.360676>,  <39.260784, 39.476463, 37.340038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.473244, 39.366756, 37.360676>,  <39.827339, 39.183910, 37.395069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.473244, 39.366756, 37.360676> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398584, 0.650232, -0.646784,
		-0.239744, -0.606832, -0.757811,
		-0.885242, 0.457114, -0.085984,
		39.207672, 39.503891, 37.334881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.919109, 39.365440, 36.745377>,  <39.827339, 39.183910, 37.395069>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.919109, 39.365440, 36.745377> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.621223, 39.597092, 36.878044>,  <39.442490, 39.736084, 36.957645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.621223, 39.597092, 36.878044>,  <39.919109, 39.365440, 36.745377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.621223, 39.597092, 36.878044> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301817, 0.735502, -0.606584,
		-0.595234, -0.351631, -0.722532,
		-0.744717, 0.579131, 0.331668,
		39.397808, 39.770832, 36.977543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.693443, 39.721500, 36.178974>,  <39.919109, 39.365440, 36.745377>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.693443, 39.721500, 36.178974> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.532513, 39.947514, 36.467106>,  <39.435955, 40.083122, 36.639984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.532513, 39.947514, 36.467106>,  <39.693443, 39.721500, 36.178974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.532513, 39.947514, 36.467106> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292976, 0.824901, -0.483429,
		-0.867353, 0.016545, -0.497418,
		-0.402323, 0.565035, 0.720328,
		39.411816, 40.117023, 36.683205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.378395, 40.301464, 35.864223>,  <39.693443, 39.721500, 36.178974>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.378395, 40.301464, 35.864223> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.431904, 40.426594, 36.240360>,  <39.464008, 40.501671, 36.466042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.431904, 40.426594, 36.240360>,  <39.378395, 40.301464, 35.864223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.431904, 40.426594, 36.240360> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480468, 0.809422, -0.337620,
		-0.866751, 0.496967, -0.042028,
		0.133767, 0.312826, 0.940344,
		39.472034, 40.520443, 36.522465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.113846, 40.931591, 35.854565>,  <39.378395, 40.301464, 35.864223>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.113846, 40.931591, 35.854565> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.375046, 40.921574, 36.157341>,  <39.531765, 40.915562, 36.339008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.375046, 40.921574, 36.157341>,  <39.113846, 40.931591, 35.854565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.375046, 40.921574, 36.157341> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446777, 0.819763, -0.358300,
		-0.611540, 0.572155, 0.546496,
		0.653001, -0.025047, 0.756943,
		39.570946, 40.914059, 36.384422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.212513, 41.628262, 35.977592>,  <39.113846, 40.931591, 35.854565>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.212513, 41.628262, 35.977592> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.519554, 41.445869, 36.157757>,  <39.703777, 41.336433, 36.265858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.519554, 41.445869, 36.157757>,  <39.212513, 41.628262, 35.977592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.519554, 41.445869, 36.157757> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628870, 0.671513, -0.391909,
		-0.123754, 0.584080, 0.802207,
		0.767598, -0.455983, 0.450413,
		39.749832, 41.309074, 36.292881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.593910, 42.171371, 36.132141>,  <39.212513, 41.628262, 35.977592>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.593910, 42.171371, 36.132141> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.834068, 41.851551, 36.125938>,  <39.978161, 41.659657, 36.122215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.834068, 41.851551, 36.125938>,  <39.593910, 42.171371, 36.132141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.834068, 41.851551, 36.125938> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753159, 0.571862, -0.325155,
		0.268848, 0.183540, 0.945534,
		0.600393, -0.799554, -0.015509,
		40.014187, 41.611683, 36.121284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.268253, 42.440990, 36.277260>,  <39.593910, 42.171371, 36.132141>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.268253, 42.440990, 36.277260> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.348434, 42.091431, 36.100117>,  <40.396542, 41.881695, 35.993832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.348434, 42.091431, 36.100117>,  <40.268253, 42.440990, 36.277260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.348434, 42.091431, 36.100117> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686872, 0.447688, -0.572523,
		0.698589, -0.189425, 0.689994,
		0.200452, -0.873896, -0.442860,
		40.408569, 41.829262, 35.967258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.024841, 42.410080, 36.324284>,  <40.268253, 42.440990, 36.277260>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.024841, 42.410080, 36.324284> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.886143, 42.174641, 36.032169>,  <40.802921, 42.033379, 35.856899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.886143, 42.174641, 36.032169>,  <41.024841, 42.410080, 36.324284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.886143, 42.174641, 36.032169> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692608, 0.364357, -0.622525,
		0.632501, -0.721664, 0.281325,
		-0.346751, -0.588596, -0.730287,
		40.782116, 41.998062, 35.813084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.596798, 42.267769, 35.956806>,  <41.024841, 42.410080, 36.324284>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.596798, 42.267769, 35.956806> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.309528, 42.169930, 35.696224>,  <41.137165, 42.111225, 35.539875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.309528, 42.169930, 35.696224>,  <41.596798, 42.267769, 35.956806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.309528, 42.169930, 35.696224> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479799, 0.504001, -0.718176,
		0.504001, -0.828344, -0.244602,
		0.718176, 0.244602, 0.651455,
		41.094074, 42.096550, 35.500786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.877670, 41.856930, 35.346230>,  <41.596798, 42.267769, 35.956806>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.877670, 41.856930, 35.346230> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.554047, 42.069725, 35.246300>,  <41.359871, 42.197403, 35.186340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.554047, 42.069725, 35.246300>,  <41.877670, 41.856930, 35.346230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.554047, 42.069725, 35.246300> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473611, 0.338436, -0.813113,
		-0.348016, -0.776177, -0.525770,
		-0.809060, 0.531987, -0.249825,
		41.311329, 42.229321, 35.171352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.887684, 41.740097, 34.596321>,  <41.877670, 41.856930, 35.346230>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.887684, 41.740097, 34.596321> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.621037, 42.024387, 34.686203>,  <41.461048, 42.194962, 34.740131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.621037, 42.024387, 34.686203>,  <41.887684, 41.740097, 34.596321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.621037, 42.024387, 34.686203> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329225, 0.551190, -0.766681,
		-0.668750, -0.437108, -0.601423,
		-0.666621, 0.710722, 0.224702,
		41.421051, 42.237602, 34.753613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.485527, 41.752724, 34.001617>,  <41.887684, 41.740097, 34.596321>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.485527, 41.752724, 34.001617> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.506927, 42.106125, 34.187759>,  <41.519768, 42.318165, 34.299442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.506927, 42.106125, 34.187759>,  <41.485527, 41.752724, 34.001617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.506927, 42.106125, 34.187759> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355856, 0.418553, -0.835572,
		-0.933008, 0.210305, -0.292007,
		0.053504, 0.883507, 0.465352,
		41.522980, 42.371178, 34.327366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.178551, 42.202286, 33.507915>,  <41.485527, 41.752724, 34.001617>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.178551, 42.202286, 33.507915> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.350220, 42.464378, 33.756584>,  <41.453220, 42.621635, 33.905785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.350220, 42.464378, 33.756584>,  <41.178551, 42.202286, 33.507915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.350220, 42.464378, 33.756584> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265769, 0.566203, -0.780244,
		-0.863237, 0.500081, 0.068858,
		0.429173, 0.655235, 0.621674,
		41.478973, 42.660950, 33.943085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.054848, 42.799286, 33.183144>,  <41.178551, 42.202286, 33.507915>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.054848, 42.799286, 33.183144> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.334911, 42.910583, 33.446156>,  <41.502949, 42.977364, 33.603962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.334911, 42.910583, 33.446156>,  <41.054848, 42.799286, 33.183144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.334911, 42.910583, 33.446156> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283505, 0.736877, -0.613708,
		-0.655283, 0.616110, 0.437050,
		0.700164, 0.278247, 0.657533,
		41.544960, 42.994057, 33.643414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.055458, 43.627003, 33.203491>,  <41.054848, 42.799286, 33.183144>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.055458, 43.627003, 33.203491> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.404274, 43.476894, 33.329174>,  <41.613564, 43.386829, 33.404583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.404274, 43.476894, 33.329174>,  <41.055458, 43.627003, 33.203491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.404274, 43.476894, 33.329174> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482496, 0.551355, -0.680591,
		0.082166, 0.745104, 0.661868,
		0.872036, -0.375271, 0.314207,
		41.665886, 43.364315, 33.423435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.430077, 44.170586, 33.117191>,  <41.055458, 43.627003, 33.203491>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.430077, 44.170586, 33.117191> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.683079, 43.862133, 33.146301>,  <41.834881, 43.677063, 33.163769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.683079, 43.862133, 33.146301>,  <41.430077, 44.170586, 33.117191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.683079, 43.862133, 33.146301> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601976, 0.430278, -0.672671,
		0.487403, 0.469277, 0.736354,
		0.632506, -0.771129, 0.072774,
		41.872829, 43.630795, 33.168133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.987179, 44.463966, 33.166458>,  <41.430077, 44.170586, 33.117191>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.987179, 44.463966, 33.166458> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.089512, 44.094791, 33.051403>,  <42.150909, 43.873287, 32.982368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.089512, 44.094791, 33.051403>,  <41.987179, 44.463966, 33.166458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.089512, 44.094791, 33.051403> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577316, 0.384514, -0.720316,
		0.775408, 0.018220, 0.631197,
		0.255828, -0.922940, -0.287636,
		42.166260, 43.817909, 32.965111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.688187, 44.452991, 33.079449>,  <41.987179, 44.463966, 33.166458>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.688187, 44.452991, 33.079449> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.550987, 44.149197, 32.858345>,  <42.468666, 43.966919, 32.725685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.550987, 44.149197, 32.858345>,  <42.688187, 44.452991, 33.079449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.550987, 44.149197, 32.858345> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510361, 0.343345, -0.788446,
		0.788597, -0.552539, 0.269845,
		-0.342997, -0.759484, -0.552755,
		42.448090, 43.921352, 32.692520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.314079, 44.246552, 32.670071>,  <42.688187, 44.452991, 33.079449>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.314079, 44.246552, 32.670071> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.994488, 44.087753, 32.489395>,  <42.802734, 43.992474, 32.380989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.994488, 44.087753, 32.489395>,  <43.314079, 44.246552, 32.670071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.994488, 44.087753, 32.489395> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330091, 0.338323, -0.881236,
		0.502664, -0.853190, -0.139269,
		-0.798980, -0.396994, -0.451693,
		42.754795, 43.968655, 32.353886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.615665, 43.751156, 32.283768>,  <43.314079, 44.246552, 32.670071>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.615665, 43.751156, 32.283768> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.257023, 43.816265, 32.119034>,  <43.041840, 43.855331, 32.020195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.257023, 43.816265, 32.119034>,  <43.615665, 43.751156, 32.283768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.257023, 43.816265, 32.119034> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419076, 0.011377, -0.907880,
		-0.143092, -0.986598, -0.078415,
		-0.896604, 0.162772, -0.411832,
		42.988041, 43.865097, 31.995483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.484726, 43.236916, 31.781544>,  <43.615665, 43.751156, 32.283768>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.484726, 43.236916, 31.781544> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.268269, 43.554134, 31.669653>,  <43.138393, 43.744465, 31.602518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.268269, 43.554134, 31.669653>,  <43.484726, 43.236916, 31.781544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.268269, 43.554134, 31.669653> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272113, -0.149607, -0.950564,
		-0.795689, -0.590507, -0.134840,
		-0.541142, 0.793045, -0.279725,
		43.105927, 43.792049, 31.585735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.452034, 43.005634, 31.120787>,  <43.484726, 43.236916, 31.781544>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.452034, 43.005634, 31.120787> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.331902, 43.386448, 31.144207>,  <43.259823, 43.614937, 31.158258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.331902, 43.386448, 31.144207>,  <43.452034, 43.005634, 31.120787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.331902, 43.386448, 31.144207> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324544, 0.159718, -0.932288,
		-0.896922, -0.260997, -0.356946,
		-0.300336, 0.952035, 0.058550,
		43.241802, 43.672058, 31.161772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.287563, 42.401093, 30.753038>,  <43.452034, 43.005634, 31.120787>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.287563, 42.401093, 30.753038> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.490292, 42.093342, 30.597506>,  <43.611927, 41.908691, 30.504187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.490292, 42.093342, 30.597506>,  <43.287563, 42.401093, 30.753038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.490292, 42.093342, 30.597506> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354939, -0.597288, 0.719212,
		-0.785592, -0.226497, -0.575798,
		0.506817, -0.769380, -0.388833,
		43.642338, 41.862526, 30.480856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.804230, 41.896622, 30.840429>,  <43.287563, 42.401093, 30.753038>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.804230, 41.896622, 30.840429> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.140781, 41.700649, 30.749170>,  <43.342712, 41.583065, 30.694416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.140781, 41.700649, 30.749170>,  <42.804230, 41.896622, 30.840429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.140781, 41.700649, 30.749170> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222022, -0.698220, 0.680584,
		-0.492733, -0.521977, -0.696243,
		0.841380, -0.489927, -0.228146,
		43.393196, 41.553673, 30.680727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.636539, 41.207748, 30.823076>,  <42.804230, 41.896622, 30.840429>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.636539, 41.207748, 30.823076> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.036301, 41.201809, 30.835548>,  <43.276157, 41.198246, 30.843031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.036301, 41.201809, 30.835548>,  <42.636539, 41.207748, 30.823076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.036301, 41.201809, 30.835548> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030501, -0.802819, 0.595441,
		0.016192, -0.596037, -0.802794,
		0.999403, -0.014845, 0.031179,
		43.336121, 41.197357, 30.844902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.905727, 40.561020, 30.607738>,  <42.636539, 41.207748, 30.823076>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.905727, 40.561020, 30.607738> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.156315, 40.731274, 30.868929>,  <43.306667, 40.833424, 31.025642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.156315, 40.731274, 30.868929>,  <42.905727, 40.561020, 30.607738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.156315, 40.731274, 30.868929> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105060, -0.783987, 0.611823,
		0.772336, -0.451888, -0.446424,
		0.626466, 0.425632, 0.652977,
		43.344254, 40.858963, 31.064821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.359287, 39.972569, 30.716105>,  <42.905727, 40.561020, 30.607738>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.359287, 39.972569, 30.716105> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.397331, 40.216026, 31.031193>,  <43.420158, 40.362103, 31.220245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.397331, 40.216026, 31.031193>,  <43.359287, 39.972569, 30.716105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.397331, 40.216026, 31.031193> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099974, -0.781467, 0.615886,
		0.990434, -0.137328, -0.013476,
		0.095110, 0.608647, 0.787720,
		43.425865, 40.398621, 31.267509>
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
