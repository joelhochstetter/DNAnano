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
	<23.838789, 35.209591, 35.149403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.227114, 35.259182, 35.067276>,  <24.460108, 35.288937, 35.018002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.227114, 35.259182, 35.067276>,  <23.838789, 35.209591, 35.149403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.227114, 35.259182, 35.067276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197804, -0.070263, -0.977720,
		-0.135643, 0.989794, -0.043688,
		0.970811, 0.123979, -0.205316,
		24.518356, 35.296375, 35.005680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.951056, 35.768074, 34.644714>,  <23.838789, 35.209591, 35.149403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.951056, 35.768074, 34.644714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.197208, 35.453159, 34.660099>,  <24.344900, 35.264210, 34.669331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.197208, 35.453159, 34.660099>,  <23.951056, 35.768074, 34.644714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.197208, 35.453159, 34.660099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456595, -0.395825, -0.796770,
		0.642515, 0.472755, -0.603057,
		0.615383, -0.787289, 0.038466,
		24.381823, 35.216972, 34.671638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.515427, 35.773872, 34.126503>,  <23.951056, 35.768074, 34.644714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.515427, 35.773872, 34.126503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.389383, 35.404533, 34.214264>,  <24.313757, 35.182930, 34.266922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.389383, 35.404533, 34.214264>,  <24.515427, 35.773872, 34.126503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.389383, 35.404533, 34.214264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335429, -0.107909, -0.935865,
		0.887803, -0.368494, -0.275714,
		-0.315109, -0.923346, 0.219405,
		24.294851, 35.127529, 34.280087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.755756, 35.187443, 33.775295>,  <24.515427, 35.773872, 34.126503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.755756, 35.187443, 33.775295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.383698, 35.075222, 33.870052>,  <24.160461, 35.007889, 33.926907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.383698, 35.075222, 33.870052>,  <24.755756, 35.187443, 33.775295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.383698, 35.075222, 33.870052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167213, -0.250736, -0.953505,
		0.326907, -0.926510, 0.186308,
		-0.930146, -0.280554, 0.236892,
		24.104654, 34.991055, 33.941120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.806629, 35.133633, 33.047478>,  <24.755756, 35.187443, 33.775295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.806629, 35.133633, 33.047478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.637478, 34.955635, 32.731716>,  <24.535988, 34.848835, 32.542259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.637478, 34.955635, 32.731716>,  <24.806629, 35.133633, 33.047478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.637478, 34.955635, 32.731716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678849, -0.732619, 0.049332,
		-0.600282, -0.515022, 0.611894,
		-0.422879, -0.444997, -0.789400,
		24.510614, 34.822136, 32.494896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.642078, 34.438576, 33.274670>,  <24.806629, 35.133633, 33.047478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.642078, 34.438576, 33.274670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.724722, 34.494110, 32.887260>,  <24.774307, 34.527431, 32.654816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.724722, 34.494110, 32.887260>,  <24.642078, 34.438576, 33.274670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.724722, 34.494110, 32.887260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785957, -0.613113, 0.079775,
		-0.582739, -0.777700, -0.235793,
		0.206609, 0.138835, -0.968524,
		24.786705, 34.535759, 32.596703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.569748, 33.778328, 32.909977>,  <24.642078, 34.438576, 33.274670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.569748, 33.778328, 32.909977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.841597, 34.024384, 32.750118>,  <25.004705, 34.172016, 32.654202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.841597, 34.024384, 32.750118>,  <24.569748, 33.778328, 32.909977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.841597, 34.024384, 32.750118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723406, -0.652366, 0.226056,
		-0.121658, -0.442738, -0.888359,
		0.679619, 0.615143, -0.399646,
		25.045483, 34.208927, 32.630226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.967581, 33.310543, 32.512161>,  <24.569748, 33.778328, 32.909977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.967581, 33.310543, 32.512161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.187433, 33.641979, 32.554760>,  <25.319344, 33.840843, 32.580318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.187433, 33.641979, 32.554760>,  <24.967581, 33.310543, 32.512161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.187433, 33.641979, 32.554760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795840, -0.558093, 0.234886,
		0.254059, -0.044346, -0.966171,
		0.549630, 0.828593, 0.106496,
		25.352322, 33.890556, 32.586708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.657625, 33.240387, 32.196487>,  <24.967581, 33.310543, 32.512161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.657625, 33.240387, 32.196487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.707966, 33.555233, 32.438019>,  <25.738171, 33.744141, 32.582935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.707966, 33.555233, 32.438019>,  <25.657625, 33.240387, 32.196487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.707966, 33.555233, 32.438019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710586, -0.496257, 0.498794,
		0.692263, 0.366295, -0.621772,
		0.125853, 0.787119, 0.603825,
		25.745722, 33.791370, 32.619167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.447334, 33.426662, 32.218063>,  <25.657625, 33.240387, 32.196487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.447334, 33.426662, 32.218063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.244213, 33.537434, 32.544365>,  <26.122341, 33.603897, 32.740147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.244213, 33.537434, 32.544365>,  <26.447334, 33.426662, 32.218063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.244213, 33.537434, 32.544365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737647, -0.349351, 0.577781,
		0.444986, 0.895134, -0.026873,
		-0.507803, 0.276927, 0.815750,
		26.091871, 33.620510, 32.789089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.915638, 33.633251, 32.626595>,  <26.447334, 33.426662, 32.218063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.915638, 33.633251, 32.626595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.617151, 33.602272, 32.891068>,  <26.438059, 33.583683, 33.049751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.617151, 33.602272, 32.891068>,  <26.915638, 33.633251, 32.626595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.617151, 33.602272, 32.891068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647561, -0.314732, 0.693980,
		0.154348, 0.946016, 0.285010,
		-0.746218, -0.077447, 0.661181,
		26.393286, 33.579037, 33.089420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.027824, 34.055908, 33.176407>,  <26.915638, 33.633251, 32.626595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.027824, 34.055908, 33.176407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.777796, 33.771702, 33.305683>,  <26.627779, 33.601177, 33.383251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.777796, 33.771702, 33.305683>,  <27.027824, 34.055908, 33.176407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.777796, 33.771702, 33.305683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696103, -0.320067, 0.642649,
		-0.353169, 0.626676, 0.694657,
		-0.625069, -0.710517, 0.323194,
		26.590275, 33.558548, 33.402641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.030188, 34.182533, 33.896511>,  <27.027824, 34.055908, 33.176407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.030188, 34.182533, 33.896511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.891678, 33.815243, 33.819626>,  <26.808573, 33.594868, 33.773495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.891678, 33.815243, 33.819626>,  <27.030188, 34.182533, 33.896511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.891678, 33.815243, 33.819626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396658, -0.328978, 0.856992,
		-0.850151, 0.220511, 0.478140,
		-0.346274, -0.918231, -0.192214,
		26.787796, 33.539772, 33.761963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.778248, 33.914219, 34.515083>,  <27.030188, 34.182533, 33.896511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.778248, 33.914219, 34.515083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.854631, 33.588196, 34.296280>,  <26.900461, 33.392582, 34.164997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.854631, 33.588196, 34.296280>,  <26.778248, 33.914219, 34.515083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.854631, 33.588196, 34.296280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547573, -0.374046, 0.748500,
		-0.814677, -0.442457, 0.374878,
		0.190958, -0.815059, -0.547004,
		26.911919, 33.343678, 34.132179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.783203, 33.373814, 34.998924>,  <26.778248, 33.914219, 34.515083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.783203, 33.373814, 34.998924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.983078, 33.175541, 34.714779>,  <27.103003, 33.056580, 34.544292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.983078, 33.175541, 34.714779>,  <26.783203, 33.373814, 34.998924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.983078, 33.175541, 34.714779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611710, -0.378708, 0.694544,
		-0.613292, -0.781590, 0.113977,
		0.499685, -0.495679, -0.710364,
		27.132984, 33.026836, 34.501671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.831139, 32.693100, 35.266777>,  <26.783203, 33.373814, 34.998924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.831139, 32.693100, 35.266777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.095335, 32.712048, 34.967041>,  <27.253853, 32.723415, 34.787201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.095335, 32.712048, 34.967041>,  <26.831139, 32.693100, 35.266777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.095335, 32.712048, 34.967041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616158, -0.604517, 0.504885,
		-0.429073, -0.795183, -0.428463,
		0.660489, 0.047368, -0.749340,
		27.293482, 32.726257, 34.742237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.161135, 31.912916, 35.178520>,  <26.831139, 32.693100, 35.266777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.161135, 31.912916, 35.178520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.399220, 32.193832, 35.022308>,  <27.542070, 32.362381, 34.928581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.399220, 32.193832, 35.022308>,  <27.161135, 31.912916, 35.178520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.399220, 32.193832, 35.022308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788720, -0.417579, 0.451165,
		0.153770, -0.576558, -0.802456,
		0.595211, 0.702289, -0.390531,
		27.577784, 32.404518, 34.905148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.597975, 31.550554, 34.791534>,  <27.161135, 31.912916, 35.178520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.597975, 31.550554, 34.791534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.778942, 31.900351, 34.861485>,  <27.887522, 32.110229, 34.903454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.778942, 31.900351, 34.861485>,  <27.597975, 31.550554, 34.791534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.778942, 31.900351, 34.861485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806470, -0.484890, 0.338361,
		0.380690, -0.012049, -0.924624,
		0.452418, 0.874492, 0.174875,
		27.914667, 32.162697, 34.913948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.171415, 31.532270, 34.416073>,  <27.597975, 31.550554, 34.791534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.171415, 31.532270, 34.416073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.249399, 31.793617, 34.708675>,  <28.296188, 31.950426, 34.884239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.249399, 31.793617, 34.708675>,  <28.171415, 31.532270, 34.416073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.249399, 31.793617, 34.708675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821047, -0.516705, 0.242688,
		0.536538, 0.553289, -0.637180,
		0.194958, 0.653366, 0.731508,
		28.307886, 31.989628, 34.928127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.857380, 31.637775, 34.445316>,  <28.171415, 31.532270, 34.416073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.857380, 31.637775, 34.445316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.748100, 31.778021, 34.803631>,  <28.682531, 31.862167, 35.018620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.748100, 31.778021, 34.803631>,  <28.857380, 31.637775, 34.445316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.748100, 31.778021, 34.803631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758110, -0.494741, 0.424855,
		0.592141, 0.795175, -0.130639,
		-0.273202, 0.350612, 0.895786,
		28.666140, 31.883205, 35.072365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.489872, 31.902128, 34.711956>,  <28.857380, 31.637775, 34.445316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.489872, 31.902128, 34.711956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.237915, 31.847847, 35.017853>,  <29.086740, 31.815279, 35.201389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.237915, 31.847847, 35.017853>,  <29.489872, 31.902128, 34.711956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.237915, 31.847847, 35.017853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758114, -0.321444, 0.567395,
		0.168824, 0.937155, 0.305351,
		-0.629890, -0.135701, 0.764738,
		29.048948, 31.807137, 35.247272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.876871, 32.211151, 35.343025>,  <29.489872, 31.902128, 34.711956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.876871, 32.211151, 35.343025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.615856, 31.935251, 35.468525>,  <29.459248, 31.769711, 35.543823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.615856, 31.935251, 35.468525>,  <29.876871, 32.211151, 35.343025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.615856, 31.935251, 35.468525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678207, -0.346941, 0.647818,
		-0.337983, 0.635509, 0.694187,
		-0.652536, -0.689754, 0.313746,
		29.420095, 31.728325, 35.562649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.713612, 32.280975, 36.076366>,  <29.876871, 32.211151, 35.343025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.713612, 32.280975, 36.076366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.636850, 31.901960, 35.974117>,  <29.590794, 31.674551, 35.912769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.636850, 31.901960, 35.974117>,  <29.713612, 32.280975, 36.076366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.636850, 31.901960, 35.974117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599450, -0.319400, 0.733923,
		-0.777067, -0.012390, 0.629296,
		-0.191904, -0.947539, -0.255623,
		29.579279, 31.617699, 35.897430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.788681, 31.953392, 36.686920>,  <29.713612, 32.280975, 36.076366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.788681, 31.953392, 36.686920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.754803, 31.645130, 36.434280>,  <29.734476, 31.460173, 36.282696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.754803, 31.645130, 36.434280>,  <29.788681, 31.953392, 36.686920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.754803, 31.645130, 36.434280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448389, -0.595547, 0.666537,
		-0.889817, -0.226750, 0.395992,
		-0.084694, -0.770655, -0.631600,
		29.729395, 31.413935, 36.244801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.368435, 31.629923, 37.131405>,  <29.788681, 31.953392, 36.686920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.368435, 31.629923, 37.131405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.699783, 31.567659, 36.916157>,  <30.898592, 31.530302, 36.787010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.699783, 31.567659, 36.916157>,  <30.368435, 31.629923, 37.131405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.699783, 31.567659, 36.916157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180406, -0.983569, 0.006793,
		-0.530332, 0.091452, -0.842843,
		0.828373, -0.155657, -0.538116,
		30.948296, 31.520962, 36.754723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.175070, 31.061357, 36.710213>,  <30.368435, 31.629923, 37.131405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.175070, 31.061357, 36.710213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.569790, 31.071238, 36.774227>,  <30.806622, 31.077166, 36.812637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.569790, 31.071238, 36.774227>,  <30.175070, 31.061357, 36.710213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.569790, 31.071238, 36.774227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002290, -0.990329, 0.138720,
		0.161914, -0.136523, -0.977315,
		0.986802, 0.024699, 0.160035,
		30.865831, 31.078648, 36.822239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.599394, 30.705244, 36.175007>,  <30.175070, 31.061357, 36.710213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.599394, 30.705244, 36.175007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.758654, 30.695915, 36.541817>,  <30.854210, 30.690317, 36.761902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.758654, 30.695915, 36.541817>,  <30.599394, 30.705244, 36.175007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.758654, 30.695915, 36.541817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116706, -0.990265, -0.075856,
		0.909865, 0.137225, -0.391554,
		0.398152, -0.023322, 0.917023,
		30.878099, 30.688919, 36.816925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.302275, 30.413740, 36.076992>,  <30.599394, 30.705244, 36.175007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.302275, 30.413740, 36.076992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.068867, 30.346912, 36.394882>,  <30.928822, 30.306816, 36.585617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.068867, 30.346912, 36.394882>,  <31.302275, 30.413740, 36.076992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.068867, 30.346912, 36.394882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080563, -0.961874, -0.261358,
		0.808092, -0.216534, 0.547814,
		-0.583521, -0.167067, 0.794728,
		30.893810, 30.296793, 36.633301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.368137, 29.681643, 36.567314>,  <31.302275, 30.413740, 36.076992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.368137, 29.681643, 36.567314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.004734, 29.846977, 36.542755>,  <30.786692, 29.946178, 36.528019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.004734, 29.846977, 36.542755>,  <31.368137, 29.681643, 36.567314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.004734, 29.846977, 36.542755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350277, -0.833407, -0.427480,
		-0.227863, -0.366862, 0.901937,
		-0.908507, 0.413335, -0.061400,
		30.732182, 29.970978, 36.524334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.872332, 29.118603, 36.799969>,  <31.368137, 29.681643, 36.567314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.872332, 29.118603, 36.799969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.713690, 29.413355, 36.580982>,  <30.618505, 29.590206, 36.449593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.713690, 29.413355, 36.580982>,  <30.872332, 29.118603, 36.799969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.713690, 29.413355, 36.580982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388181, -0.675049, -0.627395,
		-0.831878, -0.036313, 0.553769,
		-0.396604, 0.736879, -0.547462,
		30.594709, 29.634418, 36.416744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.270710, 28.890511, 36.654259>,  <30.872332, 29.118603, 36.799969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.270710, 28.890511, 36.654259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.352852, 29.159315, 36.369659>,  <30.402138, 29.320597, 36.198898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.352852, 29.159315, 36.369659>,  <30.270710, 28.890511, 36.654259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.352852, 29.159315, 36.369659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234433, -0.672052, -0.702415,
		-0.950195, 0.311044, 0.019532,
		0.205356, 0.672010, -0.711499,
		30.414459, 29.360918, 36.156208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.758453, 28.800541, 35.994431>,  <30.270710, 28.890511, 36.654259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.758453, 28.800541, 35.994431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.113335, 28.963520, 35.907848>,  <30.326263, 29.061308, 35.855900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.113335, 28.963520, 35.907848>,  <29.758453, 28.800541, 35.994431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.113335, 28.963520, 35.907848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080595, -0.598805, -0.796829,
		-0.454283, 0.689505, -0.564101,
		0.887205, 0.407450, -0.216456,
		30.379496, 29.085754, 35.842911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.690729, 28.766527, 35.283134>,  <29.758453, 28.800541, 35.994431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.690729, 28.766527, 35.283134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.067862, 28.791702, 35.414047>,  <30.294140, 28.806807, 35.492596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.067862, 28.791702, 35.414047>,  <29.690729, 28.766527, 35.283134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.067862, 28.791702, 35.414047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236914, -0.817242, -0.525344,
		0.234403, 0.572847, -0.785430,
		0.942829, 0.062937, 0.327280,
		30.350710, 28.810583, 35.512230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.058121, 28.767056, 34.740719>,  <29.690729, 28.766527, 35.283134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.058121, 28.767056, 34.740719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.321857, 28.610075, 34.997234>,  <30.480101, 28.515886, 35.151142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.321857, 28.610075, 34.997234>,  <30.058121, 28.767056, 34.740719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.321857, 28.610075, 34.997234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095313, -0.802442, -0.589069,
		0.745775, 0.449522, -0.491680,
		0.659344, -0.392449, 0.641287,
		30.519661, 28.492340, 35.189621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.783237, 28.757633, 34.481155>,  <30.058121, 28.767056, 34.740719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.783237, 28.757633, 34.481155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.703735, 28.457083, 34.732845>,  <30.656034, 28.276752, 34.883862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.703735, 28.457083, 34.732845>,  <30.783237, 28.757633, 34.481155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.703735, 28.457083, 34.732845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118077, -0.655719, -0.745715,
		0.972911, -0.073916, 0.219047,
		-0.198753, -0.751378, 0.629228,
		30.644110, 28.231668, 34.921612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.913618, 28.266340, 33.951977>,  <30.783237, 28.757633, 34.481155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.913618, 28.266340, 33.951977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.991556, 28.048483, 33.625690>,  <31.038319, 27.917768, 33.429916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.991556, 28.048483, 33.625690>,  <30.913618, 28.266340, 33.951977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.991556, 28.048483, 33.625690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215207, 0.787655, -0.577309,
		0.956933, 0.288036, 0.036261,
		0.194847, -0.544642, -0.815720,
		31.050011, 27.885090, 33.380974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.456486, 28.522150, 33.565163>,  <30.913618, 28.266340, 33.951977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.456486, 28.522150, 33.565163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.184521, 28.350334, 33.327435>,  <31.021341, 28.247244, 33.184799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.184521, 28.350334, 33.327435>,  <31.456486, 28.522150, 33.565163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.184521, 28.350334, 33.327435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223267, 0.893260, -0.390176,
		0.698475, -0.132595, -0.703243,
		-0.679914, -0.429540, -0.594316,
		30.980547, 28.221472, 33.149139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.695236, 28.528214, 32.786304>,  <31.456486, 28.522150, 33.565163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.695236, 28.528214, 32.786304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.297407, 28.491507, 32.805916>,  <31.058710, 28.469482, 32.817684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.297407, 28.491507, 32.805916>,  <31.695236, 28.528214, 32.786304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.297407, 28.491507, 32.805916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102640, 0.788224, -0.606768,
		0.017038, -0.608507, -0.793366,
		-0.994573, -0.091769, 0.049027,
		30.999035, 28.463976, 32.820625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.442005, 28.666801, 32.155621>,  <31.695236, 28.528214, 32.786304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.442005, 28.666801, 32.155621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.100811, 28.717361, 32.358181>,  <30.896095, 28.747698, 32.479717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.100811, 28.717361, 32.358181>,  <31.442005, 28.666801, 32.155621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.100811, 28.717361, 32.358181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283165, 0.702965, -0.652424,
		-0.438448, -0.699903, -0.563826,
		-0.852984, 0.126398, 0.506401,
		30.844915, 28.755281, 32.510101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.884710, 28.659473, 31.684904>,  <31.442005, 28.666801, 32.155621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.884710, 28.659473, 31.684904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.724430, 28.841120, 32.003204>,  <30.628262, 28.950108, 32.194183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.724430, 28.841120, 32.003204>,  <30.884710, 28.659473, 31.684904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.724430, 28.841120, 32.003204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443996, 0.663483, -0.602210,
		-0.801440, -0.594616, -0.064233,
		-0.400702, 0.454116, 0.795749,
		30.604219, 28.977354, 32.241928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.166492, 28.814688, 31.466967>,  <30.884710, 28.659473, 31.684904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.166492, 28.814688, 31.466967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.278606, 29.048883, 31.771242>,  <30.345875, 29.189400, 31.953808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.278606, 29.048883, 31.771242>,  <30.166492, 28.814688, 31.466967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.278606, 29.048883, 31.771242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337919, 0.801906, -0.492704,
		-0.898472, -0.118954, 0.422609,
		0.280284, 0.585488, 0.760687,
		30.362692, 29.224529, 31.999449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.592827, 29.232962, 31.537018>,  <30.166492, 28.814688, 31.466967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.592827, 29.232962, 31.537018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.879704, 29.448160, 31.714195>,  <30.051828, 29.577280, 31.820501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.879704, 29.448160, 31.714195>,  <29.592827, 29.232962, 31.537018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.879704, 29.448160, 31.714195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290252, 0.808465, -0.511993,
		-0.633556, 0.238630, 0.735977,
		0.717189, 0.537995, 0.442945,
		30.094860, 29.609558, 31.847078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.246147, 29.869013, 31.671949>,  <29.592827, 29.232962, 31.537018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.246147, 29.869013, 31.671949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.634140, 29.959690, 31.707159>,  <29.866936, 30.014097, 31.728285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.634140, 29.959690, 31.707159>,  <29.246147, 29.869013, 31.671949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.634140, 29.959690, 31.707159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196719, 0.944244, -0.264016,
		-0.142968, 0.238774, 0.960493,
		0.969980, 0.226693, 0.088025,
		29.925135, 30.027699, 31.733566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.338152, 30.362097, 32.221294>,  <29.246147, 29.869013, 31.671949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.338152, 30.362097, 32.221294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.632496, 30.396515, 31.952637>,  <29.809103, 30.417166, 31.791443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.632496, 30.396515, 31.952637>,  <29.338152, 30.362097, 32.221294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.632496, 30.396515, 31.952637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200461, 0.975114, -0.094704,
		0.646779, 0.204327, 0.734797,
		0.735862, 0.086045, -0.671643,
		29.853254, 30.422329, 31.751144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.562262, 30.955334, 32.431801>,  <29.338152, 30.362097, 32.221294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.562262, 30.955334, 32.431801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.682482, 30.891895, 32.055607>,  <29.754614, 30.853832, 31.829889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.682482, 30.891895, 32.055607>,  <29.562262, 30.955334, 32.431801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.682482, 30.891895, 32.055607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121751, 0.971631, -0.202753,
		0.945963, 0.175443, 0.272715,
		0.300550, -0.158594, -0.940488,
		29.772646, 30.844316, 31.773460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.797068, 31.583960, 32.218353>,  <29.562262, 30.955334, 32.431801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.797068, 31.583960, 32.218353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.762959, 31.412762, 31.858454>,  <29.742493, 31.310043, 31.642513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.762959, 31.412762, 31.858454>,  <29.797068, 31.583960, 32.218353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.762959, 31.412762, 31.858454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291051, 0.874352, -0.388328,
		0.952900, 0.228758, -0.199128,
		-0.085275, -0.427994, -0.899749,
		29.737375, 31.284363, 31.588530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.127645, 32.089939, 31.697884>,  <29.797068, 31.583960, 32.218353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.127645, 32.089939, 31.697884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.892946, 31.840902, 31.490765>,  <29.752127, 31.691481, 31.366493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.892946, 31.840902, 31.490765>,  <30.127645, 32.089939, 31.697884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.892946, 31.840902, 31.490765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597883, 0.764332, -0.241521,
		0.546135, 0.167870, -0.820705,
		-0.586747, -0.622589, -0.517795,
		29.716923, 31.654125, 31.335426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.091719, 32.279301, 30.984270>,  <30.127645, 32.089939, 31.697884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.091719, 32.279301, 30.984270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.755257, 32.069107, 31.035372>,  <29.553379, 31.942991, 31.066032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.755257, 32.069107, 31.035372>,  <30.091719, 32.279301, 30.984270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.755257, 32.069107, 31.035372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540404, 0.807790, -0.235456,
		0.020529, -0.267095, -0.963452,
		-0.841156, -0.525486, 0.127756,
		29.502911, 31.911461, 31.073698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.632175, 32.569237, 30.442719>,  <30.091719, 32.279301, 30.984270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.632175, 32.569237, 30.442719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.415211, 32.395172, 30.730167>,  <29.285032, 32.290733, 30.902637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.415211, 32.395172, 30.730167>,  <29.632175, 32.569237, 30.442719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.415211, 32.395172, 30.730167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603672, 0.796781, 0.026843,
		-0.584267, -0.419254, -0.694880,
		-0.542413, -0.435163, 0.718624,
		29.252487, 32.264622, 30.945755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.050842, 32.695522, 30.228031>,  <29.632175, 32.569237, 30.442719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.050842, 32.695522, 30.228031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.981840, 32.594112, 30.608761>,  <28.940439, 32.533268, 30.837198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.981840, 32.594112, 30.608761>,  <29.050842, 32.695522, 30.228031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.981840, 32.594112, 30.608761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672056, 0.736750, 0.074437,
		-0.720127, -0.626837, -0.297476,
		-0.172505, -0.253525, 0.951823,
		28.930088, 32.518055, 30.894308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.309862, 32.621822, 30.324286>,  <29.050842, 32.695522, 30.228031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.309862, 32.621822, 30.324286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.493584, 32.715561, 30.667009>,  <28.603817, 32.771805, 30.872644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.493584, 32.715561, 30.667009>,  <28.309862, 32.621822, 30.324286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.493584, 32.715561, 30.667009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695635, 0.694726, 0.182889,
		-0.552388, -0.680028, 0.482109,
		0.459303, 0.234346, 0.856809,
		28.631374, 32.785866, 30.924051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.683622, 32.872131, 30.802715>,  <28.309862, 32.621822, 30.324286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.683622, 32.872131, 30.802715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.016912, 32.986702, 30.991901>,  <28.216887, 33.055443, 31.105413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.016912, 32.986702, 30.991901>,  <27.683622, 32.872131, 30.802715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.016912, 32.986702, 30.991901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509244, 0.730767, 0.454588,
		-0.215424, -0.619630, 0.754753,
		0.833225, 0.286424, 0.472967,
		28.266880, 33.072628, 31.133791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.561596, 32.946011, 31.622496>,  <27.683622, 32.872131, 30.802715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.561596, 32.946011, 31.622496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.878775, 33.160564, 31.506891>,  <28.069082, 33.289299, 31.437529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.878775, 33.160564, 31.506891>,  <27.561596, 32.946011, 31.622496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.878775, 33.160564, 31.506891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504245, 0.843971, 0.182891,
		0.342017, 0.000710, 0.939693,
		0.792945, 0.536388, -0.289010,
		28.116657, 33.321480, 31.420189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.677940, 33.427391, 32.127964>,  <27.561596, 32.946011, 31.622496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.677940, 33.427391, 32.127964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.863932, 33.609180, 31.824059>,  <27.975527, 33.718254, 31.641714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.863932, 33.609180, 31.824059>,  <27.677940, 33.427391, 32.127964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.863932, 33.609180, 31.824059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561856, 0.814697, 0.143478,
		0.684186, 0.360164, 0.634170,
		0.464981, 0.454478, -0.759765,
		28.003426, 33.745525, 31.596128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.000416, 34.087769, 32.366913>,  <27.677940, 33.427391, 32.127964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.000416, 34.087769, 32.366913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.975721, 34.126770, 31.969584>,  <27.960905, 34.150169, 31.731188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.975721, 34.126770, 31.969584>,  <28.000416, 34.087769, 32.366913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.975721, 34.126770, 31.969584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362393, 0.925110, 0.113330,
		0.929979, 0.366968, -0.021777,
		-0.061735, 0.097502, -0.993319,
		27.957201, 34.156021, 31.671587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.505407, 34.565701, 32.257618>,  <28.000416, 34.087769, 32.366913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.505407, 34.565701, 32.257618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.259584, 34.586578, 31.942760>,  <28.112091, 34.599106, 31.753845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.259584, 34.586578, 31.942760>,  <28.505407, 34.565701, 32.257618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.259584, 34.586578, 31.942760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206498, 0.952373, 0.224377,
		0.761365, 0.300436, -0.574509,
		-0.614558, 0.052198, -0.787143,
		28.075216, 34.602238, 31.706617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.564930, 35.266571, 32.095863>,  <28.505407, 34.565701, 32.257618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.564930, 35.266571, 32.095863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.232264, 35.130138, 31.920593>,  <28.032663, 35.048279, 31.815432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.232264, 35.130138, 31.920593>,  <28.564930, 35.266571, 32.095863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.232264, 35.130138, 31.920593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426887, 0.897378, 0.111710,
		0.355106, 0.279956, -0.891922,
		-0.831665, -0.341081, -0.438174,
		27.982763, 35.027813, 31.789141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.471558, 35.699345, 31.482542>,  <28.564930, 35.266571, 32.095863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.471558, 35.699345, 31.482542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.113136, 35.546722, 31.573320>,  <27.898085, 35.455147, 31.627787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.113136, 35.546722, 31.573320>,  <28.471558, 35.699345, 31.482542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.113136, 35.546722, 31.573320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423469, 0.888072, -0.178889,
		-0.133287, -0.256399, -0.957337,
		-0.896052, -0.381559, 0.226946,
		27.844320, 35.432255, 31.641403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.665318, 35.424255, 30.883821>,  <28.471558, 35.699345, 31.482542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.665318, 35.424255, 30.883821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.748993, 35.730499, 30.640484>,  <28.799198, 35.914246, 30.494480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.748993, 35.730499, 30.640484>,  <28.665318, 35.424255, 30.883821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.748993, 35.730499, 30.640484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649859, 0.356019, 0.671516,
		0.730701, -0.535811, -0.423064,
		0.209187, 0.765609, -0.608345,
		28.811749, 35.960182, 30.457981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.295906, 35.607033, 31.054613>,  <28.665318, 35.424255, 30.883821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.295906, 35.607033, 31.054613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.257191, 35.933784, 30.827164>,  <29.233961, 36.129837, 30.690693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.257191, 35.933784, 30.827164>,  <29.295906, 35.607033, 31.054613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.257191, 35.933784, 30.827164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559042, 0.517292, 0.647982,
		0.823471, -0.255168, -0.506740,
		-0.096788, 0.816883, -0.568625,
		29.228155, 36.178848, 30.656576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.094215, 35.678585, 31.229353>,  <29.295906, 35.607033, 31.054613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.094215, 35.678585, 31.229353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.192575, 35.514996, 31.580870>,  <30.251593, 35.416843, 31.791780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.192575, 35.514996, 31.580870>,  <30.094215, 35.678585, 31.229353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.192575, 35.514996, 31.580870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116174, 0.887661, 0.445604,
		-0.962308, -0.211667, 0.170765,
		0.245901, -0.408969, 0.878793,
		30.266346, 35.392303, 31.844507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.171415, 35.585270, 30.555674>,  <30.094215, 35.678585, 31.229353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.171415, 35.585270, 30.555674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.201199, 35.942226, 30.733704>,  <30.219069, 36.156403, 30.840521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.201199, 35.942226, 30.733704>,  <30.171415, 35.585270, 30.555674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.201199, 35.942226, 30.733704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801438, -0.319138, 0.505814,
		0.593425, 0.319038, -0.738960,
		0.074457, 0.892393, 0.445073,
		30.223536, 36.209946, 30.867226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.780888, 35.241859, 30.227791>,  <30.171415, 35.585270, 30.555674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.780888, 35.241859, 30.227791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.833323, 35.612583, 30.087030>,  <30.864784, 35.835018, 30.002575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.833323, 35.612583, 30.087030>,  <30.780888, 35.241859, 30.227791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.833323, 35.612583, 30.087030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974844, -0.185054, -0.124237,
		-0.180266, -0.326762, -0.927756,
		0.131089, 0.926812, -0.351901,
		30.872650, 35.890625, 29.981461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.798407, 35.491234, 30.899197>,  <30.780888, 35.241859, 30.227791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.798407, 35.491234, 30.899197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.683640, 35.856308, 31.015598>,  <30.614780, 36.075352, 31.085440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.683640, 35.856308, 31.015598>,  <30.798407, 35.491234, 30.899197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.683640, 35.856308, 31.015598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544371, -0.094623, 0.833491,
		0.788251, 0.397556, -0.469691,
		-0.286916, 0.912686, 0.291005,
		30.597565, 36.130116, 31.102900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.352896, 35.763336, 31.218483>,  <30.798407, 35.491234, 30.899197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.352896, 35.763336, 31.218483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.068369, 36.010464, 31.352543>,  <30.897654, 36.158741, 31.432980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.068369, 36.010464, 31.352543>,  <31.352896, 35.763336, 31.218483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.068369, 36.010464, 31.352543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558990, 0.208189, 0.802613,
		0.426096, 0.758259, -0.493443,
		-0.711317, 0.617820, 0.335151,
		30.854973, 36.195808, 31.453089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.581291, 36.408012, 31.275198>,  <31.352896, 35.763336, 31.218483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.581291, 36.408012, 31.275198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.311611, 36.380249, 31.569311>,  <31.149803, 36.363590, 31.745779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.311611, 36.380249, 31.569311>,  <31.581291, 36.408012, 31.275198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.311611, 36.380249, 31.569311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679921, 0.330411, 0.654626,
		-0.288381, 0.941281, -0.175571,
		-0.674198, -0.069407, 0.735282,
		31.109352, 36.359428, 31.789896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.054180, 36.832047, 31.721176>,  <31.581291, 36.408012, 31.275198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.054180, 36.832047, 31.721176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.424747, 36.982609, 31.724226>,  <32.647087, 37.072948, 31.726055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.424747, 36.982609, 31.724226>,  <32.054180, 36.832047, 31.721176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.424747, 36.982609, 31.724226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081007, 0.179518, 0.980414,
		0.367669, -0.908894, 0.196801,
		0.926422, 0.376410, 0.007623,
		32.702675, 37.095531, 31.726513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.309669, 36.633209, 32.414509>,  <32.054180, 36.832047, 31.721176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.309669, 36.633209, 32.414509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.554523, 36.917538, 32.275928>,  <32.701435, 37.088135, 32.192780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.554523, 36.917538, 32.275928>,  <32.309669, 36.633209, 32.414509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.554523, 36.917538, 32.275928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045260, 0.405913, 0.912790,
		0.789459, -0.574429, 0.216301,
		0.612133, 0.710820, -0.346451,
		32.738163, 37.130783, 32.171993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.949497, 36.653923, 32.829071>,  <32.309669, 36.633209, 32.414509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.949497, 36.653923, 32.829071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.913403, 37.014057, 32.658779>,  <32.891747, 37.230141, 32.556602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.913403, 37.014057, 32.658779>,  <32.949497, 36.653923, 32.829071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.913403, 37.014057, 32.658779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164123, 0.435072, 0.885311,
		0.982304, 0.010016, -0.187026,
		-0.090237, 0.900340, -0.425729,
		32.886330, 37.284161, 32.531059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.422165, 37.106972, 33.256844>,  <32.949497, 36.653923, 32.829071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.422165, 37.106972, 33.256844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.183609, 37.358944, 33.057846>,  <33.040474, 37.510128, 32.938446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.183609, 37.358944, 33.057846>,  <33.422165, 37.106972, 33.256844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.183609, 37.358944, 33.057846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076600, 0.572291, 0.816465,
		0.799029, 0.525042, -0.293058,
		-0.596393, 0.629931, -0.497496,
		33.004692, 37.547924, 32.908596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.733391, 37.789028, 33.290760>,  <33.422165, 37.106972, 33.256844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.733391, 37.789028, 33.290760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.348537, 37.860909, 33.208775>,  <33.117626, 37.904037, 33.159584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.348537, 37.860909, 33.208775>,  <33.733391, 37.789028, 33.290760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.348537, 37.860909, 33.208775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045457, 0.635630, 0.770655,
		0.268769, 0.750788, -0.603391,
		-0.962132, 0.179700, -0.204966,
		33.059898, 37.914818, 33.147285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.648052, 38.432480, 33.564072>,  <33.733391, 37.789028, 33.290760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.648052, 38.432480, 33.564072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.269173, 38.315037, 33.512527>,  <33.041843, 38.244572, 33.481602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.269173, 38.315037, 33.512527>,  <33.648052, 38.432480, 33.564072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.269173, 38.315037, 33.512527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258886, 0.463166, 0.847618,
		-0.189182, 0.836225, -0.514722,
		-0.947200, -0.293608, -0.128864,
		32.985012, 38.226955, 33.473869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.201340, 39.031658, 33.422974>,  <33.648052, 38.432480, 33.564072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.201340, 39.031658, 33.422974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.956234, 38.765507, 33.593517>,  <32.809170, 38.605816, 33.695843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.956234, 38.765507, 33.593517>,  <33.201340, 39.031658, 33.422974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.956234, 38.765507, 33.593517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219782, 0.661723, 0.716811,
		-0.759085, 0.345533, -0.551722,
		-0.612769, -0.665379, 0.426362,
		32.772404, 38.565891, 33.721428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.454445, 39.349739, 33.451340>,  <33.201340, 39.031658, 33.422974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.454445, 39.349739, 33.451340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.479427, 39.066013, 33.732189>,  <32.494415, 38.895779, 33.900700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.479427, 39.066013, 33.732189>,  <32.454445, 39.349739, 33.451340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.479427, 39.066013, 33.732189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526419, 0.574268, 0.626976,
		-0.847928, -0.408768, -0.337531,
		0.062455, -0.709313, 0.702121,
		32.498165, 38.853218, 33.942825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.692404, 39.348190, 33.681561>,  <32.454445, 39.349739, 33.451340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.692404, 39.348190, 33.681561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.905781, 39.168606, 33.968300>,  <32.033806, 39.060856, 34.140343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.905781, 39.168606, 33.968300>,  <31.692404, 39.348190, 33.681561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.905781, 39.168606, 33.968300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543474, 0.467484, 0.697205,
		-0.648133, -0.761508, 0.005378,
		0.533441, -0.448959, 0.716851,
		32.065815, 39.033916, 34.183357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.198317, 39.014786, 34.098568>,  <31.692404, 39.348190, 33.681561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.198317, 39.014786, 34.098568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.511642, 39.043892, 34.345509>,  <31.699638, 39.061356, 34.493675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.511642, 39.043892, 34.345509>,  <31.198317, 39.014786, 34.098568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.511642, 39.043892, 34.345509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621608, 0.099570, 0.776974,
		-0.004934, -0.992366, 0.123226,
		0.783313, 0.072765, 0.617355,
		31.746635, 39.065723, 34.530716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.024137, 38.636135, 34.602478>,  <31.198317, 39.014786, 34.098568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.024137, 38.636135, 34.602478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.314913, 38.840492, 34.786018>,  <31.489378, 38.963108, 34.896145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.314913, 38.840492, 34.786018>,  <31.024137, 38.636135, 34.602478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.314913, 38.840492, 34.786018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573859, 0.084963, 0.814535,
		0.377158, -0.855433, 0.354945,
		0.726937, 0.510897, 0.458853,
		31.532993, 38.993763, 34.923676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.065104, 38.257469, 35.205048>,  <31.024137, 38.636135, 34.602478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.065104, 38.257469, 35.205048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.209707, 38.628410, 35.243675>,  <31.296471, 38.850975, 35.266853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.209707, 38.628410, 35.243675>,  <31.065104, 38.257469, 35.205048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.209707, 38.628410, 35.243675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564319, 0.135181, 0.814414,
		0.742195, -0.348916, 0.572192,
		0.361512, 0.927353, 0.096569,
		31.318161, 38.906616, 35.272644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.321056, 38.210602, 35.876076>,  <31.065104, 38.257469, 35.205048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.321056, 38.210602, 35.876076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.272337, 38.595036, 35.776901>,  <31.243105, 38.825695, 35.717396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.272337, 38.595036, 35.776901>,  <31.321056, 38.210602, 35.876076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.272337, 38.595036, 35.776901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451696, 0.168761, 0.876065,
		0.883819, 0.218697, 0.413565,
		-0.121799, 0.961089, -0.247939,
		31.235798, 38.883362, 35.702518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.430582, 38.550613, 36.538910>,  <31.321056, 38.210602, 35.876076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.430582, 38.550613, 36.538910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.260216, 38.824810, 36.302711>,  <31.157995, 38.989330, 36.160992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.260216, 38.824810, 36.302711>,  <31.430582, 38.550613, 36.538910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.260216, 38.824810, 36.302711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615465, 0.258869, 0.744439,
		0.663172, 0.680501, 0.311642,
		-0.425917, 0.685496, -0.590499,
		31.132441, 39.030460, 36.125561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.550081, 39.211349, 36.849300>,  <31.430582, 38.550613, 36.538910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.550081, 39.211349, 36.849300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.226709, 39.230839, 36.614670>,  <31.032686, 39.242531, 36.473892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.226709, 39.230839, 36.614670>,  <31.550081, 39.211349, 36.849300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.226709, 39.230839, 36.614670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547526, 0.303482, 0.779817,
		0.216006, 0.951591, -0.218668,
		-0.808429, 0.048719, -0.586574,
		30.984180, 39.245453, 36.438698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.274469, 39.810734, 37.020329>,  <31.550081, 39.211349, 36.849300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.274469, 39.810734, 37.020329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.979538, 39.604805, 36.845375>,  <30.802580, 39.481247, 36.740402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.979538, 39.604805, 36.845375>,  <31.274469, 39.810734, 37.020329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.979538, 39.604805, 36.845375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632269, 0.297946, 0.715167,
		-0.237871, 0.803855, -0.545192,
		-0.737329, -0.514825, -0.437380,
		30.758339, 39.450356, 36.714161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.783710, 40.265305, 36.879951>,  <31.274469, 39.810734, 37.020329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.783710, 40.265305, 36.879951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.601683, 39.909309, 36.891495>,  <30.492466, 39.695713, 36.898418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.601683, 39.909309, 36.891495>,  <30.783710, 40.265305, 36.879951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.601683, 39.909309, 36.891495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628402, 0.343937, 0.697723,
		-0.630890, 0.299379, -0.715786,
		-0.455069, -0.889988, 0.028856,
		30.465162, 39.642311, 36.900150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.947847, 40.260292, 36.727684>,  <30.783710, 40.265305, 36.879951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.947847, 40.260292, 36.727684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.022057, 39.930317, 36.941246>,  <30.066582, 39.732330, 37.069382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.022057, 39.930317, 36.941246>,  <29.947847, 40.260292, 36.727684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.022057, 39.930317, 36.941246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634084, 0.314575, 0.706386,
		-0.750679, -0.469592, -0.464720,
		0.185524, -0.824940, 0.533905,
		30.077713, 39.682835, 37.101418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.316441, 40.093952, 36.927174>,  <29.947847, 40.260292, 36.727684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.316441, 40.093952, 36.927174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.570486, 39.893604, 37.162380>,  <29.722914, 39.773396, 37.303505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.570486, 39.893604, 37.162380>,  <29.316441, 40.093952, 36.927174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.570486, 39.893604, 37.162380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645897, 0.073118, 0.759915,
		-0.423614, -0.862428, -0.277072,
		0.635113, -0.500871, 0.588014,
		29.761021, 39.743343, 37.338783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.947201, 39.547634, 37.277832>,  <29.316441, 40.093952, 36.927174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.947201, 39.547634, 37.277832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.251514, 39.568684, 37.536579>,  <29.434103, 39.581314, 37.691826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.251514, 39.568684, 37.536579>,  <28.947201, 39.547634, 37.277832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.251514, 39.568684, 37.536579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624874, -0.209863, 0.751991,
		0.175325, -0.976314, -0.126779,
		0.760785, 0.052622, 0.646867,
		29.479750, 39.584469, 37.730640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.636179, 39.269020, 37.813850>,  <28.947201, 39.547634, 37.277832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.636179, 39.269020, 37.813850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.988630, 39.360332, 37.979504>,  <29.200102, 39.415119, 38.078896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.988630, 39.360332, 37.979504>,  <28.636179, 39.269020, 37.813850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.988630, 39.360332, 37.979504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371427, -0.207921, 0.904882,
		0.292671, -0.951135, -0.098416,
		0.881128, 0.228278, 0.414129,
		29.252968, 39.428818, 38.103741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.981754, 38.658730, 38.162666>,  <28.636179, 39.269020, 37.813850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.981754, 38.658730, 38.162666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.076973, 39.014729, 38.318222>,  <29.134104, 39.228329, 38.411556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.076973, 39.014729, 38.318222>,  <28.981754, 38.658730, 38.162666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.076973, 39.014729, 38.318222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413885, -0.269270, 0.869594,
		0.878655, -0.367956, 0.304260,
		0.238045, 0.890001, 0.388887,
		29.148386, 39.281731, 38.434887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.258005, 38.571152, 38.821186>,  <28.981754, 38.658730, 38.162666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.258005, 38.571152, 38.821186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.147278, 38.955475, 38.815369>,  <29.080841, 39.186069, 38.811878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.147278, 38.955475, 38.815369>,  <29.258005, 38.571152, 38.821186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.147278, 38.955475, 38.815369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451349, -0.116642, 0.884692,
		0.848325, 0.251466, 0.465950,
		-0.276819, 0.960812, -0.014548,
		29.064232, 39.243717, 38.811005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.341877, 38.743324, 39.494514>,  <29.258005, 38.571152, 38.821186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.341877, 38.743324, 39.494514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.092970, 39.012699, 39.334881>,  <28.943626, 39.174324, 39.239101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.092970, 39.012699, 39.334881>,  <29.341877, 38.743324, 39.494514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.092970, 39.012699, 39.334881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494185, 0.057422, 0.867458,
		0.607096, 0.737010, 0.297072,
		-0.622267, 0.673439, -0.399079,
		28.906290, 39.214729, 39.215157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.438869, 39.455002, 39.912178>,  <29.341877, 38.743324, 39.494514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.438869, 39.455002, 39.912178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.075653, 39.460022, 39.744701>,  <28.857723, 39.463036, 39.644215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.075653, 39.460022, 39.744701>,  <29.438869, 39.455002, 39.912178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.075653, 39.460022, 39.744701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417820, 0.043818, 0.907473,
		0.029735, 0.998961, -0.034545,
		-0.908043, 0.012550, -0.418688,
		28.803240, 39.463787, 39.619095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.002741, 39.925331, 40.349812>,  <29.438869, 39.455002, 39.912178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.002741, 39.925331, 40.349812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.768721, 39.692772, 40.123646>,  <28.628309, 39.553234, 39.987946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.768721, 39.692772, 40.123646>,  <29.002741, 39.925331, 40.349812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.768721, 39.692772, 40.123646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668997, -0.048114, 0.741706,
		-0.458433, 0.812193, -0.360807,
		-0.585049, -0.581401, -0.565412,
		28.593206, 39.518353, 39.954021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.383934, 40.398399, 40.347820>,  <29.002741, 39.925331, 40.349812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.383934, 40.398399, 40.347820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.304054, 40.021408, 40.240601>,  <28.256126, 39.795212, 40.176270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.304054, 40.021408, 40.240601>,  <28.383934, 40.398399, 40.347820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.304054, 40.021408, 40.240601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675107, -0.065927, 0.734768,
		-0.710176, 0.327696, -0.623109,
		-0.199700, -0.942480, -0.268049,
		28.244144, 39.738663, 40.160187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.638317, 40.249588, 40.421772>,  <28.383934, 40.398399, 40.347820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.638317, 40.249588, 40.421772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.790693, 39.879852, 40.412979>,  <27.882118, 39.658012, 40.407703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.790693, 39.879852, 40.412979>,  <27.638317, 40.249588, 40.421772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.790693, 39.879852, 40.412979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530304, -0.237899, 0.813746,
		-0.757406, -0.298331, -0.580805,
		0.380938, -0.924339, -0.021980,
		27.904974, 39.602551, 40.406384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.103601, 39.814827, 40.509117>,  <27.638317, 40.249588, 40.421772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.103601, 39.814827, 40.509117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.401604, 39.570801, 40.617035>,  <27.580404, 39.424385, 40.681786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.401604, 39.570801, 40.617035>,  <27.103601, 39.814827, 40.509117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.401604, 39.570801, 40.617035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485320, -0.218240, 0.846662,
		-0.457639, -0.761703, -0.458666,
		0.745004, -0.610065, 0.269795,
		27.625105, 39.387783, 40.697975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.716728, 39.378712, 40.983448>,  <27.103601, 39.814827, 40.509117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.716728, 39.378712, 40.983448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.102026, 39.301521, 41.058197>,  <27.333204, 39.255207, 41.103046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.102026, 39.301521, 41.058197>,  <26.716728, 39.378712, 40.983448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.102026, 39.301521, 41.058197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226980, -0.212661, 0.950397,
		-0.143664, -0.957881, -0.248647,
		0.963245, -0.192976, 0.186868,
		27.390999, 39.243629, 41.114258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.749941, 38.695454, 41.225811>,  <26.716728, 39.378712, 40.983448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.749941, 38.695454, 41.225811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.059101, 38.913273, 41.356102>,  <27.244596, 39.043964, 41.434277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.059101, 38.913273, 41.356102>,  <26.749941, 38.695454, 41.225811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.059101, 38.913273, 41.356102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273388, -0.177470, 0.945390,
		0.572614, -0.819741, 0.011705,
		0.772898, 0.544544, 0.325729,
		27.290970, 39.076637, 41.453819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.198280, 38.258087, 41.807987>,  <26.749941, 38.695454, 41.225811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.198280, 38.258087, 41.807987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.302635, 38.639526, 41.868118>,  <27.365248, 38.868389, 41.904198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.302635, 38.639526, 41.868118>,  <27.198280, 38.258087, 41.807987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.302635, 38.639526, 41.868118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208682, -0.096327, 0.973228,
		0.942544, -0.285273, 0.173868,
		0.260887, 0.953594, 0.150324,
		27.380901, 38.925606, 41.913216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.601818, 38.305084, 42.316891>,  <27.198280, 38.258087, 41.807987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.601818, 38.305084, 42.316891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.447052, 38.673904, 42.312519>,  <27.354193, 38.895195, 42.309898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.447052, 38.673904, 42.312519>,  <27.601818, 38.305084, 42.316891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.447052, 38.673904, 42.312519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109904, -0.034349, 0.993349,
		0.915542, 0.385544, 0.114627,
		-0.386917, 0.922050, -0.010925,
		27.330976, 38.950520, 42.309242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.834860, 38.647472, 42.789219>,  <27.601818, 38.305084, 42.316891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.834860, 38.647472, 42.789219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.491507, 38.843636, 42.728985>,  <27.285494, 38.961334, 42.692844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.491507, 38.843636, 42.728985>,  <27.834860, 38.647472, 42.789219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.491507, 38.843636, 42.728985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146434, 0.047099, 0.988099,
		0.491663, 0.870220, 0.031383,
		-0.858385, 0.490407, -0.150587,
		27.233992, 38.990757, 42.683807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.870144, 39.126621, 43.252258>,  <27.834860, 38.647472, 42.789219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.870144, 39.126621, 43.252258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.487089, 39.164150, 43.143353>,  <27.257256, 39.186668, 43.078011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.487089, 39.164150, 43.143353>,  <27.870144, 39.126621, 43.252258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.487089, 39.164150, 43.143353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266573, 0.068835, 0.961354,
		0.108942, 0.993206, -0.040907,
		-0.957638, 0.093827, -0.272261,
		27.199799, 39.192299, 43.061676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.490454, 39.600933, 43.724705>,  <27.870144, 39.126621, 43.252258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.490454, 39.600933, 43.724705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.192268, 39.402008, 43.547180>,  <27.013357, 39.282654, 43.440666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.192268, 39.402008, 43.547180>,  <27.490454, 39.600933, 43.724705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.192268, 39.402008, 43.547180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455682, -0.105702, 0.883844,
		-0.486456, 0.861110, -0.147818,
		-0.745463, -0.497309, -0.443812,
		26.968630, 39.252815, 43.414036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.834867, 39.999115, 43.777462>,  <27.490454, 39.600933, 43.724705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.834867, 39.999115, 43.777462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.778051, 39.605576, 43.733894>,  <26.743961, 39.369453, 43.707752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.778051, 39.605576, 43.733894>,  <26.834867, 39.999115, 43.777462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.778051, 39.605576, 43.733894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439150, -0.035982, 0.897693,
		-0.887114, 0.175342, -0.426946,
		-0.142041, -0.983850, -0.108921,
		26.735439, 39.310421, 43.701218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.142462, 39.914135, 44.018158>,  <26.834867, 39.999115, 43.777462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.142462, 39.914135, 44.018158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.308128, 39.550072, 44.014481>,  <26.407528, 39.331635, 44.012276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.308128, 39.550072, 44.014481>,  <26.142462, 39.914135, 44.018158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.308128, 39.550072, 44.014481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394881, -0.188773, 0.899129,
		-0.820083, -0.368757, -0.437586,
		0.414165, -0.910156, -0.009195,
		26.432377, 39.277023, 44.011723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.603146, 39.339832, 44.174736>,  <26.142462, 39.914135, 44.018158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.603146, 39.339832, 44.174736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.965923, 39.200291, 44.269180>,  <26.183590, 39.116566, 44.325848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.965923, 39.200291, 44.269180>,  <25.603146, 39.339832, 44.174736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.965923, 39.200291, 44.269180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376672, -0.420666, 0.825323,
		-0.188595, -0.837460, -0.512925,
		0.906946, -0.348856, 0.236112,
		26.238007, 39.095634, 44.340015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.554459, 38.650139, 44.232330>,  <25.603146, 39.339832, 44.174736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.554459, 38.650139, 44.232330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.850853, 38.777798, 44.468666>,  <26.028688, 38.854393, 44.610466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.850853, 38.777798, 44.468666>,  <25.554459, 38.650139, 44.232330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.850853, 38.777798, 44.468666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468591, -0.384485, 0.795357,
		0.481003, -0.866208, -0.135349,
		0.740985, 0.319146, 0.590836,
		26.073149, 38.873543, 44.645916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.792278, 38.523415, 44.040703>,  <25.554459, 38.650139, 44.232330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.792278, 38.523415, 44.040703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.718958, 38.759151, 44.355431>,  <24.674965, 38.900593, 44.544266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.718958, 38.759151, 44.355431>,  <24.792278, 38.523415, 44.040703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.718958, 38.759151, 44.355431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974476, 0.214447, 0.066397,
		-0.129600, 0.778905, -0.613604,
		-0.183302, 0.589338, 0.786817,
		24.663967, 38.935951, 44.591476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.969349, 39.195595, 43.910267>,  <24.792278, 38.523415, 44.040703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.969349, 39.195595, 43.910267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.999687, 39.153038, 44.306839>,  <25.017891, 39.127506, 44.544781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.999687, 39.153038, 44.306839>,  <24.969349, 39.195595, 43.910267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.999687, 39.153038, 44.306839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895739, 0.444090, -0.020871,
		-0.438063, 0.889643, 0.128980,
		0.075847, -0.106389, 0.991427,
		25.022442, 39.121120, 44.604267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.040876, 39.894638, 44.401505>,  <24.969349, 39.195595, 43.910267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.040876, 39.894638, 44.401505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.227257, 39.563442, 44.526291>,  <25.339085, 39.364723, 44.601162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.227257, 39.563442, 44.526291>,  <25.040876, 39.894638, 44.401505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.227257, 39.563442, 44.526291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864085, 0.501680, 0.040919,
		-0.190388, 0.250499, 0.949211,
		0.465951, -0.827990, 0.311966,
		25.367043, 39.315044, 44.619881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.524885, 40.207897, 44.874954>,  <25.040876, 39.894638, 44.401505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.524885, 40.207897, 44.874954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.653656, 39.844986, 44.766727>,  <25.730919, 39.627239, 44.701794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.653656, 39.844986, 44.766727>,  <25.524885, 40.207897, 44.874954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.653656, 39.844986, 44.766727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922154, 0.365218, -0.127468,
		0.214464, -0.208467, 0.954226,
		0.321928, -0.907280, -0.270564,
		25.750235, 39.572803, 44.685558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.086018, 39.923954, 45.392811>,  <25.524885, 40.207897, 44.874954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.086018, 39.923954, 45.392811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.119625, 39.786945, 45.018513>,  <26.139790, 39.704739, 44.793934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.119625, 39.786945, 45.018513>,  <26.086018, 39.923954, 45.392811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.119625, 39.786945, 45.018513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919356, 0.388858, -0.059791,
		0.384351, -0.855259, 0.347572,
		0.084019, -0.342523, -0.935745,
		26.144831, 39.684189, 44.737789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.996653, 39.478962, 45.938778>,  <26.086018, 39.923954, 45.392811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.996653, 39.478962, 45.938778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.966286, 39.229515, 46.249992>,  <25.948067, 39.079845, 46.436722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.966286, 39.229515, 46.249992>,  <25.996653, 39.478962, 45.938778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.966286, 39.229515, 46.249992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313828, -0.755574, -0.574996,
		0.946440, 0.200517, 0.253070,
		-0.075916, -0.623620, 0.778033,
		25.943510, 39.042431, 46.483402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.549959, 39.025238, 46.021347>,  <25.996653, 39.478962, 45.938778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.549959, 39.025238, 46.021347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.247282, 38.822189, 46.186142>,  <26.065676, 38.700359, 46.285019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.247282, 38.822189, 46.186142>,  <26.549959, 39.025238, 46.021347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.247282, 38.822189, 46.186142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343907, -0.845007, -0.409502,
		0.556006, -0.168181, 0.813986,
		-0.756693, -0.507621, 0.411990,
		26.020273, 38.669903, 46.309738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.820709, 38.473492, 46.410995>,  <26.549959, 39.025238, 46.021347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.820709, 38.473492, 46.410995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.448463, 38.381279, 46.297283>,  <26.225117, 38.325951, 46.229057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.448463, 38.381279, 46.297283>,  <26.820709, 38.473492, 46.410995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.448463, 38.381279, 46.297283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353470, -0.767602, -0.534645,
		-0.094960, -0.598032, 0.795826,
		-0.930613, -0.230531, -0.284278,
		26.169279, 38.312119, 46.211998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.601511, 37.746330, 46.619690>,  <26.820709, 38.473492, 46.410995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.601511, 37.746330, 46.619690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.398046, 37.872349, 46.299187>,  <26.275967, 37.947960, 46.106884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.398046, 37.872349, 46.299187>,  <26.601511, 37.746330, 46.619690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.398046, 37.872349, 46.299187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435336, -0.708799, -0.555055,
		-0.742796, -0.631151, 0.223390,
		-0.508662, 0.315043, -0.801256,
		26.245447, 37.966862, 46.058811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.239147, 37.212139, 46.526588>,  <26.601511, 37.746330, 46.619690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.239147, 37.212139, 46.526588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.286812, 37.429726, 46.194347>,  <26.315411, 37.560276, 45.995003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.286812, 37.429726, 46.194347>,  <26.239147, 37.212139, 46.526588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.286812, 37.429726, 46.194347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365319, -0.801902, -0.472754,
		-0.923224, -0.247103, -0.294275,
		0.119161, 0.543962, -0.830606,
		26.322559, 37.592915, 45.945164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.017479, 36.772354, 45.955296>,  <26.239147, 37.212139, 46.526588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.017479, 36.772354, 45.955296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.266314, 37.045769, 45.802567>,  <26.415615, 37.209816, 45.710930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.266314, 37.045769, 45.802567>,  <26.017479, 36.772354, 45.955296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.266314, 37.045769, 45.802567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416606, -0.701884, -0.577753,
		-0.662908, 0.200344, -0.721398,
		0.622087, 0.683536, -0.381819,
		26.452940, 37.250828, 45.688019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.060350, 36.683327, 45.164463>,  <26.017479, 36.772354, 45.955296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.060350, 36.683327, 45.164463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.403509, 36.864204, 45.262066>,  <26.609404, 36.972729, 45.320625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.403509, 36.864204, 45.262066>,  <26.060350, 36.683327, 45.164463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.403509, 36.864204, 45.262066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502672, -0.640207, -0.580910,
		-0.106468, 0.621015, -0.776534,
		0.857896, 0.452190, 0.244005,
		26.660877, 36.999863, 45.335266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.440716, 36.870438, 44.487144>,  <26.060350, 36.683327, 45.164463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.440716, 36.870438, 44.487144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.718390, 36.880211, 44.774899>,  <26.884995, 36.886074, 44.947552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.718390, 36.880211, 44.774899>,  <26.440716, 36.870438, 44.487144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.718390, 36.880211, 44.774899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693355, -0.291100, -0.659181,
		0.193307, 0.956381, -0.219018,
		0.694184, 0.024433, 0.719383,
		26.926645, 36.887539, 44.990715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.929073, 37.104713, 44.187675>,  <26.440716, 36.870438, 44.487144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.929073, 37.104713, 44.187675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.118233, 36.974594, 44.515224>,  <27.231730, 36.896523, 44.711754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.118233, 36.974594, 44.515224>,  <26.929073, 37.104713, 44.187675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.118233, 36.974594, 44.515224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778829, -0.280293, -0.561125,
		0.412057, 0.903115, 0.120802,
		0.472900, -0.325299, 0.818868,
		27.260103, 36.877003, 44.760883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.596952, 37.465843, 44.278137>,  <26.929073, 37.104713, 44.187675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.596952, 37.465843, 44.278137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.642574, 37.118980, 44.472054>,  <27.669949, 36.910862, 44.588406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.642574, 37.118980, 44.472054>,  <27.596952, 37.465843, 44.278137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.642574, 37.118980, 44.472054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814858, -0.197498, -0.544977,
		0.568328, 0.457197, 0.684086,
		0.114056, -0.867160, 0.484794,
		27.676792, 36.858833, 44.617493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.351282, 37.408161, 44.333191>,  <27.596952, 37.465843, 44.278137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.351282, 37.408161, 44.333191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.196295, 37.042648, 44.381981>,  <28.103302, 36.823341, 44.411255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.196295, 37.042648, 44.381981>,  <28.351282, 37.408161, 44.333191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.196295, 37.042648, 44.381981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797698, -0.398649, -0.452501,
		0.462111, -0.078029, 0.883383,
		-0.387468, -0.913778, 0.121976,
		28.080055, 36.768517, 44.418575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.837690, 37.053009, 44.683819>,  <28.351282, 37.408161, 44.333191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.837690, 37.053009, 44.683819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.593296, 36.823486, 44.465668>,  <28.446659, 36.685772, 44.334778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.593296, 36.823486, 44.465668>,  <28.837690, 37.053009, 44.683819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.593296, 36.823486, 44.465668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774910, -0.292619, -0.560258,
		0.161895, -0.764929, 0.623438,
		-0.610987, -0.573811, -0.545377,
		28.410000, 36.651344, 44.302055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.143612, 36.432335, 44.613529>,  <28.837690, 37.053009, 44.683819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.143612, 36.432335, 44.613529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.884468, 36.428741, 44.308846>,  <28.728981, 36.426586, 44.126038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.884468, 36.428741, 44.308846>,  <29.143612, 36.432335, 44.613529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.884468, 36.428741, 44.308846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747072, -0.202907, -0.633018,
		-0.148869, -0.979157, 0.138166,
		-0.647859, -0.008983, -0.761707,
		28.690111, 36.426048, 44.080334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.545097, 36.233852, 44.098522>,  <29.143612, 36.432335, 44.613529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.545097, 36.233852, 44.098522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.220072, 36.296684, 43.874001>,  <29.025057, 36.334385, 43.739288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.220072, 36.296684, 43.874001>,  <29.545097, 36.233852, 44.098522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.220072, 36.296684, 43.874001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543785, -0.142415, -0.827052,
		-0.209856, -0.977262, 0.030300,
		-0.812563, 0.157085, -0.561308,
		28.976303, 36.343811, 43.705608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.488697, 35.631382, 43.732201>,  <29.545097, 36.233852, 44.098522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.488697, 35.631382, 43.732201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.320482, 35.954029, 43.566063>,  <29.219553, 36.147617, 43.466381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.320482, 35.954029, 43.566063>,  <29.488697, 35.631382, 43.732201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.320482, 35.954029, 43.566063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596471, -0.099157, -0.796486,
		-0.683646, -0.582694, -0.439426,
		-0.420536, 0.806620, -0.415348,
		29.194321, 36.196014, 43.441460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.371473, 35.452576, 43.015400>,  <29.488697, 35.631382, 43.732201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.371473, 35.452576, 43.015400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.314262, 35.847878, 42.993855>,  <29.279936, 36.085056, 42.980927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.314262, 35.847878, 42.993855>,  <29.371473, 35.452576, 43.015400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.314262, 35.847878, 42.993855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529704, 0.030464, -0.847635,
		-0.836037, -0.149766, -0.527838,
		-0.143027, 0.988252, -0.053862,
		29.271355, 36.144352, 42.977695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.993793, 35.700638, 42.319611>,  <29.371473, 35.452576, 43.015400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.993793, 35.700638, 42.319611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.199217, 36.011425, 42.465260>,  <29.322470, 36.197895, 42.552647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.199217, 36.011425, 42.465260>,  <28.993793, 35.700638, 42.319611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.199217, 36.011425, 42.465260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368497, 0.183520, -0.911334,
		-0.774899, 0.602199, -0.192062,
		0.513557, 0.776966, 0.364118,
		29.353285, 36.244514, 42.574493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.825014, 36.255558, 41.888474>,  <28.993793, 35.700638, 42.319611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.825014, 36.255558, 41.888474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.187975, 36.309669, 42.047630>,  <29.405752, 36.342136, 42.143124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.187975, 36.309669, 42.047630>,  <28.825014, 36.255558, 41.888474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.187975, 36.309669, 42.047630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365765, 0.212044, -0.906230,
		-0.206963, 0.967852, 0.142929,
		0.907404, 0.135278, 0.397892,
		29.460196, 36.350254, 42.166996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.108456, 36.800529, 41.484718>,  <28.825014, 36.255558, 41.888474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.108456, 36.800529, 41.484718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.431013, 36.641441, 41.659786>,  <29.624548, 36.545990, 41.764828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.431013, 36.641441, 41.659786>,  <29.108456, 36.800529, 41.484718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.431013, 36.641441, 41.659786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574497, 0.351258, -0.739304,
		0.140301, 0.847607, 0.511739,
		0.806392, -0.397718, 0.437666,
		29.672932, 36.522125, 41.791084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.654619, 37.222576, 41.208084>,  <29.108456, 36.800529, 41.484718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.654619, 37.222576, 41.208084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.857208, 36.900257, 41.330833>,  <29.978762, 36.706867, 41.404484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.857208, 36.900257, 41.330833>,  <29.654619, 37.222576, 41.208084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.857208, 36.900257, 41.330833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692816, 0.168429, -0.701169,
		0.513314, 0.567733, 0.643575,
		0.506474, -0.805798, 0.306877,
		30.009150, 36.658516, 41.422897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.332575, 37.374584, 41.089203>,  <29.654619, 37.222576, 41.208084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.332575, 37.374584, 41.089203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.343014, 36.975632, 41.116169>,  <30.349277, 36.736259, 41.132351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.343014, 36.975632, 41.116169>,  <30.332575, 37.374584, 41.089203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.343014, 36.975632, 41.116169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771161, -0.022829, -0.636231,
		0.636105, 0.068593, 0.768547,
		0.026095, -0.997384, 0.067418,
		30.350842, 36.676418, 41.136395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.078926, 37.155960, 41.222919>,  <30.332575, 37.374584, 41.089203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.078926, 37.155960, 41.222919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.867216, 36.854485, 41.067066>,  <30.740191, 36.673599, 40.973553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.867216, 36.854485, 41.067066>,  <31.078926, 37.155960, 41.222919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.867216, 36.854485, 41.067066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745289, -0.193532, -0.638036,
		0.405477, -0.628086, 0.664150,
		-0.529276, -0.753693, -0.389633,
		30.708433, 36.628376, 40.950176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.627771, 36.698696, 41.045952>,  <31.078926, 37.155960, 41.222919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.627771, 36.698696, 41.045952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.308025, 36.559048, 40.850349>,  <31.116179, 36.475258, 40.732986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.308025, 36.559048, 40.850349>,  <31.627771, 36.698696, 41.045952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.308025, 36.559048, 40.850349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581191, -0.242813, -0.776698,
		0.152426, -0.905071, 0.397004,
		-0.799365, -0.349124, -0.489008,
		31.068216, 36.454311, 40.703648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.779900, 36.013924, 40.849739>,  <31.627771, 36.698696, 41.045952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.779900, 36.013924, 40.849739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.493940, 36.122719, 40.592075>,  <31.322365, 36.187996, 40.437477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.493940, 36.122719, 40.592075>,  <31.779900, 36.013924, 40.849739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.493940, 36.122719, 40.592075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627637, -0.156453, -0.762623,
		-0.308207, -0.949496, -0.058864,
		-0.714898, 0.271991, -0.644159,
		31.279470, 36.204315, 40.398827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.751646, 35.396309, 40.296848>,  <31.779900, 36.013924, 40.849739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.751646, 35.396309, 40.296848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.575912, 35.728004, 40.158657>,  <31.470472, 35.927021, 40.075741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.575912, 35.728004, 40.158657>,  <31.751646, 35.396309, 40.296848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.575912, 35.728004, 40.158657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549237, -0.056376, -0.833763,
		-0.710863, -0.556049, -0.430679,
		-0.439333, 0.829236, -0.345478,
		31.444113, 35.976776, 40.055016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.404383, 35.136536, 39.725590>,  <31.751646, 35.396309, 40.296848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.404383, 35.136536, 39.725590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.423080, 35.533134, 39.677006>,  <31.434299, 35.771091, 39.647854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.423080, 35.533134, 39.677006>,  <31.404383, 35.136536, 39.725590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.423080, 35.533134, 39.677006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243875, -0.129240, -0.961157,
		-0.968680, 0.015308, -0.247842,
		0.046744, 0.991495, -0.121459,
		31.437103, 35.830582, 39.640568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.151741, 35.196976, 39.105980>,  <31.404383, 35.136536, 39.725590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.151741, 35.196976, 39.105980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.342688, 35.543095, 39.167149>,  <31.457254, 35.750767, 39.203850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.342688, 35.543095, 39.167149>,  <31.151741, 35.196976, 39.105980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.342688, 35.543095, 39.167149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239477, 0.039327, -0.970105,
		-0.845443, 0.499714, -0.188445,
		0.477364, 0.865297, 0.152919,
		31.485897, 35.802685, 39.213024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.956367, 35.550720, 38.626774>,  <31.151741, 35.196976, 39.105980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.956367, 35.550720, 38.626774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.282343, 35.747292, 38.749653>,  <31.477928, 35.865234, 38.823380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.282343, 35.747292, 38.749653>,  <30.956367, 35.550720, 38.626774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.282343, 35.747292, 38.749653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290733, 0.111888, -0.950240,
		-0.501348, 0.863700, -0.051693,
		0.814939, 0.491429, 0.307200,
		31.526825, 35.894722, 38.841812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.025755, 36.146847, 38.145721>,  <30.956367, 35.550720, 38.626774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.025755, 36.146847, 38.145721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.371090, 36.052963, 38.324409>,  <31.578291, 35.996632, 38.431622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.371090, 36.052963, 38.324409>,  <31.025755, 36.146847, 38.145721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.371090, 36.052963, 38.324409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472898, 0.067374, -0.878538,
		0.176104, 0.969728, 0.169160,
		0.863339, -0.234709, 0.446718,
		31.630093, 35.982552, 38.458424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.532469, 36.675995, 37.786686>,  <31.025755, 36.146847, 38.145721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.532469, 36.675995, 37.786686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.753014, 36.393204, 37.963856>,  <31.885342, 36.223530, 38.070160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.753014, 36.393204, 37.963856>,  <31.532469, 36.675995, 37.786686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.753014, 36.393204, 37.963856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695439, 0.096222, -0.712113,
		0.460827, 0.700662, 0.544712,
		0.551364, -0.706975, 0.442926,
		31.918423, 36.181110, 38.096733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.185020, 36.975735, 37.838787>,  <31.532469, 36.675995, 37.786686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.185020, 36.975735, 37.838787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.241608, 36.580688, 37.865906>,  <32.275558, 36.343658, 37.882175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.241608, 36.580688, 37.865906>,  <32.185020, 36.975735, 37.838787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.241608, 36.580688, 37.865906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785903, 0.070402, -0.614329,
		0.601950, 0.140188, 0.786133,
		0.141466, -0.987619, 0.067795,
		32.284046, 36.284401, 37.886246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.817249, 36.910675, 37.750671>,  <32.185020, 36.975735, 37.838787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.817249, 36.910675, 37.750671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.708420, 36.527756, 37.711575>,  <32.643120, 36.298004, 37.688114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.708420, 36.527756, 37.711575>,  <32.817249, 36.910675, 37.750671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.708420, 36.527756, 37.711575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799053, -0.168160, -0.577266,
		0.536179, -0.235165, 0.810685,
		-0.272078, -0.957298, -0.097746,
		32.626797, 36.240566, 37.682251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.407703, 36.438236, 37.808514>,  <32.817249, 36.910675, 37.750671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.407703, 36.438236, 37.808514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.142693, 36.227173, 37.595860>,  <32.983685, 36.100536, 37.468266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.142693, 36.227173, 37.595860>,  <33.407703, 36.438236, 37.808514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.142693, 36.227173, 37.595860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717624, -0.243750, -0.652382,
		0.214645, -0.813736, 0.540149,
		-0.662528, -0.527654, -0.531636,
		32.943935, 36.068878, 37.436367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.723190, 35.788223, 37.645546>,  <33.407703, 36.438236, 37.808514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.723190, 35.788223, 37.645546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.416565, 35.755188, 37.390812>,  <33.232590, 35.735367, 37.237972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.416565, 35.755188, 37.390812>,  <33.723190, 35.788223, 37.645546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.416565, 35.755188, 37.390812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613729, -0.386083, -0.688678,
		-0.188998, -0.918760, 0.346640,
		-0.766561, -0.082585, -0.636838,
		33.186596, 35.730412, 37.199760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.548080, 35.054951, 37.431015>,  <33.723190, 35.788223, 37.645546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.548080, 35.054951, 37.431015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.466499, 35.312969, 37.136444>,  <33.417553, 35.467781, 36.959702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.466499, 35.312969, 37.136444>,  <33.548080, 35.054951, 37.431015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.466499, 35.312969, 37.136444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663820, -0.461771, -0.588311,
		-0.719547, -0.608840, -0.334015,
		-0.203949, 0.645043, -0.736427,
		33.405315, 35.506481, 36.915516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.556721, 34.628880, 36.868134>,  <33.548080, 35.054951, 37.431015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.556721, 34.628880, 36.868134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.585701, 34.985455, 36.689205>,  <33.603088, 35.199398, 36.581848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.585701, 34.985455, 36.689205>,  <33.556721, 34.628880, 36.868134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.585701, 34.985455, 36.689205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666179, -0.377033, -0.643468,
		-0.742264, -0.251372, -0.621173,
		0.072453, 0.891436, -0.447317,
		33.607437, 35.252884, 36.555012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.571041, 34.457066, 36.137867>,  <33.556721, 34.628880, 36.868134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.571041, 34.457066, 36.137867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.728607, 34.824627, 36.129353>,  <33.823147, 35.045162, 36.124245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.728607, 34.824627, 36.129353>,  <33.571041, 34.457066, 36.137867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.728607, 34.824627, 36.129353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651391, -0.295429, -0.698864,
		-0.648477, 0.261423, -0.714937,
		0.393912, 0.918901, -0.021291,
		33.846783, 35.100296, 36.122967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.710884, 34.503223, 35.448841>,  <33.571041, 34.457066, 36.137867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.710884, 34.503223, 35.448841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.910286, 34.817230, 35.595943>,  <34.029926, 35.005634, 35.684204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.910286, 34.817230, 35.595943>,  <33.710884, 34.503223, 35.448841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.910286, 34.817230, 35.595943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742456, -0.167641, -0.648579,
		-0.447493, 0.596363, -0.666409,
		0.498506, 0.785015, 0.367755,
		34.059837, 35.052734, 35.706268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.859573, 34.876171, 34.890823>,  <33.710884, 34.503223, 35.448841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.859573, 34.876171, 34.890823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.117275, 34.986862, 35.176022>,  <34.271896, 35.053276, 35.347141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.117275, 34.986862, 35.176022>,  <33.859573, 34.876171, 34.890823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.117275, 34.986862, 35.176022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762993, -0.168301, -0.624113,
		-0.052715, 0.946094, -0.319573,
		0.644254, 0.276732, 0.712991,
		34.310551, 35.069881, 35.389919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.190220, 35.473793, 34.738792>,  <33.859573, 34.876171, 34.890823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.190220, 35.473793, 34.738792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.456139, 35.323677, 34.997154>,  <34.615692, 35.233608, 35.152172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.456139, 35.323677, 34.997154>,  <34.190220, 35.473793, 34.738792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.456139, 35.323677, 34.997154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683581, -0.043073, -0.728603,
		0.301261, 0.925904, 0.227909,
		0.664800, -0.375294, 0.645907,
		34.655579, 35.211090, 35.190926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.802422, 35.879677, 34.539364>,  <34.190220, 35.473793, 34.738792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.802422, 35.879677, 34.539364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.928272, 35.564747, 34.751450>,  <35.003784, 35.375790, 34.878700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.928272, 35.564747, 34.751450>,  <34.802422, 35.879677, 34.539364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.928272, 35.564747, 34.751450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766203, -0.119070, -0.631471,
		0.560306, 0.604931, 0.565788,
		0.314628, -0.787325, 0.530215,
		35.022659, 35.328548, 34.910515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.436726, 35.922588, 34.805897>,  <34.802422, 35.879677, 34.539364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.436726, 35.922588, 34.805897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.421345, 35.525955, 34.855362>,  <35.412117, 35.287975, 34.885040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.421345, 35.525955, 34.855362>,  <35.436726, 35.922588, 34.805897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.421345, 35.525955, 34.855362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903276, -0.087412, -0.420062,
		0.427334, 0.095549, 0.899030,
		-0.038450, -0.991579, 0.123662,
		35.409809, 35.228481, 34.892460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.046860, 35.796795, 34.784859>,  <35.436726, 35.922588, 34.805897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.046860, 35.796795, 34.784859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.903370, 35.425995, 34.741055>,  <35.817276, 35.203514, 34.714771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.903370, 35.425995, 34.741055>,  <36.046860, 35.796795, 34.784859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.903370, 35.425995, 34.741055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763100, -0.223667, -0.606343,
		0.537584, -0.301079, 0.787626,
		-0.358723, -0.926998, -0.109513,
		35.795753, 35.147896, 34.708202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.615120, 35.258476, 34.917442>,  <36.046860, 35.796795, 34.784859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.615120, 35.258476, 34.917442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.342407, 35.089336, 34.678658>,  <36.178780, 34.987854, 34.535385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.342407, 35.089336, 34.678658>,  <36.615120, 35.258476, 34.917442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.342407, 35.089336, 34.678658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730996, -0.361989, -0.578454,
		0.028503, -0.830760, 0.555900,
		-0.681786, -0.422849, -0.596965,
		36.137871, 34.962482, 34.499569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.916016, 34.995773, 35.535709>,  <36.615120, 35.258476, 34.917442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.916016, 34.995773, 35.535709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.257660, 34.850861, 35.684967>,  <37.462646, 34.763912, 35.774521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.257660, 34.850861, 35.684967>,  <36.916016, 34.995773, 35.535709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.257660, 34.850861, 35.684967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444220, -0.135041, 0.885682,
		-0.270478, -0.922233, -0.276275,
		0.854114, -0.362285, 0.373149,
		37.513893, 34.742176, 35.796913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.850193, 34.320473, 35.822716>,  <36.916016, 34.995773, 35.535709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.850193, 34.320473, 35.822716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.130203, 34.505482, 36.040356>,  <37.298210, 34.616486, 36.170940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.130203, 34.505482, 36.040356>,  <36.850193, 34.320473, 35.822716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.130203, 34.505482, 36.040356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523286, -0.186227, 0.831559,
		0.485940, -0.866829, 0.111668,
		0.700024, 0.462522, 0.544095,
		37.340210, 34.644238, 36.203583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.034176, 33.903988, 36.277065>,  <36.850193, 34.320473, 35.822716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.034176, 33.903988, 36.277065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.152386, 34.256744, 36.424000>,  <37.223312, 34.468399, 36.512161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.152386, 34.256744, 36.424000>,  <37.034176, 33.903988, 36.277065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.152386, 34.256744, 36.424000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389515, -0.239868, 0.889236,
		0.872319, -0.405879, 0.272620,
		0.295529, 0.881887, 0.367337,
		37.241043, 34.521309, 36.534203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.298237, 33.692547, 36.932114>,  <37.034176, 33.903988, 36.277065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.298237, 33.692547, 36.932114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.252068, 34.088856, 36.960552>,  <37.224365, 34.326641, 36.977615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.252068, 34.088856, 36.960552>,  <37.298237, 33.692547, 36.932114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.252068, 34.088856, 36.960552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256706, -0.098900, 0.961416,
		0.959573, 0.092717, 0.265751,
		-0.115422, 0.990768, 0.071101,
		37.217442, 34.386086, 36.981884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.653313, 34.065136, 37.537487>,  <37.298237, 33.692547, 36.932114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.653313, 34.065136, 37.537487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.355045, 34.315075, 37.444927>,  <37.176086, 34.465038, 37.389389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.355045, 34.315075, 37.444927>,  <37.653313, 34.065136, 37.537487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.355045, 34.315075, 37.444927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251695, 0.057421, 0.966102,
		0.616956, 0.778631, 0.114455,
		-0.745664, 0.624849, -0.231404,
		37.131348, 34.502529, 37.375507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.687057, 34.533382, 38.086147>,  <37.653313, 34.065136, 37.537487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.687057, 34.533382, 38.086147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.332760, 34.620159, 37.922001>,  <37.120182, 34.672226, 37.823513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.332760, 34.620159, 37.922001>,  <37.687057, 34.533382, 38.086147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.332760, 34.620159, 37.922001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356856, 0.247103, 0.900885,
		0.296845, 0.944391, -0.141451,
		-0.885741, 0.216946, -0.410363,
		37.067036, 34.685242, 37.798893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.336571, 35.117386, 38.435143>,  <37.687057, 34.533382, 38.086147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.336571, 35.117386, 38.435143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.026184, 34.935249, 38.260540>,  <36.839954, 34.825966, 38.155777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.026184, 34.935249, 38.260540>,  <37.336571, 35.117386, 38.435143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.026184, 34.935249, 38.260540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580079, 0.243309, 0.777373,
		-0.247766, 0.856424, -0.452934,
		-0.775964, -0.455344, -0.436510,
		36.793396, 34.798645, 38.129585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.821568, 35.634655, 38.412670>,  <37.336571, 35.117386, 38.435143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.821568, 35.634655, 38.412670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.647083, 35.274769, 38.406548>,  <36.542393, 35.058838, 38.402874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.647083, 35.274769, 38.406548>,  <36.821568, 35.634655, 38.412670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.647083, 35.274769, 38.406548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552874, 0.254555, 0.793431,
		-0.709967, 0.354562, -0.608468,
		-0.436208, -0.899716, -0.015303,
		36.516220, 35.004852, 38.401958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.256588, 35.826466, 38.703751>,  <36.821568, 35.634655, 38.412670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.256588, 35.826466, 38.703751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.243687, 35.426926, 38.717976>,  <36.235947, 35.187202, 38.726509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.243687, 35.426926, 38.717976>,  <36.256588, 35.826466, 38.703751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.243687, 35.426926, 38.717976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532062, 0.047278, 0.845385,
		-0.846091, 0.008346, -0.532973,
		-0.032253, -0.998847, 0.035561,
		36.234013, 35.127270, 38.728645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.539391, 35.610386, 38.836391>,  <36.256588, 35.826466, 38.703751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.539391, 35.610386, 38.836391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.751328, 35.286121, 38.936066>,  <35.878490, 35.091560, 38.995872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.751328, 35.286121, 38.936066>,  <35.539391, 35.610386, 38.836391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.751328, 35.286121, 38.936066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508801, -0.068766, 0.858133,
		-0.678521, -0.581460, -0.448901,
		0.529840, -0.810663, 0.249188,
		35.910278, 35.042923, 39.010822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.024158, 35.189407, 39.022480>,  <35.539391, 35.610386, 38.836391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.024158, 35.189407, 39.022480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.363785, 35.073013, 39.198849>,  <35.567562, 35.003178, 39.304672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.363785, 35.073013, 39.198849>,  <35.024158, 35.189407, 39.022480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.363785, 35.073013, 39.198849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460029, 0.003095, 0.887899,
		-0.259729, -0.956723, -0.131233,
		0.849067, -0.290984, 0.440924,
		35.618504, 34.985718, 39.331127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.765137, 34.632858, 39.403923>,  <35.024158, 35.189407, 39.022480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.765137, 34.632858, 39.403923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.110271, 34.740196, 39.575272>,  <35.317352, 34.804600, 39.678082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.110271, 34.740196, 39.575272>,  <34.765137, 34.632858, 39.403923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.110271, 34.740196, 39.575272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401826, -0.150014, 0.903345,
		0.306671, -0.951570, -0.021610,
		0.862838, 0.268346, 0.428371,
		35.369122, 34.820702, 39.703781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.961330, 34.053780, 39.963718>,  <34.765137, 34.632858, 39.403923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.961330, 34.053780, 39.963718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.134228, 34.408695, 40.028069>,  <35.237968, 34.621643, 40.066681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.134228, 34.408695, 40.028069>,  <34.961330, 34.053780, 39.963718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.134228, 34.408695, 40.028069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416984, 0.038483, 0.908099,
		0.799555, -0.459605, 0.386619,
		0.432245, 0.887289, 0.160879,
		35.263901, 34.674881, 40.076332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.817654, 34.046055, 40.625492>,  <34.961330, 34.053780, 39.963718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.817654, 34.046055, 40.625492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.973469, 34.411800, 40.581303>,  <35.066959, 34.631248, 40.554790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.973469, 34.411800, 40.581303>,  <34.817654, 34.046055, 40.625492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.973469, 34.411800, 40.581303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376055, 0.267395, 0.887177,
		0.840740, -0.304044, 0.448010,
		0.389536, 0.914362, -0.110473,
		35.090328, 34.686108, 40.548161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.094700, 34.341053, 41.322407>,  <34.817654, 34.046055, 40.625492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.094700, 34.341053, 41.322407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.008743, 34.657116, 41.092808>,  <34.957169, 34.846752, 40.955048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.008743, 34.657116, 41.092808>,  <35.094700, 34.341053, 41.322407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.008743, 34.657116, 41.092808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546167, 0.390011, 0.741346,
		0.809645, 0.472806, 0.347748,
		-0.214887, 0.790155, -0.574002,
		34.944279, 34.894161, 40.920609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.225124, 34.999329, 41.695545>,  <35.094700, 34.341053, 41.322407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.225124, 34.999329, 41.695545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.947395, 35.085022, 41.420731>,  <34.780758, 35.136440, 41.255840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.947395, 35.085022, 41.420731>,  <35.225124, 34.999329, 41.695545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.947395, 35.085022, 41.420731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611429, 0.327910, 0.720159,
		0.379570, 0.920097, -0.096685,
		-0.694320, 0.214235, -0.687039,
		34.739098, 35.149292, 41.214619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.094193, 35.611095, 41.899082>,  <35.225124, 34.999329, 41.695545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.094193, 35.611095, 41.899082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.786514, 35.462521, 41.691093>,  <34.601906, 35.373375, 41.566299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.786514, 35.462521, 41.691093>,  <35.094193, 35.611095, 41.899082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.786514, 35.462521, 41.691093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625417, 0.270637, 0.731853,
		-0.131118, 0.888137, -0.440479,
		-0.769196, -0.371442, -0.519970,
		34.555756, 35.351089, 41.535103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.472050, 35.955498, 42.140968>,  <35.094193, 35.611095, 41.899082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.472050, 35.955498, 42.140968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.323746, 35.635662, 41.951992>,  <34.234764, 35.443760, 41.838604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.323746, 35.635662, 41.951992>,  <34.472050, 35.955498, 42.140968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.323746, 35.635662, 41.951992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830530, 0.057788, 0.553968,
		-0.415643, 0.597766, -0.685504,
		-0.370757, -0.799585, -0.472444,
		34.212517, 35.395786, 41.810261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.842285, 36.190693, 41.946461>,  <34.472050, 35.955498, 42.140968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.842285, 36.190693, 41.946461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.815006, 35.791668, 41.940491>,  <33.798641, 35.552254, 41.936909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.815006, 35.791668, 41.940491>,  <33.842285, 36.190693, 41.946461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.815006, 35.791668, 41.940491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837523, 0.049111, 0.544190,
		-0.542129, 0.049614, -0.838829,
		-0.068195, -0.997560, -0.014928,
		33.794548, 35.492401, 41.936012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.197269, 35.993065, 41.676815>,  <33.842285, 36.190693, 41.946461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.197269, 35.993065, 41.676815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.301743, 35.679893, 41.902668>,  <33.364426, 35.491993, 42.038181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.301743, 35.679893, 41.902668>,  <33.197269, 35.993065, 41.676815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.301743, 35.679893, 41.902668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820080, 0.128572, 0.557618,
		-0.509169, -0.608686, -0.608480,
		0.261181, -0.782924, 0.564636,
		33.380096, 35.445015, 42.072060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.608204, 35.595821, 41.750134>,  <33.197269, 35.993065, 41.676815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.608204, 35.595821, 41.750134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.857239, 35.485703, 42.043148>,  <33.006660, 35.419632, 42.218956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.857239, 35.485703, 42.043148>,  <32.608204, 35.595821, 41.750134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.857239, 35.485703, 42.043148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754655, 0.036509, 0.655105,
		-0.207091, -0.960666, -0.185022,
		0.622582, -0.275294, 0.732533,
		33.044014, 35.403114, 42.262909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.276794, 35.096313, 42.155369>,  <32.608204, 35.595821, 41.750134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.276794, 35.096313, 42.155369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.564323, 35.214130, 42.407257>,  <32.736839, 35.284821, 42.558388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.564323, 35.214130, 42.407257>,  <32.276794, 35.096313, 42.155369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.564323, 35.214130, 42.407257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677024, 0.090829, 0.730334,
		0.157920, -0.951311, 0.264704,
		0.718818, 0.294545, 0.629717,
		32.779968, 35.302494, 42.596172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.086994, 34.797718, 42.833855>,  <32.276794, 35.096313, 42.155369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.086994, 34.797718, 42.833855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.342789, 35.095913, 42.909012>,  <32.496265, 35.274830, 42.954105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.342789, 35.095913, 42.909012>,  <32.086994, 34.797718, 42.833855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.342789, 35.095913, 42.909012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647701, 0.390757, 0.654059,
		0.414170, -0.539964, 0.732736,
		0.639490, 0.745486, 0.187895,
		32.534634, 35.319561, 42.965378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.135525, 34.791134, 43.604595>,  <32.086994, 34.797718, 42.833855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.135525, 34.791134, 43.604595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.258789, 35.145348, 43.465530>,  <32.332748, 35.357876, 43.382092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.258789, 35.145348, 43.465530>,  <32.135525, 34.791134, 43.604595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.258789, 35.145348, 43.465530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643992, 0.463155, 0.608902,
		0.700224, 0.036251, 0.713003,
		0.308157, 0.885536, -0.347658,
		32.351234, 35.411007, 43.361233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.251865, 35.158939, 44.114540>,  <32.135525, 34.791134, 43.604595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.251865, 35.158939, 44.114540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.202999, 35.442383, 43.836563>,  <32.173679, 35.612450, 43.669777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.202999, 35.442383, 43.836563>,  <32.251865, 35.158939, 44.114540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.202999, 35.442383, 43.836563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495345, 0.563219, 0.661376,
		0.860063, 0.425037, 0.282198,
		-0.122170, 0.708610, -0.694943,
		32.166348, 35.654964, 43.628078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.408916, 35.710075, 44.474815>,  <32.251865, 35.158939, 44.114540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.408916, 35.710075, 44.474815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.196915, 35.834610, 44.159306>,  <32.069714, 35.909328, 43.970001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.196915, 35.834610, 44.159306>,  <32.408916, 35.710075, 44.474815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.196915, 35.834610, 44.159306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630848, 0.476830, 0.612098,
		0.566677, 0.822013, -0.056320,
		-0.530007, 0.311332, -0.788774,
		32.037914, 35.928009, 43.922672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.395111, 36.423115, 44.479603>,  <32.408916, 35.710075, 44.474815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.395111, 36.423115, 44.479603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.088978, 36.280109, 44.265522>,  <31.905296, 36.194305, 44.137074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.088978, 36.280109, 44.265522>,  <32.395111, 36.423115, 44.479603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.088978, 36.280109, 44.265522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633451, 0.565705, 0.527937,
		0.114021, 0.743075, -0.659423,
		-0.765336, -0.357516, -0.535204,
		31.859377, 36.172855, 44.104961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.035324, 37.064507, 44.341785>,  <32.395111, 36.423115, 44.479603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.035324, 37.064507, 44.341785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.785118, 36.760357, 44.271870>,  <31.634993, 36.577866, 44.229919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.785118, 36.760357, 44.271870>,  <32.035324, 37.064507, 44.341785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.785118, 36.760357, 44.271870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697848, 0.445083, 0.561168,
		-0.348904, 0.472997, -0.809036,
		-0.625519, -0.760378, -0.174789,
		31.597462, 36.532242, 44.219433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.374449, 37.377174, 44.181988>,  <32.035324, 37.064507, 44.341785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.374449, 37.377174, 44.181988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.258968, 37.004734, 44.271164>,  <31.189680, 36.781269, 44.324669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.258968, 37.004734, 44.271164>,  <31.374449, 37.377174, 44.181988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.258968, 37.004734, 44.271164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774208, 0.364026, 0.517771,
		-0.563254, -0.023121, -0.825961,
		-0.288700, -0.931101, 0.222939,
		31.172358, 36.725403, 44.338047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.637899, 37.358849, 44.088192>,  <31.374449, 37.377174, 44.181988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.637899, 37.358849, 44.088192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.739046, 37.056229, 44.329418>,  <30.799734, 36.874657, 44.474152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.739046, 37.056229, 44.329418>,  <30.637899, 37.358849, 44.088192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.739046, 37.056229, 44.329418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613544, 0.356561, 0.704576,
		-0.748079, -0.548170, -0.374016,
		0.252868, -0.756554, 0.603062,
		30.814907, 36.829262, 44.510338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.048737, 37.104839, 44.349548>,  <30.637899, 37.358849, 44.088192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.048737, 37.104839, 44.349548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.330549, 37.018513, 44.619972>,  <30.499638, 36.966717, 44.782227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.330549, 37.018513, 44.619972>,  <30.048737, 37.104839, 44.349548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.330549, 37.018513, 44.619972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595802, 0.337681, 0.728691,
		-0.385558, -0.916185, 0.109322,
		0.704532, -0.215818, 0.676060,
		30.541908, 36.953766, 44.822792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.637365, 36.950527, 44.938931>,  <30.048737, 37.104839, 44.349548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.637365, 36.950527, 44.938931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.993065, 36.940739, 45.121639>,  <30.206484, 36.934864, 45.231262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.993065, 36.940739, 45.121639>,  <29.637365, 36.950527, 44.938931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.993065, 36.940739, 45.121639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445692, 0.178356, 0.877239,
		-0.102935, -0.983661, 0.147696,
		0.889249, -0.024472, 0.456769,
		30.259840, 36.933399, 45.258671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.551350, 36.610897, 45.673374>,  <29.637365, 36.950527, 44.938931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.551350, 36.610897, 45.673374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.879982, 36.837708, 45.649734>,  <30.077162, 36.973793, 45.635551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.879982, 36.837708, 45.649734>,  <29.551350, 36.610897, 45.673374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.879982, 36.837708, 45.649734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197490, 0.380320, 0.903524,
		0.534794, -0.730646, 0.424444,
		0.821580, 0.567022, -0.059097,
		30.126455, 37.007812, 45.632004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.733408, 36.491383, 46.300274>,  <29.551350, 36.610897, 45.673374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.733408, 36.491383, 46.300274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.883255, 36.824741, 46.137737>,  <29.973164, 37.024757, 46.040215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.883255, 36.824741, 46.137737>,  <29.733408, 36.491383, 46.300274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.883255, 36.824741, 46.137737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233558, 0.508941, 0.828511,
		0.897281, -0.215470, 0.385304,
		0.374616, 0.833398, -0.406338,
		29.995640, 37.074760, 46.015835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.127092, 36.774437, 46.854519>,  <29.733408, 36.491383, 46.300274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.127092, 36.774437, 46.854519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.041142, 37.065910, 46.594410>,  <29.989571, 37.240795, 46.438343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.041142, 37.065910, 46.594410>,  <30.127092, 36.774437, 46.854519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.041142, 37.065910, 46.594410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194510, 0.620557, 0.759654,
		0.957076, 0.289715, 0.008393,
		-0.214875, 0.728679, -0.650273,
		29.976679, 37.284515, 46.399326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.305307, 37.305252, 47.228123>,  <30.127092, 36.774437, 46.854519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.305307, 37.305252, 47.228123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.096884, 37.476997, 46.933060>,  <29.971828, 37.580044, 46.756020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.096884, 37.476997, 46.933060>,  <30.305307, 37.305252, 47.228123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.096884, 37.476997, 46.933060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430183, 0.614347, 0.661454,
		0.737183, 0.661987, -0.135407,
		-0.521061, 0.429362, -0.737661,
		29.940565, 37.605804, 46.711761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.304291, 37.934536, 47.380112>,  <30.305307, 37.305252, 47.228123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.304291, 37.934536, 47.380112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.987585, 37.922112, 47.136097>,  <29.797562, 37.914658, 46.989689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.987585, 37.922112, 47.136097>,  <30.304291, 37.934536, 47.380112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.987585, 37.922112, 47.136097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514306, 0.572700, 0.638360,
		0.329540, 0.819177, -0.469418,
		-0.791765, -0.031059, -0.610035,
		29.750055, 37.912792, 46.953087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.041122, 38.654922, 47.397629>,  <30.304291, 37.934536, 47.380112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.041122, 38.654922, 47.397629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.754538, 38.386951, 47.319778>,  <29.582586, 38.226170, 47.273067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.754538, 38.386951, 47.319778>,  <30.041122, 38.654922, 47.397629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.754538, 38.386951, 47.319778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640219, 0.520576, 0.564907,
		-0.277133, 0.529335, -0.801874,
		-0.716462, -0.669929, -0.194621,
		29.539598, 38.185974, 47.261391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.077749, 39.375710, 47.215302>,  <30.041122, 38.654922, 47.397629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.077749, 39.375710, 47.215302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.972116, 39.725857, 47.053314>,  <29.908737, 39.935944, 46.956123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.972116, 39.725857, 47.053314>,  <30.077749, 39.375710, 47.215302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.972116, 39.725857, 47.053314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751960, -0.076080, -0.654804,
		-0.604002, -0.477440, -0.638148,
		-0.264080, 0.875364, -0.404968,
		29.892893, 39.988464, 46.931824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.025928, 39.317924, 46.478054>,  <30.077749, 39.375710, 47.215302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.025928, 39.317924, 46.478054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.089720, 39.707039, 46.545292>,  <30.127995, 39.940506, 46.585636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.089720, 39.707039, 46.545292>,  <30.025928, 39.317924, 46.478054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.089720, 39.707039, 46.545292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781874, -0.020509, -0.623099,
		-0.602694, 0.230800, -0.763866,
		0.159477, 0.972785, 0.168096,
		30.137564, 39.998875, 46.595722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.999544, 39.692417, 45.833649>,  <30.025928, 39.317924, 46.478054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.999544, 39.692417, 45.833649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.233784, 39.900238, 46.082535>,  <30.374327, 40.024929, 46.231865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.233784, 39.900238, 46.082535>,  <29.999544, 39.692417, 45.833649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.233784, 39.900238, 46.082535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664596, 0.131747, -0.735497,
		-0.464100, 0.844223, -0.268139,
		0.585597, 0.519548, 0.622211,
		30.409462, 40.056103, 46.269199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.224981, 40.195946, 45.395168>,  <29.999544, 39.692417, 45.833649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.224981, 40.195946, 45.395168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.475012, 40.161098, 45.705444>,  <30.625031, 40.140190, 45.891609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.475012, 40.161098, 45.705444>,  <30.224981, 40.195946, 45.395168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.475012, 40.161098, 45.705444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778976, 0.006252, -0.627022,
		0.049774, 0.996178, 0.071770,
		0.625075, -0.087116, 0.775688,
		30.662535, 40.134964, 45.938152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.770420, 40.561581, 45.159111>,  <30.224981, 40.195946, 45.395168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.770420, 40.561581, 45.159111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.907068, 40.334599, 45.458790>,  <30.989058, 40.198410, 45.638596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.907068, 40.334599, 45.458790>,  <30.770420, 40.561581, 45.159111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.907068, 40.334599, 45.458790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773081, -0.283649, -0.567353,
		0.534455, 0.773007, 0.341786,
		0.341621, -0.567453, 0.749195,
		31.009554, 40.164364, 45.683548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.525970, 40.565552, 45.049206>,  <30.770420, 40.561581, 45.159111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.525970, 40.565552, 45.049206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.479870, 40.249958, 45.290607>,  <31.452209, 40.060600, 45.435448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.479870, 40.249958, 45.290607>,  <31.525970, 40.565552, 45.049206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.479870, 40.249958, 45.290607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797504, -0.435703, -0.417313,
		0.592203, 0.433202, 0.679435,
		-0.115251, -0.788986, 0.603505,
		31.445295, 40.013264, 45.471661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.168613, 40.370724, 45.395260>,  <31.525970, 40.565552, 45.049206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.168613, 40.370724, 45.395260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.935680, 40.045586, 45.389950>,  <31.795921, 39.850502, 45.386765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.935680, 40.045586, 45.389950>,  <32.168613, 40.370724, 45.395260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.935680, 40.045586, 45.389950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630879, -0.441550, -0.637986,
		0.512721, -0.379895, 0.769933,
		-0.582332, -0.812843, -0.013276,
		31.760981, 39.801731, 45.385967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.578762, 39.842945, 45.453632>,  <32.168613, 40.370724, 45.395260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.578762, 39.842945, 45.453632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.262505, 39.661110, 45.289566>,  <32.072750, 39.552010, 45.191124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.262505, 39.661110, 45.289566>,  <32.578762, 39.842945, 45.453632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.262505, 39.661110, 45.289566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598548, -0.432768, -0.674130,
		0.128942, -0.778501, 0.614256,
		-0.790641, -0.454586, -0.410168,
		32.025311, 39.524734, 45.166515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.805389, 39.151730, 45.300400>,  <32.578762, 39.842945, 45.453632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.805389, 39.151730, 45.300400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.487362, 39.199383, 45.062515>,  <32.296547, 39.227974, 44.919785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.487362, 39.199383, 45.062515>,  <32.805389, 39.151730, 45.300400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.487362, 39.199383, 45.062515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446355, -0.548941, -0.706704,
		-0.410653, -0.827327, 0.383268,
		-0.795067, 0.119136, -0.594706,
		32.248840, 39.235123, 44.884102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.660870, 38.465534, 45.167068>,  <32.805389, 39.151730, 45.300400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.660870, 38.465534, 45.167068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.489803, 38.695999, 44.888462>,  <32.387161, 38.834278, 44.721298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.489803, 38.695999, 44.888462>,  <32.660870, 38.465534, 45.167068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.489803, 38.695999, 44.888462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533493, -0.461142, -0.709037,
		-0.729715, -0.674818, -0.110165,
		-0.427669, 0.576167, -0.696513,
		32.361504, 38.868851, 44.679508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.362118, 37.933376, 44.635048>,  <32.660870, 38.465534, 45.167068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.362118, 37.933376, 44.635048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.428661, 38.300983, 44.492092>,  <32.468590, 38.521549, 44.406319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.428661, 38.300983, 44.492092>,  <32.362118, 37.933376, 44.635048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.428661, 38.300983, 44.492092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556784, -0.386680, -0.735166,
		-0.813828, -0.076685, -0.576024,
		0.166361, 0.919020, -0.357388,
		32.478569, 38.576691, 44.384876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.326214, 37.813530, 43.955204>,  <32.362118, 37.933376, 44.635048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.326214, 37.813530, 43.955204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.507301, 38.170166, 43.950874>,  <32.615955, 38.384148, 43.948277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.507301, 38.170166, 43.950874>,  <32.326214, 37.813530, 43.955204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.507301, 38.170166, 43.950874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523232, -0.275472, -0.806439,
		-0.721993, 0.359427, -0.591219,
		0.452720, 0.891587, -0.010825,
		32.643116, 38.437641, 43.947628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.278175, 38.018356, 43.239311>,  <32.326214, 37.813530, 43.955204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.278175, 38.018356, 43.239311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.560070, 38.231560, 43.426605>,  <32.729206, 38.359482, 43.538982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.560070, 38.231560, 43.426605>,  <32.278175, 38.018356, 43.239311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.560070, 38.231560, 43.426605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661731, -0.255841, -0.704739,
		-0.255841, 0.806501, -0.533012,
		0.704739, 0.533012, 0.468232,
		32.771492, 38.391464, 43.567074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.519505, 38.633640, 42.832947>,  <32.278175, 38.018356, 43.239311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.519505, 38.633640, 42.832947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.802181, 38.508316, 43.086693>,  <32.971786, 38.433121, 43.238941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.802181, 38.508316, 43.086693>,  <32.519505, 38.633640, 42.832947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.802181, 38.508316, 43.086693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551320, -0.318091, -0.771275,
		0.443432, 0.894795, -0.052061,
		0.706693, -0.313306, 0.634369,
		33.014191, 38.414326, 43.277004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.075817, 38.663197, 42.406773>,  <32.519505, 38.633640, 42.832947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.075817, 38.663197, 42.406773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.180408, 38.438812, 42.720959>,  <33.243164, 38.304184, 42.909470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.180408, 38.438812, 42.720959>,  <33.075817, 38.663197, 42.406773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.180408, 38.438812, 42.720959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633450, -0.514277, -0.578152,
		0.728266, 0.648727, 0.220868,
		0.261476, -0.560957, 0.785466,
		33.258850, 38.270527, 42.956600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.812439, 38.794010, 42.470371>,  <33.075817, 38.663197, 42.406773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.812439, 38.794010, 42.470371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.742878, 38.461845, 42.682098>,  <33.701141, 38.262547, 42.809135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.742878, 38.461845, 42.682098>,  <33.812439, 38.794010, 42.470371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.742878, 38.461845, 42.682098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661997, -0.496514, -0.561457,
		0.729053, 0.252769, 0.636073,
		-0.173901, -0.830410, 0.529318,
		33.690708, 38.212723, 42.840893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.462849, 38.609173, 42.791080>,  <33.812439, 38.794010, 42.470371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.462849, 38.609173, 42.791080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.227238, 38.287567, 42.758553>,  <34.085873, 38.094604, 42.739037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.227238, 38.287567, 42.758553>,  <34.462849, 38.609173, 42.791080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.227238, 38.287567, 42.758553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723868, -0.480206, -0.495396,
		0.359257, -0.350662, 0.864853,
		-0.589024, -0.804014, -0.081316,
		34.050529, 38.046364, 42.734158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.889549, 38.023075, 42.998959>,  <34.462849, 38.609173, 42.791080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.889549, 38.023075, 42.998959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.591743, 37.841476, 42.803169>,  <34.413059, 37.732517, 42.685696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.591743, 37.841476, 42.803169>,  <34.889549, 38.023075, 42.998959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.591743, 37.841476, 42.803169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667606, -0.508188, -0.544102,
		-0.001721, -0.731866, 0.681446,
		-0.744512, -0.454002, -0.489473,
		34.368389, 37.705276, 42.656326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.037914, 37.379810, 43.013535>,  <34.889549, 38.023075, 42.998959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.037914, 37.379810, 43.013535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.781933, 37.418732, 42.708641>,  <34.628345, 37.442085, 42.525707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.781933, 37.418732, 42.708641>,  <35.037914, 37.379810, 43.013535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.781933, 37.418732, 42.708641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683548, -0.381067, -0.622536,
		-0.351034, -0.919413, 0.177354,
		-0.639952, 0.097301, -0.762230,
		34.589947, 37.447922, 42.479973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.197021, 36.761494, 42.639236>,  <35.037914, 37.379810, 43.013535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.197021, 36.761494, 42.639236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.995605, 36.993423, 42.383034>,  <34.874756, 37.132580, 42.229313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.995605, 36.993423, 42.383034>,  <35.197021, 36.761494, 42.639236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.995605, 36.993423, 42.383034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611712, -0.284277, -0.738238,
		-0.610131, -0.763538, -0.211542,
		-0.503537, 0.579824, -0.640511,
		34.844543, 37.167370, 42.190880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.021587, 36.388172, 42.002274>,  <35.197021, 36.761494, 42.639236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.021587, 36.388172, 42.002274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.994125, 36.768242, 41.880646>,  <34.977646, 36.996284, 41.807667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.994125, 36.768242, 41.880646>,  <35.021587, 36.388172, 42.002274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.994125, 36.768242, 41.880646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578315, -0.210450, -0.788202,
		-0.812919, -0.229967, -0.535049,
		-0.068659, 0.950172, -0.304072,
		34.973526, 37.053295, 41.789425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.984428, 36.346138, 41.256283>,  <35.021587, 36.388172, 42.002274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.984428, 36.346138, 41.256283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.073158, 36.733810, 41.299137>,  <35.126396, 36.966415, 41.324848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.073158, 36.733810, 41.299137>,  <34.984428, 36.346138, 41.256283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.073158, 36.733810, 41.299137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562865, -0.037554, -0.825696,
		-0.796226, 0.243466, -0.553849,
		0.221828, 0.969182, 0.107137,
		35.139706, 37.024567, 41.331280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.890820, 36.783661, 40.559078>,  <34.984428, 36.346138, 41.256283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.890820, 36.783661, 40.559078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.160568, 36.971184, 40.787270>,  <35.322418, 37.083698, 40.924183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.160568, 36.971184, 40.787270>,  <34.890820, 36.783661, 40.559078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.160568, 36.971184, 40.787270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629766, 0.038194, -0.775845,
		-0.385509, 0.882475, -0.269481,
		0.674372, 0.468806, 0.570477,
		35.362881, 37.111824, 40.958412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.315964, 37.261555, 40.133167>,  <34.890820, 36.783661, 40.559078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.315964, 37.261555, 40.133167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.550644, 37.227737, 40.455318>,  <35.691452, 37.207447, 40.648609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.550644, 37.227737, 40.455318>,  <35.315964, 37.261555, 40.133167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.550644, 37.227737, 40.455318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795829, -0.123791, -0.592733,
		0.149809, 0.988701, -0.005348,
		0.586697, -0.084540, 0.805382,
		35.726654, 37.202374, 40.696934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.921505, 37.608353, 39.946072>,  <35.315964, 37.261555, 40.133167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.921505, 37.608353, 39.946072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.048649, 37.382214, 40.250530>,  <36.124935, 37.246529, 40.433205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.048649, 37.382214, 40.250530>,  <35.921505, 37.608353, 39.946072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.048649, 37.382214, 40.250530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892511, -0.092510, -0.441437,
		0.319981, 0.819646, 0.475177,
		0.317863, -0.565351, 0.761144,
		36.144009, 37.212608, 40.478874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.564716, 37.828606, 40.047741>,  <35.921505, 37.608353, 39.946072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.564716, 37.828606, 40.047741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.562408, 37.476185, 40.236935>,  <36.561024, 37.264732, 40.350449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.562408, 37.476185, 40.236935>,  <36.564716, 37.828606, 40.047741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.562408, 37.476185, 40.236935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891752, -0.218563, -0.396244,
		0.452489, 0.419495, 0.786942,
		-0.005774, -0.881053, 0.472983,
		36.560677, 37.211868, 40.378830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.221790, 37.754337, 40.478840>,  <36.564716, 37.828606, 40.047741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.221790, 37.754337, 40.478840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.070244, 37.386528, 40.437019>,  <36.979317, 37.165840, 40.411926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.070244, 37.386528, 40.437019>,  <37.221790, 37.754337, 40.478840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.070244, 37.386528, 40.437019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890881, -0.331785, -0.310241,
		0.250585, -0.210685, 0.944891,
		-0.378864, -0.919527, -0.104555,
		36.956585, 37.110668, 40.405651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.761738, 37.279537, 40.601631>,  <37.221790, 37.754337, 40.478840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.761738, 37.279537, 40.601631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.513546, 37.018570, 40.427570>,  <37.364632, 36.861992, 40.323135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.513546, 37.018570, 40.427570>,  <37.761738, 37.279537, 40.601631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.513546, 37.018570, 40.427570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743756, -0.313629, -0.590308,
		0.248650, -0.689921, 0.679840,
		-0.620484, -0.652415, -0.435149,
		37.327400, 36.822845, 40.297024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.017414, 36.644402, 40.805420>,  <37.761738, 37.279537, 40.601631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.017414, 36.644402, 40.805420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.805748, 36.636909, 40.466095>,  <37.678749, 36.632412, 40.262501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.805748, 36.636909, 40.466095>,  <38.017414, 36.644402, 40.805420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.805748, 36.636909, 40.466095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792085, -0.369417, -0.485935,
		-0.304277, -0.929075, 0.210322,
		-0.529166, -0.018734, -0.848311,
		37.646999, 36.631290, 40.211601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.140785, 35.956039, 40.462654>,  <38.017414, 36.644402, 40.805420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.140785, 35.956039, 40.462654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.025303, 36.169437, 40.144653>,  <37.956013, 36.297478, 39.953854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.025303, 36.169437, 40.144653>,  <38.140785, 35.956039, 40.462654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.025303, 36.169437, 40.144653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808769, -0.308492, -0.500725,
		-0.512387, -0.787537, -0.342411,
		-0.288708, 0.533496, -0.795003,
		37.938690, 36.329487, 39.906151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.340313, 35.544315, 39.894852>,  <38.140785, 35.956039, 40.462654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.340313, 35.544315, 39.894852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.265446, 35.906025, 39.741360>,  <38.220524, 36.123051, 39.649265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.265446, 35.906025, 39.741360>,  <38.340313, 35.544315, 39.894852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.265446, 35.906025, 39.741360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647095, -0.180401, -0.740758,
		-0.739077, -0.386957, -0.551389,
		-0.187171, 0.904279, -0.383728,
		38.209293, 36.177307, 39.626240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.194748, 35.465679, 39.126282>,  <38.340313, 35.544315, 39.894852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.194748, 35.465679, 39.126282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.280098, 35.854794, 39.162430>,  <38.331310, 36.088261, 39.184116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.280098, 35.854794, 39.162430>,  <38.194748, 35.465679, 39.126282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.280098, 35.854794, 39.162430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593696, -0.055652, -0.802763,
		-0.775884, 0.224942, -0.589411,
		0.213377, 0.972782, 0.090367,
		38.344112, 36.146629, 39.189541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.060734, 35.833317, 38.516556>,  <38.194748, 35.465679, 39.126282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.060734, 35.833317, 38.516556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.340462, 36.039165, 38.714996>,  <38.508297, 36.162674, 38.834061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.340462, 36.039165, 38.714996>,  <38.060734, 35.833317, 38.516556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.340462, 36.039165, 38.714996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395980, 0.298901, -0.868250,
		-0.595106, 0.803630, 0.005247,
		0.699320, 0.514623, 0.496099,
		38.550259, 36.193554, 38.863827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.039299, 36.501312, 38.129475>,  <38.060734, 35.833317, 38.516556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.039299, 36.501312, 38.129475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.381809, 36.492706, 38.335907>,  <38.587315, 36.487545, 38.459766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.381809, 36.492706, 38.335907>,  <38.039299, 36.501312, 38.129475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.381809, 36.492706, 38.335907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497570, 0.302537, -0.812955,
		-0.138645, 0.952895, 0.269757,
		0.856272, -0.021511, 0.516077,
		38.638691, 36.486252, 38.490730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.288521, 37.244843, 38.064098>,  <38.039299, 36.501312, 38.129475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.288521, 37.244843, 38.064098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.598339, 37.023563, 38.186771>,  <38.784229, 36.890797, 38.260376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.598339, 37.023563, 38.186771>,  <38.288521, 37.244843, 38.064098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.598339, 37.023563, 38.186771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594766, 0.471971, -0.650765,
		0.215254, 0.686452, 0.694585,
		0.774544, -0.553196, 0.306685,
		38.830704, 36.857605, 38.278778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.909615, 37.661404, 38.154499>,  <38.288521, 37.244843, 38.064098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.909615, 37.661404, 38.154499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.044048, 37.292057, 38.080273>,  <39.124710, 37.070450, 38.035736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.044048, 37.292057, 38.080273>,  <38.909615, 37.661404, 38.154499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.044048, 37.292057, 38.080273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743548, 0.381062, -0.549481,
		0.578084, 0.046700, 0.814640,
		0.336089, -0.923370, -0.185562,
		39.144875, 37.015045, 38.024605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.585796, 37.662807, 38.311047>,  <38.909615, 37.661404, 38.154499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.585796, 37.662807, 38.311047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.518967, 37.361313, 38.056816>,  <39.478870, 37.180416, 37.904278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.518967, 37.361313, 38.056816>,  <39.585796, 37.662807, 38.311047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.518967, 37.361313, 38.056816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690425, 0.370756, -0.621172,
		0.703847, -0.542600, 0.458459,
		-0.167072, -0.753741, -0.635580,
		39.468845, 37.135189, 37.866142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.234844, 37.506790, 38.137817>,  <39.585796, 37.662807, 38.311047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.234844, 37.506790, 38.137817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.009106, 37.336418, 37.854950>,  <39.873661, 37.234196, 37.685230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.009106, 37.336418, 37.854950>,  <40.234844, 37.506790, 38.137817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.009106, 37.336418, 37.854950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735723, 0.129067, -0.664871,
		0.374462, -0.895502, 0.240530,
		-0.564348, -0.425933, -0.707172,
		39.839802, 37.208637, 37.642799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.747375, 37.310863, 37.632599>,  <40.234844, 37.506790, 38.137817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.747375, 37.310863, 37.632599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.419426, 37.297977, 37.403942>,  <40.222656, 37.290245, 37.266747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.419426, 37.297977, 37.403942>,  <40.747375, 37.310863, 37.632599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.419426, 37.297977, 37.403942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530019, 0.334917, -0.779044,
		0.216548, -0.941697, -0.257515,
		-0.819870, -0.032213, -0.571643,
		40.173466, 37.288315, 37.232449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.878761, 36.889839, 37.077545>,  <40.747375, 37.310863, 37.632599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.878761, 36.889839, 37.077545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.586639, 37.142208, 36.972782>,  <40.411366, 37.293629, 36.909924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.586639, 37.142208, 36.972782>,  <40.878761, 36.889839, 37.077545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.586639, 37.142208, 36.972782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442002, 0.144092, -0.885365,
		-0.520858, -0.762348, -0.384100,
		-0.730302, 0.630922, -0.261908,
		40.367550, 37.331486, 36.894211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.647823, 36.651993, 36.455265>,  <40.878761, 36.889839, 37.077545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.647823, 36.651993, 36.455265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.504662, 37.024227, 36.486012>,  <40.418766, 37.247570, 36.504459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.504662, 37.024227, 36.486012>,  <40.647823, 36.651993, 36.455265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.504662, 37.024227, 36.486012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360647, 0.213694, -0.907892,
		-0.861300, -0.297218, -0.412097,
		-0.357905, 0.930589, 0.076863,
		40.397289, 37.303406, 36.509071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.096268, 36.694733, 36.030930>,  <40.647823, 36.651993, 36.455265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.096268, 36.694733, 36.030930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.332203, 37.012043, 36.091339>,  <40.473763, 37.202431, 36.127586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.332203, 37.012043, 36.091339>,  <40.096268, 36.694733, 36.030930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.332203, 37.012043, 36.091339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381384, -0.108807, -0.917991,
		-0.711788, 0.599061, -0.366721,
		0.589834, 0.793276, 0.151025,
		40.509151, 37.250027, 36.136646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.039352, 37.209293, 35.527905>,  <40.096268, 36.694733, 36.030930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.039352, 37.209293, 35.527905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.412094, 37.245453, 35.668457>,  <40.635738, 37.267151, 35.752789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.412094, 37.245453, 35.668457>,  <40.039352, 37.209293, 35.527905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.412094, 37.245453, 35.668457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362269, -0.285394, -0.887306,
		0.020067, 0.954137, -0.298697,
		0.931858, 0.090402, 0.351381,
		40.691650, 37.272575, 35.773872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.415058, 37.601421, 34.966579>,  <40.039352, 37.209293, 35.527905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.415058, 37.601421, 34.966579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.653603, 37.397255, 35.214394>,  <40.796730, 37.274754, 35.363083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.653603, 37.397255, 35.214394>,  <40.415058, 37.601421, 34.966579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.653603, 37.397255, 35.214394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471991, -0.401314, -0.784966,
		0.649287, 0.760542, 0.001582,
		0.596365, -0.510415, 0.619536,
		40.832512, 37.244129, 35.400253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.993092, 37.300285, 34.552078>,  <40.415058, 37.601421, 34.966579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.993092, 37.300285, 34.552078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.078648, 37.119900, 34.898693>,  <41.129982, 37.011669, 35.106663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.078648, 37.119900, 34.898693>,  <40.993092, 37.300285, 34.552078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.078648, 37.119900, 34.898693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691331, -0.556830, -0.460436,
		0.690153, 0.697544, 0.192667,
		0.213891, -0.450968, 0.866532,
		41.142815, 36.984608, 35.158653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.787563, 37.263569, 34.733265>,  <40.993092, 37.300285, 34.552078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.787563, 37.263569, 34.733265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.614677, 36.962223, 34.931507>,  <41.510944, 36.781414, 35.050453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.614677, 36.962223, 34.931507>,  <41.787563, 37.263569, 34.733265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.614677, 36.962223, 34.931507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659258, -0.638967, -0.396358,
		0.615280, 0.155421, 0.772835,
		-0.432214, -0.753369, 0.495607,
		41.485012, 36.736214, 35.080189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.388504, 37.480618, 35.196705>,  <41.787563, 37.263569, 34.733265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.388504, 37.480618, 35.196705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.722267, 37.397877, 34.992359>,  <42.922523, 37.348232, 34.869751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.722267, 37.397877, 34.992359>,  <42.388504, 37.480618, 35.196705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.722267, 37.397877, 34.992359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435614, 0.320326, -0.841209,
		0.337650, 0.924447, 0.177173,
		0.834406, -0.206855, -0.510860,
		42.972588, 37.335819, 34.839100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.706020, 38.133980, 34.915501>,  <42.388504, 37.480618, 35.196705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.706020, 38.133980, 34.915501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.768681, 37.786503, 34.727531>,  <42.806274, 37.578014, 34.614750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.768681, 37.786503, 34.727531>,  <42.706020, 38.133980, 34.915501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.768681, 37.786503, 34.727531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294233, 0.413147, -0.861822,
		0.942809, 0.273268, -0.190882,
		0.156646, -0.868697, -0.469923,
		42.815674, 37.525894, 34.586555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.915401, 38.353630, 34.294697>,  <42.706020, 38.133980, 34.915501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.915401, 38.353630, 34.294697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.763725, 37.987549, 34.240124>,  <42.672718, 37.767899, 34.207382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.763725, 37.987549, 34.240124>,  <42.915401, 38.353630, 34.294697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.763725, 37.987549, 34.240124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360865, 0.282031, -0.888952,
		0.852050, -0.287850, -0.437209,
		-0.379192, -0.915205, -0.136430,
		42.649967, 37.712986, 34.199196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.162453, 38.124283, 33.646248>,  <42.915401, 38.353630, 34.294697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.162453, 38.124283, 33.646248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.846962, 37.891605, 33.725788>,  <42.657665, 37.751999, 33.773510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.846962, 37.891605, 33.725788>,  <43.162453, 38.124283, 33.646248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.846962, 37.891605, 33.725788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434834, 0.299266, -0.849329,
		0.434542, -0.756354, -0.488980,
		-0.788729, -0.581694, 0.198845,
		42.610344, 37.717098, 33.785442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.106060, 37.637959, 33.078678>,  <43.162453, 38.124283, 33.646248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.106060, 37.637959, 33.078678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.750027, 37.633099, 33.260933>,  <42.536407, 37.630180, 33.370285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.750027, 37.633099, 33.260933>,  <43.106060, 37.637959, 33.078678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.750027, 37.633099, 33.260933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455741, 0.007432, -0.890081,
		0.007432, -0.999899, -0.012154,
		0.890081, 0.012154, -0.455640,
		42.483002, 37.629452, 33.397625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.658566, 37.128391, 32.775024>,  <43.106060, 37.637959, 33.078678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.658566, 37.128391, 32.775024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.403286, 37.370304, 32.965572>,  <42.250118, 37.515453, 33.079903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.403286, 37.370304, 32.965572>,  <42.658566, 37.128391, 32.775024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.403286, 37.370304, 32.965572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553542, 0.069572, -0.829910,
		-0.535061, -0.793343, 0.290374,
		-0.638201, 0.604786, 0.476374,
		42.211826, 37.551739, 33.108486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.035213, 36.926331, 32.398125>,  <42.658566, 37.128391, 32.775024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.035213, 36.926331, 32.398125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.964478, 37.291561, 32.545101>,  <41.922035, 37.510700, 32.633289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.964478, 37.291561, 32.545101>,  <42.035213, 36.926331, 32.398125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.964478, 37.291561, 32.545101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359006, 0.287768, -0.887865,
		-0.916430, -0.288921, 0.276914,
		-0.176836, 0.913080, 0.367444,
		41.911427, 37.565483, 32.655334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.402252, 37.135483, 32.203743>,  <42.035213, 36.926331, 32.398125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.402252, 37.135483, 32.203743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.573486, 37.483269, 32.302349>,  <41.676228, 37.691940, 32.361511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.573486, 37.483269, 32.302349>,  <41.402252, 37.135483, 32.203743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.573486, 37.483269, 32.302349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273716, 0.384698, -0.881525,
		-0.861293, 0.309889, 0.402670,
		0.428081, 0.869469, 0.246516,
		41.701912, 37.744110, 32.376305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.858646, 37.649620, 32.212719>,  <41.402252, 37.135483, 32.203743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.858646, 37.649620, 32.212719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.216969, 37.810928, 32.137978>,  <41.431961, 37.907711, 32.093132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.216969, 37.810928, 32.137978>,  <40.858646, 37.649620, 32.212719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.216969, 37.810928, 32.137978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320353, 0.294427, -0.900381,
		-0.308081, 0.866422, 0.392936,
		0.895801, 0.403269, -0.186854,
		41.485710, 37.931908, 32.081921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.714622, 38.352299, 32.053802>,  <40.858646, 37.649620, 32.212719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.714622, 38.352299, 32.053802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.087402, 38.299042, 31.918898>,  <41.311069, 38.267086, 31.837955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.087402, 38.299042, 31.918898>,  <40.714622, 38.352299, 32.053802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.087402, 38.299042, 31.918898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219104, 0.534326, -0.816388,
		0.288901, 0.834727, 0.468793,
		0.931949, -0.133141, -0.337259,
		41.366985, 38.259098, 31.817720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.969528, 39.019768, 31.831755>,  <40.714622, 38.352299, 32.053802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.969528, 39.019768, 31.831755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.198166, 38.765186, 31.624599>,  <41.335350, 38.612438, 31.500307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.198166, 38.765186, 31.624599>,  <40.969528, 39.019768, 31.831755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.198166, 38.765186, 31.624599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081198, 0.584186, -0.807548,
		0.816508, 0.503643, 0.282240,
		0.571596, -0.636452, -0.517887,
		41.369644, 38.574249, 31.469233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.383770, 39.421452, 31.504211>,  <40.969528, 39.019768, 31.831755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.383770, 39.421452, 31.504211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.449295, 39.095135, 31.282351>,  <41.488609, 38.899345, 31.149233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.449295, 39.095135, 31.282351>,  <41.383770, 39.421452, 31.504211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.449295, 39.095135, 31.282351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059451, 0.569391, -0.819914,
		0.984699, 0.101337, 0.141773,
		0.163811, -0.815797, -0.554654,
		41.498440, 38.850395, 31.115953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.015106, 39.551910, 31.144186>,  <41.383770, 39.421452, 31.504211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.015106, 39.551910, 31.144186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.787834, 39.285538, 30.950815>,  <41.651470, 39.125713, 30.834793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.787834, 39.285538, 30.950815>,  <42.015106, 39.551910, 31.144186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.787834, 39.285538, 30.950815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014308, 0.579385, -0.814929,
		0.822778, -0.469945, -0.319668,
		-0.568182, -0.665932, -0.483429,
		41.617378, 39.085758, 30.805786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.146919, 39.688351, 30.402512>,  <42.015106, 39.551910, 31.144186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.146919, 39.688351, 30.402512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.850967, 39.428692, 30.331882>,  <41.673397, 39.272896, 30.289505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.850967, 39.428692, 30.331882>,  <42.146919, 39.688351, 30.402512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.850967, 39.428692, 30.331882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052577, 0.205870, -0.977166,
		0.670677, -0.732273, -0.118190,
		-0.739884, -0.649148, -0.176573,
		41.629002, 39.233948, 30.278910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.363705, 39.197495, 29.880835>,  <42.146919, 39.688351, 30.402512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.363705, 39.197495, 29.880835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.965115, 39.229668, 29.871254>,  <41.725960, 39.248974, 29.865505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.965115, 39.229668, 29.871254>,  <42.363705, 39.197495, 29.880835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.965115, 39.229668, 29.871254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027040, 0.037535, -0.998929,
		-0.079455, -0.996053, -0.039577,
		-0.996472, 0.080440, -0.023951,
		41.666172, 39.253799, 29.864069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.060417, 38.728519, 29.379736>,  <42.363705, 39.197495, 29.880835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.060417, 38.728519, 29.379736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.797466, 39.028133, 29.412733>,  <41.639694, 39.207901, 29.432531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.797466, 39.028133, 29.412733>,  <42.060417, 38.728519, 29.379736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.797466, 39.028133, 29.412733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146135, -0.019323, -0.989076,
		-0.739256, -0.662252, 0.122162,
		-0.657378, 0.749032, 0.082493,
		41.600254, 39.252842, 29.437481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.846737, 38.715157, 28.683071>,  <42.060417, 38.728519, 29.379736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.846737, 38.715157, 28.683071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.638885, 39.009720, 28.856363>,  <41.514175, 39.186459, 28.960339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.638885, 39.009720, 28.856363>,  <41.846737, 38.715157, 28.683071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.638885, 39.009720, 28.856363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271614, 0.338380, -0.900958,
		-0.810071, -0.585833, 0.024187,
		-0.519626, 0.736409, 0.433232,
		41.482998, 39.230644, 28.986334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.148708, 38.747528, 28.392595>,  <41.846737, 38.715157, 28.683071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.148708, 38.747528, 28.392595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.244461, 39.115929, 28.515532>,  <41.301914, 39.336967, 28.589294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.244461, 39.115929, 28.515532>,  <41.148708, 38.747528, 28.392595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.244461, 39.115929, 28.515532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169091, 0.351255, -0.920885,
		-0.956087, 0.168478, 0.239818,
		0.239386, 0.920997, 0.307342,
		41.316277, 39.392227, 28.607735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.582497, 39.150627, 28.176525>,  <41.148708, 38.747528, 28.392595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.582497, 39.150627, 28.176525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.887642, 39.396324, 28.257256>,  <41.070728, 39.543743, 28.305695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.887642, 39.396324, 28.257256>,  <40.582497, 39.150627, 28.176525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.887642, 39.396324, 28.257256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003304, 0.315856, -0.948801,
		-0.646546, 0.723143, 0.242986,
		0.762868, 0.614247, 0.201827,
		41.116501, 39.580597, 28.317804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.368782, 39.870499, 27.907173>,  <40.582497, 39.150627, 28.176525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.368782, 39.870499, 27.907173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.767464, 39.875607, 27.939194>,  <41.006672, 39.878674, 27.958406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.767464, 39.875607, 27.939194>,  <40.368782, 39.870499, 27.907173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.767464, 39.875607, 27.939194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068697, 0.391184, -0.917745,
		-0.043039, 0.920224, 0.389019,
		0.996709, 0.012774, 0.080053,
		41.066475, 39.879440, 27.963209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.552780, 40.479015, 27.743151>,  <40.368782, 39.870499, 27.907173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.552780, 40.479015, 27.743151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.897778, 40.281750, 27.697737>,  <41.104778, 40.163391, 27.670488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.897778, 40.281750, 27.697737>,  <40.552780, 40.479015, 27.743151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.897778, 40.281750, 27.697737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216520, 0.562391, -0.798020,
		0.457406, 0.663706, 0.591839,
		0.862496, -0.493164, -0.113535,
		41.156525, 40.133801, 27.663675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.930050, 40.988483, 27.363411>,  <40.552780, 40.479015, 27.743151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.930050, 40.988483, 27.363411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.139046, 40.650810, 27.315462>,  <41.264442, 40.448208, 27.286694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.139046, 40.650810, 27.315462>,  <40.930050, 40.988483, 27.363411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.139046, 40.650810, 27.315462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320045, 0.324479, -0.890104,
		0.790303, 0.426704, 0.439711,
		0.522488, -0.844178, -0.119873,
		41.295792, 40.397556, 27.279501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.352959, 41.158401, 26.873686>,  <40.930050, 40.988483, 27.363411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.352959, 41.158401, 26.873686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.324337, 40.759552, 26.863758>,  <41.307163, 40.520241, 26.857801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.324337, 40.759552, 26.863758>,  <41.352959, 41.158401, 26.873686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.324337, 40.759552, 26.863758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064952, 0.029488, -0.997453,
		0.995320, -0.069760, -0.066876,
		-0.071554, -0.997128, -0.024819,
		41.302872, 40.460415, 26.856312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.806606, 40.916725, 26.316505>,  <41.352959, 41.158401, 26.873686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.806606, 40.916725, 26.316505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.478378, 40.708645, 26.411209>,  <41.281441, 40.583797, 26.468031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.478378, 40.708645, 26.411209>,  <41.806606, 40.916725, 26.316505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.478378, 40.708645, 26.411209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200527, -0.125876, -0.971568,
		0.535213, -0.844716, -0.001024,
		-0.820570, -0.520201, 0.236759,
		41.232208, 40.552586, 26.482237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.241283, 40.454357, 26.751644>,  <41.806606, 40.916725, 26.316505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.241283, 40.454357, 26.751644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.260502, 40.525684, 26.358524>,  <42.272034, 40.568481, 26.122652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.260502, 40.525684, 26.358524>,  <42.241283, 40.454357, 26.751644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.260502, 40.525684, 26.358524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545229, -0.829099, -0.123774,
		-0.836909, -0.529904, -0.137058,
		0.048046, 0.178316, -0.982800,
		42.274914, 40.579178, 26.063684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.893963, 39.923454, 26.354822>,  <42.241283, 40.454357, 26.751644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.893963, 39.923454, 26.354822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.232723, 40.051659, 26.185104>,  <42.435982, 40.128582, 26.083273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.232723, 40.051659, 26.185104>,  <41.893963, 39.923454, 26.354822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.232723, 40.051659, 26.185104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321724, -0.944165, -0.071045,
		-0.423375, -0.076338, -0.902733,
		0.846904, 0.320509, -0.424296,
		42.486794, 40.147812, 26.057816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.002350, 39.559238, 25.721704>,  <41.893963, 39.923454, 26.354822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.002350, 39.559238, 25.721704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.368008, 39.683720, 25.825617>,  <42.587402, 39.758408, 25.887964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.368008, 39.683720, 25.825617>,  <42.002350, 39.559238, 25.721704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.368008, 39.683720, 25.825617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325798, -0.945336, -0.013998,
		0.241226, 0.097433, -0.965566,
		0.914148, 0.311202, 0.259783,
		42.642254, 39.777081, 25.903551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.600067, 39.253178, 25.270357>,  <42.002350, 39.559238, 25.721704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.600067, 39.253178, 25.270357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.725777, 39.334484, 25.641283>,  <42.801205, 39.383266, 25.863838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.725777, 39.334484, 25.641283>,  <42.600067, 39.253178, 25.270357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.725777, 39.334484, 25.641283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197294, -0.969466, 0.145638,
		0.928604, 0.137183, -0.344782,
		0.314276, 0.203263, 0.927316,
		42.820061, 39.395462, 25.919477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.276905, 39.254589, 25.612318>,  <42.600067, 39.253178, 25.270357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.276905, 39.254589, 25.612318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.984455, 39.144695, 25.862112>,  <42.808987, 39.078758, 26.011988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.984455, 39.144695, 25.862112>,  <43.276905, 39.254589, 25.612318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.984455, 39.144695, 25.862112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419528, -0.902867, 0.093956,
		0.538013, 0.330682, 0.775365,
		-0.731121, -0.274737, 0.624485,
		42.765118, 39.062275, 26.049458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.370819, 39.098156, 26.421917>,  <43.276905, 39.254589, 25.612318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.370819, 39.098156, 26.421917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.099598, 38.852779, 26.259962>,  <42.936867, 38.705551, 26.162788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.099598, 38.852779, 26.259962>,  <43.370819, 39.098156, 26.421917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.099598, 38.852779, 26.259962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595357, -0.781420, 0.186903,
		-0.431043, -0.114323, 0.895060,
		-0.678051, -0.613443, -0.404889,
		42.896183, 38.668747, 26.138494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.976635, 39.331356, 26.490656>,  <43.370819, 39.098156, 26.421917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.976635, 39.331356, 26.490656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.928387, 39.582989, 26.797827>,  <43.899437, 39.733967, 26.982130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.928387, 39.582989, 26.797827>,  <43.976635, 39.331356, 26.490656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.928387, 39.582989, 26.797827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245087, -0.730756, 0.637125,
		0.961968, 0.265060, -0.066034,
		-0.120621, 0.629078, 0.767927,
		43.892200, 39.771713, 27.028204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.612099, 39.314682, 26.943844>,  <43.976635, 39.331356, 26.490656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.612099, 39.314682, 26.943844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.305431, 39.423508, 27.176464>,  <44.121433, 39.488804, 27.316036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.305431, 39.423508, 27.176464>,  <44.612099, 39.314682, 26.943844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.305431, 39.423508, 27.176464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353603, -0.577107, 0.736147,
		0.535900, 0.770017, 0.346244,
		-0.766666, 0.272068, 0.581552,
		44.075432, 39.505127, 27.350929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.918816, 39.546211, 27.687761>,  <44.612099, 39.314682, 26.943844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.918816, 39.546211, 27.687761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.542469, 39.412277, 27.667126>,  <44.316662, 39.331917, 27.654745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.542469, 39.412277, 27.667126>,  <44.918816, 39.546211, 27.687761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.542469, 39.412277, 27.667126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189583, -0.646567, 0.738925,
		-0.280774, 0.685447, 0.671810,
		-0.940864, -0.334835, -0.051589,
		44.260208, 39.311829, 27.651649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.638096, 39.615082, 28.325266>,  <44.918816, 39.546211, 27.687761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.638096, 39.615082, 28.325266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.405098, 39.340256, 28.151533>,  <44.265301, 39.175358, 28.047295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.405098, 39.340256, 28.151533>,  <44.638096, 39.615082, 28.325266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.405098, 39.340256, 28.151533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059555, -0.496828, 0.865803,
		-0.810652, 0.530190, 0.248479,
		-0.582492, -0.687067, -0.434330,
		44.230350, 39.134136, 28.021235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.085480, 39.583611, 28.798841>,  <44.638096, 39.615082, 28.325266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.085480, 39.583611, 28.798841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.087788, 39.252869, 28.573889>,  <44.089172, 39.054424, 28.438917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.087788, 39.252869, 28.573889>,  <44.085480, 39.583611, 28.798841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.087788, 39.252869, 28.573889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080563, -0.560948, 0.823921,
		-0.996733, 0.040551, -0.069852,
		0.005773, -0.826857, -0.562382,
		44.089520, 39.004810, 28.405174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.518326, 39.069454, 29.004120>,  <44.085480, 39.583611, 28.798841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.518326, 39.069454, 29.004120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.791924, 38.839828, 28.824078>,  <43.956081, 38.702053, 28.716051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.791924, 38.839828, 28.824078>,  <43.518326, 39.069454, 29.004120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.791924, 38.839828, 28.824078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064380, -0.662117, 0.746630,
		-0.726641, -0.481712, -0.489843,
		0.683994, -0.574069, -0.450108,
		43.997124, 38.667610, 28.689045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.221962, 38.396683, 29.013887>,  <43.518326, 39.069454, 29.004120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.221962, 38.396683, 29.013887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.610073, 38.330849, 28.942923>,  <43.842941, 38.291348, 28.900345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.610073, 38.330849, 28.942923>,  <43.221962, 38.396683, 29.013887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.610073, 38.330849, 28.942923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019402, -0.783654, 0.620895,
		-0.241219, -0.598998, -0.763554,
		0.970277, -0.164586, -0.177411,
		43.901157, 38.281471, 28.889700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.251045, 37.683380, 28.869703>,  <43.221962, 38.396683, 29.013887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.251045, 37.683380, 28.869703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.619091, 37.806927, 28.966032>,  <43.839920, 37.881054, 29.023829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.619091, 37.806927, 28.966032>,  <43.251045, 37.683380, 28.869703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.619091, 37.806927, 28.966032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007964, -0.600000, 0.799960,
		0.391571, -0.737972, -0.549608,
		0.920113, 0.308864, 0.240820,
		43.895126, 37.899586, 29.038279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.698135, 37.055958, 29.023302>,  <43.251045, 37.683380, 28.869703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.698135, 37.055958, 29.023302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.911079, 37.349751, 29.191652>,  <44.038845, 37.526024, 29.292664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.911079, 37.349751, 29.191652>,  <43.698135, 37.055958, 29.023302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.911079, 37.349751, 29.191652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209811, -0.596154, 0.774971,
		0.820107, -0.324256, -0.471468,
		0.532356, 0.734479, 0.420877,
		44.070786, 37.570095, 29.317915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.326698, 36.678734, 29.168926>,  <43.698135, 37.055958, 29.023302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.326698, 36.678734, 29.168926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.301140, 36.999939, 29.405935>,  <44.285805, 37.192661, 29.548141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.301140, 36.999939, 29.405935>,  <44.326698, 36.678734, 29.168926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.301140, 36.999939, 29.405935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158886, -0.577977, 0.800436,
		0.985227, 0.145290, -0.090656,
		-0.063898, 0.803015, 0.592523,
		44.281971, 37.240845, 29.583693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.919403, 36.626156, 29.701237>,  <44.326698, 36.678734, 29.168926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.919403, 36.626156, 29.701237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.654190, 36.868557, 29.877033>,  <44.495064, 37.013996, 29.982512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.654190, 36.868557, 29.877033>,  <44.919403, 36.626156, 29.701237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.654190, 36.868557, 29.877033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084415, -0.643870, 0.760464,
		0.743818, 0.467111, 0.478061,
		-0.663030, 0.606003, 0.439491,
		44.455280, 37.050358, 30.008881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.145481, 36.713097, 30.389465>,  <44.919403, 36.626156, 29.701237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.145481, 36.713097, 30.389465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.763142, 36.830566, 30.393654>,  <44.533737, 36.901047, 30.396168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.763142, 36.830566, 30.393654>,  <45.145481, 36.713097, 30.389465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.763142, 36.830566, 30.393654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113525, -0.401901, 0.908618,
		0.271046, 0.867313, 0.417496,
		-0.955848, 0.293673, 0.010472,
		44.476387, 36.918667, 30.396795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.096928, 37.191330, 30.931929>,  <45.145481, 36.713097, 30.389465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.096928, 37.191330, 30.931929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.726250, 37.049950, 30.880854>,  <44.503841, 36.965122, 30.850208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.726250, 37.049950, 30.880854>,  <45.096928, 37.191330, 30.931929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.726250, 37.049950, 30.880854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099334, -0.097305, 0.990285,
		-0.362446, 0.930377, 0.055062,
		-0.926696, -0.353455, -0.127686,
		44.448242, 36.943913, 30.842548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.707146, 37.606689, 31.410868>,  <45.096928, 37.191330, 30.931929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.707146, 37.606689, 31.410868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.510067, 37.268822, 31.327175>,  <44.391819, 37.066101, 31.276960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.510067, 37.268822, 31.327175>,  <44.707146, 37.606689, 31.410868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.510067, 37.268822, 31.327175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003668, -0.238422, 0.971155,
		-0.870193, 0.479253, 0.114372,
		-0.492698, -0.844673, -0.209231,
		44.362259, 37.015419, 31.264406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.221130, 37.524891, 31.963230>,  <44.707146, 37.606689, 31.410868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.221130, 37.524891, 31.963230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.242428, 37.158813, 31.803434>,  <44.255207, 36.939167, 31.707558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.242428, 37.158813, 31.803434>,  <44.221130, 37.524891, 31.963230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.242428, 37.158813, 31.803434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137912, -0.402960, 0.904767,
		-0.989012, 0.006921, -0.147671,
		0.053244, -0.915191, -0.399487,
		44.258400, 36.884254, 31.683588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.813259, 37.155727, 32.383881>,  <44.221130, 37.524891, 31.963230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.813259, 37.155727, 32.383881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.031628, 36.866196, 32.215099>,  <44.162647, 36.692478, 32.113831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.031628, 36.866196, 32.215099>,  <43.813259, 37.155727, 32.383881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.031628, 36.866196, 32.215099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070947, -0.461877, 0.884102,
		-0.834827, -0.512587, -0.200795,
		0.545922, -0.723826, -0.421954,
		44.195404, 36.649048, 32.088512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.562458, 36.513302, 32.664055>,  <43.813259, 37.155727, 32.383881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.562458, 36.513302, 32.664055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.938370, 36.453468, 32.541134>,  <44.163918, 36.417568, 32.467381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.938370, 36.453468, 32.541134>,  <43.562458, 36.513302, 32.664055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.938370, 36.453468, 32.541134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185501, -0.531938, 0.826215,
		-0.287058, -0.833466, -0.472157,
		0.939781, -0.149586, -0.307306,
		44.220303, 36.408592, 32.448940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.678959, 35.845840, 32.740250>,  <43.562458, 36.513302, 32.664055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.678959, 35.845840, 32.740250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.045677, 36.004993, 32.726593>,  <44.265709, 36.100487, 32.718399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.045677, 36.004993, 32.726593>,  <43.678959, 35.845840, 32.740250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.045677, 36.004993, 32.726593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182282, -0.340867, 0.922271,
		0.355320, -0.851761, -0.385034,
		0.916799, 0.397886, -0.034144,
		44.320717, 36.124359, 32.716351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.108650, 35.278999, 33.073418>,  <43.678959, 35.845840, 32.740250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.108650, 35.278999, 33.073418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.370163, 35.580841, 33.051003>,  <44.527069, 35.761948, 33.037552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.370163, 35.580841, 33.051003>,  <44.108650, 35.278999, 33.073418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.370163, 35.580841, 33.051003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369373, -0.253627, 0.894001,
		0.660408, -0.605176, -0.444548,
		0.653777, 0.754609, -0.056039,
		44.566296, 35.807224, 33.034191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.859585, 35.030910, 33.259815>,  <44.108650, 35.278999, 33.073418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.859585, 35.030910, 33.259815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.869949, 35.420647, 33.349243>,  <44.876167, 35.654488, 33.402901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.869949, 35.420647, 33.349243>,  <44.859585, 35.030910, 33.259815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.869949, 35.420647, 33.349243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340708, -0.218866, 0.914339,
		0.939812, 0.052478, -0.337639,
		0.025915, 0.974343, 0.223572,
		44.877724, 35.712948, 33.416313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.549854, 35.179550, 33.483292>,  <44.859585, 35.030910, 33.259815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.549854, 35.179550, 33.483292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.309811, 35.467453, 33.622898>,  <45.165783, 35.640194, 33.706661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.309811, 35.467453, 33.622898>,  <45.549854, 35.179550, 33.483292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.309811, 35.467453, 33.622898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392382, -0.115338, 0.912542,
		0.697065, 0.684576, -0.213204,
		-0.600114, 0.719759, 0.349013,
		45.129776, 35.683380, 33.727604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.940464, 35.572086, 33.951691>,  <45.549854, 35.179550, 33.483292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.940464, 35.572086, 33.951691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.580544, 35.698898, 34.071587>,  <45.364590, 35.774986, 34.143524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.580544, 35.698898, 34.071587>,  <45.940464, 35.572086, 33.951691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.580544, 35.698898, 34.071587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333338, 0.056292, 0.941125,
		0.281496, 0.946742, -0.156331,
		-0.899803, 0.317035, 0.299740,
		45.310604, 35.794010, 34.161507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.191563, 36.052353, 34.466179>,  <45.940464, 35.572086, 33.951691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.191563, 36.052353, 34.466179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.808636, 35.948364, 34.516727>,  <45.578880, 35.885971, 34.547054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.808636, 35.948364, 34.516727>,  <46.191563, 36.052353, 34.466179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.808636, 35.948364, 34.516727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171198, -0.157687, 0.972536,
		-0.232903, 0.952654, 0.195462,
		-0.957313, -0.259969, 0.126367,
		45.521442, 35.870373, 34.554638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.843746, 36.108791, 34.216499>,  <46.191563, 36.052353, 34.466179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.843746, 36.108791, 34.216499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.892952, 36.017986, 34.602936>,  <46.922474, 35.963501, 34.834797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.892952, 36.017986, 34.602936>,  <46.843746, 36.108791, 34.216499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.892952, 36.017986, 34.602936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572356, -0.779039, -0.255942,
		0.810726, 0.584432, 0.034102,
		0.123014, -0.227017, 0.966091,
		46.929855, 35.949883, 34.892761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.501125, 35.905605, 34.176067>,  <46.843746, 36.108791, 34.216499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.501125, 35.905605, 34.176067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.352070, 35.776081, 34.523926>,  <47.262634, 35.698364, 34.732639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.352070, 35.776081, 34.523926>,  <47.501125, 35.905605, 34.176067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.352070, 35.776081, 34.523926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566440, -0.821674, -0.063233,
		0.735040, 0.469038, 0.489612,
		-0.372642, -0.323814, 0.869645,
		47.240276, 35.678936, 34.784821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.933678, 35.683575, 34.727131>,  <47.501125, 35.905605, 34.176067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.933678, 35.683575, 34.727131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.619965, 35.451305, 34.814499>,  <47.431736, 35.311943, 34.866920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.619965, 35.451305, 34.814499>,  <47.933678, 35.683575, 34.727131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.619965, 35.451305, 34.814499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606437, -0.791822, 0.072470,
		0.130871, 0.189297, 0.973159,
		-0.784287, -0.580676, 0.218424,
		47.384678, 35.277103, 34.880028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.037247, 35.267784, 35.372463>,  <47.933678, 35.683575, 34.727131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.037247, 35.267784, 35.372463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.793404, 35.051502, 35.140594>,  <47.647099, 34.921734, 35.001472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.793404, 35.051502, 35.140594>,  <48.037247, 35.267784, 35.372463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.793404, 35.051502, 35.140594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469614, -0.835459, 0.285431,
		-0.638627, -0.098222, 0.763222,
		-0.609605, -0.540704, -0.579673,
		47.610523, 34.889290, 34.966694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<31.821415, 41.744247, 39.865997> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.493656, 41.598858, 39.688698>,  <31.297001, 41.511623, 39.582317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.493656, 41.598858, 39.688698>,  <31.821415, 41.744247, 39.865997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.493656, 41.598858, 39.688698> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565462, -0.385715, -0.729024,
		0.094014, -0.848003, 0.521586,
		-0.819399, -0.363476, -0.443251,
		31.247837, 41.489815, 39.555721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.052467, 41.122581, 39.550755>,  <31.821415, 41.744247, 39.865997>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.052467, 41.122581, 39.550755> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.721291, 41.216167, 39.346882>,  <31.522585, 41.272320, 39.224556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.721291, 41.216167, 39.346882>,  <32.052467, 41.122581, 39.550755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.721291, 41.216167, 39.346882> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476830, -0.184727, -0.859366,
		-0.295218, -0.954534, 0.041379,
		-0.827937, 0.233969, -0.509685,
		31.472910, 41.286358, 39.193977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.948570, 40.651569, 39.075752>,  <32.052467, 41.122581, 39.550755>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.948570, 40.651569, 39.075752> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.740002, 40.958244, 38.925922>,  <31.614861, 41.142250, 38.836025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.740002, 40.958244, 38.925922>,  <31.948570, 40.651569, 39.075752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.740002, 40.958244, 38.925922> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329211, -0.224237, -0.917245,
		-0.787235, -0.601586, -0.135481,
		-0.521421, 0.766689, -0.374576,
		31.583574, 41.188251, 38.813549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.608986, 40.471058, 38.453793>,  <31.948570, 40.651569, 39.075752>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.608986, 40.471058, 38.453793> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.592300, 40.868484, 38.411682>,  <31.582289, 41.106941, 38.386417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.592300, 40.868484, 38.411682>,  <31.608986, 40.471058, 38.453793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.592300, 40.868484, 38.411682> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231787, -0.092866, -0.968324,
		-0.971872, -0.064794, -0.226422,
		-0.041714, 0.993568, -0.105273,
		31.579786, 41.166553, 38.380100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.193199, 40.594761, 37.828537>,  <31.608986, 40.471058, 38.453793>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.193199, 40.594761, 37.828537> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.430182, 40.908001, 37.904163>,  <31.572371, 41.095947, 37.949539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.430182, 40.908001, 37.904163>,  <31.193199, 40.594761, 37.828537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.430182, 40.908001, 37.904163> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373446, -0.059018, -0.925773,
		-0.713816, 0.619087, -0.327412,
		0.592457, 0.783102, 0.189068,
		31.607918, 41.142933, 37.960884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.091917, 40.967670, 37.273563>,  <31.193199, 40.594761, 37.828537>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.091917, 40.967670, 37.273563> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.421883, 41.121426, 37.439342>,  <31.619862, 41.213676, 37.538811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.421883, 41.121426, 37.439342>,  <31.091917, 40.967670, 37.273563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.421883, 41.121426, 37.439342> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446784, 0.005777, -0.894623,
		-0.346273, 0.923156, -0.166971,
		0.824912, 0.384383, 0.414451,
		31.669355, 41.236740, 37.563679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.223030, 41.604111, 36.884579>,  <31.091917, 40.967670, 37.273563>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.223030, 41.604111, 36.884579> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.562582, 41.491852, 37.063751>,  <31.766314, 41.424496, 37.171253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.562582, 41.491852, 37.063751>,  <31.223030, 41.604111, 36.884579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.562582, 41.491852, 37.063751> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464604, -0.007985, -0.885483,
		0.252087, 0.959777, 0.123613,
		0.848879, -0.280650, 0.447929,
		31.817245, 41.407658, 37.198132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.760508, 42.012238, 36.553967>,  <31.223030, 41.604111, 36.884579>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.760508, 42.012238, 36.553967> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.978161, 41.722954, 36.724091>,  <32.108753, 41.549385, 36.826164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.978161, 41.722954, 36.724091>,  <31.760508, 42.012238, 36.553967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.978161, 41.722954, 36.724091> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652071, 0.045552, -0.756788,
		0.527940, 0.689128, 0.496368,
		0.544134, -0.723206, 0.425312,
		32.141399, 41.505993, 36.851685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.350163, 42.162342, 36.317543>,  <31.760508, 42.012238, 36.553967>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.350163, 42.162342, 36.317543> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.403019, 41.784302, 36.437084>,  <32.434734, 41.557476, 36.508808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.403019, 41.784302, 36.437084>,  <32.350163, 42.162342, 36.317543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.403019, 41.784302, 36.437084> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655949, -0.142665, -0.741200,
		0.743148, 0.293978, 0.601088,
		0.132143, -0.945105, 0.298855,
		32.442661, 41.500771, 36.526741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.128262, 42.067612, 36.435585>,  <32.350163, 42.162342, 36.317543>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.128262, 42.067612, 36.435585> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.965366, 41.711407, 36.354446>,  <32.867630, 41.497684, 36.305763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.965366, 41.711407, 36.354446>,  <33.128262, 42.067612, 36.435585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.965366, 41.711407, 36.354446> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746250, -0.196388, -0.636037,
		0.526564, -0.410389, 0.744521,
		-0.407237, -0.890513, -0.202842,
		32.843197, 41.444252, 36.293594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.679310, 41.652382, 36.495861>,  <33.128262, 42.067612, 36.435585>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.679310, 41.652382, 36.495861> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.432571, 41.436825, 36.266396>,  <33.284527, 41.307491, 36.128716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.432571, 41.436825, 36.266396>,  <33.679310, 41.652382, 36.495861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.432571, 41.436825, 36.266396> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785455, -0.374628, -0.492660,
		0.050583, -0.754482, 0.654368,
		-0.616848, -0.538897, -0.573662,
		33.247517, 41.275154, 36.094296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.917355, 41.036919, 36.567558>,  <33.679310, 41.652382, 36.495861>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.917355, 41.036919, 36.567558> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.682816, 41.015339, 36.244255>,  <33.542091, 41.002392, 36.050274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.682816, 41.015339, 36.244255>,  <33.917355, 41.036919, 36.567558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.682816, 41.015339, 36.244255> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635893, -0.648781, -0.417999,
		-0.501831, -0.759060, 0.414721,
		-0.586349, -0.053953, -0.808259,
		33.506912, 40.999153, 36.001778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.849693, 40.396770, 36.476177>,  <33.917355, 41.036919, 36.567558>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.849693, 40.396770, 36.476177> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.768570, 40.538074, 36.110867>,  <33.719894, 40.622856, 35.891682>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.768570, 40.538074, 36.110867>,  <33.849693, 40.396770, 36.476177>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.768570, 40.538074, 36.110867> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651189, -0.647885, -0.395219,
		-0.731314, -0.674870, -0.098642,
		-0.202813, 0.353264, -0.913275,
		33.707726, 40.644054, 35.836884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.637653, 39.815258, 35.893322>,  <33.849693, 40.396770, 36.476177>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.637653, 39.815258, 35.893322> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.786537, 40.136131, 35.706573>,  <33.875870, 40.328655, 35.594524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.786537, 40.136131, 35.706573>,  <33.637653, 39.815258, 35.893322>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.786537, 40.136131, 35.706573> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771137, -0.547212, -0.325435,
		-0.516532, -0.238888, -0.822269,
		0.372213, 0.802179, -0.466868,
		33.898201, 40.376785, 35.566513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.997585, 39.560387, 35.456215>,  <33.637653, 39.815258, 35.893322>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.997585, 39.560387, 35.456215> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.146423, 39.928970, 35.411572>,  <34.235725, 40.150120, 35.384785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.146423, 39.928970, 35.411572>,  <33.997585, 39.560387, 35.456215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.146423, 39.928970, 35.411572> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852909, -0.386871, -0.350539,
		-0.366187, 0.035240, -0.929874,
		0.372094, 0.921460, -0.111611,
		34.258053, 40.205410, 35.378090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.350491, 39.601395, 34.817619>,  <33.997585, 39.560387, 35.456215>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.350491, 39.601395, 34.817619> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.524769, 39.887600, 35.036053>,  <34.629337, 40.059322, 35.167114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.524769, 39.887600, 35.036053>,  <34.350491, 39.601395, 34.817619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.524769, 39.887600, 35.036053> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891376, -0.258770, -0.372138,
		-0.124959, 0.648908, -0.750536,
		0.435699, 0.715511, 0.546086,
		34.655479, 40.102253, 35.199879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.745262, 39.994438, 34.378384>,  <34.350491, 39.601395, 34.817619>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.745262, 39.994438, 34.378384> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.896957, 40.078648, 34.738796>,  <34.987972, 40.129173, 34.955044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.896957, 40.078648, 34.738796>,  <34.745262, 39.994438, 34.378384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.896957, 40.078648, 34.738796> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923776, -0.142025, -0.355623,
		0.053102, 0.967217, -0.248337,
		0.379234, 0.210524, 0.901033,
		35.010727, 40.141804, 35.009106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.329372, 40.453941, 34.226276>,  <34.745262, 39.994438, 34.378384>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.329372, 40.453941, 34.226276> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.390839, 40.306408, 34.592957>,  <35.427719, 40.217888, 34.812965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.390839, 40.306408, 34.592957>,  <35.329372, 40.453941, 34.226276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.390839, 40.306408, 34.592957> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936258, -0.242267, -0.254416,
		0.315925, 0.897366, 0.308099,
		0.153662, -0.368837, 0.916705,
		35.436935, 40.195755, 34.867970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.053581, 40.589146, 34.332111>,  <35.329372, 40.453941, 34.226276>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.053581, 40.589146, 34.332111> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.962708, 40.287647, 34.578773>,  <35.908184, 40.106747, 34.726768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.962708, 40.287647, 34.578773>,  <36.053581, 40.589146, 34.332111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.962708, 40.287647, 34.578773> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876665, -0.434030, -0.207551,
		0.424085, 0.493445, 0.759384,
		-0.227180, -0.753744, 0.616651,
		35.894554, 40.061523, 34.763767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.659462, 40.497810, 34.767315>,  <36.053581, 40.589146, 34.332111>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.659462, 40.497810, 34.767315> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.474194, 40.148758, 34.829269>,  <36.363033, 39.939327, 34.866444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.474194, 40.148758, 34.829269>,  <36.659462, 40.497810, 34.767315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.474194, 40.148758, 34.829269> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875281, -0.477823, -0.074621,
		0.139125, 0.101009, 0.985110,
		-0.463171, -0.872630, 0.154888,
		36.335243, 39.886971, 34.875736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.071682, 40.111153, 35.137135>,  <36.659462, 40.497810, 34.767315>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.071682, 40.111153, 35.137135> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.840965, 39.826138, 34.977329>,  <36.702538, 39.655128, 34.881447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.840965, 39.826138, 34.977329>,  <37.071682, 40.111153, 35.137135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.840965, 39.826138, 34.977329> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810307, -0.561029, -0.169263,
		-0.103533, -0.421358, 0.900965,
		-0.576788, -0.712534, -0.399514,
		36.667931, 39.612377, 34.857475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.327232, 39.460354, 35.423477>,  <37.071682, 40.111153, 35.137135>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.327232, 39.460354, 35.423477> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.144680, 39.396564, 35.073326>,  <37.035149, 39.358292, 34.863235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.144680, 39.396564, 35.073326>,  <37.327232, 39.460354, 35.423477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.144680, 39.396564, 35.073326> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714417, -0.652123, -0.253660,
		-0.530402, -0.741150, 0.411546,
		-0.456379, -0.159474, -0.875378,
		37.007767, 39.348721, 34.810711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.847057, 38.930424, 35.267570>,  <37.327232, 39.460354, 35.423477>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.847057, 38.930424, 35.267570> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.113392, 39.076054, 35.528065>,  <38.273193, 39.163433, 35.684361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.113392, 39.076054, 35.528065>,  <37.847057, 38.930424, 35.267570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.113392, 39.076054, 35.528065> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658181, -0.124430, 0.742506,
		0.351364, -0.923019, 0.156779,
		0.665839, 0.364079, 0.651233,
		38.313145, 39.185276, 35.723434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.908455, 38.428097, 35.766781>,  <37.847057, 38.930424, 35.267570>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.908455, 38.428097, 35.766781> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.033295, 38.753746, 35.962658>,  <38.108196, 38.949135, 36.080185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.033295, 38.753746, 35.962658>,  <37.908455, 38.428097, 35.766781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.033295, 38.753746, 35.962658> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579114, -0.245583, 0.777377,
		0.753142, -0.526204, 0.394825,
		0.312097, 0.814125, 0.489691,
		38.126923, 38.997982, 36.109566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.113281, 38.155209, 36.485733>,  <37.908455, 38.428097, 35.766781>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.113281, 38.155209, 36.485733> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.049702, 38.549007, 36.515388>,  <38.011555, 38.785286, 36.533180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.049702, 38.549007, 36.515388>,  <38.113281, 38.155209, 36.485733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.049702, 38.549007, 36.515388> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514487, -0.146690, 0.844858,
		0.842637, 0.096150, 0.529829,
		-0.158954, 0.984499, 0.074139,
		38.002014, 38.844357, 36.537632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.097248, 38.246449, 37.105877>,  <38.113281, 38.155209, 36.485733>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.097248, 38.246449, 37.105877> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.920856, 38.578827, 36.970188>,  <37.815022, 38.778252, 36.888775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.920856, 38.578827, 36.970188>,  <38.097248, 38.246449, 37.105877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.920856, 38.578827, 36.970188> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692473, -0.074544, 0.717582,
		0.570984, 0.551339, 0.608279,
		-0.440975, 0.830944, -0.339224,
		37.788563, 38.828110, 36.868420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.954140, 38.632633, 37.689041>,  <38.097248, 38.246449, 37.105877>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.954140, 38.632633, 37.689041> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.711239, 38.820873, 37.432987>,  <37.565498, 38.933819, 37.279354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.711239, 38.820873, 37.432987>,  <37.954140, 38.632633, 37.689041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.711239, 38.820873, 37.432987> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661628, 0.146548, 0.735373,
		0.439880, 0.870090, 0.222373,
		-0.607252, 0.470604, -0.640138,
		37.529064, 38.962055, 37.240944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.719090, 39.200413, 37.988918>,  <37.954140, 38.632633, 37.689041>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.719090, 39.200413, 37.988918> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.445301, 39.123920, 37.707512>,  <37.281029, 39.078026, 37.538670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.445301, 39.123920, 37.707512>,  <37.719090, 39.200413, 37.988918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.445301, 39.123920, 37.707512> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728135, 0.131133, 0.672774,
		-0.036399, 0.972747, -0.228997,
		-0.684467, -0.191229, -0.703517,
		37.239960, 39.066551, 37.496456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.187302, 39.598633, 38.112434>,  <37.719090, 39.200413, 37.988918>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.187302, 39.598633, 38.112434> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.019165, 39.329437, 37.868996>,  <36.918282, 39.167919, 37.722931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.019165, 39.329437, 37.868996>,  <37.187302, 39.598633, 38.112434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.019165, 39.329437, 37.868996> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.880696, 0.141184, 0.452152,
		-0.218371, 0.726049, -0.652048,
		-0.420343, -0.672993, -0.608598,
		36.893063, 39.127541, 37.686417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.603371, 39.862476, 37.755539>,  <37.187302, 39.598633, 38.112434>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.603371, 39.862476, 37.755539> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.532135, 39.470760, 37.717030>,  <36.489395, 39.235729, 37.693924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.532135, 39.470760, 37.717030>,  <36.603371, 39.862476, 37.755539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.532135, 39.470760, 37.717030> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.903165, 0.123835, 0.411045,
		-0.390611, 0.160158, -0.906517,
		-0.178090, -0.979293, -0.096278,
		36.478706, 39.176971, 37.688145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.938992, 39.859493, 37.602356>,  <36.603371, 39.862476, 37.755539>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.938992, 39.859493, 37.602356> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.001701, 39.493137, 37.750172>,  <36.039330, 39.273323, 37.838860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.001701, 39.493137, 37.750172>,  <35.938992, 39.859493, 37.602356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.001701, 39.493137, 37.750172> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.827010, 0.082789, 0.556058,
		-0.539884, -0.392789, -0.744474,
		0.156779, -0.915894, 0.369537,
		36.048737, 39.218369, 37.861034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.384964, 39.527927, 37.548481>,  <35.938992, 39.859493, 37.602356>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.384964, 39.527927, 37.548481> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.578892, 39.324741, 37.833275>,  <35.695248, 39.202831, 38.004150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.578892, 39.324741, 37.833275>,  <35.384964, 39.527927, 37.548481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.578892, 39.324741, 37.833275> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807891, 0.051751, 0.587055,
		-0.335050, -0.859821, -0.385292,
		0.484823, -0.507967, 0.711981,
		35.724339, 39.172352, 38.046867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.928841, 38.996258, 37.717484>,  <35.384964, 39.527927, 37.548481>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.928841, 38.996258, 37.717484> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.167549, 39.074192, 38.028843>,  <35.310776, 39.120953, 38.215656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.167549, 39.074192, 38.028843>,  <34.928841, 38.996258, 37.717484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.167549, 39.074192, 38.028843> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801950, 0.177631, 0.570371,
		-0.027137, -0.964617, 0.262257,
		0.596775, 0.194839, 0.778395,
		35.346581, 39.132645, 38.262360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.608749, 38.685028, 38.336666>,  <34.928841, 38.996258, 37.717484>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.608749, 38.685028, 38.336666> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.878902, 38.915215, 38.521141>,  <35.040993, 39.053326, 38.631828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.878902, 38.915215, 38.521141>,  <34.608749, 38.685028, 38.336666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.878902, 38.915215, 38.521141> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730149, 0.433913, 0.527828,
		0.103631, -0.693223, 0.713234,
		0.675384, 0.575466, 0.461189,
		35.081516, 39.087852, 38.659496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.406719, 38.842266, 39.055069>,  <34.608749, 38.685028, 38.336666>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.406719, 38.842266, 39.055069> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.662350, 39.136642, 38.965660>,  <34.815727, 39.313271, 38.912014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.662350, 39.136642, 38.965660>,  <34.406719, 38.842266, 39.055069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.662350, 39.136642, 38.965660> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400279, 0.566395, 0.720398,
		0.656776, -0.370919, 0.656555,
		0.639079, 0.735945, -0.223524,
		34.854073, 39.357426, 38.898602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.539585, 39.039276, 39.714775>,  <34.406719, 38.842266, 39.055069>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.539585, 39.039276, 39.714775> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.626595, 39.339767, 39.465508>,  <34.678802, 39.520061, 39.315948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.626595, 39.339767, 39.465508>,  <34.539585, 39.039276, 39.714775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.626595, 39.339767, 39.465508> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426236, 0.647472, 0.631746,
		0.878068, 0.128193, 0.461045,
		0.217528, 0.751230, -0.623165,
		34.691853, 39.565136, 39.278557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.900211, 39.575542, 40.068089>,  <34.539585, 39.039276, 39.714775>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.900211, 39.575542, 40.068089> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.718262, 39.753979, 39.759781>,  <34.609093, 39.861042, 39.574795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.718262, 39.753979, 39.759781>,  <34.900211, 39.575542, 40.068089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.718262, 39.753979, 39.759781> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517525, 0.571942, 0.636436,
		0.724745, 0.688394, -0.029301,
		-0.454877, 0.446090, -0.770773,
		34.581799, 39.887806, 39.528549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.035030, 40.308418, 40.225536>,  <34.900211, 39.575542, 40.068089>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.035030, 40.308418, 40.225536> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.732632, 40.248936, 39.970551>,  <34.551193, 40.213245, 39.817558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.732632, 40.248936, 39.970551>,  <35.035030, 40.308418, 40.225536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.732632, 40.248936, 39.970551> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580345, 0.602726, 0.547650,
		0.302777, 0.783969, -0.541959,
		-0.755994, -0.148707, -0.637464,
		34.505833, 40.204323, 39.779312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.909752, 41.034817, 40.193409>,  <35.035030, 40.308418, 40.225536>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.909752, 41.034817, 40.193409> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.607925, 40.814045, 40.051418>,  <34.426830, 40.681583, 39.966225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.607925, 40.814045, 40.051418>,  <34.909752, 41.034817, 40.193409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.607925, 40.814045, 40.051418> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643296, 0.515283, 0.566263,
		-0.129621, 0.655638, -0.743866,
		-0.754565, -0.551925, -0.354978,
		34.381557, 40.648468, 39.944923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.361355, 41.508873, 40.194897>,  <34.909752, 41.034817, 40.193409>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.361355, 41.508873, 40.194897> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.185802, 41.150394, 40.168922>,  <34.080471, 40.935307, 40.153339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.185802, 41.150394, 40.168922>,  <34.361355, 41.508873, 40.194897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.185802, 41.150394, 40.168922> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650282, 0.266918, 0.711258,
		-0.620095, 0.354382, -0.699925,
		-0.438879, -0.896197, -0.064934,
		34.054138, 40.881535, 40.149441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<33.684505, 41.790714, 40.163193> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.686745, 41.410561, 40.287601>,  <33.688087, 41.182468, 40.362247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.686745, 41.410561, 40.287601>,  <33.684505, 41.790714, 40.163193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.686745, 41.410561, 40.287601> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737520, 0.206115, 0.643103,
		-0.675302, -0.232988, -0.699774,
		0.005602, -0.950386, 0.311023,
		33.688427, 41.125446, 40.380909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.941303, 41.595776, 40.291138>,  <33.684505, 41.790714, 40.163193>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.941303, 41.595776, 40.291138> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.162003, 41.328617, 40.490932>,  <33.294422, 41.168320, 40.610809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.162003, 41.328617, 40.490932>,  <32.941303, 41.595776, 40.291138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.162003, 41.328617, 40.490932> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677702, -0.009971, 0.735269,
		-0.486105, -0.744186, -0.458137,
		0.551745, -0.667898, 0.499489,
		33.327526, 41.128246, 40.640778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.735607, 40.821033, 40.284374>,  <32.941303, 41.595776, 40.291138>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.735607, 40.821033, 40.284374> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.879883, 40.946617, 40.635677>,  <32.966450, 41.021969, 40.846458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.879883, 40.946617, 40.635677>,  <32.735607, 40.821033, 40.284374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.879883, 40.946617, 40.635677> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.921488, -0.025513, 0.387568,
		0.144088, -0.949094, 0.280107,
		0.360692, 0.313959, 0.878255,
		32.988091, 41.040806, 40.899155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.310467, 40.439552, 40.701431>,  <32.735607, 40.821033, 40.284374>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.310467, 40.439552, 40.701431> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.507824, 40.640945, 40.985138>,  <32.626240, 40.761784, 41.155361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.507824, 40.640945, 40.985138>,  <32.310467, 40.439552, 40.701431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.507824, 40.640945, 40.985138> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748360, -0.169867, 0.641173,
		0.443303, -0.847140, 0.292978,
		0.493396, 0.503487, 0.709268,
		32.655842, 40.791992, 41.197918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.218307, 40.136585, 41.454891>,  <32.310467, 40.439552, 40.701431>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.218307, 40.136585, 41.454891> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.356831, 40.502407, 41.538475>,  <32.439945, 40.721901, 41.588627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.356831, 40.502407, 41.538475>,  <32.218307, 40.136585, 41.454891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.356831, 40.502407, 41.538475> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678298, 0.090229, 0.729225,
		0.648061, -0.394274, 0.651587,
		0.346306, 0.914553, 0.208961,
		32.460724, 40.776772, 41.601162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.031158, 40.281628, 42.085167>,  <32.218307, 40.136585, 41.454891>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.031158, 40.281628, 42.085167> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.125027, 40.658188, 41.988266>,  <32.181347, 40.884125, 41.930126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.125027, 40.658188, 41.988266>,  <32.031158, 40.281628, 42.085167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.125027, 40.658188, 41.988266> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689999, 0.336860, 0.640645,
		0.684712, 0.016815, 0.728619,
		0.234670, 0.941405, -0.242255,
		32.195427, 40.940609, 41.915588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.163971, 40.545250, 42.692383>,  <32.031158, 40.281628, 42.085167>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.163971, 40.545250, 42.692383> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.093334, 40.858471, 42.453838>,  <32.050953, 41.046402, 42.310711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.093334, 40.858471, 42.453838>,  <32.163971, 40.545250, 42.692383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.093334, 40.858471, 42.453838> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664980, 0.351785, 0.658824,
		0.725684, 0.512910, 0.458592,
		-0.176592, 0.783052, -0.596359,
		32.040356, 41.093388, 42.274929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.187229, 41.036777, 43.132099>,  <32.163971, 40.545250, 42.692383>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.187229, 41.036777, 43.132099> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.986647, 41.204720, 42.829506>,  <31.866297, 41.305485, 42.647949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.986647, 41.204720, 42.829506>,  <32.187229, 41.036777, 43.132099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.986647, 41.204720, 42.829506> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566827, 0.501146, 0.653881,
		0.653644, 0.756685, -0.013315,
		-0.501455, 0.419857, -0.756481,
		31.836210, 41.330677, 42.602562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.119572, 41.788090, 43.246727>,  <32.187229, 41.036777, 43.132099>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.119572, 41.788090, 43.246727> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.829966, 41.653400, 43.005924>,  <31.656202, 41.572586, 42.861443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.829966, 41.653400, 43.005924>,  <32.119572, 41.788090, 43.246727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.829966, 41.653400, 43.005924> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652403, 0.617684, 0.439132,
		0.223985, 0.710693, -0.666893,
		-0.724017, -0.336724, -0.602010,
		31.612761, 41.552383, 42.825321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.866978, 42.471363, 43.081406>,  <32.119572, 41.788090, 43.246727>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.866978, 42.471363, 43.081406> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.585669, 42.208496, 42.972935>,  <31.416883, 42.050777, 42.907852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.585669, 42.208496, 42.972935>,  <31.866978, 42.471363, 43.081406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.585669, 42.208496, 42.972935> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694006, 0.551914, 0.462327,
		-0.154157, 0.513344, -0.844224,
		-0.703272, -0.657167, -0.271182,
		31.374687, 42.011345, 42.891579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.249584, 42.821095, 42.763905>,  <31.866978, 42.471363, 43.081406>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.249584, 42.821095, 42.763905> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.142981, 42.459335, 42.897190>,  <31.079018, 42.242279, 42.977161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.142981, 42.459335, 42.897190>,  <31.249584, 42.821095, 42.763905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.142981, 42.459335, 42.897190> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803586, 0.399391, 0.441290,
		-0.532186, -0.150159, -0.833205,
		-0.266511, -0.904400, 0.333216,
		31.063026, 42.188015, 42.997154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.493216, 42.778278, 42.660137>,  <31.249584, 42.821095, 42.763905>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.493216, 42.778278, 42.660137> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.608671, 42.521061, 42.943878>,  <30.677944, 42.366730, 43.114124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.608671, 42.521061, 42.943878>,  <30.493216, 42.778278, 42.660137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.608671, 42.521061, 42.943878> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821636, 0.214000, 0.528317,
		-0.491532, -0.735325, -0.466577,
		0.288637, -0.643040, 0.709357,
		30.695263, 42.328148, 43.156685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.857260, 42.537502, 42.903046>,  <30.493216, 42.778278, 42.660137>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.857260, 42.537502, 42.903046> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.112230, 42.423702, 43.189472>,  <30.265213, 42.355423, 43.361328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.112230, 42.423702, 43.189472>,  <29.857260, 42.537502, 42.903046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.112230, 42.423702, 43.189472> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683966, 0.219003, 0.695865,
		-0.354790, -0.933328, -0.054987,
		0.637428, -0.284495, 0.716065,
		30.303459, 42.338352, 43.404293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.404222, 42.237862, 43.361408>,  <29.857260, 42.537502, 42.903046>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.404222, 42.237862, 43.361408> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.740034, 42.281841, 43.574238>,  <29.941521, 42.308231, 43.701935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.740034, 42.281841, 43.574238>,  <29.404222, 42.237862, 43.361408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.740034, 42.281841, 43.574238> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542260, 0.108527, 0.833172,
		0.033862, -0.987994, 0.150732,
		0.839528, 0.109949, 0.532075,
		29.991892, 42.314827, 43.733860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.446121, 41.702438, 43.794067>,  <29.404222, 42.237862, 43.361408>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.446121, 41.702438, 43.794067> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.689047, 41.977512, 43.953197>,  <29.834803, 42.142555, 44.048676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.689047, 41.977512, 43.953197>,  <29.446121, 41.702438, 43.794067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.689047, 41.977512, 43.953197> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535155, -0.015988, 0.844603,
		0.587177, -0.725837, 0.358306,
		0.607316, 0.687681, 0.397823,
		29.871243, 42.183815, 44.072544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.720257, 41.450123, 44.434128>,  <29.446121, 41.702438, 43.794067>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.720257, 41.450123, 44.434128> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.744591, 41.847733, 44.470371>,  <29.759192, 42.086300, 44.492115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.744591, 41.847733, 44.470371>,  <29.720257, 41.450123, 44.434128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.744591, 41.847733, 44.470371> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403039, -0.058582, 0.913306,
		0.913159, -0.092077, 0.397068,
		0.060834, 0.994027, 0.090605,
		29.762840, 42.145939, 44.497551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.899523, 41.562080, 45.146938>,  <29.720257, 41.450123, 44.434128>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.899523, 41.562080, 45.146938> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.758606, 41.907452, 45.002502>,  <29.674055, 42.114674, 44.915840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.758606, 41.907452, 45.002502>,  <29.899523, 41.562080, 45.146938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.758606, 41.907452, 45.002502> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536245, 0.129983, 0.833993,
		0.767026, 0.487444, 0.417215,
		-0.352294, 0.863425, -0.361090,
		29.652918, 42.166481, 44.894176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.063513, 42.025200, 45.693550>,  <29.899523, 41.562080, 45.146938>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.063513, 42.025200, 45.693550> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.780205, 42.189060, 45.463581>,  <29.610220, 42.287376, 45.325600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.780205, 42.189060, 45.463581>,  <30.063513, 42.025200, 45.693550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.780205, 42.189060, 45.463581> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583385, 0.118934, 0.803440,
		0.397507, 0.904457, 0.154746,
		-0.708272, 0.409649, -0.574924,
		29.567722, 42.311954, 45.291103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.837000, 42.517048, 46.102524>,  <30.063513, 42.025200, 45.693550>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.837000, 42.517048, 46.102524> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.545012, 42.446304, 45.838444>,  <29.369818, 42.403858, 45.679996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.545012, 42.446304, 45.838444>,  <29.837000, 42.517048, 46.102524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.545012, 42.446304, 45.838444> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678506, 0.071222, 0.731134,
		-0.082285, 0.981656, -0.171989,
		-0.729972, -0.176857, -0.660199,
		29.326019, 42.393246, 45.640385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.284092, 42.795349, 46.312782>,  <29.837000, 42.517048, 46.102524>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.284092, 42.795349, 46.312782> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.083067, 42.587730, 46.036224>,  <28.962452, 42.463158, 45.870289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.083067, 42.587730, 46.036224>,  <29.284092, 42.795349, 46.312782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.083067, 42.587730, 46.036224> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859980, 0.218081, 0.461385,
		-0.088701, 0.826458, -0.555968,
		-0.502561, -0.519046, -0.691393,
		28.932299, 42.432018, 45.828808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.661230, 43.116150, 46.245590>,  <29.284092, 42.795349, 46.312782>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.661230, 43.116150, 46.245590> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.585377, 42.750404, 46.102493>,  <28.539865, 42.530956, 46.016636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.585377, 42.750404, 46.102493>,  <28.661230, 43.116150, 46.245590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.585377, 42.750404, 46.102493> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.947658, 0.075126, 0.310323,
		-0.256873, 0.397861, -0.880751,
		-0.189633, -0.914364, -0.357738,
		28.528486, 42.476093, 45.995171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.955942, 43.167213, 46.053581>,  <28.661230, 43.116150, 46.245590>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.955942, 43.167213, 46.053581> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.054567, 42.783546, 46.109005>,  <28.113743, 42.553345, 46.142258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.054567, 42.783546, 46.109005>,  <27.955942, 43.167213, 46.053581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.054567, 42.783546, 46.109005> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.869309, -0.155695, 0.469107,
		-0.428381, -0.236114, -0.872204,
		0.246561, -0.959171, 0.138559,
		28.128536, 42.495796, 46.150574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.314268, 42.829365, 45.996811>,  <27.955942, 43.167213, 46.053581>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.314268, 42.829365, 45.996811> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.537676, 42.558060, 46.187813>,  <27.671721, 42.395275, 46.302414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.537676, 42.558060, 46.187813>,  <27.314268, 42.829365, 45.996811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.537676, 42.558060, 46.187813> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799679, -0.287332, 0.527214,
		-0.220388, -0.676311, -0.702875,
		0.558519, -0.678266, 0.477507,
		27.705231, 42.354580, 46.331066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.892206, 42.400677, 46.015697>,  <27.314268, 42.829365, 45.996811>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.892206, 42.400677, 46.015697> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.169943, 42.278164, 46.276180>,  <27.336586, 42.204655, 46.432472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.169943, 42.278164, 46.276180>,  <26.892206, 42.400677, 46.015697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.169943, 42.278164, 46.276180> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717918, -0.232169, 0.656271,
		-0.049815, -0.923194, -0.381092,
		0.694344, -0.306285, 0.651212,
		27.378246, 42.186279, 46.471542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.469608, 42.490810, 45.462997>,  <26.892206, 42.400677, 46.015697>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.469608, 42.490810, 45.462997> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.120615, 42.467556, 45.268929>,  <25.911219, 42.453602, 45.152489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.120615, 42.467556, 45.268929>,  <26.469608, 42.490810, 45.462997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.120615, 42.467556, 45.268929> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456003, -0.453676, -0.765663,
		-0.175596, -0.889268, 0.422336,
		-0.872484, -0.058139, -0.485173,
		25.858870, 42.450115, 45.123375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.524452, 41.871799, 45.134823>,  <26.469608, 42.490810, 45.462997>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.524452, 41.871799, 45.134823> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.227573, 42.067905, 44.952049>,  <26.049446, 42.185570, 44.842384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.227573, 42.067905, 44.952049>,  <26.524452, 41.871799, 45.134823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.227573, 42.067905, 44.952049> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291373, -0.377935, -0.878787,
		-0.603528, -0.785370, 0.137652,
		-0.742196, 0.490265, -0.456930,
		26.004915, 42.214985, 44.814972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.178555, 41.422112, 44.776707>,  <26.524452, 41.871799, 45.134823>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.178555, 41.422112, 44.776707> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.095345, 41.767159, 44.592266>,  <26.045418, 41.974186, 44.481602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.095345, 41.767159, 44.592266>,  <26.178555, 41.422112, 44.776707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.095345, 41.767159, 44.592266> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295597, -0.393925, -0.870313,
		-0.932388, -0.317348, -0.173041,
		-0.208027, 0.862620, -0.461098,
		26.032936, 42.025944, 44.453938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.783026, 41.286343, 44.064430>,  <26.178555, 41.422112, 44.776707>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.783026, 41.286343, 44.064430> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.932596, 41.656010, 44.033195>,  <26.022339, 41.877808, 44.014454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.932596, 41.656010, 44.033195>,  <25.783026, 41.286343, 44.064430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.932596, 41.656010, 44.033195> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495252, -0.270146, -0.825680,
		-0.784158, 0.270074, -0.558709,
		0.373928, 0.924165, -0.078083,
		26.044775, 41.933258, 44.009769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.760494, 41.504154, 43.301708>,  <25.783026, 41.286343, 44.064430>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.760494, 41.504154, 43.301708> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.052671, 41.696247, 43.495956>,  <26.227978, 41.811504, 43.612507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.052671, 41.696247, 43.495956>,  <25.760494, 41.504154, 43.301708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.052671, 41.696247, 43.495956> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619986, -0.167991, -0.766418,
		-0.286480, 0.860903, -0.420446,
		0.730443, 0.480234, 0.485622,
		26.271805, 41.840317, 43.641644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.180431, 41.459385, 42.731178>,  <25.760494, 41.504154, 43.301708>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.180431, 41.459385, 42.731178> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.403324, 41.673344, 42.985226>,  <26.537060, 41.801720, 43.137653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.403324, 41.673344, 42.985226>,  <26.180431, 41.459385, 42.731178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.403324, 41.673344, 42.985226> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633911, 0.219998, -0.741457,
		-0.536328, 0.815773, -0.216487,
		0.557234, 0.534897, 0.635118,
		26.570494, 41.833813, 43.175762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.344902, 42.086777, 42.432030>,  <26.180431, 41.459385, 42.731178>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.344902, 42.086777, 42.432030> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.610365, 41.992004, 42.715839>,  <26.769642, 41.935139, 42.886124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.610365, 41.992004, 42.715839>,  <26.344902, 42.086777, 42.432030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.610365, 41.992004, 42.715839> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733933, 0.022916, -0.678836,
		0.144581, 0.971255, 0.189103,
		0.663656, -0.236935, 0.709523,
		26.809462, 41.920925, 42.928696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.977425, 42.472706, 42.252140>,  <26.344902, 42.086777, 42.432030>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.977425, 42.472706, 42.252140> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.061718, 42.156353, 42.481956>,  <27.112293, 41.966541, 42.619846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.061718, 42.156353, 42.481956>,  <26.977425, 42.472706, 42.252140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.061718, 42.156353, 42.481956> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832421, -0.162960, -0.529640,
		0.512511, 0.589872, 0.624006,
		0.210732, -0.790882, 0.574541,
		27.124937, 41.919086, 42.654320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.697323, 42.493980, 42.301422>,  <26.977425, 42.472706, 42.252140>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.697323, 42.493980, 42.301422> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.623623, 42.115723, 42.408615>,  <27.579403, 41.888767, 42.472931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.623623, 42.115723, 42.408615>,  <27.697323, 42.493980, 42.301422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.623623, 42.115723, 42.408615> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786652, -0.305340, -0.536605,
		0.589262, 0.111943, 0.800149,
		-0.184249, -0.945641, 0.267986,
		27.568348, 41.832031, 42.489010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.357038, 42.193031, 42.633358>,  <27.697323, 42.493980, 42.301422>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.357038, 42.193031, 42.633358> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.127962, 41.885925, 42.518425>,  <27.990517, 41.701660, 42.449463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.127962, 41.885925, 42.518425>,  <28.357038, 42.193031, 42.633358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.127962, 41.885925, 42.518425> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771597, -0.386453, -0.505265,
		0.276883, -0.511067, 0.813724,
		-0.572690, -0.767766, -0.287336,
		27.956156, 41.655594, 42.432224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.800756, 41.672787, 42.758965>,  <28.357038, 42.193031, 42.633358>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.800756, 41.672787, 42.758965> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.514591, 41.539986, 42.513054>,  <28.342892, 41.460304, 42.365505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.514591, 41.539986, 42.513054>,  <28.800756, 41.672787, 42.758965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.514591, 41.539986, 42.513054> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690268, -0.472130, -0.548292,
		-0.108222, -0.816620, 0.566940,
		-0.715415, -0.332003, -0.614781,
		28.299967, 41.440384, 42.328621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.967468, 40.959602, 42.650898>,  <28.800756, 41.672787, 42.758965>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.967468, 40.959602, 42.650898> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.734726, 41.049919, 42.338371>,  <28.595081, 41.104111, 42.150856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.734726, 41.049919, 42.338371>,  <28.967468, 40.959602, 42.650898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.734726, 41.049919, 42.338371> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710558, -0.326241, -0.623438,
		-0.395670, -0.917923, 0.029382,
		-0.581853, 0.225798, -0.781321,
		28.560169, 41.117657, 42.103973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.929632, 40.345760, 42.214436>,  <28.967468, 40.959602, 42.650898>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.929632, 40.345760, 42.214436> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.858168, 40.670948, 41.992744>,  <28.815289, 40.866058, 41.859730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.858168, 40.670948, 41.992744>,  <28.929632, 40.345760, 42.214436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.858168, 40.670948, 41.992744> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852512, -0.153321, -0.499715,
		-0.491226, -0.561762, -0.665672,
		-0.178659, 0.812967, -0.554225,
		28.804569, 40.914837, 41.826477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.396711, 40.216908, 41.616234>,  <28.929632, 40.345760, 42.214436>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.396711, 40.216908, 41.616234> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.292027, 40.601650, 41.584366>,  <29.229216, 40.832497, 41.565247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.292027, 40.601650, 41.584366>,  <29.396711, 40.216908, 41.616234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.292027, 40.601650, 41.584366> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811129, 0.174463, -0.558240,
		-0.523046, -0.210718, -0.825846,
		-0.261711, 0.961853, -0.079668,
		29.213512, 40.890205, 41.560467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.530138, 40.345638, 40.903484>,  <29.396711, 40.216908, 41.616234>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.530138, 40.345638, 40.903484> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.502663, 40.705471, 41.076015>,  <29.486177, 40.921371, 41.179535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.502663, 40.705471, 41.076015>,  <29.530138, 40.345638, 40.903484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.502663, 40.705471, 41.076015> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705496, 0.349488, -0.616550,
		-0.705377, 0.261946, -0.658655,
		-0.068689, 0.899579, 0.431323,
		29.482056, 40.975346, 41.205414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.226414, 40.824406, 40.379166>,  <29.530138, 40.345638, 40.903484>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.226414, 40.824406, 40.379166> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.435692, 41.021366, 40.657391>,  <29.561258, 41.139542, 40.824326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.435692, 41.021366, 40.657391>,  <29.226414, 40.824406, 40.379166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.435692, 41.021366, 40.657391> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626925, 0.330478, -0.705513,
		-0.577263, 0.805188, -0.135793,
		0.523194, 0.492398, 0.695566,
		29.592649, 41.169086, 40.866058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.383102, 41.508614, 40.173317>,  <29.226414, 40.824406, 40.379166>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.383102, 41.508614, 40.173317> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.708567, 41.430717, 40.392418>,  <29.903845, 41.383980, 40.523880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.708567, 41.430717, 40.392418>,  <29.383102, 41.508614, 40.173317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.708567, 41.430717, 40.392418> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577884, 0.168379, -0.798560,
		0.063281, 0.966295, 0.249540,
		0.813662, -0.194738, 0.547752,
		29.952665, 41.372295, 40.556744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.747747, 41.953728, 39.885998>,  <29.383102, 41.508614, 40.173317>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.747747, 41.953728, 39.885998> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.983356, 41.697693, 40.083317>,  <30.124722, 41.544071, 40.201710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.983356, 41.697693, 40.083317>,  <29.747747, 41.953728, 39.885998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.983356, 41.697693, 40.083317> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656741, 0.023453, -0.753751,
		0.470898, 0.767944, 0.434186,
		0.589022, -0.640088, 0.493296,
		30.160063, 41.505665, 40.231304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.377602, 42.241058, 39.804543>,  <29.747747, 41.953728, 39.885998>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.377602, 42.241058, 39.804543> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.420349, 41.853256, 39.892750>,  <30.445997, 41.620575, 39.945675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.420349, 41.853256, 39.892750>,  <30.377602, 42.241058, 39.804543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.420349, 41.853256, 39.892750> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688005, -0.088010, -0.720350,
		0.717794, 0.228702, 0.657622,
		0.106869, -0.969510, 0.220521,
		30.452410, 41.562405, 39.958904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.122015, 42.213673, 39.909306>,  <30.377602, 42.241058, 39.804543>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.122015, 42.213673, 39.909306> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.958769, 41.859276, 39.821259>,  <30.860821, 41.646637, 39.768429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.958769, 41.859276, 39.821259>,  <31.122015, 42.213673, 39.909306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.958769, 41.859276, 39.821259> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630850, -0.099412, -0.769510,
		0.659901, -0.452911, 0.599502,
		-0.408117, -0.885996, -0.220117,
		30.836334, 41.593475, 39.755222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.864834, 39.221779, 27.158022> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.711666, 39.588673, 27.201929>,  <41.619766, 39.808811, 27.228273>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.711666, 39.588673, 27.201929>,  <41.864834, 39.221779, 27.158022>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.711666, 39.588673, 27.201929> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099948, -0.076993, 0.992009,
		0.918360, 0.390828, -0.062194,
		-0.382917, 0.917238, 0.109770,
		41.596790, 39.863846, 27.234859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.308819, 39.516266, 27.560259>,  <41.864834, 39.221779, 27.158022>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.308819, 39.516266, 27.560259> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.973026, 39.730877, 27.594679>,  <41.771549, 39.859646, 27.615332>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.973026, 39.730877, 27.594679>,  <42.308819, 39.516266, 27.560259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.973026, 39.730877, 27.594679> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028150, -0.115205, 0.992943,
		0.542657, 0.835981, 0.081610,
		-0.839483, 0.536530, 0.086050,
		41.721180, 39.891834, 27.620495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.364193, 40.004669, 28.096449>,  <42.308819, 39.516266, 27.560259>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.364193, 40.004669, 28.096449> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.966293, 39.974987, 28.068275>,  <41.727554, 39.957180, 28.051371>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.966293, 39.974987, 28.068275>,  <42.364193, 40.004669, 28.096449>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.966293, 39.974987, 28.068275> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070398, -0.003093, 0.997514,
		-0.074235, 0.997239, -0.002147,
		-0.994753, -0.074202, -0.070433,
		41.667866, 39.952728, 28.047146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.078194, 40.476276, 28.533579>,  <42.364193, 40.004669, 28.096449>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.078194, 40.476276, 28.533579> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.782574, 40.214039, 28.471609>,  <41.605202, 40.056698, 28.434427>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.782574, 40.214039, 28.471609>,  <42.078194, 40.476276, 28.533579>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.782574, 40.214039, 28.471609> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148935, -0.065273, 0.986690,
		-0.656978, 0.752289, -0.049401,
		-0.739052, -0.655592, -0.154925,
		41.560860, 40.017361, 28.425131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.536198, 40.592464, 29.022104>,  <42.078194, 40.476276, 28.533579>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.536198, 40.592464, 29.022104> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.504528, 40.213474, 28.898151>,  <41.485527, 39.986080, 28.823780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.504528, 40.213474, 28.898151>,  <41.536198, 40.592464, 29.022104>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.504528, 40.213474, 28.898151> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027242, -0.308685, 0.950774,
		-0.996489, 0.083718, -0.001371,
		-0.079174, -0.947473, -0.309882,
		41.480778, 39.929234, 28.805187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.064568, 40.406940, 29.511457>,  <41.536198, 40.592464, 29.022104>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.064568, 40.406940, 29.511457> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.210377, 40.074215, 29.344027>,  <41.297863, 39.874580, 29.243568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.210377, 40.074215, 29.344027>,  <41.064568, 40.406940, 29.511457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.210377, 40.074215, 29.344027> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107091, -0.483971, 0.868507,
		-0.925017, -0.271762, -0.265497,
		0.364520, -0.831816, -0.418578,
		41.319733, 39.824669, 29.218452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.524849, 39.918022, 29.685129>,  <41.064568, 40.406940, 29.511457>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.524849, 39.918022, 29.685129> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.868580, 39.722321, 29.625559>,  <41.074818, 39.604900, 29.589817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.868580, 39.722321, 29.625559>,  <40.524849, 39.918022, 29.685129>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.868580, 39.722321, 29.625559> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191232, -0.577470, 0.793700,
		-0.474321, -0.653572, -0.589799,
		0.859331, -0.489257, -0.148922,
		41.126377, 39.575542, 29.580881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.388763, 39.245686, 29.891476>,  <40.524849, 39.918022, 29.685129>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.388763, 39.245686, 29.891476> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.788502, 39.260124, 29.892937>,  <41.028343, 39.268787, 29.893812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.788502, 39.260124, 29.892937>,  <40.388763, 39.245686, 29.891476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.788502, 39.260124, 29.892937> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013316, -0.458557, 0.888565,
		0.033746, -0.887932, -0.458736,
		0.999342, 0.036094, 0.003651,
		41.088303, 39.270954, 29.894032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.556225, 38.599178, 30.204752>,  <40.388763, 39.245686, 29.891476>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.556225, 38.599178, 30.204752> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.908283, 38.787304, 30.230486>,  <41.119518, 38.900181, 30.245926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.908283, 38.787304, 30.230486>,  <40.556225, 38.599178, 30.204752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.908283, 38.787304, 30.230486> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226199, -0.534688, 0.814213,
		0.417338, -0.702077, -0.576990,
		0.880149, 0.470317, 0.064336,
		41.172329, 38.928398, 30.249786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.061543, 38.113209, 30.086765>,  <40.556225, 38.599178, 30.204752>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.061543, 38.113209, 30.086765> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.229790, 38.408932, 30.297100>,  <41.330738, 38.586365, 30.423302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.229790, 38.408932, 30.297100>,  <41.061543, 38.113209, 30.086765>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.229790, 38.408932, 30.297100> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320481, -0.663313, 0.676245,
		0.848749, -0.115917, -0.515934,
		0.420614, 0.739310, 0.525837,
		41.355972, 38.630726, 30.454851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.733269, 37.809734, 30.381037>,  <41.061543, 38.113209, 30.086765>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.733269, 37.809734, 30.381037> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.647213, 38.125626, 30.610836>,  <41.595577, 38.315159, 30.748714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.647213, 38.125626, 30.610836>,  <41.733269, 37.809734, 30.381037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.647213, 38.125626, 30.610836> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226922, -0.531745, 0.815937,
		0.949852, 0.305909, -0.064806,
		-0.215143, 0.789726, 0.574497,
		41.582668, 38.362545, 30.783186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.282677, 37.874069, 30.804296>,  <41.733269, 37.809734, 30.381037>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.282677, 37.874069, 30.804296> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.026356, 38.097828, 31.014610>,  <41.872562, 38.232082, 31.140799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.026356, 38.097828, 31.014610>,  <42.282677, 37.874069, 30.804296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.026356, 38.097828, 31.014610> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436565, -0.297837, 0.848943,
		0.631495, 0.773542, -0.053360,
		-0.640800, 0.559398, 0.525784,
		41.834114, 38.265648, 31.172346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.644966, 38.236183, 31.355141>,  <42.282677, 37.874069, 30.804296>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.644966, 38.236183, 31.355141> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.268391, 38.226871, 31.489689>,  <42.042446, 38.221283, 31.570417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.268391, 38.226871, 31.489689>,  <42.644966, 38.236183, 31.355141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.268391, 38.226871, 31.489689> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333259, -0.215835, 0.917798,
		0.051231, 0.976152, 0.210956,
		-0.941442, -0.023283, 0.336369,
		41.985958, 38.219887, 31.590599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.596153, 38.670250, 31.957069>,  <42.644966, 38.236183, 31.355141>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.596153, 38.670250, 31.957069> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.271652, 38.438335, 31.987316>,  <42.076954, 38.299187, 32.005463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.271652, 38.438335, 31.987316>,  <42.596153, 38.670250, 31.957069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.271652, 38.438335, 31.987316> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154420, -0.087716, 0.984104,
		-0.563942, 0.810030, 0.160691,
		-0.811249, -0.579791, 0.075618,
		42.028278, 38.264397, 32.010002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.286915, 38.885574, 32.617935>,  <42.596153, 38.670250, 31.957069>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.286915, 38.885574, 32.617935> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.097466, 38.541134, 32.543980>,  <41.983795, 38.334469, 32.499607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.097466, 38.541134, 32.543980>,  <42.286915, 38.885574, 32.617935>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.097466, 38.541134, 32.543980> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046447, -0.185211, 0.981600,
		-0.879501, 0.473497, 0.047725,
		-0.473624, -0.861102, -0.184886,
		41.955379, 38.282803, 32.488514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.004585, 38.665089, 33.302395>,  <42.286915, 38.885574, 32.617935>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.004585, 38.665089, 33.302395> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.926941, 38.333897, 33.091961>,  <41.880352, 38.135181, 32.965702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.926941, 38.333897, 33.091961>,  <42.004585, 38.665089, 33.302395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.926941, 38.333897, 33.091961> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063287, -0.545736, 0.835564,
		-0.978936, 0.128900, 0.158335,
		-0.194113, -0.827984, -0.526083,
		41.868706, 38.085503, 32.934135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.363361, 38.349434, 33.587315>,  <42.004585, 38.665089, 33.302395>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.363361, 38.349434, 33.587315> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.621738, 38.083298, 33.437607>,  <41.776764, 37.923618, 33.347782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.621738, 38.083298, 33.437607>,  <41.363361, 38.349434, 33.587315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.621738, 38.083298, 33.437607> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079648, -0.428862, 0.899852,
		-0.759216, -0.611066, -0.224029,
		0.645947, -0.665339, -0.374269,
		41.815521, 37.883698, 33.325325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.236519, 37.619308, 33.856392>,  <41.363361, 38.349434, 33.587315>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.236519, 37.619308, 33.856392> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.619724, 37.635891, 33.742912>,  <41.849648, 37.645840, 33.674824>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.619724, 37.635891, 33.742912>,  <41.236519, 37.619308, 33.856392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.619724, 37.635891, 33.742912> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246584, -0.624001, 0.741498,
		-0.146289, -0.780323, -0.608025,
		0.958016, 0.041456, -0.283700,
		41.907127, 37.648327, 33.657803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.551159, 37.035263, 34.061832>,  <41.236519, 37.619308, 33.856392>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.551159, 37.035263, 34.061832> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.892738, 37.223503, 33.973015>,  <42.097687, 37.336449, 33.919724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.892738, 37.223503, 33.973015>,  <41.551159, 37.035263, 34.061832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.892738, 37.223503, 33.973015> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454350, -0.466337, 0.759010,
		0.253642, -0.749044, -0.612045,
		0.853951, 0.470599, -0.222045,
		42.148922, 37.364681, 33.906403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.158520, 36.521397, 33.973942>,  <41.551159, 37.035263, 34.061832>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.158520, 36.521397, 33.973942> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.305180, 36.886078, 34.048100>,  <42.393177, 37.104885, 34.092594>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.305180, 36.886078, 34.048100>,  <42.158520, 36.521397, 33.973942>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.305180, 36.886078, 34.048100> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550441, -0.373230, 0.746802,
		0.750053, -0.171769, -0.638683,
		0.366653, 0.911699, 0.185393,
		42.415176, 37.159588, 34.103718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.970680, 36.487209, 33.893780>,  <42.158520, 36.521397, 33.973942>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.970680, 36.487209, 33.893780> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.906666, 36.807579, 34.124573>,  <42.868259, 36.999802, 34.263050>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.906666, 36.807579, 34.124573>,  <42.970680, 36.487209, 33.893780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.906666, 36.807579, 34.124573> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459413, -0.456924, 0.761683,
		0.873687, 0.386970, -0.294832,
		-0.160033, 0.800922, 0.576987,
		42.858658, 37.047855, 34.297668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.568695, 36.518410, 34.232460>,  <42.970680, 36.487209, 33.893780>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.568695, 36.518410, 34.232460> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.298836, 36.720074, 34.448112>,  <43.136921, 36.841072, 34.577503>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.298836, 36.720074, 34.448112>,  <43.568695, 36.518410, 34.232460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.298836, 36.720074, 34.448112> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305547, -0.474137, 0.825733,
		0.671927, 0.721813, 0.165832,
		-0.674652, 0.504163, 0.539133,
		43.096439, 36.871323, 34.609852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.112667, 35.974030, 34.415977>,  <43.568695, 36.518410, 34.232460>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.112667, 35.974030, 34.415977> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.507572, 35.957619, 34.354500>,  <44.744514, 35.947773, 34.317612>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.507572, 35.957619, 34.354500>,  <44.112667, 35.974030, 34.415977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.507572, 35.957619, 34.354500> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119818, 0.443753, -0.888103,
		0.104644, 0.895209, 0.433186,
		0.987266, -0.041031, -0.153698,
		44.803753, 35.945309, 34.308392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.318226, 36.619843, 34.248928>,  <44.112667, 35.974030, 34.415977>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.318226, 36.619843, 34.248928> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.557003, 36.342323, 34.087780>,  <44.700272, 36.175812, 33.991093>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.557003, 36.342323, 34.087780>,  <44.318226, 36.619843, 34.248928>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.557003, 36.342323, 34.087780> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196219, 0.360650, -0.911828,
		0.777915, 0.623364, 0.079153,
		0.596947, -0.693794, -0.402871,
		44.736088, 36.134186, 33.966919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.634361, 36.927032, 33.706219>,  <44.318226, 36.619843, 34.248928>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.634361, 36.927032, 33.706219> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.725735, 36.547993, 33.616894>,  <44.780560, 36.320568, 33.563297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.725735, 36.547993, 33.616894>,  <44.634361, 36.927032, 33.706219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.725735, 36.547993, 33.616894> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000296, 0.229447, -0.973321,
		0.973560, 0.222271, 0.052693,
		0.228431, -0.947602, -0.223315,
		44.794266, 36.263714, 33.549900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.233768, 36.907482, 33.153740>,  <44.634361, 36.927032, 33.706219>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.233768, 36.907482, 33.153740> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.020420, 36.572033, 33.109505>,  <44.892410, 36.370762, 33.082966>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.020420, 36.572033, 33.109505>,  <45.233768, 36.907482, 33.153740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.020420, 36.572033, 33.109505> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010593, 0.124101, -0.992213,
		0.845816, -0.530388, -0.057308,
		-0.533370, -0.838622, -0.110585,
		44.860409, 36.320446, 33.076328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.591263, 36.316277, 32.593086>,  <45.233768, 36.907482, 33.153740>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.591263, 36.316277, 32.593086> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.192699, 36.292397, 32.617081>,  <44.953560, 36.278069, 32.631477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.192699, 36.292397, 32.617081>,  <45.591263, 36.316277, 32.593086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.192699, 36.292397, 32.617081> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067209, 0.127452, -0.989565,
		0.051430, -0.990047, -0.131007,
		-0.996413, -0.059698, 0.059985,
		44.893776, 36.274487, 32.635075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.417225, 36.170296, 31.981684>,  <45.591263, 36.316277, 32.593086>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.417225, 36.170296, 31.981684> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.045189, 36.222874, 32.118885>,  <44.821968, 36.254421, 32.201206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.045189, 36.222874, 32.118885>,  <45.417225, 36.170296, 31.981684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.045189, 36.222874, 32.118885> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329335, 0.115169, -0.937163,
		-0.162685, -0.984611, -0.063830,
		-0.930093, 0.131441, 0.343003,
		44.766163, 36.262306, 32.221786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.014202, 35.760170, 31.611492>,  <45.417225, 36.170296, 31.981684>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.014202, 35.760170, 31.611492> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.755009, 36.030048, 31.752859>,  <44.599491, 36.191975, 31.837679>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.755009, 36.030048, 31.752859>,  <45.014202, 35.760170, 31.611492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.755009, 36.030048, 31.752859> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377612, 0.118391, -0.918364,
		-0.661454, -0.728543, 0.178056,
		-0.647987, 0.674692, 0.353417,
		44.560612, 36.232456, 31.858885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.305031, 35.680359, 31.228662>,  <45.014202, 35.760170, 31.611492>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.305031, 35.680359, 31.228662> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.293449, 36.054821, 31.368822>,  <44.286503, 36.279499, 31.452919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.293449, 36.054821, 31.368822>,  <44.305031, 35.680359, 31.228662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.293449, 36.054821, 31.368822> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376609, 0.314500, -0.871353,
		-0.925920, -0.157190, 0.343458,
		-0.028951, 0.936152, 0.350401,
		44.284763, 36.335667, 31.473942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.687897, 35.920200, 30.963173>,  <44.305031, 35.680359, 31.228662>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.687897, 35.920200, 30.963173> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.935432, 36.226234, 31.034374>,  <44.083954, 36.409855, 31.077095>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.935432, 36.226234, 31.034374>,  <43.687897, 35.920200, 30.963173>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.935432, 36.226234, 31.034374> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366285, 0.481515, -0.796227,
		-0.694893, 0.427535, 0.578219,
		0.618836, 0.765086, 0.178002,
		44.121082, 36.455761, 31.087774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.252872, 36.558605, 30.797649>,  <43.687897, 35.920200, 30.963173>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.252872, 36.558605, 30.797649> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.633938, 36.678955, 30.815165>,  <43.862576, 36.751163, 30.825674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.633938, 36.678955, 30.815165>,  <43.252872, 36.558605, 30.797649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.633938, 36.678955, 30.815165> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093648, 0.427390, -0.899204,
		-0.289258, 0.852534, 0.435333,
		0.952659, 0.300870, 0.043788,
		43.919735, 36.769215, 30.828300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.264065, 37.283478, 30.561749>,  <43.252872, 36.558605, 30.797649>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.264065, 37.283478, 30.561749> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.654324, 37.201424, 30.530695>,  <43.888481, 37.152191, 30.512062>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.654324, 37.201424, 30.530695>,  <43.264065, 37.283478, 30.561749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.654324, 37.201424, 30.530695> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037535, 0.504882, -0.862372,
		0.216102, 0.838458, 0.500288,
		0.975649, -0.205139, -0.077634,
		43.947018, 37.139881, 30.507404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.610191, 37.984684, 30.531826>,  <43.264065, 37.283478, 30.561749>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.610191, 37.984684, 30.531826> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.863136, 37.713623, 30.381674>,  <44.014904, 37.550987, 30.291582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.863136, 37.713623, 30.381674>,  <43.610191, 37.984684, 30.531826>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.863136, 37.713623, 30.381674> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098900, 0.551220, -0.828478,
		0.768334, 0.486773, 0.415589,
		0.632362, -0.677650, -0.375379,
		44.052845, 37.510326, 30.269060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.214695, 38.314846, 30.326300>,  <43.610191, 37.984684, 30.531826>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.214695, 38.314846, 30.326300> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.225742, 37.976845, 30.112682>,  <44.232368, 37.774044, 29.984512>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.225742, 37.976845, 30.112682>,  <44.214695, 38.314846, 30.326300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.225742, 37.976845, 30.112682> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160755, 0.531048, -0.831953,
		0.986608, -0.062876, 0.150503,
		0.027614, -0.845006, -0.534044,
		44.234028, 37.723343, 29.952469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.750195, 38.430683, 29.945766>,  <44.214695, 38.314846, 30.326300>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.750195, 38.430683, 29.945766> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.525978, 38.165829, 29.746824>,  <44.391449, 38.006916, 29.627459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.525978, 38.165829, 29.746824>,  <44.750195, 38.430683, 29.945766>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.525978, 38.165829, 29.746824> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099713, 0.542244, -0.834283,
		0.822100, -0.517244, -0.237928,
		-0.560543, -0.662140, -0.497355,
		44.357815, 37.967186, 29.597618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.081940, 38.298107, 29.332468>,  <44.750195, 38.430683, 29.945766>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.081940, 38.298107, 29.332468> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.711376, 38.171234, 29.251320>,  <44.489037, 38.095112, 29.202631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.711376, 38.171234, 29.251320>,  <45.081940, 38.298107, 29.332468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.711376, 38.171234, 29.251320> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022949, 0.490244, -0.871283,
		0.375811, -0.811823, -0.446889,
		-0.926412, -0.317183, -0.202869,
		44.433453, 38.076080, 29.190458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.150017, 38.012749, 28.682241>,  <45.081940, 38.298107, 29.332468>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.150017, 38.012749, 28.682241> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.775993, 38.122692, 28.771795>,  <44.551579, 38.188660, 28.825527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.775993, 38.122692, 28.771795>,  <45.150017, 38.012749, 28.682241>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.775993, 38.122692, 28.771795> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047839, 0.527929, -0.847940,
		-0.351262, -0.803581, -0.480493,
		-0.935054, 0.274863, 0.223884,
		44.495476, 38.205151, 28.838961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.793510, 37.929188, 28.041864>,  <45.150017, 38.012749, 28.682241>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.793510, 37.929188, 28.041864> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.549995, 38.164036, 28.255280>,  <44.403885, 38.304947, 28.383327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.549995, 38.164036, 28.255280>,  <44.793510, 37.929188, 28.041864>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.549995, 38.164036, 28.255280> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338122, 0.416360, -0.843990,
		-0.717669, -0.694212, -0.054956,
		-0.608789, 0.587124, 0.533537,
		44.367359, 38.340172, 28.415340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.129494, 37.890438, 27.654545>,  <44.793510, 37.929188, 28.041864>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.129494, 37.890438, 27.654545> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.128319, 38.215813, 27.887205>,  <44.127613, 38.411037, 28.026800>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.128319, 38.215813, 27.887205>,  <44.129494, 37.890438, 27.654545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.128319, 38.215813, 27.887205> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353814, 0.543182, -0.761425,
		-0.935311, -0.208031, 0.286210,
		-0.002935, 0.813435, 0.581649,
		44.127438, 38.459843, 28.061699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.467499, 38.239475, 27.577721>,  <44.129494, 37.890438, 27.654545>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.467499, 38.239475, 27.577721> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.735516, 38.511890, 27.695854>,  <43.896328, 38.675339, 27.766733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.735516, 38.511890, 27.695854>,  <43.467499, 38.239475, 27.577721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.735516, 38.511890, 27.695854> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215744, 0.559341, -0.800370,
		-0.710276, 0.472569, 0.521715,
		0.670047, 0.681040, 0.295333,
		43.936531, 38.716202, 27.784454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.116917, 38.826748, 27.463551>,  <43.467499, 38.239475, 27.577721>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.116917, 38.826748, 27.463551> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.499290, 38.939926, 27.494864>,  <43.728714, 39.007832, 27.513651>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.499290, 38.939926, 27.494864>,  <43.116917, 38.826748, 27.463551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.499290, 38.939926, 27.494864> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159353, 0.724053, -0.671084,
		-0.246559, 0.629040, 0.737236,
		0.955937, 0.282943, 0.078282,
		43.786072, 39.024811, 27.518349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<36.056923, 39.819618, 39.167412> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.757736, 39.610451, 39.003902>,  <35.578224, 39.484951, 38.905796>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.757736, 39.610451, 39.003902>,  <36.056923, 39.819618, 39.167412>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.757736, 39.610451, 39.003902> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662466, -0.550159, -0.508393,
		0.040957, -0.651062, 0.757919,
		-0.747971, -0.522918, -0.408774,
		35.533344, 39.453575, 38.881271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.196991, 39.069302, 39.235970>,  <36.056923, 39.819618, 39.167412>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.196991, 39.069302, 39.235970> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.930233, 39.075729, 38.937981>,  <35.770176, 39.079586, 38.759186>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.930233, 39.075729, 38.937981>,  <36.196991, 39.069302, 39.235970>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.930233, 39.075729, 38.937981> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640084, -0.499503, -0.583772,
		-0.381495, -0.866163, 0.322835,
		-0.666899, 0.016065, -0.744975,
		35.730164, 39.080547, 38.714489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.331238, 38.489128, 38.921764>,  <36.196991, 39.069302, 39.235970>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.331238, 38.489128, 38.921764> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.113003, 38.685352, 38.649975>,  <35.982063, 38.803085, 38.486900>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.113003, 38.685352, 38.649975>,  <36.331238, 38.489128, 38.921764>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.113003, 38.685352, 38.649975> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676939, -0.220004, -0.702390,
		-0.494052, -0.843178, -0.212048,
		-0.545588, 0.490561, -0.679473,
		35.949326, 38.832520, 38.446133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.563118, 38.126991, 38.248203>,  <36.331238, 38.489128, 38.921764>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.563118, 38.126991, 38.248203> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.355835, 38.445683, 38.123829>,  <36.231464, 38.636898, 38.049202>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.355835, 38.445683, 38.123829>,  <36.563118, 38.126991, 38.248203>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.355835, 38.445683, 38.123829> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481798, -0.028436, -0.875821,
		-0.706633, -0.603668, -0.369126,
		-0.518209, 0.796728, -0.310940,
		36.200371, 38.684700, 38.030548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.319641, 37.917126, 37.612904>,  <36.563118, 38.126991, 38.248203>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.319641, 37.917126, 37.612904> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.367413, 38.313671, 37.634541>,  <36.396076, 38.551598, 37.647522>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.367413, 38.313671, 37.634541>,  <36.319641, 37.917126, 37.612904>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.367413, 38.313671, 37.634541> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615479, -0.031179, -0.787536,
		-0.779052, 0.127347, -0.613890,
		0.119431, 0.991368, 0.054089,
		36.403240, 38.611080, 37.650768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.259235, 38.246605, 36.965672>,  <36.319641, 37.917126, 37.612904>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.259235, 38.246605, 36.965672> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.468506, 38.508572, 37.183800>,  <36.594067, 38.665752, 37.314674>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.468506, 38.508572, 37.183800>,  <36.259235, 38.246605, 36.965672>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.468506, 38.508572, 37.183800> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612268, 0.156246, -0.775058,
		-0.592801, 0.739373, -0.319240,
		0.523177, 0.654916, 0.545318,
		36.625458, 38.705048, 37.347397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.461216, 38.761768, 36.475826>,  <36.259235, 38.246605, 36.965672>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.461216, 38.761768, 36.475826> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.695545, 38.833294, 36.792011>,  <36.836143, 38.876209, 36.981724>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.695545, 38.833294, 36.792011>,  <36.461216, 38.761768, 36.475826>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.695545, 38.833294, 36.792011> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790712, 0.087769, -0.605864,
		-0.177718, 0.979959, -0.089977,
		0.585825, 0.178818, 0.790464,
		36.871292, 38.886940, 37.029152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.774281, 39.353100, 36.300148>,  <36.461216, 38.761768, 36.475826>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.774281, 39.353100, 36.300148> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.011185, 39.226086, 36.596363>,  <37.153328, 39.149876, 36.774094>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.011185, 39.226086, 36.596363>,  <36.774281, 39.353100, 36.300148>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.011185, 39.226086, 36.596363> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783315, 0.442269, -0.436825,
		-0.188809, 0.838789, 0.510670,
		0.592257, -0.317539, 0.740541,
		37.188862, 39.130825, 36.818523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.127254, 39.916809, 36.545586>,  <36.774281, 39.353100, 36.300148>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.127254, 39.916809, 36.545586> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.352768, 39.597427, 36.630085>,  <37.488075, 39.405800, 36.680786>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.352768, 39.597427, 36.630085>,  <37.127254, 39.916809, 36.545586>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.352768, 39.597427, 36.630085> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784232, 0.437278, -0.440191,
		0.259096, 0.413840, 0.872700,
		0.563782, -0.798451, 0.211250,
		37.521904, 39.357891, 36.693459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.853535, 40.148827, 36.523010>,  <37.127254, 39.916809, 36.545586>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.853535, 40.148827, 36.523010> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.897354, 39.751530, 36.538357>,  <37.923645, 39.513153, 36.547565>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.897354, 39.751530, 36.538357>,  <37.853535, 40.148827, 36.523010>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.897354, 39.751530, 36.538357> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901326, 0.082993, -0.425117,
		0.419059, 0.081150, 0.904325,
		0.109551, -0.993240, 0.038364,
		37.930218, 39.453556, 36.549866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.526196, 40.006851, 36.848831>,  <37.853535, 40.148827, 36.523010>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.526196, 40.006851, 36.848831> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.401588, 39.709686, 36.611835>,  <38.326824, 39.531387, 36.469639>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.401588, 39.709686, 36.611835>,  <38.526196, 40.006851, 36.848831>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.401588, 39.709686, 36.611835> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877812, 0.013776, -0.478806,
		0.363873, -0.669247, 0.647846,
		-0.311515, -0.742912, -0.592486,
		38.308132, 39.486813, 36.434090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.073360, 39.560253, 36.765152>,  <38.526196, 40.006851, 36.848831>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.073360, 39.560253, 36.765152> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.847317, 39.483326, 36.444237>,  <38.711693, 39.437168, 36.251686>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.847317, 39.483326, 36.444237>,  <39.073360, 39.560253, 36.765152>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.847317, 39.483326, 36.444237> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823824, -0.183851, -0.536202,
		-0.044380, -0.963956, 0.262331,
		-0.565105, -0.192318, -0.802290,
		38.677784, 39.425629, 36.203548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.504288, 39.067455, 36.337982>,  <39.073360, 39.560253, 36.765152>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.504288, 39.067455, 36.337982> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.195400, 39.147434, 36.096752>,  <39.010067, 39.195423, 35.952015>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.195400, 39.147434, 36.096752>,  <39.504288, 39.067455, 36.337982>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.195400, 39.147434, 36.096752> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566534, -0.212974, -0.796041,
		-0.287609, -0.956379, 0.051182,
		-0.772218, 0.199952, -0.603075,
		38.963734, 39.207420, 35.915829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.739239, 38.527489, 36.691399>,  <39.504288, 39.067455, 36.337982>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.739239, 38.527489, 36.691399> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.006271, 38.232277, 36.652119>,  <40.166492, 38.055149, 36.628551>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.006271, 38.232277, 36.652119>,  <39.739239, 38.527489, 36.691399>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.006271, 38.232277, 36.652119> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676284, -0.656248, 0.334632,
		-0.311411, -0.156986, -0.937219,
		0.667581, -0.738034, -0.098195,
		40.206547, 38.010868, 36.622662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.298786, 37.903069, 36.493397>,  <39.739239, 38.527489, 36.691399>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.298786, 37.903069, 36.493397> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.640343, 37.747608, 36.631859>,  <39.845276, 37.654331, 36.714935>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.640343, 37.747608, 36.631859>,  <39.298786, 37.903069, 36.493397>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.640343, 37.747608, 36.631859> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517287, -0.707023, 0.482216,
		0.057327, -0.590822, -0.804763,
		0.853889, -0.388650, 0.346156,
		39.896511, 37.631012, 36.735706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.138462, 37.228855, 36.471035>,  <39.298786, 37.903069, 36.493397>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.138462, 37.228855, 36.471035> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.447437, 37.274441, 36.720947>,  <39.632824, 37.301792, 36.870895>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.447437, 37.274441, 36.720947>,  <39.138462, 37.228855, 36.471035>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.447437, 37.274441, 36.720947> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405785, -0.668203, 0.623573,
		0.488540, -0.735199, -0.469905,
		0.772442, 0.113959, 0.624777,
		39.679169, 37.308628, 36.908379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.160740, 36.606087, 36.722904>,  <39.138462, 37.228855, 36.471035>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.160740, 36.606087, 36.722904> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.375229, 36.798149, 37.000584>,  <39.503922, 36.913387, 37.167191>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.375229, 36.798149, 37.000584>,  <39.160740, 36.606087, 36.722904>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.375229, 36.798149, 37.000584> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388612, -0.589652, 0.708019,
		0.749297, -0.649431, -0.129591,
		0.536223, 0.480156, 0.694201,
		39.536095, 36.942196, 37.208843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.262806, 36.044960, 37.266552>,  <39.160740, 36.606087, 36.722904>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.262806, 36.044960, 37.266552> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.349823, 36.389439, 37.450294>,  <39.402031, 36.596127, 37.560539>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.349823, 36.389439, 37.450294>,  <39.262806, 36.044960, 37.266552>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.349823, 36.389439, 37.450294> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403423, -0.349214, 0.845754,
		0.888778, -0.369302, 0.271459,
		0.217541, 0.861200, 0.459358,
		39.415085, 36.647800, 37.588100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.720116, 35.841045, 37.808002>,  <39.262806, 36.044960, 37.266552>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.720116, 35.841045, 37.808002> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.533794, 36.187492, 37.880520>,  <39.422001, 36.395363, 37.924030>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.533794, 36.187492, 37.880520>,  <39.720116, 35.841045, 37.808002>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.533794, 36.187492, 37.880520> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306527, -0.350123, 0.885130,
		0.830103, 0.356722, 0.428576,
		-0.465800, 0.866119, 0.181294,
		39.394054, 36.447327, 37.934910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.740818, 35.943619, 38.546436>,  <39.720116, 35.841045, 37.808002>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.740818, 35.943619, 38.546436> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.488976, 36.244228, 38.467644>,  <39.337868, 36.424595, 38.420368>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.488976, 36.244228, 38.467644>,  <39.740818, 35.943619, 38.546436>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.488976, 36.244228, 38.467644> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509250, -0.207732, 0.835171,
		0.586734, 0.626144, 0.513504,
		-0.629609, 0.751525, -0.196981,
		39.300095, 36.469685, 38.408550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.772720, 36.368832, 39.120876>,  <39.740818, 35.943619, 38.546436>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.772720, 36.368832, 39.120876> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.423908, 36.406170, 38.928688>,  <39.214622, 36.428574, 38.813374>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.423908, 36.406170, 38.928688>,  <39.772720, 36.368832, 39.120876>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.423908, 36.406170, 38.928688> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486712, -0.061627, 0.871386,
		0.051733, 0.993724, 0.099175,
		-0.872029, 0.093349, -0.480469,
		39.162300, 36.434174, 38.784546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.400417, 36.927811, 39.420788>,  <39.772720, 36.368832, 39.120876>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.400417, 36.927811, 39.420788> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.128468, 36.686954, 39.253361>,  <38.965298, 36.542439, 39.152905>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.128468, 36.686954, 39.253361>,  <39.400417, 36.927811, 39.420788>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.128468, 36.686954, 39.253361> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614185, 0.155676, 0.773655,
		-0.400691, 0.783062, -0.475667,
		-0.679870, -0.602145, -0.418567,
		38.924507, 36.506310, 39.127792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.759712, 37.338589, 39.397293>,  <39.400417, 36.927811, 39.420788>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.759712, 37.338589, 39.397293> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.636944, 36.963978, 39.329510>,  <38.563282, 36.739212, 39.288837>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.636944, 36.963978, 39.329510>,  <38.759712, 37.338589, 39.397293>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.636944, 36.963978, 39.329510> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797993, 0.156194, 0.582074,
		-0.518659, 0.313880, -0.795281,
		-0.306920, -0.936527, -0.169463,
		38.544868, 36.683022, 39.278671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.097290, 37.383183, 39.129887>,  <38.759712, 37.338589, 39.397293>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.097290, 37.383183, 39.129887> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.124165, 37.002388, 39.249363>,  <38.140289, 36.773911, 39.321049>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.124165, 37.002388, 39.249363>,  <38.097290, 37.383183, 39.129887>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.124165, 37.002388, 39.249363> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.926785, 0.051326, 0.372068,
		-0.369533, -0.301821, -0.878834,
		0.067191, -0.951982, 0.298690,
		38.144321, 36.716793, 39.338970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.453506, 37.069771, 38.935879>,  <38.097290, 37.383183, 39.129887>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.453506, 37.069771, 38.935879> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.610863, 36.860863, 39.238529>,  <37.705276, 36.735516, 39.420120>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.610863, 36.860863, 39.238529>,  <37.453506, 37.069771, 38.935879>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.610863, 36.860863, 39.238529> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.880324, 0.023317, 0.473800,
		-0.265095, -0.852459, -0.450597,
		0.393389, -0.522273, 0.756621,
		37.728878, 36.704182, 39.465515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.923523, 36.655621, 39.085178>,  <37.453506, 37.069771, 38.935879>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.923523, 36.655621, 39.085178> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.136265, 36.635906, 39.423340>,  <37.263908, 36.624077, 39.626236>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.136265, 36.635906, 39.423340>,  <36.923523, 36.655621, 39.085178>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.136265, 36.635906, 39.423340> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833911, 0.143267, 0.532980,
		-0.147386, -0.988456, 0.035098,
		0.531855, -0.049285, 0.845400,
		37.295822, 36.621120, 39.676960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.552357, 36.160980, 39.538521>,  <36.923523, 36.655621, 39.085178>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.552357, 36.160980, 39.538521> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.800545, 36.351707, 39.787571>,  <36.949459, 36.466145, 39.937000>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.800545, 36.351707, 39.787571>,  <36.552357, 36.160980, 39.538521>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.800545, 36.351707, 39.787571> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758431, 0.162878, 0.631074,
		0.199498, -0.863778, 0.462696,
		0.620470, 0.476821, 0.622622,
		36.986687, 36.494751, 39.974358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.477539, 35.932793, 40.233414>,  <36.552357, 36.160980, 39.538521>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.477539, 35.932793, 40.233414> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.631702, 36.298611, 40.282505>,  <36.724201, 36.518101, 40.311962>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.631702, 36.298611, 40.282505>,  <36.477539, 35.932793, 40.233414>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.631702, 36.298611, 40.282505> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720407, 0.215109, 0.659349,
		0.576606, -0.342535, 0.741752,
		0.385408, 0.914548, 0.122731,
		36.747326, 36.572975, 40.319324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.449219, 35.257221, 40.401688>,  <36.477539, 35.932793, 40.233414>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.449219, 35.257221, 40.401688> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.121666, 35.152946, 40.197147>,  <35.925133, 35.090382, 40.074425>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.121666, 35.152946, 40.197147>,  <36.449219, 35.257221, 40.401688>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.121666, 35.152946, 40.197147> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569621, -0.259732, -0.779789,
		0.070466, -0.929829, 0.361181,
		-0.818881, -0.260685, -0.511348,
		35.876003, 35.074741, 40.043743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.702751, 34.675667, 39.980770>,  <36.449219, 35.257221, 40.401688>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.702751, 34.675667, 39.980770> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.368999, 34.781364, 39.787281>,  <36.168747, 34.844784, 39.671188>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.368999, 34.781364, 39.787281>,  <36.702751, 34.675667, 39.980770>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.368999, 34.781364, 39.787281> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367307, -0.387786, -0.845404,
		-0.410976, -0.883061, 0.226500,
		-0.834376, 0.264245, -0.483725,
		36.118687, 34.860638, 39.642162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.548424, 34.004124, 39.545792>,  <36.702751, 34.675667, 39.980770>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.548424, 34.004124, 39.545792> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.360332, 34.314812, 39.378178>,  <36.247478, 34.501225, 39.277611>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.360332, 34.314812, 39.378178>,  <36.548424, 34.004124, 39.545792>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.360332, 34.314812, 39.378178> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278414, -0.319999, -0.905586,
		-0.837478, -0.542498, -0.065777,
		-0.470230, 0.776722, -0.419031,
		36.219265, 34.547829, 39.252468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.312290, 33.836655, 38.935692>,  <36.548424, 34.004124, 39.545792>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.312290, 33.836655, 38.935692> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.267036, 34.225975, 38.855812>,  <36.239883, 34.459568, 38.807884>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.267036, 34.225975, 38.855812>,  <36.312290, 33.836655, 38.935692>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.267036, 34.225975, 38.855812> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291475, -0.159636, -0.943164,
		-0.949865, -0.164912, -0.265634,
		-0.113134, 0.973304, -0.199700,
		36.233097, 34.517967, 38.795902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.996609, 33.788521, 38.233101>,  <36.312290, 33.836655, 38.935692>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.996609, 33.788521, 38.233101> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.142937, 34.158176, 38.277176>,  <36.230732, 34.379971, 38.303619>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.142937, 34.158176, 38.277176>,  <35.996609, 33.788521, 38.233101>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.142937, 34.158176, 38.277176> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278587, 0.004228, -0.960402,
		-0.888011, 0.382031, -0.255907,
		0.365821, 0.924140, 0.110183,
		36.252682, 34.435417, 38.310230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.789242, 34.214939, 37.666527>,  <35.996609, 33.788521, 38.233101>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.789242, 34.214939, 37.666527> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.123264, 34.383633, 37.807850>,  <36.323677, 34.484848, 37.892643>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.123264, 34.383633, 37.807850>,  <35.789242, 34.214939, 37.666527>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.123264, 34.383633, 37.807850> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338522, 0.112350, -0.934227,
		-0.433690, 0.899732, -0.048948,
		0.835055, 0.421735, 0.353303,
		36.373779, 34.510155, 37.913841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.923439, 34.813335, 37.212505>,  <35.789242, 34.214939, 37.666527>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.923439, 34.813335, 37.212505> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.265427, 34.763905, 37.414001>,  <36.470619, 34.734245, 37.534901>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.265427, 34.763905, 37.414001>,  <35.923439, 34.813335, 37.212505>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.265427, 34.763905, 37.414001> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515386, 0.311684, -0.798267,
		-0.058360, 0.942115, 0.330170,
		0.854969, -0.123579, 0.503743,
		36.521915, 34.726830, 37.565125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.302483, 35.443993, 37.062038>,  <35.923439, 34.813335, 37.212505>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.302483, 35.443993, 37.062038> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.551060, 35.142967, 37.149178>,  <36.700203, 34.962353, 37.201462>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.551060, 35.142967, 37.149178>,  <36.302483, 35.443993, 37.062038>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.551060, 35.142967, 37.149178> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530771, 0.199877, -0.823609,
		0.576279, 0.627448, 0.523652,
		0.621438, -0.752567, 0.217846,
		36.737492, 34.917198, 37.214531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.940311, 35.717194, 36.853886>,  <36.302483, 35.443993, 37.062038>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.940311, 35.717194, 36.853886> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.007484, 35.324265, 36.886971>,  <37.047787, 35.088509, 36.906822>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.007484, 35.324265, 36.886971>,  <36.940311, 35.717194, 36.853886>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.007484, 35.324265, 36.886971> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721264, 0.065241, -0.689581,
		0.671994, 0.175462, 0.719470,
		0.167934, -0.982322, 0.082713,
		37.057865, 35.029568, 36.911785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.657310, 35.766190, 36.843384>,  <36.940311, 35.717194, 36.853886>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.657310, 35.766190, 36.843384> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.538902, 35.394756, 36.753841>,  <37.467857, 35.171898, 36.700115>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.538902, 35.394756, 36.753841>,  <37.657310, 35.766190, 36.843384>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.538902, 35.394756, 36.753841> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747066, -0.079039, -0.660035,
		0.595203, -0.362615, 0.717108,
		-0.296018, -0.928581, -0.223853,
		37.450096, 35.116180, 36.686684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.208115, 35.221504, 36.893200>,  <37.657310, 35.766190, 36.843384>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.208115, 35.221504, 36.893200> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.945068, 35.043453, 36.650085>,  <37.787239, 34.936623, 36.504215>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.945068, 35.043453, 36.650085>,  <38.208115, 35.221504, 36.893200>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.945068, 35.043453, 36.650085> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695315, -0.048105, -0.717093,
		0.289958, -0.894176, 0.341136,
		-0.657618, -0.445124, -0.607786,
		37.747784, 34.909916, 36.467751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.432777, 34.455868, 36.495228>,  <38.208115, 35.221504, 36.893200>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.432777, 34.455868, 36.495228> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.191410, 34.709602, 36.301937>,  <38.046589, 34.861843, 36.185963>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.191410, 34.709602, 36.301937>,  <38.432777, 34.455868, 36.495228>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.191410, 34.709602, 36.301937> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641928, 0.026894, -0.766293,
		-0.473092, -0.772589, -0.423426,
		-0.603417, 0.634336, -0.483223,
		38.010384, 34.899902, 36.156971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<33.752880, 34.888397, 43.238869> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.563778, 35.057541, 42.929626>,  <33.450317, 35.159027, 42.744080>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.563778, 35.057541, 42.929626>,  <33.752880, 34.888397, 43.238869>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.563778, 35.057541, 42.929626> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696542, -0.358067, -0.621785,
		-0.539751, -0.832454, -0.125260,
		-0.472756, 0.422858, -0.773106,
		33.421951, 35.184399, 42.697693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.853065, 34.403782, 42.639687>,  <33.752880, 34.888397, 43.238869>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.853065, 34.403782, 42.639687> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.707256, 34.730045, 42.459988>,  <33.619770, 34.925804, 42.352169>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.707256, 34.730045, 42.459988>,  <33.853065, 34.403782, 42.639687>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.707256, 34.730045, 42.459988> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568289, -0.187328, -0.801221,
		-0.737679, -0.547367, -0.395244,
		-0.364522, 0.815657, -0.449251,
		33.597900, 34.974743, 42.325211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.832767, 34.193844, 41.948051>,  <33.853065, 34.403782, 42.639687>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.832767, 34.193844, 41.948051> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.817657, 34.593464, 41.939388>,  <33.808590, 34.833237, 41.934193>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.817657, 34.593464, 41.939388>,  <33.832767, 34.193844, 41.948051>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.817657, 34.593464, 41.939388> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612717, 0.006039, -0.790279,
		-0.789399, -0.043124, -0.612364,
		-0.037778, 0.999052, -0.021656,
		33.806324, 34.893181, 41.932892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.708752, 34.400616, 41.206284>,  <33.832767, 34.193844, 41.948051>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.708752, 34.400616, 41.206284> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.881413, 34.705978, 41.398487>,  <33.985008, 34.889194, 41.513809>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.881413, 34.705978, 41.398487>,  <33.708752, 34.400616, 41.206284>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.881413, 34.705978, 41.398487> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568593, 0.183265, -0.801945,
		-0.700271, 0.619372, -0.354962,
		0.431651, 0.763408, 0.480506,
		34.010906, 34.935001, 41.542641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.536304, 34.929813, 40.809071>,  <33.708752, 34.400616, 41.206284>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.536304, 34.929813, 40.809071> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.855362, 35.050865, 41.017757>,  <34.046795, 35.123497, 41.142967>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.855362, 35.050865, 41.017757>,  <33.536304, 34.929813, 40.809071>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.855362, 35.050865, 41.017757> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498526, 0.156053, -0.852713,
		-0.339470, 0.940246, -0.026394,
		0.797641, 0.302629, 0.521713,
		34.094654, 35.141655, 41.174271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.888050, 35.401028, 40.305283>,  <33.536304, 34.929813, 40.809071>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.888050, 35.401028, 40.305283> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.140015, 35.312347, 40.603024>,  <34.291191, 35.259140, 40.781670>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.140015, 35.312347, 40.603024>,  <33.888050, 35.401028, 40.305283>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.140015, 35.312347, 40.603024> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762524, -0.005548, -0.646936,
		0.147554, 0.975100, 0.165555,
		0.629908, -0.221697, 0.744356,
		34.328987, 35.245838, 40.826332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.473721, 35.847855, 40.200523>,  <33.888050, 35.401028, 40.305283>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.473721, 35.847855, 40.200523> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.629536, 35.538952, 40.401276>,  <34.723022, 35.353611, 40.521725>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.629536, 35.538952, 40.401276>,  <34.473721, 35.847855, 40.200523>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.629536, 35.538952, 40.401276> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782712, -0.009619, -0.622309,
		0.485410, 0.635238, 0.600708,
		0.389536, -0.772256, 0.501878,
		34.746395, 35.307274, 40.551838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.191071, 35.949902, 40.295017>,  <34.473721, 35.847855, 40.200523>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.191071, 35.949902, 40.295017> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.167747, 35.557194, 40.367386>,  <35.153755, 35.321571, 40.410809>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.167747, 35.557194, 40.367386>,  <35.191071, 35.949902, 40.295017>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.167747, 35.557194, 40.367386> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797160, -0.154882, -0.583564,
		0.600946, 0.110203, 0.791656,
		-0.058303, -0.981767, 0.180925,
		35.150257, 35.262665, 40.421665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.825405, 35.713375, 40.525223>,  <35.191071, 35.949902, 40.295017>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.825405, 35.713375, 40.525223> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.634403, 35.402012, 40.362217>,  <35.519802, 35.215195, 40.264412>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.634403, 35.402012, 40.362217>,  <35.825405, 35.713375, 40.525223>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.634403, 35.402012, 40.362217> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751723, -0.121826, -0.648129,
		0.454863, -0.615824, 0.643320,
		-0.477507, -0.778408, -0.407515,
		35.491150, 35.168491, 40.239964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.387268, 36.052940, 40.932877>,  <35.825405, 35.713375, 40.525223>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.387268, 36.052940, 40.932877> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.454281, 36.412445, 40.770813>,  <36.494488, 36.628147, 40.673576>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.454281, 36.412445, 40.770813>,  <36.387268, 36.052940, 40.932877>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.454281, 36.412445, 40.770813> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697197, 0.398573, 0.595865,
		0.697028, 0.182648, 0.693392,
		0.167534, 0.898765, -0.405158,
		36.504539, 36.682076, 40.649265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.521927, 36.414406, 41.484406>,  <36.387268, 36.052940, 40.932877>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.521927, 36.414406, 41.484406> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.417274, 36.665257, 41.190941>,  <36.354485, 36.815769, 41.014862>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.417274, 36.665257, 41.190941>,  <36.521927, 36.414406, 41.484406>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.417274, 36.665257, 41.190941> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656514, 0.441567, 0.611562,
		0.707489, 0.641661, 0.296193,
		-0.261627, 0.627128, -0.733663,
		36.338787, 36.853394, 40.970840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.412392, 37.096077, 41.766163>,  <36.521927, 36.414406, 41.484406>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.412392, 37.096077, 41.766163> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.196953, 37.100224, 41.429161>,  <36.067692, 37.102711, 41.226959>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.196953, 37.100224, 41.429161>,  <36.412392, 37.096077, 41.766163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.196953, 37.100224, 41.429161> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718155, 0.517295, 0.465466,
		0.440648, 0.855744, -0.271166,
		-0.538593, 0.010368, -0.842502,
		36.035374, 37.103333, 41.176411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.108681, 37.790318, 41.741535>,  <36.412392, 37.096077, 41.766163>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.108681, 37.790318, 41.741535> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.886135, 37.569992, 41.492680>,  <35.752605, 37.437798, 41.343365>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.886135, 37.569992, 41.492680>,  <36.108681, 37.790318, 41.741535>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.886135, 37.569992, 41.492680> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823200, 0.467299, 0.322448,
		0.113117, 0.691546, -0.713421,
		-0.556369, -0.550814, -0.622140,
		35.719223, 37.404747, 41.306038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.600239, 38.284706, 41.416389>,  <36.108681, 37.790318, 41.741535>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.600239, 38.284706, 41.416389> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.473522, 37.905724, 41.398647>,  <35.397491, 37.678333, 41.388000>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.473522, 37.905724, 41.398647>,  <35.600239, 38.284706, 41.416389>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.473522, 37.905724, 41.398647> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.888337, 0.279985, 0.363958,
		-0.332415, 0.154702, -0.930359,
		-0.316792, -0.947457, -0.044356,
		35.378483, 37.621487, 41.385342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.845482, 38.260521, 41.335896>,  <35.600239, 38.284706, 41.416389>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.845482, 38.260521, 41.335896> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.881699, 37.890110, 41.482471>,  <34.903427, 37.667862, 41.570415>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.881699, 37.890110, 41.482471>,  <34.845482, 38.260521, 41.335896>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.881699, 37.890110, 41.482471> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737647, 0.184846, 0.649392,
		-0.669089, -0.329098, -0.666345,
		0.090542, -0.926027, 0.366436,
		34.908863, 37.612301, 41.592403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.191849, 38.107437, 41.426125>,  <34.845482, 38.260521, 41.335896>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.191849, 38.107437, 41.426125> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.400028, 37.848907, 41.649338>,  <34.524937, 37.693790, 41.783268>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.400028, 37.848907, 41.649338>,  <34.191849, 38.107437, 41.426125>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.400028, 37.848907, 41.649338> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728152, 0.005429, 0.685395,
		-0.446015, -0.763046, -0.467795,
		0.520448, -0.646321, 0.558034,
		34.556164, 37.655010, 41.816750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.740074, 37.559395, 41.503826>,  <34.191849, 38.107437, 41.426125>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.740074, 37.559395, 41.503826> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.002945, 37.535774, 41.804394>,  <34.160667, 37.521603, 41.984734>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.002945, 37.535774, 41.804394>,  <33.740074, 37.559395, 41.503826>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.002945, 37.535774, 41.804394> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713178, 0.273910, 0.645252,
		-0.243927, -0.959940, 0.137891,
		0.657173, -0.059054, 0.751422,
		34.200096, 37.518059, 42.029819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.415203, 37.106873, 41.955242>,  <33.740074, 37.559395, 41.503826>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.415203, 37.106873, 41.955242> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.699265, 37.301491, 42.158791>,  <33.869701, 37.418262, 42.280922>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.699265, 37.301491, 42.158791>,  <33.415203, 37.106873, 41.955242>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.699265, 37.301491, 42.158791> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685218, 0.311604, 0.658315,
		0.161736, -0.816194, 0.554679,
		0.710154, 0.486549, 0.508873,
		33.912312, 37.447456, 42.311451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.393234, 36.924171, 42.703621>,  <33.415203, 37.106873, 41.955242>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.393234, 36.924171, 42.703621> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.578003, 37.278934, 42.705757>,  <33.688866, 37.491791, 42.707039>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.578003, 37.278934, 42.705757>,  <33.393234, 36.924171, 42.703621>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.578003, 37.278934, 42.705757> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571718, 0.293149, 0.766291,
		0.678060, -0.357022, 0.642472,
		0.461922, 0.886904, 0.005343,
		33.716579, 37.545006, 42.707359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.519321, 37.064499, 43.409157>,  <33.393234, 36.924171, 42.703621>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.519321, 37.064499, 43.409157> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.551315, 37.420467, 43.229538>,  <33.570511, 37.634048, 43.121769>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.551315, 37.420467, 43.229538>,  <33.519321, 37.064499, 43.409157>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.551315, 37.420467, 43.229538> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444519, 0.435057, 0.783025,
		0.892191, 0.136976, 0.430386,
		0.079987, 0.889923, -0.449043,
		33.575310, 37.687443, 43.094826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.756428, 37.549644, 43.912773>,  <33.519321, 37.064499, 43.409157>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.756428, 37.549644, 43.912773> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.569405, 37.752136, 43.622913>,  <33.457191, 37.873631, 43.448997>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.569405, 37.752136, 43.622913>,  <33.756428, 37.549644, 43.912773>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.569405, 37.752136, 43.622913> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460259, 0.560471, 0.688502,
		0.754685, 0.655443, -0.029058,
		-0.467560, 0.506228, -0.724652,
		33.429138, 37.904003, 43.405518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.918430, 38.211899, 44.193226>,  <33.756428, 37.549644, 43.912773>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.918430, 38.211899, 44.193226> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.629536, 38.250229, 43.919239>,  <33.456200, 38.273228, 43.754845>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.629536, 38.250229, 43.919239>,  <33.918430, 38.211899, 44.193226>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.629536, 38.250229, 43.919239> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471044, 0.657024, 0.588589,
		0.506445, 0.747754, -0.429391,
		-0.722241, 0.095826, -0.684971,
		33.412865, 38.278976, 43.713749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.795841, 38.973347, 44.158680>,  <33.918430, 38.211899, 44.193226>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.795841, 38.973347, 44.158680> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.479931, 38.790375, 43.995213>,  <33.290382, 38.680592, 43.897133>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.479931, 38.790375, 43.995213>,  <33.795841, 38.973347, 44.158680>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.479931, 38.790375, 43.995213> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612714, 0.557000, 0.560653,
		-0.028830, 0.693188, -0.720180,
		-0.789778, -0.457428, -0.408668,
		33.242996, 38.653145, 43.872612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<27.748280, 39.617416, 38.894676> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.066240, 39.554630, 39.129108>,  <28.257017, 39.516960, 39.269768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.066240, 39.554630, 39.129108>,  <27.748280, 39.617416, 38.894676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.066240, 39.554630, 39.129108> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606190, 0.164432, -0.778136,
		0.025769, 0.973819, 0.225858,
		0.794903, -0.156965, 0.586082,
		28.304710, 39.507542, 39.304932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.190836, 40.256783, 38.829193>,  <27.748280, 39.617416, 38.894676>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.190836, 40.256783, 38.829193> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.412663, 39.945026, 38.945816>,  <28.545757, 39.757973, 39.015789>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.412663, 39.945026, 38.945816>,  <28.190836, 40.256783, 38.829193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.412663, 39.945026, 38.945816> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644076, 0.180175, -0.743440,
		0.526901, 0.600070, 0.601907,
		0.554565, -0.779393, 0.291556,
		28.579031, 39.711208, 39.033283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.891985, 40.494701, 38.713417>,  <28.190836, 40.256783, 38.829193>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.891985, 40.494701, 38.713417> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.895838, 40.095631, 38.740395>,  <28.898149, 39.856190, 38.756580>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.895838, 40.095631, 38.740395>,  <28.891985, 40.494701, 38.713417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.895838, 40.095631, 38.740395> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789686, -0.033786, -0.612580,
		0.613436, 0.059159, 0.787526,
		0.009632, -0.997677, 0.067442,
		28.898727, 39.796329, 38.760628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.606983, 40.331066, 39.000977>,  <28.891985, 40.494701, 38.713417>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.606983, 40.331066, 39.000977> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.437622, 40.024834, 38.807232>,  <29.336004, 39.841095, 38.690987>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.437622, 40.024834, 38.807232>,  <29.606983, 40.331066, 39.000977>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.437622, 40.024834, 38.807232> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731712, 0.026245, -0.681108,
		0.534159, -0.642798, 0.549076,
		-0.423404, -0.765585, -0.484363,
		29.310600, 39.795158, 38.661922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.163631, 40.260864, 38.499199>,  <29.606983, 40.331066, 39.000977>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.163631, 40.260864, 38.499199> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.907406, 39.974304, 38.388596>,  <29.753670, 39.802368, 38.322235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.907406, 39.974304, 38.388596>,  <30.163631, 40.260864, 38.499199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.907406, 39.974304, 38.388596> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567367, -0.198891, -0.799086,
		0.517467, -0.668745, 0.533862,
		-0.640564, -0.716396, -0.276504,
		29.715237, 39.759384, 38.305645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.668325, 39.654770, 38.363953>,  <30.163631, 40.260864, 38.499199>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.668325, 39.654770, 38.363953> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.306187, 39.606518, 38.201080>,  <30.088903, 39.577568, 38.103355>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.306187, 39.606518, 38.201080>,  <30.668325, 39.654770, 38.363953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.306187, 39.606518, 38.201080> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424049, -0.204701, -0.882202,
		0.023067, -0.971363, 0.236477,
		-0.905345, -0.120627, -0.407184,
		30.034582, 39.570332, 38.078926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.642385, 39.025368, 38.045151>,  <30.668325, 39.654770, 38.363953>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.642385, 39.025368, 38.045151> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.374817, 39.236446, 37.835739>,  <30.214275, 39.363094, 37.710094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.374817, 39.236446, 37.835739>,  <30.642385, 39.025368, 38.045151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.374817, 39.236446, 37.835739> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427037, -0.303666, -0.851720,
		-0.608427, -0.793299, -0.022218,
		-0.668921, 0.527697, -0.523526,
		30.174141, 39.394756, 37.678680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.334690, 38.527905, 37.611591>,  <30.642385, 39.025368, 38.045151>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.334690, 38.527905, 37.611591> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.282267, 38.889774, 37.449413>,  <30.250813, 39.106895, 37.352108>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.282267, 38.889774, 37.449413>,  <30.334690, 38.527905, 37.611591>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.282267, 38.889774, 37.449413> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230821, -0.369887, -0.899947,
		-0.964129, -0.211530, -0.160342,
		-0.131058, 0.904676, -0.405445,
		30.242949, 39.161179, 37.327782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.968115, 38.449333, 36.964134>,  <30.334690, 38.527905, 37.611591>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.968115, 38.449333, 36.964134> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.142992, 38.808338, 36.941048>,  <30.247917, 39.023743, 36.927197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.142992, 38.808338, 36.941048>,  <29.968115, 38.449333, 36.964134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.142992, 38.808338, 36.941048> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184071, -0.152113, -0.971071,
		-0.880331, 0.413919, -0.231709,
		0.437191, 0.897515, -0.057719,
		30.274149, 39.077591, 36.923733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.750256, 38.760773, 36.227829>,  <29.968115, 38.449333, 36.964134>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.750256, 38.760773, 36.227829> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.059307, 38.969913, 36.371868>,  <30.244738, 39.095398, 36.458294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.059307, 38.969913, 36.371868>,  <29.750256, 38.760773, 36.227829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.059307, 38.969913, 36.371868> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446341, -0.044000, -0.893780,
		-0.451470, 0.851288, -0.267365,
		0.772628, 0.522851, 0.360100,
		30.291096, 39.126770, 36.479897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.953907, 39.241287, 35.644890>,  <29.750256, 38.760773, 36.227829>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.953907, 39.241287, 35.644890> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.269608, 39.217823, 35.889393>,  <30.459028, 39.203743, 36.036095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.269608, 39.217823, 35.889393>,  <29.953907, 39.241287, 35.644890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.269608, 39.217823, 35.889393> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610387, 0.183794, -0.770485,
		-0.067146, 0.981213, 0.180868,
		0.789252, -0.058665, 0.611260,
		30.506384, 39.200222, 36.072769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.384514, 39.813549, 35.500076>,  <29.953907, 39.241287, 35.644890>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.384514, 39.813549, 35.500076> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.619951, 39.539639, 35.671955>,  <30.761213, 39.375294, 35.775082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.619951, 39.539639, 35.671955>,  <30.384514, 39.813549, 35.500076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.619951, 39.539639, 35.671955> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621254, 0.043016, -0.782428,
		0.517302, 0.727485, 0.450737,
		0.588593, -0.684774, 0.429700,
		30.796530, 39.334206, 35.800865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.054207, 40.160583, 35.606327>,  <30.384514, 39.813549, 35.500076>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.054207, 40.160583, 35.606327> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.139458, 39.769836, 35.613323>,  <31.190607, 39.535389, 35.617519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.139458, 39.769836, 35.613323>,  <31.054207, 40.160583, 35.606327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.139458, 39.769836, 35.613323> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605879, 0.118099, -0.786742,
		0.766478, 0.178272, 0.617034,
		0.213125, -0.976868, 0.017491,
		31.203396, 39.476776, 35.618572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.789938, 40.100937, 35.512341>,  <31.054207, 40.160583, 35.606327>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.789938, 40.100937, 35.512341> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.644983, 39.736546, 35.433556>,  <31.558010, 39.517910, 35.386284>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.644983, 39.736546, 35.433556>,  <31.789938, 40.100937, 35.512341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.644983, 39.736546, 35.433556> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778545, -0.179695, -0.601313,
		0.512392, -0.371249, 0.774357,
		-0.362385, -0.910980, -0.196959,
		31.536268, 39.463253, 35.374466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.198544, 40.349247, 36.121471>,  <31.789938, 40.100937, 35.512341>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.198544, 40.349247, 36.121471> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.422340, 40.675442, 36.180740>,  <32.556618, 40.871159, 36.216301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.422340, 40.675442, 36.180740>,  <32.198544, 40.349247, 36.121471>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.422340, 40.675442, 36.180740> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495831, 0.186055, 0.848254,
		0.664171, -0.548057, 0.508439,
		0.559489, 0.815486, 0.148171,
		32.590187, 40.920086, 36.225193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.529251, 40.285801, 36.791958>,  <32.198544, 40.349247, 36.121471>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.529251, 40.285801, 36.791958> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.529163, 40.681797, 36.735516>,  <32.529110, 40.919395, 36.701649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.529163, 40.681797, 36.735516>,  <32.529251, 40.285801, 36.791958>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.529163, 40.681797, 36.735516> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322422, 0.133502, 0.937134,
		0.946596, 0.045707, 0.319166,
		-0.000224, 0.989994, -0.141109,
		32.529095, 40.978794, 36.693184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.891171, 40.595776, 37.392048>,  <32.529251, 40.285801, 36.791958>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.891171, 40.595776, 37.392048> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.678047, 40.892895, 37.229877>,  <32.550171, 41.071167, 37.132576>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.678047, 40.892895, 37.229877>,  <32.891171, 40.595776, 37.392048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.678047, 40.892895, 37.229877> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367714, 0.228273, 0.901486,
		0.762167, 0.629401, 0.151511,
		-0.532810, 0.742796, -0.405422,
		32.518204, 41.115734, 37.108250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.948811, 41.196434, 37.808868>,  <32.891171, 40.595776, 37.392048>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.948811, 41.196434, 37.808868> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.606171, 41.250019, 37.609554>,  <32.400585, 41.282169, 37.489964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.606171, 41.250019, 37.609554>,  <32.948811, 41.196434, 37.808868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.606171, 41.250019, 37.609554> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496306, 0.050217, 0.866694,
		0.141127, 0.989713, 0.023470,
		-0.856600, 0.133962, -0.498288,
		32.349190, 41.290207, 37.460068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.687462, 41.833118, 38.192749>,  <32.948811, 41.196434, 37.808868>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.687462, 41.833118, 38.192749> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.395157, 41.643265, 37.996498>,  <32.219776, 41.529354, 37.878746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.395157, 41.643265, 37.996498>,  <32.687462, 41.833118, 38.192749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.395157, 41.643265, 37.996498> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632623, 0.200832, 0.747967,
		-0.256478, 0.856964, -0.447025,
		-0.730758, -0.474636, -0.490626,
		32.175930, 41.500874, 37.849312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.089115, 42.338619, 38.173336>,  <32.687462, 41.833118, 38.192749>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.089115, 42.338619, 38.173336> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.960667, 41.964203, 38.115776>,  <31.883596, 41.739552, 38.081242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.960667, 41.964203, 38.115776>,  <32.089115, 42.338619, 38.173336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.960667, 41.964203, 38.115776> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686613, 0.125464, 0.716115,
		-0.652260, 0.328764, -0.682987,
		-0.321123, -0.936041, -0.143898,
		31.864330, 41.683392, 38.072605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.392693, 42.430679, 38.271717>,  <32.089115, 42.338619, 38.173336>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.392693, 42.430679, 38.271717> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.464401, 42.038425, 38.303280>,  <31.507427, 41.803074, 38.322216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.464401, 42.038425, 38.303280>,  <31.392693, 42.430679, 38.271717>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.464401, 42.038425, 38.303280> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592566, -0.043607, 0.804341,
		-0.785320, -0.190952, -0.588905,
		0.179271, -0.980630, 0.078907,
		31.518183, 41.744236, 38.326950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.768467, 42.114967, 38.597248>,  <31.392693, 42.430679, 38.271717>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.768467, 42.114967, 38.597248> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.013979, 41.802170, 38.640636>,  <31.161285, 41.614491, 38.666672>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.013979, 41.802170, 38.640636>,  <30.768467, 42.114967, 38.597248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.013979, 41.802170, 38.640636> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489137, -0.268824, 0.829746,
		-0.619693, -0.562340, -0.547499,
		0.613780, -0.781990, 0.108473,
		31.198112, 41.567574, 38.673180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.308857, 41.550430, 38.703293>,  <30.768467, 42.114967, 38.597248>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.308857, 41.550430, 38.703293> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.671419, 41.470543, 38.852180>,  <30.888956, 41.422611, 38.941513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.671419, 41.470543, 38.852180>,  <30.308857, 41.550430, 38.703293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.671419, 41.470543, 38.852180> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403637, -0.149723, 0.902586,
		-0.124535, -0.968347, -0.216323,
		0.906404, -0.199719, 0.372214,
		30.943340, 41.410629, 38.963844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.298834, 40.868092, 38.923328>,  <30.308857, 41.550430, 38.703293>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.298834, 40.868092, 38.923328> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.581724, 41.064434, 39.126854>,  <30.751457, 41.182240, 39.248970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.581724, 41.064434, 39.126854>,  <30.298834, 40.868092, 38.923328>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.581724, 41.064434, 39.126854> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501555, -0.158885, 0.850410,
		0.498274, -0.856630, 0.133825,
		0.707224, 0.490858, 0.508815,
		30.793892, 41.211693, 39.279499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.572191, 40.349018, 39.440090>,  <30.298834, 40.868092, 38.923328>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.572191, 40.349018, 39.440090> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.623112, 40.729046, 39.554043>,  <30.653664, 40.957062, 39.622414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.623112, 40.729046, 39.554043>,  <30.572191, 40.349018, 39.440090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.623112, 40.729046, 39.554043> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236405, -0.249873, 0.938976,
		0.963279, -0.186880, 0.192793,
		0.127302, 0.950073, 0.284877,
		30.661303, 41.014069, 39.639507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.812473, 40.302357, 40.181820>,  <30.572191, 40.349018, 39.440090>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.812473, 40.302357, 40.181820> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.700302, 40.681099, 40.118786>,  <30.632999, 40.908344, 40.080967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.700302, 40.681099, 40.118786>,  <30.812473, 40.302357, 40.181820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.700302, 40.681099, 40.118786> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385524, 0.039246, 0.921863,
		0.879051, 0.319269, 0.354028,
		-0.280428, 0.946851, -0.157585,
		30.616175, 40.965153, 40.071510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.931519, 40.667019, 40.823509>,  <30.812473, 40.302357, 40.181820>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.931519, 40.667019, 40.823509> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.668413, 40.906258, 40.640366>,  <30.510550, 41.049801, 40.530479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.668413, 40.906258, 40.640366>,  <30.931519, 40.667019, 40.823509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.668413, 40.906258, 40.640366> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434390, 0.195384, 0.879278,
		0.615348, 0.777245, 0.131289,
		-0.657763, 0.598092, -0.457856,
		30.471085, 41.085686, 40.503010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.067877, 41.082424, 41.251709>,  <30.931519, 40.667019, 40.823509>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.067877, 41.082424, 41.251709> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.722946, 41.155151, 41.062675>,  <30.515987, 41.198788, 40.949257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.722946, 41.155151, 41.062675>,  <31.067877, 41.082424, 41.251709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.722946, 41.155151, 41.062675> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312893, 0.542463, 0.779636,
		0.398108, 0.820169, -0.410892,
		-0.862327, 0.181814, -0.472584,
		30.464249, 41.209694, 40.920898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.250589, 41.818367, 41.474960>,  <31.067877, 41.082424, 41.251709>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.250589, 41.818367, 41.474960> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.418064, 41.718678, 41.824265>,  <31.518549, 41.658863, 42.033848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.418064, 41.718678, 41.824265>,  <31.250589, 41.818367, 41.474960>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.418064, 41.718678, 41.824265> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748042, -0.450585, -0.487243,
		0.514912, 0.857240, -0.002222,
		0.418686, -0.249225, 0.873264,
		31.543671, 41.643909, 42.086243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.894590, 42.165833, 41.623516>,  <31.250589, 41.818367, 41.474960>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.894590, 42.165833, 41.623516> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.899715, 41.810226, 41.806595>,  <31.902790, 41.596863, 41.916443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.899715, 41.810226, 41.806595>,  <31.894590, 42.165833, 41.623516>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.899715, 41.810226, 41.806595> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812055, -0.257831, -0.523536,
		0.583440, 0.378384, 0.718626,
		0.012814, -0.889016, 0.457697,
		31.903559, 41.543522, 41.943905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.507790, 42.157417, 41.721306>,  <31.894590, 42.165833, 41.623516>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.507790, 42.157417, 41.721306> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.389545, 41.777126, 41.758690>,  <32.318600, 41.548950, 41.781120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.389545, 41.777126, 41.758690>,  <32.507790, 42.157417, 41.721306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.389545, 41.777126, 41.758690> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872007, -0.308494, -0.380047,
		0.390153, -0.030846, 0.920233,
		-0.295609, -0.950726, 0.093462,
		32.300861, 41.491909, 41.786728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.075432, 41.818001, 41.953678>,  <32.507790, 42.157417, 41.721306>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.075432, 41.818001, 41.953678> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.863983, 41.492657, 41.856514>,  <32.737114, 41.297451, 41.798214>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.863983, 41.492657, 41.856514>,  <33.075432, 41.818001, 41.953678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.863983, 41.492657, 41.856514> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812858, -0.402578, -0.420943,
		0.244588, -0.419971, 0.873958,
		-0.528620, -0.813361, -0.242911,
		32.705399, 41.248650, 41.783642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.478554, 41.224712, 42.058037>,  <33.075432, 41.818001, 41.953678>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.478554, 41.224712, 42.058037> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.219177, 41.097500, 41.781376>,  <33.063553, 41.021172, 41.615379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.219177, 41.097500, 41.781376>,  <33.478554, 41.224712, 42.058037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.219177, 41.097500, 41.781376> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753271, -0.399389, -0.522562,
		-0.110046, -0.859850, 0.498545,
		-0.648439, -0.318033, -0.691651,
		33.024647, 41.002090, 41.573879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.834240, 40.727058, 41.766953>,  <33.478554, 41.224712, 42.058037>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.834240, 40.727058, 41.766953> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.543682, 40.775257, 41.496300>,  <33.369347, 40.804176, 41.333908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.543682, 40.775257, 41.496300>,  <33.834240, 40.727058, 41.766953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.543682, 40.775257, 41.496300> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604333, -0.356884, -0.712331,
		-0.327315, -0.926344, 0.186416,
		-0.726392, 0.120499, -0.676634,
		33.325764, 40.811409, 41.293308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.952087, 40.176121, 41.281017>,  <33.834240, 40.727058, 41.766953>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.952087, 40.176121, 41.281017> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.731373, 40.435089, 41.070732>,  <33.598946, 40.590469, 40.944561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.731373, 40.435089, 41.070732>,  <33.952087, 40.176121, 41.281017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.731373, 40.435089, 41.070732> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581860, -0.152740, -0.798817,
		-0.597469, -0.746670, -0.292429,
		-0.551787, 0.647421, -0.525715,
		33.565838, 40.629314, 40.913017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.716183, 39.831486, 40.711540>,  <33.952087, 40.176121, 41.281017>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.716183, 39.831486, 40.711540> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.692741, 40.217464, 40.609211>,  <33.678677, 40.449051, 40.547813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.692741, 40.217464, 40.609211>,  <33.716183, 39.831486, 40.711540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.692741, 40.217464, 40.609211> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449543, -0.203300, -0.869816,
		-0.891334, -0.165979, -0.421871,
		-0.058605, 0.964946, -0.255822,
		33.675159, 40.506947, 40.532463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.415775, 39.772972, 40.079605>,  <33.716183, 39.831486, 40.711540>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.415775, 39.772972, 40.079605> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.605816, 40.124863, 40.071899>,  <33.719841, 40.335995, 40.067276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.605816, 40.124863, 40.071899>,  <33.415775, 39.772972, 40.079605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.605816, 40.124863, 40.071899> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435469, -0.254088, -0.863601,
		-0.764623, 0.401907, -0.503808,
		0.475099, 0.879722, -0.019263,
		33.748344, 40.388779, 40.066120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.268108, 40.126926, 39.465862>,  <33.415775, 39.772972, 40.079605>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.268108, 40.126926, 39.465862> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.614399, 40.276012, 39.599487>,  <33.822174, 40.365463, 39.679665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.614399, 40.276012, 39.599487>,  <33.268108, 40.126926, 39.465862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.614399, 40.276012, 39.599487> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443501, -0.261856, -0.857169,
		-0.232007, 0.890231, -0.391996,
		0.865725, 0.372719, 0.334066,
		33.874115, 40.387829, 39.699707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.609268, 40.304661, 38.853989>,  <33.268108, 40.126926, 39.465862>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.609268, 40.304661, 38.853989> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.902206, 40.298679, 39.126297>,  <34.077969, 40.295090, 39.289680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.902206, 40.298679, 39.126297>,  <33.609268, 40.304661, 38.853989>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.902206, 40.298679, 39.126297> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619905, -0.399040, -0.675637,
		0.281759, 0.916812, -0.282963,
		0.732346, -0.014956, 0.680769,
		34.121910, 40.294193, 39.330528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.235638, 40.563908, 38.507950>,  <33.609268, 40.304661, 38.853989>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.235638, 40.563908, 38.507950> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.354664, 40.355701, 38.828079>,  <34.426079, 40.230778, 39.020157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.354664, 40.355701, 38.828079>,  <34.235638, 40.563908, 38.507950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.354664, 40.355701, 38.828079> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754551, -0.385363, -0.531176,
		0.584901, 0.761944, 0.278087,
		0.297562, -0.520516, 0.800325,
		34.443932, 40.199547, 39.068176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.951286, 40.631210, 38.511982>,  <34.235638, 40.563908, 38.507950>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.951286, 40.631210, 38.511982> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.880730, 40.302780, 38.729137>,  <34.838394, 40.105724, 38.859428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.880730, 40.302780, 38.729137>,  <34.951286, 40.631210, 38.511982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.880730, 40.302780, 38.729137> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692966, -0.495282, -0.523921,
		0.699059, 0.283785, 0.656340,
		-0.176393, -0.821073, 0.542885,
		34.827812, 40.056458, 38.892002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.638783, 40.356689, 38.812176>,  <34.951286, 40.631210, 38.511982>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.638783, 40.356689, 38.812176> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.391289, 40.042728, 38.825466>,  <35.242794, 39.854351, 38.833439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.391289, 40.042728, 38.825466>,  <35.638783, 40.356689, 38.812176>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.391289, 40.042728, 38.825466> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730386, -0.590306, -0.343619,
		0.289321, -0.188340, 0.938521,
		-0.618732, -0.784899, 0.033227,
		35.205669, 39.807259, 38.835434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<30.050560, 30.198462, 35.837456> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.991055, 30.545517, 36.027222>,  <29.955351, 30.753750, 36.141083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.991055, 30.545517, 36.027222>,  <30.050560, 30.198462, 35.837456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.991055, 30.545517, 36.027222> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785458, 0.187790, -0.589738,
		-0.600771, -0.460363, 0.653559,
		-0.148762, 0.867641, 0.474414,
		29.946426, 30.805809, 36.169544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.580374, 30.413458, 35.447403>,  <30.050560, 30.198462, 35.837456>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.580374, 30.413458, 35.447403> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.598585, 30.701305, 35.724552>,  <29.609512, 30.874014, 35.890842>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.598585, 30.701305, 35.724552>,  <29.580374, 30.413458, 35.447403>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.598585, 30.701305, 35.724552> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806611, 0.435661, -0.399474,
		-0.589327, -0.540695, 0.600285,
		0.045527, 0.719617, 0.692877,
		29.612244, 30.917191, 35.932415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.875208, 30.445385, 35.875923>,  <29.580374, 30.413458, 35.447403>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.875208, 30.445385, 35.875923> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.082846, 30.787094, 35.864902>,  <29.207428, 30.992119, 35.858292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.082846, 30.787094, 35.864902>,  <28.875208, 30.445385, 35.875923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.082846, 30.787094, 35.864902> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769708, 0.453209, -0.449613,
		-0.371606, 0.254596, 0.892799,
		0.519094, 0.854273, -0.027549,
		29.238573, 31.043377, 35.856636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.429876, 30.998970, 35.895988>,  <28.875208, 30.445385, 35.875923>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.429876, 30.998970, 35.895988> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.760450, 31.197083, 35.788879>,  <28.958796, 31.315950, 35.724613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.760450, 31.197083, 35.788879>,  <28.429876, 30.998970, 35.895988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.760450, 31.197083, 35.788879> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562342, 0.702605, -0.436024,
		-0.027816, 0.510925, 0.859175,
		0.826437, 0.495279, -0.267771,
		29.008381, 31.345667, 35.708549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.353876, 31.553295, 36.297794>,  <28.429876, 30.998970, 35.895988>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.353876, 31.553295, 36.297794> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.574852, 31.634249, 35.974350>,  <28.707438, 31.682821, 35.780285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.574852, 31.634249, 35.974350>,  <28.353876, 31.553295, 36.297794>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.574852, 31.634249, 35.974350> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673229, 0.680334, -0.289670,
		0.491501, 0.704405, 0.512093,
		0.552439, 0.202383, -0.808611,
		28.740583, 31.694963, 35.731766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.263382, 32.213593, 36.220711>,  <28.353876, 31.553295, 36.297794>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.263382, 32.213593, 36.220711> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.422647, 32.140823, 35.861073>,  <28.518208, 32.097164, 35.645290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.422647, 32.140823, 35.861073>,  <28.263382, 32.213593, 36.220711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.422647, 32.140823, 35.861073> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627713, 0.660687, -0.411666,
		0.668909, 0.728284, 0.148870,
		0.398166, -0.181920, -0.899093,
		28.542097, 32.086246, 35.591343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.465576, 32.919132, 35.904125>,  <28.263382, 32.213593, 36.220711>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.465576, 32.919132, 35.904125> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.429775, 32.646507, 35.613621>,  <28.408295, 32.482933, 35.439316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.429775, 32.646507, 35.613621>,  <28.465576, 32.919132, 35.904125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.429775, 32.646507, 35.613621> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597436, 0.620179, -0.508379,
		0.796907, 0.388395, -0.462698,
		-0.089503, -0.681563, -0.726265,
		28.402924, 32.442039, 35.395741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.381252, 33.363186, 35.306412>,  <28.465576, 32.919132, 35.904125>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.381252, 33.363186, 35.306412> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.265753, 33.005192, 35.170395>,  <28.196453, 32.790398, 35.088783>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.265753, 33.005192, 35.170395>,  <28.381252, 33.363186, 35.306412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.265753, 33.005192, 35.170395> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651566, 0.443932, -0.615131,
		0.701489, 0.043945, -0.711324,
		-0.288748, -0.894982, -0.340046,
		28.179129, 32.736698, 35.068382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.375019, 33.377541, 34.493736>,  <28.381252, 33.363186, 35.306412>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.375019, 33.377541, 34.493736> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.132425, 33.077755, 34.599934>,  <27.986870, 32.897884, 34.663654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.132425, 33.077755, 34.599934>,  <28.375019, 33.377541, 34.493736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.132425, 33.077755, 34.599934> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666280, 0.296840, -0.684074,
		0.433876, -0.591774, -0.679379,
		-0.606484, -0.749460, 0.265495,
		27.950480, 32.852917, 34.679581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.225521, 32.890564, 33.869125>,  <28.375019, 33.377541, 34.493736>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.225521, 32.890564, 33.869125> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.933531, 32.840923, 34.137970>,  <27.758337, 32.811138, 34.299278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.933531, 32.840923, 34.137970>,  <28.225521, 32.890564, 33.869125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.933531, 32.840923, 34.137970> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680878, 0.217640, -0.699312,
		-0.059490, -0.968107, -0.243372,
		-0.729977, -0.124104, 0.672110,
		27.714539, 32.803692, 34.339603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.804762, 32.498783, 33.508503>,  <28.225521, 32.890564, 33.869125>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.804762, 32.498783, 33.508503> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.601015, 32.663338, 33.810841>,  <27.478767, 32.762070, 33.992245>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.601015, 32.663338, 33.810841>,  <27.804762, 32.498783, 33.508503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.601015, 32.663338, 33.810841> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726456, 0.265282, -0.633946,
		-0.461312, -0.872000, 0.163730,
		-0.509366, 0.411389, 0.755847,
		27.448206, 32.786755, 34.037594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.156803, 32.248558, 33.510807>,  <27.804762, 32.498783, 33.508503>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.156803, 32.248558, 33.510807> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.075144, 32.594482, 33.694294>,  <27.026148, 32.802036, 33.804386>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.075144, 32.594482, 33.694294>,  <27.156803, 32.248558, 33.510807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.075144, 32.594482, 33.694294> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709634, 0.192049, -0.677891,
		-0.674346, -0.463910, 0.574496,
		-0.204149, 0.864815, 0.458714,
		27.013899, 32.853928, 33.831909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.315475, 32.334595, 33.453739>,  <27.156803, 32.248558, 33.510807>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.315475, 32.334595, 33.453739> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.431757, 32.697041, 33.576668>,  <26.501526, 32.914509, 33.650425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.431757, 32.697041, 33.576668>,  <26.315475, 32.334595, 33.453739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.431757, 32.697041, 33.576668> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708948, 0.419685, -0.566796,
		-0.642561, -0.053104, 0.764393,
		0.290705, 0.906115, 0.307321,
		26.518969, 32.968876, 33.668865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.664454, 32.697533, 33.698017>,  <26.315475, 32.334595, 33.453739>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.664454, 32.697533, 33.698017> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.976336, 32.930199, 33.605297>,  <26.163464, 33.069798, 33.549664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.976336, 32.930199, 33.605297>,  <25.664454, 32.697533, 33.698017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.976336, 32.930199, 33.605297> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602899, 0.597463, -0.528726,
		-0.169044, 0.552004, 0.816527,
		0.779703, 0.581661, -0.231805,
		26.210247, 33.104698, 33.535755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.389046, 33.393997, 33.812294>,  <25.664454, 32.697533, 33.698017>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.389046, 33.393997, 33.812294> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.730213, 33.457726, 33.613438>,  <25.934914, 33.495964, 33.494125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.730213, 33.457726, 33.613438>,  <25.389046, 33.393997, 33.812294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.730213, 33.457726, 33.613438> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416590, 0.781630, -0.464227,
		0.314614, 0.603050, 0.733041,
		0.852919, 0.159325, -0.497136,
		25.986090, 33.505524, 33.464298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.591572, 34.061394, 33.899815>,  <25.389046, 33.393997, 33.812294>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.591572, 34.061394, 33.899815> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.763323, 33.947208, 33.557087>,  <25.866373, 33.878696, 33.351448>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.763323, 33.947208, 33.557087>,  <25.591572, 34.061394, 33.899815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.763323, 33.947208, 33.557087> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412899, 0.781722, -0.467360,
		0.803212, 0.554455, 0.217785,
		0.429377, -0.285466, -0.856822,
		25.892136, 33.861568, 33.300041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.813770, 34.701839, 33.469173>,  <25.591572, 34.061394, 33.899815>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.813770, 34.701839, 33.469173> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.789944, 34.403595, 33.203690>,  <25.775648, 34.224648, 33.044399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.789944, 34.403595, 33.203690>,  <25.813770, 34.701839, 33.469173>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.789944, 34.403595, 33.203690> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489112, 0.601411, -0.631724,
		0.870185, 0.287001, -0.400511,
		-0.059566, -0.745611, -0.663714,
		25.772074, 34.179913, 33.004574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.030214, 34.994930, 32.814560>,  <25.813770, 34.701839, 33.469173>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.030214, 34.994930, 32.814560> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.820135, 34.660870, 32.749214>,  <25.694088, 34.460434, 32.710007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.820135, 34.660870, 32.749214>,  <26.030214, 34.994930, 32.814560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.820135, 34.660870, 32.749214> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613977, 0.504803, -0.606800,
		0.589238, -0.218388, -0.777885,
		-0.525197, -0.835153, -0.163363,
		25.662575, 34.410324, 32.700207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.977631, 34.791992, 32.061409>,  <26.030214, 34.994930, 32.814560>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.977631, 34.791992, 32.061409> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.673460, 34.650780, 32.279446>,  <25.490957, 34.566051, 32.410267>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.673460, 34.650780, 32.279446>,  <25.977631, 34.791992, 32.061409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.673460, 34.650780, 32.279446> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635573, 0.576977, -0.512976,
		-0.133411, -0.736526, -0.663123,
		-0.760426, -0.353026, 0.545091,
		25.445332, 34.544872, 32.442974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.631519, 34.990837, 31.744682>,  <25.977631, 34.791992, 32.061409>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.631519, 34.990837, 31.744682> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.004284, 35.128498, 31.698910>,  <27.227943, 35.211094, 31.671446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.004284, 35.128498, 31.698910>,  <26.631519, 34.990837, 31.744682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.004284, 35.128498, 31.698910> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313477, -0.923017, -0.223096,
		-0.182401, 0.172034, -0.968057,
		0.931913, 0.344157, -0.114431,
		27.283857, 35.231747, 31.664581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.886883, 34.697369, 31.146481>,  <26.631519, 34.990837, 31.744682>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.886883, 34.697369, 31.146481> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.221199, 34.799736, 31.340782>,  <27.421789, 34.861156, 31.457363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.221199, 34.799736, 31.340782>,  <26.886883, 34.697369, 31.146481>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.221199, 34.799736, 31.340782> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466382, -0.797775, -0.382155,
		0.289721, 0.545949, -0.786131,
		0.835793, 0.255919, 0.485753,
		27.471937, 34.876511, 31.486507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.371534, 34.573952, 30.628609>,  <26.886883, 34.697369, 31.146481>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.371534, 34.573952, 30.628609> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.571665, 34.586201, 30.974726>,  <27.691744, 34.593548, 31.182396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.571665, 34.586201, 30.974726>,  <27.371534, 34.573952, 30.628609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.571665, 34.586201, 30.974726> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682852, -0.628396, -0.372600,
		0.532339, 0.777290, -0.335313,
		0.500328, 0.030620, 0.865295,
		27.721764, 34.595387, 31.234314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.983082, 34.318584, 30.414259>,  <27.371534, 34.573952, 30.628609>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.983082, 34.318584, 30.414259> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.991570, 34.276112, 30.811907>,  <27.996662, 34.250629, 31.050495>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.991570, 34.276112, 30.811907>,  <27.983082, 34.318584, 30.414259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.991570, 34.276112, 30.811907> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448851, -0.887490, -0.104373,
		0.893354, 0.448427, 0.028825,
		0.021222, -0.106180, 0.994120,
		27.997936, 34.244259, 31.110144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.642090, 34.172150, 30.585451>,  <27.983082, 34.318584, 30.414259>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.642090, 34.172150, 30.585451> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.425220, 34.035358, 30.892464>,  <28.295099, 33.953285, 31.076672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.425220, 34.035358, 30.892464>,  <28.642090, 34.172150, 30.585451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.425220, 34.035358, 30.892464> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701533, -0.686990, 0.189462,
		0.462495, 0.641169, 0.612373,
		-0.542171, -0.341975, 0.767531,
		28.262569, 33.932766, 31.122723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.133644, 34.078667, 31.205866>,  <28.642090, 34.172150, 30.585451>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.133644, 34.078667, 31.205866> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.813671, 33.840401, 31.234978>,  <28.621687, 33.697441, 31.252445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.813671, 33.840401, 31.234978>,  <29.133644, 34.078667, 31.205866>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.813671, 33.840401, 31.234978> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599991, -0.796118, 0.078783,
		0.011011, 0.106687, 0.994232,
		-0.799931, -0.595662, 0.072777,
		28.573692, 33.661701, 31.256811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.389688, 33.500656, 31.609301>,  <29.133644, 34.078667, 31.205866>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.389688, 33.500656, 31.609301> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.035980, 33.374435, 31.471611>,  <28.823755, 33.298702, 31.388998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.035980, 33.374435, 31.471611>,  <29.389688, 33.500656, 31.609301>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.035980, 33.374435, 31.471611> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397549, -0.895429, -0.200406,
		-0.244987, -0.314059, 0.917251,
		-0.884272, -0.315555, -0.344222,
		28.770699, 33.279770, 31.368345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.154400, 32.947788, 32.077209>,  <29.389688, 33.500656, 31.609301>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.154400, 32.947788, 32.077209> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.965746, 32.907139, 31.726841>,  <28.852552, 32.882748, 31.516621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.965746, 32.907139, 31.726841>,  <29.154400, 32.947788, 32.077209>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.965746, 32.907139, 31.726841> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284091, -0.957884, -0.041834,
		-0.834776, -0.268571, 0.480644,
		-0.471636, -0.101624, -0.875918,
		28.824255, 32.876652, 31.464066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.883917, 32.221191, 32.154224>,  <29.154400, 32.947788, 32.077209>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.883917, 32.221191, 32.154224> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.875727, 32.317471, 31.766071>,  <28.870813, 32.375237, 31.533178>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.875727, 32.317471, 31.766071>,  <28.883917, 32.221191, 32.154224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.875727, 32.317471, 31.766071> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315667, -0.919384, -0.234708,
		-0.948649, -0.311124, -0.057156,
		-0.020475, 0.240698, -0.970384,
		28.869583, 32.389679, 31.474957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.464218, 31.668842, 31.842041>,  <28.883917, 32.221191, 32.154224>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.464218, 31.668842, 31.842041> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.694212, 31.831242, 31.557913>,  <28.832209, 31.928680, 31.387436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.694212, 31.831242, 31.557913>,  <28.464218, 31.668842, 31.842041>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.694212, 31.831242, 31.557913> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430061, -0.888554, -0.159747,
		-0.696016, -0.213630, -0.685510,
		0.574986, 0.405997, -0.710322,
		28.866707, 31.953041, 31.344816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.471731, 31.171408, 31.101093>,  <28.464218, 31.668842, 31.842041>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.471731, 31.171408, 31.101093> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.792688, 31.407461, 31.136656>,  <28.985264, 31.549093, 31.157993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.792688, 31.407461, 31.136656>,  <28.471731, 31.171408, 31.101093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.792688, 31.407461, 31.136656> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592259, -0.769080, -0.240303,
		-0.073435, 0.245473, -0.966618,
		0.802394, 0.590135, 0.088906,
		29.033407, 31.584501, 31.163328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.920527, 30.880981, 30.697371>,  <28.471731, 31.171408, 31.101093>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.920527, 30.880981, 30.697371> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.186073, 31.131912, 30.860214>,  <29.345402, 31.282471, 30.957920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.186073, 31.131912, 30.860214>,  <28.920527, 30.880981, 30.697371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.186073, 31.131912, 30.860214> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654357, -0.750821, 0.089912,
		0.362071, 0.206705, -0.908943,
		0.663869, 0.627328, 0.407109,
		29.385235, 31.320110, 30.982347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.631056, 30.772444, 30.401800>,  <28.920527, 30.880981, 30.697371>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.631056, 30.772444, 30.401800> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.655813, 30.909760, 30.776676>,  <29.670668, 30.992149, 31.001602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.655813, 30.909760, 30.776676>,  <29.631056, 30.772444, 30.401800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.655813, 30.909760, 30.776676> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512371, -0.816746, 0.265333,
		0.856531, 0.463766, -0.226444,
		0.061895, 0.343289, 0.937188,
		29.674381, 31.012747, 31.057833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.361233, 30.713852, 30.677082>,  <29.631056, 30.772444, 30.401800>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.361233, 30.713852, 30.677082> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.152966, 30.725710, 31.018381>,  <30.028006, 30.732824, 31.223160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.152966, 30.725710, 31.018381>,  <30.361233, 30.713852, 30.677082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.152966, 30.725710, 31.018381> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569335, -0.732681, 0.372876,
		0.636211, 0.679926, 0.364604,
		-0.520666, 0.029646, 0.853245,
		29.996765, 30.734604, 31.274355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.967485, 30.599079, 31.198215>,  <30.361233, 30.713852, 30.677082>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.967485, 30.599079, 31.198215> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.611120, 30.534172, 31.367893>,  <30.397301, 30.495228, 31.469700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.611120, 30.534172, 31.367893>,  <30.967485, 30.599079, 31.198215>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.611120, 30.534172, 31.367893> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351679, -0.837491, 0.418247,
		0.287391, 0.521802, 0.803199,
		-0.890914, -0.162268, 0.424194,
		30.343845, 30.485491, 31.495152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.056026, 30.476830, 31.984663>,  <30.967485, 30.599079, 31.198215>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.056026, 30.476830, 31.984663> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.693892, 30.325130, 31.908209>,  <30.476610, 30.234112, 31.862335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.693892, 30.325130, 31.908209>,  <31.056026, 30.476830, 31.984663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.693892, 30.325130, 31.908209> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124443, -0.667204, 0.734407,
		-0.406048, 0.641101, 0.651240,
		-0.905339, -0.379247, -0.191137,
		30.422289, 30.211357, 31.850868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.895979, 30.311556, 32.597588>,  <31.056026, 30.476830, 31.984663>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.895979, 30.311556, 32.597588> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.635263, 30.104954, 32.375454>,  <30.478834, 29.980993, 32.242176>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.635263, 30.104954, 32.375454>,  <30.895979, 30.311556, 32.597588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.635263, 30.104954, 32.375454> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178555, -0.816169, 0.549533,
		-0.737080, 0.259023, 0.624195,
		-0.651790, -0.516503, -0.555332,
		30.439726, 29.950003, 32.208855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.382729, 30.002409, 33.015419>,  <30.895979, 30.311556, 32.597588>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.382729, 30.002409, 33.015419> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.380117, 29.765179, 32.693371>,  <30.378551, 29.622841, 32.500141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.380117, 29.765179, 32.693371>,  <30.382729, 30.002409, 33.015419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.380117, 29.765179, 32.693371> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093174, -0.801996, 0.590017,
		-0.995628, -0.071165, 0.060495,
		-0.006528, -0.593075, -0.805121,
		30.378159, 29.587255, 32.451836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.109972, 29.461761, 33.312279>,  <30.382729, 30.002409, 33.015419>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.109972, 29.461761, 33.312279> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.243868, 29.332651, 32.958157>,  <30.324205, 29.255186, 32.745682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.243868, 29.332651, 32.958157>,  <30.109972, 29.461761, 33.312279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.243868, 29.332651, 32.958157> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353189, -0.828040, 0.435439,
		-0.873617, -0.458438, -0.163177,
		0.334739, -0.322774, -0.885306,
		30.344290, 29.235819, 32.692566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.737831, 28.944410, 33.248138>,  <30.109972, 29.461761, 33.312279>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.737831, 28.944410, 33.248138> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.065285, 28.878168, 33.028172>,  <30.261757, 28.838423, 32.896191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.065285, 28.878168, 33.028172>,  <29.737831, 28.944410, 33.248138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.065285, 28.878168, 33.028172> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065667, -0.924254, 0.376088,
		-0.570549, -0.343990, -0.745751,
		0.818634, -0.165606, -0.549921,
		30.310875, 28.828487, 32.863194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.734070, 28.211069, 32.980991>,  <29.737831, 28.944410, 33.248138>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.734070, 28.211069, 32.980991> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.114290, 28.331890, 32.952095>,  <30.342422, 28.404383, 32.934757>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.114290, 28.331890, 32.952095>,  <29.734070, 28.211069, 32.980991>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.114290, 28.331890, 32.952095> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310536, -0.927926, 0.206205,
		-0.004747, -0.218440, -0.975839,
		0.950550, 0.302054, -0.072238,
		30.399456, 28.422506, 32.930424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.998341, 27.632374, 32.575180>,  <29.734070, 28.211069, 32.980991>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.998341, 27.632374, 32.575180> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.290688, 27.807957, 32.784233>,  <30.466095, 27.913307, 32.909664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.290688, 27.807957, 32.784233>,  <29.998341, 27.632374, 32.575180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.290688, 27.807957, 32.784233> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327689, -0.897395, 0.295469,
		0.598711, -0.044686, -0.799718,
		0.730866, 0.438959, 0.522637,
		30.509947, 27.939644, 32.941025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.597864, 27.237894, 32.556274>,  <29.998341, 27.632374, 32.575180>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.597864, 27.237894, 32.556274> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.624535, 27.459124, 32.888458>,  <30.640537, 27.591862, 33.087769>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.624535, 27.459124, 32.888458>,  <30.597864, 27.237894, 32.556274>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.624535, 27.459124, 32.888458> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335471, -0.796284, 0.503380,
		0.939688, 0.245030, -0.238635,
		0.066678, 0.553075, 0.830459,
		30.644539, 27.625046, 33.137596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<33.076424, 39.633625, 44.053223> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.937698, 39.260754, 44.011730>,  <32.854462, 39.037029, 43.986835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.937698, 39.260754, 44.011730>,  <33.076424, 39.633625, 44.053223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.937698, 39.260754, 44.011730> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.912965, 0.310167, 0.265126,
		-0.214972, 0.186650, -0.958618,
		-0.346817, -0.932179, -0.103728,
		32.833652, 38.981098, 43.980610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.481533, 39.631935, 43.670212>,  <33.076424, 39.633625, 44.053223>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.481533, 39.631935, 43.670212> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.482895, 39.327293, 43.929424>,  <32.483711, 39.144508, 44.084949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.482895, 39.327293, 43.929424>,  <32.481533, 39.631935, 43.670212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.482895, 39.327293, 43.929424> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.885712, 0.298535, 0.355515,
		-0.464222, -0.575179, -0.673548,
		0.003406, -0.761607, 0.648029,
		32.483917, 39.098812, 44.123833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.803284, 39.636070, 43.793404>,  <32.481533, 39.631935, 43.670212>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.803284, 39.636070, 43.793404> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.952929, 39.369804, 44.051685>,  <32.042717, 39.210045, 44.206654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.952929, 39.369804, 44.051685>,  <31.803284, 39.636070, 43.793404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.952929, 39.369804, 44.051685> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711176, 0.240943, 0.660436,
		-0.595205, -0.706287, -0.383262,
		0.374112, -0.665661, 0.645705,
		32.065163, 39.170105, 44.245396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.206537, 39.382450, 44.092690>,  <31.803284, 39.636070, 43.793404>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.206537, 39.382450, 44.092690> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.513451, 39.303471, 44.336750>,  <31.697599, 39.256081, 44.483189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.513451, 39.303471, 44.336750>,  <31.206537, 39.382450, 44.092690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.513451, 39.303471, 44.336750> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555884, 0.269668, 0.786303,
		-0.319797, -0.942492, 0.097151,
		0.767283, -0.197453, 0.610155,
		31.743635, 39.244236, 44.519798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.852121, 39.040691, 44.677280>,  <31.206537, 39.382450, 44.092690>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.852121, 39.040691, 44.677280> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.204828, 39.173084, 44.811707>,  <31.416452, 39.252522, 44.892361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.204828, 39.173084, 44.811707>,  <30.852121, 39.040691, 44.677280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.204828, 39.173084, 44.811707> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418060, 0.218439, 0.881765,
		0.218439, -0.918006, 0.330982,
		-0.881765, -0.330982, -0.336066,
		31.469358, 39.272377, 44.912525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.945538, 38.788830, 45.466450>,  <30.852121, 39.040691, 44.677280>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.945538, 38.788830, 45.466450> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.208229, 39.088421, 45.431248>,  <31.365843, 39.268173, 45.410126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.208229, 39.088421, 45.431248>,  <30.945538, 38.788830, 45.466450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.208229, 39.088421, 45.431248> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395889, 0.441729, 0.805076,
		0.641858, -0.493874, 0.586606,
		0.656727, 0.748975, -0.088008,
		31.405247, 39.313114, 45.404846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.138439, 38.953957, 46.167683>,  <30.945538, 38.788830, 45.466450>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.138439, 38.953957, 46.167683> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.208549, 39.275517, 45.940338>,  <31.250616, 39.468452, 45.803932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.208549, 39.275517, 45.940338>,  <31.138439, 38.953957, 46.167683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.208549, 39.275517, 45.940338> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400244, 0.585619, 0.704880,
		0.899490, 0.103933, 0.424400,
		0.175276, 0.803896, -0.568357,
		31.261133, 39.516685, 45.769833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.490982, 39.454933, 46.579563>,  <31.138439, 38.953957, 46.167683>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.490982, 39.454933, 46.579563> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.291752, 39.647728, 46.291225>,  <31.172215, 39.763405, 46.118225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.291752, 39.647728, 46.291225>,  <31.490982, 39.454933, 46.579563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.291752, 39.647728, 46.291225> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453104, 0.564114, 0.690269,
		0.739335, 0.670423, -0.062583,
		-0.498076, 0.481983, -0.720841,
		31.142328, 39.792324, 46.074974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.469662, 40.142559, 46.892155>,  <31.490982, 39.454933, 46.579563>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.469662, 40.142559, 46.892155> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.199213, 40.094456, 46.601391>,  <31.036943, 40.065594, 46.426933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.199213, 40.094456, 46.601391>,  <31.469662, 40.142559, 46.892155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.199213, 40.094456, 46.601391> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668325, 0.515424, 0.536358,
		0.310166, 0.848455, -0.428860,
		-0.676121, -0.120257, -0.726911,
		30.996376, 40.058380, 46.383316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.135841, 40.768005, 46.995293>,  <31.469662, 40.142559, 46.892155>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.135841, 40.768005, 46.995293> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.895168, 40.538464, 46.773060>,  <30.750765, 40.400738, 46.639721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.895168, 40.538464, 46.773060>,  <31.135841, 40.768005, 46.995293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.895168, 40.538464, 46.773060> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770921, 0.235264, 0.591889,
		-0.208951, 0.784436, -0.583951,
		-0.601682, -0.573856, -0.555579,
		30.714664, 40.366306, 46.606384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.602819, 41.161232, 46.936077>,  <31.135841, 40.768005, 46.995293>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.602819, 41.161232, 46.936077> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.452982, 40.799927, 46.852375>,  <30.363079, 40.583141, 46.802155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.452982, 40.799927, 46.852375>,  <30.602819, 41.161232, 46.936077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.452982, 40.799927, 46.852375> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822939, 0.219925, 0.523835,
		-0.427141, 0.368434, -0.825716,
		-0.374595, -0.903266, -0.209260,
		30.340603, 40.528946, 46.789597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.870880, 41.347561, 46.805847>,  <30.602819, 41.161232, 46.936077>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.870880, 41.347561, 46.805847> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.892380, 40.952583, 46.865276>,  <29.905279, 40.715599, 46.900936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.892380, 40.952583, 46.865276>,  <29.870880, 41.347561, 46.805847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.892380, 40.952583, 46.865276> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848404, 0.033310, 0.528300,
		-0.526614, -0.154447, -0.835957,
		0.053748, -0.987439, 0.148575,
		29.908504, 40.656353, 46.909847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.216164, 41.213043, 46.800518>,  <29.870880, 41.347561, 46.805847>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.216164, 41.213043, 46.800518> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.375183, 40.895397, 46.984402>,  <29.470594, 40.704807, 47.094730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.375183, 40.895397, 46.984402>,  <29.216164, 41.213043, 46.800518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.375183, 40.895397, 46.984402> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819207, -0.081481, 0.567679,
		-0.413347, -0.602277, -0.682940,
		0.397547, -0.794118, 0.459710,
		29.494448, 40.657162, 47.122314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.558216, 40.822796, 46.971733>,  <29.216164, 41.213043, 46.800518>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.558216, 40.822796, 46.971733> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.875605, 40.715298, 47.190155>,  <29.066038, 40.650799, 47.321209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.875605, 40.715298, 47.190155>,  <28.558216, 40.822796, 46.971733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.875605, 40.715298, 47.190155> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604197, -0.240040, 0.759820,
		-0.073123, -0.932822, -0.352841,
		0.793473, -0.268746, 0.546056,
		29.113646, 40.634674, 47.353973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.465979, 41.223782, 46.319408>,  <28.558216, 40.822796, 46.971733>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.465979, 41.223782, 46.319408> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.354975, 41.607464, 46.297791>,  <28.288372, 41.837673, 46.284821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.354975, 41.607464, 46.297791>,  <28.465979, 41.223782, 46.319408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.354975, 41.607464, 46.297791> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664932, 0.151158, -0.731448,
		-0.693437, -0.238921, -0.679752,
		-0.277509, 0.959202, -0.054048,
		28.271723, 41.895226, 46.281574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.368597, 41.247444, 45.650394>,  <28.465979, 41.223782, 46.319408>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.368597, 41.247444, 45.650394> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.394581, 41.640751, 45.718464>,  <28.410172, 41.876736, 45.759304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.394581, 41.640751, 45.718464>,  <28.368597, 41.247444, 45.650394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.394581, 41.640751, 45.718464> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590084, 0.099673, -0.801165,
		-0.804724, 0.152458, -0.573738,
		0.064958, 0.983271, 0.170172,
		28.414068, 41.935734, 45.769516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.382196, 41.674007, 45.010754>,  <28.368597, 41.247444, 45.650394>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.382196, 41.674007, 45.010754> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.547539, 41.918991, 45.280281>,  <28.646744, 42.065983, 45.441998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.547539, 41.918991, 45.280281>,  <28.382196, 41.674007, 45.010754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.547539, 41.918991, 45.280281> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767322, 0.164133, -0.619901,
		-0.490260, 0.773275, -0.402108,
		0.413355, 0.612460, 0.673818,
		28.671545, 42.102730, 45.482426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.432524, 42.268871, 44.701763>,  <28.382196, 41.674007, 45.010754>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.432524, 42.268871, 44.701763> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.710154, 42.284275, 44.989311>,  <28.876732, 42.293518, 45.161839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.710154, 42.284275, 44.989311>,  <28.432524, 42.268871, 44.701763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.710154, 42.284275, 44.989311> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682753, 0.281417, -0.674279,
		-0.228271, 0.958812, 0.169030,
		0.694075, 0.038513, 0.718872,
		28.918377, 42.295830, 45.204971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.697056, 42.945305, 44.535923>,  <28.432524, 42.268871, 44.701763>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.697056, 42.945305, 44.535923> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.950657, 42.735771, 44.763477>,  <29.102818, 42.610050, 44.900009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.950657, 42.735771, 44.763477>,  <28.697056, 42.945305, 44.535923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.950657, 42.735771, 44.763477> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713667, 0.112982, -0.691314,
		0.297862, 0.844292, 0.445477,
		0.634002, -0.523838, 0.568890,
		29.140858, 42.578621, 44.934143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.265125, 43.329250, 44.460968>,  <28.697056, 42.945305, 44.535923>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.265125, 43.329250, 44.460968> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.390741, 42.973087, 44.592754>,  <29.466110, 42.759388, 44.671825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.390741, 42.973087, 44.592754>,  <29.265125, 43.329250, 44.460968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.390741, 42.973087, 44.592754> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650017, -0.051290, -0.758187,
		0.691996, 0.452260, 0.562674,
		0.314038, -0.890410, 0.329469,
		29.484953, 42.705963, 44.691593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.056540, 43.382366, 44.615017>,  <29.265125, 43.329250, 44.460968>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.056540, 43.382366, 44.615017> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.951277, 42.997776, 44.583221>,  <29.888119, 42.767021, 44.564144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.951277, 42.997776, 44.583221>,  <30.056540, 43.382366, 44.615017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.951277, 42.997776, 44.583221> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817382, -0.178430, -0.547768,
		0.512480, -0.209124, 0.832845,
		-0.263156, -0.961473, -0.079492,
		29.872330, 42.709335, 44.559376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.676420, 43.089878, 44.642143>,  <30.056540, 43.382366, 44.615017>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.676420, 43.089878, 44.642143> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.428909, 42.824738, 44.473503>,  <30.280403, 42.665653, 44.372318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.428909, 42.824738, 44.473503>,  <30.676420, 43.089878, 44.642143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.428909, 42.824738, 44.473503> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744463, -0.323464, -0.584076,
		0.250780, -0.675280, 0.693618,
		-0.618776, -0.662848, -0.421603,
		30.243277, 42.625885, 44.347023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.112078, 42.595825, 44.314899>,  <30.676420, 43.089878, 44.642143>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.112078, 42.595825, 44.314899> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.760489, 42.494247, 44.153446>,  <30.549536, 42.433300, 44.056576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.760489, 42.494247, 44.153446>,  <31.112078, 42.595825, 44.314899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.760489, 42.494247, 44.153446> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475007, -0.391411, -0.788141,
		0.042159, -0.884482, 0.464665,
		-0.878972, -0.253947, -0.403634,
		30.496798, 42.418064, 44.032356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.141232, 41.868240, 44.249557>,  <31.112078, 42.595825, 44.314899>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.141232, 41.868240, 44.249557> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.873837, 42.022034, 43.994904>,  <30.713400, 42.114307, 43.842110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.873837, 42.022034, 43.994904>,  <31.141232, 41.868240, 44.249557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.873837, 42.022034, 43.994904> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336556, -0.606958, -0.719953,
		-0.663217, -0.695541, 0.276344,
		-0.668486, 0.384480, -0.636633,
		30.673290, 42.137379, 43.803913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.847015, 41.293907, 43.945137>,  <31.141232, 41.868240, 44.249557>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.847015, 41.293907, 43.945137> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.807243, 41.610786, 43.704292>,  <30.783381, 41.800915, 43.559788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.807243, 41.610786, 43.704292>,  <30.847015, 41.293907, 43.945137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.807243, 41.610786, 43.704292> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406281, -0.520048, -0.751323,
		-0.908322, -0.319329, -0.270147,
		-0.099430, 0.792199, -0.602108,
		30.777414, 41.848446, 43.523659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.634504, 41.012386, 43.372261>,  <30.847015, 41.293907, 43.945137>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.634504, 41.012386, 43.372261> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.765997, 41.378803, 43.280346>,  <30.844893, 41.598652, 43.225197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.765997, 41.378803, 43.280346>,  <30.634504, 41.012386, 43.372261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.765997, 41.378803, 43.280346> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468904, -0.369512, -0.802241,
		-0.819796, 0.155972, -0.551005,
		0.328730, 0.916043, -0.229789,
		30.864616, 41.653618, 43.211411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.438889, 41.175125, 42.548512>,  <30.634504, 41.012386, 43.372261>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.438889, 41.175125, 42.548512> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.736273, 41.411270, 42.674202>,  <30.914703, 41.552956, 42.749615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.736273, 41.411270, 42.674202>,  <30.438889, 41.175125, 42.548512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.736273, 41.411270, 42.674202> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535937, -0.244875, -0.807965,
		-0.400044, 0.769097, -0.498451,
		0.743462, 0.590360, 0.314227,
		30.959311, 41.588379, 42.768471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.705976, 41.404305, 41.922581>,  <30.438889, 41.175125, 42.548512>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.705976, 41.404305, 41.922581> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.990757, 41.483601, 42.192047>,  <31.161625, 41.531178, 42.353725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.990757, 41.483601, 42.192047>,  <30.705976, 41.404305, 41.922581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.990757, 41.483601, 42.192047> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701730, -0.236909, -0.671899,
		0.026397, 0.951091, -0.307782,
		0.711954, 0.198244, 0.673663,
		31.204344, 41.543076, 42.394146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.130699, 41.932514, 41.822838>,  <30.705976, 41.404305, 41.922581>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.130699, 41.932514, 41.822838> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.961739, 41.759453, 41.504246>,  <29.860361, 41.655617, 41.313091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.961739, 41.759453, 41.504246>,  <30.130699, 41.932514, 41.822838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.961739, 41.759453, 41.504246> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.817475, -0.197751, 0.540953,
		-0.391550, 0.879606, -0.270152,
		-0.422403, -0.432653, -0.796485,
		29.835018, 41.629658, 41.265301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.456131, 42.098389, 41.840382>,  <30.130699, 41.932514, 41.822838>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.456131, 42.098389, 41.840382> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.444220, 41.782906, 41.594761>,  <29.437073, 41.593616, 41.447388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.444220, 41.782906, 41.594761>,  <29.456131, 42.098389, 41.840382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.444220, 41.782906, 41.594761> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.842088, -0.311173, 0.440521,
		-0.538517, 0.530202, -0.654894,
		-0.029780, -0.788707, -0.614048,
		29.435286, 41.546295, 41.410545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.933994, 42.140553, 41.360268>,  <29.456131, 42.098389, 41.840382>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.933994, 42.140553, 41.360268> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.002209, 41.750534, 41.417133>,  <29.043137, 41.516525, 41.451252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.002209, 41.750534, 41.417133>,  <28.933994, 42.140553, 41.360268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.002209, 41.750534, 41.417133> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.913838, -0.102542, 0.392920,
		-0.368536, -0.196918, -0.908518,
		0.170534, -0.975043, 0.142160,
		29.053370, 41.458023, 41.459782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.397919, 41.831371, 41.041729>,  <28.933994, 42.140553, 41.360268>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.397919, 41.831371, 41.041729> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.542109, 41.564884, 41.302868>,  <28.628622, 41.404991, 41.459553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.542109, 41.564884, 41.302868>,  <28.397919, 41.831371, 41.041729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.542109, 41.564884, 41.302868> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.915692, -0.119436, 0.383723,
		-0.177670, -0.736130, -0.653105,
		0.360475, -0.666219, 0.652848,
		28.650251, 41.365017, 41.498722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.817787, 41.491829, 41.124023>,  <28.397919, 41.831371, 41.041729>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.817787, 41.491829, 41.124023> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.052668, 41.388794, 41.430969>,  <28.193596, 41.326973, 41.615135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.052668, 41.388794, 41.430969>,  <27.817787, 41.491829, 41.124023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.052668, 41.388794, 41.430969> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804903, -0.085583, 0.587203,
		-0.085583, -0.962457, -0.257588,
		-0.587203, 0.257588, -0.767360,
		28.228828, 41.311516, 41.661179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.432116, 41.000271, 41.452805>,  <27.817787, 41.491829, 41.124023>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.432116, 41.000271, 41.452805> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.700306, 41.115578, 41.726261>,  <27.861219, 41.184761, 41.890335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.700306, 41.115578, 41.726261>,  <27.432116, 41.000271, 41.452805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.700306, 41.115578, 41.726261> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741397, 0.225351, 0.632097,
		0.028152, -0.930656, 0.364812,
		0.670476, 0.288265, 0.683641,
		27.901449, 41.202057, 41.931355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.126698, 40.764046, 42.068577>,  <27.432116, 41.000271, 41.452805>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.126698, 40.764046, 42.068577> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.393986, 41.044216, 42.168884>,  <27.554358, 41.212318, 42.229069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.393986, 41.044216, 42.168884>,  <27.126698, 40.764046, 42.068577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.393986, 41.044216, 42.168884> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656145, 0.395980, 0.642396,
		0.350648, -0.593807, 0.724182,
		0.668221, 0.700423, 0.250774,
		27.594452, 41.254345, 42.244114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.690937, 40.179600, 42.031124>,  <27.126698, 40.764046, 42.068577>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.690937, 40.179600, 42.031124> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.583284, 39.795837, 41.997410>,  <27.518694, 39.565578, 41.977180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.583284, 39.795837, 41.997410>,  <27.690937, 40.179600, 42.031124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.583284, 39.795837, 41.997410> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456284, -0.049944, -0.888431,
		0.848159, -0.277562, 0.451205,
		-0.269129, -0.959409, -0.084287,
		27.502546, 39.508015, 41.972122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.328825, 39.809521, 41.840630>,  <27.690937, 40.179600, 42.031124>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.328825, 39.809521, 41.840630> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.013542, 39.584389, 41.741066>,  <27.824373, 39.449310, 41.681328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.013542, 39.584389, 41.741066>,  <28.328825, 39.809521, 41.840630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.013542, 39.584389, 41.741066> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422258, -0.200375, -0.884052,
		0.447695, -0.801919, 0.395596,
		-0.788205, -0.562829, -0.248909,
		27.777081, 39.415539, 41.666393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.568754, 39.218845, 41.534603>,  <28.328825, 39.809521, 41.840630>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.568754, 39.218845, 41.534603> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.199188, 39.246258, 41.384037>,  <27.977449, 39.262703, 41.293697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.199188, 39.246258, 41.384037>,  <28.568754, 39.218845, 41.534603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.199188, 39.246258, 41.384037> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372529, -0.063106, -0.925873,
		-0.087208, -0.995651, 0.032773,
		-0.923914, 0.068535, -0.376412,
		27.922014, 39.266815, 41.271114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.718134, 38.697079, 40.960541>,  <28.568754, 39.218845, 41.534603>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.718134, 38.697079, 40.960541> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.383585, 38.906158, 40.894485>,  <28.182856, 39.031605, 40.854851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.383585, 38.906158, 40.894485>,  <28.718134, 38.697079, 40.960541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.383585, 38.906158, 40.894485> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180171, -0.022393, -0.983380,
		-0.517709, -0.852224, -0.075446,
		-0.836370, 0.522698, -0.165139,
		28.132673, 39.062969, 40.844944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.267994, 38.386745, 40.405632>,  <28.718134, 38.697079, 40.960541>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.267994, 38.386745, 40.405632> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.158825, 38.771545, 40.408928>,  <28.093323, 39.002426, 40.410908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.158825, 38.771545, 40.408928>,  <28.267994, 38.386745, 40.405632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.158825, 38.771545, 40.408928> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186527, 0.061321, -0.980534,
		-0.943780, -0.266074, -0.196175,
		-0.272925, 0.962000, 0.008243,
		28.076948, 39.060146, 40.411400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.811306, 38.536671, 39.785347>,  <28.267994, 38.386745, 40.405632>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.811306, 38.536671, 39.785347> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.952827, 38.892914, 39.899643>,  <28.037741, 39.106659, 39.968220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.952827, 38.892914, 39.899643>,  <27.811306, 38.536671, 39.785347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.952827, 38.892914, 39.899643> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379983, 0.142287, -0.913984,
		-0.854655, 0.431948, -0.288073,
		0.353805, 0.890604, 0.285739,
		28.058969, 39.160095, 39.985363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.599869, 38.958462, 39.201649>,  <27.811306, 38.536671, 39.785347>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.599869, 38.958462, 39.201649> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.887926, 39.130154, 39.419697>,  <28.060760, 39.233170, 39.550526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.887926, 39.130154, 39.419697>,  <27.599869, 38.958462, 39.201649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.887926, 39.130154, 39.419697> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486464, 0.247855, -0.837807,
		-0.494721, 0.868523, -0.030313,
		0.720142, 0.429227, 0.545124,
		28.103970, 39.258923, 39.583233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<28.180912, 37.463951, 46.662636> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.950525, 37.709335, 46.446514>,  <27.812294, 37.856567, 46.316841>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.950525, 37.709335, 46.446514>,  <28.180912, 37.463951, 46.662636>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.950525, 37.709335, 46.446514> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576699, 0.773359, 0.263313,
		0.579381, -0.159934, -0.799211,
		-0.575965, 0.613463, -0.540304,
		27.777737, 37.893375, 46.284424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.711935, 37.872746, 46.184517>,  <28.180912, 37.463951, 46.662636>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.711935, 37.872746, 46.184517> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.044987, 37.936245, 46.396751>,  <29.244818, 37.974346, 46.524094>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.044987, 37.936245, 46.396751>,  <28.711935, 37.872746, 46.184517>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.044987, 37.936245, 46.396751> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547815, -0.376885, -0.746898,
		0.081400, 0.912554, -0.400773,
		0.832630, 0.158752, 0.530589,
		29.294775, 37.983871, 46.555927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.248425, 38.171112, 45.715549>,  <28.711935, 37.872746, 46.184517>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.248425, 38.171112, 45.715549> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.448221, 38.004620, 46.019459>,  <29.568098, 37.904724, 46.201805>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.448221, 38.004620, 46.019459>,  <29.248425, 38.171112, 45.715549>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.448221, 38.004620, 46.019459> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716720, -0.294105, -0.632309,
		0.486643, 0.860378, 0.151421,
		0.499491, -0.416236, 0.759774,
		29.598068, 37.879749, 46.247391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.909437, 38.348934, 45.661625>,  <29.248425, 38.171112, 45.715549>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.909437, 38.348934, 45.661625> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.929106, 38.018291, 45.885880>,  <29.940907, 37.819908, 46.020432>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.929106, 38.018291, 45.885880>,  <29.909437, 38.348934, 45.661625>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.929106, 38.018291, 45.885880> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664146, -0.392179, -0.636479,
		0.745984, 0.403639, 0.529701,
		0.049170, -0.826602, 0.560635,
		29.943857, 37.770309, 46.054070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.659496, 38.151329, 45.704628>,  <29.909437, 38.348934, 45.661625>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.659496, 38.151329, 45.704628> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.471127, 37.811970, 45.801331>,  <30.358105, 37.608353, 45.859352>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.471127, 37.811970, 45.801331>,  <30.659496, 38.151329, 45.704628>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.471127, 37.811970, 45.801331> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481265, -0.476750, -0.735590,
		0.739332, -0.230059, 0.632820,
		-0.470926, -0.848399, 0.241757,
		30.329849, 37.557449, 45.873859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.226410, 37.663387, 45.824253>,  <30.659496, 38.151329, 45.704628>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.226410, 37.663387, 45.824253> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.881098, 37.480545, 45.738651>,  <30.673910, 37.370838, 45.687290>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.881098, 37.480545, 45.738651>,  <31.226410, 37.663387, 45.824253>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.881098, 37.480545, 45.738651> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479688, -0.611170, -0.629579,
		0.156994, -0.646159, 0.746881,
		-0.863280, -0.457110, -0.214005,
		30.622114, 37.343410, 45.674450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.463711, 36.941486, 45.798801>,  <31.226410, 37.663387, 45.824253>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.463711, 36.941486, 45.798801> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.105337, 36.948544, 45.621265>,  <30.890314, 36.952778, 45.514744>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.105337, 36.948544, 45.621265>,  <31.463711, 36.941486, 45.798801>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.105337, 36.948544, 45.621265> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361228, -0.552537, -0.751144,
		-0.258492, -0.833301, 0.488662,
		-0.895933, 0.017646, -0.443839,
		30.836557, 36.953838, 45.488113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.358553, 36.287704, 45.617191>,  <31.463711, 36.941486, 45.798801>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.358553, 36.287704, 45.617191> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.108894, 36.494789, 45.383125>,  <30.959099, 36.619038, 45.242687>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.108894, 36.494789, 45.383125>,  <31.358553, 36.287704, 45.617191>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.108894, 36.494789, 45.383125> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279982, -0.551013, -0.786127,
		-0.729419, -0.654494, 0.198963,
		-0.624146, 0.517710, -0.585166,
		30.921650, 36.650101, 45.207577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.034512, 35.774483, 45.204430>,  <31.358553, 36.287704, 45.617191>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.034512, 35.774483, 45.204430> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.006004, 36.122639, 45.009560>,  <30.988899, 36.331532, 44.892635>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.006004, 36.122639, 45.009560>,  <31.034512, 35.774483, 45.204430>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.006004, 36.122639, 45.009560> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382413, -0.427257, -0.819275,
		-0.921239, -0.244692, -0.302399,
		-0.071268, 0.870389, -0.487179,
		30.984623, 36.383755, 44.863407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.787901, 35.498840, 44.595554>,  <31.034512, 35.774483, 45.204430>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.787901, 35.498840, 44.595554> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.900936, 35.875092, 44.520329>,  <30.968758, 36.100842, 44.475193>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.900936, 35.875092, 44.520329>,  <30.787901, 35.498840, 44.595554>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.900936, 35.875092, 44.520329> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354344, -0.284549, -0.890771,
		-0.891394, 0.185084, -0.413715,
		0.282589, 0.940625, -0.188063,
		30.985712, 36.157280, 44.463909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.568136, 35.720512, 43.964333>,  <30.787901, 35.498840, 44.595554>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.568136, 35.720512, 43.964333> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.900944, 35.926956, 44.045692>,  <31.100628, 36.050823, 44.094509>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.900944, 35.926956, 44.045692>,  <30.568136, 35.720512, 43.964333>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.900944, 35.926956, 44.045692> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423087, -0.353212, -0.834409,
		-0.358802, 0.780303, -0.512239,
		0.832021, 0.516109, 0.203403,
		31.150551, 36.081787, 44.106712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.820124, 36.032433, 43.231693>,  <30.568136, 35.720512, 43.964333>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.820124, 36.032433, 43.231693> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.131287, 36.046459, 43.482655>,  <31.317984, 36.054874, 43.633232>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.131287, 36.046459, 43.482655>,  <30.820124, 36.032433, 43.231693>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.131287, 36.046459, 43.482655> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609807, -0.283095, -0.740265,
		0.151653, 0.958451, -0.241607,
		0.777905, 0.035070, 0.627402,
		31.364658, 36.056980, 43.670876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.479101, 36.673477, 42.836151>,  <30.820124, 36.032433, 43.231693>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.479101, 36.673477, 42.836151> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.171476, 36.546505, 42.614239>,  <29.986902, 36.470322, 42.481091>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.171476, 36.546505, 42.614239>,  <30.479101, 36.673477, 42.836151>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.171476, 36.546505, 42.614239> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636981, 0.308763, 0.706343,
		-0.052916, 0.896608, -0.439653,
		-0.769061, -0.317427, -0.554784,
		29.940758, 36.451279, 42.447803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.059519, 37.238895, 43.043270>,  <30.479101, 36.673477, 42.836151>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.059519, 37.238895, 43.043270> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.854052, 36.931084, 42.891499>,  <29.730772, 36.746395, 42.800438>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.854052, 36.931084, 42.891499>,  <30.059519, 37.238895, 43.043270>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.854052, 36.931084, 42.891499> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661391, 0.073446, 0.746437,
		-0.546541, 0.634369, -0.546689,
		-0.513668, -0.769533, -0.379425,
		29.699951, 36.700222, 42.777672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.333109, 37.425491, 43.032024>,  <30.059519, 37.238895, 43.043270>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.333109, 37.425491, 43.032024> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.327919, 37.025608, 43.023869>,  <29.324804, 36.785679, 43.018974>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.327919, 37.025608, 43.023869>,  <29.333109, 37.425491, 43.032024>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.327919, 37.025608, 43.023869> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658370, -0.006807, 0.752664,
		-0.752583, 0.023191, -0.658089,
		-0.012975, -0.999708, -0.020391,
		29.324026, 36.725697, 43.017750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.527311, 37.198494, 42.840435>,  <29.333109, 37.425491, 43.032024>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.527311, 37.198494, 42.840435> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.730251, 36.903244, 43.018318>,  <28.852016, 36.726093, 43.125046>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.730251, 36.903244, 43.018318>,  <28.527311, 37.198494, 42.840435>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.730251, 36.903244, 43.018318> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736454, -0.103423, 0.668535,
		-0.447471, -0.666687, -0.596068,
		0.507351, -0.738127, 0.444706,
		28.882456, 36.681805, 43.151730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.982985, 36.871235, 43.085484>,  <28.527311, 37.198494, 42.840435>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.982985, 36.871235, 43.085484> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.262711, 36.670822, 43.289413>,  <28.430546, 36.550575, 43.411770>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.262711, 36.670822, 43.289413>,  <27.982985, 36.871235, 43.085484>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.262711, 36.670822, 43.289413> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628336, -0.090818, 0.772622,
		-0.340810, -0.860649, -0.378329,
		0.699316, -0.501035, 0.509825,
		28.472506, 36.520512, 43.442360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.772758, 36.185024, 43.280872>,  <27.982985, 36.871235, 43.085484>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.772758, 36.185024, 43.280872> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.058891, 36.297291, 43.536850>,  <28.230572, 36.364651, 43.690437>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.058891, 36.297291, 43.536850>,  <27.772758, 36.185024, 43.280872>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.058891, 36.297291, 43.536850> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615124, -0.181592, 0.767234,
		0.331545, -0.942471, 0.042746,
		0.715333, 0.280666, 0.639942,
		28.273491, 36.381489, 43.728832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.588982, 35.777710, 43.849644>,  <27.772758, 36.185024, 43.280872>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.588982, 35.777710, 43.849644> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.840649, 36.061195, 43.977318>,  <27.991648, 36.231285, 44.053925>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.840649, 36.061195, 43.977318>,  <27.588982, 35.777710, 43.849644>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.840649, 36.061195, 43.977318> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507722, 0.063791, 0.859156,
		0.588530, -0.702611, 0.399962,
		0.629167, 0.708709, 0.319188,
		28.029398, 36.273808, 44.073074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.342382, 35.707214, 44.555759>,  <27.588982, 35.777710, 43.849644>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.342382, 35.707214, 44.555759> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.590324, 36.019936, 44.528751>,  <27.739090, 36.207569, 44.512547>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.590324, 36.019936, 44.528751>,  <27.342382, 35.707214, 44.555759>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.590324, 36.019936, 44.528751> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446513, 0.422153, 0.788932,
		0.645295, -0.458875, 0.610760,
		0.619856, 0.781806, -0.067520,
		27.776281, 36.254478, 44.508495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.721420, 35.756279, 45.208870>,  <27.342382, 35.707214, 44.555759>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.721420, 35.756279, 45.208870> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.723581, 36.118732, 45.039688>,  <27.724878, 36.336205, 44.938179>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.723581, 36.118732, 45.039688>,  <27.721420, 35.756279, 45.208870>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.723581, 36.118732, 45.039688> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510091, 0.366293, 0.778227,
		0.860104, 0.211543, 0.464189,
		0.005401, 0.906134, -0.422956,
		27.725201, 36.390572, 44.912800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.684519, 36.160931, 45.776524>,  <27.721420, 35.756279, 45.208870>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.684519, 36.160931, 45.776524> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.592373, 36.404240, 45.472698>,  <27.537085, 36.550224, 45.290401>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.592373, 36.404240, 45.472698>,  <27.684519, 36.160931, 45.776524>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.592373, 36.404240, 45.472698> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512860, 0.587462, 0.625990,
		0.826986, 0.533757, 0.176627,
		-0.230365, 0.608270, -0.759566,
		27.523264, 36.586720, 45.244827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.792179, 36.970192, 45.920567>,  <27.684519, 36.160931, 45.776524>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.792179, 36.970192, 45.920567> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.538673, 36.965168, 45.611198>,  <27.386570, 36.962154, 45.425575>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.538673, 36.965168, 45.611198>,  <27.792179, 36.970192, 45.920567>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.538673, 36.965168, 45.611198> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535601, 0.728531, 0.427052,
		0.558100, 0.684898, -0.468445,
		-0.633764, -0.012562, -0.773425,
		27.348545, 36.961399, 45.379169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.770971, 37.583260, 45.556824>,  <27.792179, 36.970192, 45.920567>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.770971, 37.583260, 45.556824> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.415678, 37.425102, 45.463268>,  <27.202501, 37.330208, 45.407135>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.415678, 37.425102, 45.463268>,  <27.770971, 37.583260, 45.556824>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.415678, 37.425102, 45.463268> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457455, 0.807965, 0.371387,
		0.042133, 0.436874, -0.898536,
		-0.888234, -0.395392, -0.233892,
		27.149208, 37.306484, 45.393101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.304712, 38.165112, 45.250568>,  <27.770971, 37.583260, 45.556824>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.304712, 38.165112, 45.250568> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.061497, 37.879311, 45.389004>,  <26.915567, 37.707829, 45.472065>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.061497, 37.879311, 45.389004>,  <27.304712, 38.165112, 45.250568>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.061497, 37.879311, 45.389004> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555036, 0.694266, 0.458180,
		-0.567647, 0.086501, -0.818715,
		-0.608039, -0.714501, 0.346087,
		26.879086, 37.664959, 45.492828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.634918, 38.348995, 44.919632>,  <27.304712, 38.165112, 45.250568>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.634918, 38.348995, 44.919632> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.625019, 38.125195, 45.251019>,  <26.619080, 37.990913, 45.449848>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.625019, 38.125195, 45.251019>,  <26.634918, 38.348995, 44.919632>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.625019, 38.125195, 45.251019> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405689, 0.763031, 0.503190,
		-0.913676, -0.323644, -0.245867,
		-0.024750, -0.559498, 0.828462,
		26.617594, 37.957344, 45.499557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.292101, 38.413708, 44.569836>,  <26.634918, 38.348995, 44.919632>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.292101, 38.413708, 44.569836> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.966980, 38.638439, 44.508259>,  <26.771908, 38.773277, 44.471313>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.966980, 38.638439, 44.508259>,  <27.292101, 38.413708, 44.569836>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.966980, 38.638439, 44.508259> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333723, 0.232476, -0.913556,
		-0.477475, -0.793915, -0.376452,
		-0.812802, 0.561831, -0.153946,
		26.723139, 38.806988, 44.462074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.946115, 38.061836, 43.979527>,  <27.292101, 38.413708, 44.569836>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.946115, 38.061836, 43.979527> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.800634, 38.434002, 43.997662>,  <26.713345, 38.657299, 44.008541>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.800634, 38.434002, 43.997662>,  <26.946115, 38.061836, 43.979527>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.800634, 38.434002, 43.997662> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019094, 0.056105, -0.998242,
		-0.931318, -0.362200, -0.038171,
		-0.363705, 0.930410, 0.045336,
		26.691523, 38.713123, 44.011261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.475422, 38.078377, 43.519817>,  <26.946115, 38.061836, 43.979527>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.475422, 38.078377, 43.519817> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.562511, 38.464645, 43.576488>,  <26.614765, 38.696407, 43.610489>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.562511, 38.464645, 43.576488>,  <26.475422, 38.078377, 43.519817>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.562511, 38.464645, 43.576488> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113808, 0.119050, -0.986344,
		-0.969353, 0.230873, -0.083981,
		0.217723, 0.965673, 0.141676,
		26.627829, 38.754349, 43.618992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.023222, 38.505318, 43.050163>,  <26.475422, 38.078377, 43.519817>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.023222, 38.505318, 43.050163> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.344543, 38.718815, 43.155857>,  <26.537336, 38.846916, 43.219273>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.344543, 38.718815, 43.155857>,  <26.023222, 38.505318, 43.050163>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.344543, 38.718815, 43.155857> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211161, 0.159593, -0.964335,
		-0.556881, 0.830448, 0.015495,
		0.803302, 0.533748, 0.264232,
		26.585535, 38.878941, 43.235126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.918280, 39.117332, 42.664143>,  <26.023222, 38.505318, 43.050163>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.918280, 39.117332, 42.664143> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.298199, 39.155983, 42.783173>,  <26.526150, 39.179173, 42.854591>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.298199, 39.155983, 42.783173>,  <25.918280, 39.117332, 42.664143>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.298199, 39.155983, 42.783173> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242592, 0.373178, -0.895481,
		-0.197573, 0.922714, 0.331003,
		0.949797, 0.096624, 0.297573,
		26.583138, 39.184971, 42.872444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.242168, 39.787601, 42.476944>,  <25.918280, 39.117332, 42.664143>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.242168, 39.787601, 42.476944> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.553780, 39.542690, 42.530968>,  <26.740746, 39.395744, 42.563381>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.553780, 39.542690, 42.530968>,  <26.242168, 39.787601, 42.476944>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.553780, 39.542690, 42.530968> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432321, 0.368528, -0.822974,
		0.454112, 0.699506, 0.551792,
		0.779026, -0.612273, 0.135058,
		26.787487, 39.359009, 42.571484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.888363, 40.156960, 42.358742>,  <26.242168, 39.787601, 42.476944>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.888363, 40.156960, 42.358742> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.996710, 39.773483, 42.324020>,  <27.061718, 39.543396, 42.303188>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.996710, 39.773483, 42.324020>,  <26.888363, 40.156960, 42.358742>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.996710, 39.773483, 42.324020> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463576, 0.208944, -0.861069,
		0.843639, 0.192997, 0.501024,
		0.270869, -0.958694, -0.086805,
		27.077971, 39.485874, 42.297977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.253828, 40.628235, 42.806511>,  <26.888363, 40.156960, 42.358742>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.253828, 40.628235, 42.806511> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.365448, 41.005405, 42.733833>,  <27.432421, 41.231709, 42.690228>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.365448, 41.005405, 42.733833>,  <27.253828, 40.628235, 42.806511>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.365448, 41.005405, 42.733833> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674331, 0.327126, 0.662017,
		0.683674, -0.062212, 0.727131,
		0.279049, 0.942931, -0.181696,
		27.449163, 41.288284, 42.679325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.482138, 40.987961, 43.453785>,  <27.253828, 40.628235, 42.806511>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.482138, 40.987961, 43.453785> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.385080, 41.273731, 43.191269>,  <27.326845, 41.445194, 43.033760>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.385080, 41.273731, 43.191269>,  <27.482138, 40.987961, 43.453785>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.385080, 41.273731, 43.191269> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514881, 0.478528, 0.711273,
		0.822206, 0.510499, 0.251732,
		-0.242643, 0.714424, -0.656295,
		27.312288, 41.488060, 42.994381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.727465, 41.519878, 43.866459>,  <27.482138, 40.987961, 43.453785>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.727465, 41.519878, 43.866459> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.465515, 41.662811, 43.600090>,  <27.308346, 41.748569, 43.440269>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.465515, 41.662811, 43.600090>,  <27.727465, 41.519878, 43.866459>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.465515, 41.662811, 43.600090> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506856, 0.445934, 0.737726,
		0.560571, 0.820645, -0.110915,
		-0.654872, 0.357330, -0.665926,
		27.269054, 41.770012, 43.400311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.268375, 41.993481, 44.251228>,  <27.727465, 41.519878, 43.866459>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.268375, 41.993481, 44.251228> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.094603, 42.017044, 43.891716>,  <26.990339, 42.031181, 43.676010>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.094603, 42.017044, 43.891716>,  <27.268375, 41.993481, 44.251228>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.094603, 42.017044, 43.891716> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758787, 0.513706, 0.400435,
		0.485296, 0.855941, -0.178471,
		-0.434430, 0.058908, -0.898777,
		26.964273, 42.034718, 43.622082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.123093, 42.691055, 43.865330>,  <27.268375, 41.993481, 44.251228>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.123093, 42.691055, 43.865330> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.851995, 42.399063, 43.830032>,  <26.689337, 42.223866, 43.808853>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.851995, 42.399063, 43.830032>,  <27.123093, 42.691055, 43.865330>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.851995, 42.399063, 43.830032> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666758, 0.559530, 0.492300,
		-0.309995, 0.392492, -0.865941,
		-0.677744, -0.729983, -0.088246,
		26.648672, 42.180069, 43.803558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.519861, 43.113014, 43.912998>,  <27.123093, 42.691055, 43.865330>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.519861, 43.113014, 43.912998> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.364891, 42.744930, 43.935318>,  <26.271910, 42.524078, 43.948711>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.364891, 42.744930, 43.935318>,  <26.519861, 43.113014, 43.912998>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.364891, 42.744930, 43.935318> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642800, 0.313026, 0.699159,
		-0.660840, 0.235004, -0.712786,
		-0.387426, -0.920211, 0.055799,
		26.248663, 42.468868, 43.952057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.823345, 43.192383, 43.873505>,  <26.519861, 43.113014, 43.912998>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.823345, 43.192383, 43.873505> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.870659, 42.844116, 44.064480>,  <25.899048, 42.635155, 44.179066>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.870659, 42.844116, 44.064480>,  <25.823345, 43.192383, 43.873505>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.870659, 42.844116, 44.064480> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692224, 0.272418, 0.668293,
		-0.711924, -0.409540, -0.570475,
		0.118285, -0.870670, 0.477434,
		25.906145, 42.582916, 44.207710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.143864, 42.815022, 44.029900>,  <25.823345, 43.192383, 43.873505>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.143864, 42.815022, 44.029900> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.424994, 42.675816, 44.278069>,  <25.593672, 42.592293, 44.426968>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.424994, 42.675816, 44.278069>,  <25.143864, 42.815022, 44.029900>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.424994, 42.675816, 44.278069> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618445, 0.132040, 0.774656,
		-0.351515, -0.928142, -0.122429,
		0.702825, -0.348019, 0.620419,
		25.635841, 42.571411, 44.464195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.757318, 42.542610, 44.428070>,  <25.143864, 42.815022, 44.029900>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.757318, 42.542610, 44.428070> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.097651, 42.574432, 44.635822>,  <25.301849, 42.593525, 44.760475>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.097651, 42.574432, 44.635822>,  <24.757318, 42.542610, 44.428070>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.097651, 42.574432, 44.635822> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508759, -0.122343, 0.852172,
		0.131335, -0.989294, -0.063620,
		0.850832, 0.079553, 0.519380,
		25.352900, 42.598297, 44.791637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<36.415192, 38.831619, 33.889969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.573856, 38.974323, 34.228291>,  <36.669056, 39.059944, 34.431282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.573856, 38.974323, 34.228291>,  <36.415192, 38.831619, 33.889969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.573856, 38.974323, 34.228291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.903110, 0.316754, 0.289930,
		-0.164476, -0.878856, 0.447839,
		0.396661, 0.356761, 0.845802,
		36.692856, 39.081352, 34.482033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.885399, 38.721104, 34.319111>,  <36.415192, 38.831619, 33.889969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.885399, 38.721104, 34.319111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.126694, 38.985226, 34.498039>,  <36.271473, 39.143700, 34.605396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.126694, 38.985226, 34.498039>,  <35.885399, 38.721104, 34.319111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.126694, 38.985226, 34.498039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797556, 0.498105, 0.340286,
		0.001881, -0.562038, 0.827110,
		0.603241, 0.660307, 0.447320,
		36.307667, 39.183319, 34.632236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.733875, 38.752808, 35.034389>,  <35.885399, 38.721104, 34.319111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.733875, 38.752808, 35.034389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.918015, 39.103020, 34.975712>,  <36.028500, 39.313148, 34.940506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.918015, 39.103020, 34.975712>,  <35.733875, 38.752808, 35.034389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.918015, 39.103020, 34.975712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719757, 0.464840, 0.515630,
		0.519642, -0.131784, 0.844160,
		0.460351, 0.875532, -0.146698,
		36.056122, 39.365681, 34.931702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.654411, 39.108421, 35.642033>,  <35.733875, 38.752808, 35.034389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.654411, 39.108421, 35.642033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.718567, 39.413422, 35.391315>,  <35.757061, 39.596420, 35.240883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.718567, 39.413422, 35.391315>,  <35.654411, 39.108421, 35.642033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.718567, 39.413422, 35.391315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809708, 0.464799, 0.358239,
		0.564491, 0.450064, 0.691949,
		0.160387, 0.762499, -0.626795,
		35.766682, 39.642170, 35.203278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.721703, 39.700886, 36.038639>,  <35.654411, 39.108421, 35.642033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.721703, 39.700886, 36.038639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.614517, 39.823933, 35.673439>,  <35.550205, 39.897762, 35.454319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.614517, 39.823933, 35.673439>,  <35.721703, 39.700886, 36.038639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.614517, 39.823933, 35.673439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677056, 0.614064, 0.405612,
		0.685414, 0.726839, 0.043730,
		-0.267962, 0.307619, -0.912999,
		35.534130, 39.916218, 35.399540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.530762, 40.470844, 36.127567>,  <35.721703, 39.700886, 36.038639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.530762, 40.470844, 36.127567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.354324, 40.352062, 35.788803>,  <35.248463, 40.280792, 35.585545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.354324, 40.352062, 35.788803>,  <35.530762, 40.470844, 36.127567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.354324, 40.352062, 35.788803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771586, 0.607440, 0.188870,
		0.458359, 0.736771, -0.497066,
		-0.441092, -0.296959, -0.846908,
		35.221996, 40.262974, 35.534729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.099434, 40.994099, 36.001167>,  <35.530762, 40.470844, 36.127567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.099434, 40.994099, 36.001167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.976524, 40.723106, 35.733852>,  <34.902779, 40.560513, 35.573463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.976524, 40.723106, 35.733852>,  <35.099434, 40.994099, 36.001167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.976524, 40.723106, 35.733852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.880114, 0.469395, -0.071187,
		0.361917, 0.566293, -0.740491,
		-0.307270, -0.677481, -0.668285,
		34.884342, 40.519863, 35.533367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.782726, 41.428566, 35.391193>,  <35.099434, 40.994099, 36.001167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.782726, 41.428566, 35.391193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.634918, 41.056976, 35.399773>,  <34.546234, 40.834023, 35.404919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.634918, 41.056976, 35.399773>,  <34.782726, 41.428566, 35.391193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.634918, 41.056976, 35.399773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.890550, 0.347463, -0.293581,
		0.265277, -0.127583, -0.955694,
		-0.369524, -0.928973, 0.021445,
		34.524059, 40.778286, 35.406204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.277477, 41.366337, 34.835499>,  <34.782726, 41.428566, 35.391193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.277477, 41.366337, 34.835499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.172321, 41.069550, 35.082195>,  <34.109230, 40.891476, 35.230213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.172321, 41.069550, 35.082195>,  <34.277477, 41.366337, 34.835499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.172321, 41.069550, 35.082195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.930875, 0.363134, 0.040079,
		-0.253699, -0.563575, -0.786142,
		-0.262887, -0.741968, 0.616744,
		34.093456, 40.846958, 35.267220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.529774, 41.301132, 34.716263>,  <34.277477, 41.366337, 34.835499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.529774, 41.301132, 34.716263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.564404, 41.108006, 35.064835>,  <33.585182, 40.992130, 35.273979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.564404, 41.108006, 35.064835>,  <33.529774, 41.301132, 34.716263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.564404, 41.108006, 35.064835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.908001, 0.321679, 0.268433,
		-0.409926, -0.814498, -0.410552,
		0.086572, -0.482820, 0.871430,
		33.590374, 40.963161, 35.326263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.825771, 40.961411, 34.875847>,  <33.529774, 41.301132, 34.716263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.825771, 40.961411, 34.875847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.031128, 40.967548, 35.219055>,  <33.154343, 40.971230, 35.424980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.031128, 40.967548, 35.219055>,  <32.825771, 40.961411, 34.875847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.031128, 40.967548, 35.219055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830174, 0.262119, 0.492041,
		-0.217355, -0.964914, 0.147304,
		0.513389, 0.015340, 0.858019,
		33.185146, 40.972149, 35.476460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.326141, 40.603737, 35.431427>,  <32.825771, 40.961411, 34.875847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.326141, 40.603737, 35.431427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.624443, 40.783592, 35.628071>,  <32.803425, 40.891506, 35.746056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.624443, 40.783592, 35.628071>,  <32.326141, 40.603737, 35.431427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.624443, 40.783592, 35.628071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606466, 0.152717, 0.780306,
		0.275777, -0.880059, 0.386579,
		0.745752, 0.449637, 0.491610,
		32.848167, 40.918484, 35.775555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.461182, 39.751144, 35.438168>,  <32.326141, 40.603737, 35.431427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.461182, 39.751144, 35.438168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.173939, 39.522732, 35.279049>,  <32.001591, 39.385685, 35.183578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.173939, 39.522732, 35.279049>,  <32.461182, 39.751144, 35.438168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.173939, 39.522732, 35.279049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666897, -0.401273, -0.627877,
		0.198914, -0.716172, 0.668978,
		-0.718110, -0.571032, -0.397794,
		31.958506, 39.351421, 35.159710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.791821, 39.131882, 35.269962>,  <32.461182, 39.751144, 35.438168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.791821, 39.131882, 35.269962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.459221, 39.068218, 35.057064>,  <32.259663, 39.030018, 34.929325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.459221, 39.068218, 35.057064>,  <32.791821, 39.131882, 35.269962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.459221, 39.068218, 35.057064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546029, -0.410611, -0.730240,
		-0.102319, -0.897812, 0.428328,
		-0.831495, -0.159162, -0.532244,
		32.209774, 39.020470, 34.897392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.686329, 38.370773, 35.140972>,  <32.791821, 39.131882, 35.269962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.686329, 38.370773, 35.140972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.500263, 38.564232, 34.844402>,  <32.388626, 38.680309, 34.666462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.500263, 38.564232, 34.844402>,  <32.686329, 38.370773, 35.140972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.500263, 38.564232, 34.844402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282323, -0.712760, -0.642080,
		-0.838999, -0.507991, 0.195002,
		-0.465161, 0.483650, -0.741422,
		32.360714, 38.709328, 34.621975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.312840, 37.921116, 34.790470>,  <32.686329, 38.370773, 35.140972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.312840, 37.921116, 34.790470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.363247, 38.211491, 34.520023>,  <32.393490, 38.385715, 34.357758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.363247, 38.211491, 34.520023>,  <32.312840, 37.921116, 34.790470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.363247, 38.211491, 34.520023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148095, -0.687676, -0.710753,
		-0.980911, -0.010560, -0.194168,
		0.126019, 0.725941, -0.676114,
		32.401054, 38.429272, 34.317188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.829567, 37.832176, 34.206089>,  <32.312840, 37.921116, 34.790470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.829567, 37.832176, 34.206089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.132141, 38.041065, 34.048561>,  <32.313686, 38.166397, 33.954044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.132141, 38.041065, 34.048561>,  <31.829567, 37.832176, 34.206089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.132141, 38.041065, 34.048561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029434, -0.628674, -0.777112,
		-0.653408, 0.576242, -0.490921,
		0.756433, 0.522221, -0.393820,
		32.359070, 38.197731, 33.930416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.789497, 37.778072, 33.450699>,  <31.829567, 37.832176, 34.206089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.789497, 37.778072, 33.450699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.158199, 37.933060, 33.456783>,  <32.379421, 38.026054, 33.460434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.158199, 37.933060, 33.456783>,  <31.789497, 37.778072, 33.450699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.158199, 37.933060, 33.456783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176742, -0.384880, -0.905886,
		-0.345147, 0.837696, -0.423248,
		0.921757, 0.387470, 0.015216,
		32.434727, 38.049301, 33.461349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.848867, 38.217346, 32.842113>,  <31.789497, 37.778072, 33.450699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.848867, 38.217346, 32.842113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.217804, 38.113716, 32.956772>,  <32.439167, 38.051537, 33.025566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.217804, 38.113716, 32.956772>,  <31.848867, 38.217346, 32.842113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.217804, 38.113716, 32.956772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183965, -0.357931, -0.915447,
		0.339771, 0.897087, -0.282473,
		0.922341, -0.259077, 0.286647,
		32.494507, 38.035992, 33.042767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.288002, 38.460358, 32.320442>,  <31.848867, 38.217346, 32.842113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.288002, 38.460358, 32.320442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.506794, 38.177082, 32.499001>,  <32.638069, 38.007114, 32.606136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.506794, 38.177082, 32.499001>,  <32.288002, 38.460358, 32.320442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.506794, 38.177082, 32.499001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252978, -0.368477, -0.894554,
		0.798004, 0.602236, -0.022394,
		0.546984, -0.708192, 0.446399,
		32.670891, 37.964622, 32.632919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.933743, 38.422916, 32.007118>,  <32.288002, 38.460358, 32.320442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.933743, 38.422916, 32.007118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.870674, 38.058098, 32.158543>,  <32.832832, 37.839207, 32.249397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.870674, 38.058098, 32.158543>,  <32.933743, 38.422916, 32.007118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.870674, 38.058098, 32.158543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305388, -0.409598, -0.859632,
		0.939083, -0.019932, 0.343111,
		-0.157672, -0.912048, 0.378559,
		32.823372, 37.784485, 32.272110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.494648, 38.218918, 31.767195>,  <32.933743, 38.422916, 32.007118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.494648, 38.218918, 31.767195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.263992, 37.911312, 31.877533>,  <33.125599, 37.726746, 31.943737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.263992, 37.911312, 31.877533>,  <33.494648, 38.218918, 31.767195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.263992, 37.911312, 31.877533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356940, -0.540845, -0.761630,
		0.734899, -0.340729, 0.586369,
		-0.576644, -0.769019, 0.275847,
		33.091000, 37.680607, 31.960287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.879364, 37.560486, 31.787056>,  <33.494648, 38.218918, 31.767195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.879364, 37.560486, 31.787056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.497662, 37.453606, 31.733398>,  <33.268639, 37.389477, 31.701204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.497662, 37.453606, 31.733398>,  <33.879364, 37.560486, 31.787056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.497662, 37.453606, 31.733398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276608, -0.618711, -0.735313,
		0.113478, -0.738784, 0.664319,
		-0.954259, -0.267197, -0.134144,
		33.211384, 37.373447, 31.693155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.816814, 36.801079, 31.772623>,  <33.879364, 37.560486, 31.787056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.816814, 36.801079, 31.772623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.559460, 36.998760, 31.538761>,  <33.405048, 37.117371, 31.398445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.559460, 36.998760, 31.538761>,  <33.816814, 36.801079, 31.772623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.559460, 36.998760, 31.538761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255404, -0.581385, -0.772503,
		-0.721683, -0.646338, 0.247832,
		-0.643383, 0.494205, -0.584653,
		33.366444, 37.147022, 31.363365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.102737, 36.138512, 31.925236>,  <33.816814, 36.801079, 31.772623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.102737, 36.138512, 31.925236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.397465, 36.285812, 32.152035>,  <34.574303, 36.374195, 32.288113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.397465, 36.285812, 32.152035>,  <34.102737, 36.138512, 31.925236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.397465, 36.285812, 32.152035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098919, -0.770896, 0.629234,
		0.668814, -0.519718, -0.531583,
		0.736820, 0.368257, 0.566996,
		34.618511, 36.396290, 32.322132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.555122, 35.493969, 32.118088>,  <34.102737, 36.138512, 31.925236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.555122, 35.493969, 32.118088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.544884, 35.805565, 32.368690>,  <34.538738, 35.992523, 32.519054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.544884, 35.805565, 32.368690>,  <34.555122, 35.493969, 32.118088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.544884, 35.805565, 32.368690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304840, -0.602950, 0.737241,
		0.952059, -0.172112, 0.252904,
		-0.025601, 0.778992, 0.626511,
		34.537205, 36.039261, 32.556644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.911400, 35.337551, 32.830139>,  <34.555122, 35.493969, 32.118088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.911400, 35.337551, 32.830139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.629971, 35.619991, 32.862171>,  <34.461113, 35.789455, 32.881390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.629971, 35.619991, 32.862171>,  <34.911400, 35.337551, 32.830139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.629971, 35.619991, 32.862171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294122, -0.391927, 0.871714,
		0.646902, 0.589759, 0.483428,
		-0.703570, 0.706100, 0.080077,
		34.418900, 35.831821, 32.886196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.420872, 35.233803, 33.506344>,  <34.911400, 35.337551, 32.830139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.420872, 35.233803, 33.506344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.663849, 34.962151, 33.671165>,  <35.809635, 34.799160, 33.770058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.663849, 34.962151, 33.671165>,  <35.420872, 35.233803, 33.506344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.663849, 34.962151, 33.671165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607431, -0.062848, 0.791882,
		-0.511894, -0.731322, -0.450702,
		0.607447, -0.679130, 0.412056,
		35.846085, 34.758411, 33.794781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.189068, 34.531227, 33.715248>,  <35.420872, 35.233803, 33.506344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.189068, 34.531227, 33.715248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.481407, 34.632305, 33.968864>,  <35.656811, 34.692951, 34.121033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.481407, 34.632305, 33.968864>,  <35.189068, 34.531227, 33.715248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.481407, 34.632305, 33.968864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666026, 0.060926, 0.743436,
		0.149234, -0.965626, 0.212830,
		0.730848, 0.252696, 0.634039,
		35.700661, 34.708115, 34.159077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.135124, 34.073692, 34.345459>,  <35.189068, 34.531227, 33.715248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.135124, 34.073692, 34.345459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.335205, 34.405273, 34.445572>,  <35.455254, 34.604221, 34.505642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.335205, 34.405273, 34.445572>,  <35.135124, 34.073692, 34.345459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.335205, 34.405273, 34.445572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540784, 0.073311, 0.837961,
		0.676277, -0.554500, 0.484953,
		0.500202, 0.828948, 0.250286,
		35.485264, 34.653957, 34.520657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.308895, 33.981358, 34.943481>,  <35.135124, 34.073692, 34.345459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.308895, 33.981358, 34.943481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.330513, 34.379139, 34.907387>,  <35.343483, 34.617809, 34.885731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.330513, 34.379139, 34.907387>,  <35.308895, 33.981358, 34.943481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.330513, 34.379139, 34.907387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599998, 0.104575, 0.793137,
		0.798174, 0.011278, 0.602322,
		0.054043, 0.994453, -0.090235,
		35.346725, 34.677475, 34.880318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.478600, 34.225624, 35.594707>,  <35.308895, 33.981358, 34.943481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.478600, 34.225624, 35.594707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.294121, 34.531155, 35.414101>,  <35.183434, 34.714474, 35.305737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.294121, 34.531155, 35.414101>,  <35.478600, 34.225624, 35.594707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.294121, 34.531155, 35.414101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508960, 0.189095, 0.839764,
		0.726810, 0.617104, 0.301544,
		-0.461202, 0.763823, -0.451517,
		35.155762, 34.760300, 35.278645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.377632, 34.602779, 36.130939>,  <35.478600, 34.225624, 35.594707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.377632, 34.602779, 36.130939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.172279, 34.798332, 35.848824>,  <35.049068, 34.915665, 35.679554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.172279, 34.798332, 35.848824>,  <35.377632, 34.602779, 36.130939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.172279, 34.798332, 35.848824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638911, 0.330933, 0.694461,
		0.572913, 0.807141, 0.142458,
		-0.513384, 0.488884, -0.705287,
		35.018265, 34.944996, 35.637238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.171795, 35.286293, 36.402424>,  <35.377632, 34.602779, 36.130939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.171795, 35.286293, 36.402424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.922630, 35.236298, 36.093525>,  <34.773132, 35.206303, 35.908188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.922630, 35.236298, 36.093525>,  <35.171795, 35.286293, 36.402424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.922630, 35.236298, 36.093525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709664, 0.505663, 0.490594,
		0.329178, 0.853630, -0.403681,
		-0.622912, -0.124985, -0.772243,
		34.735756, 35.198803, 35.861851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.850121, 35.911491, 36.291542>,  <35.171795, 35.286293, 36.402424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.850121, 35.911491, 36.291542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.593967, 35.655163, 36.122185>,  <34.440277, 35.501366, 36.020573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.593967, 35.655163, 36.122185>,  <34.850121, 35.911491, 36.291542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.593967, 35.655163, 36.122185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766927, 0.503596, 0.397761,
		-0.041678, 0.579427, -0.813958,
		-0.640379, -0.640824, -0.423390,
		34.401855, 35.462917, 35.995167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.291824, 36.310017, 35.979778>,  <34.850121, 35.911491, 36.291542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.291824, 36.310017, 35.979778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.142490, 35.942509, 36.031124>,  <34.052891, 35.722004, 36.061932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.142490, 35.942509, 36.031124>,  <34.291824, 36.310017, 35.979778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.142490, 35.942509, 36.031124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806874, 0.389866, 0.443801,
		-0.457798, 0.062109, -0.886884,
		-0.373330, -0.918774, 0.128366,
		34.030491, 35.666878, 36.069633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.676571, 36.395805, 35.890354>,  <34.291824, 36.310017, 35.979778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.676571, 36.395805, 35.890354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.645821, 36.054890, 36.097309>,  <33.627369, 35.850338, 36.221481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.645821, 36.054890, 36.097309>,  <33.676571, 36.395805, 35.890354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.645821, 36.054890, 36.097309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786137, 0.370988, 0.494324,
		-0.613252, -0.368733, -0.698540,
		-0.076876, -0.852293, 0.517385,
		33.622757, 35.799202, 36.252525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.903492, 36.326363, 36.045292>,  <33.676571, 36.395805, 35.890354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.903492, 36.326363, 36.045292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.044609, 36.062347, 36.310585>,  <33.129280, 35.903938, 36.469761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.044609, 36.062347, 36.310585>,  <32.903492, 36.326363, 36.045292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.044609, 36.062347, 36.310585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814702, 0.131939, 0.564670,
		-0.460213, -0.739552, -0.491190,
		0.352795, -0.660042, 0.663234,
		33.150448, 35.864334, 36.509556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.348434, 35.925224, 36.240204>,  <32.903492, 36.326363, 36.045292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.348434, 35.925224, 36.240204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.602768, 35.873791, 36.544621>,  <32.755367, 35.842930, 36.727272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.602768, 35.873791, 36.544621>,  <32.348434, 35.925224, 36.240204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.602768, 35.873791, 36.544621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750736, 0.125899, 0.648494,
		-0.179200, -0.983675, -0.016481,
		0.635832, -0.128584, 0.761041,
		32.793518, 35.835217, 36.772934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.104614, 35.448582, 36.702904>,  <32.348434, 35.925224, 36.240204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.104614, 35.448582, 36.702904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.345711, 35.653965, 36.947220>,  <32.490368, 35.777195, 37.093811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.345711, 35.653965, 36.947220>,  <32.104614, 35.448582, 36.702904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.345711, 35.653965, 36.947220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717703, 0.014333, 0.696202,
		0.348713, -0.857998, 0.377146,
		0.602746, 0.513454, 0.610789,
		32.526535, 35.808002, 37.130455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.015129, 35.145382, 37.347237>,  <32.104614, 35.448582, 36.702904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.015129, 35.145382, 37.347237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.226574, 35.469662, 37.447895>,  <32.353443, 35.664230, 37.508289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.226574, 35.469662, 37.447895>,  <32.015129, 35.145382, 37.347237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.226574, 35.469662, 37.447895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459104, 0.023693, 0.888066,
		0.713994, -0.584980, 0.384721,
		0.528616, 0.810702, 0.251650,
		32.385159, 35.712872, 37.523392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.478580, 35.029945, 37.983692>,  <32.015129, 35.145382, 37.347237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.478580, 35.029945, 37.983692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.415161, 35.424595, 37.968544>,  <32.377110, 35.661385, 37.959457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.415161, 35.424595, 37.968544>,  <32.478580, 35.029945, 37.983692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.415161, 35.424595, 37.968544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596962, -0.065241, 0.799612,
		0.786447, 0.149380, 0.599321,
		-0.158546, 0.986625, -0.037866,
		32.367596, 35.720581, 37.957184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.495884, 35.205135, 38.641335>,  <32.478580, 35.029945, 37.983692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.495884, 35.205135, 38.641335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.334881, 35.535545, 38.483513>,  <32.238277, 35.733791, 38.388821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.334881, 35.535545, 38.483513>,  <32.495884, 35.205135, 38.641335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.334881, 35.535545, 38.483513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399942, 0.229014, 0.887467,
		0.823428, 0.515010, 0.238182,
		-0.402507, 0.826025, -0.394551,
		32.214130, 35.783352, 38.365147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.779308, 35.777027, 39.019924>,  <32.495884, 35.205135, 38.641335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.779308, 35.777027, 39.019924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.425560, 35.856026, 38.850750>,  <32.213310, 35.903427, 38.749245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.425560, 35.856026, 38.850750>,  <32.779308, 35.777027, 39.019924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.425560, 35.856026, 38.850750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319904, 0.403372, 0.857294,
		0.339915, 0.893468, -0.293551,
		-0.884375, 0.197499, -0.422936,
		32.160248, 35.915276, 38.723869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.642658, 36.519863, 39.180134>,  <32.779308, 35.777027, 39.019924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.642658, 36.519863, 39.180134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.299839, 36.339310, 39.080757>,  <32.094147, 36.230980, 39.021133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.299839, 36.339310, 39.080757>,  <32.642658, 36.519863, 39.180134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.299839, 36.339310, 39.080757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428408, 0.356425, 0.830318,
		-0.286239, 0.818057, -0.498849,
		-0.857049, -0.451380, -0.248439,
		32.042725, 36.203896, 39.006226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.159801, 36.904209, 39.568352>,  <32.642658, 36.519863, 39.180134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.159801, 36.904209, 39.568352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.933578, 36.604252, 39.431061>,  <31.797844, 36.424278, 39.348686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.933578, 36.604252, 39.431061>,  <32.159801, 36.904209, 39.568352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.933578, 36.604252, 39.431061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624405, 0.117470, 0.772217,
		-0.538758, 0.651051, -0.534671,
		-0.565561, -0.749889, -0.343231,
		31.763910, 36.379284, 39.328091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.465651, 37.090595, 39.577362>,  <32.159801, 36.904209, 39.568352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.465651, 37.090595, 39.577362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.485491, 36.691334, 39.591393>,  <31.497395, 36.451778, 39.599812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.485491, 36.691334, 39.591393>,  <31.465651, 37.090595, 39.577362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.485491, 36.691334, 39.591393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604537, -0.002050, 0.796574,
		-0.795031, -0.060714, -0.603522,
		0.049600, -0.998153, 0.035074,
		31.500370, 36.391888, 39.601913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.768528, 36.963486, 39.483089>,  <31.465651, 37.090595, 39.577362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.768528, 36.963486, 39.483089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.971714, 36.662930, 39.651558>,  <31.093626, 36.482597, 39.752640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.971714, 36.662930, 39.651558>,  <30.768528, 36.963486, 39.483089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.971714, 36.662930, 39.651558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543265, 0.099982, 0.833587,
		-0.668456, -0.652243, -0.357415,
		0.507966, -0.751387, 0.421174,
		31.124104, 36.437515, 39.777912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.287991, 36.438747, 39.637207>,  <30.768528, 36.963486, 39.483089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.287991, 36.438747, 39.637207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.595055, 36.352116, 39.878468>,  <30.779293, 36.300137, 40.023224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.595055, 36.352116, 39.878468>,  <30.287991, 36.438747, 39.637207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.595055, 36.352116, 39.878468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631609, -0.096402, 0.769270,
		-0.108485, -0.971487, -0.210815,
		0.767659, -0.216607, 0.603142,
		30.825354, 36.287140, 40.059410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.034790, 35.949379, 40.128559>,  <30.287991, 36.438747, 39.637207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.034790, 35.949379, 40.128559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.363817, 36.088345, 40.308643>,  <30.561234, 36.171722, 40.416695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.363817, 36.088345, 40.308643>,  <30.034790, 35.949379, 40.128559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.363817, 36.088345, 40.308643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483756, 0.011321, 0.875130,
		0.298934, -0.937644, 0.177375,
		0.822569, 0.347413, 0.450206,
		30.610588, 36.192570, 40.443707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.071857, 35.607933, 40.679386>,  <30.034790, 35.949379, 40.128559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.071857, 35.607933, 40.679386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.304260, 35.914829, 40.788033>,  <30.443703, 36.098969, 40.853218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.304260, 35.914829, 40.788033>,  <30.071857, 35.607933, 40.679386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.304260, 35.914829, 40.788033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444875, 0.019918, 0.895371,
		0.681555, -0.641050, 0.352899,
		0.581007, 0.767240, 0.271612,
		30.478563, 36.145000, 40.869514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.503363, 35.382755, 41.251881>,  <30.071857, 35.607933, 40.679386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.503363, 35.382755, 41.251881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.444502, 35.777954, 41.233078>,  <30.409185, 36.015072, 41.221794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.444502, 35.777954, 41.233078>,  <30.503363, 35.382755, 41.251881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.444502, 35.777954, 41.233078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280832, 0.003838, 0.959749,
		0.948409, 0.154431, 0.276896,
		-0.147152, 0.987996, -0.047009,
		30.400356, 36.074352, 41.218975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.844051, 35.733242, 41.854160>,  <30.503363, 35.382755, 41.251881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.844051, 35.733242, 41.854160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.570068, 36.004513, 41.747643>,  <30.405678, 36.167274, 41.683731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.570068, 36.004513, 41.747643>,  <30.844051, 35.733242, 41.854160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.570068, 36.004513, 41.747643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377569, -0.017809, 0.925810,
		0.623116, 0.734687, 0.268255,
		-0.684958, 0.678172, -0.266298,
		30.364580, 36.207966, 41.667751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.706541, 36.118454, 42.428436>,  <30.844051, 35.733242, 41.854160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.706541, 36.118454, 42.428436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.378319, 36.230015, 42.228878>,  <30.181385, 36.296951, 42.109142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.378319, 36.230015, 42.228878>,  <30.706541, 36.118454, 42.428436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.378319, 36.230015, 42.228878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478343, 0.142661, 0.866508,
		0.312846, 0.949663, 0.016351,
		-0.820558, 0.278905, -0.498896,
		30.132151, 36.313686, 42.079208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.374071, 36.108765, 42.793797>,  <30.706541, 36.118454, 42.428436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.374071, 36.108765, 42.793797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.565983, 36.093021, 43.144398>,  <31.681129, 36.083576, 43.354759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.565983, 36.093021, 43.144398>,  <31.374071, 36.108765, 42.793797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.565983, 36.093021, 43.144398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844647, -0.249640, -0.473551,
		0.237452, 0.967538, -0.086525,
		0.479779, -0.039363, 0.876506,
		31.709917, 36.081211, 43.407349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.022011, 36.408657, 42.634995>,  <31.374071, 36.108765, 42.793797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.022011, 36.408657, 42.634995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.079082, 36.204273, 42.974068>,  <32.113323, 36.081642, 43.177509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.079082, 36.204273, 42.974068>,  <32.022011, 36.408657, 42.634995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.079082, 36.204273, 42.974068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878810, -0.328607, -0.345992,
		0.455343, 0.794313, 0.402156,
		0.142675, -0.510964, 0.847679,
		32.121883, 36.050983, 43.228371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.729099, 36.593235, 43.028969>,  <32.022011, 36.408657, 42.634995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.729099, 36.593235, 43.028969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.594978, 36.225914, 43.113144>,  <32.514507, 36.005520, 43.163651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.594978, 36.225914, 43.113144>,  <32.729099, 36.593235, 43.028969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.594978, 36.225914, 43.113144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882030, -0.384479, -0.272394,
		0.331051, 0.094281, 0.938891,
		-0.335302, -0.918307, 0.210441,
		32.494389, 35.950420, 43.176277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.251171, 36.282227, 43.444054>,  <32.729099, 36.593235, 43.028969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.251171, 36.282227, 43.444054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.041489, 35.982780, 43.281681>,  <32.915680, 35.803112, 43.184258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.041489, 35.982780, 43.281681>,  <33.251171, 36.282227, 43.444054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.041489, 35.982780, 43.281681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841813, -0.383488, -0.379853,
		0.128695, -0.540839, 0.831222,
		-0.524203, -0.748619, -0.405933,
		32.884228, 35.758194, 43.159901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.536171, 35.596138, 43.593025>,  <33.251171, 36.282227, 43.444054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.536171, 35.596138, 43.593025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.338619, 35.541615, 43.249516>,  <33.220089, 35.508900, 43.043407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.338619, 35.541615, 43.249516>,  <33.536171, 35.596138, 43.593025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.338619, 35.541615, 43.249516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809336, -0.433133, -0.396700,
		-0.317892, -0.890964, 0.324235,
		-0.493882, -0.136307, -0.858778,
		33.190453, 35.500721, 42.991882>
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
