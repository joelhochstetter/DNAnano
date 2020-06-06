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
	<24.466923, 34.711941, 34.896908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.242622, 35.040367, 34.854179>,  <24.108042, 35.237423, 34.828541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.242622, 35.040367, 34.854179>,  <24.466923, 34.711941, 34.896908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.242622, 35.040367, 34.854179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332676, 0.105278, -0.937146,
		-0.758213, -0.561041, -0.332184,
		-0.560749, 0.821066, -0.106822,
		24.074398, 35.286686, 34.822132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.050535, 34.610886, 34.319244>,  <24.466923, 34.711941, 34.896908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.050535, 34.610886, 34.319244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.118673, 35.001183, 34.374245>,  <24.159557, 35.235359, 34.407246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.118673, 35.001183, 34.374245>,  <24.050535, 34.610886, 34.319244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.118673, 35.001183, 34.374245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328275, 0.075378, -0.941570,
		-0.929095, 0.205533, -0.307472,
		0.170347, 0.975743, 0.137504,
		24.169777, 35.293907, 34.415497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.725334, 35.030270, 34.236481>,  <24.050535, 34.610886, 34.319244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.725334, 35.030270, 34.236481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.081127, 35.064045, 34.056843>,  <25.294603, 35.084309, 33.949059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.081127, 35.064045, 34.056843>,  <24.725334, 35.030270, 34.236481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.081127, 35.064045, 34.056843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078996, 0.939571, 0.333116,
		0.450088, -0.331778, 0.829062,
		0.889483, 0.084439, -0.449099,
		25.347973, 35.089378, 33.922112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.228611, 35.437965, 34.641266>,  <24.725334, 35.030270, 34.236481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.228611, 35.437965, 34.641266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.410954, 35.474602, 34.287136>,  <25.520359, 35.496586, 34.074657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.410954, 35.474602, 34.287136>,  <25.228611, 35.437965, 34.641266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.410954, 35.474602, 34.287136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162137, 0.969502, 0.183788,
		0.875161, -0.227325, 0.427101,
		0.455855, 0.091596, -0.885328,
		25.547710, 35.502079, 34.021538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.001070, 35.618130, 34.725952>,  <25.228611, 35.437965, 34.641266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.001070, 35.618130, 34.725952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.802177, 35.789349, 34.424080>,  <25.682842, 35.892078, 34.242958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.802177, 35.789349, 34.424080>,  <26.001070, 35.618130, 34.725952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.802177, 35.789349, 34.424080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182775, 0.901985, 0.391173,
		0.848148, 0.056567, -0.526731,
		-0.497231, 0.428046, -0.754677,
		25.653008, 35.917763, 34.197678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.456535, 36.165108, 34.536324>,  <26.001070, 35.618130, 34.725952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.456535, 36.165108, 34.536324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.084007, 36.245098, 34.414566>,  <25.860491, 36.293091, 34.341511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.084007, 36.245098, 34.414566>,  <26.456535, 36.165108, 34.536324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.084007, 36.245098, 34.414566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115010, 0.954491, 0.275172,
		0.345570, 0.221264, -0.911934,
		-0.931318, 0.199973, -0.304396,
		25.804611, 36.305092, 34.323246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.503223, 36.685040, 34.025661>,  <26.456535, 36.165108, 34.536324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.503223, 36.685040, 34.025661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.132595, 36.708496, 34.174271>,  <25.910219, 36.722569, 34.263435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.132595, 36.708496, 34.174271>,  <26.503223, 36.685040, 34.025661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.132595, 36.708496, 34.174271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155559, 0.959078, 0.236583,
		-0.342448, 0.277004, -0.897774,
		-0.926569, 0.058639, 0.371525,
		25.854624, 36.726089, 34.285728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.195536, 37.241531, 33.669712>,  <26.503223, 36.685040, 34.025661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.195536, 37.241531, 33.669712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.014942, 37.244774, 34.026608>,  <25.906586, 37.246719, 34.240746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.014942, 37.244774, 34.026608>,  <26.195536, 37.241531, 33.669712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.014942, 37.244774, 34.026608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096181, 0.994575, 0.039627,
		-0.887081, 0.103708, -0.449814,
		-0.451483, 0.008111, 0.892243,
		25.879498, 37.247208, 34.294281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.761072, 37.817612, 33.568214>,  <26.195536, 37.241531, 33.669712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.761072, 37.817612, 33.568214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.778721, 37.757156, 33.963226>,  <25.789310, 37.720882, 34.200233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.778721, 37.757156, 33.963226>,  <25.761072, 37.817612, 33.568214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.778721, 37.757156, 33.963226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130226, 0.980926, 0.144314,
		-0.990502, 0.122234, 0.062964,
		0.044123, -0.151143, 0.987527,
		25.791958, 37.711815, 34.259483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.195044, 38.222633, 33.990818>,  <25.761072, 37.817612, 33.568214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.195044, 38.222633, 33.990818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.509127, 38.142170, 34.225079>,  <25.697577, 38.093891, 34.365635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.509127, 38.142170, 34.225079>,  <25.195044, 38.222633, 33.990818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.509127, 38.142170, 34.225079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094118, 0.973548, 0.208198,
		-0.612038, -0.108359, 0.783370,
		0.785208, -0.201154, 0.585649,
		25.744690, 38.081825, 34.400772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.026344, 38.576073, 34.569420>,  <25.195044, 38.222633, 33.990818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.026344, 38.576073, 34.569420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.420362, 38.511108, 34.546421>,  <25.656775, 38.472130, 34.532623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.420362, 38.511108, 34.546421>,  <25.026344, 38.576073, 34.569420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.420362, 38.511108, 34.546421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167794, 0.980081, 0.106241,
		0.039095, -0.114300, 0.992677,
		0.985047, -0.162412, -0.057495,
		25.715876, 38.462383, 34.529171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.439045, 38.909435, 35.132736>,  <25.026344, 38.576073, 34.569420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.439045, 38.909435, 35.132736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.674383, 38.858540, 34.813320>,  <25.815586, 38.828003, 34.621670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.674383, 38.858540, 34.813320>,  <25.439045, 38.909435, 35.132736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.674383, 38.858540, 34.813320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162169, 0.986045, -0.037631,
		0.792183, -0.107358, 0.600767,
		0.588344, -0.127237, -0.798538,
		25.850885, 38.820370, 34.573757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.155880, 39.045719, 35.245647>,  <25.439045, 38.909435, 35.132736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.155880, 39.045719, 35.245647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.021780, 39.137928, 34.880253>,  <25.941320, 39.193253, 34.661015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.021780, 39.137928, 34.880253>,  <26.155880, 39.045719, 35.245647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.021780, 39.137928, 34.880253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295923, 0.946297, 0.130199,
		0.894447, -0.226674, -0.385465,
		-0.335252, 0.230524, -0.913491,
		25.921206, 39.207085, 34.606205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.732691, 39.390823, 34.906635>,  <26.155880, 39.045719, 35.245647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.732691, 39.390823, 34.906635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.398378, 39.516384, 34.726440>,  <26.197790, 39.591721, 34.618324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.398378, 39.516384, 34.726440>,  <26.732691, 39.390823, 34.906635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.398378, 39.516384, 34.726440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319365, 0.945317, 0.066190,
		0.446628, -0.088549, -0.890327,
		-0.835781, 0.313902, -0.450484,
		26.147644, 39.610554, 34.591293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.291233, 39.134594, 34.396008>,  <26.732691, 39.390823, 34.906635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.291233, 39.134594, 34.396008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.610529, 38.894123, 34.381031>,  <27.802107, 38.749840, 34.372044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.610529, 38.894123, 34.381031>,  <27.291233, 39.134594, 34.396008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.610529, 38.894123, 34.381031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579072, 0.783028, -0.227029,
		0.165806, 0.159540, 0.973168,
		0.798238, -0.601177, -0.037446,
		27.850000, 38.713772, 34.369797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.840343, 38.623665, 34.021175>,  <27.291233, 39.134594, 34.396008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.840343, 38.623665, 34.021175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.585266, 38.691341, 34.321766>,  <26.432220, 38.731949, 34.502121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.585266, 38.691341, 34.321766>,  <26.840343, 38.623665, 34.021175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.585266, 38.691341, 34.321766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221117, -0.974728, 0.031819,
		0.737873, -0.145874, 0.658988,
		-0.637692, 0.169191, 0.751480,
		26.393959, 38.742100, 34.547211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.033714, 38.209820, 34.569633>,  <26.840343, 38.623665, 34.021175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.033714, 38.209820, 34.569633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.644764, 38.302746, 34.578674>,  <26.411394, 38.358501, 34.584099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.644764, 38.302746, 34.578674>,  <27.033714, 38.209820, 34.569633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.644764, 38.302746, 34.578674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224283, -0.956759, 0.185228,
		0.064657, 0.175043, 0.982436,
		-0.972377, 0.232320, 0.022602,
		26.353050, 38.372440, 34.585453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.740639, 37.917625, 35.202156>,  <27.033714, 38.209820, 34.569633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.740639, 37.917625, 35.202156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.429071, 37.977436, 34.958542>,  <26.242130, 38.013321, 34.812374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.429071, 37.977436, 34.958542>,  <26.740639, 37.917625, 35.202156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.429071, 37.977436, 34.958542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291905, -0.945986, 0.141077,
		-0.555048, 0.287669, 0.780493,
		-0.778918, 0.149525, -0.609039,
		26.195396, 38.022293, 34.775829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.234966, 37.563396, 35.518543>,  <26.740639, 37.917625, 35.202156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.234966, 37.563396, 35.518543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.068434, 37.620770, 35.159412>,  <25.968513, 37.655193, 34.943935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.068434, 37.620770, 35.159412>,  <26.234966, 37.563396, 35.518543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.068434, 37.620770, 35.159412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341777, -0.939744, 0.008358,
		-0.842530, 0.310336, 0.440267,
		-0.416332, 0.143431, -0.897828,
		25.943535, 37.663799, 34.890064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.525558, 37.338539, 35.510826>,  <26.234966, 37.563396, 35.518543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.525558, 37.338539, 35.510826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.610388, 37.322617, 35.120251>,  <25.661285, 37.313065, 34.885906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.610388, 37.322617, 35.120251>,  <25.525558, 37.338539, 35.510826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.610388, 37.322617, 35.120251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308282, -0.950877, -0.028195,
		-0.927355, 0.306999, -0.213925,
		0.212073, -0.039802, -0.976443,
		25.674009, 37.310677, 34.827316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.140110, 36.780682, 35.379246>,  <25.525558, 37.338539, 35.510826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.140110, 36.780682, 35.379246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.312811, 36.881458, 35.032810>,  <25.416431, 36.941925, 34.824947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.312811, 36.881458, 35.032810>,  <25.140110, 36.780682, 35.379246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.312811, 36.881458, 35.032810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315768, -0.857222, -0.406770,
		-0.844915, 0.449108, -0.290553,
		0.431752, 0.251938, -0.866093,
		25.442337, 36.957039, 34.772984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.626513, 36.682407, 34.722351>,  <25.140110, 36.780682, 35.379246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.626513, 36.682407, 34.722351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.002760, 36.702179, 34.588009>,  <25.228508, 36.714043, 34.507404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.002760, 36.702179, 34.588009>,  <24.626513, 36.682407, 34.722351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.002760, 36.702179, 34.588009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115882, -0.883157, -0.454538,
		-0.319080, 0.466465, -0.824984,
		0.940617, 0.049433, -0.335852,
		25.284945, 36.717010, 34.487251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.646910, 36.734131, 33.947563>,  <24.626513, 36.682407, 34.722351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.646910, 36.734131, 33.947563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.986887, 36.574226, 34.084843>,  <25.190872, 36.478283, 34.167210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.986887, 36.574226, 34.084843>,  <24.646910, 36.734131, 33.947563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.986887, 36.574226, 34.084843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162941, -0.818894, -0.550330,
		0.501047, 0.411828, -0.761150,
		0.849942, -0.399764, 0.343201,
		25.241869, 36.454296, 34.187801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.811115, 36.334660, 33.363503>,  <24.646910, 36.734131, 33.947563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.811115, 36.334660, 33.363503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.008213, 36.227325, 33.694611>,  <25.126471, 36.162926, 33.893276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.008213, 36.227325, 33.694611>,  <24.811115, 36.334660, 33.363503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.008213, 36.227325, 33.694611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047920, -0.941454, -0.333718,
		0.868854, 0.204104, -0.451037,
		0.492743, -0.268339, 0.827767,
		25.156036, 36.146824, 33.942940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.371401, 36.074230, 33.058323>,  <24.811115, 36.334660, 33.363503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.371401, 36.074230, 33.058323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.569788, 35.993179, 33.396069>,  <25.688820, 35.944550, 33.598717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.569788, 35.993179, 33.396069>,  <25.371401, 36.074230, 33.058323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.569788, 35.993179, 33.396069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081064, -0.957341, -0.277356,
		0.864548, 0.206008, -0.458385,
		0.495969, -0.202629, 0.844368,
		25.718578, 35.932392, 33.649380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.076099, 35.776402, 32.885563>,  <25.371401, 36.074230, 33.058323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.076099, 35.776402, 32.885563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.922085, 35.665077, 33.237537>,  <25.829676, 35.598282, 33.448723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.922085, 35.665077, 33.237537>,  <26.076099, 35.776402, 32.885563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.922085, 35.665077, 33.237537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046064, -0.958053, -0.282864,
		0.921751, -0.068379, 0.381705,
		-0.385036, -0.278313, 0.879937,
		25.806574, 35.581585, 33.501518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.459528, 35.276005, 33.246330>,  <26.076099, 35.776402, 32.885563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.459528, 35.276005, 33.246330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.091827, 35.228981, 33.396610>,  <25.871206, 35.200768, 33.486778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.091827, 35.228981, 33.396610>,  <26.459528, 35.276005, 33.246330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.091827, 35.228981, 33.396610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067145, -0.987206, -0.144622,
		0.387898, -0.107718, 0.915386,
		-0.919254, -0.117562, 0.375703,
		25.816051, 35.193714, 33.509319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.481625, 34.870193, 33.842213>,  <26.459528, 35.276005, 33.246330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.481625, 34.870193, 33.842213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.128513, 34.826462, 33.659458>,  <25.916647, 34.800220, 33.549805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.128513, 34.826462, 33.659458>,  <26.481625, 34.870193, 33.842213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.128513, 34.826462, 33.659458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086006, -0.993717, 0.071617,
		-0.461847, 0.023927, 0.886637,
		-0.882780, -0.109332, -0.456887,
		25.863680, 34.793663, 33.522392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.939007, 34.356785, 33.577785>,  <26.481625, 34.870193, 33.842213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.939007, 34.356785, 33.577785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.254808, 34.161140, 33.429489>,  <27.444290, 34.043755, 33.340511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.254808, 34.161140, 33.429489>,  <26.939007, 34.356785, 33.577785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.254808, 34.161140, 33.429489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509467, 0.859123, -0.048500,
		0.342238, -0.150591, 0.927467,
		0.789504, -0.489112, -0.370745,
		27.491659, 34.014408, 33.318264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.485537, 34.446293, 34.070679>,  <26.939007, 34.356785, 33.577785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.485537, 34.446293, 34.070679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.621904, 34.445190, 33.694645>,  <27.703726, 34.444530, 33.469025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.621904, 34.445190, 33.694645>,  <27.485537, 34.446293, 34.070679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.621904, 34.445190, 33.694645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464850, 0.869683, 0.166029,
		0.817122, -0.493603, 0.297771,
		0.340919, -0.002753, -0.940089,
		27.724180, 34.444363, 33.412617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.211147, 34.420635, 34.064598>,  <27.485537, 34.446293, 34.070679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.211147, 34.420635, 34.064598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.995031, 34.600945, 33.780376>,  <27.865362, 34.709129, 33.609844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.995031, 34.600945, 33.780376>,  <28.211147, 34.420635, 34.064598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.995031, 34.600945, 33.780376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340432, 0.889317, 0.305321,
		0.769540, -0.076934, -0.633947,
		-0.540291, 0.450773, -0.710556,
		27.832945, 34.736176, 33.567211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.709814, 34.265583, 33.531406>,  <28.211147, 34.420635, 34.064598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.709814, 34.265583, 33.531406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.952612, 34.046303, 33.761547>,  <29.098291, 33.914734, 33.899632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.952612, 34.046303, 33.761547>,  <28.709814, 34.265583, 33.531406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.952612, 34.046303, 33.761547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734364, 0.663643, -0.142430,
		-0.303751, 0.508975, 0.805407,
		0.606996, -0.548199, 0.575355,
		29.134710, 33.881844, 33.934155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.913315, 34.749184, 34.009968>,  <28.709814, 34.265583, 33.531406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.913315, 34.749184, 34.009968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.177544, 34.448891, 34.012501>,  <29.336081, 34.268715, 34.014023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.177544, 34.448891, 34.012501>,  <28.913315, 34.749184, 34.009968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.177544, 34.448891, 34.012501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749021, 0.658446, -0.073600,
		0.051082, 0.053365, 0.997268,
		0.660574, -0.750734, 0.006336,
		29.375715, 34.223671, 34.014400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.440861, 34.936249, 34.495907>,  <28.913315, 34.749184, 34.009968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.440861, 34.936249, 34.495907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.612665, 34.649040, 34.276829>,  <29.715748, 34.476715, 34.145382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.612665, 34.649040, 34.276829>,  <29.440861, 34.936249, 34.495907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.612665, 34.649040, 34.276829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802609, 0.581505, -0.132933,
		0.413933, -0.382486, 0.826053,
		0.429509, -0.718023, -0.547691,
		29.741518, 34.433632, 34.112522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.092049, 34.860432, 34.710953>,  <29.440861, 34.936249, 34.495907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.092049, 34.860432, 34.710953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.071663, 34.714806, 34.338963>,  <30.059431, 34.627430, 34.115768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.071663, 34.714806, 34.338963>,  <30.092049, 34.860432, 34.710953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.071663, 34.714806, 34.338963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906958, 0.372992, -0.195719,
		0.418128, -0.853425, 0.311182,
		-0.050963, -0.364065, -0.929978,
		30.056374, 34.605587, 34.059971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.320826, 34.331196, 35.033386>,  <30.092049, 34.860432, 34.710953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.320826, 34.331196, 35.033386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.296167, 34.098335, 34.709091>,  <30.281372, 33.958618, 34.514515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.296167, 34.098335, 34.709091>,  <30.320826, 34.331196, 35.033386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.296167, 34.098335, 34.709091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669234, 0.578526, -0.466298,
		0.740490, -0.571319, 0.353933,
		-0.061645, -0.582153, -0.810739,
		30.277674, 33.923691, 34.465870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.927212, 33.825737, 34.765816>,  <30.320826, 34.331196, 35.033386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.927212, 33.825737, 34.765816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.717333, 33.972561, 34.458580>,  <30.591406, 34.060654, 34.274239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.717333, 33.972561, 34.458580>,  <30.927212, 33.825737, 34.765816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.717333, 33.972561, 34.458580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826880, 0.434261, -0.357335,
		0.202388, -0.822609, -0.531370,
		-0.524699, 0.367058, -0.768088,
		30.559923, 34.082680, 34.228153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.416370, 33.972908, 34.337349>,  <30.927212, 33.825737, 34.765816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.416370, 33.972908, 34.337349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.114267, 34.170086, 34.164566>,  <30.933004, 34.288391, 34.060898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.114267, 34.170086, 34.164566>,  <31.416370, 33.972908, 34.337349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.114267, 34.170086, 34.164566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616659, 0.757729, -0.213490,
		0.222068, -0.427612, -0.876262,
		-0.755260, 0.492945, -0.431958,
		30.887690, 34.317970, 34.034977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.549114, 34.057056, 33.570431>,  <31.416370, 33.972908, 34.337349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.549114, 34.057056, 33.570431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.306440, 34.341900, 33.711754>,  <31.160835, 34.512806, 33.796547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.306440, 34.341900, 33.711754>,  <31.549114, 34.057056, 33.570431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.306440, 34.341900, 33.711754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649351, 0.700315, -0.296484,
		-0.458558, 0.049549, -0.887282,
		-0.606686, 0.712112, 0.353309,
		31.124434, 34.555534, 33.817745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.380314, 34.472065, 32.947441>,  <31.549114, 34.057056, 33.570431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.380314, 34.472065, 32.947441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.376257, 34.633461, 33.313412>,  <31.373823, 34.730297, 33.532993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.376257, 34.633461, 33.313412>,  <31.380314, 34.472065, 32.947441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.376257, 34.633461, 33.313412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693023, 0.662425, -0.284450,
		-0.720844, 0.631181, -0.286348,
		-0.010144, 0.403490, 0.914928,
		31.373213, 34.754509, 33.587891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.285591, 35.221821, 32.925335>,  <31.380314, 34.472065, 32.947441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.285591, 35.221821, 32.925335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.464407, 35.151970, 33.276257>,  <31.571695, 35.110058, 33.486809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.464407, 35.151970, 33.276257>,  <31.285591, 35.221821, 32.925335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.464407, 35.151970, 33.276257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636282, 0.751427, -0.174648,
		-0.628730, 0.636287, 0.447032,
		0.447038, -0.174632, 0.877303,
		31.598518, 35.099579, 33.539448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.211641, 35.799965, 33.369022>,  <31.285591, 35.221821, 32.925335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.211641, 35.799965, 33.369022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.559912, 35.613716, 33.432423>,  <31.768873, 35.501968, 33.470463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.559912, 35.613716, 33.432423>,  <31.211641, 35.799965, 33.369022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.559912, 35.613716, 33.432423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491317, 0.808181, -0.324732,
		0.023102, 0.360612, 0.932430,
		0.870674, -0.465621, 0.158504,
		31.821114, 35.474030, 33.479973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.846956, 35.592854, 33.954792>,  <31.211641, 35.799965, 33.369022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.846956, 35.592854, 33.954792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.940870, 35.303558, 33.695007>,  <30.997219, 35.129982, 33.539135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.940870, 35.303558, 33.695007>,  <30.846956, 35.592854, 33.954792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.940870, 35.303558, 33.695007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616010, -0.627550, 0.476143,
		-0.751936, 0.288288, -0.592859,
		0.234783, -0.723237, -0.649466,
		31.011305, 35.086586, 33.500168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.201044, 35.399544, 33.700863>,  <30.846956, 35.592854, 33.954792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.201044, 35.399544, 33.700863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.486130, 35.123386, 33.651222>,  <30.657181, 34.957691, 33.621437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.486130, 35.123386, 33.651222>,  <30.201044, 35.399544, 33.700863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.486130, 35.123386, 33.651222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641469, -0.713071, 0.282927,
		-0.283824, -0.122037, -0.951079,
		0.712714, -0.690388, -0.124104,
		30.699944, 34.916271, 33.613991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.104450, 34.901482, 33.231045>,  <30.201044, 35.399544, 33.700863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.104450, 34.901482, 33.231045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.352144, 34.698849, 33.471020>,  <30.500761, 34.577271, 33.615005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.352144, 34.698849, 33.471020>,  <30.104450, 34.901482, 33.231045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.352144, 34.698849, 33.471020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685200, -0.721761, 0.097791,
		0.383472, -0.471633, -0.794047,
		0.619234, -0.506581, 0.599938,
		30.537914, 34.546875, 33.651001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.039953, 34.168568, 33.079517>,  <30.104450, 34.901482, 33.231045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.039953, 34.168568, 33.079517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.166832, 34.207943, 33.456814>,  <30.242960, 34.231567, 33.683189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.166832, 34.207943, 33.456814>,  <30.039953, 34.168568, 33.079517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.166832, 34.207943, 33.456814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739230, -0.597376, 0.310935,
		0.594075, -0.795897, -0.116717,
		0.317196, 0.098438, 0.943237,
		30.261992, 34.237473, 33.739784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.207354, 33.485359, 33.361774>,  <30.039953, 34.168568, 33.079517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.207354, 33.485359, 33.361774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.097748, 33.766758, 33.624073>,  <30.031984, 33.935596, 33.781452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.097748, 33.766758, 33.624073>,  <30.207354, 33.485359, 33.361774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.097748, 33.766758, 33.624073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740086, -0.589672, 0.323356,
		0.614157, -0.396706, 0.682228,
		-0.274014, 0.703499, 0.655748,
		30.015543, 33.977806, 33.820797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.158493, 33.176716, 34.007698>,  <30.207354, 33.485359, 33.361774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.158493, 33.176716, 34.007698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.921206, 33.497475, 33.979256>,  <29.778833, 33.689930, 33.962189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.921206, 33.497475, 33.979256>,  <30.158493, 33.176716, 34.007698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.921206, 33.497475, 33.979256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767755, -0.536959, 0.349609,
		0.242167, 0.261989, 0.934193,
		-0.593217, 0.801895, -0.071110,
		29.743240, 33.738045, 33.957924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.916285, 33.182838, 34.629841>,  <30.158493, 33.176716, 34.007698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.916285, 33.182838, 34.629841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.667740, 33.391121, 34.395653>,  <29.518614, 33.516090, 34.255138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.667740, 33.391121, 34.395653>,  <29.916285, 33.182838, 34.629841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.667740, 33.391121, 34.395653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768927, -0.548809, 0.327962,
		-0.150541, 0.653968, 0.741393,
		-0.621360, 0.520706, -0.585472,
		29.481333, 33.547333, 34.220013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.255175, 33.073826, 34.304783>,  <29.916285, 33.182838, 34.629841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.255175, 33.073826, 34.304783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.266108, 32.754917, 34.545986>,  <29.272667, 32.563572, 34.690708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.266108, 32.754917, 34.545986>,  <29.255175, 33.073826, 34.304783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.266108, 32.754917, 34.545986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883879, -0.301039, -0.357956,
		0.466915, -0.523201, -0.712917,
		0.027333, -0.797268, 0.603007,
		29.274307, 32.515736, 34.726887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.381197, 32.361809, 34.004692>,  <29.255175, 33.073826, 34.304783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.381197, 32.361809, 34.004692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.157820, 32.343372, 34.335995>,  <29.023794, 32.332310, 34.534779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.157820, 32.343372, 34.335995>,  <29.381197, 32.361809, 34.004692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.157820, 32.343372, 34.335995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701249, -0.507167, -0.501031,
		0.443160, -0.860614, 0.250903,
		-0.558444, -0.046092, 0.828261,
		28.990286, 32.329544, 34.584473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.783665, 32.145920, 33.636341>,  <29.381197, 32.361809, 34.004692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.783665, 32.145920, 33.636341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.747705, 32.095131, 34.031471>,  <28.726130, 32.064659, 34.268547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.747705, 32.095131, 34.031471>,  <28.783665, 32.145920, 33.636341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.747705, 32.095131, 34.031471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772601, -0.617010, -0.149622,
		0.628495, -0.776645, -0.042630,
		-0.089900, -0.126973, 0.987824,
		28.720736, 32.057037, 34.327820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.996958, 31.445211, 33.897655>,  <28.783665, 32.145920, 33.636341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.996958, 31.445211, 33.897655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.715269, 31.636158, 34.107872>,  <28.546255, 31.750725, 34.234001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.715269, 31.636158, 34.107872>,  <28.996958, 31.445211, 33.897655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.715269, 31.636158, 34.107872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571116, -0.820628, -0.019892,
		0.421779, -0.314153, 0.850535,
		-0.704222, 0.477364, 0.525542,
		28.504002, 31.779367, 34.265533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.963959, 31.068985, 34.547005>,  <28.996958, 31.445211, 33.897655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.963959, 31.068985, 34.547005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.667614, 31.241634, 34.341160>,  <28.489807, 31.345224, 34.217651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.667614, 31.241634, 34.341160>,  <28.963959, 31.068985, 34.547005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.667614, 31.241634, 34.341160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397953, -0.899300, -0.181365,
		-0.541072, 0.070424, 0.838022,
		-0.740861, 0.431625, -0.514612,
		28.445356, 31.371122, 34.186775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.270864, 31.431797, 35.215649>,  <28.963959, 31.068985, 34.547005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.270864, 31.431797, 35.215649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.528542, 31.226927, 35.442875>,  <29.683147, 31.104006, 35.579208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.528542, 31.226927, 35.442875>,  <29.270864, 31.431797, 35.215649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.528542, 31.226927, 35.442875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571636, 0.171062, 0.802478,
		-0.508182, -0.841674, -0.182580,
		0.644192, -0.512174, 0.568062,
		29.721800, 31.073275, 35.613293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.839266, 31.145533, 35.634178>,  <29.270864, 31.431797, 35.215649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.839266, 31.145533, 35.634178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.186319, 31.112478, 35.830296>,  <29.394550, 31.092646, 35.947968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.186319, 31.112478, 35.830296>,  <28.839266, 31.145533, 35.634178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.186319, 31.112478, 35.830296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439905, 0.331998, 0.834422,
		-0.231730, -0.939653, 0.251699,
		0.867632, -0.082637, 0.490292,
		29.446609, 31.087687, 35.977383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.700893, 30.720875, 36.291382>,  <28.839266, 31.145533, 35.634178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.700893, 30.720875, 36.291382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.045898, 30.914066, 36.351784>,  <29.252901, 31.029982, 36.388027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.045898, 30.914066, 36.351784>,  <28.700893, 30.720875, 36.291382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.045898, 30.914066, 36.351784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325108, 0.300198, 0.896764,
		0.387789, -0.822563, 0.415945,
		0.862511, 0.482982, 0.151008,
		29.304651, 31.058960, 36.397087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.998476, 30.436310, 36.915787>,  <28.700893, 30.720875, 36.291382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.998476, 30.436310, 36.915787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.120932, 30.805559, 36.822727>,  <29.194405, 31.027109, 36.766891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.120932, 30.805559, 36.822727>,  <28.998476, 30.436310, 36.915787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.120932, 30.805559, 36.822727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235124, 0.310132, 0.921160,
		0.922494, -0.227301, 0.311991,
		0.306139, 0.923121, -0.232651,
		29.212772, 31.082495, 36.752934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.574072, 30.593969, 37.390656>,  <28.998476, 30.436310, 36.915787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.574072, 30.593969, 37.390656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.384476, 30.920322, 37.258186>,  <29.270718, 31.116135, 37.178707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.384476, 30.920322, 37.258186>,  <29.574072, 30.593969, 37.390656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.384476, 30.920322, 37.258186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153691, 0.293671, 0.943470,
		0.867015, 0.498091, -0.013803,
		-0.473988, 0.815881, -0.331169,
		29.242279, 31.165087, 37.158836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.901516, 31.279036, 37.655056>,  <29.574072, 30.593969, 37.390656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.901516, 31.279036, 37.655056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.510948, 31.306643, 37.573238>,  <29.276608, 31.323208, 37.524147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.510948, 31.306643, 37.573238>,  <29.901516, 31.279036, 37.655056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.510948, 31.306643, 37.573238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143840, 0.498547, 0.854846,
		0.160978, 0.864111, -0.476864,
		-0.976420, 0.069019, -0.204549,
		29.218021, 31.327349, 37.511875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.670820, 31.972059, 37.706055>,  <29.901516, 31.279036, 37.655056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.670820, 31.972059, 37.706055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.365639, 31.723547, 37.777515>,  <29.182529, 31.574440, 37.820393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.365639, 31.723547, 37.777515>,  <29.670820, 31.972059, 37.706055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.365639, 31.723547, 37.777515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024797, 0.304274, 0.952262,
		-0.645978, 0.722101, -0.247553,
		-0.762953, -0.621279, 0.178648,
		29.136753, 31.537163, 37.831108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.312410, 32.319450, 37.092545>,  <29.670820, 31.972059, 37.706055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.312410, 32.319450, 37.092545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.362383, 31.923927, 37.125179>,  <29.392366, 31.686615, 37.144760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.362383, 31.923927, 37.125179>,  <29.312410, 32.319450, 37.092545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.362383, 31.923927, 37.125179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265801, -0.045873, -0.962936,
		0.955899, 0.141986, 0.257095,
		0.124929, -0.988805, 0.081590,
		29.399862, 31.627285, 37.149658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.835836, 32.141270, 36.533749>,  <29.312410, 32.319450, 37.092545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.835836, 32.141270, 36.533749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.692183, 31.786922, 36.651226>,  <29.605989, 31.574314, 36.721714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.692183, 31.786922, 36.651226>,  <29.835836, 32.141270, 36.533749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.692183, 31.786922, 36.651226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261972, -0.397728, -0.879309,
		0.895764, -0.238850, 0.374910,
		-0.359135, -0.885869, 0.293698,
		29.584442, 31.521162, 36.739334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.396721, 31.748352, 36.596333>,  <29.835836, 32.141270, 36.533749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.396721, 31.748352, 36.596333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.066917, 31.530449, 36.535110>,  <29.869036, 31.399708, 36.498379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.066917, 31.530449, 36.535110>,  <30.396721, 31.748352, 36.596333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.066917, 31.530449, 36.535110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407518, -0.384014, -0.828531,
		0.392573, -0.745503, 0.538621,
		-0.824510, -0.544756, -0.153052,
		29.819565, 31.367022, 36.489193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.613987, 31.055195, 36.539333>,  <30.396721, 31.748352, 36.596333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.613987, 31.055195, 36.539333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.251226, 31.071852, 36.371624>,  <30.033569, 31.081846, 36.270996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.251226, 31.071852, 36.371624>,  <30.613987, 31.055195, 36.539333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.251226, 31.071852, 36.371624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341110, -0.511571, -0.788631,
		-0.247330, -0.858231, 0.449741,
		-0.906902, 0.041641, -0.419278,
		29.979156, 31.084345, 36.245842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.489979, 30.312666, 36.285641>,  <30.613987, 31.055195, 36.539333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.489979, 30.312666, 36.285641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.242826, 30.549332, 36.078506>,  <30.094536, 30.691332, 35.954224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.242826, 30.549332, 36.078506>,  <30.489979, 30.312666, 36.285641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.242826, 30.549332, 36.078506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243898, -0.481889, -0.841604,
		-0.747489, -0.646309, 0.153443,
		-0.617879, 0.591665, -0.517840,
		30.057463, 30.726831, 35.923153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.024826, 29.909807, 35.845974>,  <30.489979, 30.312666, 36.285641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.024826, 29.909807, 35.845974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.023758, 30.272837, 35.678020>,  <30.023117, 30.490654, 35.577248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.023758, 30.272837, 35.678020>,  <30.024826, 29.909807, 35.845974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.023758, 30.272837, 35.678020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223102, -0.408765, -0.884950,
		-0.974791, -0.096041, -0.201390,
		-0.002670, 0.907572, -0.419888,
		30.022957, 30.545109, 35.552055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.477879, 29.960375, 35.339737>,  <30.024826, 29.909807, 35.845974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.477879, 29.960375, 35.339737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.786961, 30.197405, 35.248714>,  <29.972410, 30.339622, 35.194099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.786961, 30.197405, 35.248714>,  <29.477879, 29.960375, 35.339737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.786961, 30.197405, 35.248714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179886, -0.548217, -0.816761,
		-0.608745, 0.590179, -0.530205,
		0.772703, 0.592576, -0.227560,
		30.018772, 30.375177, 35.180447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.468433, 30.042109, 34.610706>,  <29.477879, 29.960375, 35.339737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.468433, 30.042109, 34.610706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.838850, 30.162567, 34.701706>,  <30.061100, 30.234842, 34.756306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.838850, 30.162567, 34.701706>,  <29.468433, 30.042109, 34.610706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.838850, 30.162567, 34.701706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361289, -0.532978, -0.765118,
		-0.109158, 0.790725, -0.602361,
		0.926043, 0.301145, 0.227502,
		30.116663, 30.252911, 34.769955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.885530, 30.016003, 33.928921>,  <29.468433, 30.042109, 34.610706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.885530, 30.016003, 33.928921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.191389, 30.077366, 34.179291>,  <30.374905, 30.114183, 34.329514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.191389, 30.077366, 34.179291>,  <29.885530, 30.016003, 33.928921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.191389, 30.077366, 34.179291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637967, -0.317597, -0.701520,
		0.091174, 0.935734, -0.340717,
		0.764648, 0.153406, 0.625924,
		30.420784, 30.123388, 34.367069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.417051, 30.209162, 33.587921>,  <29.885530, 30.016003, 33.928921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.417051, 30.209162, 33.587921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.640648, 30.116171, 33.906288>,  <30.774805, 30.060377, 34.097309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.640648, 30.116171, 33.906288>,  <30.417051, 30.209162, 33.587921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.640648, 30.116171, 33.906288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800782, -0.097684, -0.590937,
		0.215127, 0.967684, 0.131558,
		0.558989, -0.232475, 0.795919,
		30.808344, 30.046429, 34.145065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.972919, 30.723688, 33.729824>,  <30.417051, 30.209162, 33.587921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.972919, 30.723688, 33.729824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.060740, 30.355749, 33.859856>,  <31.113432, 30.134985, 33.937874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.060740, 30.355749, 33.859856>,  <30.972919, 30.723688, 33.729824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.060740, 30.355749, 33.859856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708444, -0.078771, -0.701358,
		0.670750, 0.384282, 0.634367,
		0.219549, -0.919849, 0.325078,
		31.126604, 30.079794, 33.957378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.482412, 30.664761, 33.390137>,  <30.972919, 30.723688, 33.729824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.482412, 30.664761, 33.390137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.460140, 30.286924, 33.519535>,  <31.446777, 30.060223, 33.597176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.460140, 30.286924, 33.519535>,  <31.482412, 30.664761, 33.390137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.460140, 30.286924, 33.519535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654187, -0.279281, -0.702881,
		0.754281, 0.172490, 0.633489,
		-0.055681, -0.944589, 0.323497,
		31.443436, 30.003548, 33.616585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.155949, 30.468100, 33.383728>,  <31.482412, 30.664761, 33.390137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.155949, 30.468100, 33.383728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.904593, 30.157080, 33.374405>,  <31.753778, 29.970469, 33.368809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.904593, 30.157080, 33.374405>,  <32.155949, 30.468100, 33.383728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.904593, 30.157080, 33.374405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386724, -0.286256, -0.876642,
		0.674959, -0.559889, 0.480578,
		-0.628391, -0.777548, -0.023312,
		31.716076, 29.923815, 33.367413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.615280, 30.006872, 33.307346>,  <32.155949, 30.468100, 33.383728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.615280, 30.006872, 33.307346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.275970, 29.842712, 33.173477>,  <32.072384, 29.744217, 33.093155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.275970, 29.842712, 33.173477>,  <32.615280, 30.006872, 33.307346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.275970, 29.842712, 33.173477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518776, -0.517109, -0.680787,
		0.106334, -0.751112, 0.651555,
		-0.848272, -0.410402, -0.334673,
		32.021488, 29.719591, 33.073074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.765316, 29.291004, 33.183361>,  <32.615280, 30.006872, 33.307346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.765316, 29.291004, 33.183361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.442268, 29.361643, 32.958302>,  <32.248440, 29.404026, 32.823265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.442268, 29.361643, 32.958302>,  <32.765316, 29.291004, 33.183361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.442268, 29.361643, 32.958302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378681, -0.576100, -0.724369,
		-0.452059, -0.798075, 0.398395,
		-0.807616, 0.176593, -0.562647,
		32.199986, 29.414621, 32.789509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.531143, 28.691893, 33.031918>,  <32.765316, 29.291004, 33.183361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.531143, 28.691893, 33.031918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.366940, 28.927946, 32.753860>,  <32.268417, 29.069578, 32.587025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.366940, 28.927946, 32.753860>,  <32.531143, 28.691893, 33.031918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.366940, 28.927946, 32.753860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274843, -0.646807, -0.711408,
		-0.869448, -0.483097, 0.103329,
		-0.410513, 0.590133, -0.695142,
		32.243786, 29.104986, 32.545319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.237091, 28.186134, 32.486279>,  <32.531143, 28.691893, 33.031918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.237091, 28.186134, 32.486279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.209362, 28.543358, 32.308453>,  <32.192726, 28.757692, 32.201756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.209362, 28.543358, 32.308453>,  <32.237091, 28.186134, 32.486279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.209362, 28.543358, 32.308453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204462, -0.423461, -0.882539,
		-0.976417, -0.152074, -0.153242,
		-0.069319, 0.893059, -0.444568,
		32.188568, 28.811275, 32.175083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.921394, 28.015144, 31.848108>,  <32.237091, 28.186134, 32.486279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.921394, 28.015144, 31.848108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.133808, 28.350969, 31.802256>,  <32.261257, 28.552464, 31.774744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.133808, 28.350969, 31.802256>,  <31.921394, 28.015144, 31.848108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.133808, 28.350969, 31.802256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282545, -0.302985, -0.910147,
		-0.798856, 0.450931, -0.398109,
		0.531035, 0.839560, -0.114633,
		32.293118, 28.602837, 31.767866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.617270, 28.300390, 31.262611>,  <31.921394, 28.015144, 31.848108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.617270, 28.300390, 31.262611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.980326, 28.466824, 31.284754>,  <32.198158, 28.566685, 31.298040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.980326, 28.466824, 31.284754>,  <31.617270, 28.300390, 31.262611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.980326, 28.466824, 31.284754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219402, -0.357845, -0.907639,
		-0.357845, 0.835955, -0.416084,
		0.907639, 0.416084, 0.055357,
		32.252617, 28.591648, 31.301361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.662775, 28.764561, 30.674215>,  <31.617270, 28.300390, 31.262611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.662775, 28.764561, 30.674215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.039124, 28.689161, 30.786806>,  <32.264935, 28.643923, 30.854361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.039124, 28.689161, 30.786806>,  <31.662775, 28.764561, 30.674215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.039124, 28.689161, 30.786806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240276, -0.214407, -0.946730,
		0.238807, 0.958383, -0.156438,
		0.940871, -0.188497, 0.281478,
		32.321384, 28.632612, 30.871250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.055309, 29.171913, 30.280405>,  <31.662775, 28.764561, 30.674215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.055309, 29.171913, 30.280405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.296993, 28.887352, 30.423983>,  <32.442001, 28.716616, 30.510130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.296993, 28.887352, 30.423983>,  <32.055309, 29.171913, 30.280405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.296993, 28.887352, 30.423983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336528, -0.180500, -0.924213,
		0.722278, 0.679209, 0.130348,
		0.604205, -0.711404, 0.358944,
		32.478256, 28.673931, 30.531666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.774273, 29.374163, 29.827326>,  <32.055309, 29.171913, 30.280405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.774273, 29.374163, 29.827326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.780022, 29.005695, 29.982885>,  <32.783470, 28.784615, 30.076221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.780022, 29.005695, 29.982885>,  <32.774273, 29.374163, 29.827326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.780022, 29.005695, 29.982885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250069, -0.373266, -0.893386,
		0.968121, 0.110095, 0.224990,
		0.014376, -0.921169, 0.388898,
		32.784336, 28.729345, 30.099554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.408154, 29.139351, 29.627161>,  <32.774273, 29.374163, 29.827326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.408154, 29.139351, 29.627161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.179745, 28.821621, 29.710085>,  <33.042698, 28.630983, 29.759840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.179745, 28.821621, 29.710085>,  <33.408154, 29.139351, 29.627161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.179745, 28.821621, 29.710085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131288, -0.337642, -0.932073,
		0.810367, -0.505018, 0.297087,
		-0.571023, -0.794326, 0.207311,
		33.008438, 28.583323, 29.772278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.761543, 28.599466, 29.315903>,  <33.408154, 29.139351, 29.627161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.761543, 28.599466, 29.315903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.387318, 28.465748, 29.361456>,  <33.162781, 28.385517, 29.388788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.387318, 28.465748, 29.361456>,  <33.761543, 28.599466, 29.315903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.387318, 28.465748, 29.361456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049030, -0.442297, -0.895527,
		0.349740, -0.832238, 0.430187,
		-0.935563, -0.334294, 0.113885,
		33.106647, 28.365459, 29.395620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.810215, 27.917706, 29.103786>,  <33.761543, 28.599466, 29.315903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.810215, 27.917706, 29.103786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.424629, 28.016331, 29.063835>,  <33.193279, 28.075506, 29.039864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.424629, 28.016331, 29.063835>,  <33.810215, 27.917706, 29.103786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.424629, 28.016331, 29.063835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012091, -0.415668, -0.909436,
		-0.265751, -0.875458, 0.403671,
		-0.963966, 0.246564, -0.099879,
		33.135441, 28.090300, 29.033871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.495472, 27.394152, 28.736095>,  <33.810215, 27.917706, 29.103786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.495472, 27.394152, 28.736095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.207558, 27.669907, 28.703470>,  <33.034809, 27.835360, 28.683895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.207558, 27.669907, 28.703470>,  <33.495472, 27.394152, 28.736095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.207558, 27.669907, 28.703470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286030, -0.401581, -0.870011,
		-0.632528, -0.602893, 0.486238,
		-0.719788, 0.689386, -0.081565,
		32.991623, 27.876722, 28.679001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.830791, 27.048199, 28.498270>,  <33.495472, 27.394152, 28.736095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.830791, 27.048199, 28.498270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.808121, 27.433426, 28.392977>,  <32.794518, 27.664562, 28.329802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.808121, 27.433426, 28.392977>,  <32.830791, 27.048199, 28.498270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.808121, 27.433426, 28.392977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250725, -0.268938, -0.929951,
		-0.966398, 0.013292, 0.256707,
		-0.056677, 0.963065, -0.263234,
		32.791119, 27.722345, 28.314007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.220810, 27.168304, 28.014301>,  <32.830791, 27.048199, 28.498270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.220810, 27.168304, 28.014301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.457375, 27.482893, 27.943081>,  <32.599312, 27.671646, 27.900349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.457375, 27.482893, 27.943081>,  <32.220810, 27.168304, 28.014301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.457375, 27.482893, 27.943081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151692, -0.108357, -0.982471,
		-0.791976, 0.608050, 0.055218,
		0.591408, 0.786469, -0.178052,
		32.634796, 27.718834, 27.889666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.898798, 27.588409, 27.498039>,  <32.220810, 27.168304, 28.014301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.898798, 27.588409, 27.498039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.281620, 27.704361, 27.499651>,  <32.511314, 27.773932, 27.500618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.281620, 27.704361, 27.499651>,  <31.898798, 27.588409, 27.498039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.281620, 27.704361, 27.499651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022846, -0.061557, -0.997842,
		-0.289004, 0.955082, -0.065535,
		0.957055, 0.289878, 0.004029,
		32.568737, 27.791325, 27.500860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.924820, 28.039976, 27.046894>,  <31.898798, 27.588409, 27.498039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.924820, 28.039976, 27.046894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.302059, 27.907757, 27.061319>,  <32.528404, 27.828426, 27.069975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.302059, 27.907757, 27.061319>,  <31.924820, 28.039976, 27.046894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.302059, 27.907757, 27.061319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047751, 0.027303, -0.998486,
		0.329061, 0.943395, 0.041534,
		0.943101, -0.330546, 0.036064,
		32.584988, 27.808594, 27.072138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.056805, 28.149487, 26.334768>,  <31.924820, 28.039976, 27.046894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.056805, 28.149487, 26.334768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.376659, 27.967781, 26.491852>,  <32.568573, 27.858759, 26.586102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.376659, 27.967781, 26.491852>,  <32.056805, 28.149487, 26.334768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.376659, 27.967781, 26.491852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439165, -0.003596, -0.898399,
		0.409521, 0.890860, 0.196621,
		0.799641, -0.454263, 0.392708,
		32.616550, 27.831503, 26.609665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.697792, 28.449070, 26.082319>,  <32.056805, 28.149487, 26.334768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.697792, 28.449070, 26.082319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.820457, 28.091877, 26.214102>,  <32.894054, 27.877562, 26.293171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.820457, 28.091877, 26.214102>,  <32.697792, 28.449070, 26.082319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.820457, 28.091877, 26.214102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572084, -0.103715, -0.813611,
		0.760710, 0.437979, 0.479056,
		0.306659, -0.892983, 0.329458,
		32.912457, 27.823982, 26.312939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.395294, 28.446171, 26.211029>,  <32.697792, 28.449070, 26.082319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.395294, 28.446171, 26.211029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.259186, 28.086075, 26.102373>,  <33.177521, 27.870018, 26.037180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.259186, 28.086075, 26.102373>,  <33.395294, 28.446171, 26.211029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.259186, 28.086075, 26.102373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449475, 0.098023, -0.887899,
		0.825947, -0.424220, 0.371280,
		-0.340270, -0.900238, -0.271638,
		33.157104, 27.816004, 26.020882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.947857, 28.058687, 25.944269>,  <33.395294, 28.446171, 26.211029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.947857, 28.058687, 25.944269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.625114, 27.870424, 25.801458>,  <33.431469, 27.757467, 25.715773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.625114, 27.870424, 25.801458>,  <33.947857, 28.058687, 25.944269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.625114, 27.870424, 25.801458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355102, 0.096583, -0.929825,
		0.472110, -0.877015, 0.089202,
		-0.806855, -0.470655, -0.357028,
		33.383057, 27.729227, 25.694349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.216965, 27.872799, 25.339365>,  <33.947857, 28.058687, 25.944269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.216965, 27.872799, 25.339365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.822491, 27.817932, 25.302229>,  <33.585804, 27.785011, 25.279947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.822491, 27.817932, 25.302229>,  <34.216965, 27.872799, 25.339365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.822491, 27.817932, 25.302229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069107, 0.168640, -0.983252,
		0.150517, -0.976088, -0.156832,
		-0.986189, -0.137158, -0.092838,
		33.526634, 27.776783, 25.274378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.161160, 27.234734, 24.940903>,  <34.216965, 27.872799, 25.339365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.161160, 27.234734, 24.940903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.832211, 27.459465, 24.905012>,  <33.634842, 27.594303, 24.883478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.832211, 27.459465, 24.905012>,  <34.161160, 27.234734, 24.940903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.832211, 27.459465, 24.905012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136459, 0.041676, -0.989769,
		-0.552339, -0.826205, -0.110939,
		-0.822375, 0.561826, -0.089724,
		33.585499, 27.628014, 24.878096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.931553, 26.978792, 24.356215>,  <34.161160, 27.234734, 24.940903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.931553, 26.978792, 24.356215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.756866, 27.334507, 24.410545>,  <33.652054, 27.547935, 24.443144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.756866, 27.334507, 24.410545>,  <33.931553, 26.978792, 24.356215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.756866, 27.334507, 24.410545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141591, 0.217051, -0.965837,
		-0.888386, -0.402566, -0.220705,
		-0.436718, 0.889286, 0.135825,
		33.625851, 27.601294, 24.451292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.512440, 26.982838, 23.786030>,  <33.931553, 26.978792, 24.356215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.512440, 26.982838, 23.786030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.553917, 27.368217, 23.884832>,  <33.578804, 27.599445, 23.944115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.553917, 27.368217, 23.884832>,  <33.512440, 26.982838, 23.786030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.553917, 27.368217, 23.884832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226027, 0.219023, -0.949179,
		-0.968586, 0.154253, -0.195055,
		0.103692, 0.963450, 0.247008,
		33.585026, 27.657253, 23.958935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.142448, 27.315363, 23.345608>,  <33.512440, 26.982838, 23.786030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.142448, 27.315363, 23.345608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.401321, 27.595049, 23.467098>,  <33.556644, 27.762861, 23.539993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.401321, 27.595049, 23.467098>,  <33.142448, 27.315363, 23.345608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.401321, 27.595049, 23.467098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206639, 0.222599, -0.952759,
		-0.733795, 0.679371, -0.000423,
		0.647183, 0.699217, 0.303727,
		33.595478, 27.804813, 23.558216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.027023, 28.003828, 22.952856>,  <33.142448, 27.315363, 23.345608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.027023, 28.003828, 22.952856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.398396, 27.999846, 23.101410>,  <33.621220, 27.997456, 23.190542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.398396, 27.999846, 23.101410>,  <33.027023, 28.003828, 22.952856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.398396, 27.999846, 23.101410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364610, 0.216296, -0.905691,
		-0.071310, 0.976277, 0.204446,
		0.928426, -0.009958, 0.371384,
		33.676922, 27.996859, 23.212826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.429371, 28.534653, 22.453190>,  <33.027023, 28.003828, 22.952856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.429371, 28.534653, 22.453190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.717312, 28.346401, 22.657274>,  <33.890076, 28.233450, 22.779724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.717312, 28.346401, 22.657274>,  <33.429371, 28.534653, 22.453190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.717312, 28.346401, 22.657274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609487, 0.076824, -0.789065,
		0.332162, 0.878980, 0.342145,
		0.719857, -0.470630, 0.510209,
		33.933270, 28.205212, 22.810337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.058178, 28.985647, 22.514826>,  <33.429371, 28.534653, 22.453190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.058178, 28.985647, 22.514826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.149353, 28.596905, 22.538639>,  <34.204060, 28.363659, 22.552927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.149353, 28.596905, 22.538639>,  <34.058178, 28.985647, 22.514826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.149353, 28.596905, 22.538639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446543, 0.050007, -0.893363,
		0.865242, 0.230215, 0.445374,
		0.227938, -0.971854, 0.059533,
		34.217735, 28.305349, 22.556499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.794224, 28.971647, 22.243673>,  <34.058178, 28.985647, 22.514826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.794224, 28.971647, 22.243673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.665882, 28.592869, 22.236259>,  <34.588875, 28.365602, 22.231812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.665882, 28.592869, 22.236259>,  <34.794224, 28.971647, 22.243673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.665882, 28.592869, 22.236259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468079, -0.141527, -0.872280,
		0.823379, -0.288552, 0.488655,
		-0.320856, -0.946947, -0.018535,
		34.569626, 28.308784, 22.230700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.367699, 28.662483, 21.909838>,  <34.794224, 28.971647, 22.243673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.367699, 28.662483, 21.909838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.066143, 28.400249, 21.892591>,  <34.885208, 28.242908, 21.882244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.066143, 28.400249, 21.892591>,  <35.367699, 28.662483, 21.909838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.066143, 28.400249, 21.892591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274780, -0.255010, -0.927074,
		0.596779, -0.710760, 0.372391,
		-0.753890, -0.655584, -0.043118,
		34.839977, 28.203575, 21.879656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.691219, 28.042431, 21.628199>,  <35.367699, 28.662483, 21.909838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.691219, 28.042431, 21.628199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.295952, 28.050022, 21.567320>,  <35.058792, 28.054577, 21.530792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.295952, 28.050022, 21.567320>,  <35.691219, 28.042431, 21.628199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.295952, 28.050022, 21.567320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150467, -0.072333, -0.985965,
		-0.029718, -0.997200, 0.068622,
		-0.988168, 0.018976, -0.152195,
		34.999500, 28.055716, 21.521662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.631599, 27.570078, 21.073757>,  <35.691219, 28.042431, 21.628199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.631599, 27.570078, 21.073757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.299374, 27.792055, 21.055029>,  <35.100037, 27.925241, 21.043791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.299374, 27.792055, 21.055029>,  <35.631599, 27.570078, 21.073757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.299374, 27.792055, 21.055029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063859, 0.011379, -0.997894,
		-0.553243, -0.831809, -0.044889,
		-0.830569, 0.554945, -0.046823,
		35.050201, 27.958538, 21.040981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.295650, 27.335545, 20.435921>,  <35.631599, 27.570078, 21.073757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.295650, 27.335545, 20.435921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.147427, 27.689501, 20.548815>,  <35.058495, 27.901875, 20.616550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.147427, 27.689501, 20.548815>,  <35.295650, 27.335545, 20.435921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.147427, 27.689501, 20.548815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060352, 0.280286, -0.958018,
		-0.926848, -0.372032, -0.050456,
		-0.370555, 0.884891, 0.282235,
		35.036259, 27.954967, 20.633486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.868328, 27.542387, 19.888758>,  <35.295650, 27.335545, 20.435921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.868328, 27.542387, 19.888758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.920910, 27.897692, 20.064806>,  <34.952461, 28.110874, 20.170435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.920910, 27.897692, 20.064806>,  <34.868328, 27.542387, 19.888758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.920910, 27.897692, 20.064806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087666, 0.452652, -0.887367,
		-0.987438, 0.078066, 0.137375,
		0.131457, 0.888263, 0.440122,
		34.960346, 28.164171, 20.196842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.447430, 27.977013, 19.471464>,  <34.868328, 27.542387, 19.888758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.447430, 27.977013, 19.471464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.724224, 28.190836, 19.665535>,  <34.890301, 28.319130, 19.781977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.724224, 28.190836, 19.665535>,  <34.447430, 27.977013, 19.471464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.724224, 28.190836, 19.665535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191238, 0.512327, -0.837227,
		-0.696117, 0.672137, 0.252297,
		0.691990, 0.534559, 0.485177,
		34.931820, 28.351204, 19.811089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.481277, 28.751589, 19.247385>,  <34.447430, 27.977013, 19.471464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.481277, 28.751589, 19.247385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.846832, 28.649162, 19.373400>,  <35.066166, 28.587706, 19.449009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.846832, 28.649162, 19.373400>,  <34.481277, 28.751589, 19.247385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.846832, 28.649162, 19.373400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400927, 0.447202, -0.799542,
		0.063849, 0.856995, 0.511354,
		0.913882, -0.256065, 0.315039,
		35.120998, 28.572342, 19.467911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.803749, 29.410124, 19.332954>,  <34.481277, 28.751589, 19.247385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.803749, 29.410124, 19.332954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.859165, 29.766359, 19.159678>,  <34.892414, 29.980101, 19.055712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.859165, 29.766359, 19.159678>,  <34.803749, 29.410124, 19.332954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.859165, 29.766359, 19.159678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174444, -0.408628, -0.895875,
		-0.974872, 0.199682, 0.098747,
		0.138539, 0.890590, -0.433194,
		34.900726, 30.033537, 19.029720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.238453, 29.532703, 18.910278>,  <34.803749, 29.410124, 19.332954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.238453, 29.532703, 18.910278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.542912, 29.735979, 18.749083>,  <34.725586, 29.857944, 18.652365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.542912, 29.735979, 18.749083>,  <34.238453, 29.532703, 18.910278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.542912, 29.735979, 18.749083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143013, -0.474545, -0.868536,
		-0.632615, 0.718717, -0.288522,
		0.761148, 0.508187, -0.402990,
		34.771255, 29.888435, 18.628185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.947826, 29.748348, 18.344000>,  <34.238453, 29.532703, 18.910278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.947826, 29.748348, 18.344000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.343834, 29.755486, 18.288069>,  <34.581436, 29.759768, 18.254511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.343834, 29.755486, 18.288069>,  <33.947826, 29.748348, 18.344000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.343834, 29.755486, 18.288069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111159, -0.511158, -0.852268,
		-0.086683, 0.859302, -0.504070,
		0.990015, 0.017845, -0.139828,
		34.640839, 29.760839, 18.246120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.111378, 29.833853, 17.696238>,  <33.947826, 29.748348, 18.344000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.111378, 29.833853, 17.696238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.470654, 29.686888, 17.792788>,  <34.686218, 29.598709, 17.850718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.470654, 29.686888, 17.792788>,  <34.111378, 29.833853, 17.696238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.470654, 29.686888, 17.792788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070047, -0.422444, -0.903678,
		0.433989, 0.828583, -0.353699,
		0.898191, -0.367411, 0.241376,
		34.740112, 29.576664, 17.865200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.766129, 30.027157, 17.251722>,  <34.111378, 29.833853, 17.696238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.766129, 30.027157, 17.251722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.898090, 29.690094, 17.421942>,  <34.977268, 29.487856, 17.524073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.898090, 29.690094, 17.421942>,  <34.766129, 30.027157, 17.251722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.898090, 29.690094, 17.421942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257702, -0.353272, -0.899327,
		0.908157, 0.406360, 0.100607,
		0.329909, -0.842657, 0.425546,
		34.997063, 29.437298, 17.549606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.540237, 29.896967, 17.523415>,  <34.766129, 30.027157, 17.251722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.540237, 29.896967, 17.523415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.758270, 29.598307, 17.370890>,  <35.889091, 29.419111, 17.279375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.758270, 29.598307, 17.370890>,  <35.540237, 29.896967, 17.523415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.758270, 29.598307, 17.370890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819534, 0.378624, 0.430126,
		-0.176779, -0.546952, 0.818286,
		0.545081, -0.746650, -0.381313,
		35.921795, 29.374311, 17.256496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.979557, 30.184568, 18.069454>,  <35.540237, 29.896967, 17.523415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.979557, 30.184568, 18.069454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.585438, 30.118702, 18.087631>,  <35.348965, 30.079182, 18.098537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.585438, 30.118702, 18.087631>,  <35.979557, 30.184568, 18.069454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.585438, 30.118702, 18.087631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082548, 0.691884, 0.717274,
		-0.149552, 0.702980, -0.695308,
		-0.985302, -0.164666, 0.045444,
		35.289848, 30.069302, 18.101265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.613743, 30.731907, 18.215441>,  <35.979557, 30.184568, 18.069454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.613743, 30.731907, 18.215441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.329525, 30.487722, 18.355417>,  <35.158993, 30.341211, 18.439404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.329525, 30.487722, 18.355417>,  <35.613743, 30.731907, 18.215441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.329525, 30.487722, 18.355417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221421, 0.666040, 0.712294,
		-0.667903, 0.428634, -0.608422,
		-0.710547, -0.610461, 0.349942,
		35.116360, 30.304585, 18.460400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.033451, 31.186390, 18.484182>,  <35.613743, 30.731907, 18.215441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.033451, 31.186390, 18.484182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.979130, 30.832418, 18.662378>,  <34.946537, 30.620035, 18.769295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.979130, 30.832418, 18.662378>,  <35.033451, 31.186390, 18.484182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.979130, 30.832418, 18.662378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192400, 0.464648, 0.864340,
		-0.971875, 0.031664, -0.233359,
		-0.135798, -0.884929, 0.445488,
		34.938389, 30.566940, 18.796024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.423874, 31.254602, 18.855013>,  <35.033451, 31.186390, 18.484182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.423874, 31.254602, 18.855013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.607056, 30.938370, 19.017618>,  <34.716965, 30.748631, 19.115181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.607056, 30.938370, 19.017618>,  <34.423874, 31.254602, 18.855013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.607056, 30.938370, 19.017618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179054, 0.365878, 0.913276,
		-0.870755, -0.491030, 0.026000,
		0.457959, -0.790584, 0.406511,
		34.744442, 30.701195, 19.139572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.962078, 30.899303, 19.303162>,  <34.423874, 31.254602, 18.855013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.962078, 30.899303, 19.303162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.325756, 30.794144, 19.432318>,  <34.543961, 30.731049, 19.509811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.325756, 30.794144, 19.432318>,  <33.962078, 30.899303, 19.303162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.325756, 30.794144, 19.432318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240206, 0.302254, 0.922466,
		-0.340110, -0.916257, 0.211657,
		0.909190, -0.262898, 0.322890,
		34.598515, 30.715275, 19.529184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.898052, 30.469368, 19.891197>,  <33.962078, 30.899303, 19.303162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.898052, 30.469368, 19.891197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.264977, 30.625507, 19.922604>,  <34.485130, 30.719191, 19.941448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.264977, 30.625507, 19.922604>,  <33.898052, 30.469368, 19.891197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.264977, 30.625507, 19.922604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209177, 0.304660, 0.929208,
		0.338798, -0.868797, 0.361121,
		0.917312, 0.390352, 0.078514,
		34.540169, 30.742613, 19.946159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.125061, 30.185585, 20.544901>,  <33.898052, 30.469368, 19.891197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.125061, 30.185585, 20.544901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.368496, 30.491957, 20.461981>,  <34.514557, 30.675779, 20.412230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.368496, 30.491957, 20.461981>,  <34.125061, 30.185585, 20.544901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.368496, 30.491957, 20.461981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139235, 0.360279, 0.922395,
		0.781175, -0.532495, 0.325905,
		0.608588, 0.765930, -0.207299,
		34.551071, 30.721735, 20.399792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.623219, 30.171816, 21.135063>,  <34.125061, 30.185585, 20.544901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.623219, 30.171816, 21.135063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.626995, 30.536364, 20.970470>,  <34.629261, 30.755093, 20.871714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.626995, 30.536364, 20.970470>,  <34.623219, 30.171816, 21.135063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.626995, 30.536364, 20.970470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057569, 0.410325, 0.910121,
		0.998297, -0.032278, -0.048594,
		0.009438, 0.911368, -0.411484,
		34.629826, 30.809774, 20.847025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.194050, 30.526814, 21.410213>,  <34.623219, 30.171816, 21.135063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.194050, 30.526814, 21.410213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.984238, 30.831572, 21.258223>,  <34.858349, 31.014427, 21.167028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.984238, 30.831572, 21.258223>,  <35.194050, 30.526814, 21.410213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.984238, 30.831572, 21.258223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072151, 0.484477, 0.871824,
		0.848329, 0.429881, -0.309094,
		-0.524530, 0.761895, -0.379979,
		34.826878, 31.060141, 21.144228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.513203, 31.102823, 21.550964>,  <35.194050, 30.526814, 21.410213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.513203, 31.102823, 21.550964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.126892, 31.197836, 21.509308>,  <34.895103, 31.254843, 21.484314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.126892, 31.197836, 21.509308>,  <35.513203, 31.102823, 21.550964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.126892, 31.197836, 21.509308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007487, 0.426900, 0.904268,
		0.259250, 0.872545, -0.414071,
		-0.965781, 0.237532, -0.104141,
		34.837158, 31.269096, 21.478065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.372280, 31.701130, 21.980684>,  <35.513203, 31.102823, 21.550964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.372280, 31.701130, 21.980684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.985271, 31.640469, 21.899786>,  <34.753067, 31.604073, 21.851248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.985271, 31.640469, 21.899786>,  <35.372280, 31.701130, 21.980684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.985271, 31.640469, 21.899786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249412, 0.442340, 0.861469,
		-0.041183, 0.883933, -0.465797,
		-0.967521, -0.151653, -0.202246,
		34.695015, 31.594973, 21.839111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.056126, 32.343369, 22.156872>,  <35.372280, 31.701130, 21.980684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.056126, 32.343369, 22.156872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.777740, 32.056515, 22.142141>,  <34.610710, 31.884403, 22.133303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.777740, 32.056515, 22.142141>,  <35.056126, 32.343369, 22.156872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.777740, 32.056515, 22.142141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359885, 0.303962, 0.882094,
		-0.621387, 0.627156, -0.469632,
		-0.695961, -0.717135, -0.036827,
		34.568951, 31.841373, 22.131094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.416378, 32.669708, 22.392988>,  <35.056126, 32.343369, 22.156872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.416378, 32.669708, 22.392988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.399670, 32.281078, 22.486193>,  <34.389645, 32.047901, 22.542116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.399670, 32.281078, 22.486193>,  <34.416378, 32.669708, 22.392988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.399670, 32.281078, 22.486193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250773, 0.235944, 0.938852,
		-0.967144, -0.019216, -0.253501,
		-0.041772, -0.971577, 0.233011,
		34.387138, 31.989605, 22.556095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.828602, 32.587463, 22.706768>,  <34.416378, 32.669708, 22.392988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.828602, 32.587463, 22.706768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.047886, 32.279190, 22.836697>,  <34.179455, 32.094227, 22.914654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.047886, 32.279190, 22.836697>,  <33.828602, 32.587463, 22.706768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.047886, 32.279190, 22.836697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317748, 0.167332, 0.933293,
		-0.773631, -0.614849, -0.153152,
		0.548207, -0.770688, 0.324821,
		34.212349, 32.047985, 22.934143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.445683, 32.157547, 23.014069>,  <33.828602, 32.587463, 22.706768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.445683, 32.157547, 23.014069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.776989, 32.010166, 23.182934>,  <33.975773, 31.921738, 23.284252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.776989, 32.010166, 23.182934>,  <33.445683, 32.157547, 23.014069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.776989, 32.010166, 23.182934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441601, 0.034536, 0.896547,
		-0.344916, -0.929004, -0.134104,
		0.828265, -0.368454, 0.422161,
		34.025467, 31.899630, 23.309582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.187851, 31.811106, 23.603077>,  <33.445683, 32.157547, 23.014069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.187851, 31.811106, 23.603077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.576786, 31.816269, 23.696358>,  <33.810150, 31.819366, 23.752327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.576786, 31.816269, 23.696358>,  <33.187851, 31.811106, 23.603077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.576786, 31.816269, 23.696358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222843, -0.247704, 0.942859,
		0.069936, -0.968750, -0.237977,
		0.972343, 0.012908, 0.233203,
		33.868488, 31.820141, 23.766319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.402744, 31.125957, 23.834972>,  <33.187851, 31.811106, 23.603077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.402744, 31.125957, 23.834972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.651848, 31.409239, 23.968014>,  <33.801311, 31.579206, 24.047838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.651848, 31.409239, 23.968014>,  <33.402744, 31.125957, 23.834972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.651848, 31.409239, 23.968014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272848, -0.201839, 0.940646,
		0.733299, -0.676544, 0.067535,
		0.622757, 0.708202, 0.332602,
		33.838676, 31.621698, 24.067795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.692204, 30.828514, 24.369055>,  <33.402744, 31.125957, 23.834972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.692204, 30.828514, 24.369055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.765053, 31.216702, 24.432333>,  <33.808762, 31.449614, 24.470299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.765053, 31.216702, 24.432333>,  <33.692204, 30.828514, 24.369055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.765053, 31.216702, 24.432333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402011, -0.073333, 0.912694,
		0.897340, -0.229817, 0.376783,
		0.182122, 0.970467, 0.158194,
		33.819691, 31.507841, 24.479792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.090767, 30.949583, 25.013493>,  <33.692204, 30.828514, 24.369055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.090767, 30.949583, 25.013493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.913006, 31.301390, 24.945427>,  <33.806347, 31.512474, 24.904587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.913006, 31.301390, 24.945427>,  <34.090767, 30.949583, 25.013493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.913006, 31.301390, 24.945427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334074, 0.013538, 0.942450,
		0.831203, 0.475677, 0.287807,
		-0.444406, 0.879516, -0.170165,
		33.779686, 31.565245, 24.894377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.193760, 31.400341, 25.523281>,  <34.090767, 30.949583, 25.013493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.193760, 31.400341, 25.523281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.865517, 31.569952, 25.370022>,  <33.668571, 31.671719, 25.278067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.865517, 31.569952, 25.370022>,  <34.193760, 31.400341, 25.523281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.865517, 31.569952, 25.370022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331211, 0.193484, 0.923506,
		0.465723, 0.884741, -0.018332,
		-0.820610, 0.424026, -0.383146,
		33.619335, 31.697161, 25.255077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.088352, 31.785568, 26.021173>,  <34.193760, 31.400341, 25.523281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.088352, 31.785568, 26.021173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.749374, 31.836456, 25.815006>,  <33.545990, 31.866989, 25.691305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.749374, 31.836456, 25.815006>,  <34.088352, 31.785568, 26.021173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.749374, 31.836456, 25.815006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489394, 0.189069, 0.851320,
		0.205756, 0.973688, -0.097964,
		-0.847442, 0.127221, -0.515419,
		33.495140, 31.874622, 25.660381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.854328, 32.458179, 26.186951>,  <34.088352, 31.785568, 26.021173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.854328, 32.458179, 26.186951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.568398, 32.194176, 26.094507>,  <33.396839, 32.035774, 26.039042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.568398, 32.194176, 26.094507>,  <33.854328, 32.458179, 26.186951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.568398, 32.194176, 26.094507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398230, 0.112537, 0.910356,
		-0.574832, 0.742784, -0.343279,
		-0.714829, -0.660006, -0.231109,
		33.353951, 31.996174, 26.025175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.302593, 32.620907, 26.574644>,  <33.854328, 32.458179, 26.186951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.302593, 32.620907, 26.574644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.198521, 32.250023, 26.466875>,  <33.136078, 32.027493, 26.402214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.198521, 32.250023, 26.466875>,  <33.302593, 32.620907, 26.574644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.198521, 32.250023, 26.466875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504214, -0.107499, 0.856862,
		-0.823454, 0.358783, -0.439544,
		-0.260177, -0.927210, -0.269424,
		33.120468, 31.971859, 26.386047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.517437, 32.517067, 26.767916>,  <33.302593, 32.620907, 26.574644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.517437, 32.517067, 26.767916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.695854, 32.161709, 26.724453>,  <32.802902, 31.948494, 26.698376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.695854, 32.161709, 26.724453>,  <32.517437, 32.517067, 26.767916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.695854, 32.161709, 26.724453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466437, -0.334347, 0.818931,
		-0.763861, -0.314596, -0.563512,
		0.446041, -0.888393, -0.108655,
		32.829666, 31.895191, 26.691856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.015015, 32.075386, 26.923464>,  <32.517437, 32.517067, 26.767916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.015015, 32.075386, 26.923464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.355980, 31.875738, 26.985788>,  <32.560558, 31.755949, 27.023184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.355980, 31.875738, 26.985788>,  <32.015015, 32.075386, 26.923464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.355980, 31.875738, 26.985788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290551, -0.204398, 0.934774,
		-0.434715, -0.842082, -0.319250,
		0.852410, -0.499118, 0.155813,
		32.611702, 31.726002, 27.032532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.812922, 31.442696, 27.252392>,  <32.015015, 32.075386, 26.923464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.812922, 31.442696, 27.252392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.203484, 31.486477, 27.326855>,  <32.437820, 31.512745, 27.371532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.203484, 31.486477, 27.326855>,  <31.812922, 31.442696, 27.252392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.203484, 31.486477, 27.326855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173773, -0.113558, 0.978216,
		0.128208, -0.987484, -0.091858,
		0.976404, 0.109453, 0.186157,
		32.496407, 31.519314, 27.382702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.972431, 30.924356, 27.848581>,  <31.812922, 31.442696, 27.252392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.972431, 30.924356, 27.848581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.273304, 31.187277, 27.829905>,  <32.453827, 31.345030, 27.818699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.273304, 31.187277, 27.829905>,  <31.972431, 30.924356, 27.848581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.273304, 31.187277, 27.829905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101031, -0.045016, 0.993864,
		0.651167, -0.752282, -0.100268,
		0.752180, 0.657302, -0.046691,
		32.498959, 31.384468, 27.815897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.501892, 30.666990, 28.233742>,  <31.972431, 30.924356, 27.848581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.501892, 30.666990, 28.233742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.561829, 31.062256, 28.220617>,  <32.597790, 31.299416, 28.212742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.561829, 31.062256, 28.220617>,  <32.501892, 30.666990, 28.233742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.561829, 31.062256, 28.220617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093168, 0.018927, 0.995470,
		0.984311, -0.152216, -0.089230,
		0.149837, 0.988166, -0.032812,
		32.606781, 31.358706, 28.210773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.014633, 30.797939, 28.764318>,  <32.501892, 30.666990, 28.233742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.014633, 30.797939, 28.764318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.818729, 31.140425, 28.698551>,  <32.701187, 31.345917, 28.659092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.818729, 31.140425, 28.698551>,  <33.014633, 30.797939, 28.764318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.818729, 31.140425, 28.698551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069207, 0.149809, 0.986290,
		0.869107, 0.494424, -0.014114,
		-0.489759, 0.856214, -0.164417,
		32.671803, 31.397289, 28.649225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.414993, 31.316624, 29.131912>,  <33.014633, 30.797939, 28.764318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.414993, 31.316624, 29.131912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.050480, 31.471148, 29.074884>,  <32.831772, 31.563862, 29.040667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.050480, 31.471148, 29.074884>,  <33.414993, 31.316624, 29.131912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.050480, 31.471148, 29.074884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048895, 0.242269, 0.968976,
		0.408867, 0.889983, -0.201887,
		-0.911283, 0.386311, -0.142572,
		32.777096, 31.587042, 29.032112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.454533, 31.965403, 29.660461>,  <33.414993, 31.316624, 29.131912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.454533, 31.965403, 29.660461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.069187, 31.914497, 29.566029>,  <32.837978, 31.883955, 29.509369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.069187, 31.914497, 29.566029>,  <33.454533, 31.965403, 29.660461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.069187, 31.914497, 29.566029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266397, 0.352130, 0.897239,
		-0.031054, 0.927258, -0.373132,
		-0.963363, -0.127264, -0.236084,
		32.780178, 31.876318, 29.495203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.084248, 32.553314, 29.897804>,  <33.454533, 31.965403, 29.660461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.084248, 32.553314, 29.897804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.802044, 32.271389, 29.868135>,  <32.632721, 32.102234, 29.850334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.802044, 32.271389, 29.868135>,  <33.084248, 32.553314, 29.897804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.802044, 32.271389, 29.868135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344908, 0.250038, 0.904721,
		-0.619112, 0.663869, -0.419498,
		-0.705506, -0.704812, -0.074172,
		32.590393, 32.059944, 29.845884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.480972, 32.870159, 30.219959>,  <33.084248, 32.553314, 29.897804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.480972, 32.870159, 30.219959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.407734, 32.477062, 30.230522>,  <32.363792, 32.241203, 30.236860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.407734, 32.477062, 30.230522>,  <32.480972, 32.870159, 30.219959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.407734, 32.477062, 30.230522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341123, 0.088703, 0.935824,
		-0.922015, 0.162335, -0.351477,
		-0.183094, -0.982740, 0.026409,
		32.352806, 32.182240, 30.238445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.820126, 32.760071, 30.435152>,  <32.480972, 32.870159, 30.219959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.820126, 32.760071, 30.435152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.013084, 32.420559, 30.521744>,  <32.128860, 32.216850, 30.573698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.013084, 32.420559, 30.521744>,  <31.820126, 32.760071, 30.435152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.013084, 32.420559, 30.521744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273123, 0.089069, 0.957847,
		-0.832285, -0.521187, -0.188855,
		0.482396, -0.848782, 0.216479,
		32.157803, 32.165924, 30.586687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.405165, 32.497955, 30.932735>,  <31.820126, 32.760071, 30.435152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.405165, 32.497955, 30.932735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.738625, 32.282871, 30.983164>,  <31.938700, 32.153820, 31.013422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.738625, 32.282871, 30.983164>,  <31.405165, 32.497955, 30.932735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.738625, 32.282871, 30.983164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182681, -0.053044, 0.981740,
		-0.521207, -0.841458, -0.142450,
		0.833649, -0.537713, 0.126072,
		31.988720, 32.121559, 31.020985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.215155, 31.968777, 31.299046>,  <31.405165, 32.497955, 30.932735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.215155, 31.968777, 31.299046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.607147, 32.013184, 31.365156>,  <31.842342, 32.039829, 31.404821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.607147, 32.013184, 31.365156>,  <31.215155, 31.968777, 31.299046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.607147, 32.013184, 31.365156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169008, 0.025040, 0.985297,
		0.105249, -0.993503, 0.043302,
		0.979979, 0.111020, 0.165274,
		31.901140, 32.046490, 31.414738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.355110, 31.433502, 31.781576>,  <31.215155, 31.968777, 31.299046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.355110, 31.433502, 31.781576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.669792, 31.673691, 31.838886>,  <31.858601, 31.817804, 31.873272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.669792, 31.673691, 31.838886>,  <31.355110, 31.433502, 31.781576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.669792, 31.673691, 31.838886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129749, -0.066075, 0.989343,
		0.603539, -0.796912, 0.025930,
		0.786705, 0.600471, 0.143277,
		31.905804, 31.853832, 31.881870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.720072, 31.124615, 32.383560>,  <31.355110, 31.433502, 31.781576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.720072, 31.124615, 32.383560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.825441, 31.508699, 32.346474>,  <31.888662, 31.739151, 32.324223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.825441, 31.508699, 32.346474>,  <31.720072, 31.124615, 32.383560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.825441, 31.508699, 32.346474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098232, 0.122315, 0.987618,
		0.959666, -0.251054, 0.126545,
		0.263423, 0.960214, -0.092720,
		31.904469, 31.796764, 32.318657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.065674, 31.184168, 32.933090>,  <31.720072, 31.124615, 32.383560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.065674, 31.184168, 32.933090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.994566, 31.560280, 32.816971>,  <31.951902, 31.785948, 32.747299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.994566, 31.560280, 32.816971>,  <32.065674, 31.184168, 32.933090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.994566, 31.560280, 32.816971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085193, 0.279184, 0.956451,
		0.980378, 0.194756, 0.030475,
		-0.177767, 0.940280, -0.290298,
		31.941236, 31.842363, 32.729881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.485573, 31.603426, 33.365959>,  <32.065674, 31.184168, 32.933090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.485573, 31.603426, 33.365959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.187286, 31.838781, 33.240925>,  <32.008316, 31.979994, 33.165905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.187286, 31.838781, 33.240925>,  <32.485573, 31.603426, 33.365959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.187286, 31.838781, 33.240925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218868, 0.226795, 0.949032,
		0.629291, 0.776122, -0.040346,
		-0.745715, 0.588386, -0.312588,
		31.963572, 32.015297, 33.147148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.532650, 31.942867, 33.946674>,  <32.485573, 31.603426, 33.365959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.532650, 31.942867, 33.946674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.198673, 32.052456, 33.755756>,  <31.998287, 32.118210, 33.641205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.198673, 32.052456, 33.755756>,  <32.532650, 31.942867, 33.946674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.198673, 32.052456, 33.755756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333693, 0.437628, 0.834943,
		0.437628, 0.856400, -0.273972,
		-0.834943, 0.273972, -0.477293,
		31.948191, 32.134647, 33.612568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.393482, 32.737843, 34.040596>,  <32.532650, 31.942867, 33.946674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.393482, 32.737843, 34.040596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.040531, 32.570141, 33.955143>,  <31.828760, 32.469521, 33.903870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.040531, 32.570141, 33.955143>,  <32.393482, 32.737843, 34.040596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.040531, 32.570141, 33.955143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426156, 0.519534, 0.740591,
		-0.199502, 0.744522, -0.637091,
		-0.882377, -0.419250, -0.213635,
		31.775818, 32.444366, 33.891052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.113026, 33.004292, 34.096443>,  <32.393482, 32.737843, 34.040596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.113026, 33.004292, 34.096443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.454952, 33.120239, 34.268608>,  <33.660110, 33.189808, 34.371906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.454952, 33.120239, 34.268608>,  <33.113026, 33.004292, 34.096443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.454952, 33.120239, 34.268608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226347, 0.538098, -0.811922,
		-0.466959, 0.791470, 0.394365,
		0.854819, 0.289871, 0.430416,
		33.711399, 33.207199, 34.397732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.164936, 33.718449, 33.970314>,  <33.113026, 33.004292, 34.096443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.164936, 33.718449, 33.970314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.534954, 33.584846, 34.042683>,  <33.756966, 33.504684, 34.086105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.534954, 33.584846, 34.042683>,  <33.164936, 33.718449, 33.970314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.534954, 33.584846, 34.042683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320800, 0.431857, -0.842963,
		0.203422, 0.837818, 0.506636,
		0.925044, -0.334006, 0.180922,
		33.812466, 33.484646, 34.096958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.657703, 34.168293, 33.696232>,  <33.164936, 33.718449, 33.970314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.657703, 34.168293, 33.696232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.894917, 33.851845, 33.756153>,  <34.037247, 33.661976, 33.792107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.894917, 33.851845, 33.756153>,  <33.657703, 34.168293, 33.696232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.894917, 33.851845, 33.756153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547436, 0.259732, -0.795521,
		0.590441, 0.553781, 0.587116,
		0.593037, -0.791117, 0.149803,
		34.072826, 33.614510, 33.801094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.335419, 34.371811, 33.607037>,  <33.657703, 34.168293, 33.696232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.335419, 34.371811, 33.607037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.366413, 33.978485, 33.541214>,  <34.385010, 33.742489, 33.501720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.366413, 33.978485, 33.541214>,  <34.335419, 34.371811, 33.607037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.366413, 33.978485, 33.541214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579404, 0.178734, -0.795201,
		0.811349, -0.033729, 0.583588,
		0.077485, -0.983319, -0.164559,
		34.389660, 33.683491, 33.491848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.029190, 34.259045, 33.435001>,  <34.335419, 34.371811, 33.607037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.029190, 34.259045, 33.435001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.857731, 33.922379, 33.303631>,  <34.754856, 33.720379, 33.224808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.857731, 33.922379, 33.303631>,  <35.029190, 34.259045, 33.435001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.857731, 33.922379, 33.303631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514613, 0.071331, -0.854450,
		0.742587, -0.535270, 0.402555,
		-0.428647, -0.841664, -0.328427,
		34.729137, 33.669880, 33.205101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.582817, 33.745834, 33.272526>,  <35.029190, 34.259045, 33.435001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.582817, 33.745834, 33.272526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.259850, 33.671200, 33.048645>,  <35.066071, 33.626419, 32.914318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.259850, 33.671200, 33.048645>,  <35.582817, 33.745834, 33.272526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.259850, 33.671200, 33.048645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516030, 0.236522, -0.823268,
		0.285998, -0.953541, -0.094684,
		-0.807415, -0.186593, -0.559701,
		35.017624, 33.615223, 32.880733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.766163, 33.283039, 32.626968>,  <35.582817, 33.745834, 33.272526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.766163, 33.283039, 32.626968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.418846, 33.437054, 32.501862>,  <35.210457, 33.529461, 32.426796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.418846, 33.437054, 32.501862>,  <35.766163, 33.283039, 32.626968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.418846, 33.437054, 32.501862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295442, -0.105086, -0.949564,
		-0.398485, -0.916899, -0.022511,
		-0.868288, 0.385037, -0.312765,
		35.158360, 33.552567, 32.408031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.445827, 32.833820, 32.128887>,  <35.766163, 33.283039, 32.626968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.445827, 32.833820, 32.128887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.304604, 33.201466, 32.058949>,  <35.219868, 33.422054, 32.016987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.304604, 33.201466, 32.058949>,  <35.445827, 32.833820, 32.128887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.304604, 33.201466, 32.058949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301005, -0.065355, -0.951380,
		-0.885856, -0.388527, -0.253585,
		-0.353064, 0.919116, -0.174844,
		35.198685, 33.477200, 32.006496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.016933, 32.794838, 31.609257>,  <35.445827, 32.833820, 32.128887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.016933, 32.794838, 31.609257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.118587, 33.181370, 31.593102>,  <35.179581, 33.413288, 31.583408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.118587, 33.181370, 31.593102>,  <35.016933, 32.794838, 31.609257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.118587, 33.181370, 31.593102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091354, -0.065555, -0.993659,
		-0.962845, 0.248832, -0.104937,
		0.254133, 0.966326, -0.040388,
		35.194828, 33.471268, 31.580986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.701134, 32.884464, 30.977844>,  <35.016933, 32.794838, 31.609257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.701134, 32.884464, 30.977844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.905342, 33.219528, 31.055510>,  <35.027866, 33.420567, 31.102108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.905342, 33.219528, 31.055510>,  <34.701134, 32.884464, 30.977844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.905342, 33.219528, 31.055510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137032, 0.143661, -0.980094,
		-0.848877, 0.526964, -0.041444,
		0.510520, 0.837658, 0.194161,
		35.058498, 33.470825, 31.113758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.397755, 33.422134, 30.535028>,  <34.701134, 32.884464, 30.977844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.397755, 33.422134, 30.535028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.765404, 33.565159, 30.601206>,  <34.985992, 33.650974, 30.640913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.765404, 33.565159, 30.601206>,  <34.397755, 33.422134, 30.535028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.765404, 33.565159, 30.601206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098225, 0.198704, -0.975125,
		-0.381541, 0.912506, 0.147511,
		0.919118, 0.357561, 0.165445,
		35.041138, 33.672428, 30.650839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.509068, 34.102161, 30.154900>,  <34.397755, 33.422134, 30.535028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.509068, 34.102161, 30.154900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.871040, 33.951977, 30.235035>,  <35.088223, 33.861866, 30.283115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.871040, 33.951977, 30.235035>,  <34.509068, 34.102161, 30.154900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.871040, 33.951977, 30.235035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251141, 0.091113, -0.963653,
		0.343557, 0.922351, 0.176743,
		0.904929, -0.375457, 0.200338,
		35.142521, 33.839340, 30.295135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.923389, 34.557304, 29.723389>,  <34.509068, 34.102161, 30.154900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.923389, 34.557304, 29.723389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.118622, 34.219681, 29.812246>,  <35.235760, 34.017109, 29.865561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.118622, 34.219681, 29.812246>,  <34.923389, 34.557304, 29.723389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.118622, 34.219681, 29.812246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298067, -0.078021, -0.951351,
		0.820325, 0.530550, 0.213504,
		0.488082, -0.844055, 0.222142,
		35.265045, 33.966465, 29.878889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.527424, 34.712551, 29.441818>,  <34.923389, 34.557304, 29.723389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.527424, 34.712551, 29.441818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.542706, 34.313282, 29.460510>,  <35.551872, 34.073719, 29.471725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.542706, 34.313282, 29.460510>,  <35.527424, 34.712551, 29.441818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.542706, 34.313282, 29.460510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359740, -0.029893, -0.932574,
		0.932270, 0.052437, 0.357942,
		0.038201, -0.998177, 0.046732,
		35.554165, 34.013828, 29.474529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.095203, 34.559608, 29.091053>,  <35.527424, 34.712551, 29.441818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.095203, 34.559608, 29.091053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.894035, 34.213924, 29.096825>,  <35.773335, 34.006516, 29.100286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.894035, 34.213924, 29.096825>,  <36.095203, 34.559608, 29.091053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.894035, 34.213924, 29.096825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362448, -0.226019, -0.904183,
		0.784665, -0.449506, 0.426902,
		-0.502923, -0.864211, 0.014427,
		35.743156, 33.954662, 29.101152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.560196, 34.063843, 28.824318>,  <36.095203, 34.559608, 29.091053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.560196, 34.063843, 28.824318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.207352, 33.877430, 28.796913>,  <35.995647, 33.765583, 28.780470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.207352, 33.877430, 28.796913>,  <36.560196, 34.063843, 28.824318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.207352, 33.877430, 28.796913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185565, -0.210118, -0.959904,
		0.432955, -0.859454, 0.271827,
		-0.882109, -0.466037, -0.068513,
		35.942719, 33.737617, 28.776360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.633034, 33.319256, 28.675709>,  <36.560196, 34.063843, 28.824318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.633034, 33.319256, 28.675709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.286385, 33.475227, 28.551174>,  <36.078396, 33.568810, 28.476454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.286385, 33.475227, 28.551174>,  <36.633034, 33.319256, 28.675709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.286385, 33.475227, 28.551174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219504, -0.262412, -0.939658,
		-0.448098, -0.882664, 0.141821,
		-0.866618, 0.389929, -0.311335,
		36.026398, 33.592205, 28.457773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.398769, 32.793613, 28.271294>,  <36.633034, 33.319256, 28.675709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.398769, 32.793613, 28.271294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.124363, 33.051563, 28.136524>,  <35.959717, 33.206333, 28.055662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.124363, 33.051563, 28.136524>,  <36.398769, 32.793613, 28.271294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.124363, 33.051563, 28.136524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154576, -0.323326, -0.933577,
		-0.710975, -0.692532, 0.122126,
		-0.686018, 0.644872, -0.336926,
		35.918556, 33.245026, 28.035446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.899258, 32.413696, 27.869442>,  <36.398769, 32.793613, 28.271294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.899258, 32.413696, 27.869442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.870205, 32.792263, 27.743578>,  <35.852776, 33.019405, 27.668058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.870205, 32.792263, 27.743578>,  <35.899258, 32.413696, 27.869442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.870205, 32.792263, 27.743578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116064, -0.321372, -0.939814,
		-0.990583, -0.031737, 0.133186,
		-0.072629, 0.946421, -0.314662,
		35.848415, 33.076191, 27.649179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.578793, 32.398800, 27.354910>,  <35.899258, 32.413696, 27.869442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.578793, 32.398800, 27.354910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.725166, 32.762856, 27.277205>,  <35.812988, 32.981289, 27.230581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.725166, 32.762856, 27.277205>,  <35.578793, 32.398800, 27.354910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.725166, 32.762856, 27.277205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056980, -0.230262, -0.971459,
		-0.928896, 0.344418, -0.136119,
		0.365931, 0.910140, -0.194265,
		35.834946, 33.035896, 27.218925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.218243, 32.684631, 26.710032>,  <35.578793, 32.398800, 27.354910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.218243, 32.684631, 26.710032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.568443, 32.872364, 26.756039>,  <35.778564, 32.985004, 26.783642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.568443, 32.872364, 26.756039>,  <35.218243, 32.684631, 26.710032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.568443, 32.872364, 26.756039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254261, -0.245024, -0.935582,
		-0.410920, 0.848344, -0.333851,
		0.875497, 0.469335, 0.115016,
		35.831093, 33.013165, 26.790543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.260651, 33.202137, 26.068714>,  <35.218243, 32.684631, 26.710032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.260651, 33.202137, 26.068714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.625202, 33.116993, 26.209620>,  <35.843933, 33.065907, 26.294163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.625202, 33.116993, 26.209620>,  <35.260651, 33.202137, 26.068714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.625202, 33.116993, 26.209620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305326, -0.224272, -0.925461,
		0.275992, 0.950996, -0.139406,
		0.911375, -0.212856, 0.352261,
		35.898613, 33.053135, 26.315298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.778179, 33.596672, 25.642235>,  <35.260651, 33.202137, 26.068714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.778179, 33.596672, 25.642235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.971714, 33.303398, 25.833374>,  <36.087833, 33.127434, 25.948057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.971714, 33.303398, 25.833374>,  <35.778179, 33.596672, 25.642235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.971714, 33.303398, 25.833374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212237, -0.431410, -0.876836,
		0.849033, 0.525662, -0.053122,
		0.483837, -0.733188, 0.477846,
		36.116863, 33.083443, 25.976728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.403572, 33.434647, 25.202013>,  <35.778179, 33.596672, 25.642235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.403572, 33.434647, 25.202013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.346409, 33.117588, 25.439089>,  <36.312111, 32.927353, 25.581335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.346409, 33.117588, 25.439089>,  <36.403572, 33.434647, 25.202013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.346409, 33.117588, 25.439089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158224, -0.609432, -0.776889,
		0.977007, -0.017242, 0.212507,
		-0.142904, -0.792650, 0.592692,
		36.303539, 32.879791, 25.616896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.000198, 33.032158, 25.112875>,  <36.403572, 33.434647, 25.202013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.000198, 33.032158, 25.112875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.693626, 32.800293, 25.223562>,  <36.509682, 32.661175, 25.289974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.693626, 32.800293, 25.223562>,  <37.000198, 33.032158, 25.112875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.693626, 32.800293, 25.223562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234944, -0.653945, -0.719137,
		0.597814, -0.486157, 0.637393,
		-0.766433, -0.579661, 0.276718,
		36.463696, 32.626396, 25.306578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.257504, 32.359463, 25.067427>,  <37.000198, 33.032158, 25.112875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.257504, 32.359463, 25.067427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.863190, 32.294392, 25.084253>,  <36.626602, 32.255348, 25.094349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.863190, 32.294392, 25.084253>,  <37.257504, 32.359463, 25.067427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.863190, 32.294392, 25.084253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091915, -0.731641, -0.675465,
		0.140661, -0.661994, 0.736192,
		-0.985782, -0.162679, 0.042066,
		36.567455, 32.245586, 25.096872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.083511, 31.634842, 25.298288>,  <37.257504, 32.359463, 25.067427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.083511, 31.634842, 25.298288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.780422, 31.796661, 25.093464>,  <36.598568, 31.893753, 24.970570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.780422, 31.796661, 25.093464>,  <37.083511, 31.634842, 25.298288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.780422, 31.796661, 25.093464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019511, -0.770272, -0.637417,
		-0.652289, -0.492973, 0.575757,
		-0.757719, 0.404547, -0.512058,
		36.553108, 31.918026, 24.939846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.841061, 31.012314, 25.050587>,  <37.083511, 31.634842, 25.298288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.841061, 31.012314, 25.050587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.654896, 31.293316, 24.835224>,  <36.543198, 31.461916, 24.706007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.654896, 31.293316, 24.835224>,  <36.841061, 31.012314, 25.050587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.654896, 31.293316, 24.835224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006064, -0.605759, -0.795625,
		-0.885074, -0.373558, 0.277667,
		-0.465411, 0.702503, -0.538406,
		36.515274, 31.504066, 24.673702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.095356, 30.774561, 24.782692>,  <36.841061, 31.012314, 25.050587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.095356, 30.774561, 24.782692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.260715, 31.056746, 24.552412>,  <36.359932, 31.226055, 24.414244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.260715, 31.056746, 24.552412>,  <36.095356, 30.774561, 24.782692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.260715, 31.056746, 24.552412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065259, -0.607673, -0.791502,
		-0.908209, 0.364775, -0.205173,
		0.413399, 0.705460, -0.575698,
		36.384735, 31.268383, 24.379702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.805565, 30.594131, 24.059042>,  <36.095356, 30.774561, 24.782692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.805565, 30.594131, 24.059042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.087009, 30.862207, 23.964575>,  <36.255875, 31.023052, 23.907894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.087009, 30.862207, 23.964575>,  <35.805565, 30.594131, 24.059042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.087009, 30.862207, 23.964575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286936, -0.572026, -0.768410,
		-0.650076, 0.472897, -0.594786,
		0.703611, 0.670191, -0.236169,
		36.298092, 31.063265, 23.893724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.830334, 30.519567, 23.313761>,  <35.805565, 30.594131, 24.059042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.830334, 30.519567, 23.313761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.157463, 30.742708, 23.370279>,  <36.353741, 30.876593, 23.404190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.157463, 30.742708, 23.370279>,  <35.830334, 30.519567, 23.313761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.157463, 30.742708, 23.370279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404811, -0.383171, -0.830245,
		-0.409012, 0.736194, -0.539191,
		0.817824, 0.557851, 0.141297,
		36.402809, 30.910063, 23.412668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.980373, 30.922073, 22.704144>,  <35.830334, 30.519567, 23.313761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.980373, 30.922073, 22.704144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.324184, 30.885515, 22.905287>,  <36.530472, 30.863581, 23.025972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.324184, 30.885515, 22.905287>,  <35.980373, 30.922073, 22.704144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.324184, 30.885515, 22.905287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441114, -0.364270, -0.820198,
		0.258138, 0.926798, -0.272783,
		0.859525, -0.091396, 0.502856,
		36.582043, 30.858097, 23.056143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.544838, 31.317272, 22.384789>,  <35.980373, 30.922073, 22.704144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.544838, 31.317272, 22.384789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.757050, 31.032698, 22.569138>,  <36.884377, 30.861954, 22.679747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.757050, 31.032698, 22.569138>,  <36.544838, 31.317272, 22.384789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.757050, 31.032698, 22.569138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451902, -0.222614, -0.863845,
		0.717166, 0.666560, 0.203396,
		0.530526, -0.711435, 0.460871,
		36.916206, 30.819267, 22.707399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.278038, 31.356144, 22.134998>,  <36.544838, 31.317272, 22.384789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.278038, 31.356144, 22.134998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.276005, 30.988874, 22.293455>,  <37.274784, 30.768513, 22.388529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.276005, 30.988874, 22.293455>,  <37.278038, 31.356144, 22.134998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.276005, 30.988874, 22.293455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461396, -0.353612, -0.813678,
		0.887180, 0.178642, 0.425440,
		-0.005083, -0.918175, 0.396142,
		37.274479, 30.713423, 22.412298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.926785, 31.111467, 21.934174>,  <37.278038, 31.356144, 22.134998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.926785, 31.111467, 21.934174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.699314, 30.793831, 22.019991>,  <37.562832, 30.603249, 22.071482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.699314, 30.793831, 22.019991>,  <37.926785, 31.111467, 21.934174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.699314, 30.793831, 22.019991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334041, -0.461293, -0.821965,
		0.751684, -0.395762, 0.527584,
		-0.568672, -0.794092, 0.214545,
		37.528713, 30.555603, 22.084354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.326458, 30.584467, 21.769432>,  <37.926785, 31.111467, 21.934174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.326458, 30.584467, 21.769432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.951893, 30.444105, 21.769392>,  <37.727154, 30.359888, 21.769367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.951893, 30.444105, 21.769392>,  <38.326458, 30.584467, 21.769432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.951893, 30.444105, 21.769392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133657, -0.356402, -0.924724,
		0.324455, -0.865935, 0.380639,
		-0.936411, -0.350906, -0.000102,
		37.670971, 30.338833, 21.769361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.379780, 29.946238, 21.588268>,  <38.326458, 30.584467, 21.769432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.379780, 29.946238, 21.588268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.003117, 30.046608, 21.498541>,  <37.777119, 30.106831, 21.444704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.003117, 30.046608, 21.498541>,  <38.379780, 29.946238, 21.588268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.003117, 30.046608, 21.498541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131692, -0.338656, -0.931649,
		-0.309740, -0.906835, 0.285853,
		-0.941657, 0.250924, -0.224318,
		37.720619, 30.121887, 21.431246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.096085, 29.349541, 21.182592>,  <38.379780, 29.946238, 21.588268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.096085, 29.349541, 21.182592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.907185, 29.696032, 21.117311>,  <37.793846, 29.903927, 21.078144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.907185, 29.696032, 21.117311>,  <38.096085, 29.349541, 21.182592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.907185, 29.696032, 21.117311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126101, -0.249633, -0.960095,
		-0.872400, -0.432821, 0.227120,
		-0.472246, 0.866227, -0.163200,
		37.765511, 29.955900, 21.068352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.621166, 28.849346, 21.294498>,  <38.096085, 29.349541, 21.182592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.621166, 28.849346, 21.294498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.652992, 28.475088, 21.432039>,  <38.672089, 28.250532, 21.514565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.652992, 28.475088, 21.432039>,  <38.621166, 28.849346, 21.294498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.652992, 28.475088, 21.432039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357452, 0.295224, 0.886043,
		-0.930536, -0.193411, -0.310958,
		0.079569, -0.935647, 0.343851,
		38.676865, 28.194393, 21.535194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.937855, 28.624432, 21.675142>,  <38.621166, 28.849346, 21.294498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.937855, 28.624432, 21.675142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.215343, 28.357370, 21.783209>,  <38.381836, 28.197134, 21.848049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.215343, 28.357370, 21.783209>,  <37.937855, 28.624432, 21.675142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.215343, 28.357370, 21.783209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271864, 0.104619, 0.956632,
		-0.666961, -0.737087, -0.108934,
		0.693724, -0.667651, 0.270164,
		38.423462, 28.157076, 21.864258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.559151, 28.095718, 22.069685>,  <37.937855, 28.624432, 21.675142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.559151, 28.095718, 22.069685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.949741, 28.099297, 22.155867>,  <38.184093, 28.101444, 22.207577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.949741, 28.099297, 22.155867>,  <37.559151, 28.095718, 22.069685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.949741, 28.099297, 22.155867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215636, 0.047272, 0.975329,
		-0.001459, -0.998842, 0.048089,
		0.976473, 0.008946, 0.215456,
		38.242683, 28.101980, 22.220503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.500778, 27.822836, 22.711004>,  <37.559151, 28.095718, 22.069685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.500778, 27.822836, 22.711004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.872837, 27.969013, 22.696728>,  <38.096073, 28.056719, 22.688162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.872837, 27.969013, 22.696728>,  <37.500778, 27.822836, 22.711004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.872837, 27.969013, 22.696728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066835, -0.072920, 0.995096,
		0.361047, -0.927974, -0.092251,
		0.930149, 0.365442, -0.035693,
		38.151882, 28.078646, 22.686020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.811737, 27.306362, 23.044073>,  <37.500778, 27.822836, 22.711004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.811737, 27.306362, 23.044073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.019714, 27.647497, 23.063351>,  <38.144501, 27.852179, 23.074917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.019714, 27.647497, 23.063351>,  <37.811737, 27.306362, 23.044073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.019714, 27.647497, 23.063351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042964, -0.082461, 0.995668,
		0.853118, -0.515623, -0.079517,
		0.519947, 0.852838, 0.048196,
		38.175697, 27.903349, 23.077810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.219921, 27.253410, 23.710146>,  <37.811737, 27.306362, 23.044073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.219921, 27.253410, 23.710146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.231586, 27.638323, 23.601948>,  <38.238586, 27.869270, 23.537029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.231586, 27.638323, 23.601948>,  <38.219921, 27.253410, 23.710146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.231586, 27.638323, 23.601948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061772, 0.268359, 0.961336,
		0.997664, -0.044744, -0.051616,
		0.029162, 0.962279, -0.270497,
		38.240334, 27.927006, 23.520800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.814533, 27.533482, 24.014132>,  <38.219921, 27.253410, 23.710146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.814533, 27.533482, 24.014132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.568790, 27.836010, 23.924200>,  <38.421345, 28.017527, 23.870241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.568790, 27.836010, 23.924200>,  <38.814533, 27.533482, 24.014132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.568790, 27.836010, 23.924200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085367, 0.346982, 0.933979,
		0.784397, 0.554604, -0.277736,
		-0.614357, 0.756319, -0.224826,
		38.384483, 28.062906, 23.856752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.121956, 28.132669, 24.340879>,  <38.814533, 27.533482, 24.014132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.121956, 28.132669, 24.340879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.738041, 28.218946, 24.268999>,  <38.507694, 28.270712, 24.225872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.738041, 28.218946, 24.268999>,  <39.121956, 28.132669, 24.340879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.738041, 28.218946, 24.268999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080874, 0.400529, 0.912708,
		0.268839, 0.890535, -0.366977,
		-0.959784, 0.215693, -0.179699,
		38.450108, 28.283655, 24.215090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.085533, 28.811424, 24.489071>,  <39.121956, 28.132669, 24.340879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.085533, 28.811424, 24.489071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.703430, 28.693525, 24.498909>,  <38.474167, 28.622786, 24.504812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.703430, 28.693525, 24.498909>,  <39.085533, 28.811424, 24.489071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.703430, 28.693525, 24.498909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206337, 0.723673, 0.658576,
		-0.211913, 0.624035, -0.752112,
		-0.955258, -0.294749, 0.024595,
		38.416851, 28.605101, 24.506287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.547817, 29.369059, 24.309856>,  <39.085533, 28.811424, 24.489071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.547817, 29.369059, 24.309856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.357010, 29.090681, 24.524559>,  <38.242523, 28.923655, 24.653381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.357010, 29.090681, 24.524559>,  <38.547817, 29.369059, 24.309856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.357010, 29.090681, 24.524559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370584, 0.713046, 0.595175,
		-0.796943, 0.084997, -0.598045,
		-0.477022, -0.695946, 0.536758,
		38.213902, 28.881897, 24.685587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.929596, 29.720636, 24.602678>,  <38.547817, 29.369059, 24.309856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.929596, 29.720636, 24.602678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.976101, 29.404404, 24.843164>,  <38.004005, 29.214664, 24.987455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.976101, 29.404404, 24.843164>,  <37.929596, 29.720636, 24.602678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.976101, 29.404404, 24.843164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435166, 0.503580, 0.746350,
		-0.892812, -0.348404, -0.285486,
		0.116266, -0.790583, 0.601215,
		38.010983, 29.167229, 25.023529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.269890, 29.623335, 24.850481>,  <37.929596, 29.720636, 24.602678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.269890, 29.623335, 24.850481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.525009, 29.443924, 25.100933>,  <37.678082, 29.336277, 25.251204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.525009, 29.443924, 25.100933>,  <37.269890, 29.623335, 24.850481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.525009, 29.443924, 25.100933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395470, 0.506886, 0.765944,
		-0.660922, -0.736133, 0.145912,
		0.637797, -0.448526, 0.626131,
		37.716347, 29.309366, 25.288773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.785480, 29.368532, 25.336010>,  <37.269890, 29.623335, 24.850481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.785480, 29.368532, 25.336010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.148674, 29.404137, 25.499784>,  <37.366589, 29.425499, 25.598049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.148674, 29.404137, 25.499784>,  <36.785480, 29.368532, 25.336010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.148674, 29.404137, 25.499784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400604, 0.470810, 0.786038,
		-0.122800, -0.877733, 0.463147,
		0.907985, 0.089013, 0.409439,
		37.421070, 29.430841, 25.622616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.597408, 29.344677, 26.006067>,  <36.785480, 29.368532, 25.336010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.597408, 29.344677, 26.006067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.976677, 29.471539, 26.013918>,  <37.204239, 29.547655, 26.018627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.976677, 29.471539, 26.013918>,  <36.597408, 29.344677, 26.006067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.976677, 29.471539, 26.013918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189260, 0.514046, 0.836623,
		0.255251, -0.796975, 0.547428,
		0.948171, 0.317155, 0.019625,
		37.261127, 29.566685, 26.019806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.772003, 29.256197, 26.658707>,  <36.597408, 29.344677, 26.006067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.772003, 29.256197, 26.658707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.040451, 29.519964, 26.523199>,  <37.201519, 29.678225, 26.441895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.040451, 29.519964, 26.523199>,  <36.772003, 29.256197, 26.658707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.040451, 29.519964, 26.523199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064416, 0.507106, 0.859473,
		0.738544, -0.554988, 0.382807,
		0.671121, 0.659417, -0.338770,
		37.241787, 29.717789, 26.421568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.289833, 29.283239, 27.210032>,  <36.772003, 29.256197, 26.658707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.289833, 29.283239, 27.210032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.304085, 29.614111, 26.985708>,  <37.312637, 29.812634, 26.851114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.304085, 29.614111, 26.985708>,  <37.289833, 29.283239, 27.210032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.304085, 29.614111, 26.985708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294023, 0.545005, 0.785187,
		0.955134, 0.136914, 0.262629,
		0.035631, 0.827178, -0.560809,
		37.314774, 29.862265, 26.817465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.848808, 29.756136, 27.565872>,  <37.289833, 29.283239, 27.210032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.848808, 29.756136, 27.565872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.608986, 29.969629, 27.327324>,  <37.465092, 30.097725, 27.184195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.608986, 29.969629, 27.327324>,  <37.848808, 29.756136, 27.565872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.608986, 29.969629, 27.327324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213279, 0.611655, 0.761834,
		0.771388, 0.583958, -0.252890,
		-0.599560, 0.533734, -0.596369,
		37.429119, 30.129749, 27.148413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.964741, 30.417583, 27.812534>,  <37.848808, 29.756136, 27.565872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.964741, 30.417583, 27.812534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.607918, 30.455576, 27.635805>,  <37.393822, 30.478371, 27.529768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.607918, 30.455576, 27.635805>,  <37.964741, 30.417583, 27.812534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.607918, 30.455576, 27.635805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396815, 0.303219, 0.866369,
		0.216257, 0.948176, -0.232800,
		-0.892060, 0.094980, -0.441824,
		37.340302, 30.484070, 27.503258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.812782, 31.059031, 27.984812>,  <37.964741, 30.417583, 27.812534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.812782, 31.059031, 27.984812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.463871, 30.921871, 27.845358>,  <37.254524, 30.839575, 27.761686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.463871, 30.921871, 27.845358>,  <37.812782, 31.059031, 27.984812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.463871, 30.921871, 27.845358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466586, 0.370236, 0.803258,
		-0.146359, 0.863334, -0.482942,
		-0.872282, -0.342898, -0.348632,
		37.202187, 30.819002, 27.740768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.317791, 31.685902, 27.875660>,  <37.812782, 31.059031, 27.984812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.317791, 31.685902, 27.875660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.122425, 31.344475, 27.948193>,  <37.005207, 31.139620, 27.991713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.122425, 31.344475, 27.948193>,  <37.317791, 31.685902, 27.875660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.122425, 31.344475, 27.948193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427172, 0.415072, 0.803268,
		-0.760907, 0.314866, -0.567345,
		-0.488411, -0.853566, 0.181329,
		36.975903, 31.088406, 28.002592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.588184, 31.846430, 27.928532>,  <37.317791, 31.685902, 27.875660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.588184, 31.846430, 27.928532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.666485, 31.501625, 28.115557>,  <36.713463, 31.294743, 28.227772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.666485, 31.501625, 28.115557>,  <36.588184, 31.846430, 27.928532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.666485, 31.501625, 28.115557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304825, 0.399683, 0.864486,
		-0.932076, -0.311746, -0.184526,
		0.195748, -0.862014, 0.467562,
		36.725208, 31.243021, 28.255825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.979603, 31.792633, 28.397446>,  <36.588184, 31.846430, 27.928532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.979603, 31.792633, 28.397446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.256138, 31.552828, 28.558756>,  <36.422058, 31.408945, 28.655542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.256138, 31.552828, 28.558756>,  <35.979603, 31.792633, 28.397446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.256138, 31.552828, 28.558756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271485, 0.301708, 0.913930,
		-0.669584, -0.741321, 0.045824,
		0.691341, -0.599512, 0.403277,
		36.463539, 31.372974, 28.679739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.735916, 31.712086, 29.005974>,  <35.979603, 31.792633, 28.397446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.735916, 31.712086, 29.005974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.100445, 31.557829, 29.063635>,  <36.319160, 31.465275, 29.098230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.100445, 31.557829, 29.063635>,  <35.735916, 31.712086, 29.005974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.100445, 31.557829, 29.063635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001634, 0.346742, 0.937959,
		-0.411700, -0.855015, 0.315362,
		0.911318, -0.385642, 0.144150,
		36.373840, 31.442137, 29.106880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.615601, 31.230211, 29.536535>,  <35.735916, 31.712086, 29.005974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.615601, 31.230211, 29.536535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.997387, 31.349533, 29.538116>,  <36.226460, 31.421125, 29.539064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.997387, 31.349533, 29.538116>,  <35.615601, 31.230211, 29.536535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.997387, 31.349533, 29.538116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017889, 0.044009, 0.998871,
		0.297793, -0.953456, 0.047341,
		0.954463, 0.298304, 0.003951,
		36.283726, 31.439024, 29.539301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.829819, 30.977036, 30.126423>,  <35.615601, 31.230211, 29.536535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.829819, 30.977036, 30.126423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.113388, 31.238791, 30.021191>,  <36.283527, 31.395844, 29.958052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.113388, 31.238791, 30.021191>,  <35.829819, 30.977036, 30.126423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.113388, 31.238791, 30.021191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198878, 0.172400, 0.964741,
		0.676669, -0.736244, -0.007925,
		0.708919, 0.654387, -0.263081,
		36.326065, 31.435106, 29.942266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.456234, 30.825201, 30.593977>,  <35.829819, 30.977036, 30.126423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.456234, 30.825201, 30.593977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.512043, 31.202776, 30.474304>,  <36.545528, 31.429321, 30.402500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.512043, 31.202776, 30.474304>,  <36.456234, 30.825201, 30.593977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.512043, 31.202776, 30.474304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342100, 0.237585, 0.909132,
		0.929247, -0.229199, -0.289772,
		0.139527, 0.943939, -0.299184,
		36.553902, 31.485958, 30.384548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.092762, 30.954205, 30.719368>,  <36.456234, 30.825201, 30.593977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.092762, 30.954205, 30.719368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.920307, 31.315016, 30.710762>,  <36.816833, 31.531502, 30.705599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.920307, 31.315016, 30.710762>,  <37.092762, 30.954205, 30.719368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.920307, 31.315016, 30.710762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442145, 0.231996, 0.866421,
		0.786527, 0.364038, -0.498851,
		-0.431142, 0.902028, -0.021513,
		36.790966, 31.585625, 30.704308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.672825, 31.410433, 30.939295>,  <37.092762, 30.954205, 30.719368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.672825, 31.410433, 30.939295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.314980, 31.579119, 30.998394>,  <37.100273, 31.680330, 31.033854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.314980, 31.579119, 30.998394>,  <37.672825, 31.410433, 30.939295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.314980, 31.579119, 30.998394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242284, 0.179956, 0.953370,
		0.375462, 0.888691, -0.263165,
		-0.894610, 0.421715, 0.147749,
		37.046597, 31.705633, 31.042719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.813850, 31.901623, 31.345537>,  <37.672825, 31.410433, 30.939295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.813850, 31.901623, 31.345537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.419044, 31.868225, 31.400415>,  <37.182159, 31.848186, 31.433342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.419044, 31.868225, 31.400415>,  <37.813850, 31.901623, 31.345537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.419044, 31.868225, 31.400415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129495, 0.091589, 0.987341,
		-0.095004, 0.992290, -0.079588,
		-0.987018, -0.083495, 0.137198,
		37.122940, 31.843176, 31.441574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.622913, 32.452145, 31.759729>,  <37.813850, 31.901623, 31.345537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.622913, 32.452145, 31.759729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.337280, 32.175247, 31.801466>,  <37.165901, 32.009109, 31.826508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.337280, 32.175247, 31.801466>,  <37.622913, 32.452145, 31.759729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.337280, 32.175247, 31.801466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104031, 0.042462, 0.993667,
		-0.692290, 0.720414, 0.041693,
		-0.714082, -0.692243, 0.104341,
		37.123055, 31.967575, 31.832767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.179558, 32.820415, 32.295036>,  <37.622913, 32.452145, 31.759729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.179558, 32.820415, 32.295036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.095123, 32.429497, 32.302399>,  <37.044460, 32.194946, 32.306816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.095123, 32.429497, 32.302399>,  <37.179558, 32.820415, 32.295036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.095123, 32.429497, 32.302399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153756, -0.014605, 0.988001,
		-0.965298, 0.211386, 0.153348,
		-0.211089, -0.977293, 0.018403,
		37.031796, 32.136311, 32.307919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.758217, 32.698750, 33.077827>,  <37.179558, 32.820415, 32.295036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.758217, 32.698750, 33.077827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.847889, 32.333008, 32.942947>,  <36.901691, 32.113564, 32.862019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.847889, 32.333008, 32.942947>,  <36.758217, 32.698750, 33.077827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.847889, 32.333008, 32.942947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106257, -0.321015, 0.941095,
		-0.968739, -0.246802, 0.025192,
		0.224177, -0.914352, -0.337204,
		36.915142, 32.058701, 32.841785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.223160, 32.158726, 33.286167>,  <36.758217, 32.698750, 33.077827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.223160, 32.158726, 33.286167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.568062, 31.965324, 33.225845>,  <36.775002, 31.849283, 33.189651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.568062, 31.965324, 33.225845>,  <36.223160, 32.158726, 33.286167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.568062, 31.965324, 33.225845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036393, -0.356134, 0.933726,
		-0.505171, -0.799618, -0.324673,
		0.862252, -0.483508, -0.150808,
		36.826736, 31.820272, 33.180603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.010227, 31.429546, 33.464149>,  <36.223160, 32.158726, 33.286167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.010227, 31.429546, 33.464149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.409603, 31.450201, 33.472702>,  <36.649227, 31.462593, 33.477833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.409603, 31.450201, 33.472702>,  <36.010227, 31.429546, 33.464149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.409603, 31.450201, 33.472702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001759, -0.353404, 0.935469,
		0.055863, -0.934044, -0.352761,
		0.998437, 0.051637, 0.021385,
		36.709133, 31.465693, 33.479118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.286545, 30.749350, 33.737755>,  <36.010227, 31.429546, 33.464149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.286545, 30.749350, 33.737755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.560936, 31.035721, 33.789734>,  <36.725571, 31.207544, 33.820923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.560936, 31.035721, 33.789734>,  <36.286545, 30.749350, 33.737755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.560936, 31.035721, 33.789734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070186, -0.242865, 0.967518,
		0.724233, -0.654571, -0.216848,
		0.685974, 0.715928, 0.129949,
		36.766727, 31.250500, 33.828720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.741379, 30.481575, 34.237667>,  <36.286545, 30.749350, 33.737755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.741379, 30.481575, 34.237667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.822727, 30.872953, 34.251972>,  <36.871536, 31.107780, 34.260555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.822727, 30.872953, 34.251972>,  <36.741379, 30.481575, 34.237667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.822727, 30.872953, 34.251972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138182, -0.064843, 0.988282,
		0.969301, -0.196048, -0.148391,
		0.203373, 0.978448, 0.035762,
		36.883739, 31.166489, 34.262699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.364414, 30.460485, 34.662041>,  <36.741379, 30.481575, 34.237667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.364414, 30.460485, 34.662041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.178909, 30.814201, 34.683792>,  <37.067608, 31.026430, 34.696842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.178909, 30.814201, 34.683792>,  <37.364414, 30.460485, 34.662041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.178909, 30.814201, 34.683792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138516, 0.011746, 0.990290,
		0.875064, 0.466792, -0.127936,
		-0.463762, 0.884289, 0.054380,
		37.039780, 31.079489, 34.700108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.780079, 30.715677, 35.157280>,  <37.364414, 30.460485, 34.662041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.780079, 30.715677, 35.157280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.461449, 30.957336, 35.148579>,  <37.270271, 31.102331, 35.143360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.461449, 30.957336, 35.148579>,  <37.780079, 30.715677, 35.157280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.461449, 30.957336, 35.148579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013939, 0.054323, 0.998426,
		0.604378, 0.795019, -0.051694,
		-0.796576, 0.604147, -0.021749,
		37.222477, 31.138580, 35.142056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.988354, 31.395794, 35.386314>,  <37.780079, 30.715677, 35.157280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.988354, 31.395794, 35.386314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.590458, 31.398655, 35.427185>,  <37.351719, 31.400372, 35.451706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.590458, 31.398655, 35.427185>,  <37.988354, 31.395794, 35.386314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.590458, 31.398655, 35.427185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102171, 0.139192, 0.984980,
		-0.007175, 0.990239, -0.139191,
		-0.994741, 0.007154, 0.102172,
		37.292034, 31.400801, 35.457836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.891163, 31.889002, 35.834557>,  <37.988354, 31.395794, 35.386314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.891163, 31.889002, 35.834557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.539982, 31.698965, 35.858185>,  <37.329273, 31.584942, 35.872364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.539982, 31.698965, 35.858185>,  <37.891163, 31.889002, 35.834557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.539982, 31.698965, 35.858185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017509, 0.091448, 0.995656,
		-0.478432, 0.875171, -0.071968,
		-0.877950, -0.475093, 0.059075,
		37.276596, 31.556437, 35.875908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.312847, 32.336487, 36.189400>,  <37.891163, 31.889002, 35.834557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.312847, 32.336487, 36.189400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.267815, 31.944433, 36.254726>,  <37.240795, 31.709202, 36.293922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.267815, 31.944433, 36.254726>,  <37.312847, 32.336487, 36.189400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.267815, 31.944433, 36.254726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038003, 0.159995, 0.986386,
		-0.992916, 0.117251, 0.019236,
		-0.112577, -0.980129, 0.163318,
		37.234043, 31.650394, 36.303722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.758804, 32.216946, 36.679581>,  <37.312847, 32.336487, 36.189400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.758804, 32.216946, 36.679581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.050392, 31.943548, 36.694748>,  <37.225346, 31.779510, 36.703850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.050392, 31.943548, 36.694748>,  <36.758804, 32.216946, 36.679581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.050392, 31.943548, 36.694748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141961, 0.205130, 0.968385,
		-0.669662, -0.700542, 0.246563,
		0.728972, -0.683493, 0.037918,
		37.269085, 31.738501, 36.706123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.659431, 31.615679, 37.234951>,  <36.758804, 32.216946, 36.679581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.659431, 31.615679, 37.234951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.037827, 31.713055, 37.149300>,  <37.264862, 31.771481, 37.097908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.037827, 31.713055, 37.149300>,  <36.659431, 31.615679, 37.234951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.037827, 31.713055, 37.149300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211141, 0.038618, 0.976692,
		0.246036, -0.969147, -0.014868,
		0.945984, 0.243441, -0.214128,
		37.321621, 31.786087, 37.085060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.035614, 31.336578, 37.804699>,  <36.659431, 31.615679, 37.234951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.035614, 31.336578, 37.804699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.254192, 31.631882, 37.646523>,  <37.385338, 31.809065, 37.551617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.254192, 31.631882, 37.646523>,  <37.035614, 31.336578, 37.804699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.254192, 31.631882, 37.646523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204628, 0.340162, 0.917833,
		0.812112, -0.582462, 0.034811,
		0.546444, 0.738260, -0.395438,
		37.418125, 31.853359, 37.527889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.766663, 31.468998, 38.006687>,  <37.035614, 31.336578, 37.804699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.766663, 31.468998, 38.006687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.674423, 31.836214, 37.877678>,  <37.619080, 32.056545, 37.800270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.674423, 31.836214, 37.877678>,  <37.766663, 31.468998, 38.006687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.674423, 31.836214, 37.877678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374674, 0.389678, 0.841291,
		0.898021, 0.073160, -0.433826,
		-0.230602, 0.918041, -0.322528,
		37.605244, 32.111626, 37.780918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.228352, 31.899799, 38.307590>,  <37.766663, 31.468998, 38.006687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.228352, 31.899799, 38.307590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.964512, 32.189415, 38.226898>,  <37.806210, 32.363186, 38.178482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.964512, 32.189415, 38.226898>,  <38.228352, 31.899799, 38.307590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.964512, 32.189415, 38.226898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398079, 0.564186, 0.723345,
		0.637545, 0.396812, -0.660361,
		-0.659598, 0.724040, -0.201731,
		37.766632, 32.406628, 38.166378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.591152, 32.686520, 38.282108>,  <38.228352, 31.899799, 38.307590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.591152, 32.686520, 38.282108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.197277, 32.689178, 38.351791>,  <37.960953, 32.690773, 38.393600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.197277, 32.689178, 38.351791>,  <38.591152, 32.686520, 38.282108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.197277, 32.689178, 38.351791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144400, 0.590999, 0.793643,
		-0.097684, 0.806645, -0.582908,
		-0.984686, 0.006645, 0.174210,
		37.901871, 32.691174, 38.404053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.462528, 33.379177, 38.485943>,  <38.591152, 32.686520, 38.282108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.462528, 33.379177, 38.485943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.129608, 33.191277, 38.603657>,  <37.929855, 33.078537, 38.674286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.129608, 33.191277, 38.603657>,  <38.462528, 33.379177, 38.485943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.129608, 33.191277, 38.603657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140529, 0.692361, 0.707734,
		-0.536210, 0.547695, -0.642269,
		-0.832304, -0.469752, 0.294284,
		37.879917, 33.050350, 38.691940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.930790, 33.861774, 38.568707>,  <38.462528, 33.379177, 38.485943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.930790, 33.861774, 38.568707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.864136, 33.563438, 38.826687>,  <37.824142, 33.384438, 38.981476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.864136, 33.563438, 38.826687>,  <37.930790, 33.861774, 38.568707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.864136, 33.563438, 38.826687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166907, 0.665993, 0.727046,
		-0.971790, 0.013503, -0.235462,
		-0.166633, -0.745836, 0.644951,
		37.814144, 33.339687, 39.020172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.252827, 33.891743, 38.842503>,  <37.930790, 33.861774, 38.568707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.252827, 33.891743, 38.842503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.473312, 33.705730, 39.119602>,  <37.605606, 33.594124, 39.285862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.473312, 33.705730, 39.119602>,  <37.252827, 33.891743, 38.842503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.473312, 33.705730, 39.119602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331579, 0.639808, 0.693326,
		-0.765646, -0.611876, 0.198479,
		0.551219, -0.465031, 0.692751,
		37.638680, 33.566223, 39.327427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.829689, 33.876015, 39.419754>,  <37.252827, 33.891743, 38.842503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.829689, 33.876015, 39.419754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.199829, 33.833469, 39.565308>,  <37.421913, 33.807941, 39.652641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.199829, 33.833469, 39.565308>,  <36.829689, 33.876015, 39.419754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.199829, 33.833469, 39.565308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202396, 0.673004, 0.711408,
		-0.320567, -0.731950, 0.601237,
		0.925350, -0.106366, 0.363887,
		37.477432, 33.801559, 39.674473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.753498, 33.828537, 40.151352>,  <36.829689, 33.876015, 39.419754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.753498, 33.828537, 40.151352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.137806, 33.925373, 40.097221>,  <37.368389, 33.983475, 40.064743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.137806, 33.925373, 40.097221>,  <36.753498, 33.828537, 40.151352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.137806, 33.925373, 40.097221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042366, 0.610315, 0.791025,
		0.274091, -0.754260, 0.596629,
		0.960770, 0.242089, -0.135327,
		37.426037, 33.998001, 40.056622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.951763, 33.811161, 40.873749>,  <36.753498, 33.828537, 40.151352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.951763, 33.811161, 40.873749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.232212, 34.006279, 40.665714>,  <37.400482, 34.123348, 40.540894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.232212, 34.006279, 40.665714>,  <36.951763, 33.811161, 40.873749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.232212, 34.006279, 40.665714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208256, 0.557499, 0.803632,
		0.681952, -0.671754, 0.289289,
		0.701122, 0.487792, -0.520084,
		37.442551, 34.152615, 40.509689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.540588, 33.805290, 41.240734>,  <36.951763, 33.811161, 40.873749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.540588, 33.805290, 41.240734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.581139, 34.119774, 40.996899>,  <37.605469, 34.308464, 40.850597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.581139, 34.119774, 40.996899>,  <37.540588, 33.805290, 41.240734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.581139, 34.119774, 40.996899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185698, 0.587025, 0.787984,
		0.977363, -0.193085, -0.086485,
		0.101379, 0.786206, -0.609592,
		37.611553, 34.355637, 40.814022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.116383, 34.135048, 41.508335>,  <37.540588, 33.805290, 41.240734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.116383, 34.135048, 41.508335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.922749, 34.405449, 41.286102>,  <37.806568, 34.567692, 41.152763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.922749, 34.405449, 41.286102>,  <38.116383, 34.135048, 41.508335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.922749, 34.405449, 41.286102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283965, 0.721943, 0.631001,
		0.827660, 0.147695, -0.541447,
		-0.484090, 0.676006, -0.555583,
		37.777523, 34.608250, 41.119427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.593407, 34.742653, 41.343876>,  <38.116383, 34.135048, 41.508335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.593407, 34.742653, 41.343876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.219849, 34.882339, 41.313183>,  <37.995712, 34.966152, 41.294769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.219849, 34.882339, 41.313183>,  <38.593407, 34.742653, 41.343876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.219849, 34.882339, 41.313183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186275, 0.658382, 0.729270,
		0.305191, 0.666769, -0.679911,
		-0.933895, 0.349216, -0.076730,
		37.939678, 34.987103, 41.290165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.742428, 35.394302, 41.511311>,  <38.593407, 34.742653, 41.343876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.742428, 35.394302, 41.511311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.342663, 35.391060, 41.524612>,  <38.102802, 35.389114, 41.532593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.342663, 35.391060, 41.524612>,  <38.742428, 35.394302, 41.511311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.342663, 35.391060, 41.524612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019854, 0.654092, 0.756154,
		-0.027880, 0.756372, -0.653548,
		-0.999414, -0.008106, 0.033253,
		38.042839, 35.388630, 41.534588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.549057, 36.109867, 41.432354>,  <38.742428, 35.394302, 41.511311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.549057, 36.109867, 41.432354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.237675, 35.921036, 41.597832>,  <38.050846, 35.807735, 41.697117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.237675, 35.921036, 41.597832>,  <38.549057, 36.109867, 41.432354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.237675, 35.921036, 41.597832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062343, 0.597661, 0.799321,
		-0.624591, 0.648031, -0.435824,
		-0.778460, -0.472078, 0.413694,
		38.004135, 35.779411, 41.721939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.019024, 36.573463, 41.485798>,  <38.549057, 36.109867, 41.432354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.019024, 36.573463, 41.485798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.936172, 36.298916, 41.764652>,  <37.886459, 36.134190, 41.931965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.936172, 36.298916, 41.764652>,  <38.019024, 36.573463, 41.485798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.936172, 36.298916, 41.764652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134110, 0.685940, 0.715192,
		-0.969077, 0.241632, -0.050031,
		-0.207132, -0.686367, 0.697135,
		37.874035, 36.093006, 41.973793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.588882, 36.919014, 41.989563>,  <38.019024, 36.573463, 41.485798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.588882, 36.919014, 41.989563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.767349, 36.611591, 42.172977>,  <37.874428, 36.427139, 42.283028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.767349, 36.611591, 42.172977>,  <37.588882, 36.919014, 41.989563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.767349, 36.611591, 42.172977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156647, 0.571517, 0.805500,
		-0.881135, -0.287556, 0.375383,
		0.446164, -0.768557, 0.458539,
		37.901199, 36.381023, 42.310539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.483902, 37.653152, 42.054897>,  <37.588882, 36.919014, 41.989563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.483902, 37.653152, 42.054897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.373207, 37.917366, 41.775726>,  <37.306789, 38.075893, 41.608223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.373207, 37.917366, 41.775726>,  <37.483902, 37.653152, 42.054897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.373207, 37.917366, 41.775726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.853692, -0.502430, -0.137015,
		-0.441165, 0.557902, 0.702936,
		-0.276735, 0.660537, -0.697931,
		37.290188, 38.115528, 41.566345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.988178, 37.831387, 42.555622>,  <37.483902, 37.653152, 42.054897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.988178, 37.831387, 42.555622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.641994, 38.026352, 42.601940>,  <37.434284, 38.143333, 42.629730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.641994, 38.026352, 42.601940>,  <37.988178, 37.831387, 42.555622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.641994, 38.026352, 42.601940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497397, -0.808400, -0.314778,
		-0.059819, -0.330024, 0.942075,
		-0.865458, 0.487415, 0.115796,
		37.382359, 38.172577, 42.636681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.257832, 37.513123, 43.208134>,  <37.988178, 37.831387, 42.555622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.257832, 37.513123, 43.208134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.904392, 37.328915, 43.174255>,  <37.692329, 37.218388, 43.153927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.904392, 37.328915, 43.174255>,  <38.257832, 37.513123, 43.208134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.904392, 37.328915, 43.174255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437926, -0.748720, -0.497634,
		0.165758, -0.476799, 0.863242,
		-0.883598, -0.460523, -0.084697,
		37.639313, 37.190758, 43.148846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.504368, 36.851048, 42.997089>,  <38.257832, 37.513123, 43.208134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.504368, 36.851048, 42.997089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.108009, 36.800007, 42.979961>,  <37.870193, 36.769382, 42.969685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.108009, 36.800007, 42.979961>,  <38.504368, 36.851048, 42.997089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.108009, 36.800007, 42.979961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133687, -0.896178, -0.423075,
		0.015615, -0.424949, 0.905083,
		-0.990901, -0.127604, -0.042816,
		37.810738, 36.761726, 42.967117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.389801, 36.144085, 43.108860>,  <38.504368, 36.851048, 42.997089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.389801, 36.144085, 43.108860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.054707, 36.289589, 42.945950>,  <37.853649, 36.376892, 42.848206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.054707, 36.289589, 42.945950>,  <38.389801, 36.144085, 43.108860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.054707, 36.289589, 42.945950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085068, -0.823654, -0.560675,
		-0.539404, -0.435054, 0.720952,
		-0.837739, 0.363761, -0.407273,
		37.803387, 36.398716, 42.823769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.079716, 35.533127, 42.989937>,  <38.389801, 36.144085, 43.108860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.079716, 35.533127, 42.989937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.896297, 35.827579, 42.790798>,  <37.786247, 36.004250, 42.671314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.896297, 35.827579, 42.790798>,  <38.079716, 35.533127, 42.989937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.896297, 35.827579, 42.790798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135863, -0.611695, -0.779339,
		-0.878223, -0.289726, 0.380505,
		-0.458548, 0.736130, -0.497842,
		37.758732, 36.048420, 42.641445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.487885, 35.163239, 42.834080>,  <38.079716, 35.533127, 42.989937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.487885, 35.163239, 42.834080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.580082, 35.447506, 42.568199>,  <37.635399, 35.618065, 42.408672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.580082, 35.447506, 42.568199>,  <37.487885, 35.163239, 42.834080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.580082, 35.447506, 42.568199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234790, -0.622291, -0.746745,
		-0.944324, 0.328183, 0.023425,
		0.230492, 0.710669, -0.664698,
		37.649231, 35.660706, 42.368790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.956440, 35.294243, 42.331322>,  <37.487885, 35.163239, 42.834080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.956440, 35.294243, 42.331322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.287003, 35.411766, 42.139187>,  <37.485340, 35.482281, 42.023907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.287003, 35.411766, 42.139187>,  <36.956440, 35.294243, 42.331322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.287003, 35.411766, 42.139187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295921, -0.499136, -0.814429,
		-0.479041, 0.815193, -0.325546,
		0.826408, 0.293809, -0.480339,
		37.534924, 35.499908, 41.995087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.750801, 35.270302, 41.711315>,  <36.956440, 35.294243, 42.331322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.750801, 35.270302, 41.711315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.143982, 35.311852, 41.650639>,  <37.379890, 35.336781, 41.614231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.143982, 35.311852, 41.650639>,  <36.750801, 35.270302, 41.711315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.143982, 35.311852, 41.650639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067294, -0.564582, -0.822629,
		-0.171092, 0.818816, -0.547968,
		0.982954, 0.103870, -0.151696,
		37.438869, 35.343014, 41.605129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.817730, 35.441082, 41.021774>,  <36.750801, 35.270302, 41.711315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.817730, 35.441082, 41.021774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.189190, 35.323879, 41.112774>,  <37.412067, 35.253559, 41.167374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.189190, 35.323879, 41.112774>,  <36.817730, 35.441082, 41.021774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.189190, 35.323879, 41.112774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016927, -0.579170, -0.815031,
		0.370566, 0.760731, -0.532887,
		0.928652, -0.293003, 0.227498,
		37.467785, 35.235977, 41.181023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.188828, 35.433434, 40.272415>,  <36.817730, 35.441082, 41.021774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.188828, 35.433434, 40.272415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.384163, 35.205120, 40.536453>,  <37.501366, 35.068130, 40.694878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.384163, 35.205120, 40.536453>,  <37.188828, 35.433434, 40.272415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.384163, 35.205120, 40.536453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060638, -0.732402, -0.678167,
		0.870544, 0.371203, -0.323050,
		0.488340, -0.570786, 0.660097,
		37.530666, 35.033886, 40.734482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.738194, 35.333248, 39.930878>,  <37.188828, 35.433434, 40.272415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.738194, 35.333248, 39.930878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.706596, 35.039871, 40.200935>,  <37.687637, 34.863846, 40.362968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.706596, 35.039871, 40.200935>,  <37.738194, 35.333248, 39.930878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.706596, 35.039871, 40.200935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091748, -0.679737, -0.727695,
		0.992644, 0.004459, 0.120987,
		-0.078995, -0.733443, 0.675146,
		37.682899, 34.819839, 40.403481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.386032, 34.879997, 40.073444>,  <37.738194, 35.333248, 39.930878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.386032, 34.879997, 40.073444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.052841, 34.678429, 40.164848>,  <37.852928, 34.557487, 40.219688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.052841, 34.678429, 40.164848>,  <38.386032, 34.879997, 40.073444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.052841, 34.678429, 40.164848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300328, -0.758619, -0.578187,
		0.464710, -0.412989, 0.783253,
		-0.832976, -0.503922, 0.228506,
		37.802948, 34.527252, 40.233398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.658886, 34.206718, 39.864792>,  <38.386032, 34.879997, 40.073444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.658886, 34.206718, 39.864792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.273136, 34.137707, 39.945015>,  <38.041687, 34.096298, 39.993149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.273136, 34.137707, 39.945015>,  <38.658886, 34.206718, 39.864792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.273136, 34.137707, 39.945015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032196, -0.828994, -0.558330,
		0.262591, -0.531979, 0.805012,
		-0.964370, -0.172530, 0.200559,
		37.983826, 34.085949, 40.005184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.506958, 33.571316, 40.360699>,  <38.658886, 34.206718, 39.864792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.506958, 33.571316, 40.360699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.213737, 33.651402, 40.100681>,  <38.037807, 33.699451, 39.944672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.213737, 33.651402, 40.100681>,  <38.506958, 33.571316, 40.360699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.213737, 33.651402, 40.100681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052891, -0.936024, -0.347938,
		-0.678118, -0.289437, 0.675561,
		-0.733048, 0.200212, -0.650043,
		37.993824, 33.711464, 39.905666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.288834, 32.887451, 40.198326>,  <38.506958, 33.571316, 40.360699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.288834, 32.887451, 40.198326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.089920, 33.089817, 39.916401>,  <37.970570, 33.211235, 39.747246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.089920, 33.089817, 39.916401>,  <38.288834, 32.887451, 40.198326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.089920, 33.089817, 39.916401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036014, -0.799645, -0.599392,
		-0.866837, -0.323454, 0.379435,
		-0.497289, 0.505911, -0.704810,
		37.940735, 33.241589, 39.704956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.819363, 32.491619, 39.983906>,  <38.288834, 32.887451, 40.198326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.819363, 32.491619, 39.983906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.863277, 32.747723, 39.679794>,  <37.889626, 32.901382, 39.497330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.863277, 32.747723, 39.679794>,  <37.819363, 32.491619, 39.983906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.863277, 32.747723, 39.679794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024730, -0.762905, -0.646038,
		-0.993647, 0.089729, -0.067925,
		0.109788, 0.640254, -0.760277,
		37.896214, 32.939800, 39.451710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.265076, 32.469402, 39.640312>,  <37.819363, 32.491619, 39.983906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.265076, 32.469402, 39.640312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.382408, 32.780441, 39.417854>,  <37.452808, 32.967064, 39.284378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.382408, 32.780441, 39.417854>,  <37.265076, 32.469402, 39.640312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.382408, 32.780441, 39.417854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180754, -0.526136, -0.830969,
		-0.938768, 0.344273, -0.013777,
		0.293329, 0.777597, -0.556149,
		37.470406, 33.013721, 39.251011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.789101, 32.480099, 39.037163>,  <37.265076, 32.469402, 39.640312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.789101, 32.480099, 39.037163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.121635, 32.676426, 38.932869>,  <37.321156, 32.794224, 38.870293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.121635, 32.676426, 38.932869>,  <36.789101, 32.480099, 39.037163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.121635, 32.676426, 38.932869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014178, -0.450253, -0.892788,
		-0.555594, 0.745901, -0.367352,
		0.831333, 0.490819, -0.260733,
		37.371037, 32.823673, 38.854649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.592861, 32.815197, 38.404930>,  <36.789101, 32.480099, 39.037163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.592861, 32.815197, 38.404930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.991940, 32.790573, 38.393517>,  <37.231388, 32.775799, 38.386669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.991940, 32.790573, 38.393517>,  <36.592861, 32.815197, 38.404930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.991940, 32.790573, 38.393517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055375, -0.495723, -0.866714,
		0.039209, 0.866296, -0.497989,
		0.997695, -0.061559, -0.028535,
		37.291248, 32.772106, 38.384956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.836704, 33.214962, 37.931271>,  <36.592861, 32.815197, 38.404930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.836704, 33.214962, 37.931271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.118134, 32.932549, 37.963501>,  <37.286991, 32.763100, 37.982841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.118134, 32.932549, 37.963501>,  <36.836704, 33.214962, 37.931271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.118134, 32.932549, 37.963501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141292, -0.250118, -0.957851,
		0.696431, 0.662536, -0.275734,
		0.703577, -0.706036, 0.080578,
		37.329208, 32.720737, 37.987675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.271275, 33.247566, 37.392120>,  <36.836704, 33.214962, 37.931271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.271275, 33.247566, 37.392120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.328320, 32.866989, 37.501244>,  <37.362545, 32.638645, 37.566719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.328320, 32.866989, 37.501244>,  <37.271275, 33.247566, 37.392120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.328320, 32.866989, 37.501244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130463, -0.255153, -0.958059,
		0.981143, 0.172224, 0.087739,
		0.142614, -0.951439, 0.272810,
		37.371105, 32.581558, 37.583088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.979893, 32.900383, 36.990250>,  <37.271275, 33.247566, 37.392120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.979893, 32.900383, 36.990250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.665871, 32.680069, 37.103619>,  <37.477459, 32.547882, 37.171638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.665871, 32.680069, 37.103619>,  <37.979893, 32.900383, 36.990250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.665871, 32.680069, 37.103619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013235, -0.472365, -0.881304,
		0.619289, -0.688118, 0.378121,
		-0.785051, -0.550786, 0.283424,
		37.430355, 32.514832, 37.188644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.236221, 32.204151, 37.163795>,  <37.979893, 32.900383, 36.990250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.236221, 32.204151, 37.163795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.871933, 32.246346, 37.004063>,  <37.653362, 32.271664, 36.908222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.871933, 32.246346, 37.004063>,  <38.236221, 32.204151, 37.163795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.871933, 32.246346, 37.004063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280751, -0.551027, -0.785842,
		-0.302937, -0.827793, 0.472215,
		-0.910718, 0.105486, -0.399330,
		37.598717, 32.277992, 36.884262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.696529, 32.814514, 37.529041>,  <38.236221, 32.204151, 37.163795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.696529, 32.814514, 37.529041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.744480, 32.427040, 37.616020>,  <38.773251, 32.194557, 37.668205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.744480, 32.427040, 37.616020>,  <38.696529, 32.814514, 37.529041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.744480, 32.427040, 37.616020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727501, -0.063328, -0.683178,
		0.675553, 0.240086, 0.697127,
		0.119874, -0.968684, 0.217444,
		38.780441, 32.136436, 37.681255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.368813, 32.720661, 37.829655>,  <38.696529, 32.814514, 37.529041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.368813, 32.720661, 37.829655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.217896, 32.417870, 37.616253>,  <39.127346, 32.236195, 37.488213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.217896, 32.417870, 37.616253>,  <39.368813, 32.720661, 37.829655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.217896, 32.417870, 37.616253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797494, 0.027291, -0.602710,
		0.470801, -0.652864, 0.593392,
		-0.377293, -0.756983, -0.533504,
		39.104706, 32.190773, 37.456203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.650314, 32.037632, 38.060196>,  <39.368813, 32.720661, 37.829655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.650314, 32.037632, 38.060196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.795547, 32.136307, 37.700794>,  <39.882687, 32.195511, 37.485153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.795547, 32.136307, 37.700794>,  <39.650314, 32.037632, 38.060196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.795547, 32.136307, 37.700794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895652, -0.358242, 0.263573,
		-0.256862, -0.900448, -0.351020,
		0.363084, 0.246690, -0.898507,
		39.904472, 32.210312, 37.431244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.083839, 32.662380, 37.905914>,  <39.650314, 32.037632, 38.060196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.083839, 32.662380, 37.905914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.235672, 32.942966, 37.664631>,  <40.326771, 33.111317, 37.519859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.235672, 32.942966, 37.664631>,  <40.083839, 32.662380, 37.905914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.235672, 32.942966, 37.664631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860164, -0.027517, 0.509274,
		0.340639, -0.712174, -0.613818,
		0.379582, 0.701463, -0.603213,
		40.349548, 33.153404, 37.483665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.867477, 32.620056, 37.777050>,  <40.083839, 32.662380, 37.905914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.867477, 32.620056, 37.777050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.862057, 33.008099, 37.680134>,  <40.858803, 33.240925, 37.621983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.862057, 33.008099, 37.680134>,  <40.867477, 32.620056, 37.777050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.862057, 33.008099, 37.680134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960272, 0.080174, 0.267301,
		0.278737, -0.229041, -0.932655,
		-0.013552, 0.970110, -0.242289,
		40.857990, 33.299133, 37.607449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.463306, 32.880524, 37.573471>,  <40.867477, 32.620056, 37.777050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.463306, 32.880524, 37.573471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.310329, 33.184383, 37.783867>,  <41.218544, 33.366699, 37.910103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.310329, 33.184383, 37.783867>,  <41.463306, 32.880524, 37.573471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.310329, 33.184383, 37.783867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892337, 0.155961, 0.423569,
		0.239732, 0.631349, -0.737514,
		-0.382443, 0.759654, 0.525988,
		41.195595, 33.412281, 37.941662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.001778, 33.340031, 37.554356>,  <41.463306, 32.880524, 37.573471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.001778, 33.340031, 37.554356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.759468, 33.413151, 37.864098>,  <41.614082, 33.457024, 38.049942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.759468, 33.413151, 37.864098>,  <42.001778, 33.340031, 37.554356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.759468, 33.413151, 37.864098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795460, 0.159698, 0.584586,
		-0.016802, 0.970094, -0.242149,
		-0.605774, 0.182798, 0.774354,
		41.577736, 33.467991, 38.096405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.155743, 33.989536, 37.836609>,  <42.001778, 33.340031, 37.554356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.155743, 33.989536, 37.836609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.004677, 33.756130, 38.124187>,  <41.914040, 33.616085, 38.296734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.004677, 33.756130, 38.124187>,  <42.155743, 33.989536, 37.836609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.004677, 33.756130, 38.124187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807109, 0.173092, 0.564460,
		-0.453815, 0.793441, 0.405590,
		-0.377662, -0.583516, 0.718944,
		41.891376, 33.581074, 38.339870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.732193, 33.641800, 37.603172>,  <42.155743, 33.989536, 37.836609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.732193, 33.641800, 37.603172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.851929, 33.911304, 37.873417>,  <42.923771, 34.073006, 38.035564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.851929, 33.911304, 37.873417>,  <42.732193, 33.641800, 37.603172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.851929, 33.911304, 37.873417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.951140, 0.266874, 0.155274,
		-0.075685, -0.689078, 0.720724,
		0.299338, 0.673758, 0.675608,
		42.941730, 34.113434, 38.076099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.045368, 33.735458, 36.902210>,  <42.732193, 33.641800, 37.603172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.045368, 33.735458, 36.902210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.112415, 33.348145, 36.828091>,  <43.152645, 33.115757, 36.783619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.112415, 33.348145, 36.828091>,  <43.045368, 33.735458, 36.902210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.112415, 33.348145, 36.828091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960695, 0.202619, -0.189764,
		0.221289, -0.146204, 0.964186,
		0.167618, -0.968282, -0.185295,
		43.162701, 33.057659, 36.772503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.563507, 33.400375, 37.399399>,  <43.045368, 33.735458, 36.902210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.563507, 33.400375, 37.399399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.518696, 33.275204, 37.022141>,  <43.491810, 33.200100, 36.795784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.518696, 33.275204, 37.022141>,  <43.563507, 33.400375, 37.399399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.518696, 33.275204, 37.022141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819117, 0.508257, -0.265935,
		0.562580, -0.802339, 0.199387,
		-0.112030, -0.312931, -0.943145,
		43.485088, 33.181324, 36.739197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.203907, 32.975655, 37.131332>,  <43.563507, 33.400375, 37.399399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.203907, 32.975655, 37.131332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.047573, 33.173733, 36.820972>,  <43.953773, 33.292580, 36.634754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.047573, 33.173733, 36.820972>,  <44.203907, 32.975655, 37.131332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.047573, 33.173733, 36.820972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879532, 0.449485, -0.156160,
		0.271427, -0.743465, -0.611218,
		-0.390833, 0.495200, -0.775904,
		43.930325, 33.322292, 36.588200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.631927, 32.970161, 36.537411>,  <44.203907, 32.975655, 37.131332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.631927, 32.970161, 36.537411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.411560, 33.298103, 36.475018>,  <44.279339, 33.494869, 36.437580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.411560, 33.298103, 36.475018>,  <44.631927, 32.970161, 36.537411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.411560, 33.298103, 36.475018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796553, 0.460796, -0.391371,
		-0.248989, -0.339864, -0.906916,
		-0.550916, 0.819853, -0.155987,
		44.246284, 33.544060, 36.428223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.603191, 33.190498, 35.797722>,  <44.631927, 32.970161, 36.537411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.603191, 33.190498, 35.797722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.498188, 33.512653, 36.010303>,  <44.435184, 33.705944, 36.137852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.498188, 33.512653, 36.010303>,  <44.603191, 33.190498, 35.797722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.498188, 33.512653, 36.010303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802952, 0.487768, -0.342565,
		-0.535123, 0.336805, -0.774730,
		-0.262511, 0.805385, 0.531454,
		44.419434, 33.754269, 36.169739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.548878, 33.757320, 35.255848>,  <44.603191, 33.190498, 35.797722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.548878, 33.757320, 35.255848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.639996, 33.872536, 35.627899>,  <44.694664, 33.941666, 35.851131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.639996, 33.872536, 35.627899>,  <44.548878, 33.757320, 35.255848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.639996, 33.872536, 35.627899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808269, 0.476733, -0.345582,
		-0.542966, 0.830517, -0.124218,
		0.227793, 0.288040, 0.930131,
		44.708332, 33.958946, 35.906937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.831169, 34.381462, 35.193722>,  <44.548878, 33.757320, 35.255848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.831169, 34.381462, 35.193722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.987728, 34.262836, 35.542171>,  <45.081665, 34.191662, 35.751240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.987728, 34.262836, 35.542171>,  <44.831169, 34.381462, 35.193722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.987728, 34.262836, 35.542171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848537, 0.482617, -0.216946,
		-0.356080, 0.824093, 0.440543,
		0.391397, -0.296567, 0.871123,
		45.105148, 34.173866, 35.803509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.074810, 34.966236, 35.735077>,  <44.831169, 34.381462, 35.193722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.074810, 34.966236, 35.735077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.272808, 34.618698, 35.739071>,  <45.391605, 34.410175, 35.741467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.272808, 34.618698, 35.739071>,  <45.074810, 34.966236, 35.735077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.272808, 34.618698, 35.739071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825523, 0.466663, -0.317390,
		0.271100, 0.165352, 0.948243,
		0.494991, -0.868841, 0.009990,
		45.421307, 34.358047, 35.742069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.737434, 35.106396, 36.249470>,  <45.074810, 34.966236, 35.735077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.737434, 35.106396, 36.249470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.786137, 34.833004, 35.961571>,  <45.815357, 34.668968, 35.788830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.786137, 34.833004, 35.961571>,  <45.737434, 35.106396, 36.249470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.786137, 34.833004, 35.961571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971540, 0.230511, -0.054539,
		0.203186, -0.692623, 0.692090,
		0.121759, -0.683475, -0.719747,
		45.822666, 34.627960, 35.745647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.362865, 34.718552, 36.482758>,  <45.737434, 35.106396, 36.249470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.362865, 34.718552, 36.482758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.314232, 34.668655, 36.088871>,  <46.285053, 34.638718, 35.852539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.314232, 34.668655, 36.088871>,  <46.362865, 34.718552, 36.482758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.314232, 34.668655, 36.088871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987297, 0.087037, -0.132929,
		0.102288, -0.988365, 0.112571,
		-0.121585, -0.124738, -0.984712,
		46.277756, 34.631233, 35.793457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.022945, 34.487175, 36.287945>,  <46.362865, 34.718552, 36.482758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.022945, 34.487175, 36.287945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.847279, 34.590752, 35.943832>,  <46.741879, 34.652897, 35.737366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.847279, 34.590752, 35.943832>,  <47.022945, 34.487175, 36.287945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.847279, 34.590752, 35.943832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893329, 0.227523, -0.387551,
		0.095382, -0.938714, -0.331238,
		-0.439164, 0.258940, -0.860282,
		46.715530, 34.668434, 35.685749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.245934, 34.087505, 35.646797>,  <47.022945, 34.487175, 36.287945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.245934, 34.087505, 35.646797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.134407, 34.465260, 35.577061>,  <47.067490, 34.691914, 35.535221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.134407, 34.465260, 35.577061>,  <47.245934, 34.087505, 35.646797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.134407, 34.465260, 35.577061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921153, 0.211664, -0.326612,
		-0.271548, -0.251656, -0.928941,
		-0.278817, 0.944387, -0.174337,
		47.050762, 34.748577, 35.524761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.564438, 34.324135, 34.945103>,  <47.245934, 34.087505, 35.646797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.564438, 34.324135, 34.945103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.482708, 34.650158, 35.161964>,  <47.433670, 34.845772, 35.292084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.482708, 34.650158, 35.161964>,  <47.564438, 34.324135, 34.945103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.482708, 34.650158, 35.161964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769260, 0.476206, -0.425990,
		-0.605384, 0.330019, -0.724291,
		-0.204327, 0.815055, 0.542158,
		47.421410, 34.894676, 35.324612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.408447, 34.955814, 34.546162>,  <47.564438, 34.324135, 34.945103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.408447, 34.955814, 34.546162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.618866, 34.979336, 34.885532>,  <47.745117, 34.993446, 35.089153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.618866, 34.979336, 34.885532>,  <47.408447, 34.955814, 34.546162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.618866, 34.979336, 34.885532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744932, 0.449445, -0.493026,
		-0.410311, 0.891370, 0.192624,
		0.526043, 0.058802, 0.848423,
		47.776680, 34.996975, 35.140060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.718395, 25.392275, 28.031311> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.405720, 25.638880, 27.993620>,  <35.218113, 25.786842, 27.971006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.405720, 25.638880, 27.993620>,  <35.718395, 25.392275, 28.031311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.405720, 25.638880, 27.993620> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099112, 0.271961, 0.957191,
		0.615744, 0.738885, -0.273692,
		-0.781688, 0.616511, -0.094226,
		35.171215, 25.823833, 27.965353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.809914, 25.952389, 28.482903>,  <35.718395, 25.392275, 28.031311>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.809914, 25.952389, 28.482903> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.421886, 26.011696, 28.405972>,  <35.189072, 26.047279, 28.359814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.421886, 26.011696, 28.405972>,  <35.809914, 25.952389, 28.482903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.421886, 26.011696, 28.405972> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139280, 0.309087, 0.940780,
		0.198932, 0.939405, -0.279184,
		-0.970066, 0.148266, -0.192327,
		35.130867, 26.056175, 28.348274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.666737, 26.625580, 28.752485>,  <35.809914, 25.952389, 28.482903>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.666737, 26.625580, 28.752485> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.313927, 26.437990, 28.734198>,  <35.102242, 26.325436, 28.723225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.313927, 26.437990, 28.734198>,  <35.666737, 26.625580, 28.752485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.313927, 26.437990, 28.734198> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184769, 0.254975, 0.949130,
		-0.433461, 0.845606, -0.311547,
		-0.882027, -0.468976, -0.045720,
		35.049320, 26.297298, 28.720482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.266918, 27.053364, 29.080923>,  <35.666737, 26.625580, 28.752485>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.266918, 27.053364, 29.080923> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.055065, 26.714085, 29.078163>,  <34.927952, 26.510517, 29.076508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.055065, 26.714085, 29.078163>,  <35.266918, 27.053364, 29.080923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.055065, 26.714085, 29.078163> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345055, 0.208015, 0.915241,
		-0.774872, 0.487122, -0.402847,
		-0.529632, -0.848199, -0.006899,
		34.896175, 26.459625, 29.076094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.554501, 27.195335, 29.269520>,  <35.266918, 27.053364, 29.080923>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.554501, 27.195335, 29.269520> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.617191, 26.814285, 29.373785>,  <34.654804, 26.585655, 29.436344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.617191, 26.814285, 29.373785>,  <34.554501, 27.195335, 29.269520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.617191, 26.814285, 29.373785> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442350, 0.168268, 0.880916,
		-0.883042, -0.253366, -0.395022,
		0.156725, -0.952623, 0.260664,
		34.664207, 26.528498, 29.451984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.022533, 26.954453, 29.570972>,  <34.554501, 27.195335, 29.269520>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.022533, 26.954453, 29.570972> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.253899, 26.657347, 29.705875>,  <34.392719, 26.479084, 29.786818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.253899, 26.657347, 29.705875>,  <34.022533, 26.954453, 29.570972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.253899, 26.657347, 29.705875> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492735, 0.011367, 0.870105,
		-0.650115, -0.669458, -0.359411,
		0.578414, -0.742763, 0.337255,
		34.427422, 26.434519, 29.807053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.594635, 26.449968, 29.870701>,  <34.022533, 26.954453, 29.570972>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.594635, 26.449968, 29.870701> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.953651, 26.382690, 30.033737>,  <34.169060, 26.342323, 30.131559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.953651, 26.382690, 30.033737>,  <33.594635, 26.449968, 29.870701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.953651, 26.382690, 30.033737> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384084, 0.155787, 0.910061,
		-0.216564, -0.973366, 0.075224,
		0.897541, -0.168194, 0.407592,
		34.222912, 26.332232, 30.156015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.615135, 25.885656, 30.446444>,  <33.594635, 26.449968, 29.870701>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.615135, 25.885656, 30.446444> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.923542, 26.128441, 30.523529>,  <34.108585, 26.274111, 30.569780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.923542, 26.128441, 30.523529>,  <33.615135, 25.885656, 30.446444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.923542, 26.128441, 30.523529> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270209, 0.037783, 0.962060,
		0.576650, -0.793834, 0.193138,
		0.771013, 0.606960, 0.192714,
		34.154846, 26.310528, 30.581343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.752399, 25.677328, 31.084034>,  <33.615135, 25.885656, 30.446444>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.752399, 25.677328, 31.084034> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.920033, 26.039822, 31.061747>,  <34.020615, 26.257318, 31.048374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.920033, 26.039822, 31.061747>,  <33.752399, 25.677328, 31.084034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.920033, 26.039822, 31.061747> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108029, 0.110699, 0.987965,
		0.901497, -0.408022, 0.144292,
		0.419085, 0.906236, -0.055717,
		34.045757, 26.311693, 31.045031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.067665, 25.682808, 31.681532>,  <33.752399, 25.677328, 31.084034>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.067665, 25.682808, 31.681532> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.082512, 26.068846, 31.577826>,  <34.091419, 26.300468, 31.515602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.082512, 26.068846, 31.577826>,  <34.067665, 25.682808, 31.681532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.082512, 26.068846, 31.577826> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003737, 0.259307, 0.965788,
		0.999304, -0.036813, 0.006018,
		0.037114, 0.965093, -0.259264,
		34.093647, 26.358374, 31.500046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.650555, 26.009317, 32.052883>,  <34.067665, 25.682808, 31.681532>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.650555, 26.009317, 32.052883> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.416161, 26.316145, 31.948399>,  <34.275524, 26.500242, 31.885708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.416161, 26.316145, 31.948399>,  <34.650555, 26.009317, 32.052883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.416161, 26.316145, 31.948399> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108266, 0.393576, 0.912895,
		0.803058, 0.506660, -0.313676,
		-0.585983, 0.767068, -0.261210,
		34.240364, 26.546265, 31.870035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.119347, 26.604635, 32.136398>,  <34.650555, 26.009317, 32.052883>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.119347, 26.604635, 32.136398> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.736279, 26.718929, 32.150345>,  <34.506435, 26.787506, 32.158714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.736279, 26.718929, 32.150345>,  <35.119347, 26.604635, 32.136398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.736279, 26.718929, 32.150345> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181600, 0.505743, 0.843354,
		0.223342, 0.813990, -0.536226,
		-0.957674, 0.285735, 0.034867,
		34.448975, 26.804649, 32.160805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.082443, 27.416628, 32.347469>,  <35.119347, 26.604635, 32.136398>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.082443, 27.416628, 32.347469> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.709343, 27.289753, 32.416023>,  <34.485481, 27.213629, 32.457153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.709343, 27.289753, 32.416023>,  <35.082443, 27.416628, 32.347469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.709343, 27.289753, 32.416023> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060253, 0.605825, 0.793313,
		-0.355454, 0.729636, -0.584195,
		-0.932750, -0.317186, 0.171380,
		34.429520, 27.194597, 32.467438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.636959, 27.994362, 32.424110>,  <35.082443, 27.416628, 32.347469>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.636959, 27.994362, 32.424110> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.465118, 27.682945, 32.607113>,  <34.362015, 27.496096, 32.716915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.465118, 27.682945, 32.607113>,  <34.636959, 27.994362, 32.424110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.465118, 27.682945, 32.607113> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161474, 0.564711, 0.809338,
		-0.888462, 0.273820, -0.368317,
		-0.429605, -0.778540, 0.457509,
		34.336235, 27.449383, 32.744366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.220325, 28.305122, 32.768322>,  <34.636959, 27.994362, 32.424110>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.220325, 28.305122, 32.768322> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.221100, 27.948338, 32.949165>,  <34.221565, 27.734266, 33.057671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.221100, 27.948338, 32.949165>,  <34.220325, 28.305122, 32.768322>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.221100, 27.948338, 32.949165> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197991, 0.442814, 0.874480,
		-0.980202, -0.091206, -0.175743,
		0.001936, -0.891963, 0.452105,
		34.221680, 27.680748, 33.084797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.679878, 28.348427, 33.150612>,  <34.220325, 28.305122, 32.768322>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.679878, 28.348427, 33.150612> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.899639, 28.062794, 33.324162>,  <34.031494, 27.891415, 33.428291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.899639, 28.062794, 33.324162>,  <33.679878, 28.348427, 33.150612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.899639, 28.062794, 33.324162> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209153, 0.385204, 0.898817,
		-0.808961, -0.584555, 0.062278,
		0.549398, -0.714082, 0.433877,
		34.064457, 27.848570, 33.454323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.355522, 28.126175, 33.862778>,  <33.679878, 28.348427, 33.150612>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.355522, 28.126175, 33.862778> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.735355, 28.002426, 33.883099>,  <33.963257, 27.928177, 33.895290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.735355, 28.002426, 33.883099>,  <33.355522, 28.126175, 33.862778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.735355, 28.002426, 33.883099> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047659, 0.302584, 0.951930,
		-0.309873, -0.901516, 0.302073,
		0.949583, -0.309374, 0.050798,
		34.020229, 27.909615, 33.898338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.423306, 27.789103, 34.477421>,  <33.355522, 28.126175, 33.862778>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.423306, 27.789103, 34.477421> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.780537, 27.912760, 34.346672>,  <33.994877, 27.986954, 34.268223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.780537, 27.912760, 34.346672>,  <33.423306, 27.789103, 34.477421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.780537, 27.912760, 34.346672> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159594, 0.461600, 0.872614,
		0.420643, -0.831479, 0.362908,
		0.893078, 0.309141, -0.326868,
		34.048458, 28.005503, 34.248611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.969879, 27.548281, 35.005680>,  <33.423306, 27.789103, 34.477421>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.969879, 27.548281, 35.005680> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.111961, 27.866039, 34.808594>,  <34.197208, 28.056694, 34.690342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.111961, 27.866039, 34.808594>,  <33.969879, 27.548281, 35.005680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.111961, 27.866039, 34.808594> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338036, 0.382257, 0.860006,
		0.871529, -0.472031, -0.132756,
		0.355203, 0.794397, -0.492712,
		34.218521, 28.104359, 34.660782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.537441, 27.732677, 35.446331>,  <33.969879, 27.548281, 35.005680>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.537441, 27.732677, 35.446331> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.517403, 28.046762, 35.199451>,  <34.505379, 28.235212, 35.051323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.517403, 28.046762, 35.199451>,  <34.537441, 27.732677, 35.446331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.517403, 28.046762, 35.199451> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131127, 0.617797, 0.775328,
		0.990099, -0.042090, -0.133913,
		-0.050097, 0.785211, -0.617199,
		34.502373, 28.282326, 35.014290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.997597, 28.207333, 35.697727>,  <34.537441, 27.732677, 35.446331>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.997597, 28.207333, 35.697727> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.745190, 28.432768, 35.484493>,  <34.593746, 28.568029, 35.356552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.745190, 28.432768, 35.484493>,  <34.997597, 28.207333, 35.697727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.745190, 28.432768, 35.484493> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024896, 0.672109, 0.740033,
		0.775369, 0.480246, -0.410081,
		-0.631017, 0.563589, -0.533089,
		34.555885, 28.601845, 35.324566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.277260, 28.875141, 35.744080>,  <34.997597, 28.207333, 35.697727>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.277260, 28.875141, 35.744080> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.891586, 28.922764, 35.649281>,  <34.660183, 28.951338, 35.592400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.891586, 28.922764, 35.649281>,  <35.277260, 28.875141, 35.744080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.891586, 28.922764, 35.649281> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094389, 0.681054, 0.726125,
		0.247858, 0.722490, -0.645426,
		-0.964187, 0.119055, -0.236999,
		34.602329, 28.958481, 35.578182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.563305, 28.481642, 35.286732>,  <35.277260, 28.875141, 35.744080>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.563305, 28.481642, 35.286732> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.885620, 28.705521, 35.364132>,  <36.079010, 28.839848, 35.410572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.885620, 28.705521, 35.364132>,  <35.563305, 28.481642, 35.286732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.885620, 28.705521, 35.364132> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327484, -0.148903, -0.933050,
		-0.493412, 0.815210, -0.303277,
		0.805790, 0.559697, 0.193497,
		36.127357, 28.873430, 35.422180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.478050, 29.160564, 34.897091>,  <35.563305, 28.481642, 35.286732>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.478050, 29.160564, 34.897091> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.856983, 29.063301, 34.980450>,  <36.084343, 29.004944, 35.030464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.856983, 29.063301, 34.980450>,  <35.478050, 29.160564, 34.897091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.856983, 29.063301, 34.980450> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174569, -0.153462, -0.972613,
		0.268481, 0.957770, -0.102932,
		0.947335, -0.243159, 0.208398,
		36.141182, 28.990353, 35.042969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.855171, 29.421297, 34.311459>,  <35.478050, 29.160564, 34.897091>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.855171, 29.421297, 34.311459> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.136013, 29.183102, 34.467632>,  <36.304520, 29.040184, 34.561337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.136013, 29.183102, 34.467632>,  <35.855171, 29.421297, 34.311459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.136013, 29.183102, 34.467632> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428170, -0.085052, -0.899687,
		0.568961, 0.798849, 0.195254,
		0.702107, -0.595488, 0.390435,
		36.346645, 29.004456, 34.584763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.485058, 29.689234, 34.086212>,  <35.855171, 29.421297, 34.311459>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.485058, 29.689234, 34.086212> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.574017, 29.314236, 34.193279>,  <36.627392, 29.089237, 34.257519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.574017, 29.314236, 34.193279>,  <36.485058, 29.689234, 34.086212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.574017, 29.314236, 34.193279> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598691, -0.085360, -0.796419,
		0.769486, 0.337370, 0.542285,
		0.222398, -0.937494, 0.267664,
		36.640736, 29.032988, 34.273579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.303997, 29.518423, 34.065392>,  <36.485058, 29.689234, 34.086212>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.303997, 29.518423, 34.065392> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.130276, 29.158390, 34.051365>,  <37.026043, 28.942369, 34.042950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.130276, 29.158390, 34.051365>,  <37.303997, 29.518423, 34.065392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.130276, 29.158390, 34.051365> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515526, -0.216451, -0.829085,
		0.738654, -0.378155, 0.558022,
		-0.434307, -0.900082, -0.035066,
		36.999985, 28.888365, 34.040844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.847549, 28.973099, 33.763386>,  <37.303997, 29.518423, 34.065392>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.847549, 28.973099, 33.763386> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.494137, 28.790985, 33.719402>,  <37.282089, 28.681717, 33.693012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.494137, 28.790985, 33.719402>,  <37.847549, 28.973099, 33.763386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.494137, 28.790985, 33.719402> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236130, -0.230223, -0.944055,
		0.404498, -0.860066, 0.310915,
		-0.883529, -0.455284, -0.109963,
		37.229076, 28.654400, 33.686413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.066334, 28.274235, 33.566822>,  <37.847549, 28.973099, 33.763386>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.066334, 28.274235, 33.566822> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.697849, 28.381147, 33.453739>,  <37.476757, 28.445295, 33.385891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.697849, 28.381147, 33.453739>,  <38.066334, 28.274235, 33.566822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.697849, 28.381147, 33.453739> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130296, -0.472726, -0.871523,
		-0.366583, -0.839697, 0.400657,
		-0.921216, 0.267282, -0.282703,
		37.421486, 28.461332, 33.368927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.755741, 27.691290, 33.236492>,  <38.066334, 28.274235, 33.566822>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.755741, 27.691290, 33.236492> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.560009, 28.005554, 33.085075>,  <37.442570, 28.194113, 32.994225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.560009, 28.005554, 33.085075>,  <37.755741, 27.691290, 33.236492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.560009, 28.005554, 33.085075> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189608, -0.327834, -0.925513,
		-0.851239, -0.524653, 0.011450,
		-0.489326, 0.785662, -0.378544,
		37.413212, 28.241253, 32.971512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.306332, 27.426119, 32.730160>,  <37.755741, 27.691290, 33.236492>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.306332, 27.426119, 32.730160> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.264729, 27.804371, 32.606892>,  <37.239765, 28.031322, 32.532932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.264729, 27.804371, 32.606892>,  <37.306332, 27.426119, 32.730160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.264729, 27.804371, 32.606892> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204613, -0.323565, -0.923817,
		-0.973302, -0.033027, 0.227141,
		-0.104006, 0.945629, -0.308169,
		37.233528, 28.088060, 32.514442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.676342, 27.412336, 32.266865>,  <37.306332, 27.426119, 32.730160>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.676342, 27.412336, 32.266865> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.899361, 27.735983, 32.192596>,  <37.033173, 27.930172, 32.148037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.899361, 27.735983, 32.192596>,  <36.676342, 27.412336, 32.266865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.899361, 27.735983, 32.192596> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069455, -0.177407, -0.981684,
		-0.827237, 0.560227, -0.042714,
		0.557544, 0.809118, -0.185668,
		37.066624, 27.978718, 32.136894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.268990, 27.781384, 31.859001>,  <36.676342, 27.412336, 32.266865>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.268990, 27.781384, 31.859001> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.642982, 27.915436, 31.812536>,  <36.867378, 27.995867, 31.784658>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.642982, 27.915436, 31.812536>,  <36.268990, 27.781384, 31.859001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.642982, 27.915436, 31.812536> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078465, -0.123952, -0.989181,
		-0.345903, 0.933983, -0.089597,
		0.934984, 0.335130, -0.116160,
		36.923477, 28.015974, 31.777689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.207771, 28.252651, 31.310108>,  <36.268990, 27.781384, 31.859001>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.207771, 28.252651, 31.310108> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.601025, 28.181396, 31.326660>,  <36.836975, 28.138643, 31.336592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.601025, 28.181396, 31.326660>,  <36.207771, 28.252651, 31.310108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.601025, 28.181396, 31.326660> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016365, -0.139663, -0.990064,
		0.182148, 0.974043, -0.134393,
		0.983135, -0.178139, 0.041380,
		36.895966, 28.127954, 31.339073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.408386, 28.634104, 30.853615>,  <36.207771, 28.252651, 31.310108>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.408386, 28.634104, 30.853615> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.678486, 28.341047, 30.887730>,  <36.840546, 28.165215, 30.908199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.678486, 28.341047, 30.887730>,  <36.408386, 28.634104, 30.853615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.678486, 28.341047, 30.887730> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082688, -0.039709, -0.995784,
		0.732937, 0.679458, 0.033767,
		0.675252, -0.732639, 0.085287,
		36.881062, 28.121256, 30.913317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.948547, 28.778862, 30.400362>,  <36.408386, 28.634104, 30.853615>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.948547, 28.778862, 30.400362> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.006512, 28.387911, 30.461981>,  <37.041290, 28.153339, 30.498953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.006512, 28.387911, 30.461981>,  <36.948547, 28.778862, 30.400362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.006512, 28.387911, 30.461981> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337020, -0.097624, -0.936422,
		0.930278, 0.187619, 0.315249,
		0.144915, -0.977378, 0.154049,
		37.049988, 28.094698, 30.508196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.584614, 28.543432, 30.003525>,  <36.948547, 28.778862, 30.400362>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.584614, 28.543432, 30.003525> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.368416, 28.212355, 30.063908>,  <37.238697, 28.013708, 30.100138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.368416, 28.212355, 30.063908>,  <37.584614, 28.543432, 30.003525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.368416, 28.212355, 30.063908> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179340, -0.288641, -0.940491,
		0.822013, -0.481255, 0.304447,
		-0.540492, -0.827696, 0.150958,
		37.206268, 27.964046, 30.109196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.967762, 28.146383, 29.654791>,  <37.584614, 28.543432, 30.003525>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.967762, 28.146383, 29.654791> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.612438, 27.969204, 29.703304>,  <37.399246, 27.862896, 29.732412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.612438, 27.969204, 29.703304>,  <37.967762, 28.146383, 29.654791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.612438, 27.969204, 29.703304> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044102, -0.345149, -0.937511,
		0.457129, -0.827448, 0.326132,
		-0.888306, -0.442947, 0.121286,
		37.345947, 27.836321, 29.739691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.979706, 27.475290, 29.260956>,  <37.967762, 28.146383, 29.654791>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.979706, 27.475290, 29.260956> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.593899, 27.543486, 29.341585>,  <37.362415, 27.584402, 29.389963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.593899, 27.543486, 29.341585>,  <37.979706, 27.475290, 29.260956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.593899, 27.543486, 29.341585> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246274, -0.305968, -0.919637,
		-0.095113, -0.936652, 0.337099,
		-0.964522, 0.170488, 0.201572,
		37.304543, 27.594633, 29.402056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.653728, 26.832441, 29.156740>,  <37.979706, 27.475290, 29.260956>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.653728, 26.832441, 29.156740> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.371075, 27.106932, 29.087734>,  <37.201481, 27.271626, 29.046331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.371075, 27.106932, 29.087734>,  <37.653728, 26.832441, 29.156740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.371075, 27.106932, 29.087734> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158017, -0.390697, -0.906855,
		-0.689708, -0.613556, 0.384516,
		-0.706636, 0.686225, -0.172514,
		37.159084, 27.312799, 29.035980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.044250, 26.405571, 28.865808> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.027008, 26.793730, 28.770750>,  <37.016663, 27.026625, 28.713715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.027008, 26.793730, 28.770750>,  <37.044250, 26.405571, 28.865808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.027008, 26.793730, 28.770750> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053307, -0.239761, -0.969368,
		-0.997647, -0.029117, 0.062064,
		-0.043106, 0.970395, -0.237645,
		37.014076, 27.084848, 28.699457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.430298, 26.457554, 28.485992>,  <37.044250, 26.405571, 28.865808>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.430298, 26.457554, 28.485992> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.655102, 26.774506, 28.391098>,  <36.789982, 26.964678, 28.334162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.655102, 26.774506, 28.391098>,  <36.430298, 26.457554, 28.485992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.655102, 26.774506, 28.391098> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088280, -0.227716, -0.969718,
		-0.822409, 0.565930, -0.058026,
		0.562006, 0.792382, -0.237236,
		36.823704, 27.012220, 28.319927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.170166, 26.571554, 27.884773>,  <36.430298, 26.457554, 28.485992>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.170166, 26.571554, 27.884773> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.515797, 26.772438, 27.871212>,  <36.723175, 26.892969, 27.863075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.515797, 26.772438, 27.871212>,  <36.170166, 26.571554, 27.884773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.515797, 26.772438, 27.871212> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039763, -0.135249, -0.990013,
		-0.501782, 0.854103, -0.136835,
		0.864080, 0.502212, -0.033904,
		36.775021, 26.923101, 27.861040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.117153, 26.923990, 27.237343>,  <36.170166, 26.571554, 27.884773>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.117153, 26.923990, 27.237343> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.501575, 26.948303, 27.345179>,  <36.732227, 26.962891, 27.409880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.501575, 26.948303, 27.345179>,  <36.117153, 26.923990, 27.237343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.501575, 26.948303, 27.345179> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275735, -0.145576, -0.950146,
		-0.018506, 0.987478, -0.156666,
		0.961056, 0.060782, 0.269588,
		36.789890, 26.966537, 27.426056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.327843, 27.339237, 26.710939>,  <36.117153, 26.923990, 27.237343>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.327843, 27.339237, 26.710939> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.654324, 27.173334, 26.871832>,  <36.850212, 27.073792, 26.968367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.654324, 27.173334, 26.871832>,  <36.327843, 27.339237, 26.710939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.654324, 27.173334, 26.871832> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323968, -0.247900, -0.913012,
		0.478391, 0.875513, -0.067968,
		0.816203, -0.414757, 0.402231,
		36.899185, 27.048906, 26.992500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.938824, 27.405144, 26.292303>,  <36.327843, 27.339237, 26.710939>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.938824, 27.405144, 26.292303> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.057575, 27.087418, 26.504311>,  <37.128826, 26.896782, 26.631516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.057575, 27.087418, 26.504311>,  <36.938824, 27.405144, 26.292303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.057575, 27.087418, 26.504311> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538167, -0.319327, -0.780004,
		0.788821, 0.516807, 0.332673,
		0.296880, -0.794318, 0.530020,
		37.146641, 26.849123, 26.663317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.604370, 27.342480, 26.189003>,  <36.938824, 27.405144, 26.292303>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.604370, 27.342480, 26.189003> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.496792, 26.979235, 26.317377>,  <37.432243, 26.761288, 26.394402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.496792, 26.979235, 26.317377>,  <37.604370, 27.342480, 26.189003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.496792, 26.979235, 26.317377> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501834, -0.416531, -0.758066,
		0.822089, -0.042824, 0.567746,
		-0.268948, -0.908112, 0.320935,
		37.416107, 26.706800, 26.413658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.116322, 26.780647, 25.919281>,  <37.604370, 27.342480, 26.189003>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.116322, 26.780647, 25.919281> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.817162, 26.535166, 26.020481>,  <37.637665, 26.387877, 26.081202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.817162, 26.535166, 26.020481>,  <38.116322, 26.780647, 25.919281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.817162, 26.535166, 26.020481> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371395, -0.702758, -0.606793,
		0.550189, -0.359859, 0.753521,
		-0.747902, -0.613705, 0.253000,
		37.592793, 26.351055, 26.096380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.404636, 26.094490, 25.909937>,  <38.116322, 26.780647, 25.919281>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.404636, 26.094490, 25.909937> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.012455, 26.020056, 25.884369>,  <37.777145, 25.975395, 25.869028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.012455, 26.020056, 25.884369>,  <38.404636, 26.094490, 25.909937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.012455, 26.020056, 25.884369> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175711, -0.681879, -0.710046,
		0.088544, -0.707398, 0.701247,
		-0.980452, -0.186088, -0.063921,
		37.718319, 25.964230, 25.865192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.382256, 25.408012, 25.761829>,  <38.404636, 26.094490, 25.909937>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.382256, 25.408012, 25.761829> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.027756, 25.538982, 25.630772>,  <37.815056, 25.617565, 25.552137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.027756, 25.538982, 25.630772>,  <38.382256, 25.408012, 25.761829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.027756, 25.538982, 25.630772> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175472, -0.417310, -0.891662,
		-0.428696, -0.847724, 0.312382,
		-0.886244, 0.327438, -0.327651,
		37.761879, 25.637209, 25.532478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.164619, 24.849892, 25.409990>,  <38.382256, 25.408012, 25.761829>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.164619, 24.849892, 25.409990> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.915485, 25.125237, 25.261271>,  <37.766006, 25.290443, 25.172039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.915485, 25.125237, 25.261271>,  <38.164619, 24.849892, 25.409990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.915485, 25.125237, 25.261271> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046713, -0.441663, -0.895964,
		-0.780958, -0.575405, 0.242928,
		-0.622835, 0.688362, -0.371799,
		37.728634, 25.331745, 25.149731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.666996, 24.451416, 25.010733>,  <38.164619, 24.849892, 25.409990>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.666996, 24.451416, 25.010733> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.642559, 24.828402, 24.879263>,  <37.627895, 25.054592, 24.800381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.642559, 24.828402, 24.879263>,  <37.666996, 24.451416, 25.010733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.642559, 24.828402, 24.879263> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224165, -0.307923, -0.924626,
		-0.972634, -0.130169, -0.192455,
		-0.061096, 0.942464, -0.328676,
		37.624229, 25.111141, 24.780661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.199535, 24.527153, 24.484283>,  <37.666996, 24.451416, 25.010733>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.199535, 24.527153, 24.484283> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.420944, 24.853611, 24.417923>,  <37.553791, 25.049486, 24.378107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.420944, 24.853611, 24.417923>,  <37.199535, 24.527153, 24.484283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.420944, 24.853611, 24.417923> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009586, -0.205429, -0.978625,
		-0.832779, 0.540100, -0.121534,
		0.553522, 0.816144, -0.165900,
		37.587002, 25.098454, 24.368153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.935284, 24.887146, 23.840397>,  <37.199535, 24.527153, 24.484283>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.935284, 24.887146, 23.840397> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.319241, 24.991684, 23.881002>,  <37.549614, 25.054407, 23.905365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.319241, 24.991684, 23.881002>,  <36.935284, 24.887146, 23.840397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.319241, 24.991684, 23.881002> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115917, -0.040259, -0.992443,
		-0.255285, 0.964405, -0.068939,
		0.959892, 0.261347, 0.101513,
		37.607208, 25.070087, 23.911457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.037243, 25.415649, 23.339928>,  <36.935284, 24.887146, 23.840397>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.037243, 25.415649, 23.339928> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.378330, 25.235107, 23.445112>,  <37.582981, 25.126781, 23.508223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.378330, 25.235107, 23.445112>,  <37.037243, 25.415649, 23.339928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.378330, 25.235107, 23.445112> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333756, 0.083506, -0.938954,
		0.401845, 0.888428, 0.221850,
		0.852718, -0.451357, 0.262961,
		37.634144, 25.099701, 23.524000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.538612, 25.816126, 23.018902>,  <37.037243, 25.415649, 23.339928>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.538612, 25.816126, 23.018902> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.751919, 25.486824, 23.096752>,  <37.879902, 25.289244, 23.143463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.751919, 25.486824, 23.096752>,  <37.538612, 25.816126, 23.018902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.751919, 25.486824, 23.096752> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415402, 0.054414, -0.908009,
		0.736932, 0.565059, 0.370999,
		0.533266, -0.823254, 0.194627,
		37.911900, 25.239847, 23.155140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.280102, 25.903000, 22.654671>,  <37.538612, 25.816126, 23.018902>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.280102, 25.903000, 22.654671> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.222984, 25.511477, 22.713381>,  <38.188713, 25.276562, 22.748606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.222984, 25.511477, 22.713381>,  <38.280102, 25.903000, 22.654671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.222984, 25.511477, 22.713381> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383474, -0.191422, -0.903496,
		0.912447, -0.072726, 0.402681,
		-0.142790, -0.978810, 0.146773,
		38.180149, 25.217834, 22.757412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.792252, 25.595747, 22.247030>,  <38.280102, 25.903000, 22.654671>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.792252, 25.595747, 22.247030> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.538574, 25.299820, 22.336889>,  <38.386368, 25.122263, 22.390804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.538574, 25.299820, 22.336889>,  <38.792252, 25.595747, 22.247030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.538574, 25.299820, 22.336889> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127363, -0.386545, -0.913434,
		0.762613, -0.550682, 0.339369,
		-0.634193, -0.739819, 0.224648,
		38.348316, 25.077875, 22.404284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.171680, 25.041456, 21.974483>,  <38.792252, 25.595747, 22.247030>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.171680, 25.041456, 21.974483> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.793739, 24.915163, 22.009291>,  <38.566975, 24.839386, 22.030174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.793739, 24.915163, 22.009291>,  <39.171680, 25.041456, 21.974483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.793739, 24.915163, 22.009291> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027653, -0.341658, -0.939418,
		0.326336, -0.885202, 0.331546,
		-0.944849, -0.315734, 0.087017,
		38.510284, 24.820442, 22.035397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.177124, 24.309452, 21.701687>,  <39.171680, 25.041456, 21.974483>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.177124, 24.309452, 21.701687> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.805733, 24.456293, 21.679218>,  <38.582897, 24.544397, 21.665737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.805733, 24.456293, 21.679218>,  <39.177124, 24.309452, 21.701687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.805733, 24.456293, 21.679218> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001003, -0.153733, -0.988112,
		-0.371374, -0.917389, 0.143107,
		-0.928483, 0.367103, -0.056173,
		38.527187, 24.566423, 21.662367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.847229, 23.837540, 21.284622>,  <39.177124, 24.309452, 21.701687>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.847229, 23.837540, 21.284622> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.621246, 24.167364, 21.272478>,  <38.485657, 24.365259, 21.265192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.621246, 24.167364, 21.272478>,  <38.847229, 23.837540, 21.284622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.621246, 24.167364, 21.272478> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212945, -0.181251, -0.960106,
		-0.797171, -0.535951, 0.277985,
		-0.564955, 0.824563, -0.030360,
		38.451759, 24.414734, 21.263371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.309162, 23.728724, 20.771458>,  <38.847229, 23.837540, 21.284622>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.309162, 23.728724, 20.771458> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.285801, 24.126616, 20.805155>,  <38.271782, 24.365351, 20.825373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.285801, 24.126616, 20.805155>,  <38.309162, 23.728724, 20.771458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.285801, 24.126616, 20.805155> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356154, 0.058072, -0.932621,
		-0.932600, -0.084475, 0.350886,
		-0.058406, 0.994732, 0.084244,
		38.268280, 24.425035, 20.830429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.589252, 24.016285, 20.602377>,  <38.309162, 23.728724, 20.771458>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.589252, 24.016285, 20.602377> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.891960, 24.263536, 20.517323>,  <38.073586, 24.411888, 20.466290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.891960, 24.263536, 20.517323>,  <37.589252, 24.016285, 20.602377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.891960, 24.263536, 20.517323> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252326, -0.023843, -0.967348,
		-0.603015, 0.785716, 0.137926,
		0.756772, 0.618128, -0.212635,
		38.118992, 24.448975, 20.453531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.310982, 24.657341, 20.130861>,  <37.589252, 24.016285, 20.602377>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.310982, 24.657341, 20.130861> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.704319, 24.590591, 20.102036>,  <37.940319, 24.550543, 20.084740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.704319, 24.590591, 20.102036>,  <37.310982, 24.657341, 20.130861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.704319, 24.590591, 20.102036> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076907, -0.022737, -0.996779,
		0.164697, 0.985716, -0.035191,
		0.983341, -0.166873, -0.072064,
		37.999321, 24.540529, 20.080416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.085983, 25.426441, 20.204159>,  <37.310982, 24.657341, 20.130861>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.085983, 25.426441, 20.204159> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.731178, 25.581465, 20.103752>,  <36.518295, 25.674479, 20.043509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.731178, 25.581465, 20.103752>,  <37.085983, 25.426441, 20.204159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.731178, 25.581465, 20.103752> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212539, 0.139927, 0.967082,
		0.409925, 0.911164, -0.041746,
		-0.887011, 0.387558, -0.251017,
		36.465076, 25.697733, 20.028446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.891403, 25.985989, 20.620943>,  <37.085983, 25.426441, 20.204159>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.891403, 25.985989, 20.620943> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.523609, 25.880682, 20.504164>,  <36.302933, 25.817497, 20.434097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.523609, 25.880682, 20.504164>,  <36.891403, 25.985989, 20.620943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.523609, 25.880682, 20.504164> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363214, 0.284824, 0.887103,
		-0.150391, 0.921719, -0.357514,
		-0.919488, -0.263266, -0.291946,
		36.247765, 25.801702, 20.416580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.485546, 26.496626, 20.873703>,  <36.891403, 25.985989, 20.620943>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.485546, 26.496626, 20.873703> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.246635, 26.177141, 20.844517>,  <36.103291, 25.985451, 20.827005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.246635, 26.177141, 20.844517>,  <36.485546, 26.496626, 20.873703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.246635, 26.177141, 20.844517> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405930, 0.222579, 0.886386,
		-0.691724, 0.559036, -0.457162,
		-0.597276, -0.798710, -0.072966,
		36.067451, 25.937529, 20.822626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.828377, 26.698183, 20.992804>,  <36.485546, 26.496626, 20.873703>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.828377, 26.698183, 20.992804> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.808987, 26.305189, 21.064772>,  <35.797352, 26.069393, 21.107952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.808987, 26.305189, 21.064772>,  <35.828377, 26.698183, 20.992804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.808987, 26.305189, 21.064772> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544737, 0.176989, 0.819718,
		-0.837205, -0.058274, -0.543776,
		-0.048474, -0.982486, 0.179920,
		35.794445, 26.010443, 21.118748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.062351, 26.585058, 21.198000>,  <35.828377, 26.698183, 20.992804>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.062351, 26.585058, 21.198000> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.282478, 26.276443, 21.325674>,  <35.414555, 26.091274, 21.402279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.282478, 26.276443, 21.325674>,  <35.062351, 26.585058, 21.198000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.282478, 26.276443, 21.325674> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438562, 0.058194, 0.896815,
		-0.710500, -0.633517, -0.306342,
		0.550321, -0.771537, 0.319183,
		35.447575, 26.044983, 21.421429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.670425, 26.162865, 21.677580>,  <35.062351, 26.585058, 21.198000>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.670425, 26.162865, 21.677580> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.009365, 25.977261, 21.780886>,  <35.212727, 25.865898, 21.842869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.009365, 25.977261, 21.780886>,  <34.670425, 26.162865, 21.677580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.009365, 25.977261, 21.780886> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266122, 0.049834, 0.962650,
		-0.459550, -0.884427, -0.081257,
		0.847345, -0.464010, 0.258266,
		35.263569, 25.838058, 21.858366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.489941, 25.608921, 22.141775>,  <34.670425, 26.162865, 21.677580>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.489941, 25.608921, 22.141775> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.878799, 25.680853, 22.201891>,  <35.112114, 25.724012, 22.237961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.878799, 25.680853, 22.201891>,  <34.489941, 25.608921, 22.141775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.878799, 25.680853, 22.201891> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100611, -0.258936, 0.960640,
		0.211666, -0.949007, -0.233632,
		0.972150, 0.179829, 0.150288,
		35.170444, 25.734802, 22.246977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.692535, 25.135134, 22.654919>,  <34.489941, 25.608921, 22.141775>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.692535, 25.135134, 22.654919> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.968151, 25.424688, 22.668842>,  <35.133522, 25.598421, 22.677197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.968151, 25.424688, 22.668842>,  <34.692535, 25.135134, 22.654919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.968151, 25.424688, 22.668842> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074992, 0.023443, 0.996909,
		0.720834, -0.689519, 0.070439,
		0.689038, 0.723888, 0.034810,
		35.174862, 25.641855, 22.679285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.273132, 24.858141, 23.070269>,  <34.692535, 25.135134, 22.654919>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.273132, 24.858141, 23.070269> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.294491, 25.257570, 23.071045>,  <35.307308, 25.497227, 23.071510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.294491, 25.257570, 23.071045>,  <35.273132, 24.858141, 23.070269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.294491, 25.257570, 23.071045> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039347, 0.000162, 0.999226,
		0.997798, -0.053435, 0.039300,
		0.053400, 0.998571, 0.001941,
		35.310513, 25.557142, 23.071627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.612564, 24.959316, 23.650936>,  <35.273132, 24.858141, 23.070269>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.612564, 24.959316, 23.650936> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.471664, 25.326878, 23.579903>,  <35.387123, 25.547415, 23.537283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.471664, 25.326878, 23.579903>,  <35.612564, 24.959316, 23.650936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.471664, 25.326878, 23.579903> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123468, 0.233713, 0.964434,
		0.927725, 0.317800, -0.195781,
		-0.352253, 0.918902, -0.177583,
		35.365990, 25.602549, 23.526628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.084972, 25.280861, 23.902220>,  <35.612564, 24.959316, 23.650936>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.084972, 25.280861, 23.902220> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.787224, 25.547926, 23.897573>,  <35.608574, 25.708164, 23.894785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.787224, 25.547926, 23.897573>,  <36.084972, 25.280861, 23.902220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.787224, 25.547926, 23.897573> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102342, 0.131258, 0.986051,
		0.659873, 0.732802, -0.166035,
		-0.744374, 0.667662, -0.011617,
		35.563911, 25.748224, 23.894089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.295719, 25.953310, 24.313452>,  <36.084972, 25.280861, 23.902220>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.295719, 25.953310, 24.313452> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.898094, 25.910149, 24.307735>,  <35.659519, 25.884253, 24.304306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.898094, 25.910149, 24.307735>,  <36.295719, 25.953310, 24.313452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.898094, 25.910149, 24.307735> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037320, 0.214548, 0.976000,
		-0.102246, 0.970735, -0.217301,
		-0.994059, -0.107901, -0.014291,
		35.599876, 25.877779, 24.303448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.085026, 26.451319, 24.797220>,  <36.295719, 25.953310, 24.313452>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.085026, 26.451319, 24.797220> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.768719, 26.213169, 24.740347>,  <35.578934, 26.070280, 24.706223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.768719, 26.213169, 24.740347>,  <36.085026, 26.451319, 24.797220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.768719, 26.213169, 24.740347> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257381, 0.112659, 0.959720,
		-0.555373, 0.795513, -0.242324,
		-0.790769, -0.595372, -0.142182,
		35.531487, 26.034557, 24.697693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.617111, 26.700111, 25.287218>,  <36.085026, 26.451319, 24.797220>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.617111, 26.700111, 25.287218> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.478054, 26.335428, 25.199640>,  <35.394619, 26.116619, 25.147095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.478054, 26.335428, 25.199640>,  <35.617111, 26.700111, 25.287218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.478054, 26.335428, 25.199640> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431020, -0.051983, 0.900844,
		-0.832687, 0.407539, -0.374892,
		-0.347641, -0.911707, -0.218943,
		35.373760, 26.061916, 25.133957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.869156, 26.706005, 25.495720>,  <35.617111, 26.700111, 25.287218>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.869156, 26.706005, 25.495720> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.038685, 26.343706, 25.495899>,  <35.140404, 26.126328, 25.496006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.038685, 26.343706, 25.495899>,  <34.869156, 26.706005, 25.495720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.038685, 26.343706, 25.495899> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434881, -0.203060, 0.877294,
		-0.794514, -0.372011, -0.479953,
		0.423822, -0.905745, 0.000446,
		35.165833, 26.071983, 25.496033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.314987, 26.317221, 25.881962>,  <34.869156, 26.706005, 25.495720>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.314987, 26.317221, 25.881962> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.655972, 26.109625, 25.907143>,  <34.860561, 25.985067, 25.922251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.655972, 26.109625, 25.907143>,  <34.314987, 26.317221, 25.881962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.655972, 26.109625, 25.907143> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204738, -0.220621, 0.953629,
		-0.481037, -0.825817, -0.294328,
		0.852458, -0.518991, 0.062950,
		34.911709, 25.953928, 25.926027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.114872, 25.792736, 26.172630>,  <34.314987, 26.317221, 25.881962>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.114872, 25.792736, 26.172630> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.509159, 25.766569, 26.234711>,  <34.745731, 25.750870, 26.271959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.509159, 25.766569, 26.234711>,  <34.114872, 25.792736, 26.172630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.509159, 25.766569, 26.234711> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167189, -0.268626, 0.948624,
		-0.020364, -0.961021, -0.275725,
		0.985714, -0.065416, 0.155202,
		34.804874, 25.746944, 26.281271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.430752, 25.121864, 26.469803>,  <34.114872, 25.792736, 26.172630>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.430752, 25.121864, 26.469803> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.649204, 25.436232, 26.585785>,  <34.780273, 25.624853, 26.655375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.649204, 25.436232, 26.585785>,  <34.430752, 25.121864, 26.469803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.649204, 25.436232, 26.585785> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096896, -0.284544, 0.953754,
		0.832079, -0.548967, -0.079245,
		0.546128, 0.785920, 0.289956,
		34.813042, 25.672009, 26.672771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.652176, 24.930336, 27.149155>,  <34.430752, 25.121864, 26.469803>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.652176, 24.930336, 27.149155> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.789730, 25.305927, 27.145954>,  <34.872261, 25.531282, 27.144033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.789730, 25.305927, 27.145954>,  <34.652176, 24.930336, 27.149155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.789730, 25.305927, 27.145954> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103132, -0.029295, 0.994236,
		0.933332, -0.342725, -0.106913,
		0.343882, 0.938979, -0.008004,
		34.892895, 25.587622, 27.143553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.216995, 24.992603, 27.632063>,  <34.652176, 24.930336, 27.149155>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.216995, 24.992603, 27.632063> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.091827, 25.371174, 27.600161>,  <35.016727, 25.598316, 27.581020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.091827, 25.371174, 27.600161>,  <35.216995, 24.992603, 27.632063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.091827, 25.371174, 27.600161> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129045, 0.125558, 0.983658,
		0.940974, 0.297510, -0.161421,
		-0.312915, 0.946427, -0.079755,
		34.997952, 25.655102, 27.576235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<38.160385, 27.777117, 31.208248> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.772602, 27.851561, 31.272137>,  <37.539932, 27.896227, 31.310471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.772602, 27.851561, 31.272137>,  <38.160385, 27.777117, 31.208248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.772602, 27.851561, 31.272137> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239669, 0.580772, 0.777986,
		0.052029, 0.792507, -0.607640,
		-0.969460, 0.186110, 0.159722,
		37.481766, 27.907394, 31.320053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.201908, 28.396837, 31.408049>,  <38.160385, 27.777117, 31.208248>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.201908, 28.396837, 31.408049> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.840588, 28.293137, 31.544773>,  <37.623795, 28.230915, 31.626808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.840588, 28.293137, 31.544773>,  <38.201908, 28.396837, 31.408049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.840588, 28.293137, 31.544773> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263124, 0.294491, 0.918717,
		-0.338841, 0.919817, -0.197798,
		-0.903301, -0.259253, 0.341811,
		37.569599, 28.215361, 31.647316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.922321, 28.918180, 31.906096>,  <38.201908, 28.396837, 31.408049>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.922321, 28.918180, 31.906096> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.645752, 28.637201, 31.973614>,  <37.479809, 28.468613, 32.014126>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.645752, 28.637201, 31.973614>,  <37.922321, 28.918180, 31.906096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.645752, 28.637201, 31.973614> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149458, 0.367673, 0.917866,
		-0.706816, 0.609411, -0.359206,
		-0.691428, -0.702449, 0.168796,
		37.438324, 28.426466, 32.024254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.390263, 29.283880, 32.232235>,  <37.922321, 28.918180, 31.906096>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.390263, 29.283880, 32.232235> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.343723, 28.898399, 32.328350>,  <37.315800, 28.667110, 32.386021>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.343723, 28.898399, 32.328350>,  <37.390263, 29.283880, 32.232235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.343723, 28.898399, 32.328350> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221268, 0.261000, 0.939638,
		-0.968248, 0.056154, -0.243603,
		-0.116345, -0.963704, 0.240288,
		37.308819, 28.609287, 32.400436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.711308, 29.254305, 32.554703>,  <37.390263, 29.283880, 32.232235>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.711308, 29.254305, 32.554703> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.941879, 28.951424, 32.677586>,  <37.080223, 28.769695, 32.751316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.941879, 28.951424, 32.677586>,  <36.711308, 29.254305, 32.554703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.941879, 28.951424, 32.677586> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309149, 0.145922, 0.939752,
		-0.756410, -0.636672, -0.149975,
		0.576429, -0.757202, 0.307204,
		37.114807, 28.724262, 32.769745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.234726, 28.863131, 32.974136>,  <36.711308, 29.254305, 32.554703>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.234726, 28.863131, 32.974136> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.595718, 28.732328, 33.086269>,  <36.812313, 28.653847, 33.153549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.595718, 28.732328, 33.086269>,  <36.234726, 28.863131, 32.974136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.595718, 28.732328, 33.086269> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314330, -0.055044, 0.947716,
		-0.294477, -0.943418, -0.152464,
		0.902485, -0.327005, 0.280335,
		36.866463, 28.634228, 33.170368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.029331, 28.306171, 33.456493>,  <36.234726, 28.863131, 32.974136>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.029331, 28.306171, 33.456493> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.411587, 28.403906, 33.522289>,  <36.640942, 28.462547, 33.561768>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.411587, 28.403906, 33.522289>,  <36.029331, 28.306171, 33.456493>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.411587, 28.403906, 33.522289> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161786, -0.031242, 0.986331,
		0.246137, -0.969187, 0.009675,
		0.955637, 0.244338, 0.164490,
		36.698277, 28.477207, 33.571636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.266289, 27.850119, 33.967018>,  <36.029331, 28.306171, 33.456493>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.266289, 27.850119, 33.967018> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.506058, 28.167559, 34.008759>,  <36.649921, 28.358023, 34.033802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.506058, 28.167559, 34.008759>,  <36.266289, 27.850119, 33.967018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.506058, 28.167559, 34.008759> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166492, -0.003896, 0.986035,
		0.782925, -0.608426, 0.129793,
		0.599424, 0.793601, 0.104348,
		36.685886, 28.405640, 34.040062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.677326, 27.738039, 34.579678>,  <36.266289, 27.850119, 33.967018>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.677326, 27.738039, 34.579678> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.703991, 28.126902, 34.489819>,  <36.719990, 28.360220, 34.435902>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.703991, 28.126902, 34.489819>,  <36.677326, 27.738039, 34.579678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.703991, 28.126902, 34.489819> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045437, 0.227875, 0.972630,
		0.996741, -0.054629, 0.059362,
		0.066660, 0.972157, -0.224650,
		36.723988, 28.418549, 34.422424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.249119, 28.171583, 35.052628>,  <36.677326, 27.738039, 34.579678>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.249119, 28.171583, 35.052628> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.980007, 28.430830, 34.909901>,  <36.818542, 28.586378, 34.824265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.980007, 28.430830, 34.909901>,  <37.249119, 28.171583, 35.052628>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.980007, 28.430830, 34.909901> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093817, 0.403653, 0.910090,
		0.733874, 0.645761, -0.210763,
		-0.672776, 0.648118, -0.356813,
		36.778175, 28.625265, 34.802856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.432468, 28.772945, 35.315395>,  <37.249119, 28.171583, 35.052628>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.432468, 28.772945, 35.315395> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.044048, 28.832510, 35.240692>,  <36.810997, 28.868248, 35.195869>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.044048, 28.832510, 35.240692>,  <37.432468, 28.772945, 35.315395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.044048, 28.832510, 35.240692> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093155, 0.483872, 0.870167,
		0.219945, 0.862377, -0.455994,
		-0.971054, 0.148911, -0.186760,
		36.752731, 28.877184, 35.184666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.277611, 29.364849, 35.618839>,  <37.432468, 28.772945, 35.315395>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.277611, 29.364849, 35.618839> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.904449, 29.239319, 35.548191>,  <36.680553, 29.164001, 35.505802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.904449, 29.239319, 35.548191>,  <37.277611, 29.364849, 35.618839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.904449, 29.239319, 35.548191> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287476, 0.353610, 0.890122,
		-0.216888, 0.881177, -0.420103,
		-0.932908, -0.313826, -0.176624,
		36.624577, 29.145170, 35.495205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.697063, 29.919790, 35.912399>,  <37.277611, 29.364849, 35.618839>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.697063, 29.919790, 35.912399> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.608189, 29.529896, 35.903233>,  <36.554863, 29.295959, 35.897732>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.608189, 29.529896, 35.903233>,  <36.697063, 29.919790, 35.912399>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.608189, 29.529896, 35.903233> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215626, 0.026198, 0.976125,
		-0.950862, 0.221823, -0.216000,
		-0.222186, -0.974735, -0.022920,
		36.541534, 29.237474, 35.896358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.839516, 30.579933, 36.335976>,  <36.697063, 29.919790, 35.912399>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.839516, 30.579933, 36.335976> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.846325, 30.979389, 36.316280>,  <36.850410, 31.219063, 36.304462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.846325, 30.979389, 36.316280>,  <36.839516, 30.579933, 36.335976>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.846325, 30.979389, 36.316280> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249868, -0.043436, -0.967305,
		-0.968130, 0.028773, 0.248789,
		0.017025, 0.998642, -0.049242,
		36.851433, 31.278982, 36.301506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.295418, 30.771927, 35.934349>,  <36.839516, 30.579933, 36.335976>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.295418, 30.771927, 35.934349> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.563606, 31.068684, 35.931179>,  <36.724518, 31.246738, 35.929276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.563606, 31.068684, 35.931179>,  <36.295418, 30.771927, 35.934349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.563606, 31.068684, 35.931179> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009441, -0.019213, -0.999771,
		-0.741876, 0.670242, -0.019886,
		0.670470, 0.741894, -0.007926,
		36.764748, 31.291252, 35.928802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.998642, 31.203722, 35.462254>,  <36.295418, 30.771927, 35.934349>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.998642, 31.203722, 35.462254> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.391716, 31.275858, 35.479259>,  <36.627560, 31.319139, 35.489464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.391716, 31.275858, 35.479259>,  <35.998642, 31.203722, 35.462254>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.391716, 31.275858, 35.479259> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044132, -0.004951, -0.999013,
		-0.179953, 0.983592, -0.012824,
		0.982685, 0.180341, 0.042517,
		36.686520, 31.329960, 35.492016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.189346, 31.946770, 35.132687>,  <35.998642, 31.203722, 35.462254>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.189346, 31.946770, 35.132687> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.505241, 31.701397, 35.130821>,  <36.694778, 31.554173, 35.129700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.505241, 31.701397, 35.130821>,  <36.189346, 31.946770, 35.132687>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.505241, 31.701397, 35.130821> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000961, 0.006370, -0.999979,
		0.613449, 0.789722, 0.004441,
		0.789734, -0.613432, -0.004666,
		36.742161, 31.517366, 35.129421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.595039, 32.324314, 34.748569>,  <36.189346, 31.946770, 35.132687>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.595039, 32.324314, 34.748569> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.750488, 31.957264, 34.715229>,  <36.843758, 31.737036, 34.695225>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.750488, 31.957264, 34.715229>,  <36.595039, 32.324314, 34.748569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.750488, 31.957264, 34.715229> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017336, 0.097726, -0.995062,
		0.921235, 0.385256, 0.053886,
		0.388619, -0.917621, -0.083349,
		36.867073, 31.681978, 34.690224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.120502, 32.384541, 34.302177>,  <36.595039, 32.324314, 34.748569>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.120502, 32.384541, 34.302177> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.072727, 31.988707, 34.270058>,  <37.044060, 31.751205, 34.250786>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.072727, 31.988707, 34.270058>,  <37.120502, 32.384541, 34.302177>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.072727, 31.988707, 34.270058> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145175, 0.062601, -0.987423,
		0.982170, -0.129595, 0.136187,
		-0.119440, -0.989589, -0.080299,
		37.036896, 31.691830, 34.245968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.769592, 32.119957, 33.937927>,  <37.120502, 32.384541, 34.302177>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.769592, 32.119957, 33.937927> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.463882, 31.862692, 33.919029>,  <37.280457, 31.708334, 33.907688>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.463882, 31.862692, 33.919029>,  <37.769592, 32.119957, 33.937927>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.463882, 31.862692, 33.919029> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164921, -0.124097, -0.978469,
		0.623448, -0.755609, 0.200914,
		-0.764273, -0.643159, -0.047248,
		37.234600, 31.669744, 33.904854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.056374, 31.595449, 33.490246>,  <37.769592, 32.119957, 33.937927>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.056374, 31.595449, 33.490246> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.660202, 31.540773, 33.482689>,  <37.422497, 31.507967, 33.478157>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.660202, 31.540773, 33.482689>,  <38.056374, 31.595449, 33.490246>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.660202, 31.540773, 33.482689> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055153, -0.266666, -0.962210,
		0.126490, -0.954046, 0.271654,
		-0.990433, -0.136692, -0.018888,
		37.363071, 31.499765, 33.477024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.893810, 31.214504, 32.889744>,  <38.056374, 31.595449, 33.490246>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.893810, 31.214504, 32.889744> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.549526, 31.393982, 32.985954>,  <37.342957, 31.501669, 33.043678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.549526, 31.393982, 32.985954>,  <37.893810, 31.214504, 32.889744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.549526, 31.393982, 32.985954> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200750, 0.135033, -0.970291,
		-0.467841, -0.883426, -0.026149,
		-0.860711, 0.448693, 0.240522,
		37.291313, 31.528589, 33.058109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.388969, 30.941166, 32.475960>,  <37.893810, 31.214504, 32.889744>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.388969, 30.941166, 32.475960> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.232315, 31.292660, 32.585102>,  <37.138321, 31.503555, 32.650585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.232315, 31.292660, 32.585102>,  <37.388969, 30.941166, 32.475960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.232315, 31.292660, 32.585102> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185128, 0.215222, -0.958857,
		-0.901303, -0.426038, 0.078389,
		-0.391639, 0.878732, 0.272852,
		37.114822, 31.556280, 32.666958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.763317, 30.882633, 32.331825>,  <37.388969, 30.941166, 32.475960>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.763317, 30.882633, 32.331825> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.861034, 31.270502, 32.334854>,  <36.919666, 31.503223, 32.336670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.861034, 31.270502, 32.334854>,  <36.763317, 30.882633, 32.331825>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.861034, 31.270502, 32.334854> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341893, 0.093438, -0.935082,
		-0.907430, 0.225848, 0.354350,
		0.244296, 0.969671, 0.007573,
		36.934322, 31.561403, 32.337128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.175377, 31.133892, 32.026855>,  <36.763317, 30.882633, 32.331825>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.175377, 31.133892, 32.026855> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.472954, 31.394125, 31.965801>,  <36.651501, 31.550264, 31.929169>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.472954, 31.394125, 31.965801>,  <36.175377, 31.133892, 32.026855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.472954, 31.394125, 31.965801> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327742, 0.156170, -0.931770,
		-0.582357, 0.743204, 0.329405,
		0.743939, 0.650583, -0.152633,
		36.696136, 31.589300, 31.920012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.848454, 31.617348, 31.636400>,  <36.175377, 31.133892, 32.026855>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.848454, 31.617348, 31.636400> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.239162, 31.683348, 31.581713>,  <36.473587, 31.722948, 31.548901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.239162, 31.683348, 31.581713>,  <35.848454, 31.617348, 31.636400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.239162, 31.683348, 31.581713> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161799, 0.149596, -0.975419,
		-0.140492, 0.974882, 0.172819,
		0.976772, 0.165001, -0.136718,
		36.532192, 31.732847, 31.540697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.908131, 32.243382, 31.170671>,  <35.848454, 31.617348, 31.636400>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.908131, 32.243382, 31.170671> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.286030, 32.119324, 31.128223>,  <36.512768, 32.044888, 31.102755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.286030, 32.119324, 31.128223>,  <35.908131, 32.243382, 31.170671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.286030, 32.119324, 31.128223> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044979, 0.198017, -0.979166,
		0.324698, 0.929838, 0.173126,
		0.944747, -0.310146, -0.106119,
		36.569454, 32.026279, 31.096388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.318214, 32.802147, 30.770824>,  <35.908131, 32.243382, 31.170671>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.318214, 32.802147, 30.770824> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.448017, 32.424362, 30.750118>,  <36.525898, 32.197689, 30.737694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.448017, 32.424362, 30.750118>,  <36.318214, 32.802147, 30.770824>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.448017, 32.424362, 30.750118> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341231, -0.065847, -0.937671,
		0.882190, 0.321943, -0.343648,
		0.324504, -0.944467, -0.051767,
		36.545368, 32.141022, 30.734589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.298374, 33.416214, 30.637836>,  <36.318214, 32.802147, 30.770824>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.298374, 33.416214, 30.637836> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.956638, 33.577969, 30.507256>,  <35.751595, 33.675022, 30.428907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.956638, 33.577969, 30.507256>,  <36.298374, 33.416214, 30.637836>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.956638, 33.577969, 30.507256> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077273, 0.522318, 0.849243,
		0.513933, 0.750771, -0.414990,
		-0.854343, 0.404386, -0.326451,
		35.700336, 33.699284, 30.409321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.271492, 34.115818, 30.892982>,  <36.298374, 33.416214, 30.637836>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.271492, 34.115818, 30.892982> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.907032, 33.964287, 30.828125>,  <35.688354, 33.873367, 30.789209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.907032, 33.964287, 30.828125>,  <36.271492, 34.115818, 30.892982>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.907032, 33.964287, 30.828125> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260721, 0.225277, 0.938762,
		-0.319103, 0.897630, -0.304030,
		-0.911152, -0.378829, -0.162145,
		35.633686, 33.850639, 30.779482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.832615, 34.550125, 31.293758>,  <36.271492, 34.115818, 30.892982>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.832615, 34.550125, 31.293758> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.598942, 34.229683, 31.241684>,  <35.458736, 34.037418, 31.210440>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.598942, 34.229683, 31.241684>,  <35.832615, 34.550125, 31.293758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.598942, 34.229683, 31.241684> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298571, 0.062970, 0.952308,
		-0.754705, 0.595196, -0.275974,
		-0.584187, -0.801110, -0.130185,
		35.423687, 33.989349, 31.202629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.409431, 34.704636, 31.753906>,  <35.832615, 34.550125, 31.293758>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.409431, 34.704636, 31.753906> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.291992, 34.334309, 31.658686>,  <35.221527, 34.112114, 31.601553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.291992, 34.334309, 31.658686>,  <35.409431, 34.704636, 31.753906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.291992, 34.334309, 31.658686> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564577, -0.033017, 0.824720,
		-0.771397, 0.376535, -0.512999,
		-0.293598, -0.925814, -0.238052,
		35.203911, 34.056564, 31.587271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.644211, 34.620903, 31.846689>,  <35.409431, 34.704636, 31.753906>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.644211, 34.620903, 31.846689> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.823116, 34.266640, 31.896582>,  <34.930462, 34.054081, 31.926517>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.823116, 34.266640, 31.896582>,  <34.644211, 34.620903, 31.846689>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.823116, 34.266640, 31.896582> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516100, -0.141669, 0.844731,
		-0.730476, -0.442192, -0.520453,
		0.447265, -0.885661, 0.124729,
		34.957294, 34.000942, 31.934000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.083385, 34.180847, 32.142078>,  <34.644211, 34.620903, 31.846689>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.083385, 34.180847, 32.142078> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.413128, 33.970905, 32.226894>,  <34.610973, 33.844940, 32.277786>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.413128, 33.970905, 32.226894>,  <34.083385, 34.180847, 32.142078>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.413128, 33.970905, 32.226894> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467627, -0.420315, 0.777599,
		-0.319000, -0.740178, -0.591925,
		0.824356, -0.524855, 0.212046,
		34.660435, 33.813450, 32.290508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.962902, 33.346249, 32.211456>,  <34.083385, 34.180847, 32.142078>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.962902, 33.346249, 32.211456> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.300644, 33.403641, 32.417942>,  <34.503288, 33.438076, 32.541832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.300644, 33.403641, 32.417942>,  <33.962902, 33.346249, 32.211456>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.300644, 33.403641, 32.417942> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379584, -0.519771, 0.765346,
		0.378128, -0.842170, -0.384408,
		0.844355, 0.143483, 0.516214,
		34.553951, 33.446686, 32.572807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.156914, 32.722488, 32.577911>,  <33.962902, 33.346249, 32.211456>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.156914, 32.722488, 32.577911> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.313602, 33.029316, 32.781155>,  <34.407616, 33.213413, 32.903099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.313602, 33.029316, 32.781155>,  <34.156914, 32.722488, 32.577911>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.313602, 33.029316, 32.781155> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439263, -0.329328, 0.835818,
		0.808459, -0.550595, 0.207939,
		0.391717, 0.767064, 0.508104,
		34.431118, 33.259434, 32.933586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.376862, 32.455273, 33.234119>,  <34.156914, 32.722488, 32.577911>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.376862, 32.455273, 33.234119> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.395092, 32.846500, 33.315407>,  <34.406029, 33.081238, 33.364178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.395092, 32.846500, 33.315407>,  <34.376862, 32.455273, 33.234119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.395092, 32.846500, 33.315407> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171707, -0.192730, 0.966112,
		0.984093, -0.078923, 0.159158,
		0.045574, 0.978073, 0.203215,
		34.408764, 33.139923, 33.376373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.771816, 32.520725, 33.824753>,  <34.376862, 32.455273, 33.234119>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.771816, 32.520725, 33.824753> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.568481, 32.865185, 33.826641>,  <34.446480, 33.071861, 33.827774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.568481, 32.865185, 33.826641>,  <34.771816, 32.520725, 33.824753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.568481, 32.865185, 33.826641> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124520, -0.078930, 0.989073,
		0.852110, 0.502192, 0.147353,
		-0.508335, 0.861147, 0.004724,
		34.415981, 33.123528, 33.828060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.013676, 33.003193, 34.375011>,  <34.771816, 32.520725, 33.824753>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.013676, 33.003193, 34.375011> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.644627, 33.134743, 34.294399>,  <34.423199, 33.213673, 34.246033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.644627, 33.134743, 34.294399>,  <35.013676, 33.003193, 34.375011>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.644627, 33.134743, 34.294399> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244038, -0.093103, 0.965286,
		0.298693, 0.939773, 0.166156,
		-0.922620, 0.328873, -0.201531,
		34.367840, 33.233406, 34.233940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.872208, 33.350349, 34.969219>,  <35.013676, 33.003193, 34.375011>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.872208, 33.350349, 34.969219> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.526360, 33.288456, 34.778019>,  <34.318851, 33.251320, 34.663300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.526360, 33.288456, 34.778019>,  <34.872208, 33.350349, 34.969219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.526360, 33.288456, 34.778019> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460476, -0.136498, 0.877115,
		-0.200964, 0.978482, 0.046769,
		-0.864625, -0.154733, -0.477998,
		34.266972, 33.242035, 34.634621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<36.957062, 33.617203, 26.915611> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.599182, 33.440372, 26.890068>,  <36.384453, 33.334274, 26.874743>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.599182, 33.440372, 26.890068>,  <36.957062, 33.617203, 26.915611>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.599182, 33.440372, 26.890068> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263558, 0.407081, 0.874541,
		-0.360614, 0.799286, -0.480729,
		-0.894704, -0.442072, -0.063859,
		36.330772, 33.307751, 26.870911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.462807, 34.165535, 27.061958>,  <36.957062, 33.617203, 26.915611>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.462807, 34.165535, 27.061958> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.259068, 33.825714, 27.116854>,  <36.136826, 33.621822, 27.149790>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.259068, 33.825714, 27.116854>,  <36.462807, 34.165535, 27.061958>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.259068, 33.825714, 27.116854> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329131, 0.339661, 0.881081,
		-0.795135, 0.403605, -0.452617,
		-0.509345, -0.849549, 0.137237,
		36.106262, 33.570850, 27.158026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.826286, 34.298141, 27.238718>,  <36.462807, 34.165535, 27.061958>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.826286, 34.298141, 27.238718> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.841675, 33.925564, 27.383459>,  <35.850910, 33.702019, 27.470304>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.841675, 33.925564, 27.383459>,  <35.826286, 34.298141, 27.238718>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.841675, 33.925564, 27.383459> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363267, 0.324306, 0.873420,
		-0.930890, -0.165054, -0.325884,
		0.038475, -0.931441, 0.361852,
		35.853218, 33.646130, 27.492014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.185188, 34.219669, 27.645578>,  <35.826286, 34.298141, 27.238718>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.185188, 34.219669, 27.645578> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.398811, 33.907860, 27.776493>,  <35.526985, 33.720772, 27.855042>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.398811, 33.907860, 27.776493>,  <35.185188, 34.219669, 27.645578>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.398811, 33.907860, 27.776493> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224124, 0.242731, 0.943849,
		-0.815197, -0.577427, -0.045077,
		0.534062, -0.779525, 0.327289,
		35.559029, 33.674004, 27.874680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.800453, 33.850365, 28.106516>,  <35.185188, 34.219669, 27.645578>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.800453, 33.850365, 28.106516> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.171299, 33.732807, 28.199545>,  <35.393806, 33.662273, 28.255362>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.171299, 33.732807, 28.199545>,  <34.800453, 33.850365, 28.106516>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.171299, 33.732807, 28.199545> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209924, 0.106850, 0.971861,
		-0.310474, -0.949847, 0.037367,
		0.927112, -0.293893, 0.232570,
		35.449432, 33.644638, 28.269316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.712307, 33.397762, 28.574011>,  <34.800453, 33.850365, 28.106516>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.712307, 33.397762, 28.574011> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.092663, 33.500496, 28.643114>,  <35.320877, 33.562138, 28.684576>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.092663, 33.500496, 28.643114>,  <34.712307, 33.397762, 28.574011>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.092663, 33.500496, 28.643114> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164227, -0.054464, 0.984918,
		0.262371, -0.964919, -0.009610,
		0.950890, 0.256836, 0.172756,
		35.377930, 33.577545, 28.694941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.959190, 32.904457, 29.157736>,  <34.712307, 33.397762, 28.574011>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.959190, 32.904457, 29.157736> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.238976, 33.190327, 29.157381>,  <35.406845, 33.361847, 29.157167>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.238976, 33.190327, 29.157381>,  <34.959190, 32.904457, 29.157736>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.238976, 33.190327, 29.157381> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065305, 0.065152, 0.995736,
		0.711682, -0.696419, 0.092242,
		0.699459, 0.714672, -0.000888,
		35.448814, 33.404728, 29.157114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.489502, 32.725754, 29.583879>,  <34.959190, 32.904457, 29.157736>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.489502, 32.725754, 29.583879> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.522015, 33.122662, 29.546373>,  <35.541523, 33.360806, 29.523869>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.522015, 33.122662, 29.546373>,  <35.489502, 32.725754, 29.583879>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.522015, 33.122662, 29.546373> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032284, 0.091408, 0.995290,
		0.996169, -0.083922, -0.024605,
		0.081278, 0.992271, -0.093767,
		35.546398, 33.420341, 29.518244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.901585, 32.889530, 30.166800>,  <35.489502, 32.725754, 29.583879>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.901585, 32.889530, 30.166800> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.719250, 33.230732, 30.065132>,  <35.609848, 33.435452, 30.004131>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.719250, 33.230732, 30.065132>,  <35.901585, 32.889530, 30.166800>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.719250, 33.230732, 30.065132> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034082, 0.268625, 0.962642,
		0.889412, 0.447468, -0.093377,
		-0.455835, 0.853002, -0.254169,
		35.582500, 33.486633, 29.988882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.611626, 32.688553, 30.065714>,  <35.901585, 32.889530, 30.166800>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.611626, 32.688553, 30.065714> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.612030, 32.299625, 30.159182>,  <36.612270, 32.066269, 30.215263>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.612030, 32.299625, 30.159182>,  <36.611626, 32.688553, 30.065714>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.612030, 32.299625, 30.159182> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011499, -0.233644, -0.972254,
		0.999933, 0.003666, 0.010945,
		0.001007, -0.972316, 0.233670,
		36.612331, 32.007931, 30.229282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.184055, 32.392082, 29.673376>,  <36.611626, 32.688553, 30.065714>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.184055, 32.392082, 29.673376> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.945435, 32.083015, 29.760197>,  <36.802261, 31.897575, 29.812290>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.945435, 32.083015, 29.760197>,  <37.184055, 32.392082, 29.673376>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.945435, 32.083015, 29.760197> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137421, -0.364790, -0.920893,
		0.790721, -0.519533, 0.323797,
		-0.596552, -0.772666, 0.217053,
		36.766468, 31.851215, 29.825312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.488678, 31.846613, 29.386642>,  <37.184055, 32.392082, 29.673376>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.488678, 31.846613, 29.386642> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.111328, 31.728863, 29.447815>,  <36.884918, 31.658213, 29.484518>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.111328, 31.728863, 29.447815>,  <37.488678, 31.846613, 29.386642>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.111328, 31.728863, 29.447815> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063220, -0.612096, -0.788252,
		0.325650, -0.733949, 0.596046,
		-0.943374, -0.294376, 0.152929,
		36.828316, 31.640551, 29.493694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.637676, 31.172073, 29.094313>,  <37.488678, 31.846613, 29.386642>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.637676, 31.172073, 29.094313> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.242283, 31.216772, 29.135143>,  <37.005047, 31.243591, 29.159641>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.242283, 31.216772, 29.135143>,  <37.637676, 31.172073, 29.094313>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.242283, 31.216772, 29.135143> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147850, -0.568782, -0.809090,
		-0.032352, -0.814862, 0.578752,
		-0.988481, 0.111744, 0.102076,
		36.945740, 31.250296, 29.165766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.327404, 30.497509, 29.129324>,  <37.637676, 31.172073, 29.094313>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.327404, 30.497509, 29.129324> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.068264, 30.768753, 28.990494>,  <36.912781, 30.931499, 28.907196>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.068264, 30.768753, 28.990494>,  <37.327404, 30.497509, 29.129324>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.068264, 30.768753, 28.990494> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191737, -0.586101, -0.787224,
		-0.737245, -0.443454, 0.509723,
		-0.647848, 0.678110, -0.347074,
		36.873909, 30.972185, 28.886372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.785622, 30.083187, 28.774723>,  <37.327404, 30.497509, 29.129324>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.785622, 30.083187, 28.774723> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.749523, 30.459110, 28.642895>,  <36.727863, 30.684664, 28.563797>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.749523, 30.459110, 28.642895>,  <36.785622, 30.083187, 28.774723>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.749523, 30.459110, 28.642895> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207564, -0.341405, -0.916711,
		-0.974049, -0.014326, 0.225882,
		-0.090250, 0.939807, -0.329572,
		36.722446, 30.741053, 28.544024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.281429, 30.009733, 28.235479>,  <36.785622, 30.083187, 28.774723>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.281429, 30.009733, 28.235479> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.487316, 30.342735, 28.153500>,  <36.610847, 30.542536, 28.104311>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.487316, 30.342735, 28.153500>,  <36.281429, 30.009733, 28.235479>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.487316, 30.342735, 28.153500> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030910, -0.256911, -0.965941,
		-0.856803, 0.490851, -0.157969,
		0.514717, 0.832504, -0.204950,
		36.641731, 30.592487, 28.092014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.994625, 30.362011, 27.495722>,  <36.281429, 30.009733, 28.235479>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.994625, 30.362011, 27.495722> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.373543, 30.466381, 27.570080>,  <36.600891, 30.529003, 27.614695>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.373543, 30.466381, 27.570080>,  <35.994625, 30.362011, 27.495722>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.373543, 30.466381, 27.570080> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240568, -0.196129, -0.950610,
		-0.211580, 0.945225, -0.248562,
		0.947291, 0.260926, 0.185894,
		36.657730, 30.544659, 27.625849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.159718, 30.686144, 26.919710>,  <35.994625, 30.362011, 27.495722>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.159718, 30.686144, 26.919710> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.509876, 30.612286, 27.098408>,  <36.719971, 30.567970, 27.205627>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.509876, 30.612286, 27.098408>,  <36.159718, 30.686144, 26.919710>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.509876, 30.612286, 27.098408> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408935, -0.209951, -0.888084,
		0.257777, 0.960118, -0.108282,
		0.875399, -0.184647, 0.446746,
		36.772495, 30.556892, 27.232431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.691284, 30.899412, 26.446152>,  <36.159718, 30.686144, 26.919710>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.691284, 30.899412, 26.446152> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.935226, 30.663918, 26.658365>,  <37.081593, 30.522621, 26.785694>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.935226, 30.663918, 26.658365>,  <36.691284, 30.899412, 26.446152>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.935226, 30.663918, 26.658365> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333787, -0.416351, -0.845718,
		0.718792, 0.692852, -0.057403,
		0.609857, -0.588735, 0.530534,
		37.118183, 30.487297, 26.817526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.339935, 30.935829, 26.097778>,  <36.691284, 30.899412, 26.446152>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.339935, 30.935829, 26.097778> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.353771, 30.607069, 26.325211>,  <37.362072, 30.409813, 26.461670>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.353771, 30.607069, 26.325211>,  <37.339935, 30.935829, 26.097778>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.353771, 30.607069, 26.325211> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513262, -0.473551, -0.715760,
		0.857535, 0.316588, 0.405470,
		0.034590, -0.821902, 0.568579,
		37.364147, 30.360498, 26.495785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.013264, 30.714556, 26.035580>,  <37.339935, 30.935829, 26.097778>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.013264, 30.714556, 26.035580> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.778423, 30.405947, 26.133610>,  <37.637520, 30.220781, 26.192429>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.778423, 30.405947, 26.133610>,  <38.013264, 30.714556, 26.035580>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.778423, 30.405947, 26.133610> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447962, -0.561810, -0.695485,
		0.674268, -0.298538, 0.675454,
		-0.587105, -0.771521, 0.245077,
		37.602291, 30.174490, 26.207132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.436909, 30.126308, 25.990835>,  <38.013264, 30.714556, 26.035580>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.436909, 30.126308, 25.990835> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.071270, 29.964148, 25.994385>,  <37.851887, 29.866852, 25.996515>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.071270, 29.964148, 25.994385>,  <38.436909, 30.126308, 25.990835>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.071270, 29.964148, 25.994385> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279277, -0.645277, -0.711071,
		0.293997, -0.647508, 0.703065,
		-0.914095, -0.405403, 0.008876,
		37.797043, 29.842527, 25.997047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.613354, 29.456314, 26.039249>,  <38.436909, 30.126308, 25.990835>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.613354, 29.456314, 26.039249> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.233662, 29.429842, 25.916231>,  <38.005848, 29.413960, 25.842421>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.233662, 29.429842, 25.916231>,  <38.613354, 29.456314, 26.039249>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.233662, 29.429842, 25.916231> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275411, -0.647270, -0.710767,
		-0.152026, -0.759382, 0.632635,
		-0.949230, -0.066179, -0.307544,
		37.948895, 29.409988, 25.823969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<32.310120, 27.071758, 25.338776> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.644241, 27.270420, 25.433100>,  <32.844715, 27.389618, 25.489695>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.644241, 27.270420, 25.433100>,  <32.310120, 27.071758, 25.338776>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.644241, 27.270420, 25.433100> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112021, -0.266165, 0.957396,
		0.538260, -0.826130, -0.166692,
		0.835301, 0.496655, 0.235810,
		32.894833, 27.419416, 25.503843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.572121, 26.672911, 25.822802>,  <32.310120, 27.071758, 25.338776>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.572121, 26.672911, 25.822802> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.756187, 27.024508, 25.872797>,  <32.866627, 27.235466, 25.902794>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.756187, 27.024508, 25.872797>,  <32.572121, 26.672911, 25.822802>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.756187, 27.024508, 25.872797> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176549, -0.047373, 0.983151,
		0.870101, -0.474481, 0.133386,
		0.460167, 0.878990, 0.124988,
		32.894238, 27.288204, 25.910294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.851372, 26.586857, 26.476543>,  <32.572121, 26.672911, 25.822802>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.851372, 26.586857, 26.476543> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.887974, 26.978996, 26.406633>,  <32.909935, 27.214279, 26.364687>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.887974, 26.978996, 26.406633>,  <32.851372, 26.586857, 26.476543>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.887974, 26.978996, 26.406633> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007275, 0.176165, 0.984334,
		0.995778, -0.088798, 0.023251,
		0.091503, 0.980347, -0.174775,
		32.915424, 27.273100, 26.354200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.453514, 26.881409, 26.742188>,  <32.851372, 26.586857, 26.476543>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.453514, 26.881409, 26.742188> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.222729, 27.208109, 26.740025>,  <33.084259, 27.404129, 26.738728>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.222729, 27.208109, 26.740025>,  <33.453514, 26.881409, 26.742188>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.222729, 27.208109, 26.740025> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263028, 0.192065, 0.945477,
		0.773260, 0.544083, -0.325643,
		-0.576963, 0.816753, -0.005407,
		33.049641, 27.453135, 26.738403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.822578, 27.482885, 27.136236>,  <33.453514, 26.881409, 26.742188>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.822578, 27.482885, 27.136236> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.436272, 27.586388, 27.128799>,  <33.204487, 27.648489, 27.124338>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.436272, 27.586388, 27.128799>,  <33.822578, 27.482885, 27.136236>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.436272, 27.586388, 27.128799> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078810, 0.360915, 0.929263,
		0.247160, 0.895984, -0.368951,
		-0.965765, 0.258753, -0.018591,
		33.146542, 27.664013, 27.123222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.755680, 28.311405, 27.390228>,  <33.822578, 27.482885, 27.136236>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.755680, 28.311405, 27.390228> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.421028, 28.095081, 27.425041>,  <33.220238, 27.965288, 27.445929>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.421028, 28.095081, 27.425041>,  <33.755680, 28.311405, 27.390228>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.421028, 28.095081, 27.425041> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034921, 0.211220, 0.976814,
		-0.546651, 0.814195, -0.195599,
		-0.836632, -0.540807, 0.087032,
		33.170040, 27.932838, 27.451151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.385216, 28.744972, 27.775923>,  <33.755680, 28.311405, 27.390228>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.385216, 28.744972, 27.775923> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.139008, 28.430094, 27.791172>,  <32.991283, 28.241167, 27.800322>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.139008, 28.430094, 27.791172>,  <33.385216, 28.744972, 27.775923>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.139008, 28.430094, 27.791172> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184378, 0.190861, 0.964146,
		-0.766249, 0.586424, -0.262621,
		-0.615522, -0.787197, 0.038123,
		32.954350, 28.193935, 27.802608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.658379, 28.983791, 27.898865>,  <33.385216, 28.744972, 27.775923>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.658379, 28.983791, 27.898865> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.706505, 28.607628, 28.026085>,  <32.735382, 28.381929, 28.102417>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.706505, 28.607628, 28.026085>,  <32.658379, 28.983791, 27.898865>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.706505, 28.607628, 28.026085> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245053, 0.282331, 0.927490,
		-0.962015, -0.189530, -0.196481,
		0.120315, -0.940408, 0.318051,
		32.742599, 28.325506, 28.121500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.182007, 28.858067, 28.519459>,  <32.658379, 28.983791, 27.898865>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.182007, 28.858067, 28.519459> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.451168, 28.565866, 28.566050>,  <32.612667, 28.390547, 28.594004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.451168, 28.565866, 28.566050>,  <32.182007, 28.858067, 28.519459>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.451168, 28.565866, 28.566050> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023183, 0.136558, 0.990361,
		-0.739366, -0.669119, 0.074956,
		0.672905, -0.730501, 0.116478,
		32.653038, 28.346716, 28.600992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.918652, 28.501030, 28.933924>,  <32.182007, 28.858067, 28.519459>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.918652, 28.501030, 28.933924> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.297684, 28.377815, 28.967867>,  <32.525105, 28.303886, 28.988234>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.297684, 28.377815, 28.967867>,  <31.918652, 28.501030, 28.933924>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.297684, 28.377815, 28.967867> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055752, 0.102109, 0.993210,
		-0.314612, -0.945878, 0.079583,
		0.947581, -0.308039, 0.084860,
		32.581959, 28.285404, 28.993324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.906649, 27.963219, 29.501040>,  <31.918652, 28.501030, 28.933924>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.906649, 27.963219, 29.501040> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.289867, 28.074854, 29.474934>,  <32.519798, 28.141834, 29.459270>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.289867, 28.074854, 29.474934>,  <31.906649, 27.963219, 29.501040>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.289867, 28.074854, 29.474934> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034518, 0.113693, 0.992916,
		0.284533, -0.953511, 0.099289,
		0.958045, 0.279090, -0.065263,
		32.577282, 28.158581, 29.455355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.175652, 27.639380, 30.055122>,  <31.906649, 27.963219, 29.501040>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.175652, 27.639380, 30.055122> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.447487, 27.917042, 29.960203>,  <32.610588, 28.083639, 29.903252>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.447487, 27.917042, 29.960203>,  <32.175652, 27.639380, 30.055122>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.447487, 27.917042, 29.960203> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062033, 0.267935, 0.961438,
		0.730967, -0.668101, 0.139025,
		0.679588, 0.694155, -0.237296,
		32.651363, 28.125288, 29.889015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.705185, 27.504164, 30.503218>,  <32.175652, 27.639380, 30.055122>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.705185, 27.504164, 30.503218> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.742970, 27.884117, 30.384022>,  <32.765640, 28.112089, 30.312504>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.742970, 27.884117, 30.384022>,  <32.705185, 27.504164, 30.503218>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.742970, 27.884117, 30.384022> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031880, 0.302062, 0.952755,
		0.995018, -0.080497, 0.058814,
		0.094459, 0.949884, -0.297991,
		32.771309, 28.169083, 30.294624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.281166, 27.739201, 30.926548>,  <32.705185, 27.504164, 30.503218>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.281166, 27.739201, 30.926548> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.038006, 28.025057, 30.788132>,  <32.892109, 28.196571, 30.705082>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.038006, 28.025057, 30.788132>,  <33.281166, 27.739201, 30.926548>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.038006, 28.025057, 30.788132> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167311, 0.310740, 0.935654,
		0.776187, 0.626679, -0.069331,
		-0.607899, 0.714642, -0.346043,
		32.855637, 28.239450, 30.684319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.000759, 27.618193, 31.163977>,  <33.281166, 27.739201, 30.926548>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.000759, 27.618193, 31.163977> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.016468, 27.232731, 31.269678>,  <34.025894, 27.001453, 31.333099>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.016468, 27.232731, 31.269678>,  <34.000759, 27.618193, 31.163977>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.016468, 27.232731, 31.269678> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323190, -0.237991, -0.915920,
		0.945519, 0.121374, 0.302097,
		0.039272, -0.963654, 0.264252,
		34.028248, 26.943634, 31.348953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.755627, 27.367146, 31.114849>,  <34.000759, 27.618193, 31.163977>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.755627, 27.367146, 31.114849> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.505974, 27.059982, 31.057194>,  <34.356182, 26.875685, 31.022600>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.505974, 27.059982, 31.057194>,  <34.755627, 27.367146, 31.114849>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.505974, 27.059982, 31.057194> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423305, -0.177276, -0.888474,
		0.656716, -0.615538, 0.435703,
		-0.624130, -0.767910, -0.144140,
		34.318733, 26.829609, 31.013952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.235565, 26.895685, 30.863079>,  <34.755627, 27.367146, 31.114849>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.235565, 26.895685, 30.863079> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.878769, 26.744373, 30.764072>,  <34.664692, 26.653585, 30.704668>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.878769, 26.744373, 30.764072>,  <35.235565, 26.895685, 30.863079>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.878769, 26.744373, 30.764072> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441039, -0.608035, -0.660135,
		0.099217, -0.697996, 0.709196,
		-0.891987, -0.378280, -0.247516,
		34.611172, 26.630890, 30.689817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.406414, 26.188425, 30.684954>,  <35.235565, 26.895685, 30.863079>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.406414, 26.188425, 30.684954> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.048656, 26.233604, 30.511837>,  <34.834003, 26.260712, 30.407967>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.048656, 26.233604, 30.511837>,  <35.406414, 26.188425, 30.684954>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.048656, 26.233604, 30.511837> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379273, -0.321404, -0.867670,
		-0.237101, -0.940183, 0.244624,
		-0.894391, 0.112946, -0.432791,
		34.780338, 26.267488, 30.382000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.377251, 25.653135, 30.219418>,  <35.406414, 26.188425, 30.684954>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.377251, 25.653135, 30.219418> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.063778, 25.871323, 30.100552>,  <34.875694, 26.002235, 30.029232>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.063778, 25.871323, 30.100552>,  <35.377251, 25.653135, 30.219418>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.063778, 25.871323, 30.100552> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026230, -0.448913, -0.893191,
		-0.620606, -0.707773, 0.337498,
		-0.783683, 0.545467, -0.297163,
		34.828674, 26.034964, 30.011402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.848263, 25.294733, 29.801207>,  <35.377251, 25.653135, 30.219418>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.848263, 25.294733, 29.801207> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.794857, 25.675957, 29.692507>,  <34.762814, 25.904692, 29.627287>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.794857, 25.675957, 29.692507>,  <34.848263, 25.294733, 29.801207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.794857, 25.675957, 29.692507> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085422, -0.284254, -0.954936,
		-0.987358, -0.104286, 0.119365,
		-0.133517, 0.953061, -0.271752,
		34.754803, 25.961874, 29.610981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.389404, 25.249750, 29.204937>,  <34.848263, 25.294733, 29.801207>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.389404, 25.249750, 29.204937> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.561840, 25.608543, 29.165785>,  <34.665302, 25.823820, 29.142294>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.561840, 25.608543, 29.165785>,  <34.389404, 25.249750, 29.204937>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.561840, 25.608543, 29.165785> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055266, -0.134524, -0.989368,
		-0.900615, 0.421098, -0.107565,
		0.431090, 0.896984, -0.097881,
		34.691166, 25.877638, 29.136421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.984238, 25.580591, 28.761425>,  <34.389404, 25.249750, 29.204937>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.984238, 25.580591, 28.761425> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.320179, 25.795870, 28.733168>,  <34.521744, 25.925037, 28.716213>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.320179, 25.795870, 28.733168>,  <33.984238, 25.580591, 28.761425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.320179, 25.795870, 28.733168> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143179, 0.094112, -0.985212,
		-0.523589, 0.837549, 0.156099,
		0.839854, 0.538196, -0.070643,
		34.572136, 25.957329, 28.711975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.833973, 26.032238, 28.227041>,  <33.984238, 25.580591, 28.761425>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.833973, 26.032238, 28.227041> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.232586, 26.056482, 28.249830>,  <34.471756, 26.071030, 28.263504>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.232586, 26.056482, 28.249830>,  <33.833973, 26.032238, 28.227041>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.232586, 26.056482, 28.249830> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051777, 0.084091, -0.995112,
		-0.065106, 0.994613, 0.080661,
		0.996534, 0.060611, 0.056973,
		34.531548, 26.074665, 28.266922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.019386, 26.505964, 27.756924>,  <33.833973, 26.032238, 28.227041>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.019386, 26.505964, 27.756924> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.351578, 26.295862, 27.831120>,  <34.550892, 26.169800, 27.875637>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.351578, 26.295862, 27.831120>,  <34.019386, 26.505964, 27.756924>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.351578, 26.295862, 27.831120> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232688, 0.024567, -0.972241,
		0.506120, 0.850589, 0.142624,
		0.830481, -0.525257, 0.185488,
		34.600723, 26.138285, 27.886766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.518250, 26.853603, 27.362036>,  <34.019386, 26.505964, 27.756924>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.518250, 26.853603, 27.362036> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.684578, 26.497864, 27.438091>,  <34.784374, 26.284420, 27.483725>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.684578, 26.497864, 27.438091>,  <34.518250, 26.853603, 27.362036>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.684578, 26.497864, 27.438091> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358982, -0.031586, -0.932810,
		0.835600, 0.456135, 0.306127,
		0.415818, -0.889350, 0.190137,
		34.809322, 26.231058, 27.495132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.272682, 26.822021, 27.136051>,  <34.518250, 26.853603, 27.362036>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.272682, 26.822021, 27.136051> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.151588, 26.440830, 27.141565>,  <35.078934, 26.212116, 27.144875>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.151588, 26.440830, 27.141565>,  <35.272682, 26.822021, 27.136051>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.151588, 26.440830, 27.141565> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415759, -0.145062, -0.897832,
		0.857612, -0.266072, 0.440123,
		-0.302732, -0.952976, 0.013785,
		35.060768, 26.154938, 27.145700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.591465, 26.691933, 26.551828>,  <35.272682, 26.822021, 27.136051>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.591465, 26.691933, 26.551828> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.402035, 26.348436, 26.630095>,  <35.288376, 26.142338, 26.677055>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.402035, 26.348436, 26.630095>,  <35.591465, 26.691933, 26.551828>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.402035, 26.348436, 26.630095> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165073, -0.304764, -0.938014,
		0.865145, -0.411923, 0.286085,
		-0.473578, -0.858742, 0.195668,
		35.259960, 26.090815, 26.688795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.041428, 26.038855, 26.448500>,  <35.591465, 26.691933, 26.551828>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.041428, 26.038855, 26.448500> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.652473, 25.957296, 26.403069>,  <35.419102, 25.908361, 26.375811>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.652473, 25.957296, 26.403069>,  <36.041428, 26.038855, 26.448500>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.652473, 25.957296, 26.403069> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194453, -0.438611, -0.877388,
		0.129080, -0.875241, 0.466145,
		-0.972382, -0.203896, -0.113577,
		35.360760, 25.896128, 26.368996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.687515, 25.510214, 26.380350>,  <36.041428, 26.038855, 26.448500>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.687515, 25.510214, 26.380350> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.959957, 25.790283, 26.294695>,  <37.123421, 25.958324, 26.243301>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.959957, 25.790283, 26.294695>,  <36.687515, 25.510214, 26.380350>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.959957, 25.790283, 26.294695> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061687, 0.346299, 0.936094,
		0.729583, -0.624368, 0.279058,
		0.681105, 0.700172, -0.214138,
		37.164288, 26.000336, 26.230453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.978462, 25.668074, 27.017611>,  <36.687515, 25.510214, 26.380350>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.978462, 25.668074, 27.017611> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.120415, 25.979479, 26.810543>,  <37.205585, 26.166321, 26.686302>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.120415, 25.979479, 26.810543>,  <36.978462, 25.668074, 27.017611>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.120415, 25.979479, 26.810543> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122809, 0.587728, 0.799683,
		0.926811, -0.220217, 0.304181,
		0.354879, 0.778512, -0.517668,
		37.226879, 26.213032, 26.655243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.544785, 25.887531, 27.357916>,  <36.978462, 25.668074, 27.017611>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.544785, 25.887531, 27.357916> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.413780, 26.204586, 27.152212>,  <37.335178, 26.394819, 27.028790>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.413780, 26.204586, 27.152212>,  <37.544785, 25.887531, 27.357916>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.413780, 26.204586, 27.152212> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039100, 0.532441, 0.845564,
		0.944038, 0.297038, -0.143388,
		-0.327510, 0.792638, -0.514259,
		37.315529, 26.442377, 26.997934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.939205, 26.426098, 27.452518>,  <37.544785, 25.887531, 27.357916>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.939205, 26.426098, 27.452518> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.620838, 26.628571, 27.319674>,  <37.429817, 26.750055, 27.239967>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.620838, 26.628571, 27.319674>,  <37.939205, 26.426098, 27.452518>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.620838, 26.628571, 27.319674> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001202, 0.549893, 0.835234,
		0.605406, 0.664376, -0.438277,
		-0.795916, 0.506182, -0.332110,
		37.382065, 26.780426, 27.220041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.057220, 27.042198, 27.774021>,  <37.939205, 26.426098, 27.452518>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.057220, 27.042198, 27.774021> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.671402, 27.022135, 27.670378>,  <37.439911, 27.010096, 27.608192>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.671402, 27.022135, 27.670378>,  <38.057220, 27.042198, 27.774021>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.671402, 27.022135, 27.670378> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263504, 0.237988, 0.934841,
		0.014772, 0.969972, -0.242768,
		-0.964545, -0.050161, -0.259107,
		37.382038, 27.007086, 27.592646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.826530, 27.679239, 27.841619>,  <38.057220, 27.042198, 27.774021>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.826530, 27.679239, 27.841619> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.503708, 27.443441, 27.828011>,  <37.310013, 27.301962, 27.819845>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.503708, 27.443441, 27.828011>,  <37.826530, 27.679239, 27.841619>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.503708, 27.443441, 27.828011> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354069, 0.437024, 0.826828,
		-0.472543, 0.679342, -0.561425,
		-0.807055, -0.589495, -0.034021,
		37.261593, 27.266592, 27.817804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.289951, 28.115404, 27.906511>,  <37.826530, 27.679239, 27.841619>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.289951, 28.115404, 27.906511> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.172176, 27.758141, 28.042498>,  <37.101513, 27.543783, 28.124088>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.172176, 27.758141, 28.042498>,  <37.289951, 28.115404, 27.906511>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.172176, 27.758141, 28.042498> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364475, 0.433794, 0.824003,
		-0.883439, 0.118708, -0.453259,
		-0.294436, -0.893158, 0.339965,
		37.083847, 27.490192, 28.144487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.747932, 28.275301, 28.243074>,  <37.289951, 28.115404, 27.906511>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.747932, 28.275301, 28.243074> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.808556, 27.907639, 28.388500>,  <36.844929, 27.687040, 28.475756>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.808556, 27.907639, 28.388500>,  <36.747932, 28.275301, 28.243074>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.808556, 27.907639, 28.388500> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374117, 0.287110, 0.881819,
		-0.914913, -0.269665, -0.300358,
		0.151560, -0.919157, 0.363567,
		36.854023, 27.631891, 28.497570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.255402, 28.189781, 28.832428>,  <36.747932, 28.275301, 28.243074>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.255402, 28.189781, 28.832428> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.512871, 27.892323, 28.904741>,  <36.667351, 27.713848, 28.948130>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.512871, 27.892323, 28.904741>,  <36.255402, 28.189781, 28.832428>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.512871, 27.892323, 28.904741> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229043, 0.038207, 0.972666,
		-0.730226, -0.667482, -0.145734,
		0.643669, -0.743646, 0.180782,
		36.705971, 27.669230, 28.958975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.993660, 27.575848, 29.349751>,  <36.255402, 28.189781, 28.832428>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.993660, 27.575848, 29.349751> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.390678, 27.617983, 29.374247>,  <36.628891, 27.643265, 29.388945>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.390678, 27.617983, 29.374247>,  <35.993660, 27.575848, 29.349751>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.390678, 27.617983, 29.374247> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063340, 0.016691, 0.997853,
		0.104091, -0.994296, 0.023239,
		0.992549, 0.105339, 0.061242,
		36.688442, 27.649584, 29.392618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.234901, 27.143667, 29.879519>,  <35.993660, 27.575848, 29.349751>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.234901, 27.143667, 29.879519> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.563980, 27.364866, 29.826818>,  <36.761429, 27.497585, 29.795198>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.563980, 27.364866, 29.826818>,  <36.234901, 27.143667, 29.879519>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.563980, 27.364866, 29.826818> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186835, -0.044140, 0.981399,
		0.536898, -0.832012, -0.139634,
		0.822699, 0.552999, -0.131750,
		36.810791, 27.530766, 29.787294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.704479, 26.841442, 30.245659>,  <36.234901, 27.143667, 29.879519>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.704479, 26.841442, 30.245659> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.834549, 27.218403, 30.214323>,  <36.912590, 27.444580, 30.195522>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.834549, 27.218403, 30.214323>,  <36.704479, 26.841442, 30.245659>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.834549, 27.218403, 30.214323> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246577, -0.004524, 0.969112,
		0.912940, -0.334448, -0.233846,
		0.325176, 0.942403, -0.078338,
		36.932102, 27.501123, 30.190823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.287643, 26.839327, 30.773565>,  <36.704479, 26.841442, 30.245659>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.287643, 26.839327, 30.773565> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.213936, 27.223877, 30.691778>,  <37.169712, 27.454607, 30.642706>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.213936, 27.223877, 30.691778>,  <37.287643, 26.839327, 30.773565>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.213936, 27.223877, 30.691778> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167863, 0.235756, 0.957205,
		0.968436, 0.142057, -0.204821,
		-0.184266, 0.961373, -0.204468,
		37.158657, 27.512289, 30.630438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.781551, 27.175634, 31.123877>,  <37.287643, 26.839327, 30.773565>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.781551, 27.175634, 31.123877> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.504501, 27.455437, 31.053492>,  <37.338272, 27.623318, 31.011261>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.504501, 27.455437, 31.053492>,  <37.781551, 27.175634, 31.123877>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.504501, 27.455437, 31.053492> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192376, 0.414263, 0.889594,
		0.695172, 0.582302, -0.421497,
		-0.692623, 0.699507, -0.175963,
		37.296715, 27.665289, 31.000702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<38.531548, 28.610874, 26.013235> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.240498, 28.788700, 25.804270>,  <38.065868, 28.895395, 25.678890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.240498, 28.788700, 25.804270>,  <38.531548, 28.610874, 26.013235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.240498, 28.788700, 25.804270> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238971, -0.549585, -0.800530,
		-0.643001, -0.707330, 0.293655,
		-0.727628, 0.444567, -0.522415,
		38.022209, 28.922070, 25.647545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.150105, 28.083370, 25.751375>,  <38.531548, 28.610874, 26.013235>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.150105, 28.083370, 25.751375> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.097744, 28.403465, 25.517286>,  <38.066330, 28.595522, 25.376833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.097744, 28.403465, 25.517286>,  <38.150105, 28.083370, 25.751375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.097744, 28.403465, 25.517286> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099210, -0.576763, -0.810865,
		-0.986419, -0.164201, -0.003894,
		-0.130899, 0.800239, -0.585220,
		38.058475, 28.643538, 25.341721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.557114, 27.985285, 25.292782>,  <38.150105, 28.083370, 25.751375>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.557114, 27.985285, 25.292782> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.770000, 28.265949, 25.103292>,  <37.897732, 28.434347, 24.989599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.770000, 28.265949, 25.103292>,  <37.557114, 27.985285, 25.292782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.770000, 28.265949, 25.103292> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013087, -0.566307, -0.824091,
		-0.846504, 0.432399, -0.310583,
		0.532221, 0.701661, -0.473722,
		37.929668, 28.476448, 24.961176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.170666, 28.119320, 24.649984>,  <37.557114, 27.985285, 25.292782>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.170666, 28.119320, 24.649984> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.551895, 28.233202, 24.608824>,  <37.780632, 28.301531, 24.584127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.551895, 28.233202, 24.608824>,  <37.170666, 28.119320, 24.649984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.551895, 28.233202, 24.608824> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008067, -0.315906, -0.948756,
		-0.302624, 0.905067, -0.298786,
		0.953076, 0.284706, -0.102902,
		37.837818, 28.318613, 24.577953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.190281, 28.561523, 24.070141>,  <37.170666, 28.119320, 24.649984>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.190281, 28.561523, 24.070141> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.575706, 28.457123, 24.093523>,  <37.806961, 28.394482, 24.107552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.575706, 28.457123, 24.093523>,  <37.190281, 28.561523, 24.070141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.575706, 28.457123, 24.093523> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026584, -0.124007, -0.991925,
		0.266143, 0.957340, -0.112550,
		0.963567, -0.261002, 0.058454,
		37.864777, 28.378822, 24.111059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.472511, 28.903669, 23.504307>,  <37.190281, 28.561523, 24.070141>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.472511, 28.903669, 23.504307> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.748314, 28.637980, 23.619810>,  <37.913795, 28.478565, 23.689112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.748314, 28.637980, 23.619810>,  <37.472511, 28.903669, 23.504307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.748314, 28.637980, 23.619810> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310340, -0.089288, -0.946423,
		0.654421, 0.742181, 0.144571,
		0.689509, -0.664225, 0.288761,
		37.955166, 28.438711, 23.706438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.142914, 29.156796, 23.209261>,  <37.472511, 28.903669, 23.504307>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.142914, 29.156796, 23.209261> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.168629, 28.767616, 23.298021>,  <38.184059, 28.534109, 23.351278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.168629, 28.767616, 23.298021>,  <38.142914, 29.156796, 23.209261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.168629, 28.767616, 23.298021> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228846, -0.202064, -0.952260,
		0.971338, 0.112000, 0.209664,
		0.064288, -0.972947, 0.221903,
		38.187916, 28.475733, 23.364592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.844334, 29.021175, 23.020868>,  <38.142914, 29.156796, 23.209261>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.844334, 29.021175, 23.020868> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.626236, 28.686863, 23.046721>,  <38.495377, 28.486275, 23.062231>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.626236, 28.686863, 23.046721>,  <38.844334, 29.021175, 23.020868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.626236, 28.686863, 23.046721> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304509, -0.269308, -0.913645,
		0.781013, -0.478480, 0.401342,
		-0.545246, -0.835781, 0.064631,
		38.462662, 28.436129, 23.066111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.330124, 28.529503, 22.867840>,  <38.844334, 29.021175, 23.020868>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.330124, 28.529503, 22.867840> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.969379, 28.374044, 22.792374>,  <38.752934, 28.280769, 22.747093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.969379, 28.374044, 22.792374>,  <39.330124, 28.529503, 22.867840>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.969379, 28.374044, 22.792374> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325735, -0.324852, -0.887901,
		0.283792, -0.862221, 0.419568,
		-0.901864, -0.388647, -0.188665,
		38.698822, 28.257450, 22.735773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.493805, 27.990757, 22.485756>,  <39.330124, 28.529503, 22.867840>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.493805, 27.990757, 22.485756> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.108784, 28.063911, 22.405714>,  <38.877769, 28.107803, 22.357689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.108784, 28.063911, 22.405714>,  <39.493805, 27.990757, 22.485756>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.108784, 28.063911, 22.405714> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146859, -0.268669, -0.951971,
		-0.227858, -0.945712, 0.231751,
		-0.962555, 0.182880, -0.200105,
		38.820019, 28.118776, 22.345682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.241646, 27.277790, 22.276312>,  <39.493805, 27.990757, 22.485756>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.241646, 27.277790, 22.276312> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.981754, 27.554419, 22.150089>,  <38.825817, 27.720396, 22.074356>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.981754, 27.554419, 22.150089>,  <39.241646, 27.277790, 22.276312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.981754, 27.554419, 22.150089> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044671, -0.379662, -0.924046,
		-0.758850, -0.614478, 0.215785,
		-0.649731, 0.691574, -0.315556,
		38.786835, 27.761890, 22.055422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.668789, 26.934578, 21.873119>,  <39.241646, 27.277790, 22.276312>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.668789, 26.934578, 21.873119> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.700958, 27.317953, 21.763630>,  <38.720261, 27.547979, 21.697935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.700958, 27.317953, 21.763630>,  <38.668789, 26.934578, 21.873119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.700958, 27.317953, 21.763630> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042507, -0.271067, -0.961622,
		-0.995854, 0.088968, 0.018941,
		0.080419, 0.958440, -0.273725,
		38.725082, 27.605486, 21.681513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.023495, 27.020117, 21.496660>,  <38.668789, 26.934578, 21.873119>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.023495, 27.020117, 21.496660> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.334236, 27.251816, 21.397890>,  <38.520679, 27.390835, 21.338627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.334236, 27.251816, 21.397890>,  <38.023495, 27.020117, 21.496660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.334236, 27.251816, 21.397890> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078492, -0.300006, -0.950703,
		-0.624769, 0.757939, -0.187595,
		0.776854, 0.579245, -0.246926,
		38.567291, 27.425589, 21.323812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.288559, 26.244556, 21.485577>,  <38.023495, 27.020117, 21.496660>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.288559, 26.244556, 21.485577> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.552330, 26.249685, 21.786240>,  <38.710594, 26.252762, 21.966639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.552330, 26.249685, 21.786240>,  <38.288559, 26.244556, 21.485577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.552330, 26.249685, 21.786240> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710826, -0.314828, 0.628975,
		0.244709, -0.949062, -0.198491,
		0.659427, 0.012823, 0.751660,
		38.750156, 26.253532, 22.011738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.182884, 25.752750, 20.959003>,  <38.288559, 26.244556, 21.485577>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.182884, 25.752750, 20.959003> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.212608, 25.355972, 20.917978>,  <38.230442, 25.117905, 20.893364>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.212608, 25.355972, 20.917978>,  <38.182884, 25.752750, 20.959003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.212608, 25.355972, 20.917978> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091186, -0.109173, 0.989831,
		-0.993058, -0.064198, -0.098564,
		0.074306, -0.991948, -0.102561,
		38.234901, 25.058388, 20.887211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.707638, 25.521376, 21.419500>,  <38.182884, 25.752750, 20.959003>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.707638, 25.521376, 21.419500> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.913673, 25.187174, 21.342962>,  <38.037296, 24.986652, 21.297039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.913673, 25.187174, 21.342962>,  <37.707638, 25.521376, 21.419500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.913673, 25.187174, 21.342962> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123690, -0.293354, 0.947968,
		-0.848164, -0.464622, -0.254448,
		0.515090, -0.835505, -0.191344,
		38.068199, 24.936522, 21.285559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.352093, 25.051664, 21.751183>,  <37.707638, 25.521376, 21.419500>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.352093, 25.051664, 21.751183> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.705601, 24.869356, 21.708805>,  <37.917706, 24.759972, 21.683378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.705601, 24.869356, 21.708805>,  <37.352093, 25.051664, 21.751183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.705601, 24.869356, 21.708805> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002145, -0.230357, 0.973104,
		-0.467916, -0.859773, -0.204560,
		0.883771, -0.455769, -0.105943,
		37.970734, 24.732626, 21.677023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.276707, 24.514791, 22.143730>,  <37.352093, 25.051664, 21.751183>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.276707, 24.514791, 22.143730> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.669136, 24.585197, 22.111467>,  <37.904594, 24.627441, 22.092110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.669136, 24.585197, 22.111467>,  <37.276707, 24.514791, 22.143730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.669136, 24.585197, 22.111467> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078256, 0.020539, 0.996722,
		0.177098, -0.984173, 0.006375,
		0.981077, 0.176018, -0.080655,
		37.963459, 24.638002, 22.087271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.700012, 23.997883, 22.580765>,  <37.276707, 24.514791, 22.143730>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.700012, 23.997883, 22.580765> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.896412, 24.341476, 22.522703>,  <38.014252, 24.547632, 22.487865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.896412, 24.341476, 22.522703>,  <37.700012, 23.997883, 22.580765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.896412, 24.341476, 22.522703> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229141, 0.033412, 0.972819,
		0.840486, -0.510911, -0.180423,
		0.490996, 0.858984, -0.145153,
		38.043713, 24.599171, 22.479156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.349335, 23.941490, 22.889532>,  <37.700012, 23.997883, 22.580765>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.349335, 23.941490, 22.889532> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.270744, 24.332869, 22.864115>,  <38.223591, 24.567696, 22.848864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.270744, 24.332869, 22.864115>,  <38.349335, 23.941490, 22.889532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.270744, 24.332869, 22.864115> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121983, 0.088695, 0.988561,
		0.972891, 0.186481, -0.136780,
		-0.196480, 0.978447, -0.063543,
		38.211800, 24.626402, 22.845053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.663788, 24.222036, 23.456856>,  <38.349335, 23.941490, 22.889532>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.663788, 24.222036, 23.456856> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.459393, 24.544910, 23.338640>,  <38.336754, 24.738634, 23.267712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.459393, 24.544910, 23.338640>,  <38.663788, 24.222036, 23.456856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.459393, 24.544910, 23.338640> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019216, 0.354454, 0.934876,
		0.859373, 0.472032, -0.196633,
		-0.510988, 0.807185, -0.295538,
		38.306095, 24.787066, 23.249979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.884289, 24.789234, 23.839857>,  <38.663788, 24.222036, 23.456856>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.884289, 24.789234, 23.839857> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.518982, 24.909607, 23.730032>,  <38.299797, 24.981831, 23.664137>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.518982, 24.909607, 23.730032>,  <38.884289, 24.789234, 23.839857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.518982, 24.909607, 23.730032> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149729, 0.378849, 0.913266,
		0.378849, 0.875164, -0.300932,
		-0.913266, 0.300932, -0.274564,
		38.245003, 24.999887, 23.647663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.793472, 25.481468, 24.120077>,  <38.884289, 24.789234, 23.839857>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.793472, 25.481468, 24.120077> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.411419, 25.388365, 24.046810>,  <38.182186, 25.332502, 24.002850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.411419, 25.388365, 24.046810>,  <38.793472, 25.481468, 24.120077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.411419, 25.388365, 24.046810> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257262, 0.345498, 0.902467,
		-0.146773, 0.909095, -0.389875,
		-0.955130, -0.232759, -0.183166,
		38.124882, 25.318537, 23.991859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.347084, 26.120089, 24.193911>,  <38.793472, 25.481468, 24.120077>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.347084, 26.120089, 24.193911> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.114841, 25.798677, 24.246431>,  <37.975494, 25.605831, 24.277943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.114841, 25.798677, 24.246431>,  <38.347084, 26.120089, 24.193911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.114841, 25.798677, 24.246431> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237077, 0.321130, 0.916881,
		-0.778902, 0.501220, -0.376948,
		-0.580609, -0.803526, 0.131301,
		37.940659, 25.557619, 24.285822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.661835, 26.392551, 24.274469>,  <38.347084, 26.120089, 24.193911>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.661835, 26.392551, 24.274469> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.700008, 26.027054, 24.432440>,  <37.722912, 25.807756, 24.527222>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.700008, 26.027054, 24.432440>,  <37.661835, 26.392551, 24.274469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.700008, 26.027054, 24.432440> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225599, 0.366559, 0.902629,
		-0.969534, -0.175240, -0.171156,
		0.095438, -0.913743, 0.394925,
		37.728642, 25.752932, 24.550917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.086704, 26.317366, 24.672480>,  <37.661835, 26.392551, 24.274469>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.086704, 26.317366, 24.672480> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.302048, 26.018696, 24.828760>,  <37.431255, 25.839495, 24.922529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.302048, 26.018696, 24.828760>,  <37.086704, 26.317366, 24.672480>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.302048, 26.018696, 24.828760> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432183, 0.153382, 0.888646,
		-0.723455, -0.647265, -0.240125,
		0.538359, -0.746674, 0.390702,
		37.463554, 25.794693, 24.945971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.669922, 26.043461, 25.028721>,  <37.086704, 26.317366, 24.672480>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.669922, 26.043461, 25.028721> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.031712, 25.960033, 25.177542>,  <37.248787, 25.909977, 25.266834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.031712, 25.960033, 25.177542>,  <36.669922, 26.043461, 25.028721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.031712, 25.960033, 25.177542> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305824, 0.290908, 0.906556,
		-0.297314, -0.933740, 0.199333,
		0.904475, -0.208571, 0.372051,
		37.303055, 25.897463, 25.289158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.484718, 25.759050, 25.691893>,  <36.669922, 26.043461, 25.028721>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.484718, 25.759050, 25.691893> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.868877, 25.852917, 25.751980>,  <37.099373, 25.909237, 25.788033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.868877, 25.852917, 25.751980>,  <36.484718, 25.759050, 25.691893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.868877, 25.852917, 25.751980> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215103, 0.281773, 0.935059,
		0.177103, -0.930341, 0.321092,
		0.960398, 0.234669, 0.150216,
		37.156998, 25.923317, 25.797045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.987041, 25.231491, 25.931650>,  <36.484718, 25.759050, 25.691893>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.987041, 25.231491, 25.931650> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.638065, 25.426977, 25.932102>,  <35.428680, 25.544268, 25.932373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.638065, 25.426977, 25.932102>,  <35.987041, 25.231491, 25.931650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.638065, 25.426977, 25.932102> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065950, 0.120023, -0.990578,
		-0.484245, -0.864149, -0.136944,
		-0.872443, 0.488714, 0.001130,
		35.376331, 25.573591, 25.932442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.601772, 24.854071, 25.411043>,  <35.987041, 25.231491, 25.931650>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.601772, 24.854071, 25.411043> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.434902, 25.215271, 25.452141>,  <35.334782, 25.431992, 25.476799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.434902, 25.215271, 25.452141>,  <35.601772, 24.854071, 25.411043>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.434902, 25.215271, 25.452141> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063206, 0.083949, -0.994463,
		-0.906626, -0.421357, 0.022054,
		-0.417173, 0.903001, 0.102743,
		35.309750, 25.486172, 25.482964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.026772, 24.838419, 24.967102>,  <35.601772, 24.854071, 25.411043>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.026772, 24.838419, 24.967102> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.135349, 25.219648, 25.020723>,  <35.200497, 25.448385, 25.052896>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.135349, 25.219648, 25.020723>,  <35.026772, 24.838419, 24.967102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.135349, 25.219648, 25.020723> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200874, 0.080115, -0.976336,
		-0.941257, 0.291953, -0.169700,
		0.271449, 0.953071, 0.134055,
		35.216785, 25.505569, 25.060940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.594841, 25.227417, 24.591944>,  <35.026772, 24.838419, 24.967102>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.594841, 25.227417, 24.591944> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.871361, 25.512089, 24.641930>,  <35.037273, 25.682892, 24.671921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.871361, 25.512089, 24.641930>,  <34.594841, 25.227417, 24.591944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.871361, 25.512089, 24.641930> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067929, 0.236190, -0.969330,
		-0.719369, 0.661607, 0.211622,
		0.691298, 0.711681, 0.124965,
		35.078751, 25.725594, 24.679419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.302765, 25.707228, 24.238419>,  <34.594841, 25.227417, 24.591944>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.302765, 25.707228, 24.238419> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.699474, 25.754145, 24.258932>,  <34.937500, 25.782295, 24.271240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.699474, 25.754145, 24.258932>,  <34.302765, 25.707228, 24.238419>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.699474, 25.754145, 24.258932> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045613, 0.050536, -0.997680,
		-0.119614, 0.991810, 0.044770,
		0.991772, 0.117295, 0.051284,
		34.997005, 25.789333, 24.274317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.421314, 26.275738, 23.927500>,  <34.302765, 25.707228, 24.238419>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.421314, 26.275738, 23.927500> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.785202, 26.109655, 23.929459>,  <35.003532, 26.010006, 23.930634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.785202, 26.109655, 23.929459>,  <34.421314, 26.275738, 23.927500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.785202, 26.109655, 23.929459> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136753, 0.288453, -0.947678,
		0.392068, 0.862787, 0.319190,
		0.909715, -0.415204, 0.004896,
		35.058117, 25.985094, 23.930927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.893509, 26.826586, 23.570517>,  <34.421314, 26.275738, 23.927500>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.893509, 26.826586, 23.570517> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.037579, 26.456093, 23.526028>,  <35.124020, 26.233797, 23.499334>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.037579, 26.456093, 23.526028>,  <34.893509, 26.826586, 23.570517>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.037579, 26.456093, 23.526028> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026307, 0.129262, -0.991261,
		0.932515, 0.354098, 0.070923,
		0.360171, -0.926232, -0.111223,
		35.145630, 26.178223, 23.492661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.884445, 27.552099, 23.437809>,  <34.893509, 26.826586, 23.570517>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.884445, 27.552099, 23.437809> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.593956, 27.754616, 23.251787>,  <34.419662, 27.876125, 23.140175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.593956, 27.754616, 23.251787>,  <34.884445, 27.552099, 23.437809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.593956, 27.754616, 23.251787> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413009, 0.219480, 0.883885,
		0.549573, 0.833966, 0.049712,
		-0.726219, 0.506290, -0.465055,
		34.376091, 27.906504, 23.112270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.861954, 28.257610, 23.650080>,  <34.884445, 27.552099, 23.437809>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.861954, 28.257610, 23.650080> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.490761, 28.163151, 23.534786>,  <34.268044, 28.106476, 23.465611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.490761, 28.163151, 23.534786>,  <34.861954, 28.257610, 23.650080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.490761, 28.163151, 23.534786> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326799, 0.144180, 0.934031,
		-0.179012, 0.960961, -0.210969,
		-0.927985, -0.236147, -0.288232,
		34.212364, 28.092306, 23.448317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.416523, 28.676550, 24.024124>,  <34.861954, 28.257610, 23.650080>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.416523, 28.676550, 24.024124> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.151649, 28.418447, 23.871725>,  <33.992725, 28.263586, 23.780287>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.151649, 28.418447, 23.871725>,  <34.416523, 28.676550, 24.024124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.151649, 28.418447, 23.871725> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540845, 0.059638, 0.839006,
		-0.518651, 0.761636, -0.388474,
		-0.662184, -0.645255, -0.380995,
		33.952995, 28.224871, 23.757427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.702133, 28.917055, 24.291424>,  <34.416523, 28.676550, 24.024124>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.702133, 28.917055, 24.291424> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.687298, 28.527060, 24.203766>,  <33.678398, 28.293062, 24.151171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.687298, 28.527060, 24.203766>,  <33.702133, 28.917055, 24.291424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.687298, 28.527060, 24.203766> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624413, -0.148604, 0.766828,
		-0.780213, 0.165277, -0.603283,
		-0.037088, -0.974987, -0.219144,
		33.676170, 28.234564, 24.138023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.051392, 28.718315, 24.505598>,  <33.702133, 28.917055, 24.291424>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.051392, 28.718315, 24.505598> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.239040, 28.365227, 24.494823>,  <33.351631, 28.153374, 24.488358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.239040, 28.365227, 24.494823>,  <33.051392, 28.718315, 24.505598>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.239040, 28.365227, 24.494823> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561698, -0.321774, 0.762205,
		-0.681484, -0.342435, -0.646775,
		0.469121, -0.882723, -0.026939,
		33.379776, 28.100410, 24.486742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.497974, 28.295855, 24.760729>,  <33.051392, 28.718315, 24.505598>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.497974, 28.295855, 24.760729> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.824482, 28.065845, 24.782837>,  <33.020386, 27.927839, 24.796103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.824482, 28.065845, 24.782837>,  <32.497974, 28.295855, 24.760729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.824482, 28.065845, 24.782837> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273254, -0.300042, 0.913952,
		-0.508962, -0.761131, -0.402042,
		0.816266, -0.575026, 0.055272,
		33.069363, 27.893337, 24.799419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.279057, 27.774185, 25.133942>,  <32.497974, 28.295855, 24.760729>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.279057, 27.774185, 25.133942> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.677071, 27.738708, 25.152040>,  <32.915878, 27.717422, 25.162901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.677071, 27.738708, 25.152040>,  <32.279057, 27.774185, 25.133942>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.677071, 27.738708, 25.152040> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075848, -0.380772, 0.921553,
		-0.064505, -0.920406, -0.385607,
		0.995031, -0.088692, 0.045249,
		32.975578, 27.712101, 25.165615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<36.934387, 30.604843, 20.627645> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.152668, 30.315460, 20.796795>,  <37.283638, 30.141830, 20.898285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.152668, 30.315460, 20.796795>,  <36.934387, 30.604843, 20.627645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.152668, 30.315460, 20.796795> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335885, 0.273484, 0.901326,
		-0.767719, -0.633891, -0.093757,
		0.545701, -0.723456, 0.422873,
		37.316380, 30.098423, 20.923656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.486408, 30.252401, 21.140926>,  <36.934387, 30.604843, 20.627645>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.486408, 30.252401, 21.140926> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.873901, 30.220047, 21.234753>,  <37.106396, 30.200634, 21.291048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.873901, 30.220047, 21.234753>,  <36.486408, 30.252401, 21.140926>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.873901, 30.220047, 21.234753> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229356, 0.068734, 0.970913,
		-0.094655, -0.994351, 0.048033,
		0.968730, -0.080885, 0.234566,
		37.164520, 30.195782, 21.305122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.449165, 29.816404, 21.787174>,  <36.486408, 30.252401, 21.140926>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.449165, 29.816404, 21.787174> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.823196, 29.957104, 21.769754>,  <37.047615, 30.041523, 21.759302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.823196, 29.957104, 21.769754>,  <36.449165, 29.816404, 21.787174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.823196, 29.957104, 21.769754> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062376, 0.284274, 0.956712,
		0.348906, -0.891885, 0.287760,
		0.935080, 0.351752, -0.043553,
		37.103722, 30.062628, 21.756689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.771862, 29.523726, 22.375280>,  <36.449165, 29.816404, 21.787174>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.771862, 29.523726, 22.375280> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.998924, 29.840256, 22.284445>,  <37.135162, 30.030174, 22.229942>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.998924, 29.840256, 22.284445>,  <36.771862, 29.523726, 22.375280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.998924, 29.840256, 22.284445> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073267, 0.226187, 0.971324,
		0.819996, -0.568020, 0.070419,
		0.567660, 0.791323, -0.227090,
		37.169224, 30.077652, 22.216318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.266560, 29.473654, 22.815434>,  <36.771862, 29.523726, 22.375280>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.266560, 29.473654, 22.815434> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.256111, 29.854898, 22.694839>,  <37.249844, 30.083645, 22.622482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.256111, 29.854898, 22.694839>,  <37.266560, 29.473654, 22.815434>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.256111, 29.854898, 22.694839> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146908, 0.294654, 0.944244,
		0.988805, 0.068952, 0.132324,
		-0.026117, 0.953113, -0.301485,
		37.248276, 30.140833, 22.604395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.504562, 29.907324, 23.451561>,  <37.266560, 29.473654, 22.815434>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.504562, 29.907324, 23.451561> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.317039, 30.175203, 23.221180>,  <37.204525, 30.335932, 23.082951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.317039, 30.175203, 23.221180>,  <37.504562, 29.907324, 23.451561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.317039, 30.175203, 23.221180> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184872, 0.563212, 0.805366,
		0.863737, 0.484039, -0.140229,
		-0.468807, 0.669700, -0.575953,
		37.176399, 30.376114, 23.048393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.622181, 30.578800, 23.801590>,  <37.504562, 29.907324, 23.451561>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.622181, 30.578800, 23.801590> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.311661, 30.674435, 23.568285>,  <37.125347, 30.731815, 23.428303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.311661, 30.674435, 23.568285>,  <37.622181, 30.578800, 23.801590>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.311661, 30.674435, 23.568285> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320232, 0.647412, 0.691599,
		0.542961, 0.723669, -0.426024,
		-0.776302, 0.239085, -0.583261,
		37.078770, 30.746161, 23.393307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.614765, 31.337038, 23.716721>,  <37.622181, 30.578800, 23.801590>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.614765, 31.337038, 23.716721> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.241493, 31.223364, 23.628702>,  <37.017532, 31.155159, 23.575891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.241493, 31.223364, 23.628702>,  <37.614765, 31.337038, 23.716721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.241493, 31.223364, 23.628702> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355060, 0.633833, 0.687160,
		-0.055806, 0.719372, -0.692380,
		-0.933177, -0.284184, -0.220048,
		36.961540, 31.138109, 23.562687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.192451, 31.935177, 23.544359>,  <37.614765, 31.337038, 23.716721>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.192451, 31.935177, 23.544359> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.930805, 31.657974, 23.665606>,  <36.773819, 31.491653, 23.738354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.930805, 31.657974, 23.665606>,  <37.192451, 31.935177, 23.544359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.930805, 31.657974, 23.665606> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410159, 0.661675, 0.627658,
		-0.635536, 0.286233, -0.717053,
		-0.654113, -0.693006, 0.303117,
		36.734570, 31.450073, 23.756540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.658112, 32.366058, 23.707773>,  <37.192451, 31.935177, 23.544359>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.658112, 32.366058, 23.707773> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.586395, 32.027340, 23.908092>,  <36.543365, 31.824110, 24.028284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.586395, 32.027340, 23.908092>,  <36.658112, 32.366058, 23.707773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.586395, 32.027340, 23.908092> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381926, 0.529030, 0.757799,
		-0.906635, -0.055401, -0.418262,
		-0.179291, -0.846793, 0.500797,
		36.532608, 31.773302, 24.058331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.987400, 32.484875, 23.948940>,  <36.658112, 32.366058, 23.707773>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.987400, 32.484875, 23.948940> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.137093, 32.187347, 24.170458>,  <36.226910, 32.008831, 24.303368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.137093, 32.187347, 24.170458>,  <35.987400, 32.484875, 23.948940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.137093, 32.187347, 24.170458> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234915, 0.501667, 0.832554,
		-0.897087, -0.441663, 0.013006,
		0.374233, -0.743818, 0.553792,
		36.249363, 31.964203, 24.336596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.496864, 32.419834, 24.426073>,  <35.987400, 32.484875, 23.948940>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.496864, 32.419834, 24.426073> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.826588, 32.254314, 24.580620>,  <36.024422, 32.155003, 24.673347>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.826588, 32.254314, 24.580620>,  <35.496864, 32.419834, 24.426073>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.826588, 32.254314, 24.580620> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238302, 0.365445, 0.899812,
		-0.513537, -0.833798, 0.202632,
		0.824313, -0.413800, 0.386366,
		36.073883, 32.130173, 24.696529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.115742, 32.023174, 23.976788>,  <35.496864, 32.419834, 24.426073>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.115742, 32.023174, 23.976788> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.728569, 31.941765, 23.917873>,  <34.496265, 31.892920, 23.882524>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.728569, 31.941765, 23.917873>,  <35.115742, 32.023174, 23.976788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.728569, 31.941765, 23.917873> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185658, -0.184520, -0.965134,
		0.169248, -0.961526, 0.216387,
		-0.967929, -0.203521, -0.147286,
		34.438190, 31.880709, 23.873688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.148567, 31.352474, 23.734320>,  <35.115742, 32.023174, 23.976788>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.148567, 31.352474, 23.734320> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.802658, 31.512680, 23.613157>,  <34.595112, 31.608803, 23.540461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.802658, 31.512680, 23.613157>,  <35.148567, 31.352474, 23.734320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.802658, 31.512680, 23.613157> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157604, -0.356253, -0.921002,
		-0.476784, -0.844200, 0.244957,
		-0.864776, 0.400513, -0.302905,
		34.543224, 31.632833, 23.522285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.769356, 30.908104, 23.367561>,  <35.148567, 31.352474, 23.734320>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.769356, 30.908104, 23.367561> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.606518, 31.251104, 23.241728>,  <34.508816, 31.456905, 23.166227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.606518, 31.251104, 23.241728>,  <34.769356, 30.908104, 23.367561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.606518, 31.251104, 23.241728> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102725, -0.299249, -0.948629,
		-0.907590, -0.418499, 0.033736,
		-0.407096, 0.857502, -0.314586,
		34.484390, 31.508354, 23.147352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.124722, 30.774763, 22.935560>,  <34.769356, 30.908104, 23.367561>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.124722, 30.774763, 22.935560> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.218056, 31.142956, 22.810167>,  <34.274055, 31.363871, 22.734932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.218056, 31.142956, 22.810167>,  <34.124722, 30.774763, 22.935560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.218056, 31.142956, 22.810167> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065257, -0.336477, -0.939428,
		-0.970204, 0.198748, -0.138581,
		0.233338, 0.920479, -0.313482,
		34.288055, 31.419100, 22.716124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.718067, 30.899076, 22.356485>,  <34.124722, 30.774763, 22.935560>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.718067, 30.899076, 22.356485> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.004452, 31.171999, 22.297354>,  <34.176285, 31.335752, 22.261875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.004452, 31.171999, 22.297354>,  <33.718067, 30.899076, 22.356485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.004452, 31.171999, 22.297354> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125589, -0.334172, -0.934107,
		-0.686748, 0.650221, -0.324946,
		0.715964, 0.682306, -0.147831,
		34.219242, 31.376690, 22.253004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.505211, 31.131092, 21.642508>,  <33.718067, 30.899076, 22.356485>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.505211, 31.131092, 21.642508> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.873589, 31.267479, 21.717993>,  <34.094616, 31.349312, 21.763283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.873589, 31.267479, 21.717993>,  <33.505211, 31.131092, 21.642508>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.873589, 31.267479, 21.717993> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215281, -0.041471, -0.975671,
		-0.324845, 0.939160, -0.111596,
		0.920940, 0.340966, 0.188712,
		34.149872, 31.369768, 21.774607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.633080, 31.691702, 21.183859>,  <33.505211, 31.131092, 21.642508>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.633080, 31.691702, 21.183859> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.992474, 31.548658, 21.285717>,  <34.208111, 31.462831, 21.346832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.992474, 31.548658, 21.285717>,  <33.633080, 31.691702, 21.183859>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.992474, 31.548658, 21.285717> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266353, -0.017045, -0.963725,
		0.348978, 0.933715, 0.079936,
		0.898482, -0.357610, 0.254646,
		34.262020, 31.441376, 21.362110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.016884, 32.038239, 20.714867>,  <33.633080, 31.691702, 21.183859>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.016884, 32.038239, 20.714867> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.256943, 31.752163, 20.858164>,  <34.400978, 31.580519, 20.944143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.256943, 31.752163, 20.858164>,  <34.016884, 32.038239, 20.714867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.256943, 31.752163, 20.858164> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309789, -0.205099, -0.928421,
		0.737468, 0.668166, 0.098467,
		0.600143, -0.715184, 0.358245,
		34.436985, 31.537607, 20.965637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.781296, 32.074299, 20.427595>,  <34.016884, 32.038239, 20.714867>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.781296, 32.074299, 20.427595> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.729828, 31.691050, 20.529930>,  <34.698948, 31.461102, 20.591331>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.729828, 31.691050, 20.529930>,  <34.781296, 32.074299, 20.427595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.729828, 31.691050, 20.529930> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415756, -0.286330, -0.863228,
		0.900329, -0.004704, 0.435185,
		-0.128667, -0.958119, 0.255836,
		34.691227, 31.403614, 20.606682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.341496, 31.745558, 20.086514>,  <34.781296, 32.074299, 20.427595>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.341496, 31.745558, 20.086514> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.123085, 31.427237, 20.191244>,  <34.992039, 31.236244, 20.254082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.123085, 31.427237, 20.191244>,  <35.341496, 31.745558, 20.086514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.123085, 31.427237, 20.191244> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102998, -0.373922, -0.921723,
		0.831414, -0.476316, 0.286137,
		-0.546024, -0.795805, 0.261824,
		34.959278, 31.188496, 20.269791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.800564, 31.164745, 19.963423>,  <35.341496, 31.745558, 20.086514>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.800564, 31.164745, 19.963423> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.421268, 31.037720, 19.964300>,  <35.193691, 30.961504, 19.964827>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.421268, 31.037720, 19.964300>,  <35.800564, 31.164745, 19.963423>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.421268, 31.037720, 19.964300> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201741, -0.607697, -0.768118,
		0.245259, -0.727914, 0.640304,
		-0.948235, -0.317563, 0.002193,
		35.136799, 30.942451, 19.964958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.853779, 30.514170, 19.865732>,  <35.800564, 31.164745, 19.963423>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.853779, 30.514170, 19.865732> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.474529, 30.576567, 19.754940>,  <35.246979, 30.614004, 19.688465>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.474529, 30.576567, 19.754940>,  <35.853779, 30.514170, 19.865732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.474529, 30.576567, 19.754940> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154311, -0.535923, -0.830045,
		-0.277921, -0.829730, 0.484053,
		-0.948128, 0.155992, -0.276981,
		35.190090, 30.623365, 19.671846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.452660, 29.839821, 19.800573>,  <35.853779, 30.514170, 19.865732>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.452660, 29.839821, 19.800573> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.256134, 30.105499, 19.575203>,  <35.138218, 30.264906, 19.439981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.256134, 30.105499, 19.575203>,  <35.452660, 29.839821, 19.800573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.256134, 30.105499, 19.575203> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080216, -0.609631, -0.788616,
		-0.867280, -0.432655, 0.246243,
		-0.491316, 0.664198, -0.563427,
		35.108738, 30.304758, 19.406176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.629616, 29.368603, 20.229153>,  <35.452660, 29.839821, 19.800573>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.629616, 29.368603, 20.229153> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.444733, 29.033575, 20.112638>,  <35.333805, 28.832560, 20.042730>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.444733, 29.033575, 20.112638>,  <35.629616, 29.368603, 20.229153>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.444733, 29.033575, 20.112638> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480264, -0.039700, 0.876225,
		-0.745462, 0.544889, -0.383904,
		-0.462204, -0.837568, -0.291285,
		35.306072, 28.782305, 20.025253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.120388, 29.385675, 20.592117>,  <35.629616, 29.368603, 20.229153>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.120388, 29.385675, 20.592117> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.068542, 29.003323, 20.486675>,  <35.037434, 28.773911, 20.423410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.068542, 29.003323, 20.486675>,  <35.120388, 29.385675, 20.592117>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.068542, 29.003323, 20.486675> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386543, -0.196107, 0.901181,
		-0.913118, 0.218703, -0.344071,
		-0.129616, -0.955882, -0.263607,
		35.029659, 28.716558, 20.407593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.365196, 29.075010, 20.827438>,  <35.120388, 29.385675, 20.592117>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.365196, 29.075010, 20.827438> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.578857, 28.744860, 20.754295>,  <34.707054, 28.546768, 20.710409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.578857, 28.744860, 20.754295>,  <34.365196, 29.075010, 20.827438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.578857, 28.744860, 20.754295> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269026, -0.371014, 0.888805,
		-0.801443, -0.425559, -0.420225,
		0.534148, -0.825377, -0.182860,
		34.739101, 28.497246, 20.699438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.007729, 28.692205, 21.130175>,  <34.365196, 29.075010, 20.827438>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.007729, 28.692205, 21.130175> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.332157, 28.463820, 21.079313>,  <34.526814, 28.326788, 21.048796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.332157, 28.463820, 21.079313>,  <34.007729, 28.692205, 21.130175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.332157, 28.463820, 21.079313> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230254, -0.511455, 0.827887,
		-0.537729, -0.642194, -0.546291,
		0.811068, -0.570965, -0.127156,
		34.575478, 28.292530, 21.041166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.772362, 27.954641, 21.249226>,  <34.007729, 28.692205, 21.130175>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.772362, 27.954641, 21.249226> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.159729, 27.982426, 21.345009>,  <34.392151, 27.999096, 21.402479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.159729, 27.982426, 21.345009>,  <33.772362, 27.954641, 21.249226>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.159729, 27.982426, 21.345009> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211873, -0.277009, 0.937217,
		0.131435, -0.958353, -0.253543,
		0.968419, 0.069464, 0.239458,
		34.450256, 28.003265, 21.416845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.853981, 27.391285, 21.644770>,  <33.772362, 27.954641, 21.249226>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.853981, 27.391285, 21.644770> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.160355, 27.635496, 21.725374>,  <34.344177, 27.782022, 21.773737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.160355, 27.635496, 21.725374>,  <33.853981, 27.391285, 21.644770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.160355, 27.635496, 21.725374> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048204, -0.258016, 0.964937,
		0.641115, -0.748788, -0.168193,
		0.765930, 0.610528, 0.201513,
		34.390133, 27.818655, 21.785828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.301910, 27.033354, 22.118240>,  <33.853981, 27.391285, 21.644770>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.301910, 27.033354, 22.118240> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.361271, 27.425562, 22.169708>,  <34.396889, 27.660887, 22.200588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.361271, 27.425562, 22.169708>,  <34.301910, 27.033354, 22.118240>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.361271, 27.425562, 22.169708> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087786, -0.116535, 0.989299,
		0.985023, -0.158109, 0.068782,
		0.148402, 0.980521, 0.128669,
		34.405792, 27.719719, 22.208309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.790531, 27.169886, 22.664349>,  <34.301910, 27.033354, 22.118240>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.790531, 27.169886, 22.664349> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.575516, 27.506100, 22.637333>,  <34.446507, 27.707829, 22.621122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.575516, 27.506100, 22.637333>,  <34.790531, 27.169886, 22.664349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.575516, 27.506100, 22.637333> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073478, 0.033103, 0.996747,
		0.840035, 0.540748, 0.043967,
		-0.537534, 0.840533, -0.067541,
		34.414257, 27.758259, 22.617071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.459690, 26.832409, 23.069553>,  <34.790531, 27.169886, 22.664349>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.459690, 26.832409, 23.069553> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.398651, 26.437103, 23.066708>,  <35.362026, 26.199921, 23.065001>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.398651, 26.437103, 23.066708>,  <35.459690, 26.832409, 23.069553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.398651, 26.437103, 23.066708> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352930, -0.047768, -0.934430,
		0.923122, -0.145101, 0.356077,
		-0.152596, -0.988263, -0.007115,
		35.352871, 26.140625, 23.064573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.997314, 26.598227, 22.757744>,  <35.459690, 26.832409, 23.069553>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.997314, 26.598227, 22.757744> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.735165, 26.297548, 22.728239>,  <35.577877, 26.117142, 22.710537>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.735165, 26.297548, 22.728239>,  <35.997314, 26.598227, 22.757744>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.735165, 26.297548, 22.728239> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318174, -0.186188, -0.929569,
		0.685020, -0.632683, 0.361193,
		-0.655372, -0.751696, -0.073761,
		35.538551, 26.072039, 22.706110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.384991, 25.986275, 22.488195>,  <35.997314, 26.598227, 22.757744>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.384991, 25.986275, 22.488195> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.997238, 25.923504, 22.412649>,  <35.764587, 25.885841, 22.367321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.997238, 25.923504, 22.412649>,  <36.384991, 25.986275, 22.488195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.997238, 25.923504, 22.412649> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227019, -0.279600, -0.932891,
		0.093589, -0.947205, 0.306665,
		-0.969383, -0.156927, -0.188866,
		35.706425, 25.876427, 22.355989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.350803, 25.314831, 22.242472>,  <36.384991, 25.986275, 22.488195>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.350803, 25.314831, 22.242472> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.015221, 25.487665, 22.110140>,  <35.813869, 25.591366, 22.030741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.015221, 25.487665, 22.110140>,  <36.350803, 25.314831, 22.242472>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.015221, 25.487665, 22.110140> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207264, -0.308399, -0.928403,
		-0.503179, -0.847461, 0.169177,
		-0.838959, 0.432088, -0.330828,
		35.763535, 25.617290, 22.010891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.024025, 24.923672, 21.645870>,  <36.350803, 25.314831, 22.242472>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.024025, 24.923672, 21.645870> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.862595, 25.285084, 21.588232>,  <35.765736, 25.501930, 21.553650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.862595, 25.285084, 21.588232>,  <36.024025, 24.923672, 21.645870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.862595, 25.285084, 21.588232> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029688, -0.170339, -0.984938,
		-0.914464, -0.393220, 0.095569,
		-0.403576, 0.903528, -0.144095,
		35.741520, 25.556143, 21.545004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.611816, 24.699619, 21.145271>,  <36.024025, 24.923672, 21.645870>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.611816, 24.699619, 21.145271> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.654293, 25.097300, 21.152052>,  <35.679779, 25.335907, 21.156120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.654293, 25.097300, 21.152052>,  <35.611816, 24.699619, 21.145271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.654293, 25.097300, 21.152052> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100056, 0.006280, -0.994962,
		-0.989299, 0.107351, -0.098809,
		0.106190, 0.994201, 0.016954,
		35.686150, 25.395559, 21.157139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.164574, 25.024332, 20.681284>,  <35.611816, 24.699619, 21.145271>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.164574, 25.024332, 20.681284> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.451458, 25.299583, 20.725271>,  <35.623589, 25.464735, 20.751663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.451458, 25.299583, 20.725271>,  <35.164574, 25.024332, 20.681284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.451458, 25.299583, 20.725271> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100366, 0.054158, -0.993475,
		-0.689594, 0.723565, -0.030223,
		0.717208, 0.688128, 0.109968,
		35.666622, 25.506021, 20.758263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.207756, 25.226234, 19.986271>,  <35.164574, 25.024332, 20.681284>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.207756, 25.226234, 19.986271> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.526272, 25.410933, 20.142586>,  <35.717381, 25.521751, 20.236374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.526272, 25.410933, 20.142586>,  <35.207756, 25.226234, 19.986271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.526272, 25.410933, 20.142586> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355304, 0.165824, -0.919925,
		-0.489573, 0.871374, -0.032016,
		0.796290, 0.461746, 0.390786,
		35.765160, 25.549456, 20.259821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.254372, 25.977438, 19.787207>,  <35.207756, 25.226234, 19.986271>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.254372, 25.977438, 19.787207> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.626144, 25.842102, 19.846115>,  <35.849209, 25.760900, 19.881460>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.626144, 25.842102, 19.846115>,  <35.254372, 25.977438, 19.787207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.626144, 25.842102, 19.846115> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284611, 0.403276, -0.869692,
		0.234859, 0.850232, 0.471112,
		0.929429, -0.338338, 0.147273,
		35.904972, 25.740601, 19.890297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<33.384274, 29.081238, 35.067322> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.745872, 29.075878, 35.238251>,  <33.962833, 29.072662, 35.340809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.745872, 29.075878, 35.238251>,  <33.384274, 29.081238, 35.067322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.745872, 29.075878, 35.238251> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393860, -0.362731, -0.844571,
		0.166320, 0.931797, -0.322632,
		0.903998, -0.013398, 0.427327,
		34.017071, 29.071859, 35.366447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.806751, 29.397549, 34.617550>,  <33.384274, 29.081238, 35.067322>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.806751, 29.397549, 34.617550> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.032028, 29.148195, 34.834511>,  <34.167194, 28.998583, 34.964687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.032028, 29.148195, 34.834511>,  <33.806751, 29.397549, 34.617550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.032028, 29.148195, 34.834511> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396418, -0.372111, -0.839277,
		0.725029, 0.687694, 0.037551,
		0.563193, -0.623386, 0.542406,
		34.200985, 28.961180, 34.997234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.284225, 29.292299, 34.207947>,  <33.806751, 29.397549, 34.617550>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.284225, 29.292299, 34.207947> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.338821, 28.978806, 34.450314>,  <34.371578, 28.790709, 34.595734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.338821, 28.978806, 34.450314>,  <34.284225, 29.292299, 34.207947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.338821, 28.978806, 34.450314> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378841, -0.523850, -0.762929,
		0.915341, 0.333680, 0.225408,
		0.136495, -0.783734, 0.605913,
		34.379768, 28.743685, 34.632088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.823318, 28.984129, 33.868313>,  <34.284225, 29.292299, 34.207947>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.823318, 28.984129, 33.868313> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.674572, 28.710205, 34.118992>,  <34.585323, 28.545851, 34.269398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.674572, 28.710205, 34.118992>,  <34.823318, 28.984129, 33.868313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.674572, 28.710205, 34.118992> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129631, -0.706805, -0.695429,
		0.919190, -0.177368, 0.351611,
		-0.371867, -0.684811, 0.626696,
		34.563011, 28.504761, 34.306999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.277424, 28.351362, 33.890869>,  <34.823318, 28.984129, 33.868313>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.277424, 28.351362, 33.890869> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.900784, 28.263102, 33.992611>,  <34.674797, 28.210144, 34.053658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.900784, 28.263102, 33.992611>,  <35.277424, 28.351362, 33.890869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.900784, 28.263102, 33.992611> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002330, -0.759627, -0.650355,
		0.336717, -0.611783, 0.715781,
		-0.941603, -0.220653, 0.254355,
		34.618301, 28.196905, 34.068916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.279690, 27.569719, 33.987770>,  <35.277424, 28.351362, 33.890869>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.279690, 27.569719, 33.987770> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.892441, 27.662477, 33.949905>,  <34.660091, 27.718132, 33.927185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.892441, 27.662477, 33.949905>,  <35.279690, 27.569719, 33.987770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.892441, 27.662477, 33.949905> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096681, -0.694617, -0.712853,
		-0.231062, -0.680978, 0.694895,
		-0.968123, 0.231896, -0.094662,
		34.602005, 27.732046, 33.921505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.869286, 26.880398, 33.908913>,  <35.279690, 27.569719, 33.987770>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.869286, 26.880398, 33.908913> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.619331, 27.165030, 33.780430>,  <34.469360, 27.335810, 33.703339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.619331, 27.165030, 33.780430>,  <34.869286, 26.880398, 33.908913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.619331, 27.165030, 33.780430> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186694, -0.535688, -0.823519,
		-0.758069, -0.454634, 0.467589,
		-0.624881, 0.711580, -0.321211,
		34.431866, 27.378504, 33.684067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.244869, 26.556097, 33.732285>,  <34.869286, 26.880398, 33.908913>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.244869, 26.556097, 33.732285> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.224823, 26.898022, 33.525681>,  <34.212795, 27.103176, 33.401718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.224823, 26.898022, 33.525681>,  <34.244869, 26.556097, 33.732285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.224823, 26.898022, 33.525681> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154168, -0.517588, -0.841627,
		-0.986773, 0.037449, 0.157725,
		-0.050119, 0.854810, -0.516515,
		34.209785, 27.154465, 33.370728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.718674, 26.377026, 33.173717>,  <34.244869, 26.556097, 33.732285>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.718674, 26.377026, 33.173717> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.914089, 26.704763, 33.053711>,  <34.031338, 26.901405, 32.981709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.914089, 26.704763, 33.053711>,  <33.718674, 26.377026, 33.173717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.914089, 26.704763, 33.053711> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166304, -0.250097, -0.953832,
		-0.856549, 0.515873, 0.014079,
		0.488535, 0.819345, -0.300012,
		34.060650, 26.950567, 32.963707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.288582, 26.661516, 32.734657>,  <33.718674, 26.377026, 33.173717>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.288582, 26.661516, 32.734657> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.642941, 26.815948, 32.631794>,  <33.855556, 26.908607, 32.570076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.642941, 26.815948, 32.631794>,  <33.288582, 26.661516, 32.734657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.642941, 26.815948, 32.631794> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183305, -0.217902, -0.958602,
		-0.426134, 0.896359, -0.122268,
		0.885894, 0.386081, -0.257162,
		33.908710, 26.931772, 32.554646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.090584, 27.088507, 32.195999>,  <33.288582, 26.661516, 32.734657>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.090584, 27.088507, 32.195999> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.483547, 27.021255, 32.163479>,  <33.719326, 26.980906, 32.143967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.483547, 27.021255, 32.163479>,  <33.090584, 27.088507, 32.195999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.483547, 27.021255, 32.163479> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117183, -0.216013, -0.969333,
		0.145411, 0.961806, -0.231915,
		0.982407, -0.168129, -0.081297,
		33.778271, 26.970818, 32.139091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.409901, 27.529299, 31.589523>,  <33.090584, 27.088507, 32.195999>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.409901, 27.529299, 31.589523> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.663933, 27.234257, 31.681269>,  <33.816353, 27.057232, 31.736317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.663933, 27.234257, 31.681269>,  <33.409901, 27.529299, 31.589523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.663933, 27.234257, 31.681269> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005015, -0.300867, -0.953653,
		0.772426, 0.604500, -0.194776,
		0.635085, -0.737603, 0.229366,
		33.854458, 27.012976, 31.750078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.491337, 28.244696, 31.407122>,  <33.409901, 27.529299, 31.589523>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.491337, 28.244696, 31.407122> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.163715, 28.380754, 31.222319>,  <32.967144, 28.462389, 31.111437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.163715, 28.380754, 31.222319>,  <33.491337, 28.244696, 31.407122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.163715, 28.380754, 31.222319> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280963, 0.464301, 0.839931,
		0.500210, 0.817756, -0.284719,
		-0.819054, 0.340147, -0.462008,
		32.917999, 28.482798, 31.083717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.391918, 29.007278, 31.588301>,  <33.491337, 28.244696, 31.407122>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.391918, 29.007278, 31.588301> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.033798, 28.869963, 31.474743>,  <32.818928, 28.787573, 31.406609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.033798, 28.869963, 31.474743>,  <33.391918, 29.007278, 31.588301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.033798, 28.869963, 31.474743> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430870, 0.505503, 0.747541,
		-0.113112, 0.791593, -0.600487,
		-0.895297, -0.343288, -0.283896,
		32.765209, 28.766975, 31.389574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.945824, 29.675793, 31.608446>,  <33.391918, 29.007278, 31.588301>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.945824, 29.675793, 31.608446> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.719063, 29.347618, 31.638130>,  <32.583008, 29.150713, 31.655941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.719063, 29.347618, 31.638130>,  <32.945824, 29.675793, 31.608446>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.719063, 29.347618, 31.638130> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467352, 0.394491, 0.791175,
		-0.678384, 0.413836, -0.607071,
		-0.566901, -0.820437, 0.074209,
		32.548992, 29.101486, 31.660393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.401154, 29.975300, 31.593107>,  <32.945824, 29.675793, 31.608446>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.401154, 29.975300, 31.593107> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.338257, 29.622717, 31.771235>,  <32.300518, 29.411167, 31.878111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.338257, 29.622717, 31.771235>,  <32.401154, 29.975300, 31.593107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.338257, 29.622717, 31.771235> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633449, 0.435966, 0.639278,
		-0.757640, -0.181566, -0.626909,
		-0.157240, -0.881458, 0.445318,
		32.291084, 29.358280, 31.904829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.625450, 29.912849, 31.741657>,  <32.401154, 29.975300, 31.593107>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.625450, 29.912849, 31.741657> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.812757, 29.652208, 31.980366>,  <31.925142, 29.495823, 32.123592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.812757, 29.652208, 31.980366>,  <31.625450, 29.912849, 31.741657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.812757, 29.652208, 31.980366> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532425, 0.330925, 0.779110,
		-0.705158, -0.682569, -0.191970,
		0.468268, -0.651605, 0.596771,
		31.953238, 29.456726, 32.159397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.106407, 29.648190, 32.149033>,  <31.625450, 29.912849, 31.741657>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.106407, 29.648190, 32.149033> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.439455, 29.562561, 32.353352>,  <31.639284, 29.511185, 32.475945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.439455, 29.562561, 32.353352>,  <31.106407, 29.648190, 32.149033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.439455, 29.562561, 32.353352> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447196, 0.284250, 0.848067,
		-0.326740, -0.934546, 0.140941,
		0.832620, -0.214069, 0.510802,
		31.689241, 29.498341, 32.506592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.858835, 29.251345, 32.641205>,  <31.106407, 29.648190, 32.149033>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.858835, 29.251345, 32.641205> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.211063, 29.385912, 32.774719>,  <31.422401, 29.466652, 32.854828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.211063, 29.385912, 32.774719>,  <30.858835, 29.251345, 32.641205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.211063, 29.385912, 32.774719> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379468, 0.078596, 0.921860,
		0.283897, -0.938427, 0.196870,
		0.880571, 0.336419, 0.333790,
		31.475235, 29.486837, 32.874855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.047932, 28.854944, 33.135181>,  <30.858835, 29.251345, 32.641205>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.047932, 28.854944, 33.135181> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.261145, 29.180117, 33.229008>,  <31.389072, 29.375219, 33.285305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.261145, 29.180117, 33.229008>,  <31.047932, 28.854944, 33.135181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.261145, 29.180117, 33.229008> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256587, -0.108866, 0.960370,
		0.806251, -0.572094, 0.150559,
		0.533031, 0.812931, 0.234565,
		31.421055, 29.423996, 33.299377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.278112, 28.757631, 33.795494>,  <31.047932, 28.854944, 33.135181>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.278112, 28.757631, 33.795494> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.336725, 29.150860, 33.751495>,  <31.371893, 29.386797, 33.725094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.336725, 29.150860, 33.751495>,  <31.278112, 28.757631, 33.795494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.336725, 29.150860, 33.751495> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228684, 0.141854, 0.963110,
		0.962410, -0.115970, 0.245598,
		0.146531, 0.983071, -0.110002,
		31.380684, 29.445782, 33.718494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.264252, 28.898773, 34.531006>,  <31.278112, 28.757631, 33.795494>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.264252, 28.898773, 34.531006> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.224716, 29.242453, 34.330204>,  <31.200994, 29.448660, 34.209724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.224716, 29.242453, 34.330204>,  <31.264252, 28.898773, 34.531006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.224716, 29.242453, 34.330204> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270586, 0.462259, 0.844453,
		0.957608, 0.219301, 0.186797,
		-0.098841, 0.859200, -0.502003,
		31.195065, 29.500212, 34.179604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.484707, 29.417498, 34.987644>,  <31.264252, 28.898773, 34.531006>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.484707, 29.417498, 34.987644> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.250172, 29.607624, 34.725262>,  <31.109451, 29.721701, 34.567833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.250172, 29.607624, 34.725262>,  <31.484707, 29.417498, 34.987644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.250172, 29.607624, 34.725262> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428776, 0.504920, 0.749138,
		0.687285, 0.720506, -0.092249,
		-0.586337, 0.475317, -0.655959,
		31.074270, 29.750219, 34.528473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.277637, 30.012138, 35.316586>,  <31.484707, 29.417498, 34.987644>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.277637, 30.012138, 35.316586> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.024849, 30.054403, 35.009483>,  <30.873175, 30.079763, 34.825222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.024849, 30.054403, 35.009483>,  <31.277637, 30.012138, 35.316586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.024849, 30.054403, 35.009483> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556602, 0.627450, 0.544519,
		0.539262, 0.771455, -0.337719,
		-0.631973, 0.105663, -0.767753,
		30.835257, 30.086102, 34.779156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.306866, 30.646984, 35.084740>,  <31.277637, 30.012138, 35.316586>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.306866, 30.646984, 35.084740> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.935434, 30.532660, 34.990032>,  <30.712576, 30.464066, 34.933208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.935434, 30.532660, 34.990032>,  <31.306866, 30.646984, 35.084740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.935434, 30.532660, 34.990032> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367447, 0.797752, 0.478095,
		0.052235, 0.530946, -0.845794,
		-0.928577, -0.285812, -0.236765,
		30.656862, 30.446917, 34.919003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.923059, 31.279001, 34.879593>,  <31.306866, 30.646984, 35.084740>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.923059, 31.279001, 34.879593> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.668650, 30.997370, 35.005920>,  <30.516003, 30.828390, 35.081718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.668650, 30.997370, 35.005920>,  <30.923059, 31.279001, 34.879593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.668650, 30.997370, 35.005920> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447353, 0.669902, 0.592543,
		-0.628766, 0.235589, -0.741047,
		-0.636026, -0.704080, 0.315820,
		30.477842, 30.786146, 35.100666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.176413, 31.595215, 34.885502>,  <30.923059, 31.279001, 34.879593>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.176413, 31.595215, 34.885502> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.163418, 31.266588, 35.113178>,  <30.155621, 31.069412, 35.249783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.163418, 31.266588, 35.113178>,  <30.176413, 31.595215, 34.885502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.163418, 31.266588, 35.113178> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428210, 0.526015, 0.734809,
		-0.903095, -0.219858, -0.368892,
		-0.032489, -0.821566, 0.569187,
		30.153671, 31.020119, 35.283936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.578663, 31.775129, 34.340603>,  <30.176413, 31.595215, 34.885502>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.578663, 31.775129, 34.340603> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.855921, 32.044765, 34.238503>,  <31.022276, 32.206547, 34.177242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.855921, 32.044765, 34.238503>,  <30.578663, 31.775129, 34.340603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.855921, 32.044765, 34.238503> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071333, -0.416535, -0.906317,
		-0.717258, 0.610003, -0.336805,
		0.693147, 0.674088, -0.255249,
		31.063866, 32.246990, 34.161926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.681818, 31.833023, 33.565819>,  <30.578663, 31.775129, 34.340603>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.681818, 31.833023, 33.565819> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.004431, 32.036396, 33.686481>,  <31.197998, 32.158421, 33.758881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.004431, 32.036396, 33.686481>,  <30.681818, 31.833023, 33.565819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.004431, 32.036396, 33.686481> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486955, -0.281999, -0.826651,
		-0.335230, 0.813616, -0.475026,
		0.806533, 0.508434, 0.301660,
		31.246391, 32.188927, 33.776978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.751833, 32.256538, 33.013985>,  <30.681818, 31.833023, 33.565819>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.751833, 32.256538, 33.013985> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.093304, 32.220387, 33.219147>,  <31.298185, 32.198696, 33.342243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.093304, 32.220387, 33.219147>,  <30.751833, 32.256538, 33.013985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.093304, 32.220387, 33.219147> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498527, -0.143139, -0.854975,
		0.150690, 0.985567, -0.077137,
		0.853676, -0.090381, 0.512902,
		31.349407, 32.193272, 33.373016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.100176, 32.867237, 32.670792>,  <30.751833, 32.256538, 33.013985>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.100176, 32.867237, 32.670792> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.372879, 32.621754, 32.830074>,  <31.536501, 32.474464, 32.925644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.372879, 32.621754, 32.830074>,  <31.100176, 32.867237, 32.670792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.372879, 32.621754, 32.830074> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488178, -0.023766, -0.872420,
		0.544872, 0.789178, 0.283395,
		0.681760, -0.613705, 0.398209,
		31.577408, 32.437641, 32.949535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.695881, 33.076988, 32.421532>,  <31.100176, 32.867237, 32.670792>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.695881, 33.076988, 32.421532> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.785440, 32.699154, 32.517551>,  <31.839176, 32.472454, 32.575165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.785440, 32.699154, 32.517551>,  <31.695881, 33.076988, 32.421532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.785440, 32.699154, 32.517551> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413334, -0.131023, -0.901104,
		0.882623, 0.300978, 0.361094,
		0.223901, -0.944587, 0.240048,
		31.852612, 32.415779, 32.589565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.336918, 32.986858, 32.291973>,  <31.695881, 33.076988, 32.421532>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.336918, 32.986858, 32.291973> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.186954, 32.616058, 32.296265>,  <32.096977, 32.393578, 32.298840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.186954, 32.616058, 32.296265>,  <32.336918, 32.986858, 32.291973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.186954, 32.616058, 32.296265> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405315, -0.174306, -0.897406,
		0.833764, -0.332099, 0.441075,
		-0.374909, -0.926999, 0.010726,
		32.074482, 32.337959, 32.299484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.929062, 32.582867, 32.012794>,  <32.336918, 32.986858, 32.291973>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.929062, 32.582867, 32.012794> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.611244, 32.344398, 31.966705>,  <32.420555, 32.201317, 31.939051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.611244, 32.344398, 31.966705>,  <32.929062, 32.582867, 32.012794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.611244, 32.344398, 31.966705> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225039, -0.112869, -0.967790,
		0.563965, -0.794883, 0.223842,
		-0.794544, -0.596173, -0.115225,
		32.372879, 32.165546, 31.932138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.164398, 32.011356, 31.633320>,  <32.929062, 32.582867, 32.012794>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.164398, 32.011356, 31.633320> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.771812, 32.028854, 31.558689>,  <32.536263, 32.039352, 31.513910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.771812, 32.028854, 31.558689>,  <33.164398, 32.011356, 31.633320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.771812, 32.028854, 31.558689> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173665, -0.208627, -0.962453,
		-0.081027, -0.977017, 0.197163,
		-0.981466, 0.043744, -0.186578,
		32.477371, 32.041977, 31.502716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.077782, 31.405834, 31.225273>,  <33.164398, 32.011356, 31.633320>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.077782, 31.405834, 31.225273> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.744633, 31.611839, 31.144190>,  <32.544743, 31.735441, 31.095539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.744633, 31.611839, 31.144190>,  <33.077782, 31.405834, 31.225273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.744633, 31.611839, 31.144190> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103282, -0.215196, -0.971094,
		-0.543747, -0.829731, 0.126039,
		-0.832870, 0.515012, -0.202708,
		32.494770, 31.766342, 31.083378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.771000, 31.004793, 30.787167>,  <33.077782, 31.405834, 31.225273>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.771000, 31.004793, 30.787167> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.603069, 31.363821, 30.733324>,  <32.502312, 31.579237, 30.701019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.603069, 31.363821, 30.733324>,  <32.771000, 31.004793, 30.787167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.603069, 31.363821, 30.733324> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144795, -0.080174, -0.986208,
		-0.895982, -0.433523, -0.096304,
		-0.419822, 0.897569, -0.134607,
		32.477123, 31.633091, 30.692942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.242085, 30.911575, 30.266132>,  <32.771000, 31.004793, 30.787167>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.242085, 30.911575, 30.266132> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.277912, 31.309631, 30.249783>,  <32.299408, 31.548466, 30.239973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.277912, 31.309631, 30.249783>,  <32.242085, 30.911575, 30.266132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.277912, 31.309631, 30.249783> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087771, -0.048766, -0.994946,
		-0.992106, 0.085528, -0.091712,
		0.089569, 0.995141, -0.040874,
		32.304783, 31.608173, 30.237520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.731380, 31.152458, 29.742556>,  <32.242085, 30.911575, 30.266132>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.731380, 31.152458, 29.742556> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.014980, 31.431433, 29.784327>,  <32.185139, 31.598818, 29.809389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.014980, 31.431433, 29.784327>,  <31.731380, 31.152458, 29.742556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.014980, 31.431433, 29.784327> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026540, 0.174364, -0.984324,
		-0.704710, 0.695113, 0.142133,
		0.708999, 0.697435, 0.104427,
		32.227680, 31.640663, 29.815655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.552748, 31.605204, 29.262375>,  <31.731380, 31.152458, 29.742556>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.552748, 31.605204, 29.262375> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.935999, 31.698690, 29.328552>,  <32.165951, 31.754782, 29.368259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.935999, 31.698690, 29.328552>,  <31.552748, 31.605204, 29.262375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.935999, 31.698690, 29.328552> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137496, 0.131305, -0.981761,
		-0.251176, 0.963398, 0.093672,
		0.958126, 0.233715, 0.165444,
		32.223438, 31.768805, 29.378185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.651617, 32.219810, 28.865257>,  <31.552748, 31.605204, 29.262375>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.651617, 32.219810, 28.865257> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.985645, 32.006779, 28.920412>,  <32.186062, 31.878960, 28.953505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.985645, 32.006779, 28.920412>,  <31.651617, 32.219810, 28.865257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.985645, 32.006779, 28.920412> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225257, 0.102348, -0.968909,
		0.501909, 0.840169, 0.205435,
		0.835073, -0.532579, 0.137885,
		32.236168, 31.847004, 28.961777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.072411, 32.536297, 28.468369>,  <31.651617, 32.219810, 28.865257>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.072411, 32.536297, 28.468369> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.265884, 32.189308, 28.514923>,  <32.381969, 31.981115, 28.542856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.265884, 32.189308, 28.514923>,  <32.072411, 32.536297, 28.468369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.265884, 32.189308, 28.514923> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441485, 0.126992, -0.888237,
		0.755738, 0.481009, 0.444399,
		0.483685, -0.867469, 0.116386,
		32.410992, 31.929068, 28.549839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.772217, 32.585945, 28.219652>,  <32.072411, 32.536297, 28.468369>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.772217, 32.585945, 28.219652> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.722801, 32.189068, 28.226429>,  <32.693150, 31.950941, 28.230495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.722801, 32.189068, 28.226429>,  <32.772217, 32.585945, 28.219652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.722801, 32.189068, 28.226429> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274663, -0.050596, -0.960208,
		0.953571, -0.113974, 0.278770,
		-0.123543, -0.992194, 0.016942,
		32.685738, 31.891409, 28.231512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.395718, 32.305851, 27.859924>,  <32.772217, 32.585945, 28.219652>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.395718, 32.305851, 27.859924> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.111370, 32.024864, 27.846029>,  <32.940762, 31.856274, 27.837692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.111370, 32.024864, 27.846029>,  <33.395718, 32.305851, 27.859924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.111370, 32.024864, 27.846029> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178027, -0.131936, -0.975141,
		0.680417, -0.699384, 0.218847,
		-0.710872, -0.702463, -0.034738,
		32.898109, 31.814125, 27.835608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.765312, 31.670452, 27.583038>,  <33.395718, 32.305851, 27.859924>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.765312, 31.670452, 27.583038> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.372322, 31.626266, 27.522993>,  <33.136528, 31.599754, 27.486967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.372322, 31.626266, 27.522993>,  <33.765312, 31.670452, 27.583038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.372322, 31.626266, 27.522993> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164047, -0.130288, -0.977811,
		0.088457, -0.985303, 0.146127,
		-0.982478, -0.110466, -0.150111,
		33.077579, 31.593126, 27.477961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.630436, 30.992203, 27.097485>,  <33.765312, 31.670452, 27.583038>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.630436, 30.992203, 27.097485> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.317909, 31.239529, 27.063482>,  <33.130394, 31.387924, 27.043081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.317909, 31.239529, 27.063482>,  <33.630436, 30.992203, 27.097485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.317909, 31.239529, 27.063482> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088540, -0.025013, -0.995759,
		-0.617818, -0.785533, -0.035202,
		-0.781320, 0.618314, -0.085005,
		33.083511, 31.425022, 27.037981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.293049, 30.700747, 26.557653>,  <33.630436, 30.992203, 27.097485>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.293049, 30.700747, 26.557653> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.149773, 31.072340, 26.594938>,  <33.063808, 31.295296, 26.617310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.149773, 31.072340, 26.594938>,  <33.293049, 30.700747, 26.557653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.149773, 31.072340, 26.594938> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062922, 0.123627, -0.990332,
		-0.931527, -0.348860, -0.102735,
		-0.358188, 0.928985, 0.093211,
		33.042316, 31.351036, 26.622902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.722233, 30.811794, 26.018799>,  <33.293049, 30.700747, 26.557653>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.722233, 30.811794, 26.018799> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.858097, 31.171545, 26.128893>,  <32.939617, 31.387396, 26.194948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.858097, 31.171545, 26.128893>,  <32.722233, 30.811794, 26.018799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.858097, 31.171545, 26.128893> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144807, 0.239137, -0.960127,
		-0.929334, 0.365972, -0.049011,
		0.339660, 0.899376, 0.275233,
		32.959995, 31.441359, 26.211462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.423481, 31.247433, 25.487640>,  <32.722233, 30.811794, 26.018799>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.423481, 31.247433, 25.487640> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.707745, 31.473589, 25.655113>,  <32.878304, 31.609283, 25.755596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.707745, 31.473589, 25.655113>,  <32.423481, 31.247433, 25.487640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.707745, 31.473589, 25.655113> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300571, 0.294069, -0.907293,
		-0.636097, 0.770621, 0.039043,
		0.710660, 0.565391, 0.418682,
		32.920944, 31.643206, 25.780718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.417660, 31.857952, 25.020828>,  <32.423481, 31.247433, 25.487640>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.417660, 31.857952, 25.020828> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.749382, 31.859837, 25.244341>,  <32.948414, 31.860968, 25.378448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.749382, 31.859837, 25.244341>,  <32.417660, 31.857952, 25.020828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.749382, 31.859837, 25.244341> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547707, 0.191407, -0.814481,
		-0.110790, 0.981499, 0.156155,
		0.829302, 0.004709, 0.558781,
		32.998173, 31.861250, 25.411976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.706257, 32.348145, 24.723743>,  <32.417660, 31.857952, 25.020828>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.706257, 32.348145, 24.723743> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.981190, 32.129387, 24.914944>,  <33.146149, 31.998133, 25.029663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.981190, 32.129387, 24.914944>,  <32.706257, 32.348145, 24.723743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.981190, 32.129387, 24.914944> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568302, -0.004920, -0.822806,
		0.452337, 0.837189, 0.307418,
		0.687331, -0.546892, 0.478001,
		33.187389, 31.965319, 25.058344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.398930, 32.743404, 24.634409>,  <32.706257, 32.348145, 24.723743>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.398930, 32.743404, 24.634409> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.485722, 32.360340, 24.710104>,  <33.537796, 32.130501, 24.755522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.485722, 32.360340, 24.710104>,  <33.398930, 32.743404, 24.634409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.485722, 32.360340, 24.710104> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703101, 0.018839, -0.710840,
		0.677176, 0.287295, 0.677418,
		0.216982, -0.957657, 0.189240,
		33.550816, 32.073044, 24.766876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.141647, 32.741974, 24.669712>,  <33.398930, 32.743404, 24.634409>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.141647, 32.741974, 24.669712> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.027866, 32.363590, 24.607420>,  <33.959599, 32.136562, 24.570045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.027866, 32.363590, 24.607420>,  <34.141647, 32.741974, 24.669712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.027866, 32.363590, 24.607420> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471290, 0.003476, -0.881971,
		0.834848, -0.324273, 0.444831,
		-0.284454, -0.945957, -0.155729,
		33.942532, 32.079803, 24.560701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.776775, 32.429688, 24.458448>,  <34.141647, 32.741974, 24.669712>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.776775, 32.429688, 24.458448> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.458931, 32.223854, 24.329576>,  <34.268227, 32.100353, 24.252254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.458931, 32.223854, 24.329576>,  <34.776775, 32.429688, 24.458448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.458931, 32.223854, 24.329576> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476309, -0.199326, -0.856387,
		0.376466, -0.833949, 0.403488,
		-0.794609, -0.514586, -0.322178,
		34.220547, 32.069477, 24.232924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.253223, 32.154251, 25.087921>,  <34.776775, 32.429688, 24.458448>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.253223, 32.154251, 25.087921> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.653130, 32.162075, 25.084131>,  <35.893074, 32.166771, 25.081858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.653130, 32.162075, 25.084131>,  <35.253223, 32.154251, 25.087921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.653130, 32.162075, 25.084131> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003017, 0.306950, 0.951721,
		0.021523, -0.951525, 0.306819,
		0.999764, 0.019558, -0.009477,
		35.953060, 32.167942, 25.081287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.567009, 31.789946, 25.729038>,  <35.253223, 32.154251, 25.087921>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.567009, 31.789946, 25.729038> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.844959, 32.054092, 25.615154>,  <36.011730, 32.212582, 25.546824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.844959, 32.054092, 25.615154>,  <35.567009, 31.789946, 25.729038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.844959, 32.054092, 25.615154> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056013, 0.345008, 0.936927,
		0.716944, -0.666996, 0.202749,
		0.694877, 0.660367, -0.284712,
		36.053421, 32.252201, 25.529741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.069084, 31.779432, 26.253700>,  <35.567009, 31.789946, 25.729038>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.069084, 31.779432, 26.253700> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.139645, 32.124298, 26.063728>,  <36.181980, 32.331219, 25.949745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.139645, 32.124298, 26.063728>,  <36.069084, 31.779432, 26.253700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.139645, 32.124298, 26.063728> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242518, 0.429552, 0.869868,
		0.953974, -0.268628, -0.133314,
		0.176405, 0.862163, -0.474928,
		36.192566, 32.382946, 25.921249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.730190, 32.102070, 26.556879>,  <36.069084, 31.779432, 26.253700>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.730190, 32.102070, 26.556879> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.547279, 32.405090, 26.370539>,  <36.437531, 32.586903, 26.258734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.547279, 32.405090, 26.370539>,  <36.730190, 32.102070, 26.556879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.547279, 32.405090, 26.370539> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204012, 0.599215, 0.774158,
		0.865607, 0.258967, -0.428557,
		-0.457279, 0.757547, -0.465852,
		36.410095, 32.632355, 26.230783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.068993, 32.682148, 26.805996>,  <36.730190, 32.102070, 26.556879>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.068993, 32.682148, 26.805996> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.719704, 32.815178, 26.663515>,  <36.510132, 32.894997, 26.578026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.719704, 32.815178, 26.663515>,  <37.068993, 32.682148, 26.805996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.719704, 32.815178, 26.663515> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154521, 0.504259, 0.849615,
		0.462184, 0.796941, -0.388937,
		-0.873218, 0.332579, -0.356204,
		36.457737, 32.914951, 26.556654>
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
