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
	<24.671846, 35.054512, 35.305019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.338867, 35.085960, 35.085621>,  <24.139080, 35.104828, 34.953983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.338867, 35.085960, 35.085621>,  <24.671846, 35.054512, 35.305019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.338867, 35.085960, 35.085621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222729, -0.858914, -0.461149,
		-0.507368, -0.506049, 0.697490,
		-0.832448, 0.078621, -0.548497,
		24.089132, 35.109547, 34.921070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.316431, 34.319817, 35.355515>,  <24.671846, 35.054512, 35.305019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.316431, 34.319817, 35.355515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.262260, 34.535931, 35.023312>,  <24.229759, 34.665600, 34.823990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.262260, 34.535931, 35.023312>,  <24.316431, 34.319817, 35.355515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.262260, 34.535931, 35.023312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520914, -0.674204, -0.523544,
		-0.842798, -0.503526, -0.190139,
		-0.135425, 0.540288, -0.830511,
		24.221632, 34.698017, 34.774158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.276484, 33.832310, 34.875767>,  <24.316431, 34.319817, 35.355515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.276484, 33.832310, 34.875767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.347980, 34.161880, 34.660656>,  <24.390879, 34.359623, 34.531590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.347980, 34.161880, 34.660656>,  <24.276484, 33.832310, 34.875767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.347980, 34.161880, 34.660656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548044, -0.537307, -0.641054,
		-0.817129, -0.180141, -0.547585,
		0.178741, 0.823924, -0.537774,
		24.401604, 34.409058, 34.499325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.977497, 33.983646, 34.086300>,  <24.276484, 33.832310, 34.875767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.977497, 33.983646, 34.086300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.344919, 34.109344, 34.182220>,  <24.565372, 34.184761, 34.239773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.344919, 34.109344, 34.182220>,  <23.977497, 33.983646, 34.086300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.344919, 34.109344, 34.182220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384315, -0.568021, -0.727774,
		-0.092488, 0.760660, -0.642528,
		0.918557, 0.314243, 0.239798,
		24.620487, 34.203617, 34.254158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.213667, 34.352722, 33.490265>,  <23.977497, 33.983646, 34.086300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.213667, 34.352722, 33.490265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.499447, 34.170715, 33.702873>,  <24.670916, 34.061512, 33.830437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.499447, 34.170715, 33.702873>,  <24.213667, 34.352722, 33.490265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.499447, 34.170715, 33.702873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292966, -0.495316, -0.817822,
		0.635397, 0.740012, -0.220574,
		0.714452, -0.455021, 0.531521,
		24.713783, 34.034210, 33.862331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.114895, 33.549000, 33.354797>,  <24.213667, 34.352722, 33.490265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.114895, 33.549000, 33.354797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.437414, 33.428257, 33.151321>,  <24.630926, 33.355812, 33.029236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.437414, 33.428257, 33.151321>,  <24.114895, 33.549000, 33.354797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.437414, 33.428257, 33.151321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587420, 0.509591, 0.628693,
		0.069450, -0.805729, 0.588199,
		0.806297, -0.301857, -0.508692,
		24.679304, 33.337700, 32.998714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.549191, 33.207031, 33.770027>,  <24.114895, 33.549000, 33.354797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.549191, 33.207031, 33.770027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.765848, 33.380142, 33.481770>,  <24.895842, 33.484009, 33.308815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.765848, 33.380142, 33.481770>,  <24.549191, 33.207031, 33.770027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.765848, 33.380142, 33.481770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543287, 0.473950, 0.692972,
		0.641454, -0.766858, 0.021586,
		0.541642, 0.432782, -0.720641,
		24.928341, 33.509975, 33.265575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.300306, 32.967709, 33.702019>,  <24.549191, 33.207031, 33.770027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.300306, 32.967709, 33.702019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.264469, 33.349949, 33.589729>,  <25.242966, 33.579292, 33.522358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.264469, 33.349949, 33.589729>,  <25.300306, 32.967709, 33.702019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.264469, 33.349949, 33.589729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746326, 0.251055, 0.616416,
		0.659523, -0.154281, -0.735681,
		-0.089595, 0.955599, -0.280720,
		25.237591, 33.636627, 33.505512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.942251, 33.091145, 33.368221>,  <25.300306, 32.967709, 33.702019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.942251, 33.091145, 33.368221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.809341, 33.456100, 33.463829>,  <25.729595, 33.675076, 33.521194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.809341, 33.456100, 33.463829>,  <25.942251, 33.091145, 33.368221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.809341, 33.456100, 33.463829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855403, 0.184750, 0.483894,
		0.397343, 0.365247, -0.841852,
		-0.332273, 0.912394, 0.239024,
		25.709660, 33.729820, 33.535538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.563511, 33.566769, 33.444126>,  <25.942251, 33.091145, 33.368221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.563511, 33.566769, 33.444126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.301685, 33.825691, 33.600353>,  <26.144590, 33.981045, 33.694088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.301685, 33.825691, 33.600353>,  <26.563511, 33.566769, 33.444126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.301685, 33.825691, 33.600353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721179, 0.379631, 0.579467,
		0.226822, 0.660965, -0.715316,
		-0.654563, 0.647307, 0.390565,
		26.105316, 34.019882, 33.717522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.811975, 34.276394, 33.255589>,  <26.563511, 33.566769, 33.444126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.811975, 34.276394, 33.255589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.597183, 34.250397, 33.592022>,  <26.468307, 34.234798, 33.793884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.597183, 34.250397, 33.592022>,  <26.811975, 34.276394, 33.255589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.597183, 34.250397, 33.592022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699796, 0.522470, 0.487144,
		-0.471102, 0.850177, -0.235078,
		-0.536980, -0.064988, 0.841088,
		26.436089, 34.230900, 33.844349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.788982, 34.979397, 33.596104>,  <26.811975, 34.276394, 33.255589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.788982, 34.979397, 33.596104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.698921, 34.718407, 33.885540>,  <26.644884, 34.561813, 34.059200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.698921, 34.718407, 33.885540>,  <26.788982, 34.979397, 33.596104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.698921, 34.718407, 33.885540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518994, 0.548212, 0.655827,
		-0.824591, 0.523200, 0.215199,
		-0.225154, -0.652477, 0.723588,
		26.631374, 34.522663, 34.102615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.661259, 35.281574, 34.302975>,  <26.788982, 34.979397, 33.596104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.661259, 35.281574, 34.302975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.767847, 34.907776, 34.397392>,  <26.831800, 34.683498, 34.454044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.767847, 34.907776, 34.397392>,  <26.661259, 35.281574, 34.302975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.767847, 34.907776, 34.397392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466444, 0.339343, 0.816870,
		-0.843459, -0.107570, 0.526313,
		0.266472, -0.934492, 0.236046,
		26.847788, 34.627430, 34.468204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.476923, 35.064159, 35.032173>,  <26.661259, 35.281574, 34.302975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.476923, 35.064159, 35.032173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.807045, 34.862770, 34.929886>,  <27.005117, 34.741936, 34.868511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.807045, 34.862770, 34.929886>,  <26.476923, 35.064159, 35.032173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.807045, 34.862770, 34.929886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368245, 0.136532, 0.919649,
		-0.428101, -0.853158, 0.298081,
		0.825303, -0.503469, -0.255721,
		27.054636, 34.711731, 34.853168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.608379, 34.299568, 35.210274>,  <26.476923, 35.064159, 35.032173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.608379, 34.299568, 35.210274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.906517, 34.565830, 35.195511>,  <27.085400, 34.725586, 35.186653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.906517, 34.565830, 35.195511>,  <26.608379, 34.299568, 35.210274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.906517, 34.565830, 35.195511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070757, -0.023935, 0.997206,
		0.662913, -0.745874, -0.064940,
		0.745345, 0.665656, -0.036909,
		27.130121, 34.765526, 35.184437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.153278, 33.718006, 34.958801>,  <26.608379, 34.299568, 35.210274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.153278, 33.718006, 34.958801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.279696, 34.002136, 34.707230>,  <26.355547, 34.172615, 34.556286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.279696, 34.002136, 34.707230>,  <26.153278, 33.718006, 34.958801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.279696, 34.002136, 34.707230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.899617, 0.013819, -0.436462,
		-0.301339, 0.703737, 0.643389,
		0.316045, 0.710327, -0.628929,
		26.374510, 34.215233, 34.518551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.626431, 34.366280, 34.848209>,  <26.153278, 33.718006, 34.958801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.626431, 34.366280, 34.848209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.870710, 34.346928, 34.532059>,  <26.017279, 34.335316, 34.342369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.870710, 34.346928, 34.532059>,  <25.626431, 34.366280, 34.848209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.870710, 34.346928, 34.532059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787833, -0.137671, -0.600305,
		-0.079768, 0.989296, -0.122193,
		0.610702, -0.048382, -0.790381,
		26.053921, 34.332413, 34.294945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.345299, 34.809872, 34.312042>,  <25.626431, 34.366280, 34.848209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.345299, 34.809872, 34.312042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.588230, 34.541904, 34.141228>,  <25.733990, 34.381123, 34.038738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.588230, 34.541904, 34.141228>,  <25.345299, 34.809872, 34.312042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.588230, 34.541904, 34.141228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647336, -0.105692, -0.754841,
		0.460549, 0.734872, -0.497854,
		0.607330, -0.669920, -0.427033,
		25.770430, 34.340927, 34.013119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.296606, 34.965866, 33.676426>,  <25.345299, 34.809872, 34.312042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.296606, 34.965866, 33.676426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.404381, 34.580666, 33.678509>,  <25.469046, 34.349545, 33.679760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.404381, 34.580666, 33.678509>,  <25.296606, 34.965866, 33.676426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.404381, 34.580666, 33.678509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621130, -0.177911, -0.763247,
		0.735936, 0.202413, -0.646086,
		0.269437, -0.963004, 0.005206,
		25.485212, 34.291763, 33.680069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.251505, 34.821266, 32.987770>,  <25.296606, 34.965866, 33.676426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.251505, 34.821266, 32.987770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.253908, 34.455158, 33.148891>,  <25.255350, 34.235493, 33.245564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.253908, 34.455158, 33.148891>,  <25.251505, 34.821266, 32.987770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.253908, 34.455158, 33.148891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644984, -0.311373, -0.697884,
		0.764172, -0.255609, -0.592203,
		0.006011, -0.915265, 0.402806,
		25.255711, 34.180580, 33.269733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.520716, 34.386066, 32.450378>,  <25.251505, 34.821266, 32.987770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.520716, 34.386066, 32.450378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.164295, 34.206589, 32.422947>,  <24.950443, 34.098904, 32.406490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.164295, 34.206589, 32.422947>,  <25.520716, 34.386066, 32.450378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.164295, 34.206589, 32.422947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368154, -0.626052, -0.687402,
		0.265500, -0.637757, 0.723033,
		-0.891051, -0.448692, -0.068576,
		24.896980, 34.071980, 32.402374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.598276, 33.628555, 32.419178>,  <25.520716, 34.386066, 32.450378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.598276, 33.628555, 32.419178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.250599, 33.713207, 32.240417>,  <25.041992, 33.764000, 32.133163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.250599, 33.713207, 32.240417>,  <25.598276, 33.628555, 32.419178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.250599, 33.713207, 32.240417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346336, -0.384508, -0.855690,
		-0.352931, -0.898534, 0.260914,
		-0.869190, 0.211635, -0.446900,
		24.989841, 33.776695, 32.106346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.131369, 33.011250, 32.210323>,  <25.598276, 33.628555, 32.419178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.131369, 33.011250, 32.210323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.123436, 33.345417, 31.990625>,  <25.118675, 33.545918, 31.858805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.123436, 33.345417, 31.990625>,  <25.131369, 33.011250, 32.210323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.123436, 33.345417, 31.990625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203539, -0.534479, -0.820307,
		-0.978866, -0.128063, -0.159442,
		-0.019832, 0.835423, -0.549249,
		25.117487, 33.596043, 31.825851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.689137, 33.045399, 31.603613>,  <25.131369, 33.011250, 32.210323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.689137, 33.045399, 31.603613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.003469, 33.261669, 31.483517>,  <25.192068, 33.391430, 31.411459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.003469, 33.261669, 31.483517>,  <24.689137, 33.045399, 31.603613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.003469, 33.261669, 31.483517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316782, -0.768859, -0.555433,
		-0.531149, 0.341366, -0.775468,
		0.785831, 0.540672, -0.300240,
		25.239220, 33.423870, 31.393444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.772179, 32.871605, 30.928988>,  <24.689137, 33.045399, 31.603613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.772179, 32.871605, 30.928988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.126135, 33.039665, 31.009430>,  <25.338509, 33.140503, 31.057695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.126135, 33.039665, 31.009430>,  <24.772179, 32.871605, 30.928988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.126135, 33.039665, 31.009430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455738, -0.691662, -0.560274,
		-0.096301, 0.587433, -0.803522,
		0.884890, 0.420150, 0.201108,
		25.391602, 33.165710, 31.069763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.105167, 33.096046, 30.334759>,  <24.772179, 32.871605, 30.928988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.105167, 33.096046, 30.334759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.382053, 33.023048, 30.614054>,  <25.548185, 32.979248, 30.781630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.382053, 33.023048, 30.614054>,  <25.105167, 33.096046, 30.334759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.382053, 33.023048, 30.614054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363412, -0.747739, -0.555714,
		0.623514, 0.638420, -0.451275,
		0.692215, -0.182497, 0.698236,
		25.589718, 32.968300, 30.823524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.900141, 33.118790, 29.980703>,  <25.105167, 33.096046, 30.334759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.900141, 33.118790, 29.980703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.861015, 32.878056, 30.297747>,  <25.837540, 32.733616, 30.487972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.861015, 32.878056, 30.297747>,  <25.900141, 33.118790, 29.980703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.861015, 32.878056, 30.297747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200945, -0.791967, -0.576550,
		0.974707, 0.102876, 0.198401,
		-0.097814, -0.601835, 0.792608,
		25.831671, 32.697506, 30.535528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.495399, 32.638054, 29.963999>,  <25.900141, 33.118790, 29.980703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.495399, 32.638054, 29.963999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.155659, 32.524086, 30.141729>,  <25.951815, 32.455704, 30.248367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.155659, 32.524086, 30.141729>,  <26.495399, 32.638054, 29.963999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.155659, 32.524086, 30.141729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026765, -0.817465, -0.575356,
		0.527151, -0.500571, 0.686688,
		-0.849350, -0.284921, 0.444326,
		25.900854, 32.438610, 30.275026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.530691, 31.811922, 29.907480>,  <26.495399, 32.638054, 29.963999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.530691, 31.811922, 29.907480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.174276, 31.961956, 30.009745>,  <25.960426, 32.051975, 30.071102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.174276, 31.961956, 30.009745>,  <26.530691, 31.811922, 29.907480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.174276, 31.961956, 30.009745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450251, -0.658772, -0.602739,
		-0.057657, -0.652174, 0.755873,
		-0.891039, 0.375085, 0.255659,
		25.906965, 32.074482, 30.086443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.042833, 31.397123, 30.360023>,  <26.530691, 31.811922, 29.907480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.042833, 31.397123, 30.360023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.822321, 31.618090, 30.109928>,  <25.690014, 31.750669, 29.959871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.822321, 31.618090, 30.109928>,  <26.042833, 31.397123, 30.360023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.822321, 31.618090, 30.109928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399814, -0.832668, -0.383162,
		-0.732282, 0.038748, 0.679899,
		-0.551283, 0.552415, -0.625239,
		25.656937, 31.783813, 29.922356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.302202, 31.264271, 30.397432>,  <26.042833, 31.397123, 30.360023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.302202, 31.264271, 30.397432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.401810, 31.396889, 30.033440>,  <25.461575, 31.476460, 29.815044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.401810, 31.396889, 30.033440>,  <25.302202, 31.264271, 30.397432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.401810, 31.396889, 30.033440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315979, -0.860355, -0.399934,
		-0.915504, 0.387125, -0.109481,
		0.249017, 0.331547, -0.909982,
		25.476515, 31.496353, 29.760445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.743097, 31.212294, 29.796015>,  <25.302202, 31.264271, 30.397432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.743097, 31.212294, 29.796015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.119831, 31.180506, 29.665400>,  <25.345871, 31.161432, 29.587030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.119831, 31.180506, 29.665400>,  <24.743097, 31.212294, 29.796015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.119831, 31.180506, 29.665400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225757, -0.869377, -0.439566,
		-0.248954, 0.487718, -0.836752,
		0.941837, -0.079471, -0.326540,
		25.402382, 31.156664, 29.567438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.888851, 31.376019, 29.058552>,  <24.743097, 31.212294, 29.796015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.888851, 31.376019, 29.058552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.130127, 31.103743, 29.224840>,  <25.274893, 30.940376, 29.324614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.130127, 31.103743, 29.224840>,  <24.888851, 31.376019, 29.058552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.130127, 31.103743, 29.224840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335433, -0.689375, -0.642065,
		0.723635, 0.247840, -0.644149,
		0.603190, -0.680689, 0.415721,
		25.311085, 30.899536, 29.349556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.156603, 31.111837, 28.542311>,  <24.888851, 31.376019, 29.058552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.156603, 31.111837, 28.542311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.192907, 30.861416, 28.852102>,  <25.214689, 30.711163, 29.037977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.192907, 30.861416, 28.852102>,  <25.156603, 31.111837, 28.542311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.192907, 30.861416, 28.852102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385716, -0.739087, -0.552244,
		0.918142, -0.248607, -0.308560,
		0.090760, -0.626055, 0.774479,
		25.220135, 30.673599, 29.084446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.487612, 30.471584, 28.501522>,  <25.156603, 31.111837, 28.542311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.487612, 30.471584, 28.501522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.614531, 30.356920, 28.863106>,  <25.690681, 30.288122, 29.080057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.614531, 30.356920, 28.863106>,  <25.487612, 30.471584, 28.501522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.614531, 30.356920, 28.863106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306708, -0.933009, -0.188216,
		0.897358, -0.217532, -0.383964,
		0.317299, -0.286662, 0.903962,
		25.709721, 30.270922, 29.134295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.837090, 29.820599, 28.415503>,  <25.487612, 30.471584, 28.501522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.837090, 29.820599, 28.415503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.716803, 29.847845, 28.796013>,  <25.644630, 29.864193, 29.024319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.716803, 29.847845, 28.796013>,  <25.837090, 29.820599, 28.415503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.716803, 29.847845, 28.796013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428764, -0.900618, -0.071054,
		0.851898, -0.429241, 0.300037,
		-0.300718, 0.068114, 0.951277,
		25.626587, 29.868279, 29.081396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.137783, 29.296188, 28.811085>,  <25.837090, 29.820599, 28.415503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.137783, 29.296188, 28.811085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.772751, 29.424038, 28.913094>,  <25.553732, 29.500748, 28.974298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.772751, 29.424038, 28.913094>,  <26.137783, 29.296188, 28.811085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.772751, 29.424038, 28.913094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406980, -0.770308, -0.490911,
		0.039538, -0.551785, 0.833049,
		-0.912581, 0.319624, 0.255022,
		25.498976, 29.519926, 28.989599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.579496, 28.716635, 29.125816>,  <26.137783, 29.296188, 28.811085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.579496, 28.716635, 29.125816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.369263, 29.003925, 28.943428>,  <25.243122, 29.176300, 28.833994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.369263, 29.003925, 28.943428>,  <25.579496, 28.716635, 29.125816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.369263, 29.003925, 28.943428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553627, -0.695709, -0.457698,
		-0.645953, 0.011878, 0.763285,
		-0.525587, 0.718226, -0.455971,
		25.211586, 29.219393, 28.806637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.864395, 28.657589, 29.307648>,  <25.579496, 28.716635, 29.125816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.864395, 28.657589, 29.307648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.909182, 28.791328, 28.933338>,  <24.936054, 28.871572, 28.708752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.909182, 28.791328, 28.933338>,  <24.864395, 28.657589, 29.307648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.909182, 28.791328, 28.933338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434167, -0.830598, -0.348721,
		-0.893847, 0.445327, 0.052165,
		0.111967, 0.334351, -0.935774,
		24.942772, 28.891634, 28.652605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.738007, 27.957075, 29.466810>,  <24.864395, 28.657589, 29.307648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.738007, 27.957075, 29.466810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.400455, 27.996237, 29.255800>,  <24.197924, 28.019733, 29.129194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.400455, 27.996237, 29.255800>,  <24.738007, 27.957075, 29.466810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.400455, 27.996237, 29.255800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225133, 0.957079, -0.182522,
		0.487012, -0.272790, -0.829702,
		-0.843880, 0.097903, -0.527524,
		24.147291, 28.025608, 29.097544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.811914, 27.969353, 28.692175>,  <24.738007, 27.957075, 29.466810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.811914, 27.969353, 28.692175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.505751, 28.174900, 28.847137>,  <24.322052, 28.298229, 28.940115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.505751, 28.174900, 28.847137>,  <24.811914, 27.969353, 28.692175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.505751, 28.174900, 28.847137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466736, 0.857723, -0.215568,
		-0.443060, 0.015818, -0.896352,
		-0.765412, 0.513869, 0.387406,
		24.276127, 28.329062, 28.963360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.848875, 28.480337, 28.242500>,  <24.811914, 27.969353, 28.692175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.848875, 28.480337, 28.242500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.623213, 28.584120, 28.556038>,  <24.487816, 28.646389, 28.744160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.623213, 28.584120, 28.556038>,  <24.848875, 28.480337, 28.242500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.623213, 28.584120, 28.556038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497411, 0.864536, 0.071835,
		-0.659024, 0.430419, -0.616788,
		-0.564155, 0.259456, 0.783844,
		24.453966, 28.661957, 28.791191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.746572, 29.280031, 28.173517>,  <24.848875, 28.480337, 28.242500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.746572, 29.280031, 28.173517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.692287, 29.174006, 28.555370>,  <24.659716, 29.110390, 28.784481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.692287, 29.174006, 28.555370>,  <24.746572, 29.280031, 28.173517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.692287, 29.174006, 28.555370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447762, 0.843119, 0.297758,
		-0.883794, 0.467857, 0.004265,
		-0.135713, -0.265066, 0.954632,
		24.651573, 29.094486, 28.841761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.323597, 29.800800, 28.632942>,  <24.746572, 29.280031, 28.173517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.323597, 29.800800, 28.632942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.601713, 29.583220, 28.820852>,  <24.768583, 29.452671, 28.933598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.601713, 29.583220, 28.820852>,  <24.323597, 29.800800, 28.632942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.601713, 29.583220, 28.820852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410548, 0.837071, 0.361610,
		-0.589931, -0.058560, 0.805327,
		0.695292, -0.543951, 0.469773,
		24.810301, 29.420034, 28.961784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.311695, 30.012953, 29.286722>,  <24.323597, 29.800800, 28.632942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.311695, 30.012953, 29.286722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.673481, 29.852909, 29.227594>,  <24.890553, 29.756882, 29.192118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.673481, 29.852909, 29.227594>,  <24.311695, 30.012953, 29.286722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.673481, 29.852909, 29.227594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422253, 0.790854, 0.443004,
		-0.060348, -0.463100, 0.884250,
		0.904467, -0.400111, -0.147819,
		24.944820, 29.732876, 29.183249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.721804, 29.971920, 29.904593>,  <24.311695, 30.012953, 29.286722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.721804, 29.971920, 29.904593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.941628, 29.992386, 29.571039>,  <25.073523, 30.004665, 29.370907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.941628, 29.992386, 29.571039>,  <24.721804, 29.971920, 29.904593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.941628, 29.992386, 29.571039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554510, 0.724236, 0.409878,
		0.624900, -0.687651, 0.369643,
		0.549562, 0.051162, -0.833885,
		25.106497, 30.007734, 29.320873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.525215, 29.918566, 30.067808>,  <24.721804, 29.971920, 29.904593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.525215, 29.918566, 30.067808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.440172, 30.122065, 29.734108>,  <25.389147, 30.244164, 29.533888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.440172, 30.122065, 29.734108>,  <25.525215, 29.918566, 30.067808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.440172, 30.122065, 29.734108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438352, 0.812696, 0.383892,
		0.873296, -0.284077, -0.395797,
		-0.212607, 0.508749, -0.834249,
		25.376390, 30.274689, 29.483833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.195107, 30.175453, 29.900229>,  <25.525215, 29.918566, 30.067808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.195107, 30.175453, 29.900229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.913177, 30.406055, 29.734884>,  <25.744020, 30.544416, 29.635677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.913177, 30.406055, 29.734884>,  <26.195107, 30.175453, 29.900229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.913177, 30.406055, 29.734884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351374, 0.789919, 0.502558,
		0.616247, 0.208971, -0.759322,
		-0.704823, 0.576506, -0.413359,
		25.701731, 30.579008, 29.610876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.470335, 30.779694, 29.537798>,  <26.195107, 30.175453, 29.900229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.470335, 30.779694, 29.537798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.101444, 30.835342, 29.682098>,  <25.880110, 30.868732, 29.768679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.101444, 30.835342, 29.682098>,  <26.470335, 30.779694, 29.537798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.101444, 30.835342, 29.682098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385164, 0.412260, 0.825645,
		-0.033859, 0.900382, -0.433782,
		-0.922227, 0.139122, 0.360753,
		25.824776, 30.877079, 29.790325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.944790, 30.869997, 30.144039>,  <26.470335, 30.779694, 29.537798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.944790, 30.869997, 30.144039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.656347, 31.062075, 29.944273>,  <26.483282, 31.177320, 29.824413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.656347, 31.062075, 29.944273>,  <26.944790, 30.869997, 30.144039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.656347, 31.062075, 29.944273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133789, -0.803790, -0.579674,
		-0.679782, -0.351191, 0.643864,
		-0.721108, 0.480194, -0.499416,
		26.440016, 31.206133, 29.794449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.701752, 31.026258, 29.973570>,  <26.944790, 30.869997, 30.144039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.701752, 31.026258, 29.973570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.035067, 31.096600, 29.763920>,  <28.235056, 31.138803, 29.638130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.035067, 31.096600, 29.763920>,  <27.701752, 31.026258, 29.973570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.035067, 31.096600, 29.763920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239514, 0.969301, -0.055577,
		0.498263, 0.171848, 0.849824,
		0.833286, 0.175853, -0.524127,
		28.285053, 31.149355, 29.606682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.207739, 30.807560, 30.429667>,  <27.701752, 31.026258, 29.973570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.207739, 30.807560, 30.429667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.412403, 30.770823, 30.771372>,  <28.535202, 30.748781, 30.976395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.412403, 30.770823, 30.771372>,  <28.207739, 30.807560, 30.429667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.412403, 30.770823, 30.771372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848766, 0.208420, -0.485961,
		-0.133414, 0.973718, 0.184593,
		0.511661, -0.091842, 0.854264,
		28.565901, 30.743269, 31.027651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.752617, 31.331350, 30.421221>,  <28.207739, 30.807560, 30.429667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.752617, 31.331350, 30.421221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.889622, 31.051170, 30.671679>,  <28.971825, 30.883062, 30.821953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.889622, 31.051170, 30.671679>,  <28.752617, 31.331350, 30.421221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.889622, 31.051170, 30.671679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939239, 0.239158, -0.246240,
		0.022732, 0.672437, 0.739805,
		0.342511, -0.700451, 0.626142,
		28.992374, 30.841036, 30.859522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.040422, 32.030846, 30.470343>,  <28.752617, 31.331350, 30.421221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.040422, 32.030846, 30.470343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.203197, 32.382477, 30.569641>,  <29.300861, 32.593456, 30.629221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.203197, 32.382477, 30.569641>,  <29.040422, 32.030846, 30.470343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.203197, 32.382477, 30.569641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378727, 0.084938, -0.921602,
		-0.831245, 0.469051, -0.298366,
		0.406936, 0.879077, 0.248247,
		29.325277, 32.646198, 30.644115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.970472, 32.435112, 29.829165>,  <29.040422, 32.030846, 30.470343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.970472, 32.435112, 29.829165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.260511, 32.519699, 30.091314>,  <29.434534, 32.570450, 30.248604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.260511, 32.519699, 30.091314>,  <28.970472, 32.435112, 29.829165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.260511, 32.519699, 30.091314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681500, -0.083597, -0.727028,
		-0.098955, 0.973804, -0.204731,
		0.725097, 0.211467, 0.655375,
		29.478041, 32.583138, 30.287928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.301216, 33.153210, 29.725582>,  <28.970472, 32.435112, 29.829165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.301216, 33.153210, 29.725582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.535137, 32.863838, 29.872362>,  <29.675489, 32.690216, 29.960430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.535137, 32.863838, 29.872362>,  <29.301216, 33.153210, 29.725582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.535137, 32.863838, 29.872362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560748, 0.033656, -0.827302,
		0.586148, 0.689574, 0.425346,
		0.584801, -0.723433, 0.366950,
		29.710577, 32.646809, 29.982447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.068335, 33.344486, 29.961523>,  <29.301216, 33.153210, 29.725582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.068335, 33.344486, 29.961523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.952087, 33.007259, 29.780516>,  <29.882339, 32.804924, 29.671911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.952087, 33.007259, 29.780516>,  <30.068335, 33.344486, 29.961523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.952087, 33.007259, 29.780516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489585, 0.275315, -0.827350,
		0.822099, -0.461990, 0.332743,
		-0.290619, -0.843070, -0.452520,
		29.864902, 32.754337, 29.644760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.311684, 33.536182, 29.216547>,  <30.068335, 33.344486, 29.961523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.311684, 33.536182, 29.216547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.230263, 33.144814, 29.202333>,  <30.181410, 32.909992, 29.193806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.230263, 33.144814, 29.202333>,  <30.311684, 33.536182, 29.216547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.230263, 33.144814, 29.202333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109683, 0.013276, -0.993878,
		0.972901, -0.206201, 0.104614,
		-0.203550, -0.978419, -0.035533,
		30.169197, 32.851288, 29.191673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.833048, 33.116543, 28.836823>,  <30.311684, 33.536182, 29.216547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.833048, 33.116543, 28.836823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.438324, 33.060616, 28.804178>,  <30.201490, 33.027061, 28.784592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.438324, 33.060616, 28.804178>,  <30.833048, 33.116543, 28.836823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.438324, 33.060616, 28.804178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051168, 0.208893, -0.976599,
		0.153587, -0.967893, -0.198983,
		-0.986810, -0.139812, -0.081609,
		30.142281, 33.018673, 28.779696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.727900, 32.769894, 28.204510>,  <30.833048, 33.116543, 28.836823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.727900, 32.769894, 28.204510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.418131, 32.994640, 28.320835>,  <30.232269, 33.129490, 28.390631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.418131, 32.994640, 28.320835>,  <30.727900, 32.769894, 28.204510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.418131, 32.994640, 28.320835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102118, 0.342621, -0.933907,
		-0.624372, -0.752936, -0.207957,
		-0.774423, 0.561870, 0.290811,
		30.185804, 33.163200, 28.408079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.090794, 32.494930, 27.965528>,  <30.727900, 32.769894, 28.204510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.090794, 32.494930, 27.965528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.075354, 32.893185, 27.999508>,  <30.066090, 33.132137, 28.019896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.075354, 32.893185, 27.999508>,  <30.090794, 32.494930, 27.965528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.075354, 32.893185, 27.999508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097747, 0.080842, -0.991922,
		-0.994462, -0.046591, 0.094200,
		-0.038599, 0.995637, 0.084948,
		30.063774, 33.191875, 28.024992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.568594, 32.690830, 27.591322>,  <30.090794, 32.494930, 27.965528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.568594, 32.690830, 27.591322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.855427, 32.967133, 27.628519>,  <30.027527, 33.132915, 27.650837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.855427, 32.967133, 27.628519>,  <29.568594, 32.690830, 27.591322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.855427, 32.967133, 27.628519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053645, 0.078325, -0.995483,
		-0.694920, 0.718833, 0.019110,
		0.717083, 0.690756, 0.092991,
		30.070551, 33.174358, 27.656416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.400463, 33.446430, 27.229088>,  <29.568594, 32.690830, 27.591322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.400463, 33.446430, 27.229088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.794142, 33.378468, 27.249029>,  <30.030350, 33.337692, 27.260994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.794142, 33.378468, 27.249029>,  <29.400463, 33.446430, 27.229088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.794142, 33.378468, 27.249029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080208, 0.176793, -0.980974,
		0.157858, 0.969472, 0.187627,
		0.984199, -0.169904, 0.049851,
		30.089401, 33.327496, 27.263985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.735340, 34.085438, 27.043556>,  <29.400463, 33.446430, 27.229088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.735340, 34.085438, 27.043556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.930496, 33.741501, 26.983383>,  <30.047590, 33.535137, 26.947279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.930496, 33.741501, 26.983383>,  <29.735340, 34.085438, 27.043556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.930496, 33.741501, 26.983383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044978, 0.196870, -0.979397,
		0.871744, 0.471074, 0.134725,
		0.487892, -0.859844, -0.150432,
		30.076864, 33.483547, 26.938253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.300259, 34.249508, 26.467527>,  <29.735340, 34.085438, 27.043556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.300259, 34.249508, 26.467527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.120586, 33.892376, 26.454304>,  <30.012783, 33.678097, 26.446369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.120586, 33.892376, 26.454304>,  <30.300259, 34.249508, 26.467527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.120586, 33.892376, 26.454304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006210, 0.033882, -0.999407,
		0.893420, -0.449119, -0.009675,
		-0.449180, -0.892829, -0.033060,
		29.985832, 33.624527, 26.444386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.631535, 33.778763, 26.112358>,  <30.300259, 34.249508, 26.467527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.631535, 33.778763, 26.112358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.238466, 33.709179, 26.086756>,  <30.002625, 33.667431, 26.071394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.238466, 33.709179, 26.086756>,  <30.631535, 33.778763, 26.112358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.238466, 33.709179, 26.086756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037063, 0.153935, -0.987386,
		0.181621, -0.972646, -0.144820,
		-0.982670, -0.173963, -0.064007,
		29.943665, 33.656994, 26.067554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.205851, 33.119297, 25.787569>,  <30.631535, 33.778763, 26.112358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.205851, 33.119297, 25.787569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.019484, 33.465118, 25.712234>,  <29.907663, 33.672611, 25.667034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.019484, 33.465118, 25.712234>,  <30.205851, 33.119297, 25.787569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.019484, 33.465118, 25.712234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022322, -0.201300, -0.979275,
		-0.884548, -0.460463, 0.074490,
		-0.465915, 0.864553, -0.188338,
		29.879709, 33.724483, 25.655733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.842730, 32.967430, 25.173492>,  <30.205851, 33.119297, 25.787569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.842730, 32.967430, 25.173492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.880619, 33.365604, 25.177990>,  <29.903353, 33.604511, 25.180689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.880619, 33.365604, 25.177990>,  <29.842730, 32.967430, 25.173492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.880619, 33.365604, 25.177990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092910, 0.002407, -0.995672,
		-0.991159, 0.095359, -0.092258,
		0.094724, 0.995440, 0.011245,
		29.909037, 33.664238, 25.181364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.460352, 33.194298, 24.541306>,  <29.842730, 32.967430, 25.173492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.460352, 33.194298, 24.541306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.720263, 33.485546, 24.628605>,  <29.876209, 33.660294, 24.680984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.720263, 33.485546, 24.628605>,  <29.460352, 33.194298, 24.541306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.720263, 33.485546, 24.628605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151263, 0.157518, -0.975863,
		-0.744923, 0.667105, -0.007787,
		0.649776, 0.728120, 0.218247,
		29.915195, 33.703983, 24.694078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.347914, 33.727531, 24.044966>,  <29.460352, 33.194298, 24.541306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.347914, 33.727531, 24.044966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.715183, 33.806145, 24.182562>,  <29.935545, 33.853313, 24.265120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.715183, 33.806145, 24.182562>,  <29.347914, 33.727531, 24.044966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.715183, 33.806145, 24.182562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295914, 0.237118, -0.925316,
		-0.263421, 0.951394, 0.159559,
		0.918175, 0.196532, 0.343992,
		29.990635, 33.865105, 24.285759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.475405, 34.370419, 23.850821>,  <29.347914, 33.727531, 24.044966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.475405, 34.370419, 23.850821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.825069, 34.186024, 23.911915>,  <30.034868, 34.075386, 23.948572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.825069, 34.186024, 23.911915>,  <29.475405, 34.370419, 23.850821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.825069, 34.186024, 23.911915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399863, 0.504766, -0.765063,
		0.275591, 0.729863, 0.625580,
		0.874162, -0.460990, 0.152736,
		30.087318, 34.047726, 23.957735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.046185, 34.908413, 23.745068>,  <29.475405, 34.370419, 23.850821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.046185, 34.908413, 23.745068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.257261, 34.569851, 23.716393>,  <30.383907, 34.366714, 23.699186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.257261, 34.569851, 23.716393>,  <30.046185, 34.908413, 23.745068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.257261, 34.569851, 23.716393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555453, 0.407683, -0.724753,
		0.642660, 0.342627, 0.685270,
		0.527692, -0.846405, -0.071689,
		30.415569, 34.315929, 23.694885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.774014, 35.171577, 23.714258>,  <30.046185, 34.908413, 23.745068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.774014, 35.171577, 23.714258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.759007, 34.804253, 23.556627>,  <30.750002, 34.583858, 23.462049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.759007, 34.804253, 23.556627>,  <30.774014, 35.171577, 23.714258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.759007, 34.804253, 23.556627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564900, 0.305810, -0.766399,
		0.824306, -0.251366, 0.507282,
		-0.037515, -0.918311, -0.394078,
		30.747751, 34.528759, 23.438404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.423576, 34.917919, 23.514957>,  <30.774014, 35.171577, 23.714258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.423576, 34.917919, 23.514957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.175854, 34.699013, 23.289761>,  <31.027220, 34.567669, 23.154642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.175854, 34.699013, 23.289761>,  <31.423576, 34.917919, 23.514957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.175854, 34.699013, 23.289761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496815, 0.282096, -0.820729,
		0.607978, -0.787983, 0.097188,
		-0.619304, -0.547269, -0.562990,
		30.990063, 34.534832, 23.120863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.807350, 34.725739, 22.970329>,  <31.423576, 34.917919, 23.514957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.807350, 34.725739, 22.970329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.429564, 34.692810, 22.843079>,  <31.202892, 34.673054, 22.766727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.429564, 34.692810, 22.843079>,  <31.807350, 34.725739, 22.970329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.429564, 34.692810, 22.843079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249104, 0.452028, -0.856515,
		0.214312, -0.888197, -0.406418,
		-0.944467, -0.082321, -0.318129,
		31.146223, 34.668114, 22.747641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.762791, 34.420013, 22.304121>,  <31.807350, 34.725739, 22.970329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.762791, 34.420013, 22.304121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.406843, 34.602058, 22.316811>,  <31.193275, 34.711285, 22.324425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.406843, 34.602058, 22.316811>,  <31.762791, 34.420013, 22.304121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.406843, 34.602058, 22.316811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168466, 0.392429, -0.904223,
		-0.423973, -0.799294, -0.425881,
		-0.889868, 0.455113, 0.031725,
		31.139883, 34.738594, 22.326328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.576069, 34.426399, 21.686035>,  <31.762791, 34.420013, 22.304121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.576069, 34.426399, 21.686035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.300220, 34.692295, 21.800957>,  <31.134712, 34.851833, 21.869909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.300220, 34.692295, 21.800957>,  <31.576069, 34.426399, 21.686035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.300220, 34.692295, 21.800957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199182, 0.555548, -0.807275,
		-0.696239, -0.499488, -0.515522,
		-0.689621, 0.664740, 0.287305,
		31.093334, 34.891716, 21.887148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.979401, 34.448517, 21.161911>,  <31.576069, 34.426399, 21.686035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.979401, 34.448517, 21.161911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.999619, 34.792664, 21.364777>,  <31.011749, 34.999153, 21.486496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.999619, 34.792664, 21.364777>,  <30.979401, 34.448517, 21.161911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.999619, 34.792664, 21.364777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057988, 0.509485, -0.858523,
		-0.997037, 0.013986, 0.075644,
		0.050547, 0.860366, 0.507164,
		31.014782, 35.050774, 21.516926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.450205, 34.816837, 20.973700>,  <30.979401, 34.448517, 21.161911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.450205, 34.816837, 20.973700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.674715, 35.106640, 21.133730>,  <30.809422, 35.280521, 21.229748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.674715, 35.106640, 21.133730>,  <30.450205, 34.816837, 20.973700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.674715, 35.106640, 21.133730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237930, 0.604248, -0.760443,
		-0.792692, 0.331627, 0.511531,
		0.561275, 0.724505, 0.400078,
		30.843098, 35.323990, 21.253754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.052753, 35.435329, 20.954569>,  <30.450205, 34.816837, 20.973700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.052753, 35.435329, 20.954569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.433912, 35.556629, 20.952488>,  <30.662607, 35.629410, 20.951239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.433912, 35.556629, 20.952488>,  <30.052753, 35.435329, 20.954569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.433912, 35.556629, 20.952488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202440, 0.623163, -0.755438,
		-0.225845, 0.720907, 0.655200,
		0.952897, 0.303250, -0.005203,
		30.719782, 35.647606, 20.950928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.011290, 36.194714, 20.996962>,  <30.052753, 35.435329, 20.954569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.011290, 36.194714, 20.996962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.394737, 36.132011, 20.901901>,  <30.624805, 36.094391, 20.844864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.394737, 36.132011, 20.901901>,  <30.011290, 36.194714, 20.996962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.394737, 36.132011, 20.901901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022552, 0.790335, -0.612259,
		0.283798, 0.592282, 0.754095,
		0.958619, -0.156752, -0.237653,
		30.682323, 36.084988, 20.830605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.406572, 36.834728, 21.083027>,  <30.011290, 36.194714, 20.996962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.406572, 36.834728, 21.083027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.569557, 36.582050, 20.819227>,  <30.667349, 36.430443, 20.660948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.569557, 36.582050, 20.819227>,  <30.406572, 36.834728, 21.083027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.569557, 36.582050, 20.819227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003871, 0.723356, -0.690464,
		0.913213, 0.278787, 0.297187,
		0.407464, -0.631691, -0.659499,
		30.691797, 36.392544, 20.621378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.867565, 37.335594, 20.742065>,  <30.406572, 36.834728, 21.083027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.867565, 37.335594, 20.742065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.871336, 37.007664, 20.513052>,  <30.873598, 36.810905, 20.375643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.871336, 37.007664, 20.513052>,  <30.867565, 37.335594, 20.742065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.871336, 37.007664, 20.513052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036727, 0.571890, -0.819507,
		0.999281, 0.028752, -0.024719,
		0.009426, -0.819826, -0.572535,
		30.874163, 36.761715, 20.341291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.397848, 37.402657, 20.247650>,  <30.867565, 37.335594, 20.742065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.397848, 37.402657, 20.247650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.146931, 37.147911, 20.068357>,  <30.996380, 36.995064, 19.960781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.146931, 37.147911, 20.068357>,  <31.397848, 37.402657, 20.247650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.146931, 37.147911, 20.068357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234780, 0.394129, -0.888561,
		0.742551, -0.662624, -0.097713,
		-0.627293, -0.636860, -0.448231,
		30.958742, 36.956852, 19.933887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.663330, 37.137691, 19.637033>,  <31.397848, 37.402657, 20.247650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.663330, 37.137691, 19.637033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.285143, 37.036537, 19.554926>,  <31.058229, 36.975845, 19.505661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.285143, 37.036537, 19.554926>,  <31.663330, 37.137691, 19.637033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.285143, 37.036537, 19.554926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074155, 0.446536, -0.891687,
		0.317154, -0.858285, -0.403434,
		-0.945470, -0.252886, -0.205267,
		31.001501, 36.960670, 19.493345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.667820, 36.822330, 18.947441>,  <31.663330, 37.137691, 19.637033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.667820, 36.822330, 18.947441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.305540, 36.961708, 19.044016>,  <31.088171, 37.045334, 19.101961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.305540, 36.961708, 19.044016>,  <31.667820, 36.822330, 18.947441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.305540, 36.961708, 19.044016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020671, 0.532556, -0.846142,
		-0.423413, -0.771343, -0.475134,
		-0.905702, 0.348446, 0.241435,
		31.033831, 37.066242, 19.116446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.275181, 36.763271, 18.343296>,  <31.667820, 36.822330, 18.947441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.275181, 36.763271, 18.343296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.063231, 37.008316, 18.577881>,  <30.936060, 37.155342, 18.718632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.063231, 37.008316, 18.577881>,  <31.275181, 36.763271, 18.343296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.063231, 37.008316, 18.577881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146518, 0.614996, -0.774798,
		-0.835322, -0.496475, -0.236114,
		-0.529877, 0.612611, 0.586463,
		30.904268, 37.192101, 18.753820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.593632, 36.856174, 18.046429>,  <31.275181, 36.763271, 18.343296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.593632, 36.856174, 18.046429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.634064, 37.172413, 18.288004>,  <30.658323, 37.362156, 18.432949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.634064, 37.172413, 18.288004>,  <30.593632, 36.856174, 18.046429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.634064, 37.172413, 18.288004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348226, 0.596765, -0.722918,
		-0.931945, -0.137234, 0.335628,
		0.101081, 0.790594, 0.603940,
		30.664389, 37.409592, 18.469187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.023039, 37.312668, 17.866404>,  <30.593632, 36.856174, 18.046429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.023039, 37.312668, 17.866404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.295006, 37.535454, 18.057194>,  <30.458185, 37.669125, 18.171667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.295006, 37.535454, 18.057194>,  <30.023039, 37.312668, 17.866404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.295006, 37.535454, 18.057194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186263, 0.760304, -0.622289,
		-0.709238, 0.334262, 0.620685,
		0.679917, 0.556962, 0.476976,
		30.498981, 37.702541, 18.200287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.690292, 37.925495, 17.969885>,  <30.023039, 37.312668, 17.866404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.690292, 37.925495, 17.969885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.078339, 38.015175, 18.007008>,  <30.311167, 38.068981, 18.029282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.078339, 38.015175, 18.007008>,  <29.690292, 37.925495, 17.969885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.078339, 38.015175, 18.007008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113091, 0.756168, -0.644531,
		-0.214681, 0.614774, 0.758924,
		0.970115, 0.224196, 0.092809,
		30.369373, 38.082436, 18.034851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.712210, 38.585606, 17.840134>,  <29.690292, 37.925495, 17.969885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.712210, 38.585606, 17.840134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.093830, 38.475586, 17.792570>,  <30.322802, 38.409573, 17.764032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.093830, 38.475586, 17.792570>,  <29.712210, 38.585606, 17.840134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.093830, 38.475586, 17.792570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101077, 0.668959, -0.736395,
		0.282090, 0.690537, 0.666021,
		0.954049, -0.275048, -0.118909,
		30.380045, 38.393070, 17.756897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.985065, 39.171974, 17.726120>,  <29.712210, 38.585606, 17.840134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.985065, 39.171974, 17.726120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.243587, 38.899940, 17.587685>,  <30.398701, 38.736721, 17.504623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.243587, 38.899940, 17.587685>,  <29.985065, 39.171974, 17.726120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.243587, 38.899940, 17.587685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159623, 0.563999, -0.810201,
		0.746198, 0.468392, 0.473072,
		0.646304, -0.680084, -0.346089,
		30.437479, 38.695915, 17.483858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.611055, 39.540878, 17.573034>,  <29.985065, 39.171974, 17.726120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.611055, 39.540878, 17.573034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.640480, 39.201946, 17.362656>,  <30.658134, 38.998589, 17.236427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.640480, 39.201946, 17.362656>,  <30.611055, 39.540878, 17.573034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.640480, 39.201946, 17.362656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090692, 0.530876, -0.842583,
		0.993158, 0.014282, 0.115898,
		0.073561, -0.847330, -0.525948,
		30.662548, 38.947746, 17.204870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.228554, 39.628971, 17.098778>,  <30.611055, 39.540878, 17.573034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.228554, 39.628971, 17.098778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.020041, 39.340427, 16.916391>,  <30.894934, 39.167301, 16.806959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.020041, 39.340427, 16.916391>,  <31.228554, 39.628971, 17.098778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.020041, 39.340427, 16.916391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222662, 0.400825, -0.888685,
		0.823825, -0.564781, -0.048323,
		-0.521281, -0.721361, -0.455965,
		30.863655, 39.124020, 16.779602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.685822, 39.407887, 16.567867>,  <31.228554, 39.628971, 17.098778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.685822, 39.407887, 16.567867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.324457, 39.272758, 16.462242>,  <31.107639, 39.191681, 16.398867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.324457, 39.272758, 16.462242>,  <31.685822, 39.407887, 16.567867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.324457, 39.272758, 16.462242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193460, 0.228460, -0.954138,
		0.382651, -0.913064, -0.141040,
		-0.903411, -0.337816, -0.264062,
		31.053434, 39.171413, 16.383024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.785845, 39.077179, 15.966067>,  <31.685822, 39.407887, 16.567867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.785845, 39.077179, 15.966067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.398005, 39.174881, 15.971858>,  <31.165300, 39.233501, 15.975332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.398005, 39.174881, 15.971858>,  <31.785845, 39.077179, 15.966067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.398005, 39.174881, 15.971858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033238, 0.190098, -0.981202,
		-0.242419, -0.950895, -0.192438,
		-0.969602, 0.244258, 0.014477,
		31.107124, 39.248158, 15.976201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.528040, 38.684788, 15.440925>,  <31.785845, 39.077179, 15.966067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.528040, 38.684788, 15.440925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.269077, 38.983494, 15.501859>,  <31.113699, 39.162716, 15.538419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.269077, 38.983494, 15.501859>,  <31.528040, 38.684788, 15.440925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.269077, 38.983494, 15.501859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151063, 0.070178, -0.986030,
		-0.747023, -0.661375, 0.067375,
		-0.647407, 0.746765, 0.152334,
		31.074856, 39.207523, 15.547559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.919336, 38.552788, 15.004017>,  <31.528040, 38.684788, 15.440925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.919336, 38.552788, 15.004017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.859339, 38.937542, 15.095482>,  <30.823341, 39.168392, 15.150361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.859339, 38.937542, 15.095482>,  <30.919336, 38.552788, 15.004017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.859339, 38.937542, 15.095482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086649, 0.217601, -0.972184,
		-0.984883, -0.165633, 0.050707,
		-0.149992, 0.961881, 0.228664,
		30.814341, 39.226105, 15.164081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.427656, 38.812016, 14.522898>,  <30.919336, 38.552788, 15.004017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.427656, 38.812016, 14.522898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.556826, 39.165615, 14.658107>,  <30.634327, 39.377777, 14.739232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.556826, 39.165615, 14.658107>,  <30.427656, 38.812016, 14.522898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.556826, 39.165615, 14.658107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030036, 0.366550, -0.929914,
		-0.945948, 0.290139, 0.144920,
		0.322924, 0.884003, 0.338022,
		30.653704, 39.430817, 14.759514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.963057, 39.325726, 14.262349>,  <30.427656, 38.812016, 14.522898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.963057, 39.325726, 14.262349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.305222, 39.519432, 14.335840>,  <30.510521, 39.635654, 14.379934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.305222, 39.519432, 14.335840>,  <29.963057, 39.325726, 14.262349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.305222, 39.519432, 14.335840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034175, 0.406721, -0.912913,
		-0.516816, 0.774640, 0.364464,
		0.855414, 0.484264, 0.183727,
		30.561846, 39.664711, 14.390958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.794985, 39.962040, 14.061649>,  <29.963057, 39.325726, 14.262349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.794985, 39.962040, 14.061649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.194824, 39.951187, 14.058454>,  <30.434729, 39.944675, 14.056536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.194824, 39.951187, 14.058454>,  <29.794985, 39.962040, 14.061649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.194824, 39.951187, 14.058454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009034, 0.573969, -0.818827,
		0.026803, 0.818427, 0.573985,
		0.999600, -0.027133, -0.007990,
		30.494703, 39.943047, 14.056056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.015841, 40.650570, 13.922507>,  <29.794985, 39.962040, 14.061649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.015841, 40.650570, 13.922507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.358091, 40.458763, 13.844566>,  <30.563442, 40.343678, 13.797802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.358091, 40.458763, 13.844566>,  <30.015841, 40.650570, 13.922507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.358091, 40.458763, 13.844566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208572, 0.663959, -0.718092,
		0.473712, 0.573778, 0.668114,
		0.855626, -0.479518, -0.194851,
		30.614779, 40.314907, 13.786111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.558199, 41.130058, 13.987645>,  <30.015841, 40.650570, 13.922507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.558199, 41.130058, 13.987645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.671455, 40.841908, 13.734384>,  <30.739408, 40.669018, 13.582426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.671455, 40.841908, 13.734384>,  <30.558199, 41.130058, 13.987645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.671455, 40.841908, 13.734384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023642, 0.654726, -0.755496,
		0.958787, 0.228880, 0.168348,
		0.283140, -0.720380, -0.633154,
		30.756397, 40.625793, 13.544437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.149120, 41.420395, 13.575704>,  <30.558199, 41.130058, 13.987645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.149120, 41.420395, 13.575704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.943594, 41.144020, 13.372293>,  <30.820278, 40.978195, 13.250246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.943594, 41.144020, 13.372293>,  <31.149120, 41.420395, 13.575704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.943594, 41.144020, 13.372293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004620, 0.590520, -0.807010,
		0.857890, -0.417001, -0.300225,
		-0.513813, -0.690938, -0.508528,
		30.789450, 40.936737, 13.219734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.455784, 41.412136, 12.877094>,  <31.149120, 41.420395, 13.575704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.455784, 41.412136, 12.877094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.102581, 41.230476, 12.829682>,  <30.890659, 41.121479, 12.801235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.102581, 41.230476, 12.829682>,  <31.455784, 41.412136, 12.877094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.102581, 41.230476, 12.829682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110083, 0.445874, -0.888301,
		0.456276, -0.771323, -0.443702,
		-0.883002, -0.454155, -0.118533,
		30.837679, 41.094231, 12.794124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.492783, 41.151829, 12.134330>,  <31.455784, 41.412136, 12.877094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.492783, 41.151829, 12.134330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.104790, 41.107079, 12.220698>,  <30.871994, 41.080231, 12.272519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.104790, 41.107079, 12.220698>,  <31.492783, 41.151829, 12.134330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.104790, 41.107079, 12.220698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242015, 0.357203, -0.902128,
		0.023797, -0.927303, -0.373555,
		-0.969980, -0.111874, 0.215921,
		30.813795, 41.073517, 12.285475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.242113, 40.790985, 11.587214>,  <31.492783, 41.151829, 12.134330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.242113, 40.790985, 11.587214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.938549, 40.978138, 11.768386>,  <30.756411, 41.090427, 11.877089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.938549, 40.978138, 11.768386>,  <31.242113, 40.790985, 11.587214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.938549, 40.978138, 11.768386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333032, 0.318834, -0.887375,
		-0.559593, -0.824278, -0.086148,
		-0.758911, 0.467879, 0.452928,
		30.710876, 41.118500, 11.904264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.715963, 40.682800, 11.128374>,  <31.242113, 40.790985, 11.587214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.715963, 40.682800, 11.128374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.560917, 40.999588, 11.317071>,  <30.467888, 41.189659, 11.430289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.560917, 40.999588, 11.317071>,  <30.715963, 40.682800, 11.128374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.560917, 40.999588, 11.317071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284555, 0.383961, -0.878409,
		-0.876802, -0.474723, 0.076528,
		-0.387617, 0.791967, 0.471743,
		30.444632, 41.237179, 11.458593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.095364, 40.828678, 10.727077>,  <30.715963, 40.682800, 11.128374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.095364, 40.828678, 10.727077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.191957, 41.163219, 10.923929>,  <30.249914, 41.363945, 11.042041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.191957, 41.163219, 10.923929>,  <30.095364, 40.828678, 10.727077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.191957, 41.163219, 10.923929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382618, 0.548117, -0.743755,
		-0.891789, -0.008691, 0.452368,
		0.241487, 0.836357, 0.492130,
		30.264404, 41.414127, 11.071568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.520578, 41.271843, 10.577693>,  <30.095364, 40.828678, 10.727077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.520578, 41.271843, 10.577693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.819361, 41.512592, 10.690695>,  <29.998631, 41.657040, 10.758496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.819361, 41.512592, 10.690695>,  <29.520578, 41.271843, 10.577693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.819361, 41.512592, 10.690695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307222, 0.689263, -0.656149,
		-0.589636, 0.403323, 0.699757,
		0.746956, 0.601870, 0.282505,
		30.043447, 41.693153, 10.775446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.327478, 41.948570, 10.948576>,  <29.520578, 41.271843, 10.577693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.327478, 41.948570, 10.948576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.671703, 41.977875, 10.746956>,  <29.878239, 41.995457, 10.625983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.671703, 41.977875, 10.746956>,  <29.327478, 41.948570, 10.948576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.671703, 41.977875, 10.746956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387037, 0.737376, -0.553605,
		0.331115, 0.671497, 0.662914,
		0.860561, 0.073266, -0.504051,
		29.929871, 41.999855, 10.595740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.480583, 42.601330, 10.708088>,  <29.327478, 41.948570, 10.948576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.480583, 42.601330, 10.708088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.731491, 42.421879, 10.453445>,  <29.882036, 42.314209, 10.300660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.731491, 42.421879, 10.453445>,  <29.480583, 42.601330, 10.708088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.731491, 42.421879, 10.453445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324166, 0.592838, -0.737197,
		0.708133, 0.668785, 0.226438,
		0.627268, -0.448630, -0.636605,
		29.919672, 42.287289, 10.262464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.040686, 43.059914, 10.330938>,  <29.480583, 42.601330, 10.708088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.040686, 43.059914, 10.330938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.863865, 42.741318, 10.165919>,  <29.757772, 42.550159, 10.066908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.863865, 42.741318, 10.165919>,  <30.040686, 43.059914, 10.330938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.863865, 42.741318, 10.165919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237137, 0.547331, -0.802618,
		0.865077, -0.256966, -0.430825,
		-0.442049, -0.796491, -0.412547,
		29.731251, 42.502369, 10.042155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.307032, 42.828129, 9.702991>,  <30.040686, 43.059914, 10.330938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.307032, 42.828129, 9.702991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.938131, 42.680183, 9.657997>,  <29.716791, 42.591415, 9.631001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.938131, 42.680183, 9.657997>,  <30.307032, 42.828129, 9.702991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.938131, 42.680183, 9.657997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129327, 0.569368, -0.811847,
		0.364320, -0.734179, -0.572933,
		-0.922250, -0.369868, -0.112483,
		29.661457, 42.569221, 9.624252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.730234, 43.441948, 9.904064>,  <30.307032, 42.828129, 9.702991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.730234, 43.441948, 9.904064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.095102, 43.605785, 9.909371>,  <31.314024, 43.704086, 9.912556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.095102, 43.605785, 9.909371>,  <30.730234, 43.441948, 9.904064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.095102, 43.605785, 9.909371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266903, 0.569210, 0.777665,
		0.310973, -0.712906, 0.628539,
		0.912173, 0.409591, 0.013268,
		31.368753, 43.728664, 9.913352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.673492, 43.839951, 10.546969>,  <30.730234, 43.441948, 9.904064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.673492, 43.839951, 10.546969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.021072, 43.942238, 10.377484>,  <31.229620, 44.003609, 10.275793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.021072, 43.942238, 10.377484>,  <30.673492, 43.839951, 10.546969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.021072, 43.942238, 10.377484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224073, 0.560093, 0.797551,
		0.441263, -0.787976, 0.429396,
		0.868953, 0.255713, -0.423712,
		31.281757, 44.018951, 10.250370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.163292, 43.359245, 10.822081>,  <30.673492, 43.839951, 10.546969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.163292, 43.359245, 10.822081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.266033, 43.743504, 10.779772>,  <31.327679, 43.974060, 10.754386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.266033, 43.743504, 10.779772>,  <31.163292, 43.359245, 10.822081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.266033, 43.743504, 10.779772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021980, 0.103610, 0.994375,
		0.966200, -0.257734, 0.005498,
		0.256854, 0.960644, -0.105773,
		31.343090, 44.031696, 10.748040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.803719, 43.581905, 11.142747>,  <31.163292, 43.359245, 10.822081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.803719, 43.581905, 11.142747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.543528, 43.885517, 11.131770>,  <31.387413, 44.067684, 11.125184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.543528, 43.885517, 11.131770>,  <31.803719, 43.581905, 11.142747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.543528, 43.885517, 11.131770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097445, 0.119232, 0.988073,
		0.753248, 0.640046, -0.151522,
		-0.650478, 0.759029, -0.027442,
		31.348385, 44.113224, 11.123538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.094463, 44.137081, 11.512075>,  <31.803719, 43.581905, 11.142747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.094463, 44.137081, 11.512075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.695557, 44.134007, 11.541444>,  <31.456211, 44.132160, 11.559065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.695557, 44.134007, 11.541444>,  <32.094463, 44.137081, 11.512075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.695557, 44.134007, 11.541444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073507, -0.195286, 0.977988,
		0.006817, 0.980716, 0.195319,
		-0.997271, -0.007690, 0.073421,
		31.396376, 44.131699, 11.563470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.816629, 44.408554, 12.033842>,  <32.094463, 44.137081, 11.512075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.816629, 44.408554, 12.033842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.550238, 44.120327, 11.956633>,  <31.390404, 43.947392, 11.910307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.550238, 44.120327, 11.956633>,  <31.816629, 44.408554, 12.033842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.550238, 44.120327, 11.956633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028842, -0.283433, 0.958558,
		-0.745414, 0.632812, 0.209542,
		-0.665978, -0.720566, -0.193023,
		31.350445, 43.904156, 11.898726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.316124, 44.405144, 12.641385>,  <31.816629, 44.408554, 12.033842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.316124, 44.405144, 12.641385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.293795, 44.047356, 12.463937>,  <31.280397, 43.832684, 12.357468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.293795, 44.047356, 12.463937>,  <31.316124, 44.405144, 12.641385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.293795, 44.047356, 12.463937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223250, -0.421882, 0.878735,
		-0.973161, 0.148092, -0.176141,
		-0.055822, -0.894474, -0.443621,
		31.277048, 43.779015, 12.330851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.747974, 44.065929, 12.931062>,  <31.316124, 44.405144, 12.641385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.747974, 44.065929, 12.931062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.983318, 43.786880, 12.767525>,  <31.124523, 43.619450, 12.669402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.983318, 43.786880, 12.767525>,  <30.747974, 44.065929, 12.931062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.983318, 43.786880, 12.767525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026374, -0.521906, 0.852595,
		-0.808171, -0.490848, -0.325466,
		0.588357, -0.697626, -0.408844,
		31.159826, 43.577591, 12.644872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.453442, 43.512722, 13.122500>,  <30.747974, 44.065929, 12.931062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.453442, 43.512722, 13.122500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.824121, 43.389084, 13.036999>,  <31.046530, 43.314903, 12.985698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.824121, 43.389084, 13.036999>,  <30.453442, 43.512722, 13.122500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.824121, 43.389084, 13.036999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022370, -0.522415, 0.852398,
		-0.375137, -0.794698, -0.477207,
		0.926700, -0.309090, -0.213755,
		31.102131, 43.296356, 12.972872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.453770, 42.843102, 13.334424>,  <30.453442, 43.512722, 13.122500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.453770, 42.843102, 13.334424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.837242, 42.955696, 13.317959>,  <31.067326, 43.023251, 13.308080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.837242, 42.955696, 13.317959>,  <30.453770, 42.843102, 13.334424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.837242, 42.955696, 13.317959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164029, -0.428736, 0.888414,
		0.232427, -0.858459, -0.457194,
		0.958683, 0.281485, -0.041162,
		31.124847, 43.040142, 13.305610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.743187, 42.286663, 13.726789>,  <30.453770, 42.843102, 13.334424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.743187, 42.286663, 13.726789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.034122, 42.560791, 13.712294>,  <31.208683, 42.725269, 13.703596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.034122, 42.560791, 13.712294>,  <30.743187, 42.286663, 13.726789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.034122, 42.560791, 13.712294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183167, -0.142966, 0.972631,
		0.661385, -0.714069, -0.229513,
		0.727338, 0.685322, -0.036238,
		31.252323, 42.766388, 13.701422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.516035, 41.959019, 13.869157>,  <30.743187, 42.286663, 13.726789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.516035, 41.959019, 13.869157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.502743, 42.347683, 13.962769>,  <31.494768, 42.580883, 14.018935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.502743, 42.347683, 13.962769>,  <31.516035, 41.959019, 13.869157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.502743, 42.347683, 13.962769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241895, -0.219378, 0.945178,
		0.969733, 0.088018, -0.227750,
		-0.033229, 0.971662, 0.234029,
		31.492775, 42.639183, 14.032977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.099102, 41.949444, 14.182296>,  <31.516035, 41.959019, 13.869157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.099102, 41.949444, 14.182296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.904562, 42.283249, 14.285870>,  <31.787838, 42.483532, 14.348014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.904562, 42.283249, 14.285870>,  <32.099102, 41.949444, 14.182296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.904562, 42.283249, 14.285870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354313, -0.082527, 0.931478,
		0.798701, 0.544770, -0.255542,
		-0.486353, 0.834514, 0.258934,
		31.758656, 42.533604, 14.363550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.532314, 42.326630, 14.557328>,  <32.099102, 41.949444, 14.182296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.532314, 42.326630, 14.557328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.197990, 42.518837, 14.663551>,  <31.997396, 42.634163, 14.727285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.197990, 42.518837, 14.663551>,  <32.532314, 42.326630, 14.557328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.197990, 42.518837, 14.663551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376379, 0.149355, 0.914348,
		0.399700, 0.864172, -0.305690,
		-0.835810, 0.480520, 0.265559,
		31.947247, 42.662994, 14.743219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.739624, 42.982479, 14.865063>,  <32.532314, 42.326630, 14.557328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.739624, 42.982479, 14.865063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.386421, 42.851704, 14.999763>,  <32.174500, 42.773239, 15.080585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.386421, 42.851704, 14.999763>,  <32.739624, 42.982479, 14.865063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.386421, 42.851704, 14.999763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339353, 0.050936, 0.939279,
		-0.324242, 0.943671, 0.065972,
		-0.883010, -0.326942, 0.336753,
		32.121517, 42.753620, 15.100789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.710747, 43.307072, 15.552790>,  <32.739624, 42.982479, 14.865063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.710747, 43.307072, 15.552790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.419247, 43.033585, 15.537566>,  <32.244347, 42.869492, 15.528432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.419247, 43.033585, 15.537566>,  <32.710747, 43.307072, 15.552790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.419247, 43.033585, 15.537566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038547, -0.096449, 0.994591,
		-0.683691, 0.723344, 0.096643,
		-0.728753, -0.683718, -0.038058,
		32.200623, 42.828468, 15.526149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.208946, 43.568394, 16.031519>,  <32.710747, 43.307072, 15.552790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.208946, 43.568394, 16.031519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.150795, 43.174587, 15.992356>,  <32.115906, 42.938301, 15.968860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.150795, 43.174587, 15.992356>,  <32.208946, 43.568394, 16.031519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.150795, 43.174587, 15.992356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144779, -0.076721, 0.986485,
		-0.978726, 0.157589, -0.131384,
		-0.145379, -0.984520, -0.097904,
		32.107182, 42.879230, 15.962985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.668245, 43.425964, 16.512398>,  <32.208946, 43.568394, 16.031519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.668245, 43.425964, 16.512398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.846087, 43.078426, 16.425283>,  <31.952791, 42.869904, 16.373014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.846087, 43.078426, 16.425283>,  <31.668245, 43.425964, 16.512398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.846087, 43.078426, 16.425283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177336, -0.323709, 0.929389,
		-0.877997, -0.374589, -0.298000,
		0.444604, -0.868847, -0.217788,
		31.979467, 42.817772, 16.359947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.278643, 42.926239, 16.818785>,  <31.668245, 43.425964, 16.512398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.278643, 42.926239, 16.818785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.628212, 42.734718, 16.785303>,  <31.837954, 42.619804, 16.765215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.628212, 42.734718, 16.785303>,  <31.278643, 42.926239, 16.818785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.628212, 42.734718, 16.785303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133868, -0.402638, 0.905518,
		-0.467272, -0.780145, -0.415971,
		0.873920, -0.478808, -0.083704,
		31.890388, 42.591076, 16.760193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.174068, 42.287994, 16.999840>,  <31.278643, 42.926239, 16.818785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.174068, 42.287994, 16.999840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.570387, 42.314289, 17.047178>,  <31.808178, 42.330067, 17.075581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.570387, 42.314289, 17.047178>,  <31.174068, 42.287994, 16.999840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.570387, 42.314289, 17.047178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077767, -0.439179, 0.895027,
		0.110811, -0.895991, -0.430024,
		0.990794, 0.065737, 0.118344,
		31.867624, 42.334011, 17.082682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.309555, 41.803822, 17.448175>,  <31.174068, 42.287994, 16.999840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.309555, 41.803822, 17.448175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.673534, 41.966724, 17.479507>,  <31.891922, 42.064468, 17.498306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.673534, 41.966724, 17.479507>,  <31.309555, 41.803822, 17.448175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.673534, 41.966724, 17.479507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142816, -0.485031, 0.862756,
		0.389360, -0.773875, -0.499515,
		0.909946, 0.407261, 0.078329,
		31.946518, 42.088902, 17.503006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.697329, 41.299866, 17.519438>,  <31.309555, 41.803822, 17.448175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.697329, 41.299866, 17.519438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.904348, 41.602009, 17.680227>,  <32.028561, 41.783295, 17.776701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.904348, 41.602009, 17.680227>,  <31.697329, 41.299866, 17.519438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.904348, 41.602009, 17.680227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163079, -0.548252, 0.820259,
		0.839968, -0.358972, -0.406931,
		0.517551, 0.755353, 0.401973,
		32.059612, 41.828613, 17.800819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.201611, 40.980675, 17.908932>,  <31.697329, 41.299866, 17.519438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.201611, 40.980675, 17.908932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.239666, 41.350872, 18.055580>,  <32.262501, 41.572990, 18.143570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.239666, 41.350872, 18.055580>,  <32.201611, 40.980675, 17.908932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.239666, 41.350872, 18.055580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007094, -0.368914, 0.929436,
		0.995438, -0.085827, -0.041665,
		0.095142, 0.925492, 0.366622,
		32.268208, 41.628521, 18.165567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.693520, 40.990158, 18.466471>,  <32.201611, 40.980675, 17.908932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.693520, 40.990158, 18.466471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.468758, 41.315571, 18.526365>,  <32.333900, 41.510818, 18.562302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.468758, 41.315571, 18.526365>,  <32.693520, 40.990158, 18.466471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.468758, 41.315571, 18.526365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240167, -0.333668, 0.911584,
		0.791569, 0.476263, 0.382874,
		-0.561907, 0.813535, 0.149738,
		32.300186, 41.559631, 18.571287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.803772, 41.181240, 19.097475>,  <32.693520, 40.990158, 18.466471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.803772, 41.181240, 19.097475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.473522, 41.401760, 19.049458>,  <32.275372, 41.534073, 19.020647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.473522, 41.401760, 19.049458>,  <32.803772, 41.181240, 19.097475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.473522, 41.401760, 19.049458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160916, -0.026153, 0.986621,
		0.540780, 0.833900, 0.110305,
		-0.825629, 0.551295, -0.120045,
		32.225834, 41.567150, 19.013445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.776478, 41.748821, 19.539299>,  <32.803772, 41.181240, 19.097475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.776478, 41.748821, 19.539299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.396408, 41.646435, 19.468142>,  <32.168365, 41.585003, 19.425447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.396408, 41.646435, 19.468142>,  <32.776478, 41.748821, 19.539299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.396408, 41.646435, 19.468142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182757, -0.004862, 0.983146,
		-0.252513, 0.966675, -0.042159,
		-0.950178, -0.255962, -0.177894,
		32.111355, 41.569645, 19.414774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.438797, 42.059143, 20.146971>,  <32.776478, 41.748821, 19.539299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.438797, 42.059143, 20.146971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.170769, 41.815556, 19.977192>,  <32.009953, 41.669403, 19.875324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.170769, 41.815556, 19.977192>,  <32.438797, 42.059143, 20.146971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.170769, 41.815556, 19.977192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507205, -0.041881, 0.860807,
		-0.541983, 0.792086, -0.280809,
		-0.670073, -0.608971, -0.424449,
		31.969748, 41.632866, 19.849857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.720772, 42.287891, 20.364594>,  <32.438797, 42.059143, 20.146971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.720772, 42.287891, 20.364594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.700481, 41.902504, 20.259407>,  <31.688307, 41.671272, 20.196295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.700481, 41.902504, 20.259407>,  <31.720772, 42.287891, 20.364594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.700481, 41.902504, 20.259407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460746, -0.211033, 0.862077,
		-0.886081, 0.164888, -0.433211,
		-0.050725, -0.963471, -0.262964,
		31.685265, 41.613464, 20.180517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.151730, 42.198013, 20.637838>,  <31.720772, 42.287891, 20.364594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.151730, 42.198013, 20.637838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.305033, 41.831684, 20.589874>,  <31.397015, 41.611885, 20.561096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.305033, 41.831684, 20.589874>,  <31.151730, 42.198013, 20.637838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.305033, 41.831684, 20.589874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427989, -0.291132, 0.855610,
		-0.818497, -0.276601, -0.503541,
		0.383259, -0.915824, -0.119908,
		31.420012, 41.556938, 20.553902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.680746, 41.764431, 20.828157>,  <31.151730, 42.198013, 20.637838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.680746, 41.764431, 20.828157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.996525, 41.520691, 20.857725>,  <31.185993, 41.374447, 20.875465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.996525, 41.520691, 20.857725>,  <30.680746, 41.764431, 20.828157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.996525, 41.520691, 20.857725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465155, -0.515324, 0.719772,
		-0.400499, -0.602608, -0.690263,
		0.789450, -0.609348, 0.073919,
		31.233360, 41.337887, 20.879900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.433687, 40.999474, 20.754036>,  <30.680746, 41.764431, 20.828157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.433687, 40.999474, 20.754036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.778019, 40.997726, 20.957588>,  <30.984617, 40.996677, 21.079720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.778019, 40.997726, 20.957588>,  <30.433687, 40.999474, 20.754036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.778019, 40.997726, 20.957588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431747, -0.535604, 0.725757,
		0.269390, -0.844458, -0.462947,
		0.860827, -0.004364, 0.508878,
		31.036266, 40.996418, 21.110252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.642183, 40.300079, 20.820976>,  <30.433687, 40.999474, 20.754036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.642183, 40.300079, 20.820976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.842747, 40.481262, 21.115845>,  <30.963085, 40.589970, 21.292767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.842747, 40.481262, 21.115845>,  <30.642183, 40.300079, 20.820976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.842747, 40.481262, 21.115845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161693, -0.787948, 0.594132,
		0.849968, -0.417099, -0.321843,
		0.501408, 0.452954, 0.737172,
		30.993170, 40.617149, 21.336996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.160915, 39.785603, 21.064884>,  <30.642183, 40.300079, 20.820976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.160915, 39.785603, 21.064884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.095387, 40.042038, 21.364796>,  <31.056068, 40.195900, 21.544743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.095387, 40.042038, 21.364796>,  <31.160915, 39.785603, 21.064884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.095387, 40.042038, 21.364796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151353, -0.767381, 0.623072,
		0.974810, -0.011408, 0.222745,
		-0.163822, 0.641090, 0.749778,
		31.046240, 40.234364, 21.589729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.531324, 39.550983, 21.639174>,  <31.160915, 39.785603, 21.064884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.531324, 39.550983, 21.639174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.315929, 39.823383, 21.837677>,  <31.186693, 39.986824, 21.956779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.315929, 39.823383, 21.837677>,  <31.531324, 39.550983, 21.639174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.315929, 39.823383, 21.837677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232511, -0.686159, 0.689293,
		0.809921, 0.255789, 0.527826,
		-0.538486, 0.680998, 0.496260,
		31.154383, 40.027683, 21.986555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.844166, 39.610905, 22.299295>,  <31.531324, 39.550983, 21.639174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.844166, 39.610905, 22.299295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.468052, 39.733864, 22.357763>,  <31.242384, 39.807640, 22.392845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.468052, 39.733864, 22.357763>,  <31.844166, 39.610905, 22.299295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.468052, 39.733864, 22.357763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063288, -0.579830, 0.812276,
		0.334449, 0.754521, 0.564661,
		-0.940286, 0.307401, 0.146171,
		31.185966, 39.826084, 22.401615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.795660, 39.676319, 23.008274>,  <31.844166, 39.610905, 22.299295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.795660, 39.676319, 23.008274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.413069, 39.680534, 22.891630>,  <31.183514, 39.683064, 22.821644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.413069, 39.680534, 22.891630>,  <31.795660, 39.676319, 23.008274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.413069, 39.680534, 22.891630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234648, -0.621841, 0.747164,
		-0.173457, 0.783073, 0.597252,
		-0.956479, 0.010543, -0.291609,
		31.126125, 39.683697, 22.804148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.423307, 39.850952, 23.656197>,  <31.795660, 39.676319, 23.008274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.423307, 39.850952, 23.656197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.178394, 39.652634, 23.409849>,  <31.031446, 39.533642, 23.262041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.178394, 39.652634, 23.409849>,  <31.423307, 39.850952, 23.656197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.178394, 39.652634, 23.409849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171929, -0.676817, 0.715792,
		-0.771718, 0.544154, 0.329162,
		-0.612284, -0.495797, -0.615868,
		30.994709, 39.503895, 23.225088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.779430, 39.554932, 24.058273>,  <31.423307, 39.850952, 23.656197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.779430, 39.554932, 24.058273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.803360, 39.343132, 23.719795>,  <30.817719, 39.216053, 23.516708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.803360, 39.343132, 23.719795>,  <30.779430, 39.554932, 24.058273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.803360, 39.343132, 23.719795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032906, -0.846207, 0.531837,
		-0.997666, -0.059662, -0.033200,
		0.059825, -0.529503, -0.846196,
		30.821308, 39.184280, 23.465937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.700905, 38.947475, 24.304567>,  <30.779430, 39.554932, 24.058273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.700905, 38.947475, 24.304567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.738974, 38.823822, 23.926069>,  <30.761814, 38.749630, 23.698971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.738974, 38.823822, 23.926069>,  <30.700905, 38.947475, 24.304567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.738974, 38.823822, 23.926069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049516, -0.950854, 0.305655,
		-0.994229, 0.017765, -0.105802,
		0.095172, -0.309130, -0.946246,
		30.767525, 38.731083, 23.642195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.196745, 38.451180, 24.014500>,  <30.700905, 38.947475, 24.304567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.196745, 38.451180, 24.014500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.531719, 38.381268, 23.807364>,  <30.732704, 38.339321, 23.683083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.531719, 38.381268, 23.807364>,  <30.196745, 38.451180, 24.014500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.531719, 38.381268, 23.807364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118586, -0.866808, 0.484336,
		-0.533518, -0.467008, -0.705168,
		0.837434, -0.174778, -0.517838,
		30.782949, 38.328835, 23.652012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.129614, 37.718605, 23.892918>,  <30.196745, 38.451180, 24.014500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.129614, 37.718605, 23.892918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.510559, 37.834137, 23.853771>,  <30.739126, 37.903458, 23.830284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.510559, 37.834137, 23.853771>,  <30.129614, 37.718605, 23.892918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.510559, 37.834137, 23.853771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304288, -0.878726, 0.367762,
		0.020224, -0.380023, -0.924756,
		0.952365, 0.288830, -0.097865,
		30.796268, 37.920788, 23.824411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.449635, 37.182693, 23.556669>,  <30.129614, 37.718605, 23.892918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.449635, 37.182693, 23.556669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.753288, 37.382248, 23.723919>,  <30.935480, 37.501980, 23.824268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.753288, 37.382248, 23.723919>,  <30.449635, 37.182693, 23.556669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.753288, 37.382248, 23.723919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394028, -0.863480, 0.314872,
		0.518128, -0.074276, -0.852072,
		0.759134, 0.498884, 0.418126,
		30.981028, 37.531914, 23.849358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.028528, 36.751350, 23.433027>,  <30.449635, 37.182693, 23.556669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.028528, 36.751350, 23.433027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.157492, 36.984505, 23.731369>,  <31.234869, 37.124397, 23.910374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.157492, 36.984505, 23.731369>,  <31.028528, 36.751350, 23.433027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.157492, 36.984505, 23.731369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385179, -0.800530, 0.459117,
		0.864691, 0.139263, -0.482614,
		0.322409, 0.582887, 0.745852,
		31.254215, 37.159370, 23.955124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.635918, 36.513622, 23.512516>,  <31.028528, 36.751350, 23.433027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.635918, 36.513622, 23.512516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.565350, 36.722561, 23.846230>,  <31.523008, 36.847923, 24.046457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.565350, 36.722561, 23.846230>,  <31.635918, 36.513622, 23.512516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.565350, 36.722561, 23.846230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371996, -0.749337, 0.547825,
		0.911315, 0.406998, -0.062113,
		-0.176420, 0.522347, 0.834284,
		31.512423, 36.879265, 24.096516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.220989, 36.531693, 23.855553>,  <31.635918, 36.513622, 23.512516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.220989, 36.531693, 23.855553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.945757, 36.585434, 24.140789>,  <31.780619, 36.617680, 24.311932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.945757, 36.585434, 24.140789>,  <32.220989, 36.531693, 23.855553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.945757, 36.585434, 24.140789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410123, -0.738694, 0.534911,
		0.598621, 0.660516, 0.453180,
		-0.688078, 0.134349, 0.713091,
		31.739334, 36.625740, 24.354715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.015099, 37.126022, 23.640228>,  <32.220989, 36.531693, 23.855553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.015099, 37.126022, 23.640228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.344662, 36.984737, 23.817501>,  <32.542400, 36.899967, 23.923864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.344662, 36.984737, 23.817501>,  <32.015099, 37.126022, 23.640228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.344662, 36.984737, 23.817501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524264, 0.772022, -0.359345,
		-0.215221, 0.528413, 0.821255,
		0.823910, -0.353216, 0.443183,
		32.591835, 36.878773, 23.950457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.296059, 37.539753, 24.214655>,  <32.015099, 37.126022, 23.640228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.296059, 37.539753, 24.214655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.603802, 37.344131, 24.050255>,  <32.788448, 37.226757, 23.951614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.603802, 37.344131, 24.050255>,  <32.296059, 37.539753, 24.214655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.603802, 37.344131, 24.050255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465689, 0.869766, -0.163221,
		0.437298, -0.065824, 0.896904,
		0.769353, -0.489055, -0.411000,
		32.834606, 37.197414, 23.926954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.894238, 37.870609, 24.505949>,  <32.296059, 37.539753, 24.214655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.894238, 37.870609, 24.505949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.037373, 37.694767, 24.176416>,  <33.123253, 37.589260, 23.978697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.037373, 37.694767, 24.176416>,  <32.894238, 37.870609, 24.505949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.037373, 37.694767, 24.176416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510370, 0.830888, -0.221691,
		0.781970, -0.341131, 0.521682,
		0.357834, -0.439607, -0.823833,
		33.144722, 37.562885, 23.929266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.635830, 38.021965, 24.447636>,  <32.894238, 37.870609, 24.505949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.635830, 38.021965, 24.447636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.568630, 37.885376, 24.077734>,  <33.528309, 37.803421, 23.855793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.568630, 37.885376, 24.077734>,  <33.635830, 38.021965, 24.447636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.568630, 37.885376, 24.077734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612717, 0.698703, -0.369312,
		0.772239, -0.628658, 0.091843,
		-0.168000, -0.341471, -0.924756,
		33.518230, 37.782936, 23.800306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.304672, 37.938301, 24.083445>,  <33.635830, 38.021965, 24.447636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.304672, 37.938301, 24.083445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.008137, 37.998211, 23.821760>,  <33.830215, 38.034157, 23.664749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.008137, 37.998211, 23.821760>,  <34.304672, 37.938301, 24.083445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.008137, 37.998211, 23.821760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563818, 0.667746, -0.486030,
		0.364050, -0.729166, -0.579469,
		-0.741335, 0.149776, -0.654210,
		33.785736, 38.043144, 23.625498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.597965, 38.103054, 23.444269>,  <34.304672, 37.938301, 24.083445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.597965, 38.103054, 23.444269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.229897, 38.249352, 23.388390>,  <34.009056, 38.337128, 23.354862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.229897, 38.249352, 23.388390>,  <34.597965, 38.103054, 23.444269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.229897, 38.249352, 23.388390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390497, 0.831703, -0.394694,
		-0.028168, -0.417738, -0.908131,
		-0.920173, 0.365740, -0.139698,
		33.953846, 38.359074, 23.346479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.565357, 38.285034, 22.826838>,  <34.597965, 38.103054, 23.444269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.565357, 38.285034, 22.826838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.246185, 38.487045, 22.958443>,  <34.054680, 38.608253, 23.037407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.246185, 38.487045, 22.958443>,  <34.565357, 38.285034, 22.826838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.246185, 38.487045, 22.958443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198992, 0.735975, -0.647103,
		-0.568951, -0.450873, -0.687756,
		-0.797933, 0.505028, 0.329014,
		34.006805, 38.638554, 23.057146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.049721, 38.376060, 22.315483>,  <34.565357, 38.285034, 22.826838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.049721, 38.376060, 22.315483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.994976, 38.669830, 22.581383>,  <33.962128, 38.846092, 22.740923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.994976, 38.669830, 22.581383>,  <34.049721, 38.376060, 22.315483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.994976, 38.669830, 22.581383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143738, 0.649236, -0.746881,
		-0.980106, -0.197770, 0.016708,
		-0.136863, 0.734424, 0.664748,
		33.953918, 38.890156, 22.780807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.332653, 38.548954, 22.205395>,  <34.049721, 38.376060, 22.315483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.332653, 38.548954, 22.205395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.539268, 38.847786, 22.372755>,  <33.663239, 39.027084, 22.473171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.539268, 38.847786, 22.372755>,  <33.332653, 38.548954, 22.205395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.539268, 38.847786, 22.372755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046312, 0.512295, -0.857560,
		-0.855012, 0.423584, 0.299218,
		0.516536, 0.747081, 0.418401,
		33.694229, 39.071911, 22.498276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.114014, 39.162148, 21.812889>,  <33.332653, 38.548954, 22.205395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.114014, 39.162148, 21.812889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.434746, 39.286823, 22.016815>,  <33.627186, 39.361629, 22.139172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.434746, 39.286823, 22.016815>,  <33.114014, 39.162148, 21.812889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.434746, 39.286823, 22.016815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199563, 0.664509, -0.720140,
		-0.563241, 0.679172, 0.470622,
		0.801831, 0.311694, 0.509817,
		33.675297, 39.380333, 22.169760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.065929, 39.926292, 21.672503>,  <33.114014, 39.162148, 21.812889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.065929, 39.926292, 21.672503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.426361, 39.818829, 21.808668>,  <33.642620, 39.754353, 21.890368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.426361, 39.818829, 21.808668>,  <33.065929, 39.926292, 21.672503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.426361, 39.818829, 21.808668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432168, 0.621356, -0.653565,
		-0.035935, 0.736029, 0.675995,
		0.901077, -0.268658, 0.340416,
		33.696686, 39.738232, 21.910793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.529270, 40.550045, 21.722227>,  <33.065929, 39.926292, 21.672503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.529270, 40.550045, 21.722227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.762241, 40.225746, 21.698635>,  <33.902023, 40.031166, 21.684481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.762241, 40.225746, 21.698635>,  <33.529270, 40.550045, 21.722227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.762241, 40.225746, 21.698635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522785, 0.429143, -0.736568,
		0.622478, 0.398162, 0.673787,
		0.582424, -0.810742, -0.058979,
		33.936970, 39.982525, 21.680941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.160172, 40.842636, 21.585766>,  <33.529270, 40.550045, 21.722227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.160172, 40.842636, 21.585766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.204464, 40.460388, 21.476559>,  <34.231041, 40.231041, 21.411036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.204464, 40.460388, 21.476559>,  <34.160172, 40.842636, 21.585766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.204464, 40.460388, 21.476559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440802, 0.293430, -0.848288,
		0.890748, -0.026414, 0.453729,
		0.110731, -0.955616, -0.273016,
		34.237682, 40.173702, 21.394653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.779026, 40.785717, 21.351564>,  <34.160172, 40.842636, 21.585766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.779026, 40.785717, 21.351564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.638996, 40.448006, 21.189262>,  <34.554977, 40.245377, 21.091881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.638996, 40.448006, 21.189262>,  <34.779026, 40.785717, 21.351564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.638996, 40.448006, 21.189262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442456, 0.232757, -0.866058,
		0.825639, -0.482714, 0.292075,
		-0.350075, -0.844282, -0.405753,
		34.533974, 40.194721, 21.067537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.291210, 40.733562, 20.865538>,  <34.779026, 40.785717, 21.351564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.291210, 40.733562, 20.865538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.984619, 40.501549, 20.755213>,  <34.800663, 40.362339, 20.689018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.984619, 40.501549, 20.755213>,  <35.291210, 40.733562, 20.865538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.984619, 40.501549, 20.755213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247587, 0.129406, -0.960185,
		0.592631, -0.804248, 0.044421,
		-0.766479, -0.580034, -0.275811,
		34.754677, 40.327538, 20.672470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.518475, 40.245766, 20.397522>,  <35.291210, 40.733562, 20.865538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.518475, 40.245766, 20.397522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.131786, 40.321899, 20.329132>,  <34.899773, 40.367580, 20.288099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.131786, 40.321899, 20.329132>,  <35.518475, 40.245766, 20.397522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.131786, 40.321899, 20.329132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220103, 0.278007, -0.935022,
		-0.130433, -0.941534, -0.310647,
		-0.966717, 0.190332, -0.170973,
		34.841770, 40.378998, 20.277840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.482151, 40.079739, 19.731415>,  <35.518475, 40.245766, 20.397522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.482151, 40.079739, 19.731415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.151958, 40.297371, 19.791492>,  <34.953842, 40.427952, 19.827539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.151958, 40.297371, 19.791492>,  <35.482151, 40.079739, 19.731415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.151958, 40.297371, 19.791492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071454, 0.364691, -0.928383,
		-0.559891, -0.755629, -0.339922,
		-0.825479, 0.544082, 0.150195,
		34.904316, 40.460594, 19.836552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.268200, 40.204914, 19.079523>,  <35.482151, 40.079739, 19.731415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.268200, 40.204914, 19.079523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.037346, 40.471096, 19.268875>,  <34.898834, 40.630806, 19.382486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.037346, 40.471096, 19.268875>,  <35.268200, 40.204914, 19.079523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.037346, 40.471096, 19.268875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038090, 0.557097, -0.829573,
		-0.815760, -0.496806, -0.296173,
		-0.577134, 0.665452, 0.473381,
		34.864204, 40.670731, 19.410889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.717529, 40.385944, 18.653021>,  <35.268200, 40.204914, 19.079523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.717529, 40.385944, 18.653021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.738937, 40.691105, 18.910740>,  <34.751781, 40.874199, 19.065372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.738937, 40.691105, 18.910740>,  <34.717529, 40.385944, 18.653021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.738937, 40.691105, 18.910740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167779, 0.642921, -0.747331,
		-0.984371, -0.068103, 0.162408,
		0.053520, 0.762899, 0.644298,
		34.754993, 40.919975, 19.104029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.179871, 40.755001, 18.570953>,  <34.717529, 40.385944, 18.653021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.179871, 40.755001, 18.570953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.458267, 41.002228, 18.717154>,  <34.625305, 41.150562, 18.804874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.458267, 41.002228, 18.717154>,  <34.179871, 40.755001, 18.570953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.458267, 41.002228, 18.717154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141101, 0.616818, -0.774355,
		-0.704049, 0.487373, 0.516510,
		0.695992, 0.618064, 0.365501,
		34.667065, 41.187649, 18.826803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.933777, 41.252289, 18.405785>,  <34.179871, 40.755001, 18.570953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.933777, 41.252289, 18.405785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.293659, 41.406525, 18.487616>,  <34.509590, 41.499065, 18.536715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.293659, 41.406525, 18.487616>,  <33.933777, 41.252289, 18.405785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.293659, 41.406525, 18.487616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076242, 0.600298, -0.796134,
		-0.429788, 0.700688, 0.569489,
		0.899705, 0.385588, 0.204579,
		34.563572, 41.522202, 18.548988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.884777, 41.897038, 18.515045>,  <33.933777, 41.252289, 18.405785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.884777, 41.897038, 18.515045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.262680, 41.840664, 18.396673>,  <34.489422, 41.806839, 18.325649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.262680, 41.840664, 18.396673>,  <33.884777, 41.897038, 18.515045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.262680, 41.840664, 18.396673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178061, 0.537329, -0.824362,
		0.275194, 0.831513, 0.482549,
		0.944755, -0.140937, -0.295930,
		34.546108, 41.798382, 18.307894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.060757, 42.593178, 18.175409>,  <33.884777, 41.897038, 18.515045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.060757, 42.593178, 18.175409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.338825, 42.331558, 18.056107>,  <34.505669, 42.174587, 17.984526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.338825, 42.331558, 18.056107>,  <34.060757, 42.593178, 18.175409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.338825, 42.331558, 18.056107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028654, 0.439795, -0.897641,
		0.718271, 0.615470, 0.324475,
		0.695173, -0.654047, -0.298257,
		34.547379, 42.135345, 17.966629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.480442, 43.009220, 17.796329>,  <34.060757, 42.593178, 18.175409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.480442, 43.009220, 17.796329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.584305, 42.643791, 17.671133>,  <34.646622, 42.424534, 17.596016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.584305, 42.643791, 17.671133>,  <34.480442, 43.009220, 17.796329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.584305, 42.643791, 17.671133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090002, 0.299802, -0.949746,
		0.961498, 0.274775, -0.004379,
		0.259654, -0.913574, -0.312989,
		34.662201, 42.369720, 17.577236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.991543, 43.031242, 17.234808>,  <34.480442, 43.009220, 17.796329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.991543, 43.031242, 17.234808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.840839, 42.663982, 17.185730>,  <34.750420, 42.443626, 17.156282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.840839, 42.663982, 17.185730>,  <34.991543, 43.031242, 17.234808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.840839, 42.663982, 17.185730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037463, 0.147452, -0.988360,
		0.925555, -0.367774, -0.089950,
		-0.376756, -0.918151, -0.122697,
		34.727814, 42.388538, 17.148920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.359818, 42.780003, 16.663965>,  <34.991543, 43.031242, 17.234808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.359818, 42.780003, 16.663965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.054131, 42.528667, 16.722151>,  <34.870716, 42.377865, 16.757061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.054131, 42.528667, 16.722151>,  <35.359818, 42.780003, 16.663965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.054131, 42.528667, 16.722151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148938, -0.047510, -0.987704,
		0.627522, -0.776489, -0.057275,
		-0.764221, -0.628337, 0.145462,
		34.824863, 42.340168, 16.765789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.399765, 42.225052, 16.344830>,  <35.359818, 42.780003, 16.663965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.399765, 42.225052, 16.344830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.000591, 42.250343, 16.349243>,  <34.761086, 42.265518, 16.351892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.000591, 42.250343, 16.349243>,  <35.399765, 42.225052, 16.344830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.000591, 42.250343, 16.349243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006846, 0.066086, -0.997790,
		-0.063822, -0.995809, -0.065517,
		-0.997938, 0.063233, 0.011035,
		34.701210, 42.269314, 16.352554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.030857, 41.720764, 15.916892>,  <35.399765, 42.225052, 16.344830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.030857, 41.720764, 15.916892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.757698, 42.011974, 15.941013>,  <34.593803, 42.186699, 15.955486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.757698, 42.011974, 15.941013>,  <35.030857, 41.720764, 15.916892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.757698, 42.011974, 15.941013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001962, 0.080722, -0.996735,
		-0.730516, -0.680782, -0.053696,
		-0.682893, 0.728025, 0.060304,
		34.552830, 42.230381, 15.959105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.669537, 41.648884, 15.350720>,  <35.030857, 41.720764, 15.916892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.669537, 41.648884, 15.350720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.544033, 42.023228, 15.414868>,  <34.468731, 42.247833, 15.453357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.544033, 42.023228, 15.414868>,  <34.669537, 41.648884, 15.350720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.544033, 42.023228, 15.414868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105528, 0.202223, -0.973638,
		-0.943620, -0.288565, -0.162209,
		-0.313760, 0.935861, 0.160369,
		34.449905, 42.303986, 15.462979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.138935, 41.817158, 14.909774>,  <34.669537, 41.648884, 15.350720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.138935, 41.817158, 14.909774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.252663, 42.189709, 15.000719>,  <34.320900, 42.413239, 15.055286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.252663, 42.189709, 15.000719>,  <34.138935, 41.817158, 14.909774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.252663, 42.189709, 15.000719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056250, 0.252947, -0.965844,
		-0.957078, 0.261820, 0.124308,
		0.284320, 0.931380, 0.227362,
		34.337959, 42.469124, 15.068928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.613712, 42.253635, 14.663385>,  <34.138935, 41.817158, 14.909774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.613712, 42.253635, 14.663385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.944038, 42.478027, 14.686444>,  <34.142235, 42.612663, 14.700280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.944038, 42.478027, 14.686444>,  <33.613712, 42.253635, 14.663385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.944038, 42.478027, 14.686444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118626, 0.272740, -0.954746,
		-0.551319, 0.781608, 0.291781,
		0.825818, 0.560983, 0.057648,
		34.191784, 42.646320, 14.703738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.437943, 42.912056, 14.299764>,  <33.613712, 42.253635, 14.663385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.437943, 42.912056, 14.299764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.837452, 42.892639, 14.295668>,  <34.077156, 42.880989, 14.293210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.837452, 42.892639, 14.295668>,  <33.437943, 42.912056, 14.299764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.837452, 42.892639, 14.295668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000618, 0.194214, -0.980959,
		0.049603, 0.979758, 0.193944,
		0.998769, -0.048539, -0.010239,
		34.137081, 42.878078, 14.292596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.705414, 43.473488, 13.926049>,  <33.437943, 42.912056, 14.299764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.705414, 43.473488, 13.926049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.013885, 43.219120, 13.914128>,  <34.198971, 43.066502, 13.906976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.013885, 43.219120, 13.914128>,  <33.705414, 43.473488, 13.926049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.013885, 43.219120, 13.914128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085126, 0.149399, -0.985106,
		0.630899, 0.757158, 0.169347,
		0.771181, -0.635918, -0.029802,
		34.245239, 43.028343, 13.905188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.280861, 43.809994, 13.596519>,  <33.705414, 43.473488, 13.926049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.280861, 43.809994, 13.596519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.316792, 43.416088, 13.536948>,  <34.338348, 43.179745, 13.501205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.316792, 43.416088, 13.536948>,  <34.280861, 43.809994, 13.596519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.316792, 43.416088, 13.536948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270411, 0.168030, -0.947968,
		0.958546, 0.044878, 0.281383,
		0.089823, -0.984760, -0.148929,
		34.343739, 43.120659, 13.492270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.916199, 43.744305, 13.160473>,  <34.280861, 43.809994, 13.596519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.916199, 43.744305, 13.160473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.795769, 43.363827, 13.133414>,  <34.723511, 43.135540, 13.117179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.795769, 43.363827, 13.133414>,  <34.916199, 43.744305, 13.160473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.795769, 43.363827, 13.133414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300916, -0.027455, -0.953256,
		0.904876, -0.307361, 0.294497,
		-0.301079, -0.951197, -0.067647,
		34.705444, 43.078468, 13.113120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.436306, 43.419624, 12.862966>,  <34.916199, 43.744305, 13.160473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.436306, 43.419624, 12.862966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.133789, 43.167450, 12.793013>,  <34.952278, 43.016148, 12.751040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.133789, 43.167450, 12.793013>,  <35.436306, 43.419624, 12.862966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.133789, 43.167450, 12.793013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358763, -0.176099, -0.916667,
		0.547100, -0.756006, 0.359357,
		-0.756288, -0.630432, -0.174883,
		34.906902, 42.978321, 12.740547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.689629, 42.816708, 12.559508>,  <35.436306, 43.419624, 12.862966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.689629, 42.816708, 12.559508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.307186, 42.814175, 12.442324>,  <35.077721, 42.812653, 12.372013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.307186, 42.814175, 12.442324>,  <35.689629, 42.816708, 12.559508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.307186, 42.814175, 12.442324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289826, -0.167907, -0.942236,
		-0.043223, -0.985782, 0.162372,
		-0.956103, -0.006334, -0.292963,
		35.020355, 42.812275, 12.354435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.624580, 42.284115, 12.062406>,  <35.689629, 42.816708, 12.559508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.624580, 42.284115, 12.062406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.302353, 42.504559, 11.975375>,  <35.109016, 42.636826, 11.923157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.302353, 42.504559, 11.975375>,  <35.624580, 42.284115, 12.062406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.302353, 42.504559, 11.975375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024703, -0.335655, -0.941661,
		-0.591989, -0.763946, 0.256779,
		-0.805568, 0.551109, -0.217576,
		35.060684, 42.669891, 11.910103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.343311, 41.916344, 11.337555>,  <35.624580, 42.284115, 12.062406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.343311, 41.916344, 11.337555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.547939, 41.632504, 11.143743>,  <35.670715, 41.462200, 11.027455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.547939, 41.632504, 11.143743>,  <35.343311, 41.916344, 11.337555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.547939, 41.632504, 11.143743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029592, -0.549019, 0.835286,
		-0.858734, -0.441642, -0.259861,
		0.511566, -0.709599, -0.484530,
		35.701408, 41.419624, 10.998384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.049885, 41.259983, 11.536036>,  <35.343311, 41.916344, 11.337555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.049885, 41.259983, 11.536036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.427822, 41.178440, 11.433501>,  <35.654587, 41.129513, 11.371981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.427822, 41.178440, 11.433501>,  <35.049885, 41.259983, 11.536036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.427822, 41.178440, 11.433501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088360, -0.594983, 0.798866,
		-0.315370, -0.777456, -0.544155,
		0.944846, -0.203857, -0.256336,
		35.711277, 41.117283, 11.356601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.987732, 40.499519, 11.600749>,  <35.049885, 41.259983, 11.536036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.987732, 40.499519, 11.600749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.372562, 40.607677, 11.586339>,  <35.603462, 40.672573, 11.577693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.372562, 40.607677, 11.586339>,  <34.987732, 40.499519, 11.600749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.372562, 40.607677, 11.586339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211963, -0.657889, 0.722671,
		0.171708, -0.702899, -0.690253,
		0.962075, 0.270397, -0.036024,
		35.661186, 40.688797, 11.575532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.435085, 39.932617, 11.574983>,  <34.987732, 40.499519, 11.600749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.435085, 39.932617, 11.574983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.635132, 40.230717, 11.751383>,  <35.755161, 40.409576, 11.857224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.635132, 40.230717, 11.751383>,  <35.435085, 39.932617, 11.574983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.635132, 40.230717, 11.751383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242110, -0.609290, 0.755081,
		0.831425, -0.270857, -0.485149,
		0.500115, 0.745253, 0.441002,
		35.785168, 40.454292, 11.883683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.922123, 39.663189, 11.907897>,  <35.435085, 39.932617, 11.574983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.922123, 39.663189, 11.907897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.958958, 40.012917, 12.098511>,  <35.981060, 40.222752, 12.212879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.958958, 40.012917, 12.098511>,  <35.922123, 39.663189, 11.907897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.958958, 40.012917, 12.098511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045011, -0.481735, 0.875160,
		0.994733, -0.059142, -0.083716,
		0.092088, 0.874319, 0.476535,
		35.986584, 40.275211, 12.241471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.391903, 39.555794, 12.422544>,  <35.922123, 39.663189, 11.907897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.391903, 39.555794, 12.422544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.223488, 39.898247, 12.542391>,  <36.122437, 40.103718, 12.614299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.223488, 39.898247, 12.542391>,  <36.391903, 39.555794, 12.422544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.223488, 39.898247, 12.542391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044276, -0.310529, 0.949532,
		0.905960, 0.413058, 0.092840,
		-0.421041, 0.856128, 0.299615,
		36.097176, 40.155087, 12.632276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.825508, 39.839893, 12.990821>,  <36.391903, 39.555794, 12.422544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.825508, 39.839893, 12.990821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.464367, 40.006611, 13.033050>,  <36.247684, 40.106640, 13.058387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.464367, 40.006611, 13.033050>,  <36.825508, 39.839893, 12.990821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.464367, 40.006611, 13.033050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050993, -0.140006, 0.988837,
		0.426921, 0.898155, 0.105151,
		-0.902850, 0.416793, 0.105571,
		36.193512, 40.131649, 13.064721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.822350, 40.279224, 13.545605>,  <36.825508, 39.839893, 12.990821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.822350, 40.279224, 13.545605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.426094, 40.237106, 13.510837>,  <36.188343, 40.211834, 13.489976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.426094, 40.237106, 13.510837>,  <36.822350, 40.279224, 13.545605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.426094, 40.237106, 13.510837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082027, -0.049953, 0.995377,
		-0.109153, 0.993185, 0.040848,
		-0.990635, -0.105298, -0.086921,
		36.128902, 40.205517, 13.484760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.550949, 40.811687, 13.971966>,  <36.822350, 40.279224, 13.545605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.550949, 40.811687, 13.971966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.279411, 40.521046, 13.929605>,  <36.116489, 40.346661, 13.904187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.279411, 40.521046, 13.929605>,  <36.550949, 40.811687, 13.971966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.279411, 40.521046, 13.929605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015743, -0.129793, 0.991416,
		-0.734111, 0.674686, 0.076671,
		-0.678846, -0.726603, -0.105904,
		36.075756, 40.303066, 13.897833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.069077, 41.013020, 14.552329>,  <36.550949, 40.811687, 13.971966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.069077, 41.013020, 14.552329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.972198, 40.639332, 14.447585>,  <35.914070, 40.415119, 14.384739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.972198, 40.639332, 14.447585>,  <36.069077, 41.013020, 14.552329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.972198, 40.639332, 14.447585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237038, -0.204741, 0.949681,
		-0.940826, 0.292080, -0.171858,
		-0.242196, -0.934222, -0.261860,
		35.899540, 40.359066, 14.369027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.277470, 40.749786, 14.745945>,  <36.069077, 41.013020, 14.552329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.277470, 40.749786, 14.745945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.498734, 40.420624, 14.694038>,  <35.631493, 40.223125, 14.662894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.498734, 40.420624, 14.694038>,  <35.277470, 40.749786, 14.745945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.498734, 40.420624, 14.694038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304986, -0.344991, 0.887674,
		-0.775242, -0.451447, -0.441810,
		0.553158, -0.822908, -0.129766,
		35.664680, 40.173752, 14.655108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.894337, 40.322697, 15.059392>,  <35.277470, 40.749786, 14.745945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.894337, 40.322697, 15.059392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.234264, 40.112583, 15.042062>,  <35.438221, 39.986515, 15.031664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.234264, 40.112583, 15.042062>,  <34.894337, 40.322697, 15.059392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.234264, 40.112583, 15.042062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153161, -0.324770, 0.933309,
		-0.504324, -0.786512, -0.356450,
		0.849823, -0.525284, -0.043326,
		35.489212, 39.954998, 15.029064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.674339, 39.641685, 15.151834>,  <34.894337, 40.322697, 15.059392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.674339, 39.641685, 15.151834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.057396, 39.667412, 15.264102>,  <35.287231, 39.682850, 15.331463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.057396, 39.667412, 15.264102>,  <34.674339, 39.641685, 15.151834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.057396, 39.667412, 15.264102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238351, -0.369839, 0.898002,
		0.161564, -0.926867, -0.338844,
		0.957646, 0.064321, 0.280672,
		35.344688, 39.686707, 15.348304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.857948, 38.903263, 15.374461>,  <34.674339, 39.641685, 15.151834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.857948, 38.903263, 15.374461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.116611, 39.155823, 15.545652>,  <35.271809, 39.307358, 15.648367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.116611, 39.155823, 15.545652>,  <34.857948, 38.903263, 15.374461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.116611, 39.155823, 15.545652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024133, -0.543862, 0.838828,
		0.762396, -0.552766, -0.336457,
		0.646661, 0.631399, 0.427978,
		35.310612, 39.345242, 15.674046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.371323, 38.472530, 15.790922>,  <34.857948, 38.903263, 15.374461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.371323, 38.472530, 15.790922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.414078, 38.835197, 15.954156>,  <35.439732, 39.052795, 16.052095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.414078, 38.835197, 15.954156>,  <35.371323, 38.472530, 15.790922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.414078, 38.835197, 15.954156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240736, -0.374624, 0.895379,
		0.964687, -0.193945, 0.178224,
		0.106888, 0.906665, 0.408085,
		35.446144, 39.107197, 16.076582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.571396, 38.285912, 16.390907>,  <35.371323, 38.472530, 15.790922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.571396, 38.285912, 16.390907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.470238, 38.667885, 16.453070>,  <35.409542, 38.897068, 16.490368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.470238, 38.667885, 16.453070>,  <35.571396, 38.285912, 16.390907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.470238, 38.667885, 16.453070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207077, -0.210332, 0.955447,
		0.945072, 0.209450, 0.250937,
		-0.252898, 0.954930, 0.155407,
		35.394367, 38.954365, 16.499691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.023083, 38.586548, 16.871389>,  <35.571396, 38.285912, 16.390907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.023083, 38.586548, 16.871389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.707390, 38.831226, 16.893049>,  <35.517975, 38.978035, 16.906046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.707390, 38.831226, 16.893049>,  <36.023083, 38.586548, 16.871389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.707390, 38.831226, 16.893049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051047, -0.153223, 0.986872,
		0.611965, 0.776111, 0.152154,
		-0.789236, 0.611698, 0.054149,
		35.470619, 39.014736, 16.909294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.044319, 38.955582, 17.482122>,  <36.023083, 38.586548, 16.871389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.044319, 38.955582, 17.482122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.652103, 38.960499, 17.403742>,  <35.416775, 38.963451, 17.356714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.652103, 38.960499, 17.403742>,  <36.044319, 38.955582, 17.482122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.652103, 38.960499, 17.403742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196255, -0.089958, 0.976418,
		-0.005623, 0.995870, 0.090620,
		-0.980537, 0.012295, -0.195950,
		35.357941, 38.964188, 17.344957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.788040, 39.298428, 18.098024>,  <36.044319, 38.955582, 17.482122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.788040, 39.298428, 18.098024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.475121, 39.103279, 17.943108>,  <35.287369, 38.986191, 17.850157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.475121, 39.103279, 17.943108>,  <35.788040, 39.298428, 18.098024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.475121, 39.103279, 17.943108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367270, -0.140925, 0.919377,
		-0.503117, 0.861464, -0.068936,
		-0.782295, -0.487873, -0.387291,
		35.240433, 38.956917, 17.826920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.265308, 39.613266, 18.470707>,  <35.788040, 39.298428, 18.098024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.265308, 39.613266, 18.470707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.154045, 39.265392, 18.307600>,  <35.087288, 39.056667, 18.209736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.154045, 39.265392, 18.307600>,  <35.265308, 39.613266, 18.470707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.154045, 39.265392, 18.307600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360857, -0.298806, 0.883458,
		-0.890173, 0.392890, -0.230715,
		-0.278163, -0.869685, -0.407766,
		35.070595, 39.004486, 18.185270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.748268, 39.374912, 18.900000>,  <35.265308, 39.613266, 18.470707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.748268, 39.374912, 18.900000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.882660, 39.053837, 18.702898>,  <34.963295, 38.861191, 18.584637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.882660, 39.053837, 18.702898>,  <34.748268, 39.374912, 18.900000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.882660, 39.053837, 18.702898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156313, -0.563430, 0.811242,
		-0.928809, -0.195534, -0.314769,
		0.335976, -0.802691, -0.492754,
		34.983452, 38.813030, 18.555071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.269955, 38.935802, 19.100698>,  <34.748268, 39.374912, 18.900000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.269955, 38.935802, 19.100698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.603401, 38.758518, 18.968853>,  <34.803471, 38.652145, 18.889746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.603401, 38.758518, 18.968853>,  <34.269955, 38.935802, 19.100698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.603401, 38.758518, 18.968853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036590, -0.551130, 0.833617,
		-0.551130, -0.706977, -0.443214,
		-0.833617, 0.443214, 0.329613,
		34.853485, 38.625553, 18.869968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.237625, 38.127052, 19.262890>,  <34.269955, 38.935802, 19.100698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.237625, 38.127052, 19.262890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.623394, 38.206543, 19.193146>,  <34.854855, 38.254238, 19.151299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.623394, 38.206543, 19.193146>,  <34.237625, 38.127052, 19.262890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.623394, 38.206543, 19.193146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241067, -0.390288, 0.888573,
		0.108529, -0.898991, -0.424307,
		0.964421, 0.198723, -0.174360,
		34.912720, 38.266159, 19.140839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.657738, 37.501579, 19.457584>,  <34.237625, 38.127052, 19.262890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.657738, 37.501579, 19.457584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.917015, 37.806019, 19.467239>,  <35.072582, 37.988682, 19.473032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.917015, 37.806019, 19.467239>,  <34.657738, 37.501579, 19.457584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.917015, 37.806019, 19.467239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379526, -0.350382, 0.856267,
		0.660158, -0.545864, -0.515969,
		0.648192, 0.761095, 0.024138,
		35.111473, 38.034348, 19.474482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.315147, 37.180134, 19.661449>,  <34.657738, 37.501579, 19.457584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.315147, 37.180134, 19.661449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.306477, 37.568417, 19.757164>,  <35.301273, 37.801388, 19.814592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.306477, 37.568417, 19.757164>,  <35.315147, 37.180134, 19.661449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.306477, 37.568417, 19.757164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342756, -0.217624, 0.913870,
		0.939175, 0.101825, -0.327998,
		-0.021675, 0.970707, 0.239288,
		35.299973, 37.859627, 19.828951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.918736, 37.173527, 19.931410>,  <35.315147, 37.180134, 19.661449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.918736, 37.173527, 19.931410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.786800, 37.530449, 20.054697>,  <35.707642, 37.744602, 20.128670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.786800, 37.530449, 20.054697>,  <35.918736, 37.173527, 19.931410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.786800, 37.530449, 20.054697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665094, -0.012063, 0.746662,
		0.669969, 0.451270, -0.589489,
		-0.329835, 0.892306, 0.308219,
		35.687851, 37.798141, 20.147163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.440342, 37.588272, 19.963518>,  <35.918736, 37.173527, 19.931410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.440342, 37.588272, 19.963518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.197952, 37.773853, 20.221989>,  <36.052517, 37.885201, 20.377071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.197952, 37.773853, 20.221989>,  <36.440342, 37.588272, 19.963518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.197952, 37.773853, 20.221989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667053, -0.146202, 0.730524,
		0.433401, 0.873712, -0.220886,
		-0.605974, 0.463952, 0.646176,
		36.016159, 37.913040, 20.415842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.866730, 38.038712, 20.368366>,  <36.440342, 37.588272, 19.963518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.866730, 38.038712, 20.368366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.534103, 38.007633, 20.588352>,  <36.334526, 37.988987, 20.720345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.534103, 38.007633, 20.588352>,  <36.866730, 38.038712, 20.368366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.534103, 38.007633, 20.588352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555420, -0.121087, 0.822707,
		0.002674, 0.989597, 0.143845,
		-0.831565, -0.077695, 0.549966,
		36.284634, 37.984325, 20.753342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.914639, 38.545059, 21.017872>,  <36.866730, 38.038712, 20.368366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.914639, 38.545059, 21.017872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.633778, 38.275604, 21.110126>,  <36.465260, 38.113930, 21.165480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.633778, 38.275604, 21.110126>,  <36.914639, 38.545059, 21.017872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.633778, 38.275604, 21.110126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363477, -0.060584, 0.929631,
		-0.612260, 0.736576, 0.287390,
		-0.702155, -0.673636, 0.230635,
		36.423130, 38.073513, 21.179317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.656921, 38.864971, 21.691235>,  <36.914639, 38.545059, 21.017872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.656921, 38.864971, 21.691235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.579216, 38.472977, 21.673882>,  <36.532593, 38.237778, 21.663469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.579216, 38.472977, 21.673882>,  <36.656921, 38.864971, 21.691235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.579216, 38.472977, 21.673882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379208, -0.115810, 0.918035,
		-0.904689, 0.161891, 0.394118,
		-0.194265, -0.979989, -0.043382,
		36.520935, 38.178978, 21.660868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.728073, 38.679234, 22.332861>,  <36.656921, 38.864971, 21.691235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.728073, 38.679234, 22.332861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.709587, 38.319931, 22.158049>,  <36.698498, 38.104347, 22.053162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.709587, 38.319931, 22.158049>,  <36.728073, 38.679234, 22.332861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.709587, 38.319931, 22.158049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451688, -0.409008, 0.792900,
		-0.890978, -0.160759, 0.424634,
		-0.046213, -0.898259, -0.437031,
		36.695724, 38.050453, 22.026939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.329788, 38.313995, 22.833597>,  <36.728073, 38.679234, 22.332861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.329788, 38.313995, 22.833597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.534615, 38.029495, 22.640965>,  <36.657509, 37.858795, 22.525385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.534615, 38.029495, 22.640965>,  <36.329788, 38.313995, 22.833597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.534615, 38.029495, 22.640965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129158, -0.490532, 0.861799,
		-0.849183, -0.503494, -0.159319,
		0.512062, -0.711247, -0.481581,
		36.688232, 37.816120, 22.496490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.024406, 37.720642, 22.989332>,  <36.329788, 38.313995, 22.833597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.024406, 37.720642, 22.989332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.397465, 37.634224, 22.873751>,  <36.621300, 37.582375, 22.804401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.397465, 37.634224, 22.873751>,  <36.024406, 37.720642, 22.989332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.397465, 37.634224, 22.873751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152025, -0.490998, 0.857793,
		-0.327196, -0.843947, -0.425084,
		0.932647, -0.216043, -0.288954,
		36.677258, 37.569412, 22.787064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.038784, 37.027653, 23.291016>,  <36.024406, 37.720642, 22.989332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.038784, 37.027653, 23.291016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.406250, 37.166016, 23.214703>,  <36.626732, 37.249035, 23.168915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.406250, 37.166016, 23.214703>,  <36.038784, 37.027653, 23.291016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.406250, 37.166016, 23.214703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348618, -0.482784, 0.803359,
		0.185781, -0.804530, -0.564107,
		0.918668, 0.345906, -0.190781,
		36.681850, 37.269787, 23.157469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.427876, 36.466316, 23.256027>,  <36.038784, 37.027653, 23.291016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.427876, 36.466316, 23.256027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.700970, 36.746502, 23.339190>,  <36.864826, 36.914612, 23.389088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.700970, 36.746502, 23.339190>,  <36.427876, 36.466316, 23.256027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.700970, 36.746502, 23.339190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256640, -0.496304, 0.829348,
		0.684115, -0.512864, -0.518610,
		0.682731, 0.700466, 0.207908,
		36.905788, 36.956642, 23.401562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.067402, 36.111649, 23.421671>,  <36.427876, 36.466316, 23.256027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.067402, 36.111649, 23.421671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.181808, 36.467083, 23.565123>,  <37.250450, 36.680344, 23.651194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.181808, 36.467083, 23.565123>,  <37.067402, 36.111649, 23.421671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.181808, 36.467083, 23.565123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364641, -0.447036, 0.816821,
		0.886134, -0.102850, -0.451872,
		0.286013, 0.888584, 0.358630,
		37.267612, 36.733658, 23.672712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.882851, 36.005680, 23.509706>,  <37.067402, 36.111649, 23.421671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.882851, 36.005680, 23.509706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.723072, 36.295368, 23.734543>,  <37.627205, 36.469181, 23.869444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.723072, 36.295368, 23.734543>,  <37.882851, 36.005680, 23.509706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.723072, 36.295368, 23.734543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487393, -0.351534, 0.799295,
		0.776461, 0.593234, -0.212562,
		-0.399446, 0.724222, 0.562090,
		37.603237, 36.512634, 23.903170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.385807, 36.218956, 23.996325>,  <37.882851, 36.005680, 23.509706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.385807, 36.218956, 23.996325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.046082, 36.350769, 24.161285>,  <37.842247, 36.429855, 24.260262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.046082, 36.350769, 24.161285>,  <38.385807, 36.218956, 23.996325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.046082, 36.350769, 24.161285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332475, -0.272897, 0.902766,
		0.410033, 0.903845, 0.122215,
		-0.849313, 0.329531, 0.412403,
		37.791286, 36.449627, 24.285006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.630432, 36.672741, 24.612490>,  <38.385807, 36.218956, 23.996325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.630432, 36.672741, 24.612490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.260643, 36.538113, 24.684132>,  <38.038769, 36.457336, 24.727118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.260643, 36.538113, 24.684132>,  <38.630432, 36.672741, 24.612490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.260643, 36.538113, 24.684132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243638, -0.160188, 0.956546,
		-0.293252, 0.927934, 0.230090,
		-0.924470, -0.336567, 0.179104,
		37.983303, 36.437141, 24.737864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.454380, 36.898483, 25.304482>,  <38.630432, 36.672741, 24.612490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.454380, 36.898483, 25.304482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.181084, 36.608181, 25.272329>,  <38.017105, 36.434002, 25.253038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.181084, 36.608181, 25.272329>,  <38.454380, 36.898483, 25.304482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.181084, 36.608181, 25.272329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085269, -0.188630, 0.978339,
		-0.725195, 0.661590, 0.190764,
		-0.683243, -0.725753, -0.080380,
		37.976112, 36.390453, 25.248215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.942223, 36.989857, 25.877394>,  <38.454380, 36.898483, 25.304482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.942223, 36.989857, 25.877394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.919464, 36.609882, 25.754507>,  <37.905807, 36.381897, 25.680775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.919464, 36.609882, 25.754507>,  <37.942223, 36.989857, 25.877394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.919464, 36.609882, 25.754507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114539, -0.311894, 0.943188,
		-0.991788, 0.018474, 0.126550,
		-0.056895, -0.949938, -0.307216,
		37.902397, 36.324902, 25.662342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.304302, 36.580441, 26.206032>,  <37.942223, 36.989857, 25.877394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.304302, 36.580441, 26.206032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.609253, 36.332439, 26.131865>,  <37.792221, 36.183640, 26.087364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.609253, 36.332439, 26.131865>,  <37.304302, 36.580441, 26.206032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.609253, 36.332439, 26.131865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076921, -0.197674, 0.977245,
		-0.642548, -0.759289, -0.103011,
		0.762375, -0.620004, -0.185420,
		37.837967, 36.146439, 26.076239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.052597, 36.055168, 26.619267>,  <37.304302, 36.580441, 26.206032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.052597, 36.055168, 26.619267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.439602, 35.991100, 26.541027>,  <37.671806, 35.952660, 26.494083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.439602, 35.991100, 26.541027>,  <37.052597, 36.055168, 26.619267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.439602, 35.991100, 26.541027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186681, -0.069102, 0.979987,
		-0.170481, -0.984668, -0.036956,
		0.967516, -0.160170, -0.195599,
		37.729858, 35.943050, 26.482347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.346970, 35.618992, 27.200428>,  <37.052597, 36.055168, 26.619267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.346970, 35.618992, 27.200428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.649326, 35.843578, 27.065741>,  <37.830742, 35.978333, 26.984928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.649326, 35.843578, 27.065741>,  <37.346970, 35.618992, 27.200428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.649326, 35.843578, 27.065741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437666, -0.050864, 0.897698,
		0.486902, -0.825933, -0.284184,
		0.755893, 0.561469, -0.336717,
		37.876095, 36.012020, 26.964725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.535355, 35.360573, 27.849337>,  <37.346970, 35.618992, 27.200428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.535355, 35.360573, 27.849337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.400631, 35.081898, 28.102694>,  <37.319798, 34.914692, 28.254707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.400631, 35.081898, 28.102694>,  <37.535355, 35.360573, 27.849337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.400631, 35.081898, 28.102694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874632, 0.017614, 0.484468,
		-0.348678, 0.717160, 0.603411,
		-0.336812, -0.696686, 0.633393,
		37.299587, 34.872890, 28.292711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.488758, 35.690262, 28.601128>,  <37.535355, 35.360573, 27.849337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.488758, 35.690262, 28.601128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.558804, 35.300190, 28.546917>,  <37.600830, 35.066147, 28.514391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.558804, 35.300190, 28.546917>,  <37.488758, 35.690262, 28.601128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.558804, 35.300190, 28.546917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742502, 0.040406, 0.668623,
		-0.646549, -0.217713, 0.731146,
		0.175111, -0.975176, -0.135528,
		37.611336, 35.007637, 28.506258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.118202, 35.627911, 29.044407>,  <37.488758, 35.690262, 28.601128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.118202, 35.627911, 29.044407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.050838, 35.254932, 28.916544>,  <38.010418, 35.031147, 28.839827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.050838, 35.254932, 28.916544>,  <38.118202, 35.627911, 29.044407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.050838, 35.254932, 28.916544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761801, -0.328918, 0.558097,
		-0.625537, -0.149526, 0.765732,
		-0.168413, -0.932446, -0.319659,
		38.000313, 34.975197, 28.820646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.219864, 35.254391, 29.712162>,  <38.118202, 35.627911, 29.044407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.219864, 35.254391, 29.712162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.292709, 35.039574, 29.382696>,  <38.336414, 34.910683, 29.185017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.292709, 35.039574, 29.382696>,  <38.219864, 35.254391, 29.712162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.292709, 35.039574, 29.382696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752042, -0.463580, 0.468536,
		-0.633458, -0.704756, 0.319454,
		0.182111, -0.537040, -0.823665,
		38.347343, 34.878460, 29.135597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.147240, 34.457584, 29.789190>,  <38.219864, 35.254391, 29.712162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.147240, 34.457584, 29.789190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.423523, 34.583946, 29.528999>,  <38.589294, 34.659763, 29.372885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.423523, 34.583946, 29.528999>,  <38.147240, 34.457584, 29.789190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.423523, 34.583946, 29.528999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719507, -0.390183, 0.574515,
		-0.072311, -0.864846, -0.496802,
		0.690711, 0.315908, -0.650477,
		38.630737, 34.678719, 29.333857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.699394, 33.836731, 29.590469>,  <38.147240, 34.457584, 29.789190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.699394, 33.836731, 29.590469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.846508, 34.208549, 29.580036>,  <38.934776, 34.431641, 29.573776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.846508, 34.208549, 29.580036>,  <38.699394, 33.836731, 29.590469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.846508, 34.208549, 29.580036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785222, -0.295413, 0.544203,
		0.498156, -0.220632, -0.838548,
		0.367786, 0.929544, -0.026084,
		38.956844, 34.487411, 29.572210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.289036, 33.853718, 30.123070>,  <38.699394, 33.836731, 29.590469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.289036, 33.853718, 30.123070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.293224, 33.505978, 30.320704>,  <39.295738, 33.297333, 30.439283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.293224, 33.505978, 30.320704>,  <39.289036, 33.853718, 30.123070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.293224, 33.505978, 30.320704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689898, 0.363952, 0.625763,
		-0.723831, 0.334318, 0.603573,
		0.010467, -0.869351, 0.494085,
		39.296364, 33.245171, 30.468929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.140678, 33.982754, 30.932606>,  <39.289036, 33.853718, 30.123070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.140678, 33.982754, 30.932606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.353634, 33.653370, 30.854149>,  <39.481407, 33.455738, 30.807076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.353634, 33.653370, 30.854149>,  <39.140678, 33.982754, 30.932606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.353634, 33.653370, 30.854149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570791, 0.178111, 0.801545,
		-0.625106, -0.538691, 0.564849,
		0.532391, -0.823461, -0.196141,
		39.513351, 33.406330, 30.795307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.242458, 33.569164, 31.436014>,  <39.140678, 33.982754, 30.932606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.242458, 33.569164, 31.436014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.573223, 33.514000, 31.217949>,  <39.771683, 33.480900, 31.087111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.573223, 33.514000, 31.217949>,  <39.242458, 33.569164, 31.436014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.573223, 33.514000, 31.217949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562323, 0.209124, 0.800038,
		0.003671, -0.968115, 0.250479,
		0.826910, -0.137913, -0.545161,
		39.821297, 33.472626, 31.054401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.746147, 33.022770, 31.651701>,  <39.242458, 33.569164, 31.436014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.746147, 33.022770, 31.651701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.966827, 33.299805, 31.465824>,  <40.099236, 33.466026, 31.354298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.966827, 33.299805, 31.465824>,  <39.746147, 33.022770, 31.651701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.966827, 33.299805, 31.465824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431664, 0.239619, 0.869626,
		0.713645, -0.680367, -0.166768,
		0.551704, 0.692592, -0.464693,
		40.132339, 33.507584, 31.326416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.443359, 32.944221, 31.926914>,  <39.746147, 33.022770, 31.651701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.443359, 32.944221, 31.926914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.415188, 33.310490, 31.768631>,  <40.398285, 33.530251, 31.673662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.415188, 33.310490, 31.768631>,  <40.443359, 32.944221, 31.926914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.415188, 33.310490, 31.768631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543575, 0.367850, 0.754462,
		0.836400, -0.161959, -0.523645,
		-0.070431, 0.915672, -0.395707,
		40.394058, 33.585190, 31.649920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.117863, 33.191921, 32.045284>,  <40.443359, 32.944221, 31.926914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.117863, 33.191921, 32.045284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.918152, 33.518562, 31.929434>,  <40.798325, 33.714546, 31.859924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.918152, 33.518562, 31.929434>,  <41.117863, 33.191921, 32.045284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.918152, 33.518562, 31.929434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578719, 0.563072, 0.589944,
		0.644830, 0.126933, -0.753712,
		-0.499278, 0.816602, -0.289627,
		40.768368, 33.763542, 31.842546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.499245, 33.789192, 31.584904>,  <41.117863, 33.191921, 32.045284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.499245, 33.789192, 31.584904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.204155, 33.953205, 31.799433>,  <41.027100, 34.051613, 31.928150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.204155, 33.953205, 31.799433>,  <41.499245, 33.789192, 31.584904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.204155, 33.953205, 31.799433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674878, 0.468356, 0.570247,
		-0.017372, 0.782636, -0.622237,
		-0.737725, 0.410028, 0.536320,
		40.982838, 34.076214, 31.960329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.672913, 34.431824, 31.734758>,  <41.499245, 33.789192, 31.584904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.672913, 34.431824, 31.734758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.391918, 34.392956, 32.016773>,  <41.223324, 34.369637, 32.185982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.391918, 34.392956, 32.016773>,  <41.672913, 34.431824, 31.734758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.391918, 34.392956, 32.016773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593603, 0.466510, 0.655747,
		-0.392624, 0.879163, -0.270036,
		-0.702483, -0.097168, 0.705037,
		41.181175, 34.363804, 32.228283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.697731, 34.965176, 32.123966>,  <41.672913, 34.431824, 31.734758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.697731, 34.965176, 32.123966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.488888, 34.749107, 32.387974>,  <41.363583, 34.619465, 32.546379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.488888, 34.749107, 32.387974>,  <41.697731, 34.965176, 32.123966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.488888, 34.749107, 32.387974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532042, 0.398553, 0.747052,
		-0.666587, 0.741196, 0.079307,
		-0.522104, -0.540170, 0.660018,
		41.332256, 34.587055, 32.585979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.366306, 35.352089, 32.682034>,  <41.697731, 34.965176, 32.123966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.366306, 35.352089, 32.682034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.472328, 34.977921, 32.775620>,  <41.535942, 34.753422, 32.831772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.472328, 34.977921, 32.775620>,  <41.366306, 35.352089, 32.682034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.472328, 34.977921, 32.775620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656827, 0.352795, 0.666418,
		-0.705922, -0.022961, 0.707918,
		0.265052, -0.935419, 0.233964,
		41.551846, 34.697296, 32.845810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.503990, 35.400200, 33.278320>,  <41.366306, 35.352089, 32.682034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.503990, 35.400200, 33.278320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.704353, 35.073410, 33.164021>,  <41.824570, 34.877338, 33.095440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.704353, 35.073410, 33.164021>,  <41.503990, 35.400200, 33.278320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.704353, 35.073410, 33.164021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704972, 0.193591, 0.682303,
		-0.502105, -0.543210, 0.672914,
		0.500904, -0.816973, -0.285745,
		41.854626, 34.828320, 33.078297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.563568, 34.963905, 33.910614>,  <41.503990, 35.400200, 33.278320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.563568, 34.963905, 33.910614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.856880, 34.940430, 33.639660>,  <42.032867, 34.926346, 33.477089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.856880, 34.940430, 33.639660>,  <41.563568, 34.963905, 33.910614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.856880, 34.940430, 33.639660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656351, 0.321151, 0.682690,
		0.177477, -0.945208, 0.274015,
		0.733284, -0.058688, -0.677385,
		42.076866, 34.922825, 33.436443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.138027, 34.471661, 33.933159>,  <41.563568, 34.963905, 33.910614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.138027, 34.471661, 33.933159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.250313, 34.822189, 33.776566>,  <42.317684, 35.032505, 33.682610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.250313, 34.822189, 33.776566>,  <42.138027, 34.471661, 33.933159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.250313, 34.822189, 33.776566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579686, 0.170283, 0.796849,
		0.764959, -0.450624, -0.460191,
		0.280717, 0.876323, -0.391480,
		42.334526, 35.085087, 33.659122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.728977, 34.349190, 33.480942>,  <42.138027, 34.471661, 33.933159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.728977, 34.349190, 33.480942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.114841, 34.362415, 33.376381>,  <43.346359, 34.370350, 33.313644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.114841, 34.362415, 33.376381>,  <42.728977, 34.349190, 33.480942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.114841, 34.362415, 33.376381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081356, 0.980998, -0.176137,
		0.250606, 0.191179, 0.949024,
		0.964665, 0.033067, -0.261397,
		43.404240, 34.372337, 33.297962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.142735, 34.184326, 32.945873>,  <42.728977, 34.349190, 33.480942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.142735, 34.184326, 32.945873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.851864, 34.371788, 33.146500>,  <41.677341, 34.484264, 33.266876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.851864, 34.371788, 33.146500>,  <42.142735, 34.184326, 32.945873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.851864, 34.371788, 33.146500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681603, -0.406312, -0.608545,
		-0.081403, -0.784394, 0.614898,
		-0.727180, 0.468654, 0.501570,
		41.633709, 34.512383, 33.296970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.603519, 33.722866, 33.304001>,  <42.142735, 34.184326, 32.945873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.603519, 33.722866, 33.304001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.446560, 34.082958, 33.228523>,  <41.352383, 34.299015, 33.183239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.446560, 34.082958, 33.228523>,  <41.603519, 33.722866, 33.304001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.446560, 34.082958, 33.228523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671220, -0.420523, -0.610429,
		-0.628878, -0.112877, 0.769267,
		-0.392398, 0.900233, -0.188692,
		41.328842, 34.353027, 33.171917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.814522, 33.687824, 33.318928>,  <41.603519, 33.722866, 33.304001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.814522, 33.687824, 33.318928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.963970, 33.988907, 33.102100>,  <41.053638, 34.169556, 32.972004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.963970, 33.988907, 33.102100>,  <40.814522, 33.687824, 33.318928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.963970, 33.988907, 33.102100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605329, -0.244947, -0.757349,
		-0.702842, 0.611089, 0.364121,
		0.373617, 0.752709, -0.542069,
		41.076054, 34.214718, 32.939480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.259975, 34.047462, 33.033775>,  <40.814522, 33.687824, 33.318928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.259975, 34.047462, 33.033775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.553070, 34.168522, 32.789974>,  <40.728928, 34.241158, 32.643692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.553070, 34.168522, 32.789974>,  <40.259975, 34.047462, 33.033775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.553070, 34.168522, 32.789974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605347, -0.119286, -0.786973,
		-0.310881, 0.945608, 0.095802,
		0.732740, 0.302648, -0.609505,
		40.772892, 34.259315, 32.607124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.074196, 34.650913, 32.591904>,  <40.259975, 34.047462, 33.033775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.074196, 34.650913, 32.591904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.356232, 34.450588, 32.391094>,  <40.525455, 34.330391, 32.270611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.356232, 34.450588, 32.391094>,  <40.074196, 34.650913, 32.591904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.356232, 34.450588, 32.391094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570114, 0.020625, -0.821307,
		0.421679, 0.865307, -0.270980,
		0.705094, -0.500817, -0.502021,
		40.567760, 34.300343, 32.240486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.865448, 34.769234, 31.835882>,  <40.074196, 34.650913, 32.591904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.865448, 34.769234, 31.835882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.128567, 34.468426, 31.819017>,  <40.286438, 34.287941, 31.808899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.128567, 34.468426, 31.819017>,  <39.865448, 34.769234, 31.835882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.128567, 34.468426, 31.819017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399864, -0.301226, -0.865662,
		0.638293, 0.586286, -0.498849,
		0.657793, -0.752018, -0.042164,
		40.325905, 34.242821, 31.806368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.258781, 34.763744, 31.115753>,  <39.865448, 34.769234, 31.835882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.258781, 34.763744, 31.115753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.314720, 34.399681, 31.271730>,  <40.348282, 34.181244, 31.365316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.314720, 34.399681, 31.271730>,  <40.258781, 34.763744, 31.115753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.314720, 34.399681, 31.271730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109360, -0.405602, -0.907484,
		0.984116, 0.084262, -0.156256,
		0.139845, -0.910158, 0.389944,
		40.356674, 34.126633, 31.388714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.680923, 34.446690, 30.619501>,  <40.258781, 34.763744, 31.115753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.680923, 34.446690, 30.619501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.533409, 34.144051, 30.835485>,  <40.444901, 33.962467, 30.965076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.533409, 34.144051, 30.835485>,  <40.680923, 34.446690, 30.619501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.533409, 34.144051, 30.835485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300522, -0.452654, -0.839518,
		0.879593, -0.471871, -0.060443,
		-0.368785, -0.756599, 0.539959,
		40.422775, 33.917072, 30.997473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.923016, 33.741489, 30.391857>,  <40.680923, 34.446690, 30.619501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.923016, 33.741489, 30.391857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.566772, 33.708370, 30.570724>,  <40.353027, 33.688499, 30.678045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.566772, 33.708370, 30.570724>,  <40.923016, 33.741489, 30.391857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.566772, 33.708370, 30.570724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419251, -0.231464, -0.877868,
		0.176187, -0.969314, 0.171432,
		-0.890610, -0.082796, 0.447166,
		40.299591, 33.683533, 30.704874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.431236, 33.178299, 30.155212>,  <40.923016, 33.741489, 30.391857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.431236, 33.178299, 30.155212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.174862, 33.449013, 30.300074>,  <40.021038, 33.611443, 30.386990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.174862, 33.449013, 30.300074>,  <40.431236, 33.178299, 30.155212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.174862, 33.449013, 30.300074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679498, -0.280802, -0.677815,
		-0.357044, -0.680520, 0.639853,
		-0.640938, 0.676789, 0.362153,
		39.982582, 33.652050, 30.408720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.567593, 33.088890, 29.432726>,  <40.431236, 33.178299, 30.155212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.567593, 33.088890, 29.432726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.941730, 33.004890, 29.318869>,  <41.166214, 32.954491, 29.250553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.941730, 33.004890, 29.318869>,  <40.567593, 33.088890, 29.432726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.941730, 33.004890, 29.318869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350177, 0.663429, 0.661240,
		0.049982, -0.718166, 0.694074,
		0.935349, -0.209998, -0.284645,
		41.222336, 32.941891, 29.233475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.087517, 32.908619, 29.972128>,  <40.567593, 33.088890, 29.432726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.087517, 32.908619, 29.972128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.318024, 33.048294, 29.676565>,  <41.456326, 33.132099, 29.499228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.318024, 33.048294, 29.676565>,  <41.087517, 32.908619, 29.972128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.318024, 33.048294, 29.676565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458677, 0.610118, 0.646043,
		0.676415, -0.711210, 0.191421,
		0.576262, 0.349193, -0.738909,
		41.490902, 33.153053, 29.454893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.939991, 32.289257, 30.167078>,  <41.087517, 32.908619, 29.972128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.939991, 32.289257, 30.167078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.918510, 31.967272, 30.403433>,  <40.905624, 31.774080, 30.545246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.918510, 31.967272, 30.403433>,  <40.939991, 32.289257, 30.167078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.918510, 31.967272, 30.403433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568327, -0.511186, -0.644743,
		0.821049, 0.301195, 0.484933,
		-0.053698, -0.804966, 0.590886,
		40.902401, 31.725782, 30.580698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.647179, 31.981192, 30.284056>,  <40.939991, 32.289257, 30.167078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.647179, 31.981192, 30.284056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.391365, 31.674961, 30.312019>,  <41.237877, 31.491222, 30.328798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.391365, 31.674961, 30.312019>,  <41.647179, 31.981192, 30.284056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.391365, 31.674961, 30.312019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667409, -0.598047, -0.443739,
		0.381525, -0.237128, 0.893425,
		-0.639534, -0.765578, 0.069909,
		41.199505, 31.445288, 30.332993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.984940, 31.461185, 30.680384>,  <41.647179, 31.981192, 30.284056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.984940, 31.461185, 30.680384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.725178, 31.362906, 30.392519>,  <41.569321, 31.303938, 30.219801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.725178, 31.362906, 30.392519>,  <41.984940, 31.461185, 30.680384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.725178, 31.362906, 30.392519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721510, -0.498016, -0.481044,
		-0.240210, -0.831633, 0.500686,
		-0.649401, -0.245698, -0.719660,
		41.530357, 31.289196, 30.176620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.953957, 30.719284, 30.629248>,  <41.984940, 31.461185, 30.680384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.953957, 30.719284, 30.629248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.891724, 30.912706, 30.284697>,  <41.854385, 31.028759, 30.077967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.891724, 30.912706, 30.284697>,  <41.953957, 30.719284, 30.629248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.891724, 30.912706, 30.284697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702656, -0.558726, -0.440567,
		-0.694312, -0.673794, -0.252847,
		-0.155579, 0.483556, -0.861376,
		41.845051, 31.057774, 30.026283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.275715, 30.307150, 30.194193>,  <41.953957, 30.719284, 30.629248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.275715, 30.307150, 30.194193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.223927, 30.639730, 29.978071>,  <42.192852, 30.839279, 29.848398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.223927, 30.639730, 29.978071>,  <42.275715, 30.307150, 30.194193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.223927, 30.639730, 29.978071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743226, -0.279328, -0.607940,
		-0.656393, -0.480279, -0.581791,
		-0.129470, 0.831450, -0.540304,
		42.185085, 30.889166, 29.815979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.187466, 30.104216, 29.483446>,  <42.275715, 30.307150, 30.194193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.187466, 30.104216, 29.483446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.368595, 30.458456, 29.524744>,  <42.477272, 30.671001, 29.549522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.368595, 30.458456, 29.524744>,  <42.187466, 30.104216, 29.483446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.368595, 30.458456, 29.524744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806277, -0.357301, -0.471437,
		-0.380617, 0.296722, -0.875835,
		0.452823, 0.885603, 0.103245,
		42.504440, 30.724136, 29.555717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.361763, 30.369053, 28.784683>,  <42.187466, 30.104216, 29.483446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.361763, 30.369053, 28.784683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.592644, 30.551809, 29.055412>,  <42.731171, 30.661463, 29.217850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.592644, 30.551809, 29.055412>,  <42.361763, 30.369053, 28.784683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.592644, 30.551809, 29.055412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814703, -0.265697, -0.515426,
		-0.055664, 0.848914, -0.525592,
		0.577200, 0.456892, 0.676823,
		42.765804, 30.688877, 29.258459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.913830, 30.792742, 28.447336>,  <42.361763, 30.369053, 28.784683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.913830, 30.792742, 28.447336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.043785, 30.659203, 28.801285>,  <43.121758, 30.579079, 29.013653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.043785, 30.659203, 28.801285>,  <42.913830, 30.792742, 28.447336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.043785, 30.659203, 28.801285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857573, -0.290508, -0.424469,
		0.398770, 0.896744, 0.191917,
		0.324887, -0.333848, 0.884869,
		43.141251, 30.559048, 29.066746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.580204, 31.055222, 28.481276>,  <42.913830, 30.792742, 28.447336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.580204, 31.055222, 28.481276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.576107, 30.764938, 28.756445>,  <43.573650, 30.590769, 28.921547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.576107, 30.764938, 28.756445>,  <43.580204, 31.055222, 28.481276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.576107, 30.764938, 28.756445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885515, -0.326154, -0.330887,
		0.464497, 0.605781, 0.645966,
		-0.010239, -0.725709, 0.687926,
		43.573036, 30.547226, 28.962822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.075363, 31.037588, 29.069424>,  <43.580204, 31.055222, 28.481276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.075363, 31.037588, 29.069424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.958183, 30.671272, 28.959503>,  <43.887875, 30.451483, 28.893551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.958183, 30.671272, 28.959503>,  <44.075363, 31.037588, 29.069424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.958183, 30.671272, 28.959503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943729, -0.230809, -0.236860,
		0.153487, -0.328725, 0.931870,
		-0.292946, -0.915788, -0.274801,
		43.870300, 30.396536, 28.877064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.162460, 30.505178, 29.619886>,  <44.075363, 31.037588, 29.069424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.162460, 30.505178, 29.619886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.171211, 30.363958, 29.245747>,  <44.176460, 30.279226, 29.021263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.171211, 30.363958, 29.245747>,  <44.162460, 30.505178, 29.619886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.171211, 30.363958, 29.245747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986196, -0.145971, 0.078165,
		-0.164130, -0.924146, 0.344985,
		0.021878, -0.353052, -0.935348,
		44.177776, 30.258043, 28.965141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.248745, 30.888758, 30.237804>,  <44.162460, 30.505178, 29.619886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.248745, 30.888758, 30.237804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.113945, 31.029697, 30.587040>,  <44.033066, 31.114262, 30.796581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.113945, 31.029697, 30.587040>,  <44.248745, 30.888758, 30.237804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.113945, 31.029697, 30.587040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871662, -0.233740, 0.430779,
		0.355860, 0.906209, -0.228359,
		-0.336999, 0.352349, 0.873087,
		44.012844, 31.135403, 30.848967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.637005, 31.482269, 30.660517>,  <44.248745, 30.888758, 30.237804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.637005, 31.482269, 30.660517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.443645, 31.246300, 30.919226>,  <44.327629, 31.104719, 31.074451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.443645, 31.246300, 30.919226>,  <44.637005, 31.482269, 30.660517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.443645, 31.246300, 30.919226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851830, -0.146700, 0.502857,
		-0.201765, 0.794021, 0.573429,
		-0.483402, -0.589923, 0.646772,
		44.298626, 31.069323, 31.113256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.772633, 31.812952, 31.298611>,  <44.637005, 31.482269, 30.660517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.772633, 31.812952, 31.298611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.715012, 31.419180, 31.338909>,  <44.680439, 31.182917, 31.363089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.715012, 31.419180, 31.338909>,  <44.772633, 31.812952, 31.298611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.715012, 31.419180, 31.338909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866898, -0.076440, 0.492590,
		-0.477219, 0.158295, 0.864410,
		-0.144050, -0.984428, 0.100747,
		44.671795, 31.123852, 31.369133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.661480, 31.572840, 32.050312>,  <44.772633, 31.812952, 31.298611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.661480, 31.572840, 32.050312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.825634, 31.299143, 31.809181>,  <44.924126, 31.134924, 31.664503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.825634, 31.299143, 31.809181>,  <44.661480, 31.572840, 32.050312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.825634, 31.299143, 31.809181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864632, 0.081869, 0.495691,
		-0.289820, -0.724645, 0.625215,
		0.410385, -0.684242, -0.602824,
		44.948750, 31.093870, 31.628334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.220692, 31.984978, 32.361031>,  <44.661480, 31.572840, 32.050312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.220692, 31.984978, 32.361031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.044857, 32.227982, 32.096397>,  <44.939358, 32.373783, 31.937616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.044857, 32.227982, 32.096397>,  <45.220692, 31.984978, 32.361031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.044857, 32.227982, 32.096397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268464, 0.791766, 0.548666,
		0.857141, 0.063574, -0.511144,
		-0.439587, 0.607508, -0.661587,
		44.912979, 32.410233, 31.897921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.562580, 32.682037, 32.360531>,  <45.220692, 31.984978, 32.361031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.562580, 32.682037, 32.360531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.214268, 32.749023, 32.175621>,  <45.005280, 32.789215, 32.064674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.214268, 32.749023, 32.175621>,  <45.562580, 32.682037, 32.360531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.214268, 32.749023, 32.175621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082090, 0.877494, 0.472511,
		0.484769, 0.449401, -0.750358,
		-0.870781, 0.167462, -0.462273,
		44.953033, 32.799263, 32.036938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.496143, 33.393093, 31.950504>,  <45.562580, 32.682037, 32.360531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.496143, 33.393093, 31.950504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.178108, 33.218781, 32.119232>,  <44.987289, 33.114193, 32.220470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.178108, 33.218781, 32.119232>,  <45.496143, 33.393093, 31.950504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.178108, 33.218781, 32.119232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008853, 0.703766, 0.710377,
		-0.606435, 0.561075, -0.563411,
		-0.795084, -0.435785, 0.421821,
		44.939583, 33.088043, 32.245777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.858814, 33.847580, 32.094852>,  <45.496143, 33.393093, 31.950504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.858814, 33.847580, 32.094852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.849125, 33.538296, 32.348324>,  <44.843311, 33.352726, 32.500408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.849125, 33.538296, 32.348324>,  <44.858814, 33.847580, 32.094852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.849125, 33.538296, 32.348324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179192, 0.626960, 0.758163,
		-0.983516, -0.095188, -0.153740,
		-0.024221, -0.773214, 0.633682,
		44.841858, 33.306332, 32.538429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.163490, 33.876549, 32.419548>,  <44.858814, 33.847580, 32.094852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.163490, 33.876549, 32.419548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.440353, 33.738834, 32.673283>,  <44.606472, 33.656204, 32.825523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.440353, 33.738834, 32.673283>,  <44.163490, 33.876549, 32.419548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.440353, 33.738834, 32.673283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200121, 0.752885, 0.626990,
		-0.693450, -0.560919, 0.452214,
		0.692156, -0.344288, 0.634340,
		44.647999, 33.635548, 32.863583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.860016, 33.639942, 32.983303>,  <44.163490, 33.876549, 32.419548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.860016, 33.639942, 32.983303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.215580, 33.787773, 33.091560>,  <44.428921, 33.876472, 33.156517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.215580, 33.787773, 33.091560>,  <43.860016, 33.639942, 32.983303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.215580, 33.787773, 33.091560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445748, 0.561706, 0.696990,
		0.105566, -0.740203, 0.664044,
		0.888912, 0.369575, 0.270647,
		44.482254, 33.898647, 33.172756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.953468, 33.672817, 33.703629>,  <43.860016, 33.639942, 32.983303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.953468, 33.672817, 33.703629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.203613, 33.956383, 33.573177>,  <44.353699, 34.126522, 33.494907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.203613, 33.956383, 33.573177>,  <43.953468, 33.672817, 33.703629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.203613, 33.956383, 33.573177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321480, 0.614875, 0.720125,
		0.711035, -0.345496, 0.612422,
		0.625364, 0.708916, -0.326127,
		44.391224, 34.169056, 33.475338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.170334, 34.008999, 34.303764>,  <43.953468, 33.672817, 33.703629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.170334, 34.008999, 34.303764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.227665, 34.265224, 34.001999>,  <44.262066, 34.418961, 33.820942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.227665, 34.265224, 34.001999>,  <44.170334, 34.008999, 34.303764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.227665, 34.265224, 34.001999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117346, 0.767903, 0.629726,
		0.982693, -0.001733, 0.185232,
		0.143332, 0.640564, -0.754410,
		44.270664, 34.457394, 33.775677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.376076, 34.581516, 34.623074>,  <44.170334, 34.008999, 34.303764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.376076, 34.581516, 34.623074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.348114, 34.711872, 34.245945>,  <44.331337, 34.790085, 34.019669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.348114, 34.711872, 34.245945>,  <44.376076, 34.581516, 34.623074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.348114, 34.711872, 34.245945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214164, 0.918193, 0.333251,
		0.974293, 0.225215, 0.005605,
		-0.069907, 0.325885, -0.942821,
		44.327141, 34.809639, 33.963100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.902309, 34.998276, 34.408913>,  <44.376076, 34.581516, 34.623074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.902309, 34.998276, 34.408913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.576817, 35.093372, 34.196758>,  <44.381519, 35.150433, 34.069466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.576817, 35.093372, 34.196758>,  <44.902309, 34.998276, 34.408913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.576817, 35.093372, 34.196758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001924, 0.911411, 0.411492,
		0.581230, 0.335867, -0.741191,
		-0.813737, 0.237746, -0.530386,
		44.332695, 35.164696, 34.037643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.516018, 35.338501, 34.100384>,  <44.902309, 34.998276, 34.408913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.516018, 35.338501, 34.100384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.808743, 35.175987, 34.319248>,  <45.984375, 35.078480, 34.450569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.808743, 35.175987, 34.319248>,  <45.516018, 35.338501, 34.100384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.808743, 35.175987, 34.319248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499399, -0.226630, -0.836205,
		0.463743, 0.885195, 0.037050,
		0.731808, -0.406287, 0.547164,
		46.028286, 35.054100, 34.483398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.120884, 35.768005, 34.101009>,  <45.516018, 35.338501, 34.100384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.120884, 35.768005, 34.101009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.153084, 35.369881, 34.122490>,  <46.172405, 35.131008, 34.135376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.153084, 35.369881, 34.122490>,  <46.120884, 35.768005, 34.101009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.153084, 35.369881, 34.122490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535758, -0.002223, -0.844369,
		0.840526, 0.096739, 0.533065,
		0.080499, -0.995307, 0.053697,
		46.177235, 35.071289, 34.138599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.775208, 36.212410, 33.846405>,  <46.120884, 35.768005, 34.101009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.775208, 36.212410, 33.846405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.800274, 36.611439, 33.834316>,  <46.815315, 36.850857, 33.827065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.800274, 36.611439, 33.834316>,  <46.775208, 36.212410, 33.846405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.800274, 36.611439, 33.834316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478680, 0.003472, -0.877982,
		-0.875750, 0.069490, 0.477738,
		0.062670, 0.997577, -0.030223,
		46.819077, 36.910713, 33.825249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.489853, 36.346977, 33.841881>,  <46.775208, 36.212410, 33.846405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.489853, 36.346977, 33.841881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.573219, 36.074909, 33.560760>,  <47.623241, 35.911667, 33.392090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.573219, 36.074909, 33.560760>,  <47.489853, 36.346977, 33.841881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.573219, 36.074909, 33.560760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935385, -0.071276, 0.346374,
		-0.285687, -0.729578, 0.621369,
		0.208418, -0.680174, -0.702798,
		47.635746, 35.870857, 33.349922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.737900, 35.694382, 34.198906>,  <47.489853, 36.346977, 33.841881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.737900, 35.694382, 34.198906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.863091, 35.751259, 33.823284>,  <47.938206, 35.785385, 33.597912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.863091, 35.751259, 33.823284>,  <47.737900, 35.694382, 34.198906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.863091, 35.751259, 33.823284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945547, -0.139699, 0.293983,
		-0.089381, -0.979931, -0.178177,
		0.312974, 0.142198, -0.939056,
		47.956982, 35.793919, 33.541569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.537487, 35.231892, 34.779911>,  <47.737900, 35.694382, 34.198906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.537487, 35.231892, 34.779911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.640594, 34.923496, 35.012856>,  <47.702457, 34.738461, 35.152622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.640594, 34.923496, 35.012856>,  <47.537487, 35.231892, 34.779911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.640594, 34.923496, 35.012856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680826, 0.572607, 0.456725,
		-0.685589, 0.278756, 0.672505,
		0.257766, -0.770984, 0.582357,
		47.717926, 34.692200, 35.187561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<32.553539, 35.798466, 16.189112> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.219975, 36.003952, 16.269793>,  <32.019836, 36.127243, 16.318201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.219975, 36.003952, 16.269793>,  <32.553539, 35.798466, 16.189112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.219975, 36.003952, 16.269793> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125058, -0.180079, 0.975670,
		0.537539, 0.838850, 0.085926,
		-0.833914, 0.513715, 0.201704,
		31.969801, 36.158066, 16.330303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.737263, 36.278580, 16.730360>,  <32.553539, 35.798466, 16.189112>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.737263, 36.278580, 16.730360> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.339027, 36.253880, 16.758614>,  <32.100086, 36.239059, 16.775566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.339027, 36.253880, 16.758614>,  <32.737263, 36.278580, 16.730360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.339027, 36.253880, 16.758614> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083329, -0.236022, 0.968168,
		-0.043116, 0.969784, 0.240126,
		-0.995589, -0.061753, 0.070635,
		32.040352, 36.235355, 16.779804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.630051, 36.592564, 17.306543>,  <32.737263, 36.278580, 16.730360>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.630051, 36.592564, 17.306543> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.319565, 36.348980, 17.241232>,  <32.133274, 36.202831, 17.202045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.319565, 36.348980, 17.241232>,  <32.630051, 36.592564, 17.306543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.319565, 36.348980, 17.241232> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153450, -0.433674, 0.887907,
		-0.611507, 0.664152, 0.430070,
		-0.776216, -0.608956, -0.163281,
		32.086700, 36.166294, 17.192247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.291889, 36.575745, 18.022230>,  <32.630051, 36.592564, 17.306543>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.291889, 36.575745, 18.022230> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.146671, 36.263550, 17.818647>,  <32.059540, 36.076233, 17.696497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.146671, 36.263550, 17.818647>,  <32.291889, 36.575745, 18.022230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.146671, 36.263550, 17.818647> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051033, -0.562064, 0.825518,
		-0.930372, 0.273729, 0.243887,
		-0.363048, -0.780485, -0.508959,
		32.037758, 36.029404, 17.665960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.867313, 36.291470, 18.465984>,  <32.291889, 36.575745, 18.022230>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.867313, 36.291470, 18.465984> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.920374, 35.996380, 18.201206>,  <31.952211, 35.819328, 18.042339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.920374, 35.996380, 18.201206>,  <31.867313, 36.291470, 18.465984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.920374, 35.996380, 18.201206> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032062, -0.664304, 0.746774,
		-0.990644, -0.120285, -0.064469,
		0.132653, -0.737721, -0.661945,
		31.960169, 35.775063, 18.002623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.302828, 35.756405, 18.569946>,  <31.867313, 36.291470, 18.465984>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.302828, 35.756405, 18.569946> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.647724, 35.616253, 18.423647>,  <31.854662, 35.532162, 18.335867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.647724, 35.616253, 18.423647>,  <31.302828, 35.756405, 18.569946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.647724, 35.616253, 18.423647> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070417, -0.632174, 0.771620,
		-0.501581, -0.691076, -0.520413,
		0.862240, -0.350384, -0.365750,
		31.906397, 35.511139, 18.313921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.335379, 35.183407, 18.817823>,  <31.302828, 35.756405, 18.569946>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.335379, 35.183407, 18.817823> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.717375, 35.184990, 18.699179>,  <31.946573, 35.185940, 18.627993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.717375, 35.184990, 18.699179>,  <31.335379, 35.183407, 18.817823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.717375, 35.184990, 18.699179> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227265, -0.652387, 0.723009,
		-0.190644, -0.757876, -0.623922,
		0.954990, 0.003958, -0.296612,
		32.003872, 35.186176, 18.610195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.575001, 34.551056, 19.055542>,  <31.335379, 35.183407, 18.817823>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.575001, 34.551056, 19.055542> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.919647, 34.736130, 18.972076>,  <32.126434, 34.847176, 18.921997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.919647, 34.736130, 18.972076>,  <31.575001, 34.551056, 19.055542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.919647, 34.736130, 18.972076> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418524, -0.415071, 0.807808,
		0.287150, -0.783351, -0.551277,
		0.861616, 0.462684, -0.208663,
		32.178131, 34.874935, 18.909477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.116055, 33.964088, 19.172245>,  <31.575001, 34.551056, 19.055542>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.116055, 33.964088, 19.172245> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.294292, 34.321358, 19.196526>,  <32.401234, 34.535721, 19.211094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.294292, 34.321358, 19.196526>,  <32.116055, 33.964088, 19.172245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.294292, 34.321358, 19.196526> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581791, -0.340449, 0.738657,
		0.680415, -0.293827, -0.671343,
		0.445596, 0.893174, 0.060701,
		32.427971, 34.589310, 19.214735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.887878, 33.816975, 19.254740>,  <32.116055, 33.964088, 19.172245>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.887878, 33.816975, 19.254740> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.803020, 34.188049, 19.377636>,  <32.752106, 34.410694, 19.451374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.803020, 34.188049, 19.377636>,  <32.887878, 33.816975, 19.254740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.803020, 34.188049, 19.377636> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603743, -0.122805, 0.787663,
		0.768434, 0.352591, -0.534031,
		-0.212141, 0.927685, 0.307242,
		32.739380, 34.466354, 19.469809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.602982, 34.213043, 19.360060>,  <32.887878, 33.816975, 19.254740>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.602982, 34.213043, 19.360060> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.314377, 34.347061, 19.602438>,  <33.141216, 34.427471, 19.747866>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.314377, 34.347061, 19.602438>,  <33.602982, 34.213043, 19.360060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.314377, 34.347061, 19.602438> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649067, 0.022525, 0.760397,
		0.241119, 0.941933, -0.233719,
		-0.721508, 0.335045, 0.605947,
		33.097923, 34.447575, 19.784222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.066544, 34.411797, 19.894955>,  <33.602982, 34.213043, 19.360060>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.066544, 34.411797, 19.894955> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.696213, 34.448212, 20.041683>,  <33.474014, 34.470062, 20.129721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.696213, 34.448212, 20.041683>,  <34.066544, 34.411797, 19.894955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.696213, 34.448212, 20.041683> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374061, 0.081884, 0.923782,
		0.054063, 0.992475, -0.109865,
		-0.925827, 0.091038, 0.366820,
		33.418465, 34.475525, 20.151730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.107208, 34.981876, 20.447729>,  <34.066544, 34.411797, 19.894955>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.107208, 34.981876, 20.447729> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.788246, 34.755848, 20.532433>,  <33.596870, 34.620232, 20.583254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.788246, 34.755848, 20.532433>,  <34.107208, 34.981876, 20.447729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.788246, 34.755848, 20.532433> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220566, 0.053709, 0.973892,
		-0.561693, 0.823291, 0.081808,
		-0.797403, -0.565072, 0.211758,
		33.549026, 34.586327, 20.595961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.857059, 35.299477, 21.142523>,  <34.107208, 34.981876, 20.447729>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.857059, 35.299477, 21.142523> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.678932, 34.942150, 21.118267>,  <33.572056, 34.727753, 21.103714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.678932, 34.942150, 21.118267>,  <33.857059, 35.299477, 21.142523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.678932, 34.942150, 21.118267> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123320, -0.128273, 0.984042,
		-0.886841, 0.430730, 0.167286,
		-0.445315, -0.893318, -0.060640,
		33.545338, 34.674156, 21.100075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.454697, 35.258125, 21.759827>,  <33.857059, 35.299477, 21.142523>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.454697, 35.258125, 21.759827> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.494442, 34.878948, 21.638813>,  <33.518291, 34.651440, 21.566206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.494442, 34.878948, 21.638813>,  <33.454697, 35.258125, 21.759827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.494442, 34.878948, 21.638813> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120562, -0.290329, 0.949302,
		-0.987720, -0.130802, 0.085438,
		0.099365, -0.947945, -0.302533,
		33.524250, 34.594566, 21.548054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.109871, 34.816441, 22.234415>,  <33.454697, 35.258125, 21.759827>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.109871, 34.816441, 22.234415> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.383053, 34.561424, 22.091797>,  <33.546963, 34.408417, 22.006226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.383053, 34.561424, 22.091797>,  <33.109871, 34.816441, 22.234415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.383053, 34.561424, 22.091797> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040307, -0.454474, 0.889847,
		-0.729352, -0.622092, -0.284686,
		0.682950, -0.637538, -0.356546,
		33.587936, 34.370163, 21.984833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.907944, 34.167824, 22.512409>,  <33.109871, 34.816441, 22.234415>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.907944, 34.167824, 22.512409> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.291485, 34.151539, 22.400017>,  <33.521610, 34.141769, 22.332581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.291485, 34.151539, 22.400017>,  <32.907944, 34.167824, 22.512409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.291485, 34.151539, 22.400017> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238910, -0.419007, 0.875988,
		-0.153393, -0.907070, -0.392039,
		0.958850, -0.040708, -0.280981,
		33.579140, 34.139328, 22.315723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.159260, 33.399658, 22.547461>,  <32.907944, 34.167824, 22.512409>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.159260, 33.399658, 22.547461> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.438385, 33.682388, 22.593864>,  <33.605862, 33.852024, 22.621706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.438385, 33.682388, 22.593864>,  <33.159260, 33.399658, 22.547461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.438385, 33.682388, 22.593864> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249951, -0.392072, 0.885327,
		0.671251, -0.588799, -0.450264,
		0.697816, 0.706821, 0.116008,
		33.647728, 33.894436, 22.628666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.560989, 33.064915, 22.999273>,  <33.159260, 33.399658, 22.547461>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.560989, 33.064915, 22.999273> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.698689, 33.439697, 23.023300>,  <33.781307, 33.664566, 23.037716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.698689, 33.439697, 23.023300>,  <33.560989, 33.064915, 22.999273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.698689, 33.439697, 23.023300> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429772, -0.214141, 0.877177,
		0.834738, -0.276154, -0.476395,
		0.344251, 0.936954, 0.060069,
		33.801964, 33.720783, 23.041321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.214947, 32.968468, 23.199678>,  <33.560989, 33.064915, 22.999273>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.214947, 32.968468, 23.199678> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.150017, 33.356949, 23.269432>,  <34.111057, 33.590038, 23.311285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.150017, 33.356949, 23.269432>,  <34.214947, 32.968468, 23.199678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.150017, 33.356949, 23.269432> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465836, -0.080367, 0.881214,
		0.869854, 0.224282, -0.439376,
		-0.162329, 0.971205, 0.174386,
		34.101318, 33.648312, 23.321749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.911182, 33.224651, 23.418282>,  <34.214947, 32.968468, 23.199678>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.911182, 33.224651, 23.418282> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.636284, 33.487972, 23.541134>,  <34.471344, 33.645966, 23.614845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.636284, 33.487972, 23.541134>,  <34.911182, 33.224651, 23.418282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.636284, 33.487972, 23.541134> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567207, 0.222152, 0.793047,
		0.453833, 0.719229, -0.526066,
		-0.687249, 0.658299, 0.307133,
		34.430111, 33.685463, 23.633274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.230896, 33.874451, 23.612156>,  <34.911182, 33.224651, 23.418282>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.230896, 33.874451, 23.612156> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.886162, 33.858181, 23.814375>,  <34.679321, 33.848419, 23.935707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.886162, 33.858181, 23.814375>,  <35.230896, 33.874451, 23.612156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.886162, 33.858181, 23.814375> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480481, 0.253675, 0.839516,
		-0.162396, 0.966434, -0.199082,
		-0.861838, -0.040679, 0.505549,
		34.627609, 33.845978, 23.966040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.809528, 34.112926, 24.206215>,  <35.230896, 33.874451, 23.612156>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.809528, 34.112926, 24.206215> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.202316, 34.183964, 24.180300>,  <36.437988, 34.226585, 24.164751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.202316, 34.183964, 24.180300>,  <35.809528, 34.112926, 24.206215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.202316, 34.183964, 24.180300> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127356, 0.368231, -0.920970,
		-0.139698, 0.912616, 0.384209,
		0.981970, 0.177589, -0.064786,
		36.496906, 34.237240, 24.160864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.915699, 34.733719, 23.950003>,  <35.809528, 34.112926, 24.206215>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.915699, 34.733719, 23.950003> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.258877, 34.560287, 23.839766>,  <36.464783, 34.456230, 23.773624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.258877, 34.560287, 23.839766>,  <35.915699, 34.733719, 23.950003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.258877, 34.560287, 23.839766> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117942, 0.355883, -0.927058,
		0.500029, 0.827864, 0.254189,
		0.857940, -0.433576, -0.275592,
		36.516258, 34.430214, 23.757088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.157867, 35.243462, 23.503801>,  <35.915699, 34.733719, 23.950003>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.157867, 35.243462, 23.503801> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.361851, 34.909073, 23.422714>,  <36.484241, 34.708439, 23.374062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.361851, 34.909073, 23.422714>,  <36.157867, 35.243462, 23.503801>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.361851, 34.909073, 23.422714> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004012, 0.233348, -0.972385,
		0.860188, 0.496692, 0.115644,
		0.509961, -0.835970, -0.202716,
		36.514839, 34.658283, 23.361900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.681339, 35.476345, 23.061251>,  <36.157867, 35.243462, 23.503801>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.681339, 35.476345, 23.061251> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.628010, 35.083496, 23.008085>,  <36.596012, 34.847786, 22.976187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.628010, 35.083496, 23.008085>,  <36.681339, 35.476345, 23.061251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.628010, 35.083496, 23.008085> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083029, 0.122569, -0.988981,
		0.987588, -0.142893, 0.065202,
		-0.133327, -0.982119, -0.132912,
		36.588013, 34.788860, 22.968212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.165215, 35.271011, 22.471622>,  <36.681339, 35.476345, 23.061251>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.165215, 35.271011, 22.471622> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.903919, 34.969387, 22.498964>,  <36.747143, 34.788410, 22.515369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.903919, 34.969387, 22.498964>,  <37.165215, 35.271011, 22.471622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.903919, 34.969387, 22.498964> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316655, 0.190076, -0.929302,
		0.687760, -0.628697, -0.362942,
		-0.653236, -0.754063, 0.068354,
		36.707947, 34.743168, 22.519470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.362652, 34.827835, 21.970564>,  <37.165215, 35.271011, 22.471622>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.362652, 34.827835, 21.970564> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.983654, 34.722191, 22.042664>,  <36.756256, 34.658802, 22.085924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.983654, 34.722191, 22.042664>,  <37.362652, 34.827835, 21.970564>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.983654, 34.722191, 22.042664> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233557, 0.186614, -0.954268,
		0.218404, -0.946264, -0.238504,
		-0.947497, -0.264120, 0.180249,
		36.699406, 34.642956, 22.096739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.192738, 34.363323, 21.393570>,  <37.362652, 34.827835, 21.970564>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.192738, 34.363323, 21.393570> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.850769, 34.487309, 21.559959>,  <36.645588, 34.561699, 21.659794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.850769, 34.487309, 21.559959>,  <37.192738, 34.363323, 21.393570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.850769, 34.487309, 21.559959> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410204, 0.086936, -0.907841,
		-0.317557, -0.946767, 0.052823,
		-0.854921, 0.309960, 0.415975,
		36.594292, 34.580296, 21.684752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.727650, 33.963299, 21.061548>,  <37.192738, 34.363323, 21.393570>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.727650, 33.963299, 21.061548> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.500740, 34.237217, 21.244524>,  <36.364594, 34.401569, 21.354309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.500740, 34.237217, 21.244524>,  <36.727650, 33.963299, 21.061548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.500740, 34.237217, 21.244524> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469021, 0.187924, -0.862962,
		-0.676919, -0.704085, 0.214581,
		-0.567273, 0.684799, 0.457440,
		36.330559, 34.442657, 21.381756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.039417, 33.759491, 20.957344>,  <36.727650, 33.963299, 21.061548>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.039417, 33.759491, 20.957344> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.050381, 34.154537, 21.019146>,  <36.056957, 34.391563, 21.056227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.050381, 34.154537, 21.019146>,  <36.039417, 33.759491, 20.957344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.050381, 34.154537, 21.019146> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504278, 0.147115, -0.850918,
		-0.863106, -0.054591, 0.502063,
		0.027408, 0.987612, 0.154505,
		36.058601, 34.450821, 21.065496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.285076, 34.150352, 21.065199>,  <36.039417, 33.759491, 20.957344>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.285076, 34.150352, 21.065199> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.557545, 34.407001, 20.924160>,  <35.721024, 34.560993, 20.839537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.557545, 34.407001, 20.924160>,  <35.285076, 34.150352, 21.065199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.557545, 34.407001, 20.924160> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523331, 0.089919, -0.847372,
		-0.511989, 0.761730, 0.397032,
		0.681169, 0.641625, -0.352599,
		35.761894, 34.599487, 20.818380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.825840, 34.621628, 20.598209>,  <35.285076, 34.150352, 21.065199>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.825840, 34.621628, 20.598209> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.203117, 34.726337, 20.516369>,  <35.429485, 34.789162, 20.467264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.203117, 34.726337, 20.516369>,  <34.825840, 34.621628, 20.598209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.203117, 34.726337, 20.516369> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257213, 0.185501, -0.948383,
		-0.210308, 0.947134, 0.242295,
		0.943192, 0.261774, -0.204602,
		35.486076, 34.804871, 20.454988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.733387, 35.215191, 20.174784>,  <34.825840, 34.621628, 20.598209>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.733387, 35.215191, 20.174784> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.114220, 35.116684, 20.102245>,  <35.342720, 35.057579, 20.058723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.114220, 35.116684, 20.102245>,  <34.733387, 35.215191, 20.174784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.114220, 35.116684, 20.102245> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129270, 0.213324, -0.968392,
		0.277172, 0.945433, 0.171266,
		0.952084, -0.246272, -0.181344,
		35.399845, 35.042801, 20.047842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.089073, 35.788231, 19.873512>,  <34.733387, 35.215191, 20.174784>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.089073, 35.788231, 19.873512> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.284069, 35.457184, 19.762226>,  <35.401066, 35.258556, 19.695454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.284069, 35.457184, 19.762226>,  <35.089073, 35.788231, 19.873512>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.284069, 35.457184, 19.762226> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040895, 0.339935, -0.939559,
		0.872170, 0.446649, 0.199560,
		0.487491, -0.827616, -0.278215,
		35.430317, 35.208900, 19.678761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.321995, 35.949734, 19.339092>,  <35.089073, 35.788231, 19.873512>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.321995, 35.949734, 19.339092> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.409439, 35.561180, 19.301968>,  <35.461906, 35.328049, 19.279694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.409439, 35.561180, 19.301968>,  <35.321995, 35.949734, 19.339092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.409439, 35.561180, 19.301968> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138292, 0.063310, -0.988366,
		0.965962, 0.228906, -0.120494,
		0.218615, -0.971388, -0.092811,
		35.475025, 35.269764, 19.274124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.828735, 35.925812, 18.791780>,  <35.321995, 35.949734, 19.339092>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.828735, 35.925812, 18.791780> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.686531, 35.551991, 18.797735>,  <35.601208, 35.327698, 18.801308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.686531, 35.551991, 18.797735>,  <35.828735, 35.925812, 18.791780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.686531, 35.551991, 18.797735> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061225, -0.039176, -0.997355,
		0.932664, -0.353662, 0.071145,
		-0.355514, -0.934552, 0.014886,
		35.579876, 35.271626, 18.802200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.216888, 35.528179, 18.280611>,  <35.828735, 35.925812, 18.791780>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.216888, 35.528179, 18.280611> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.870102, 35.340229, 18.347044>,  <35.662029, 35.227459, 18.386904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.870102, 35.340229, 18.347044>,  <36.216888, 35.528179, 18.280611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.870102, 35.340229, 18.347044> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220249, 0.062302, -0.973452,
		0.447052, -0.880532, -0.157503,
		-0.866969, -0.469874, 0.166084,
		35.610012, 35.199268, 18.396870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.020931, 34.918709, 17.753944>,  <36.216888, 35.528179, 18.280611>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.020931, 34.918709, 17.753944> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.661831, 35.043880, 17.877954>,  <35.446369, 35.118984, 17.952360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.661831, 35.043880, 17.877954>,  <36.020931, 34.918709, 17.753944>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.661831, 35.043880, 17.877954> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351781, -0.085713, -0.932150,
		-0.265128, -0.945900, 0.187033,
		-0.897751, 0.312933, 0.310024,
		35.392506, 35.137760, 17.970963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.600170, 34.624260, 17.241873>,  <36.020931, 34.918709, 17.753944>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.600170, 34.624260, 17.241873> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.368961, 34.900928, 17.415066>,  <35.230236, 35.066929, 17.518982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.368961, 34.900928, 17.415066>,  <35.600170, 34.624260, 17.241873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.368961, 34.900928, 17.415066> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513829, 0.103696, -0.851602,
		-0.633928, -0.714729, 0.295462,
		-0.578027, 0.691672, 0.432985,
		35.195553, 35.108429, 17.544962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<34.360268, 34.658020, 16.958067> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.373043, 34.993534, 17.175476>,  <34.380711, 35.194843, 17.305922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.373043, 34.993534, 17.175476>,  <34.360268, 34.658020, 16.958067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.373043, 34.993534, 17.175476> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083863, 0.544131, -0.834799,
		-0.995965, -0.018916, 0.087724,
		0.031943, 0.838787, 0.543521,
		34.382626, 35.245171, 17.338533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.707985, 35.067600, 16.841833>,  <34.360268, 34.658020, 16.958067>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.707985, 35.067600, 16.841833> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.034454, 35.292248, 16.896162>,  <34.230335, 35.427036, 16.928761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.034454, 35.292248, 16.896162>,  <33.707985, 35.067600, 16.841833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.034454, 35.292248, 16.896162> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138095, 0.417852, -0.897958,
		-0.561064, 0.714132, 0.418596,
		0.816172, 0.561618, 0.135823,
		34.279305, 35.460732, 16.936909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.527176, 35.813950, 16.790752>,  <33.707985, 35.067600, 16.841833>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.527176, 35.813950, 16.790752> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.912865, 35.753426, 16.703686>,  <34.144279, 35.717110, 16.651445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.912865, 35.753426, 16.703686>,  <33.527176, 35.813950, 16.790752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.912865, 35.753426, 16.703686> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108037, 0.525509, -0.843901,
		0.242080, 0.837224, 0.490360,
		0.964223, -0.151314, -0.217666,
		34.202133, 35.708031, 16.638386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.768032, 36.489994, 16.646185>,  <33.527176, 35.813950, 16.790752>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.768032, 36.489994, 16.646185> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.053432, 36.245728, 16.508783>,  <34.224674, 36.099167, 16.426342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.053432, 36.245728, 16.508783>,  <33.768032, 36.489994, 16.646185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.053432, 36.245728, 16.508783> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028152, 0.464883, -0.884924,
		0.700085, 0.641068, 0.314505,
		0.713505, -0.610668, -0.343505,
		34.267483, 36.062527, 16.405731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.188320, 36.921619, 16.148867>,  <33.768032, 36.489994, 16.646185>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.188320, 36.921619, 16.148867> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.315712, 36.555408, 16.050570>,  <34.392147, 36.335682, 15.991591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.315712, 36.555408, 16.050570>,  <34.188320, 36.921619, 16.148867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.315712, 36.555408, 16.050570> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027591, 0.268083, -0.963001,
		0.947529, 0.299912, 0.110639,
		0.318476, -0.915524, -0.245742,
		34.411255, 36.280750, 15.976847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.833267, 36.969017, 15.786654>,  <34.188320, 36.921619, 16.148867>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.833267, 36.969017, 15.786654> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.677788, 36.622959, 15.659887>,  <34.584499, 36.415325, 15.583827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.677788, 36.622959, 15.659887>,  <34.833267, 36.969017, 15.786654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.677788, 36.622959, 15.659887> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310088, 0.201065, -0.929203,
		0.867616, -0.459454, 0.190117,
		-0.388700, -0.865145, -0.316918,
		34.561176, 36.363415, 15.564812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.213348, 36.783195, 15.207874>,  <34.833267, 36.969017, 15.786654>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.213348, 36.783195, 15.207874> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.882851, 36.559437, 15.181341>,  <34.684551, 36.425182, 15.165421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.882851, 36.559437, 15.181341>,  <35.213348, 36.783195, 15.207874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.882851, 36.559437, 15.181341> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017909, 0.143781, -0.989447,
		0.563029, -0.816336, -0.128816,
		-0.826243, -0.559395, -0.066334,
		34.634979, 36.391617, 15.161441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.356201, 36.352047, 14.680826>,  <35.213348, 36.783195, 15.207874>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.356201, 36.352047, 14.680826> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.956425, 36.354549, 14.694009>,  <34.716560, 36.356052, 14.701919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.956425, 36.354549, 14.694009>,  <35.356201, 36.352047, 14.680826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.956425, 36.354549, 14.694009> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032070, 0.109973, -0.993417,
		-0.009843, -0.993915, -0.109711,
		-0.999437, 0.006259, 0.032957,
		34.656593, 36.356426, 14.703896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.170002, 35.947845, 14.023761>,  <35.356201, 36.352047, 14.680826>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.170002, 35.947845, 14.023761> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.841400, 36.150543, 14.128329>,  <34.644241, 36.272163, 14.191071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.841400, 36.150543, 14.128329>,  <35.170002, 35.947845, 14.023761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.841400, 36.150543, 14.128329> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171020, 0.218392, -0.960759,
		-0.543955, -0.833973, -0.092745,
		-0.821501, 0.506748, 0.261422,
		34.594948, 36.302567, 14.206756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.595871, 35.615723, 13.635538>,  <35.170002, 35.947845, 14.023761>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.595871, 35.615723, 13.635538> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.532181, 35.997139, 13.737833>,  <34.493965, 36.225990, 13.799210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.532181, 35.997139, 13.737833>,  <34.595871, 35.615723, 13.635538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.532181, 35.997139, 13.737833> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094421, 0.243145, -0.965383,
		-0.982716, -0.177862, 0.051320,
		-0.159227, 0.953544, 0.255737,
		34.484413, 36.283203, 13.814554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.185593, 35.909462, 13.097842>,  <34.595871, 35.615723, 13.635538>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.185593, 35.909462, 13.097842> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.294197, 36.243320, 13.289526>,  <34.359360, 36.443638, 13.404536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.294197, 36.243320, 13.289526>,  <34.185593, 35.909462, 13.097842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.294197, 36.243320, 13.289526> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020836, 0.502895, -0.864097,
		-0.962209, 0.224630, 0.153934,
		0.271515, 0.834649, 0.479209,
		34.375652, 36.493713, 13.433289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.669235, 36.432842, 12.890485>,  <34.185593, 35.909462, 13.097842>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.669235, 36.432842, 12.890485> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.988480, 36.640862, 13.012190>,  <34.180027, 36.765675, 13.085213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.988480, 36.640862, 13.012190>,  <33.669235, 36.432842, 12.890485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.988480, 36.640862, 13.012190> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079733, 0.591707, -0.802200,
		-0.597218, 0.615981, 0.513710,
		0.798106, 0.520048, 0.304263,
		34.227913, 36.796875, 13.103469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.512138, 37.160221, 12.744107>,  <33.669235, 36.432842, 12.890485>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.512138, 37.160221, 12.744107> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.907211, 37.164471, 12.806553>,  <34.144257, 37.167023, 12.844020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.907211, 37.164471, 12.806553>,  <33.512138, 37.160221, 12.744107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.907211, 37.164471, 12.806553> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084015, 0.805665, -0.586384,
		-0.132007, 0.592277, 0.794847,
		0.987682, 0.010627, 0.156114,
		34.203514, 37.167660, 12.853387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.675987, 37.884220, 12.969238>,  <33.512138, 37.160221, 12.744107>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.675987, 37.884220, 12.969238> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.988918, 37.713089, 12.788164>,  <34.176678, 37.610409, 12.679520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.988918, 37.713089, 12.788164>,  <33.675987, 37.884220, 12.969238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.988918, 37.713089, 12.788164> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054009, 0.770635, -0.634984,
		0.620520, 0.472317, 0.625997,
		0.782329, -0.427830, -0.452685,
		34.223618, 37.584740, 12.652359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.161381, 38.431423, 12.963832>,  <33.675987, 37.884220, 12.969238>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.161381, 38.431423, 12.963832> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.292339, 38.162746, 12.698006>,  <34.370914, 38.001541, 12.538510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.292339, 38.162746, 12.698006>,  <34.161381, 38.431423, 12.963832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.292339, 38.162746, 12.698006> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159791, 0.732555, -0.661688,
		0.931279, 0.110442, 0.347164,
		0.327395, -0.671689, -0.664565,
		34.390556, 37.961239, 12.498636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.768349, 38.683823, 12.595894>,  <34.161381, 38.431423, 12.963832>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.768349, 38.683823, 12.595894> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.652863, 38.400124, 12.338642>,  <34.583572, 38.229904, 12.184291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.652863, 38.400124, 12.338642>,  <34.768349, 38.683823, 12.595894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.652863, 38.400124, 12.338642> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230150, 0.600623, -0.765691,
		0.929341, -0.369083, -0.010176,
		-0.288716, -0.709245, -0.643128,
		34.566246, 38.187351, 12.145703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.128082, 38.807507, 11.997873>,  <34.768349, 38.683823, 12.595894>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.128082, 38.807507, 11.997873> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.888802, 38.537098, 11.825755>,  <34.745235, 38.374855, 11.722485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.888802, 38.537098, 11.825755>,  <35.128082, 38.807507, 11.997873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.888802, 38.537098, 11.825755> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117833, 0.456924, -0.881666,
		0.792637, -0.578115, -0.193674,
		-0.598199, -0.676021, -0.430296,
		34.709343, 38.334293, 11.696667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.444332, 38.548241, 11.262982>,  <35.128082, 38.807507, 11.997873>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.444332, 38.548241, 11.262982> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.049244, 38.486732, 11.251985>,  <34.812191, 38.449825, 11.245386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.049244, 38.486732, 11.251985>,  <35.444332, 38.548241, 11.262982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.049244, 38.486732, 11.251985> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042455, 0.433629, -0.900091,
		0.150332, -0.887874, -0.434834,
		-0.987723, -0.153773, -0.027493,
		34.752926, 38.440601, 11.243736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.315403, 38.198265, 10.660504>,  <35.444332, 38.548241, 11.262982>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.315403, 38.198265, 10.660504> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.980865, 38.389359, 10.768055>,  <34.780144, 38.504013, 10.832585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.980865, 38.389359, 10.768055>,  <35.315403, 38.198265, 10.660504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.980865, 38.389359, 10.768055> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025276, 0.523556, -0.851616,
		-0.547618, -0.705450, -0.449949,
		-0.836346, 0.477734, 0.268877,
		34.729961, 38.532681, 10.848719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.918362, 38.299007, 10.034427>,  <35.315403, 38.198265, 10.660504>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.918362, 38.299007, 10.034427> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.742764, 38.545414, 10.296057>,  <34.637405, 38.693256, 10.453034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.742764, 38.545414, 10.296057>,  <34.918362, 38.299007, 10.034427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.742764, 38.545414, 10.296057> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195881, 0.644843, -0.738788,
		-0.876879, -0.452442, -0.162415,
		-0.438991, 0.616014, 0.654074,
		34.611065, 38.730217, 10.492279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.214779, 38.425812, 9.766633>,  <34.918362, 38.299007, 10.034427>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.214779, 38.425812, 9.766633> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.282520, 38.734715, 10.011562>,  <34.323166, 38.920055, 10.158520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.282520, 38.734715, 10.011562>,  <34.214779, 38.425812, 9.766633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.282520, 38.734715, 10.011562> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344301, 0.628509, -0.697447,
		-0.923459, -0.092710, 0.372328,
		0.169352, 0.772257, 0.612322,
		34.333324, 38.966393, 10.195259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.614998, 38.783672, 9.715302>,  <34.214779, 38.425812, 9.766633>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.614998, 38.783672, 9.715302> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.879143, 39.044556, 9.864191>,  <34.037628, 39.201084, 9.953525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.879143, 39.044556, 9.864191>,  <33.614998, 38.783672, 9.715302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.879143, 39.044556, 9.864191> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168176, 0.611522, -0.773148,
		-0.731875, 0.447957, 0.513510,
		0.660360, 0.652208, 0.372222,
		34.077251, 39.240219, 9.975858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.359486, 39.484406, 9.777406>,  <33.614998, 38.783672, 9.715302>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.359486, 39.484406, 9.777406> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.753353, 39.500187, 9.709431>,  <33.989674, 39.509655, 9.668646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.753353, 39.500187, 9.709431>,  <33.359486, 39.484406, 9.777406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.753353, 39.500187, 9.709431> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156487, 0.630324, -0.760397,
		0.077115, 0.775329, 0.626832,
		0.984665, 0.039453, -0.169937,
		34.048752, 39.512024, 9.658450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.086178, 39.784176, 9.133001>,  <33.359486, 39.484406, 9.777406>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.086178, 39.784176, 9.133001> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.120090, 39.764828, 8.734912>,  <33.140438, 39.753220, 8.496058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.120090, 39.764828, 8.734912>,  <33.086178, 39.784176, 9.133001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.120090, 39.764828, 8.734912> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.989221, -0.123761, -0.078260,
		-0.119384, 0.991133, -0.058339,
		0.084786, -0.048367, -0.995225,
		33.145527, 39.750317, 8.436344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.581875, 39.760696, 9.651216>,  <33.086178, 39.784176, 9.133001>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.581875, 39.760696, 9.651216> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.361858, 40.082863, 9.739535>,  <32.229847, 40.276165, 9.792527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.361858, 40.082863, 9.739535>,  <32.581875, 39.760696, 9.651216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.361858, 40.082863, 9.739535> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294376, -0.434404, 0.851256,
		0.781533, 0.403230, 0.476037,
		-0.550044, 0.805419, 0.220800,
		32.196846, 40.324490, 9.805776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.693493, 40.123299, 10.306105>,  <32.581875, 39.760696, 9.651216>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.693493, 40.123299, 10.306105> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.307980, 40.159542, 10.205779>,  <32.076672, 40.181290, 10.145584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.307980, 40.159542, 10.205779>,  <32.693493, 40.123299, 10.306105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.307980, 40.159542, 10.205779> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258205, -0.552282, 0.792663,
		-0.066695, 0.828718, 0.555678,
		-0.963785, 0.090612, -0.250814,
		32.018845, 40.186726, 10.130535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.427071, 40.429451, 10.898975>,  <32.693493, 40.123299, 10.306105>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.427071, 40.429451, 10.898975> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.146122, 40.248001, 10.679559>,  <31.977552, 40.139130, 10.547909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.146122, 40.248001, 10.679559>,  <32.427071, 40.429451, 10.898975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.146122, 40.248001, 10.679559> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303198, -0.506561, 0.807135,
		-0.644009, 0.733224, 0.218255,
		-0.702370, -0.453627, -0.548542,
		31.935411, 40.111912, 10.514997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.873920, 40.443390, 11.242729>,  <32.427071, 40.429451, 10.898975>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.873920, 40.443390, 11.242729> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.799721, 40.137493, 10.995906>,  <31.755201, 39.953957, 10.847812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.799721, 40.137493, 10.995906>,  <31.873920, 40.443390, 11.242729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.799721, 40.137493, 10.995906> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281447, -0.560299, 0.779007,
		-0.941476, 0.318175, -0.111298,
		-0.185501, -0.764741, -0.617058,
		31.744070, 39.908070, 10.810788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.178246, 40.095425, 11.471159>,  <31.873920, 40.443390, 11.242729>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.178246, 40.095425, 11.471159> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.317560, 39.794170, 11.247914>,  <31.401150, 39.613419, 11.113968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.317560, 39.794170, 11.247914>,  <31.178246, 40.095425, 11.471159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.317560, 39.794170, 11.247914> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191902, -0.640065, 0.743969,
		-0.917535, -0.152012, -0.367454,
		0.348286, -0.753133, -0.558111,
		31.422047, 39.568230, 11.080481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.680769, 39.558403, 11.496668>,  <31.178246, 40.095425, 11.471159>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.680769, 39.558403, 11.496668> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.012081, 39.363239, 11.386473>,  <31.210869, 39.246140, 11.320355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.012081, 39.363239, 11.386473>,  <30.680769, 39.558403, 11.496668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.012081, 39.363239, 11.386473> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236814, -0.750427, 0.617072,
		-0.507810, -0.445870, -0.737109,
		0.828280, -0.487913, -0.275487,
		31.260565, 39.216866, 11.303826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.484741, 38.789871, 11.553582>,  <30.680769, 39.558403, 11.496668>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.484741, 38.789871, 11.553582> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.881346, 38.840382, 11.565980>,  <31.119308, 38.870686, 11.573419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.881346, 38.840382, 11.565980>,  <30.484741, 38.789871, 11.553582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.881346, 38.840382, 11.565980> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062562, -0.672303, 0.737628,
		0.113981, -0.729427, -0.674496,
		0.991511, 0.126273, 0.030995,
		31.178799, 38.878265, 11.575278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.777380, 38.011570, 11.712973>,  <30.484741, 38.789871, 11.553582>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.777380, 38.011570, 11.712973> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.096857, 38.248566, 11.755023>,  <31.288544, 38.390762, 11.780253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.096857, 38.248566, 11.755023>,  <30.777380, 38.011570, 11.712973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.096857, 38.248566, 11.755023> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251235, -0.487084, 0.836439,
		0.546784, -0.641646, -0.537883,
		0.798692, 0.592486, 0.105126,
		31.336464, 38.426311, 11.786561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.304789, 37.592937, 11.820392>,  <30.777380, 38.011570, 11.712973>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.304789, 37.592937, 11.820392> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.432539, 37.946186, 11.957848>,  <31.509190, 38.158134, 12.040321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.432539, 37.946186, 11.957848>,  <31.304789, 37.592937, 11.820392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.432539, 37.946186, 11.957848> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379699, -0.451507, 0.807447,
		0.868232, -0.127401, -0.479523,
		0.319377, 0.883126, 0.343639,
		31.528353, 38.211124, 12.060939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.084377, 37.590782, 11.914593>,  <31.304789, 37.592937, 11.820392>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.084377, 37.590782, 11.914593> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.932512, 37.875454, 12.151021>,  <31.841394, 38.046257, 12.292878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.932512, 37.875454, 12.151021>,  <32.084377, 37.590782, 11.914593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.932512, 37.875454, 12.151021> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503496, -0.377041, 0.777388,
		0.776112, 0.592745, -0.215182,
		-0.379660, 0.711683, 0.591071,
		31.818615, 38.088959, 12.328342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.673489, 37.730923, 12.437553>,  <32.084377, 37.590782, 11.914593>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.673489, 37.730923, 12.437553> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.344284, 37.870224, 12.617049>,  <32.146759, 37.953804, 12.724747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.344284, 37.870224, 12.617049>,  <32.673489, 37.730923, 12.437553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.344284, 37.870224, 12.617049> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299354, -0.405471, 0.863702,
		0.482735, 0.845172, 0.229459,
		-0.823016, 0.348249, 0.448740,
		32.097378, 37.974697, 12.751671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.862442, 37.891407, 13.128621>,  <32.673489, 37.730923, 12.437553>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.862442, 37.891407, 13.128621> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.463684, 37.896980, 13.159616>,  <32.224430, 37.900326, 13.178212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.463684, 37.896980, 13.159616>,  <32.862442, 37.891407, 13.128621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.463684, 37.896980, 13.159616> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068684, -0.327118, 0.942484,
		0.038484, 0.944881, 0.325146,
		-0.996896, 0.013938, 0.077487,
		32.164616, 37.901161, 13.182861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.692368, 38.222790, 13.819600>,  <32.862442, 37.891407, 13.128621>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.692368, 38.222790, 13.819600> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.379845, 37.995255, 13.716855>,  <32.192329, 37.858734, 13.655208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.379845, 37.995255, 13.716855>,  <32.692368, 38.222790, 13.819600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.379845, 37.995255, 13.716855> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068910, -0.487648, 0.870316,
		-0.620327, 0.662287, 0.420203,
		-0.781310, -0.568837, -0.256863,
		32.145451, 37.824604, 13.639796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.279514, 38.265041, 14.362271>,  <32.692368, 38.222790, 13.819600>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.279514, 38.265041, 14.362271> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.177315, 37.927151, 14.174160>,  <32.115993, 37.724419, 14.061293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.177315, 37.927151, 14.174160>,  <32.279514, 38.265041, 14.362271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.177315, 37.927151, 14.174160> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153591, -0.444782, 0.882371,
		-0.954532, 0.297675, -0.016102,
		-0.255498, -0.844724, -0.470279,
		32.100666, 37.673733, 14.033076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.931345, 37.938972, 14.864746>,  <32.279514, 38.265041, 14.362271>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.931345, 37.938972, 14.864746> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.980015, 37.653397, 14.588926>,  <32.009216, 37.482052, 14.423434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.980015, 37.653397, 14.588926>,  <31.931345, 37.938972, 14.864746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.980015, 37.653397, 14.588926> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185769, -0.698816, 0.690758,
		-0.975031, 0.044051, -0.217655,
		0.121672, -0.713944, -0.689551,
		32.016518, 37.439213, 14.382061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.329021, 37.612545, 14.895269>,  <31.931345, 37.938972, 14.864746>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.329021, 37.612545, 14.895269> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.619797, 37.377892, 14.752488>,  <31.794262, 37.237099, 14.666820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.619797, 37.377892, 14.752488>,  <31.329021, 37.612545, 14.895269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.619797, 37.377892, 14.752488> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083952, -0.591831, 0.801679,
		-0.681550, -0.552805, -0.479474,
		0.726940, -0.586637, -0.356953,
		31.837879, 37.201900, 14.645402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.091990, 36.905842, 14.788683>,  <31.329021, 37.612545, 14.895269>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.091990, 36.905842, 14.788683> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.490356, 36.884785, 14.818028>,  <31.729376, 36.872150, 14.835635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.490356, 36.884785, 14.818028>,  <31.091990, 36.905842, 14.788683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.490356, 36.884785, 14.818028> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090108, -0.527057, 0.845040,
		-0.005817, -0.848198, -0.529647,
		0.995915, -0.052641, 0.073363,
		31.789131, 36.868992, 14.840037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.194731, 36.152554, 14.865084>,  <31.091990, 36.905842, 14.788683>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.194731, 36.152554, 14.865084> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.486614, 36.377499, 15.020660>,  <31.661743, 36.512466, 15.114007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.486614, 36.377499, 15.020660>,  <31.194731, 36.152554, 14.865084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.486614, 36.377499, 15.020660> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037989, -0.601295, 0.798124,
		0.682703, -0.567622, -0.460133,
		0.729708, 0.562362, 0.388943,
		31.705526, 36.546207, 15.137343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.466629, 35.700951, 15.270138>,  <31.194731, 36.152554, 14.865084>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.466629, 35.700951, 15.270138> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.662281, 36.024387, 15.400943>,  <31.779673, 36.218449, 15.479426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.662281, 36.024387, 15.400943>,  <31.466629, 35.700951, 15.270138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.662281, 36.024387, 15.400943> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039658, -0.395154, 0.917758,
		0.871309, -0.435934, -0.225348,
		0.489130, 0.808588, 0.327013,
		31.809019, 36.266964, 15.499046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.100002, 35.568722, 15.628893>,  <31.466629, 35.700951, 15.270138>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.100002, 35.568722, 15.628893> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.982126, 35.922840, 15.772784>,  <31.911402, 36.135311, 15.859119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.982126, 35.922840, 15.772784>,  <32.100002, 35.568722, 15.628893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.982126, 35.922840, 15.772784> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186606, -0.315885, 0.930266,
		0.937197, 0.341265, -0.072115,
		-0.294687, 0.885299, 0.359729,
		31.893721, 36.188431, 15.880703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<36.570129, 34.599342, 19.765560> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.211899, 34.748837, 19.862108>,  <35.996960, 34.838531, 19.920036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.211899, 34.748837, 19.862108>,  <36.570129, 34.599342, 19.765560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.211899, 34.748837, 19.862108> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251137, -0.023160, 0.967674,
		0.367240, 0.927248, -0.073116,
		-0.895581, 0.373731, 0.241371,
		35.943226, 34.860954, 19.934519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.733097, 35.161491, 20.292759>,  <36.570129, 34.599342, 19.765560>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.733097, 35.161491, 20.292759> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.348434, 35.059238, 20.332508>,  <36.117638, 34.997887, 20.356358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.348434, 35.059238, 20.332508>,  <36.733097, 35.161491, 20.292759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.348434, 35.059238, 20.332508> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100671, 0.008041, 0.994887,
		-0.255126, 0.966740, 0.018002,
		-0.961653, -0.255634, 0.099374,
		36.059940, 34.982548, 20.362320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.436367, 35.660511, 20.694916>,  <36.733097, 35.161491, 20.292759>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.436367, 35.660511, 20.694916> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.212532, 35.331150, 20.732594>,  <36.078232, 35.133533, 20.755201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.212532, 35.331150, 20.732594>,  <36.436367, 35.660511, 20.694916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.212532, 35.331150, 20.732594> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181357, -0.010757, 0.983358,
		-0.808686, 0.567357, 0.155349,
		-0.559586, -0.823402, 0.094196,
		36.044655, 35.084129, 20.760853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.100376, 35.725670, 21.401306>,  <36.436367, 35.660511, 20.694916>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.100376, 35.725670, 21.401306> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.053234, 35.344643, 21.289070>,  <36.024948, 35.116028, 21.221729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.053234, 35.344643, 21.289070>,  <36.100376, 35.725670, 21.401306>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.053234, 35.344643, 21.289070> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203662, -0.299739, 0.932029,
		-0.971921, 0.052703, 0.229328,
		-0.117859, -0.952564, -0.280589,
		36.017876, 35.058872, 21.204893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.654518, 35.483734, 21.818068>,  <36.100376, 35.725670, 21.401306>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.654518, 35.483734, 21.818068> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.850529, 35.160725, 21.686749>,  <35.968136, 34.966919, 21.607958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.850529, 35.160725, 21.686749>,  <35.654518, 35.483734, 21.818068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.850529, 35.160725, 21.686749> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245075, -0.233799, 0.940891,
		-0.836549, -0.541518, 0.083337,
		0.490025, -0.807525, -0.328297,
		35.997536, 34.918468, 21.588259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.391632, 34.912025, 22.166367>,  <35.654518, 35.483734, 21.818068>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.391632, 34.912025, 22.166367> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.758083, 34.826527, 22.030710>,  <35.977955, 34.775227, 21.949316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.758083, 34.826527, 22.030710>,  <35.391632, 34.912025, 22.166367>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.758083, 34.826527, 22.030710> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251789, -0.351495, 0.901695,
		-0.311941, -0.911462, -0.268196,
		0.916130, -0.213747, -0.339142,
		36.032921, 34.762402, 21.928968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.466736, 34.292336, 22.381426>,  <35.391632, 34.912025, 22.166367>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.466736, 34.292336, 22.381426> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.844917, 34.384995, 22.289818>,  <36.071827, 34.440590, 22.234852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.844917, 34.384995, 22.289818>,  <35.466736, 34.292336, 22.381426>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.844917, 34.384995, 22.289818> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291026, -0.284814, 0.913337,
		0.146348, -0.930171, -0.336695,
		0.945456, 0.231652, -0.229022,
		36.128555, 34.454491, 22.221111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.840118, 33.753429, 22.584961>,  <35.466736, 34.292336, 22.381426>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.840118, 33.753429, 22.584961> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.102654, 34.054966, 22.572674>,  <36.260174, 34.235889, 22.565302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.102654, 34.054966, 22.572674>,  <35.840118, 33.753429, 22.584961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.102654, 34.054966, 22.572674> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456924, -0.364763, 0.811276,
		0.600372, -0.546503, -0.583856,
		0.656333, 0.753845, -0.030716,
		36.299553, 34.281120, 22.563459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.566368, 33.471828, 22.704014>,  <35.840118, 33.753429, 22.584961>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.566368, 33.471828, 22.704014> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.576351, 33.859306, 22.802814>,  <36.582340, 34.091793, 22.862095>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.576351, 33.859306, 22.802814>,  <36.566368, 33.471828, 22.704014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.576351, 33.859306, 22.802814> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368013, -0.238629, 0.898678,
		0.929486, 0.068474, -0.362447,
		0.024954, 0.968694, 0.247001,
		36.583836, 34.149914, 22.876915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.154785, 33.548439, 23.081753>,  <36.566368, 33.471828, 22.704014>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.154785, 33.548439, 23.081753> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.993065, 33.898327, 23.188644>,  <36.896034, 34.108261, 23.252779>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.993065, 33.898327, 23.188644>,  <37.154785, 33.548439, 23.081753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.993065, 33.898327, 23.188644> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237722, -0.181633, 0.954200,
		0.883195, 0.449305, -0.134506,
		-0.404296, 0.874720, 0.267227,
		36.871777, 34.160744, 23.268812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.654373, 33.906456, 23.519258>,  <37.154785, 33.548439, 23.081753>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.654373, 33.906456, 23.519258> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.301136, 34.077839, 23.595753>,  <37.089195, 34.180668, 23.641649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.301136, 34.077839, 23.595753>,  <37.654373, 33.906456, 23.519258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.301136, 34.077839, 23.595753> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120079, -0.187625, 0.974873,
		0.453574, 0.883866, 0.114241,
		-0.883092, 0.428459, 0.191235,
		37.036209, 34.206375, 23.653124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.820103, 34.430210, 24.049879>,  <37.654373, 33.906456, 23.519258>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.820103, 34.430210, 24.049879> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.433323, 34.329800, 24.067772>,  <37.201256, 34.269554, 24.078508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.433323, 34.329800, 24.067772>,  <37.820103, 34.430210, 24.049879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.433323, 34.329800, 24.067772> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105048, -0.232335, 0.966946,
		-0.232335, 0.939684, 0.251026,
		-0.966946, -0.251026, 0.044732,
		37.143238, 34.254494, 24.081192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.576668, 34.734970, 24.651886>,  <37.820103, 34.430210, 24.049879>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.576668, 34.734970, 24.651886> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.310768, 34.442829, 24.589043>,  <37.151226, 34.267544, 24.551336>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.310768, 34.442829, 24.589043>,  <37.576668, 34.734970, 24.651886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.310768, 34.442829, 24.589043> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147407, -0.334401, 0.930831,
		-0.732375, 0.595615, 0.329954,
		-0.664754, -0.730356, -0.157109,
		37.111343, 34.223724, 24.541910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.549686, 35.083641, 25.354097>,  <37.576668, 34.734970, 24.651886>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.549686, 35.083641, 25.354097> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.644329, 35.462345, 25.441422>,  <37.701115, 35.689568, 25.493816>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.644329, 35.462345, 25.441422>,  <37.549686, 35.083641, 25.354097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.644329, 35.462345, 25.441422> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216097, 0.270339, -0.938200,
		-0.947270, 0.174805, 0.268555,
		0.236603, 0.946763, 0.218309,
		37.715309, 35.746372, 25.506914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.034397, 35.545292, 25.109056>,  <37.549686, 35.083641, 25.354097>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.034397, 35.545292, 25.109056> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.306374, 35.832565, 25.168245>,  <37.469559, 36.004929, 25.203758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.306374, 35.832565, 25.168245>,  <37.034397, 35.545292, 25.109056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.306374, 35.832565, 25.168245> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276522, 0.438034, -0.855372,
		-0.679132, 0.540682, 0.496430,
		0.679938, 0.718185, 0.147972,
		37.510353, 36.048019, 25.212637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.769245, 36.029175, 24.850176>,  <37.034397, 35.545292, 25.109056>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.769245, 36.029175, 24.850176> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.125130, 36.211472, 24.860847>,  <37.338661, 36.320850, 24.867250>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.125130, 36.211472, 24.860847>,  <36.769245, 36.029175, 24.850176>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.125130, 36.211472, 24.860847> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225645, 0.489806, -0.842125,
		-0.396862, 0.743228, 0.538622,
		0.889711, 0.455745, 0.026680,
		37.392044, 36.348194, 24.868851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.778744, 36.887905, 24.884588>,  <36.769245, 36.029175, 24.850176>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.778744, 36.887905, 24.884588> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.108807, 36.754967, 24.701872>,  <37.306847, 36.675201, 24.592243>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.108807, 36.754967, 24.701872>,  <36.778744, 36.887905, 24.884588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.108807, 36.754967, 24.701872> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241919, 0.522813, -0.817400,
		0.510478, 0.784991, 0.351002,
		0.825159, -0.332350, -0.456789,
		37.356354, 36.655262, 24.564835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.150543, 37.479710, 24.681475>,  <36.778744, 36.887905, 24.884588>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.150543, 37.479710, 24.681475> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.299015, 37.186241, 24.453804>,  <37.388096, 37.010162, 24.317202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.299015, 37.186241, 24.453804>,  <37.150543, 37.479710, 24.681475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.299015, 37.186241, 24.453804> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196645, 0.536954, -0.820373,
		0.907502, 0.416428, 0.055032,
		0.371176, -0.733668, -0.569175,
		37.410366, 36.966141, 24.283052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.462055, 37.834946, 24.227715>,  <37.150543, 37.479710, 24.681475>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.462055, 37.834946, 24.227715> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.395607, 37.487961, 24.040134>,  <37.355740, 37.279770, 23.927586>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.395607, 37.487961, 24.040134>,  <37.462055, 37.834946, 24.227715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.395607, 37.487961, 24.040134> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158949, 0.492894, -0.855448,
		0.973211, -0.067568, -0.219762,
		-0.166120, -0.867462, -0.468950,
		37.345772, 37.227722, 23.899450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.787926, 37.904854, 23.601564>,  <37.462055, 37.834946, 24.227715>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.787926, 37.904854, 23.601564> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.542130, 37.593266, 23.551588>,  <37.394653, 37.406311, 23.521603>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.542130, 37.593266, 23.551588>,  <37.787926, 37.904854, 23.601564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.542130, 37.593266, 23.551588> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151019, 0.271580, -0.950493,
		0.774338, -0.565198, -0.284522,
		-0.614487, -0.778971, -0.124939,
		37.357784, 37.359573, 23.514107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.958809, 37.578697, 22.947227>,  <37.787926, 37.904854, 23.601564>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.958809, 37.578697, 22.947227> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.574856, 37.482742, 23.005299>,  <37.344482, 37.425167, 23.040142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.574856, 37.482742, 23.005299>,  <37.958809, 37.578697, 22.947227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.574856, 37.482742, 23.005299> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218185, 0.313784, -0.924086,
		0.176123, -0.918691, -0.353536,
		-0.959883, -0.239889, 0.145180,
		37.286892, 37.410774, 23.048853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.909409, 37.209957, 22.375387>,  <37.958809, 37.578697, 22.947227>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.909409, 37.209957, 22.375387> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.541676, 37.306717, 22.499527>,  <37.321037, 37.364773, 22.574011>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.541676, 37.306717, 22.499527>,  <37.909409, 37.209957, 22.375387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.541676, 37.306717, 22.499527> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221758, 0.333020, -0.916472,
		-0.325048, -0.911363, -0.252512,
		-0.919330, 0.241901, 0.310349,
		37.265877, 37.379288, 22.592632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.484901, 37.078205, 21.887320>,  <37.909409, 37.209957, 22.375387>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.484901, 37.078205, 21.887320> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.249130, 37.337002, 22.080805>,  <37.107666, 37.492279, 22.196896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.249130, 37.337002, 22.080805>,  <37.484901, 37.078205, 21.887320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.249130, 37.337002, 22.080805> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416165, 0.270010, -0.868275,
		-0.692370, -0.713093, 0.110101,
		-0.589432, 0.646988, 0.483711,
		37.072300, 37.531097, 22.225918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.015629, 36.894238, 21.468893>,  <37.484901, 37.078205, 21.887320>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.015629, 36.894238, 21.468893> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.920265, 37.236851, 21.651981>,  <36.863049, 37.442421, 21.761833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.920265, 37.236851, 21.651981>,  <37.015629, 36.894238, 21.468893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.920265, 37.236851, 21.651981> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523031, 0.283877, -0.803650,
		-0.818291, -0.430998, 0.380316,
		-0.238409, 0.856536, 0.457719,
		36.848743, 37.493813, 21.789297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.245312, 36.892677, 21.643864>,  <37.015629, 36.894238, 21.468893>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.245312, 36.892677, 21.643864> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.316769, 37.286236, 21.641375>,  <36.359642, 37.522369, 21.639881>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.316769, 37.286236, 21.641375>,  <36.245312, 36.892677, 21.643864>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.316769, 37.286236, 21.641375> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666939, 0.116440, -0.735958,
		-0.723379, 0.135627, 0.676999,
		0.178645, 0.983894, -0.006225,
		36.370361, 37.581406, 21.639507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.556881, 37.239735, 21.615860>,  <36.245312, 36.892677, 21.643864>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.556881, 37.239735, 21.615860> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.820915, 37.511196, 21.487043>,  <35.979336, 37.674072, 21.409754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.820915, 37.511196, 21.487043>,  <35.556881, 37.239735, 21.615860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.820915, 37.511196, 21.487043> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534691, 0.123359, -0.835995,
		-0.527627, 0.724022, 0.444299,
		0.660087, 0.678657, -0.322041,
		36.018940, 37.714794, 21.390430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.155724, 37.842392, 21.470991>,  <35.556881, 37.239735, 21.615860>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.155724, 37.842392, 21.470991> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.492451, 37.865376, 21.256315>,  <35.694489, 37.879166, 21.127510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.492451, 37.865376, 21.256315>,  <35.155724, 37.842392, 21.470991>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.492451, 37.865376, 21.256315> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526027, 0.310157, -0.791895,
		0.120960, 0.948948, 0.291320,
		0.841822, 0.057455, -0.536689,
		35.744999, 37.882610, 21.095308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.148037, 38.513756, 21.201782>,  <35.155724, 37.842392, 21.470991>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.148037, 38.513756, 21.201782> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.405491, 38.312355, 20.971228>,  <35.559963, 38.191517, 20.832895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.405491, 38.312355, 20.971228>,  <35.148037, 38.513756, 21.201782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.405491, 38.312355, 20.971228> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452429, 0.357114, -0.817176,
		0.617281, 0.786740, 0.002055,
		0.643639, -0.503498, -0.576384,
		35.598583, 38.161304, 20.798313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.803017, 39.004269, 21.665375>,  <35.148037, 38.513756, 21.201782>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.803017, 39.004269, 21.665375> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.527508, 39.294178, 21.672367>,  <34.362202, 39.468124, 21.676563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.527508, 39.294178, 21.672367>,  <34.803017, 39.004269, 21.665375>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.527508, 39.294178, 21.672367> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176951, -0.191448, 0.965420,
		0.703053, 0.661860, 0.260112,
		-0.688770, 0.724769, 0.017481,
		34.320877, 39.511608, 21.677612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.888874, 39.397831, 22.261417>,  <34.803017, 39.004269, 21.665375>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.888874, 39.397831, 22.261417> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.514759, 39.485649, 22.150396>,  <34.290291, 39.538342, 22.083782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.514759, 39.485649, 22.150396>,  <34.888874, 39.397831, 22.261417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.514759, 39.485649, 22.150396> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314392, -0.155412, 0.936485,
		0.162467, 0.963144, 0.214379,
		-0.935287, 0.219547, -0.277555,
		34.234173, 39.551514, 22.067129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.670918, 39.858624, 22.793102>,  <34.888874, 39.397831, 22.261417>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.670918, 39.858624, 22.793102> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.356220, 39.711182, 22.595045>,  <34.167400, 39.622719, 22.476210>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.356220, 39.711182, 22.595045>,  <34.670918, 39.858624, 22.793102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.356220, 39.711182, 22.595045> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393660, -0.318250, 0.862409,
		-0.475464, 0.873413, 0.105277,
		-0.786744, -0.368601, -0.495144,
		34.120197, 39.600601, 22.446503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.030495, 40.177433, 23.093500>,  <34.670918, 39.858624, 22.793102>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.030495, 40.177433, 23.093500> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.951958, 39.823750, 22.923973>,  <33.904835, 39.611538, 22.822258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.951958, 39.823750, 22.923973>,  <34.030495, 40.177433, 23.093500>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.951958, 39.823750, 22.923973> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277161, -0.364556, 0.888977,
		-0.940549, 0.292008, -0.173491,
		-0.196341, -0.884212, -0.423816,
		33.893055, 39.558487, 22.796829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.683521, 39.832840, 23.608509>,  <34.030495, 40.177433, 23.093500>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.683521, 39.832840, 23.608509> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.744953, 39.546299, 23.336260>,  <33.781815, 39.374374, 23.172911>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.744953, 39.546299, 23.336260>,  <33.683521, 39.832840, 23.608509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.744953, 39.546299, 23.336260> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197617, -0.697148, 0.689154,
		-0.968174, 0.028660, -0.248634,
		0.153583, -0.716355, -0.680624,
		33.791027, 39.331394, 23.132072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.093555, 39.441429, 23.608515>,  <33.683521, 39.832840, 23.608509>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.093555, 39.441429, 23.608515> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.374203, 39.215176, 23.435173>,  <33.542591, 39.079422, 23.331167>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.374203, 39.215176, 23.435173>,  <33.093555, 39.441429, 23.608515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.374203, 39.215176, 23.435173> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352230, -0.803979, 0.479116,
		-0.619413, -0.183513, -0.763315,
		0.701614, -0.565633, -0.433356,
		33.584686, 39.045486, 23.305166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.757309, 38.822918, 23.224808>,  <33.093555, 39.441429, 23.608515>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.757309, 38.822918, 23.224808> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.122765, 38.664742, 23.262516>,  <33.342037, 38.569836, 23.285141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.122765, 38.664742, 23.262516>,  <32.757309, 38.822918, 23.224808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.122765, 38.664742, 23.262516> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403614, -0.854709, 0.326448,
		-0.048516, -0.336306, -0.940502,
		0.913642, -0.395438, 0.094271,
		33.396858, 38.546108, 23.290796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.753716, 38.157715, 22.851288>,  <32.757309, 38.822918, 23.224808>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.753716, 38.157715, 22.851288> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.077003, 38.135704, 23.085808>,  <33.270977, 38.122498, 23.226519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.077003, 38.135704, 23.085808>,  <32.753716, 38.157715, 22.851288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.077003, 38.135704, 23.085808> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250841, -0.932950, 0.258231,
		0.532777, -0.355776, -0.767836,
		0.808225, -0.055025, 0.586298,
		33.319469, 38.119198, 23.261698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.133503, 37.570141, 22.607336>,  <32.753716, 38.157715, 22.851288>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.133503, 37.570141, 22.607336> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.259491, 37.640282, 22.980442>,  <33.335083, 37.682365, 23.204306>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.259491, 37.640282, 22.980442>,  <33.133503, 37.570141, 22.607336>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.259491, 37.640282, 22.980442> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204434, -0.947181, 0.247091,
		0.926824, -0.268514, -0.262483,
		0.314967, 0.175350, 0.932764,
		33.353981, 37.692886, 23.260271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.574425, 37.027760, 22.839567>,  <33.133503, 37.570141, 22.607336>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.574425, 37.027760, 22.839567> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.426022, 37.195854, 23.170809>,  <33.336979, 37.296711, 23.369555>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.426022, 37.195854, 23.170809>,  <33.574425, 37.027760, 22.839567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.426022, 37.195854, 23.170809> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392623, -0.879108, 0.270215,
		0.841547, -0.224881, 0.491148,
		-0.371006, 0.420235, 0.828105,
		33.314720, 37.321926, 23.419241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.833580, 36.594765, 23.430649>,  <33.574425, 37.027760, 22.839567>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.833580, 36.594765, 23.430649> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.532631, 36.788727, 23.608999>,  <33.352062, 36.905106, 23.716009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.532631, 36.788727, 23.608999>,  <33.833580, 36.594765, 23.430649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.532631, 36.788727, 23.608999> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362358, -0.869904, 0.334608,
		0.550124, 0.090182, 0.830199,
		-0.752370, 0.484906, 0.445877,
		33.306919, 36.934200, 23.742762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.828720, 36.449192, 24.176123>,  <33.833580, 36.594765, 23.430649>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.828720, 36.449192, 24.176123> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.457699, 36.524200, 24.046825>,  <33.235088, 36.569206, 23.969246>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.457699, 36.524200, 24.046825>,  <33.828720, 36.449192, 24.176123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.457699, 36.524200, 24.046825> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249764, -0.954493, 0.162974,
		-0.277973, 0.231901, 0.932176,
		-0.927550, 0.187521, -0.323244,
		33.179436, 36.580456, 23.949852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<35.779625, 41.938847, 18.800018> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.408653, 41.813168, 18.718882>,  <35.186069, 41.737759, 18.670200>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.408653, 41.813168, 18.718882>,  <35.779625, 41.938847, 18.800018>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.408653, 41.813168, 18.718882> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043883, -0.447199, 0.893357,
		-0.371404, 0.837431, 0.400959,
		-0.927434, -0.314201, -0.202841,
		35.130424, 41.718906, 18.658030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.343372, 42.136971, 19.344940>,  <35.779625, 41.938847, 18.800018>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.343372, 42.136971, 19.344940> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.136375, 41.833416, 19.186804>,  <35.012177, 41.651283, 19.091923>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.136375, 41.833416, 19.186804>,  <35.343372, 42.136971, 19.344940>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.136375, 41.833416, 19.186804> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080416, -0.416837, 0.905417,
		-0.851901, 0.500338, 0.154684,
		-0.517493, -0.758886, -0.395339,
		34.981129, 41.605751, 19.068203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.076969, 41.936653, 19.863962>,  <35.343372, 42.136971, 19.344940>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.076969, 41.936653, 19.863962> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.968349, 41.624298, 19.638935>,  <34.903179, 41.436886, 19.503920>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.968349, 41.624298, 19.638935>,  <35.076969, 41.936653, 19.863962>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.968349, 41.624298, 19.638935> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159240, -0.540021, 0.826450,
		-0.949160, 0.314004, 0.022294,
		-0.271548, -0.780883, -0.562568,
		34.886887, 41.390034, 19.470165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.401859, 41.723270, 20.108202>,  <35.076969, 41.936653, 19.863962>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.401859, 41.723270, 20.108202> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.509674, 41.395851, 19.905294>,  <34.574364, 41.199398, 19.783550>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.509674, 41.395851, 19.905294>,  <34.401859, 41.723270, 20.108202>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.509674, 41.395851, 19.905294> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180695, -0.560399, 0.808271,
		-0.945884, -0.126201, -0.298958,
		0.269540, -0.818552, -0.507269,
		34.590538, 41.150284, 19.753115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.874020, 41.211407, 20.051754>,  <34.401859, 41.723270, 20.108202>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.874020, 41.211407, 20.051754> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.202702, 40.986778, 20.012909>,  <34.399910, 40.852001, 19.989603>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.202702, 40.986778, 20.012909>,  <33.874020, 41.211407, 20.051754>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.202702, 40.986778, 20.012909> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360471, -0.644119, 0.674664,
		-0.441423, -0.519373, -0.731709,
		0.821710, -0.561572, -0.097110,
		34.449215, 40.818306, 19.983776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.539959, 40.501041, 20.015274>,  <33.874020, 41.211407, 20.051754>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.539959, 40.501041, 20.015274> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.931168, 40.469761, 20.092588>,  <34.165894, 40.450993, 20.138977>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.931168, 40.469761, 20.092588>,  <33.539959, 40.501041, 20.015274>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.931168, 40.469761, 20.092588> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205043, -0.528948, 0.823512,
		0.037841, -0.845044, -0.533356,
		0.978021, -0.078198, 0.193286,
		34.224575, 40.446301, 20.150574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.621120, 39.814297, 20.360682>,  <33.539959, 40.501041, 20.015274>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.621120, 39.814297, 20.360682> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.975021, 39.978794, 20.448404>,  <34.187363, 40.077492, 20.501038>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.975021, 39.978794, 20.448404>,  <33.621120, 39.814297, 20.360682>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.975021, 39.978794, 20.448404> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020163, -0.503876, 0.863540,
		0.465632, -0.759595, -0.454096,
		0.884749, 0.411248, 0.219305,
		34.240448, 40.102169, 20.514196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.083050, 39.205116, 20.442547>,  <33.621120, 39.814297, 20.360682>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.083050, 39.205116, 20.442547> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.234631, 39.514660, 20.645538>,  <34.325581, 39.700386, 20.767334>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.234631, 39.514660, 20.645538>,  <34.083050, 39.205116, 20.442547>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.234631, 39.514660, 20.645538> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148358, -0.490485, 0.858729,
		0.913445, -0.400709, -0.071064,
		0.378956, 0.773859, 0.507479,
		34.348316, 39.746819, 20.797783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.377960, 38.962040, 21.052549>,  <34.083050, 39.205116, 20.442547>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.377960, 38.962040, 21.052549> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.347523, 39.346958, 21.157001>,  <34.329262, 39.577911, 21.219673>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.347523, 39.346958, 21.157001>,  <34.377960, 38.962040, 21.052549>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.347523, 39.346958, 21.157001> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297115, -0.271874, 0.915318,
		0.951805, -0.007936, 0.306602,
		-0.076093, 0.962300, 0.261129,
		34.324696, 39.635647, 21.235340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.017540, 38.914650, 20.537224>,  <34.377960, 38.962040, 21.052549>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.017540, 38.914650, 20.537224> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.268879, 38.624596, 20.424540>,  <35.419682, 38.450565, 20.356928>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.268879, 38.624596, 20.424540>,  <35.017540, 38.914650, 20.537224>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.268879, 38.624596, 20.424540> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191997, 0.206373, -0.959451,
		0.753867, 0.656957, -0.009549,
		0.628348, -0.725132, -0.281712,
		35.457382, 38.407055, 20.340027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.593193, 39.130371, 20.033436>,  <35.017540, 38.914650, 20.537224>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.593193, 39.130371, 20.033436> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.550270, 38.736347, 19.979555>,  <35.524517, 38.499931, 19.947227>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.550270, 38.736347, 19.979555>,  <35.593193, 39.130371, 20.033436>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.550270, 38.736347, 19.979555> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183204, 0.152752, -0.971135,
		0.977201, -0.079528, -0.196857,
		-0.107303, -0.985059, -0.134700,
		35.518078, 38.440830, 19.939146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.967201, 39.039585, 19.460590>,  <35.593193, 39.130371, 20.033436>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.967201, 39.039585, 19.460590> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.715839, 38.728504, 19.467283>,  <35.565022, 38.541855, 19.471298>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.715839, 38.728504, 19.467283>,  <35.967201, 39.039585, 19.460590>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.715839, 38.728504, 19.467283> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223617, 0.160003, -0.961454,
		0.745049, -0.607927, -0.274456,
		-0.628408, -0.777704, 0.016733,
		35.527317, 38.495193, 19.472303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.166885, 38.538689, 18.990385>,  <35.967201, 39.039585, 19.460590>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.166885, 38.538689, 18.990385> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.780602, 38.441380, 19.026665>,  <35.548832, 38.382996, 19.048433>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.780602, 38.441380, 19.026665>,  <36.166885, 38.538689, 18.990385>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.780602, 38.441380, 19.026665> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106393, 0.052133, -0.992957,
		0.236830, -0.968556, -0.076228,
		-0.965708, -0.243272, 0.090700,
		35.490891, 38.368397, 19.053875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.894848, 37.968838, 18.479460>,  <36.166885, 38.538689, 18.990385>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.894848, 37.968838, 18.479460> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.553745, 38.140591, 18.598412>,  <35.349083, 38.243645, 18.669783>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.553745, 38.140591, 18.598412>,  <35.894848, 37.968838, 18.479460>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.553745, 38.140591, 18.598412> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220858, 0.219512, -0.950282,
		-0.473315, -0.876038, -0.092357,
		-0.852757, 0.429385, 0.297378,
		35.297916, 38.269405, 18.687626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.445286, 37.665070, 18.003914>,  <35.894848, 37.968838, 18.479460>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.445286, 37.665070, 18.003914> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.297993, 38.000149, 18.165243>,  <35.209618, 38.201195, 18.262041>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.297993, 38.000149, 18.165243>,  <35.445286, 37.665070, 18.003914>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.297993, 38.000149, 18.165243> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181505, 0.360688, -0.914855,
		-0.911843, -0.410089, 0.019227,
		-0.368237, 0.837694, 0.403324,
		35.187523, 38.251457, 18.286240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.679489, 37.792252, 17.904602>,  <35.445286, 37.665070, 18.003914>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.679489, 37.792252, 17.904602> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.828415, 38.158028, 17.968084>,  <34.917770, 38.377491, 18.006174>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.828415, 38.158028, 17.968084>,  <34.679489, 37.792252, 17.904602>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.828415, 38.158028, 17.968084> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295569, 0.278919, -0.913697,
		-0.879785, 0.293274, 0.374125,
		0.372315, 0.914437, 0.158706,
		34.940109, 38.432358, 18.015696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.277874, 38.230698, 17.349079>,  <34.679489, 37.792252, 17.904602>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.277874, 38.230698, 17.349079> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.565456, 38.459873, 17.506479>,  <34.738007, 38.597378, 17.600920>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.565456, 38.459873, 17.506479>,  <34.277874, 38.230698, 17.349079>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.565456, 38.459873, 17.506479> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123097, 0.452232, -0.883365,
		-0.684070, 0.683538, 0.254607,
		0.718955, 0.572942, 0.393499,
		34.781143, 38.631756, 17.624529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.087807, 38.939163, 17.156719>,  <34.277874, 38.230698, 17.349079>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.087807, 38.939163, 17.156719> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.482510, 38.970543, 17.213501>,  <34.719334, 38.989372, 17.247570>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.482510, 38.970543, 17.213501>,  <34.087807, 38.939163, 17.156719>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.482510, 38.970543, 17.213501> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074491, 0.558241, -0.826328,
		-0.144070, 0.825962, 0.545006,
		0.986760, 0.078451, 0.141953,
		34.778538, 38.994080, 17.256086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.339661, 39.591694, 17.007217>,  <34.087807, 38.939163, 17.156719>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.339661, 39.591694, 17.007217> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.680889, 39.384846, 16.979345>,  <34.885628, 39.260738, 16.962622>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.680889, 39.384846, 16.979345>,  <34.339661, 39.591694, 17.007217>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.680889, 39.384846, 16.979345> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289933, 0.580795, -0.760668,
		0.433824, 0.628704, 0.645390,
		0.853074, -0.517116, -0.069681,
		34.936810, 39.229710, 16.958441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.925751, 40.118332, 16.847231>,  <34.339661, 39.591694, 17.007217>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.925751, 40.118332, 16.847231> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.063473, 39.766361, 16.716270>,  <35.146107, 39.555180, 16.637695>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.063473, 39.766361, 16.716270>,  <34.925751, 40.118332, 16.847231>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.063473, 39.766361, 16.716270> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480402, 0.464729, -0.743802,
		0.806640, 0.098813, 0.582725,
		0.344306, -0.879922, -0.327399,
		35.166763, 39.502384, 16.618052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.606613, 40.302868, 16.521465>,  <34.925751, 40.118332, 16.847231>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.606613, 40.302868, 16.521465> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.535870, 39.938900, 16.371391>,  <35.493423, 39.720520, 16.281347>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.535870, 39.938900, 16.371391>,  <35.606613, 40.302868, 16.521465>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.535870, 39.938900, 16.371391> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497531, 0.246255, -0.831758,
		0.849226, -0.333766, 0.409163,
		-0.176854, -0.909922, -0.375185,
		35.482815, 39.665924, 16.258837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.179939, 40.221470, 16.135674>,  <35.606613, 40.302868, 16.521465>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.179939, 40.221470, 16.135674> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.935192, 39.934166, 16.003176>,  <35.788342, 39.761784, 15.923676>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.935192, 39.934166, 16.003176>,  <36.179939, 40.221470, 16.135674>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.935192, 39.934166, 16.003176> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325279, 0.153236, -0.933120,
		0.720977, -0.678695, 0.139873,
		-0.611870, -0.718256, -0.331245,
		35.751633, 39.718689, 15.903802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.606491, 39.855728, 15.663773>,  <36.179939, 40.221470, 16.135674>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.606491, 39.855728, 15.663773> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.222675, 39.791573, 15.571196>,  <35.992386, 39.753078, 15.515650>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.222675, 39.791573, 15.571196>,  <36.606491, 39.855728, 15.663773>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.222675, 39.791573, 15.571196> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196574, 0.206957, -0.958398,
		0.201622, -0.965112, -0.167052,
		-0.959535, -0.160396, -0.231443,
		35.934814, 39.743454, 15.501763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<29.860399, 38.740170, 16.167152> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.237253, 38.869080, 16.204069>,  <30.463366, 38.946426, 16.226219>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.237253, 38.869080, 16.204069>,  <29.860399, 38.740170, 16.167152>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.237253, 38.869080, 16.204069> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103548, -0.541612, 0.834227,
		0.318838, -0.776398, -0.543643,
		0.942136, 0.322276, 0.092292,
		30.519894, 38.965763, 16.231756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.261791, 38.119366, 16.265833>,  <29.860399, 38.740170, 16.167152>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.261791, 38.119366, 16.265833> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.449312, 38.437786, 16.418949>,  <30.561825, 38.628838, 16.510818>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.449312, 38.437786, 16.418949>,  <30.261791, 38.119366, 16.265833>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.449312, 38.437786, 16.418949> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182373, -0.511254, 0.839857,
		0.864271, -0.323916, -0.384856,
		0.468802, 0.796051, 0.382789,
		30.589952, 38.676601, 16.533785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.856911, 37.866104, 16.537699>,  <30.261791, 38.119366, 16.265833>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.856911, 37.866104, 16.537699> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.778276, 38.203602, 16.737476>,  <30.731096, 38.406101, 16.857344>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.778276, 38.203602, 16.737476>,  <30.856911, 37.866104, 16.537699>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.778276, 38.203602, 16.737476> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243736, -0.451341, 0.858420,
		0.949708, 0.290488, -0.116923,
		-0.196588, 0.843747, 0.499444,
		30.719299, 38.456726, 16.887310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.283815, 37.854378, 17.007582>,  <30.856911, 37.866104, 16.537699>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.283815, 37.854378, 17.007582> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.017649, 38.114052, 17.154978>,  <30.857948, 38.269855, 17.243416>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.017649, 38.114052, 17.154978>,  <31.283815, 37.854378, 17.007582>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.017649, 38.114052, 17.154978> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066134, -0.440432, 0.895347,
		0.743537, 0.620148, 0.250138,
		-0.665416, 0.649181, 0.368491,
		30.818024, 38.308807, 17.265526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.625505, 37.954010, 17.537140>,  <31.283815, 37.854378, 17.007582>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.625505, 37.954010, 17.537140> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.262569, 38.110466, 17.598772>,  <31.044807, 38.204338, 17.635752>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.262569, 38.110466, 17.598772>,  <31.625505, 37.954010, 17.537140>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.262569, 38.110466, 17.598772> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029265, -0.306862, 0.951304,
		0.419373, 0.867667, 0.266983,
		-0.907342, 0.391138, 0.154082,
		30.990366, 38.227806, 17.644997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.591341, 38.447235, 18.012512>,  <31.625505, 37.954010, 17.537140>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.591341, 38.447235, 18.012512> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.212885, 38.318707, 17.996668>,  <30.985811, 38.241589, 17.987162>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.212885, 38.318707, 17.996668>,  <31.591341, 38.447235, 18.012512>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.212885, 38.318707, 17.996668> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069929, -0.322280, 0.944058,
		-0.316112, 0.890442, 0.327393,
		-0.946141, -0.321323, -0.039609,
		30.929043, 38.222309, 17.984785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.344444, 38.550686, 18.694695>,  <31.591341, 38.447235, 18.012512>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.344444, 38.550686, 18.694695> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.072750, 38.310863, 18.525381>,  <30.909733, 38.166969, 18.423792>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.072750, 38.310863, 18.525381>,  <31.344444, 38.550686, 18.694695>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.072750, 38.310863, 18.525381> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218073, -0.385823, 0.896429,
		-0.700773, 0.701194, 0.131317,
		-0.679236, -0.599557, -0.423286,
		30.868979, 38.130997, 18.398396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.884941, 38.398998, 19.255264>,  <31.344444, 38.550686, 18.694695>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.884941, 38.398998, 19.255264> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.816324, 38.106483, 18.991207>,  <30.775154, 37.930973, 18.832773>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.816324, 38.106483, 18.991207>,  <30.884941, 38.398998, 19.255264>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.816324, 38.106483, 18.991207> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122445, -0.649056, 0.750823,
		-0.977538, 0.209628, 0.021797,
		-0.171541, -0.731289, -0.660144,
		30.764862, 37.887096, 18.793163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.268257, 38.089397, 19.516352>,  <30.884941, 38.398998, 19.255264>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.268257, 38.089397, 19.516352> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.453045, 37.829647, 19.274725>,  <30.563917, 37.673798, 19.129749>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.453045, 37.829647, 19.274725>,  <30.268257, 38.089397, 19.516352>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.453045, 37.829647, 19.274725> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124374, -0.721808, 0.680826,
		-0.878131, -0.239391, -0.414219,
		0.461970, -0.649373, -0.604068,
		30.591637, 37.634834, 19.093504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.817705, 37.431084, 19.541025>,  <30.268257, 38.089397, 19.516352>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.817705, 37.431084, 19.541025> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.186401, 37.341496, 19.414387>,  <30.407619, 37.287743, 19.338404>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.186401, 37.341496, 19.414387>,  <29.817705, 37.431084, 19.541025>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.186401, 37.341496, 19.414387> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025258, -0.779962, 0.625317,
		-0.386985, -0.584377, -0.713265,
		0.921740, -0.223972, -0.316594,
		30.462923, 37.274303, 19.319408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.750551, 36.759762, 19.373587>,  <29.817705, 37.431084, 19.541025>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.750551, 36.759762, 19.373587> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.137501, 36.847099, 19.424986>,  <30.369671, 36.899502, 19.455826>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.137501, 36.847099, 19.424986>,  <29.750551, 36.759762, 19.373587>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.137501, 36.847099, 19.424986> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073596, -0.727511, 0.682137,
		0.242422, -0.650426, -0.719846,
		0.967375, 0.218343, 0.128496,
		30.427713, 36.912601, 19.463535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.067192, 36.143120, 19.512615>,  <29.750551, 36.759762, 19.373587>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.067192, 36.143120, 19.512615> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.342699, 36.404663, 19.637875>,  <30.508003, 36.561588, 19.713030>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.342699, 36.404663, 19.637875>,  <30.067192, 36.143120, 19.512615>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.342699, 36.404663, 19.637875> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381296, -0.694089, 0.610618,
		0.616612, -0.301174, -0.727382,
		0.688769, 0.653862, 0.313147,
		30.549330, 36.600822, 19.731819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.683908, 35.712368, 19.565903>,  <30.067192, 36.143120, 19.512615>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.683908, 35.712368, 19.565903> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.718946, 36.028706, 19.808191>,  <30.739969, 36.218506, 19.953564>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.718946, 36.028706, 19.808191>,  <30.683908, 35.712368, 19.565903>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.718946, 36.028706, 19.808191> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381375, -0.588356, 0.713015,
		0.920261, 0.168551, -0.353143,
		0.087594, 0.790840, 0.605722,
		30.745224, 36.265957, 19.989908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.430035, 35.841122, 19.753311>,  <30.683908, 35.712368, 19.565903>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.430035, 35.841122, 19.753311> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.190134, 35.976521, 20.043337>,  <31.046194, 36.057762, 20.217352>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.190134, 35.976521, 20.043337>,  <31.430035, 35.841122, 19.753311>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.190134, 35.976521, 20.043337> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445895, -0.611019, 0.654090,
		0.664437, 0.715593, 0.215523,
		-0.599751, 0.338501, 0.725063,
		31.010208, 36.078072, 20.260857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.193882, 35.514481, 19.790251>,  <31.430035, 35.841122, 19.753311>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.193882, 35.514481, 19.790251> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.439342, 35.208378, 19.712463>,  <32.586617, 35.024715, 19.665791>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.439342, 35.208378, 19.712463>,  <32.193882, 35.514481, 19.790251>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.439342, 35.208378, 19.712463> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088228, 0.178292, -0.980014,
		0.784634, 0.618543, 0.041892,
		0.613650, -0.765256, -0.194467,
		32.623436, 34.978802, 19.654123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.855152, 35.761181, 19.335676>,  <32.193882, 35.514481, 19.790251>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.855152, 35.761181, 19.335676> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.779121, 35.371181, 19.289646>,  <32.733501, 35.137180, 19.262028>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.779121, 35.371181, 19.289646>,  <32.855152, 35.761181, 19.335676>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.779121, 35.371181, 19.289646> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196054, 0.152547, -0.968655,
		0.961994, -0.161559, -0.220149,
		-0.190078, -0.975001, -0.115075,
		32.722099, 35.078682, 19.255123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.249607, 35.583252, 18.774321>,  <32.855152, 35.761181, 19.335676>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.249607, 35.583252, 18.774321> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.923935, 35.355724, 18.820873>,  <32.728531, 35.219208, 18.848804>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.923935, 35.355724, 18.820873>,  <33.249607, 35.583252, 18.774321>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.923935, 35.355724, 18.820873> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253849, 0.168475, -0.952458,
		0.522173, -0.805019, -0.281565,
		-0.814184, -0.568824, 0.116380,
		32.679680, 35.185078, 18.855787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.216091, 35.115112, 18.166590>,  <33.249607, 35.583252, 18.774321>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.216091, 35.115112, 18.166590> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.838711, 35.135960, 18.297550>,  <32.612282, 35.148468, 18.376125>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.838711, 35.135960, 18.297550>,  <33.216091, 35.115112, 18.166590>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.838711, 35.135960, 18.297550> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308221, 0.225793, -0.924130,
		-0.122092, -0.972780, -0.196959,
		-0.943447, 0.052122, 0.327399,
		32.555676, 35.151596, 18.395769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.818241, 34.795879, 17.671049>,  <33.216091, 35.115112, 18.166590>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.818241, 34.795879, 17.671049> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.584240, 35.037991, 17.886978>,  <32.443840, 35.183258, 18.016537>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.584240, 35.037991, 17.886978>,  <32.818241, 34.795879, 17.671049>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.584240, 35.037991, 17.886978> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225674, 0.517830, -0.825180,
		-0.779002, -0.604556, -0.166335,
		-0.585002, 0.605280, 0.539824,
		32.408741, 35.219574, 18.048925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.213306, 34.767666, 17.181387>,  <32.818241, 34.795879, 17.671049>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.213306, 34.767666, 17.181387> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.130688, 35.068768, 17.431412>,  <32.081116, 35.249428, 17.581427>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.130688, 35.068768, 17.431412>,  <32.213306, 34.767666, 17.181387>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.130688, 35.068768, 17.431412> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432690, 0.502704, -0.748377,
		-0.877563, -0.425034, 0.221875,
		-0.206548, 0.752751, 0.625062,
		32.068722, 35.294594, 17.618931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.508276, 34.997196, 17.048405>,  <32.213306, 34.767666, 17.181387>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.508276, 34.997196, 17.048405> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.680264, 35.309795, 17.229240>,  <31.783457, 35.497356, 17.337742>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.680264, 35.309795, 17.229240>,  <31.508276, 34.997196, 17.048405>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.680264, 35.309795, 17.229240> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403527, 0.614286, -0.678099,
		-0.807646, 0.109133, 0.579481,
		0.429970, 0.781500, 0.452088,
		31.809254, 35.544247, 17.364866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.948175, 35.489998, 17.131149>,  <31.508276, 34.997196, 17.048405>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.948175, 35.489998, 17.131149> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.285608, 35.704399, 17.144232>,  <31.488068, 35.833038, 17.152081>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.285608, 35.704399, 17.144232>,  <30.948175, 35.489998, 17.131149>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.285608, 35.704399, 17.144232> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359645, 0.609151, -0.706817,
		-0.398780, 0.584494, 0.706640,
		0.843581, 0.536004, 0.032707,
		31.538683, 35.865200, 17.154043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.711826, 36.150677, 16.793997>,  <30.948175, 35.489998, 17.131149>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.711826, 36.150677, 16.793997> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.109659, 36.192146, 16.797163>,  <31.348358, 36.217026, 16.799063>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.109659, 36.192146, 16.797163>,  <30.711826, 36.150677, 16.793997>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.109659, 36.192146, 16.797163> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036881, 0.422938, -0.905408,
		-0.097213, 0.900209, 0.424469,
		0.994580, 0.103672, 0.007915,
		31.408033, 36.223248, 16.799538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.888763, 36.870483, 16.564674>,  <30.711826, 36.150677, 16.793997>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.888763, 36.870483, 16.564674> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.215546, 36.646111, 16.511097>,  <31.411615, 36.511486, 16.478951>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.215546, 36.646111, 16.511097>,  <30.888763, 36.870483, 16.564674>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.215546, 36.646111, 16.511097> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118691, 0.390825, -0.912780,
		0.564354, 0.729803, 0.385865,
		0.816956, -0.560930, -0.133943,
		31.460632, 36.477833, 16.470915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.500622, 37.302032, 16.339148>,  <30.888763, 36.870483, 16.564674>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.500622, 37.302032, 16.339148> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.648062, 36.957680, 16.198853>,  <31.736526, 36.751068, 16.114676>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.648062, 36.957680, 16.198853>,  <31.500622, 37.302032, 16.339148>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.648062, 36.957680, 16.198853> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270220, 0.460242, -0.845670,
		0.889446, 0.216938, 0.402273,
		0.368601, -0.860880, -0.350740,
		31.758642, 36.699417, 16.093630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.145485, 37.392353, 15.940257>,  <31.500622, 37.302032, 16.339148>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.145485, 37.392353, 15.940257> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.060513, 37.026695, 15.802153>,  <32.009529, 36.807301, 15.719290>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.060513, 37.026695, 15.802153>,  <32.145485, 37.392353, 15.940257>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.060513, 37.026695, 15.802153> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280683, 0.281353, -0.917637,
		0.935996, -0.291846, 0.196816,
		-0.212434, -0.914148, -0.345261,
		31.996782, 36.752449, 15.698574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.773659, 37.247456, 15.514610>,  <32.145485, 37.392353, 15.940257>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.773659, 37.247456, 15.514610> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.467743, 37.017376, 15.398513>,  <32.284191, 36.879330, 15.328855>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.467743, 37.017376, 15.398513>,  <32.773659, 37.247456, 15.514610>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.467743, 37.017376, 15.398513> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209994, 0.203348, -0.956322,
		0.609094, -0.792337, -0.034731,
		-0.764792, -0.575197, -0.290244,
		32.238304, 36.844818, 15.311440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.024029, 36.813873, 15.060901>,  <32.773659, 37.247456, 15.514610>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.024029, 36.813873, 15.060901> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.635113, 36.866165, 14.983377>,  <32.401764, 36.897541, 14.936864>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.635113, 36.866165, 14.983377>,  <33.024029, 36.813873, 15.060901>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.635113, 36.866165, 14.983377> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215871, 0.183870, -0.958953,
		-0.089728, -0.974218, -0.206995,
		-0.972290, 0.130729, -0.193807,
		32.343426, 36.905384, 14.925236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.349674, 36.216396, 14.669925>,  <33.024029, 36.813873, 15.060901>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.349674, 36.216396, 14.669925> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.747555, 36.256882, 14.677169>,  <33.986282, 36.281174, 14.681516>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.747555, 36.256882, 14.677169>,  <33.349674, 36.216396, 14.669925>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.747555, 36.256882, 14.677169> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033488, -0.485431, 0.873633,
		0.097216, -0.868396, -0.486247,
		0.994700, 0.101215, 0.018111,
		34.045963, 36.287247, 14.682602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.561638, 35.685154, 14.974528>,  <33.349674, 36.216396, 14.669925>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.561638, 35.685154, 14.974528> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.892590, 35.902012, 15.033209>,  <34.091160, 36.032127, 15.068418>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.892590, 35.902012, 15.033209>,  <33.561638, 35.685154, 14.974528>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.892590, 35.902012, 15.033209> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103085, -0.403353, 0.909219,
		0.552098, -0.737149, -0.389614,
		0.827382, 0.542141, 0.146701,
		34.140804, 36.064655, 15.077219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.082817, 35.219063, 15.240423>,  <33.561638, 35.685154, 14.974528>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.082817, 35.219063, 15.240423> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.242233, 35.572128, 15.340082>,  <34.337883, 35.783966, 15.399878>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.242233, 35.572128, 15.340082>,  <34.082817, 35.219063, 15.240423>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.242233, 35.572128, 15.340082> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190039, -0.345234, 0.919075,
		0.897245, -0.318943, -0.305331,
		0.398543, 0.882660, 0.249148,
		34.361797, 35.836926, 15.414826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.685432, 35.090160, 15.598505>,  <34.082817, 35.219063, 15.240423>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.685432, 35.090160, 15.598505> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.597797, 35.462868, 15.714301>,  <34.545216, 35.686493, 15.783779>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.597797, 35.462868, 15.714301>,  <34.685432, 35.090160, 15.598505>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.597797, 35.462868, 15.714301> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267604, -0.227940, 0.936179,
		0.938291, 0.282571, -0.199407,
		-0.219084, 0.931771, 0.289491,
		34.532074, 35.742397, 15.801148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.259430, 35.366688, 15.866237>,  <34.685432, 35.090160, 15.598505>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.259430, 35.366688, 15.866237> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.934780, 35.542168, 16.020540>,  <34.739990, 35.647457, 16.113123>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.934780, 35.542168, 16.020540>,  <35.259430, 35.366688, 15.866237>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.934780, 35.542168, 16.020540> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290155, -0.270401, 0.917983,
		0.507028, 0.856987, 0.092173,
		-0.811623, 0.438699, 0.385760,
		34.691292, 35.673779, 16.136269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.489918, 35.640396, 16.459343>,  <35.259430, 35.366688, 15.866237>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.489918, 35.640396, 16.459343> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.094631, 35.668499, 16.513746>,  <34.857460, 35.685360, 16.546389>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.094631, 35.668499, 16.513746>,  <35.489918, 35.640396, 16.459343>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.094631, 35.668499, 16.513746> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111335, -0.279923, 0.953545,
		0.105069, 0.957448, 0.268801,
		-0.988213, 0.070261, 0.136008,
		34.798168, 35.689579, 16.554548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.367435, 36.195431, 16.945253>,  <35.489918, 35.640396, 16.459343>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.367435, 36.195431, 16.945253> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.043545, 35.960720, 16.947556>,  <34.849209, 35.819893, 16.948936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.043545, 35.960720, 16.947556>,  <35.367435, 36.195431, 16.945253>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.043545, 35.960720, 16.947556> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226742, -0.303818, 0.925355,
		-0.541225, 0.750594, 0.379057,
		-0.809731, -0.586773, 0.005757,
		34.800625, 35.784687, 16.949284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.983746, 36.252289, 17.586639>,  <35.367435, 36.195431, 16.945253>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.983746, 36.252289, 17.586639> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.879055, 35.885391, 17.466530>,  <34.816238, 35.665253, 17.394464>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.879055, 35.885391, 17.466530>,  <34.983746, 36.252289, 17.586639>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.879055, 35.885391, 17.466530> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056135, -0.325062, 0.944025,
		-0.963507, 0.230223, 0.136568,
		-0.261730, -0.917241, -0.300276,
		34.800537, 35.610218, 17.376448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.443615, 35.988472, 18.092066>,  <34.983746, 36.252289, 17.586639>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.443615, 35.988472, 18.092066> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.662357, 35.701996, 17.918623>,  <34.793602, 35.530109, 17.814556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.662357, 35.701996, 17.918623>,  <34.443615, 35.988472, 18.092066>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.662357, 35.701996, 17.918623> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381253, -0.248071, 0.890565,
		-0.745384, -0.652324, 0.137393,
		0.546854, -0.716194, -0.433609,
		34.826412, 35.487137, 17.788540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.215034, 35.390934, 18.400232>,  <34.443615, 35.988472, 18.092066>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.215034, 35.390934, 18.400232> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.589970, 35.335548, 18.272339>,  <34.814930, 35.302319, 18.195602>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.589970, 35.335548, 18.272339>,  <34.215034, 35.390934, 18.400232>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.589970, 35.335548, 18.272339> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283284, -0.231429, 0.930693,
		-0.202856, -0.962949, -0.177705,
		0.937337, -0.138456, -0.319735,
		34.871170, 35.294010, 18.176418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.401867, 34.694580, 18.600153>,  <34.215034, 35.390934, 18.400232>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.401867, 34.694580, 18.600153> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.754879, 34.866287, 18.523348>,  <34.966686, 34.969311, 18.477264>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.754879, 34.866287, 18.523348>,  <34.401867, 34.694580, 18.600153>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.754879, 34.866287, 18.523348> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345269, -0.314287, 0.884315,
		0.319258, -0.846732, -0.425581,
		0.882533, 0.429264, -0.192012,
		35.019638, 34.995068, 18.465744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.846355, 34.182980, 18.821323>,  <34.401867, 34.694580, 18.600153>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.846355, 34.182980, 18.821323> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.067455, 34.516315, 18.823267>,  <35.200115, 34.716316, 18.824432>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.067455, 34.516315, 18.823267>,  <34.846355, 34.182980, 18.821323>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.067455, 34.516315, 18.823267> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458038, -0.308673, 0.833620,
		0.696186, -0.458554, -0.552317,
		0.552745, 0.833336, 0.004858,
		35.233280, 34.766315, 18.824724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.501755, 34.013535, 19.125795>,  <34.846355, 34.182980, 18.821323>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.501755, 34.013535, 19.125795> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.516476, 34.410648, 19.171442>,  <35.525307, 34.648918, 19.198830>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.516476, 34.410648, 19.171442>,  <35.501755, 34.013535, 19.125795>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.516476, 34.410648, 19.171442> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347608, -0.119778, 0.929958,
		0.936918, 0.005447, -0.349508,
		0.036798, 0.992786, 0.114115,
		35.527515, 34.708485, 19.205677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.129242, 34.121788, 19.408131>,  <35.501755, 34.013535, 19.125795>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.129242, 34.121788, 19.408131> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.919701, 34.452244, 19.491142>,  <35.793976, 34.650517, 19.540949>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.919701, 34.452244, 19.491142>,  <36.129242, 34.121788, 19.408131>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.919701, 34.452244, 19.491142> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234626, -0.094264, 0.967504,
		0.818860, 0.555519, -0.144455,
		-0.523850, 0.826144, 0.207528,
		35.762547, 34.700089, 19.553400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<36.727631, 39.498741, 15.066014> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.343143, 39.607281, 15.046312>,  <36.112450, 39.672405, 15.034492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.343143, 39.607281, 15.046312>,  <36.727631, 39.498741, 15.066014>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.343143, 39.607281, 15.046312> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100847, 0.179613, -0.978554,
		-0.256683, -0.945573, -0.200012,
		-0.961220, 0.271349, -0.049255,
		36.054779, 39.688686, 15.031536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.400684, 39.147671, 14.488167>,  <36.727631, 39.498741, 15.066014>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.400684, 39.147671, 14.488167> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.155849, 39.461273, 14.529530>,  <36.008949, 39.649433, 14.554347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.155849, 39.461273, 14.529530>,  <36.400684, 39.147671, 14.488167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.155849, 39.461273, 14.529530> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131067, 0.028380, -0.990967,
		-0.779855, -0.620110, 0.085386,
		-0.612085, 0.784002, 0.103408,
		35.972225, 39.696472, 14.560552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.793388, 39.106445, 14.010020>,  <36.400684, 39.147671, 14.488167>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.793388, 39.106445, 14.010020> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.790195, 39.488647, 14.127964>,  <35.788280, 39.717968, 14.198730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.790195, 39.488647, 14.127964>,  <35.793388, 39.106445, 14.010020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.790195, 39.488647, 14.127964> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235808, 0.284754, -0.929145,
		-0.971767, -0.076951, 0.223042,
		-0.007987, 0.955507, 0.294860,
		35.787800, 39.775299, 14.216422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.112839, 39.506344, 13.746018>,  <35.793388, 39.106445, 14.010020>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.112839, 39.506344, 13.746018> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.418861, 39.759323, 13.794518>,  <35.602474, 39.911110, 13.823619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.418861, 39.759323, 13.794518>,  <35.112839, 39.506344, 13.746018>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.418861, 39.759323, 13.794518> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167406, 0.377144, -0.910899,
		-0.621822, 0.676592, 0.394412,
		0.765057, 0.632444, 0.121251,
		35.648380, 39.949055, 13.830894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.870281, 40.048592, 13.314103>,  <35.112839, 39.506344, 13.746018>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.870281, 40.048592, 13.314103> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.262878, 40.083050, 13.382520>,  <35.498436, 40.103725, 13.423570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.262878, 40.083050, 13.382520>,  <34.870281, 40.048592, 13.314103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.262878, 40.083050, 13.382520> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087444, 0.592997, -0.800443,
		-0.170381, 0.800583, 0.574488,
		0.981491, 0.086145, 0.171042,
		35.557327, 40.108894, 13.433832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.028809, 40.648911, 13.208984>,  <34.870281, 40.048592, 13.314103>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.028809, 40.648911, 13.208984> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.391476, 40.484180, 13.172404>,  <35.609074, 40.385342, 13.150456>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.391476, 40.484180, 13.172404>,  <35.028809, 40.648911, 13.208984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.391476, 40.484180, 13.172404> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162307, 0.540634, -0.825452,
		0.389383, 0.733564, 0.557015,
		0.906663, -0.411824, -0.091451,
		35.663475, 40.360634, 13.144969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.469696, 41.222664, 13.019389>,  <35.028809, 40.648911, 13.208984>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.469696, 41.222664, 13.019389> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.674580, 40.897869, 12.907445>,  <35.797508, 40.702991, 12.840279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.674580, 40.897869, 12.907445>,  <35.469696, 41.222664, 13.019389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.674580, 40.897869, 12.907445> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305317, 0.476712, -0.824335,
		0.802762, 0.336783, 0.492088,
		0.512206, -0.811987, -0.279861,
		35.828239, 40.654274, 12.823486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.062809, 41.449375, 12.772401>,  <35.469696, 41.222664, 13.019389>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.062809, 41.449375, 12.772401> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.051296, 41.085217, 12.607305>,  <36.044388, 40.866722, 12.508246>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.051296, 41.085217, 12.607305>,  <36.062809, 41.449375, 12.772401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.051296, 41.085217, 12.607305> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237912, 0.394808, -0.887426,
		0.970860, -0.123736, 0.205231,
		-0.028779, -0.910393, -0.412742,
		36.042664, 40.812099, 12.483482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.618572, 41.441895, 12.288877>,  <36.062809, 41.449375, 12.772401>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.618572, 41.441895, 12.288877> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.376259, 41.143620, 12.177897>,  <36.230869, 40.964653, 12.111310>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.376259, 41.143620, 12.177897>,  <36.618572, 41.441895, 12.288877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.376259, 41.143620, 12.177897> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018384, 0.361739, -0.932098,
		0.795417, -0.559549, -0.232844,
		-0.605784, -0.745687, -0.277447,
		36.194523, 40.919914, 12.094664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.865723, 41.102776, 11.647450>,  <36.618572, 41.441895, 12.288877>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.865723, 41.102776, 11.647450> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.483727, 40.987965, 11.617477>,  <36.254528, 40.919079, 11.599494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.483727, 40.987965, 11.617477>,  <36.865723, 41.102776, 11.647450>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.483727, 40.987965, 11.617477> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057995, 0.428376, -0.901737,
		0.290918, -0.856803, -0.425740,
		-0.954989, -0.287022, -0.074932,
		36.197231, 40.901859, 11.594997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.859505, 40.694130, 11.031632>,  <36.865723, 41.102776, 11.647450>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.859505, 40.694130, 11.031632> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.488644, 40.824692, 11.105223>,  <36.266129, 40.903027, 11.149377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.488644, 40.824692, 11.105223>,  <36.859505, 40.694130, 11.031632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.488644, 40.824692, 11.105223> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142353, 0.147337, -0.978789,
		-0.346586, -0.933677, -0.090140,
		-0.927154, 0.326402, 0.183977,
		36.210499, 40.922611, 11.160416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.381824, 40.531502, 10.410019>,  <36.859505, 40.694130, 11.031632>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.381824, 40.531502, 10.410019> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.183235, 40.821861, 10.600420>,  <36.064083, 40.996078, 10.714661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.183235, 40.821861, 10.600420>,  <36.381824, 40.531502, 10.410019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.183235, 40.821861, 10.600420> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351058, 0.333609, -0.874907,
		-0.793898, -0.601472, 0.089207,
		-0.496472, 0.725904, 0.476003,
		36.034294, 41.039631, 10.743221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.772789, 40.616825, 10.147203>,  <36.381824, 40.531502, 10.410019>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.772789, 40.616825, 10.147203> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.836086, 40.983200, 10.294724>,  <35.874065, 41.203026, 10.383235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.836086, 40.983200, 10.294724>,  <35.772789, 40.616825, 10.147203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.836086, 40.983200, 10.294724> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335923, 0.401165, -0.852187,
		-0.928502, 0.010962, 0.371166,
		0.158241, 0.915940, 0.368800,
		35.883560, 41.257980, 10.405363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.102020, 40.374924, 9.937064>,  <35.772789, 40.616825, 10.147203>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.102020, 40.374924, 9.937064> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.910599, 40.244362, 9.611011>,  <34.795746, 40.166023, 9.415379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.910599, 40.244362, 9.611011>,  <35.102020, 40.374924, 9.937064>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.910599, 40.244362, 9.611011> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432378, 0.895584, -0.104778,
		0.764221, 0.302305, -0.569717,
		-0.478555, -0.326407, -0.815135,
		34.767033, 40.146439, 9.366470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.838882, 40.055378, 10.569537>,  <35.102020, 40.374924, 9.937064>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.838882, 40.055378, 10.569537> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.589497, 39.801968, 10.386258>,  <34.439865, 39.649921, 10.276291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.589497, 39.801968, 10.386258>,  <34.838882, 40.055378, 10.569537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.589497, 39.801968, 10.386258> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080337, -0.531030, 0.843536,
		-0.777717, 0.562721, 0.280181,
		-0.623460, -0.633523, -0.458198,
		34.402458, 39.611912, 10.248798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.378860, 39.927322, 11.042878>,  <34.838882, 40.055378, 10.569537>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.378860, 39.927322, 11.042878> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.339020, 39.621948, 10.787617>,  <34.315113, 39.438725, 10.634460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.339020, 39.621948, 10.787617>,  <34.378860, 39.927322, 11.042878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.339020, 39.621948, 10.787617> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020515, -0.642781, 0.765775,
		-0.994816, 0.063182, 0.079686,
		-0.099604, -0.763440, -0.638153,
		34.309139, 39.392918, 10.596170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.931587, 39.488964, 11.286779>,  <34.378860, 39.927322, 11.042878>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.931587, 39.488964, 11.286779> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.136639, 39.257000, 11.033507>,  <34.259670, 39.117821, 10.881544>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.136639, 39.257000, 11.033507>,  <33.931587, 39.488964, 11.286779>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.136639, 39.257000, 11.033507> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028380, -0.725598, 0.687534,
		-0.858144, -0.370416, -0.355501,
		0.512624, -0.579914, -0.633179,
		34.290424, 39.083027, 10.843554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.571735, 38.940792, 11.324918>,  <33.931587, 39.488964, 11.286779>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.571735, 38.940792, 11.324918> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.922691, 38.835823, 11.164259>,  <34.133266, 38.772842, 11.067863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.922691, 38.835823, 11.164259>,  <33.571735, 38.940792, 11.324918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.922691, 38.835823, 11.164259> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067577, -0.761215, 0.644969,
		-0.474992, -0.593032, -0.650150,
		0.877391, -0.262420, -0.401647,
		34.185909, 38.757095, 11.043765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.471512, 38.315754, 11.148853>,  <33.571735, 38.940792, 11.324918>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.471512, 38.315754, 11.148853> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.859394, 38.377441, 11.224625>,  <34.092125, 38.414452, 11.270087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.859394, 38.377441, 11.224625>,  <33.471512, 38.315754, 11.148853>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.859394, 38.377441, 11.224625> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014250, -0.738465, 0.674141,
		0.243849, -0.656420, -0.713898,
		0.969708, 0.154216, 0.189428,
		34.150307, 38.423706, 11.281453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.713474, 37.656475, 11.215045>,  <33.471512, 38.315754, 11.148853>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.713474, 37.656475, 11.215045> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.012814, 37.867271, 11.376164>,  <34.192417, 37.993752, 11.472836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.012814, 37.867271, 11.376164>,  <33.713474, 37.656475, 11.215045>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.012814, 37.867271, 11.376164> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074801, -0.670439, 0.738184,
		0.659070, -0.522292, -0.541144,
		0.748352, 0.526994, 0.402799,
		34.237320, 38.025368, 11.497004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.243816, 37.227444, 11.339896>,  <33.713474, 37.656475, 11.215045>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.243816, 37.227444, 11.339896> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.325348, 37.528736, 11.590048>,  <34.374268, 37.709511, 11.740139>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.325348, 37.528736, 11.590048>,  <34.243816, 37.227444, 11.339896>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.325348, 37.528736, 11.590048> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199568, -0.657344, 0.726685,
		0.958450, -0.023313, -0.284306,
		0.203828, 0.753230, 0.625379,
		34.386497, 37.754704, 11.777661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.781876, 36.981823, 11.653335>,  <34.243816, 37.227444, 11.339896>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.781876, 36.981823, 11.653335> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.667866, 37.273586, 11.902086>,  <34.599461, 37.448643, 12.051337>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.667866, 37.273586, 11.902086>,  <34.781876, 36.981823, 11.653335>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.667866, 37.273586, 11.902086> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268233, -0.562173, 0.782313,
		0.920225, 0.389784, -0.035419,
		-0.285022, 0.729404, 0.621878,
		34.582359, 37.492409, 12.088650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.335594, 37.103546, 12.175798>,  <34.781876, 36.981823, 11.653335>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.335594, 37.103546, 12.175798> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.993668, 37.242062, 12.330389>,  <34.788509, 37.325172, 12.423143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.993668, 37.242062, 12.330389>,  <35.335594, 37.103546, 12.175798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.993668, 37.242062, 12.330389> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199194, -0.468740, 0.860584,
		0.479170, 0.812629, 0.331709,
		-0.854820, 0.346292, 0.386476,
		34.737221, 37.345951, 12.446332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.471329, 37.189648, 12.916037>,  <35.335594, 37.103546, 12.175798>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.471329, 37.189648, 12.916037> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.072021, 37.191296, 12.892538>,  <34.832439, 37.192284, 12.878439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.072021, 37.191296, 12.892538>,  <35.471329, 37.189648, 12.916037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.072021, 37.191296, 12.892538> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052800, -0.504343, 0.861888,
		-0.026081, 0.863494, 0.503684,
		-0.998264, 0.004116, -0.058747,
		34.772541, 37.192532, 12.874914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.351452, 37.319668, 13.560794>,  <35.471329, 37.189648, 12.916037>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.351452, 37.319668, 13.560794> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.014664, 37.160889, 13.414632>,  <34.812592, 37.065620, 13.326935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.014664, 37.160889, 13.414632>,  <35.351452, 37.319668, 13.560794>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.014664, 37.160889, 13.414632> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278862, -0.259608, 0.924575,
		-0.461866, 0.880363, 0.107890,
		-0.841971, -0.396943, -0.365404,
		34.762074, 37.041805, 13.305011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.718903, 37.607033, 14.017947>,  <35.351452, 37.319668, 13.560794>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.718903, 37.607033, 14.017947> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.635403, 37.260883, 13.835719>,  <34.585304, 37.053192, 13.726382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.635403, 37.260883, 13.835719>,  <34.718903, 37.607033, 14.017947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.635403, 37.260883, 13.835719> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070252, -0.451361, 0.889572,
		-0.975442, 0.217703, 0.033427,
		-0.208750, -0.865378, -0.455571,
		34.572777, 37.001270, 13.699048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.068581, 37.462963, 14.251935>,  <34.718903, 37.607033, 14.017947>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.068581, 37.462963, 14.251935> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.178944, 37.101849, 14.119959>,  <34.245159, 36.885181, 14.040773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.178944, 37.101849, 14.119959>,  <34.068581, 37.462963, 14.251935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.178944, 37.101849, 14.119959> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182849, -0.386292, 0.904071,
		-0.943633, -0.189107, -0.271652,
		0.275903, -0.902783, -0.329940,
		34.261715, 36.831013, 14.020977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.512794, 36.948315, 14.467837>,  <34.068581, 37.462963, 14.251935>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.512794, 36.948315, 14.467837> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.843086, 36.733349, 14.399301>,  <34.041260, 36.604370, 14.358179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.843086, 36.733349, 14.399301>,  <33.512794, 36.948315, 14.467837>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.843086, 36.733349, 14.399301> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079831, -0.412043, 0.907660,
		-0.558391, -0.735802, -0.383138,
		0.825728, -0.537416, -0.171342,
		34.090805, 36.572124, 14.347898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.893021, 36.590538, 14.163651>,  <33.512794, 36.948315, 14.467837>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.893021, 36.590538, 14.163651> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.578796, 36.789417, 14.310999>,  <32.390263, 36.908745, 14.399407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.578796, 36.789417, 14.310999>,  <32.893021, 36.590538, 14.163651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.578796, 36.789417, 14.310999> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084780, 0.503214, -0.859993,
		-0.612952, -0.706805, -0.353152,
		-0.785559, 0.497194, 0.368369,
		32.343128, 36.938576, 14.421510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.367588, 36.456081, 13.596013>,  <32.893021, 36.590538, 14.163651>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.367588, 36.456081, 13.596013> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.227818, 36.749977, 13.828585>,  <32.143955, 36.926315, 13.968127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.227818, 36.749977, 13.828585>,  <32.367588, 36.456081, 13.596013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.227818, 36.749977, 13.828585> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338501, 0.479640, -0.809545,
		-0.873680, -0.479693, 0.081110,
		-0.349429, 0.734738, 0.581428,
		32.122990, 36.970398, 14.003014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.650444, 36.581364, 13.462460>,  <32.367588, 36.456081, 13.596013>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.650444, 36.581364, 13.462460> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.786856, 36.921303, 13.623187>,  <31.868704, 37.125267, 13.719624>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.786856, 36.921303, 13.623187>,  <31.650444, 36.581364, 13.462460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.786856, 36.921303, 13.623187> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300946, 0.503648, -0.809796,
		-0.890578, 0.155239, 0.427517,
		0.341030, 0.849847, 0.401820,
		31.889164, 37.176258, 13.743733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.188389, 37.016071, 13.294095>,  <31.650444, 36.581364, 13.462460>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.188389, 37.016071, 13.294095> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.467266, 37.278736, 13.409133>,  <31.634592, 37.436337, 13.478156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.467266, 37.278736, 13.409133>,  <31.188389, 37.016071, 13.294095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.467266, 37.278736, 13.409133> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282110, 0.620121, -0.732027,
		-0.659042, 0.429231, 0.617596,
		0.697193, 0.656666, 0.287596,
		31.676424, 37.475735, 13.495412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.905115, 37.670612, 13.318028>,  <31.188389, 37.016071, 13.294095>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.905115, 37.670612, 13.318028> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.293356, 37.754124, 13.270114>,  <31.526300, 37.804230, 13.241365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.293356, 37.754124, 13.270114>,  <30.905115, 37.670612, 13.318028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.293356, 37.754124, 13.270114> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228915, 0.646854, -0.727446,
		-0.074388, 0.733480, 0.675628,
		0.970600, 0.208775, -0.119787,
		31.584536, 37.816757, 13.234178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.033100, 38.390125, 13.334614>,  <30.905115, 37.670612, 13.318028>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.033100, 38.390125, 13.334614> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.371670, 38.279228, 13.152755>,  <31.574812, 38.212688, 13.043639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.371670, 38.279228, 13.152755>,  <31.033100, 38.390125, 13.334614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.371670, 38.279228, 13.152755> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175151, 0.661331, -0.729358,
		0.502881, 0.696978, 0.511207,
		0.846423, -0.277242, -0.454647,
		31.625597, 38.196056, 13.016360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.362617, 39.014202, 13.114014>,  <31.033100, 38.390125, 13.334614>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.362617, 39.014202, 13.114014> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.483583, 38.724663, 12.865952>,  <31.556162, 38.550941, 12.717114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.483583, 38.724663, 12.865952>,  <31.362617, 39.014202, 13.114014>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.483583, 38.724663, 12.865952> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051121, 0.637367, -0.768863,
		0.951805, 0.264218, 0.155745,
		0.302414, -0.723846, -0.620156,
		31.574308, 38.507507, 12.679905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.610901, 39.636818, 13.376689>,  <31.362617, 39.014202, 13.114014>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.610901, 39.636818, 13.376689> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.295042, 39.842869, 13.510015>,  <31.105526, 39.966499, 13.590010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.295042, 39.842869, 13.510015>,  <31.610901, 39.636818, 13.376689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.295042, 39.842869, 13.510015> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175359, -0.331107, 0.927155,
		0.587965, 0.790577, 0.171127,
		-0.789649, 0.515126, 0.333315,
		31.058147, 39.997406, 13.610009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.769989, 40.056396, 13.980099>,  <31.610901, 39.636818, 13.376689>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.769989, 40.056396, 13.980099> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.373869, 40.009926, 14.010580>,  <31.136196, 39.982044, 14.028869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.373869, 40.009926, 14.010580>,  <31.769989, 40.056396, 13.980099>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.373869, 40.009926, 14.010580> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105537, -0.272264, 0.956417,
		-0.090365, 0.955183, 0.281885,
		-0.990301, -0.116176, 0.076204,
		31.076778, 39.975075, 14.033442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.677031, 40.188423, 14.634518>,  <31.769989, 40.056396, 13.980099>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.677031, 40.188423, 14.634518> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.307079, 40.049854, 14.571785>,  <31.085110, 39.966713, 14.534145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.307079, 40.049854, 14.571785>,  <31.677031, 40.188423, 14.634518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.307079, 40.049854, 14.571785> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077132, -0.232954, 0.969424,
		-0.372364, 0.908694, 0.188734,
		-0.924876, -0.346422, -0.156833,
		31.029617, 39.945927, 14.524735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.195610, 40.514839, 15.170837>,  <31.677031, 40.188423, 14.634518>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.195610, 40.514839, 15.170837> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.037754, 40.168468, 15.047915>,  <30.943041, 39.960648, 14.974162>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.037754, 40.168468, 15.047915>,  <31.195610, 40.514839, 15.170837>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.037754, 40.168468, 15.047915> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123568, -0.281396, 0.951602,
		-0.910489, 0.413514, 0.004050,
		-0.394640, -0.865923, -0.307305,
		30.919361, 39.908691, 14.955724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.637402, 40.449707, 15.583362>,  <31.195610, 40.514839, 15.170837>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.637402, 40.449707, 15.583362> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.692335, 40.081699, 15.436557>,  <30.725294, 39.860893, 15.348474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.692335, 40.081699, 15.436557>,  <30.637402, 40.449707, 15.583362>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.692335, 40.081699, 15.436557> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137028, -0.384606, 0.912854,
		-0.981001, -0.075073, -0.178888,
		0.137332, -0.920023, -0.367012,
		30.733534, 39.805691, 15.326453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.227863, 40.123146, 15.986556>,  <30.637402, 40.449707, 15.583362>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.227863, 40.123146, 15.986556> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.466015, 39.838825, 15.836740>,  <30.608906, 39.668232, 15.746850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.466015, 39.838825, 15.836740>,  <30.227863, 40.123146, 15.986556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.466015, 39.838825, 15.836740> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131040, -0.545835, 0.827582,
		-0.792686, -0.443645, -0.418123,
		0.595379, -0.710804, -0.374541,
		30.644629, 39.625584, 15.724378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.818447, 39.516552, 16.104918>,  <30.227863, 40.123146, 15.986556>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.818447, 39.516552, 16.104918> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.206890, 39.437527, 16.051369>,  <30.439957, 39.390114, 16.019239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.206890, 39.437527, 16.051369>,  <29.818447, 39.516552, 16.104918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.206890, 39.437527, 16.051369> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018857, -0.622731, 0.782209,
		-0.237898, -0.757084, -0.608464,
		0.971107, -0.197559, -0.133870,
		30.498222, 39.378258, 16.011208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<33.941460, 43.368465, 11.634651> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.266479, 43.152992, 11.723716>,  <34.461491, 43.023708, 11.777155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.266479, 43.152992, 11.723716>,  <33.941460, 43.368465, 11.634651>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.266479, 43.152992, 11.723716> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267910, -0.005888, 0.963426,
		-0.517673, -0.842486, -0.149104,
		0.812551, -0.538686, 0.222662,
		34.510246, 42.991386, 11.790515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.778973, 42.757786, 11.931794>,  <33.941460, 43.368465, 11.634651>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.778973, 42.757786, 11.931794> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.152302, 42.786026, 12.072604>,  <34.376301, 42.802971, 12.157090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.152302, 42.786026, 12.072604>,  <33.778973, 42.757786, 11.931794>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.152302, 42.786026, 12.072604> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342328, -0.120619, 0.931806,
		0.108245, -0.990185, -0.088409,
		0.933325, 0.070599, 0.352024,
		34.432301, 42.807205, 12.178211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.821697, 42.278973, 12.487341>,  <33.778973, 42.757786, 11.931794>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.821697, 42.278973, 12.487341> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.157555, 42.483418, 12.560842>,  <34.359070, 42.606087, 12.604942>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.157555, 42.483418, 12.560842>,  <33.821697, 42.278973, 12.487341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.157555, 42.483418, 12.560842> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138858, -0.125067, 0.982383,
		0.525094, -0.850363, -0.034038,
		0.839640, 0.511117, 0.183752,
		34.409447, 42.636753, 12.615967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.104927, 41.925629, 13.016964>,  <33.821697, 42.278973, 12.487341>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.104927, 41.925629, 13.016964> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.305950, 42.270630, 13.040730>,  <34.426563, 42.477631, 13.054991>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.305950, 42.270630, 13.040730>,  <34.104927, 41.925629, 13.016964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.305950, 42.270630, 13.040730> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047478, -0.096157, 0.994233,
		0.863239, -0.496839, -0.089274,
		0.502558, 0.862499, 0.059417,
		34.456718, 42.529381, 13.058556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.581722, 41.818272, 13.598002>,  <34.104927, 41.925629, 13.016964>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.581722, 41.818272, 13.598002> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.541073, 42.213593, 13.552521>,  <34.516685, 42.450787, 13.525232>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.541073, 42.213593, 13.552521>,  <34.581722, 41.818272, 13.598002>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.541073, 42.213593, 13.552521> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150927, 0.128288, 0.980185,
		0.983308, 0.082447, -0.162198,
		-0.101621, 0.988304, -0.113703,
		34.510586, 42.510082, 13.518410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.159096, 42.151169, 13.962256>,  <34.581722, 41.818272, 13.598002>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.159096, 42.151169, 13.962256> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.880737, 42.436935, 13.933043>,  <34.713722, 42.608395, 13.915516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.880737, 42.436935, 13.933043>,  <35.159096, 42.151169, 13.962256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.880737, 42.436935, 13.933043> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026901, 0.127558, 0.991466,
		0.717639, 0.687992, -0.107986,
		-0.695895, 0.714420, -0.073033,
		34.671970, 42.651260, 13.911134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.409351, 42.853401, 14.265012>,  <35.159096, 42.151169, 13.962256>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.409351, 42.853401, 14.265012> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.010281, 42.837494, 14.287148>,  <34.770840, 42.827950, 14.300429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.010281, 42.837494, 14.287148>,  <35.409351, 42.853401, 14.265012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.010281, 42.837494, 14.287148> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056838, -0.037592, 0.997675,
		-0.037592, 0.998502, 0.039765,
		-0.997675, -0.039765, 0.055340,
		34.710979, 42.825565, 14.303749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.260513, 43.364582, 14.782248>,  <35.409351, 42.853401, 14.265012>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.260513, 43.364582, 14.782248> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.940952, 43.126034, 14.751038>,  <34.749214, 42.982903, 14.732311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.940952, 43.126034, 14.751038>,  <35.260513, 43.364582, 14.782248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.940952, 43.126034, 14.751038> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012036, -0.113853, 0.993425,
		-0.601336, 0.794592, 0.083780,
		-0.798906, -0.596374, -0.078028,
		34.701279, 42.947121, 14.727630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.829720, 43.596844, 15.372200>,  <35.260513, 43.364582, 14.782248>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.829720, 43.596844, 15.372200> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.660801, 43.246944, 15.277140>,  <34.559448, 43.037003, 15.220103>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.660801, 43.246944, 15.277140>,  <34.829720, 43.596844, 15.372200>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.660801, 43.246944, 15.277140> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143321, -0.194442, 0.970387,
		-0.895056, 0.443851, -0.043258,
		-0.422296, -0.874750, -0.237650,
		34.534111, 42.984520, 15.205845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.155022, 43.565948, 15.723308>,  <34.829720, 43.596844, 15.372200>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.155022, 43.565948, 15.723308> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.225479, 43.182175, 15.635251>,  <34.267754, 42.951912, 15.582417>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.225479, 43.182175, 15.635251>,  <34.155022, 43.565948, 15.723308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.225479, 43.182175, 15.635251> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249531, -0.259853, 0.932851,
		-0.952212, -0.109383, -0.285179,
		0.176143, -0.959433, -0.220141,
		34.278320, 42.894344, 15.569209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.621017, 43.127289, 16.056238>,  <34.155022, 43.565948, 15.723308>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.621017, 43.127289, 16.056238> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.911736, 42.856792, 16.008121>,  <34.086166, 42.694492, 15.979251>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.911736, 42.856792, 16.008121>,  <33.621017, 43.127289, 16.056238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.911736, 42.856792, 16.008121> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149498, -0.326679, 0.933237,
		-0.670393, -0.660284, -0.338524,
		0.726790, -0.676244, -0.120293,
		34.129772, 42.653919, 15.972034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.442753, 42.496433, 16.437325>,  <33.621017, 43.127289, 16.056238>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.442753, 42.496433, 16.437325> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.840950, 42.462040, 16.421326>,  <34.079868, 42.441406, 16.411726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.840950, 42.462040, 16.421326>,  <33.442753, 42.496433, 16.437325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.840950, 42.462040, 16.421326> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023230, -0.187818, 0.981929,
		-0.091938, -0.978433, -0.184974,
		0.995494, -0.085980, -0.039997,
		34.139599, 42.436245, 16.409327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.946507, 41.994061, 16.450350>,  <33.442753, 42.496433, 16.437325>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.946507, 41.994061, 16.450350> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.599846, 42.158409, 16.563555>,  <32.391850, 42.257019, 16.631477>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.599846, 42.158409, 16.563555>,  <32.946507, 41.994061, 16.450350>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.599846, 42.158409, 16.563555> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245433, 0.142773, -0.958843,
		-0.434369, -0.900444, -0.022893,
		-0.866652, 0.410873, 0.283015,
		32.339851, 42.281670, 16.648458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.352688, 41.554501, 16.206234>,  <32.946507, 41.994061, 16.450350>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.352688, 41.554501, 16.206234> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.245621, 41.936005, 16.260923>,  <32.181381, 42.164909, 16.293737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.245621, 41.936005, 16.260923>,  <32.352688, 41.554501, 16.206234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.245621, 41.936005, 16.260923> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213847, 0.079556, -0.973622,
		-0.939481, -0.289842, 0.182665,
		-0.267664, 0.953762, 0.136724,
		32.165321, 42.222134, 16.301941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.793348, 41.628048, 15.840521>,  <32.352688, 41.554501, 16.206234>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.793348, 41.628048, 15.840521> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.879845, 42.017365, 15.871371>,  <31.931744, 42.250954, 15.889881>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.879845, 42.017365, 15.871371>,  <31.793348, 41.628048, 15.840521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.879845, 42.017365, 15.871371> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100394, 0.100742, -0.989834,
		-0.971164, 0.206301, 0.119497,
		0.216242, 0.973289, 0.077126,
		31.944717, 42.309353, 15.894509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.235302, 42.006489, 15.635102>,  <31.793348, 41.628048, 15.840521>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.235302, 42.006489, 15.635102> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.525476, 42.279823, 15.602142>,  <31.699581, 42.443825, 15.582367>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.525476, 42.279823, 15.602142>,  <31.235302, 42.006489, 15.635102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.525476, 42.279823, 15.602142> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304231, 0.210959, -0.928945,
		-0.617401, 0.698960, 0.360930,
		0.725437, 0.683338, -0.082399,
		31.743107, 42.484825, 15.577423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.871572, 42.521988, 15.473415>,  <31.235302, 42.006489, 15.635102>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.871572, 42.521988, 15.473415> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.246012, 42.613369, 15.366438>,  <31.470676, 42.668198, 15.302252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.246012, 42.613369, 15.366438>,  <30.871572, 42.521988, 15.473415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.246012, 42.613369, 15.366438> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334042, 0.339307, -0.879367,
		-0.110150, 0.912513, 0.393938,
		0.936100, 0.228454, -0.267443,
		31.526842, 42.681904, 15.286205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.769932, 43.127506, 15.136995>,  <30.871572, 42.521988, 15.473415>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.769932, 43.127506, 15.136995> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.129272, 43.005875, 15.010186>,  <31.344877, 42.932896, 14.934101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.129272, 43.005875, 15.010186>,  <30.769932, 43.127506, 15.136995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.129272, 43.005875, 15.010186> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183848, 0.395181, -0.900018,
		0.398954, 0.866816, 0.299108,
		0.898351, -0.304075, -0.317022,
		31.398777, 42.914654, 14.915080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.190445, 43.616898, 14.835855>,  <30.769932, 43.127506, 15.136995>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.190445, 43.616898, 14.835855> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.304100, 43.280167, 14.652290>,  <31.372293, 43.078129, 14.542152>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.304100, 43.280167, 14.652290>,  <31.190445, 43.616898, 14.835855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.304100, 43.280167, 14.652290> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028517, 0.485846, -0.873579,
		0.958359, 0.235131, 0.162054,
		0.284138, -0.841824, -0.458910,
		31.389341, 43.027618, 14.514617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.486208, 43.910652, 14.156569>,  <31.190445, 43.616898, 14.835855>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.486208, 43.910652, 14.156569> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.509182, 43.513138, 14.118432>,  <31.522966, 43.274628, 14.095550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.509182, 43.513138, 14.118432>,  <31.486208, 43.910652, 14.156569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.509182, 43.513138, 14.118432> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128662, 0.102072, -0.986422,
		0.990024, 0.044388, 0.133725,
		0.057435, -0.993786, -0.095343,
		31.526413, 43.215000, 14.089829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.992409, 43.825603, 13.686945>,  <31.486208, 43.910652, 14.156569>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.992409, 43.825603, 13.686945> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.784061, 43.484890, 13.664440>,  <31.659054, 43.280464, 13.650937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.784061, 43.484890, 13.664440>,  <31.992409, 43.825603, 13.686945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.784061, 43.484890, 13.664440> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078035, 0.113144, -0.990510,
		0.850064, -0.511533, -0.125402,
		-0.520866, -0.851782, -0.056262,
		31.627802, 43.229355, 13.647561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.363014, 43.375843, 13.255323>,  <31.992409, 43.825603, 13.686945>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.363014, 43.375843, 13.255323> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.975576, 43.276409, 13.257636>,  <31.743114, 43.216751, 13.259024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.975576, 43.276409, 13.257636>,  <32.363014, 43.375843, 13.255323>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.975576, 43.276409, 13.257636> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033510, 0.107462, -0.993644,
		0.246381, -0.962631, -0.112418,
		-0.968594, -0.248582, 0.005781,
		31.684998, 43.201836, 13.259371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.315372, 42.908596, 12.719316>,  <32.363014, 43.375843, 13.255323>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.315372, 42.908596, 12.719316> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.946798, 43.046745, 12.790516>,  <31.725655, 43.129635, 12.833236>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.946798, 43.046745, 12.790516>,  <32.315372, 42.908596, 12.719316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.946798, 43.046745, 12.790516> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177309, 0.033864, -0.983572,
		-0.345726, -0.937855, 0.030034,
		-0.921431, 0.345372, 0.177998,
		31.670368, 43.150356, 12.843915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.925499, 42.597019, 12.165132>,  <32.315372, 42.908596, 12.719316>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.925499, 42.597019, 12.165132> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.708618, 42.901386, 12.307690>,  <31.578489, 43.084007, 12.393225>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.708618, 42.901386, 12.307690>,  <31.925499, 42.597019, 12.165132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.708618, 42.901386, 12.307690> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309289, 0.213636, -0.926661,
		-0.781253, -0.612668, 0.119509,
		-0.542203, 0.760919, 0.356395,
		31.545958, 43.129662, 12.414608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.383490, 42.609745, 11.709060>,  <31.925499, 42.597019, 12.165132>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.383490, 42.609745, 11.709060> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.378237, 42.960098, 11.901998>,  <31.375086, 43.170311, 12.017760>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.378237, 42.960098, 11.901998>,  <31.383490, 42.609745, 11.709060>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.378237, 42.960098, 11.901998> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457919, 0.423561, -0.781605,
		-0.888897, -0.231138, 0.395521,
		-0.013131, 0.875883, 0.482344,
		31.374298, 43.222862, 12.046700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.017756, 42.502178, 11.031479>,  <31.383490, 42.609745, 11.709060>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.017756, 42.502178, 11.031479> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.703110, 42.262959, 10.970059>,  <30.514322, 42.119427, 10.933208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.703110, 42.262959, 10.970059>,  <31.017756, 42.502178, 11.031479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.703110, 42.262959, 10.970059> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285033, -0.572319, 0.768900,
		-0.547717, 0.561061, 0.620658,
		-0.786614, -0.598048, -0.153549,
		30.467125, 42.083546, 10.923995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.677080, 42.475742, 11.661511>,  <31.017756, 42.502178, 11.031479>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.677080, 42.475742, 11.661511> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.515301, 42.152370, 11.490458>,  <30.418232, 41.958347, 11.387827>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.515301, 42.152370, 11.490458>,  <30.677080, 42.475742, 11.661511>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.515301, 42.152370, 11.490458> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009546, -0.463824, 0.885876,
		-0.914510, 0.362375, 0.179877,
		-0.404451, -0.808425, -0.427631,
		30.393965, 41.909843, 11.362169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.095013, 42.278133, 12.114419>,  <30.677080, 42.475742, 11.661511>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.095013, 42.278133, 12.114419> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.160210, 41.928799, 11.930800>,  <30.199327, 41.719200, 11.820629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.160210, 41.928799, 11.930800>,  <30.095013, 42.278133, 12.114419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.160210, 41.928799, 11.930800> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058057, -0.472951, 0.879174,
		-0.984918, -0.116647, -0.127790,
		0.162992, -0.873333, -0.459046,
		30.209106, 41.666798, 11.793087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.790384, 41.796471, 12.532014>,  <30.095013, 42.278133, 12.114419>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.790384, 41.796471, 12.532014> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.048265, 41.562099, 12.335626>,  <30.202993, 41.421478, 12.217793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.048265, 41.562099, 12.335626>,  <29.790384, 41.796471, 12.532014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.048265, 41.562099, 12.335626> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214113, -0.478150, 0.851779,
		-0.733838, -0.654265, -0.182809,
		0.644700, -0.585926, -0.490971,
		30.241676, 41.386322, 12.188334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.598387, 41.128307, 12.571595>,  <29.790384, 41.796471, 12.532014>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.598387, 41.128307, 12.571595> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.994740, 41.122467, 12.518025>,  <30.232552, 41.118965, 12.485884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.994740, 41.122467, 12.518025>,  <29.598387, 41.128307, 12.571595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.994740, 41.122467, 12.518025> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102717, -0.561357, 0.821174,
		-0.087166, -0.827445, -0.554741,
		0.990884, -0.014597, -0.133924,
		30.292006, 41.118088, 12.477848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.773779, 40.378700, 12.701873>,  <29.598387, 41.128307, 12.571595>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.773779, 40.378700, 12.701873> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.099512, 40.610359, 12.717114>,  <30.294952, 40.749355, 12.726259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.099512, 40.610359, 12.717114>,  <29.773779, 40.378700, 12.701873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.099512, 40.610359, 12.717114> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315934, -0.497389, 0.807954,
		0.486878, -0.645904, -0.588012,
		0.814331, 0.579148, 0.038105,
		30.343811, 40.784103, 12.728546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.451101, 39.876011, 12.561496>,  <29.773779, 40.378700, 12.701873>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.451101, 39.876011, 12.561496> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.524092, 40.218967, 12.753991>,  <30.567886, 40.424740, 12.869488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.524092, 40.218967, 12.753991>,  <30.451101, 39.876011, 12.561496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.524092, 40.218967, 12.753991> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387568, -0.512549, 0.766215,
		0.903601, 0.046697, -0.425823,
		0.182475, 0.857388, 0.481237,
		30.578835, 40.476185, 12.898362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.146900, 39.668636, 12.803773>,  <30.451101, 39.876011, 12.561496>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.146900, 39.668636, 12.803773> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.047127, 39.983246, 13.029749>,  <30.987263, 40.172012, 13.165335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.047127, 39.983246, 13.029749>,  <31.146900, 39.668636, 12.803773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.047127, 39.983246, 13.029749> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305552, -0.489655, 0.816624,
		0.918923, 0.376312, -0.118189,
		-0.249434, 0.786528, 0.564939,
		30.972296, 40.219204, 13.199230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.881971, 39.350723, 12.552281>,  <31.146900, 39.668636, 12.803773>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.881971, 39.350723, 12.552281> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.774939, 38.993389, 12.407862>,  <31.710718, 38.778988, 12.321210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.774939, 38.993389, 12.407862>,  <31.881971, 39.350723, 12.552281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.774939, 38.993389, 12.407862> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002039, 0.375238, -0.926926,
		0.963533, -0.247293, -0.102229,
		-0.267583, -0.893332, -0.361050,
		31.694664, 38.725388, 12.299546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.345535, 39.195240, 12.069101>,  <31.881971, 39.350723, 12.552281>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.345535, 39.195240, 12.069101> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.046558, 38.947968, 11.971790>,  <31.867172, 38.799603, 11.913404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.046558, 38.947968, 11.971790>,  <32.345535, 39.195240, 12.069101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.046558, 38.947968, 11.971790> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001686, 0.364432, -0.931228,
		0.664329, -0.696446, -0.271348,
		-0.747438, -0.618184, -0.243278,
		31.822327, 38.762512, 11.898808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.475475, 38.802513, 11.487729>,  <32.345535, 39.195240, 12.069101>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.475475, 38.802513, 11.487729> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.076530, 38.827972, 11.501655>,  <31.837162, 38.843250, 11.510010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.076530, 38.827972, 11.501655>,  <32.475475, 38.802513, 11.487729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.076530, 38.827972, 11.501655> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016784, 0.264425, -0.964260,
		-0.070583, -0.962303, -0.262660,
		-0.997365, 0.063652, 0.034815,
		31.777321, 38.847069, 11.512099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.264015, 38.588676, 10.790128>,  <32.475475, 38.802513, 11.487729>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.264015, 38.588676, 10.790128> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.948309, 38.773922, 10.951418>,  <31.758886, 38.885071, 11.048192>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.948309, 38.773922, 10.951418>,  <32.264015, 38.588676, 10.790128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.948309, 38.773922, 10.951418> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075004, 0.579034, -0.811846,
		-0.609459, -0.671003, -0.422273,
		-0.789262, 0.463115, 0.403225,
		31.711531, 38.912857, 11.072386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.823418, 38.645103, 10.235680>,  <32.264015, 38.588676, 10.790128>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.823418, 38.645103, 10.235680> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.703848, 38.912468, 10.508111>,  <31.632105, 39.072887, 10.671570>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.703848, 38.912468, 10.508111>,  <31.823418, 38.645103, 10.235680>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.703848, 38.912468, 10.508111> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166297, 0.666303, -0.726902,
		-0.939675, -0.330551, -0.088020,
		-0.298927, 0.668414, 0.681078,
		31.614170, 39.112991, 10.712434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.241144, 39.030983, 9.988099>,  <31.823418, 38.645103, 10.235680>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.241144, 39.030983, 9.988099> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.375483, 39.309441, 10.241898>,  <31.456085, 39.476517, 10.394176>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.375483, 39.309441, 10.241898>,  <31.241144, 39.030983, 9.988099>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.375483, 39.309441, 10.241898> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019977, 0.668207, -0.743707,
		-0.941705, 0.262446, 0.210507,
		0.335845, 0.696148, 0.634497,
		31.476236, 39.518284, 10.432246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.053925, 39.562004, 9.693965>,  <31.241144, 39.030983, 9.988099>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.053925, 39.562004, 9.693965> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.295053, 39.738579, 9.959821>,  <31.439730, 39.844524, 10.119334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.295053, 39.738579, 9.959821>,  <31.053925, 39.562004, 9.693965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.295053, 39.738579, 9.959821> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212038, 0.714423, -0.666813,
		-0.769186, 0.542897, 0.337068,
		0.602820, 0.441432, 0.664639,
		31.475899, 39.871010, 10.159212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.792044, 40.344528, 9.780431>,  <31.053925, 39.562004, 9.693965>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.792044, 40.344528, 9.780431> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.173513, 40.280159, 9.882105>,  <31.402395, 40.241539, 9.943110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.173513, 40.280159, 9.882105>,  <30.792044, 40.344528, 9.780431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.173513, 40.280159, 9.882105> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287664, 0.735098, -0.613906,
		-0.088062, 0.658586, 0.747335,
		0.953674, -0.160920, 0.254185,
		31.459616, 40.231884, 9.958361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.057566, 40.975746, 10.034332>,  <30.792044, 40.344528, 9.780431>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.057566, 40.975746, 10.034332> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.367167, 40.770596, 9.885807>,  <31.552927, 40.647503, 9.796692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.367167, 40.770596, 9.885807>,  <31.057566, 40.975746, 10.034332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.367167, 40.770596, 9.885807> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244773, 0.783198, -0.571566,
		0.583955, 0.351507, 0.731737,
		0.774004, -0.512878, -0.371313,
		31.599367, 40.616734, 9.774413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<33.518566, 33.939602, 24.536057> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.873756, 33.936188, 24.352131>,  <34.086872, 33.934139, 24.241776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.873756, 33.936188, 24.352131>,  <33.518566, 33.939602, 24.536057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.873756, 33.936188, 24.352131> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454129, 0.141502, -0.879627,
		0.072573, 0.989901, 0.121774,
		0.887975, -0.008536, -0.459812,
		34.140148, 33.933628, 24.214188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.616249, 34.583412, 24.184366>,  <33.518566, 33.939602, 24.536057>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.616249, 34.583412, 24.184366> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.846886, 34.318050, 23.993605>,  <33.985268, 34.158833, 23.879148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.846886, 34.318050, 23.993605>,  <33.616249, 34.583412, 24.184366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.846886, 34.318050, 23.993605> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359904, 0.317786, -0.877200,
		0.733493, 0.677425, -0.055530,
		0.576591, -0.663406, -0.476902,
		34.019863, 34.119030, 23.850534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.021275, 34.887672, 23.616642>,  <33.616249, 34.583412, 24.184366>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.021275, 34.887672, 23.616642> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.015572, 34.496990, 23.530996>,  <34.012150, 34.262581, 23.479609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.015572, 34.496990, 23.530996>,  <34.021275, 34.887672, 23.616642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.015572, 34.496990, 23.530996> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226430, 0.211728, -0.950737,
		0.973923, 0.034924, -0.224175,
		-0.014260, -0.976705, -0.214114,
		34.011292, 34.203979, 23.466763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.515678, 34.769909, 23.178757>,  <34.021275, 34.887672, 23.616642>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.515678, 34.769909, 23.178757> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.302048, 34.436905, 23.119858>,  <34.173870, 34.237103, 23.084518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.302048, 34.436905, 23.119858>,  <34.515678, 34.769909, 23.178757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.302048, 34.436905, 23.119858> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031215, 0.154632, -0.987479,
		0.844860, -0.531985, -0.056599,
		-0.534076, -0.832515, -0.147248,
		34.141827, 34.187149, 23.075684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.747368, 34.524601, 22.458849>,  <34.515678, 34.769909, 23.178757>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.747368, 34.524601, 22.458849> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.418011, 34.308502, 22.528305>,  <34.220394, 34.178841, 22.569979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.418011, 34.308502, 22.528305>,  <34.747368, 34.524601, 22.458849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.418011, 34.308502, 22.528305> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226668, 0.032601, -0.973426,
		0.520234, -0.840872, -0.149301,
		-0.823395, -0.540251, 0.173639,
		34.170994, 34.146427, 22.580397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.834339, 34.024582, 21.978371>,  <34.747368, 34.524601, 22.458849>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.834339, 34.024582, 21.978371> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.445850, 34.052147, 22.069571>,  <34.212757, 34.068684, 22.124290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.445850, 34.052147, 22.069571>,  <34.834339, 34.024582, 21.978371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.445850, 34.052147, 22.069571> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217270, 0.135953, -0.966597,
		-0.097605, -0.988316, -0.117069,
		-0.971219, 0.068909, 0.228001,
		34.154484, 34.072819, 22.137972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.518204, 33.624947, 21.448555>,  <34.834339, 34.024582, 21.978371>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.518204, 33.624947, 21.448555> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.243046, 33.865955, 21.610426>,  <34.077950, 34.010563, 21.707548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.243046, 33.865955, 21.610426>,  <34.518204, 33.624947, 21.448555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.243046, 33.865955, 21.610426> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451141, 0.081814, -0.888695,
		-0.568571, -0.793894, 0.215544,
		-0.687895, 0.602527, 0.404675,
		34.036678, 34.046715, 21.731829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.789932, 33.376316, 21.198046>,  <34.518204, 33.624947, 21.448555>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.789932, 33.376316, 21.198046> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.686104, 33.749046, 21.299500>,  <33.623806, 33.972683, 21.360373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.686104, 33.749046, 21.299500>,  <33.789932, 33.376316, 21.198046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.686104, 33.749046, 21.299500> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393241, 0.137891, -0.909037,
		-0.882034, -0.335700, 0.330638,
		-0.259572, 0.931822, 0.253635,
		33.608231, 34.028591, 21.375589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.140297, 33.443485, 20.936363>,  <33.789932, 33.376316, 21.198046>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.140297, 33.443485, 20.936363> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.227432, 33.826279, 21.013029>,  <33.279713, 34.055954, 21.059029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.227432, 33.826279, 21.013029>,  <33.140297, 33.443485, 20.936363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.227432, 33.826279, 21.013029> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454863, 0.273298, -0.847589,
		-0.863507, 0.097458, 0.494830,
		0.217840, 0.956980, 0.191665,
		33.292786, 34.113373, 21.070528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.589081, 33.784225, 20.811354>,  <33.140297, 33.443485, 20.936363>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.589081, 33.784225, 20.811354> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.879864, 34.052734, 20.753485>,  <33.054333, 34.213840, 20.718763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.879864, 34.052734, 20.753485>,  <32.589081, 33.784225, 20.811354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.879864, 34.052734, 20.753485> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388312, 0.228101, -0.892851,
		-0.566343, 0.705244, 0.426481,
		0.726959, 0.671268, -0.144672,
		33.097950, 34.254116, 20.710083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.247757, 34.391605, 20.618431>,  <32.589081, 33.784225, 20.811354>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.247757, 34.391605, 20.618431> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.615875, 34.444798, 20.471254>,  <32.836746, 34.476711, 20.382948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.615875, 34.444798, 20.471254>,  <32.247757, 34.391605, 20.618431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.615875, 34.444798, 20.471254> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390230, 0.379317, -0.838951,
		0.028002, 0.915661, 0.400975,
		0.920292, 0.132980, -0.367940,
		32.891964, 34.484692, 20.360872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.316055, 35.171448, 20.515263>,  <32.247757, 34.391605, 20.618431>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.316055, 35.171448, 20.515263> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.583015, 34.960815, 20.304632>,  <32.743191, 34.834435, 20.178253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.583015, 34.960815, 20.304632>,  <32.316055, 35.171448, 20.515263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.583015, 34.960815, 20.304632> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488142, 0.224658, -0.843354,
		0.562397, 0.819901, -0.107111,
		0.667403, -0.526585, -0.526575,
		32.783237, 34.802841, 20.146660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.912457, 35.815197, 20.497566>,  <32.316055, 35.171448, 20.515263>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.912457, 35.815197, 20.497566> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.528902, 35.891068, 20.582006>,  <31.298769, 35.936592, 20.632669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.528902, 35.891068, 20.582006>,  <31.912457, 35.815197, 20.497566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.528902, 35.891068, 20.582006> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114472, -0.422139, 0.899274,
		0.259688, 0.886465, 0.383069,
		-0.958884, 0.189681, 0.211100,
		31.241238, 35.947971, 20.645336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.906309, 36.002041, 21.200438>,  <31.912457, 35.815197, 20.497566>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.906309, 36.002041, 21.200438> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.522621, 35.922211, 21.120377>,  <31.292408, 35.874313, 21.072340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.522621, 35.922211, 21.120377>,  <31.906309, 36.002041, 21.200438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.522621, 35.922211, 21.120377> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131385, -0.312148, 0.940905,
		-0.250261, 0.928834, 0.273198,
		-0.959222, -0.199578, -0.200154,
		31.234854, 35.862339, 21.060331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.582146, 36.238308, 21.819895>,  <31.906309, 36.002041, 21.200438>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.582146, 36.238308, 21.819895> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.359465, 35.955502, 21.645441>,  <31.225857, 35.785820, 21.540768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.359465, 35.955502, 21.645441>,  <31.582146, 36.238308, 21.819895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.359465, 35.955502, 21.645441> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186217, -0.405443, 0.894952,
		-0.809571, 0.579438, 0.094053,
		-0.556702, -0.707013, -0.436137,
		31.192453, 35.743397, 21.514601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.028183, 36.107132, 22.283165>,  <31.582146, 36.238308, 21.819895>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.028183, 36.107132, 22.283165> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.011284, 35.789043, 22.041227>,  <31.001144, 35.598190, 21.896065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.011284, 35.789043, 22.041227>,  <31.028183, 36.107132, 22.283165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.011284, 35.789043, 22.041227> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270894, -0.573590, 0.773053,
		-0.961681, 0.196508, -0.191189,
		-0.042247, -0.795222, -0.604844,
		30.998610, 35.550476, 21.859774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.387564, 35.840012, 22.470369>,  <31.028183, 36.107132, 22.283165>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.387564, 35.840012, 22.470369> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.593018, 35.542336, 22.299553>,  <30.716290, 35.363731, 22.197063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.593018, 35.542336, 22.299553>,  <30.387564, 35.840012, 22.470369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.593018, 35.542336, 22.299553> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348336, -0.635713, 0.688863,
		-0.784117, -0.205072, -0.585752,
		0.513636, -0.744187, -0.427039,
		30.747108, 35.319080, 22.171442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.956495, 35.171837, 22.491623>,  <30.387564, 35.840012, 22.470369>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.956495, 35.171837, 22.491623> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.327288, 35.037636, 22.424513>,  <30.549763, 34.957115, 22.384247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.327288, 35.037636, 22.424513>,  <29.956495, 35.171837, 22.491623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.327288, 35.037636, 22.424513> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120446, -0.689797, 0.713914,
		-0.355251, -0.641575, -0.679837,
		0.926979, -0.335502, -0.167776,
		30.605381, 34.936985, 22.374180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.896931, 34.450035, 22.415346>,  <29.956495, 35.171837, 22.491623>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.896931, 34.450035, 22.415346> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.277437, 34.519138, 22.517521>,  <30.505741, 34.560600, 22.578825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.277437, 34.519138, 22.517521>,  <29.896931, 34.450035, 22.415346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.277437, 34.519138, 22.517521> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036506, -0.759421, 0.649575,
		0.306205, -0.627243, -0.716104,
		0.951265, 0.172761, 0.255436,
		30.562817, 34.570965, 22.594152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.182858, 33.773582, 22.436598>,  <29.896931, 34.450035, 22.415346>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.182858, 33.773582, 22.436598> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.414667, 34.018074, 22.652210>,  <30.553753, 34.164768, 22.781578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.414667, 34.018074, 22.652210>,  <30.182858, 33.773582, 22.436598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.414667, 34.018074, 22.652210> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047668, -0.634867, 0.771149,
		0.813559, -0.472594, -0.338785,
		0.579525, 0.611226, 0.539030,
		30.588524, 34.201443, 22.813919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.560125, 33.359581, 22.938755>,  <30.182858, 33.773582, 22.436598>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.560125, 33.359581, 22.938755> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.638369, 33.720058, 23.093462>,  <30.685314, 33.936344, 23.186287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.638369, 33.720058, 23.093462>,  <30.560125, 33.359581, 22.938755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.638369, 33.720058, 23.093462> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053504, -0.383991, 0.921785,
		0.979221, -0.201003, -0.026894,
		0.195609, 0.901193, 0.386767,
		30.697052, 33.990417, 23.209492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.860138, 33.139069, 23.568079>,  <30.560125, 33.359581, 22.938755>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.860138, 33.139069, 23.568079> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.722591, 33.512894, 23.604633>,  <30.640064, 33.737190, 23.626566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.722591, 33.512894, 23.604633>,  <30.860138, 33.139069, 23.568079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.722591, 33.512894, 23.604633> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113355, -0.137920, 0.983935,
		0.932152, 0.327983, 0.153363,
		-0.343865, 0.934562, 0.091384,
		30.619432, 33.793262, 23.632048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.247723, 33.560581, 24.185312>,  <30.860138, 33.139069, 23.568079>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.247723, 33.560581, 24.185312> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.883369, 33.710869, 24.117043>,  <30.664757, 33.801041, 24.076080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.883369, 33.710869, 24.117043>,  <31.247723, 33.560581, 24.185312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.883369, 33.710869, 24.117043> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189071, -0.012342, 0.981886,
		0.366804, 0.926653, 0.082279,
		-0.910883, 0.375716, -0.170676,
		30.610106, 33.823586, 24.065840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.261486, 34.015930, 24.657368>,  <31.247723, 33.560581, 24.185312>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.261486, 34.015930, 24.657368> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.873262, 33.980160, 24.567913>,  <30.640327, 33.958698, 24.514240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.873262, 33.980160, 24.567913>,  <31.261486, 34.015930, 24.657368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.873262, 33.980160, 24.567913> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233590, 0.123155, 0.964504,
		-0.058705, 0.988350, -0.140417,
		-0.970561, -0.089422, -0.223639,
		30.582094, 33.953335, 24.500822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.888601, 34.606697, 24.925213>,  <31.261486, 34.015930, 24.657368>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.888601, 34.606697, 24.925213> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.590832, 34.346764, 24.863825>,  <30.412170, 34.190804, 24.826992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.590832, 34.346764, 24.863825>,  <30.888601, 34.606697, 24.925213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.590832, 34.346764, 24.863825> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381032, 0.224689, 0.896844,
		-0.548314, 0.726109, -0.414870,
		-0.744423, -0.649831, -0.153471,
		30.367504, 34.151814, 24.817783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.254013, 34.902889, 25.021801>,  <30.888601, 34.606697, 24.925213>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.254013, 34.902889, 25.021801> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.180115, 34.515011, 25.085758>,  <30.135777, 34.282284, 25.124132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.180115, 34.515011, 25.085758>,  <30.254013, 34.902889, 25.021801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.180115, 34.515011, 25.085758> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389029, 0.221558, 0.894186,
		-0.902511, 0.102994, -0.418170,
		-0.184745, -0.969693, 0.159891,
		30.124691, 34.224102, 25.133726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.339006, 35.653915, 24.999792>,  <30.254013, 34.902889, 25.021801>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.339006, 35.653915, 24.999792> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.269278, 35.471455, 25.348856>,  <30.227440, 35.361977, 25.558294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.269278, 35.471455, 25.348856>,  <30.339006, 35.653915, 24.999792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.269278, 35.471455, 25.348856> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070154, 0.889732, 0.451060,
		-0.982187, 0.017408, -0.187099,
		-0.174320, -0.456151, 0.872662,
		30.216982, 35.334610, 25.610655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.532644, 36.359509, 24.948713>,  <30.339006, 35.653915, 24.999792>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.532644, 36.359509, 24.948713> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.931005, 36.344166, 24.915949>,  <31.170021, 36.334961, 24.896290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.931005, 36.344166, 24.915949>,  <30.532644, 36.359509, 24.948713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.931005, 36.344166, 24.915949> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006987, 0.935559, -0.353102,
		0.090173, 0.351082, 0.931993,
		0.995902, -0.038352, -0.081910,
		31.229776, 36.332661, 24.891376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.843307, 36.919460, 25.270523>,  <30.532644, 36.359509, 24.948713>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.843307, 36.919460, 25.270523> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.116842, 36.828693, 24.993141>,  <31.280964, 36.774235, 24.826712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.116842, 36.828693, 24.993141>,  <30.843307, 36.919460, 25.270523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.116842, 36.828693, 24.993141> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024002, 0.942900, -0.332210,
		0.729240, 0.243821, 0.639343,
		0.683836, -0.226916, -0.693453,
		31.321993, 36.760620, 24.785105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.307261, 37.427708, 25.253031>,  <30.843307, 36.919460, 25.270523>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.307261, 37.427708, 25.253031> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.346022, 37.270580, 24.887232>,  <31.369278, 37.176304, 24.667751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.346022, 37.270580, 24.887232>,  <31.307261, 37.427708, 25.253031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.346022, 37.270580, 24.887232> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025742, 0.919504, -0.392236,
		0.994961, 0.014468, 0.099216,
		0.096904, -0.392814, -0.914498,
		31.375093, 37.152737, 24.612883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.823212, 37.872597, 24.890795>,  <31.307261, 37.427708, 25.253031>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.823212, 37.872597, 24.890795> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.631853, 37.672028, 24.602430>,  <31.517038, 37.551685, 24.429413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.631853, 37.672028, 24.602430>,  <31.823212, 37.872597, 24.890795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.631853, 37.672028, 24.602430> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035587, 0.831344, -0.554617,
		0.877422, -0.239673, -0.415557,
		-0.478398, -0.501422, -0.720910,
		31.488333, 37.521603, 24.386158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.002586, 38.174458, 24.357899>,  <31.823212, 37.872597, 24.890795>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.002586, 38.174458, 24.357899> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.697407, 37.968227, 24.201904>,  <31.514297, 37.844490, 24.108307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.697407, 37.968227, 24.201904>,  <32.002586, 38.174458, 24.357899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.697407, 37.968227, 24.201904> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230777, 0.780742, -0.580676,
		0.603859, -0.353028, -0.714651,
		-0.762953, -0.515571, -0.389987,
		31.468521, 37.813557, 24.084908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.035145, 38.423702, 23.705433>,  <32.002586, 38.174458, 24.357899>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.035145, 38.423702, 23.705433> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.681885, 38.236187, 23.712200>,  <31.469929, 38.123676, 23.716261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.681885, 38.236187, 23.712200>,  <32.035145, 38.423702, 23.705433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.681885, 38.236187, 23.712200> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351093, 0.636636, -0.686607,
		0.311105, -0.612314, -0.726832,
		-0.883147, -0.468792, 0.016919,
		31.416941, 38.095551, 23.717276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.908289, 38.255722, 23.056328>,  <32.035145, 38.423702, 23.705433>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.908289, 38.255722, 23.056328> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.553860, 38.279808, 23.240173>,  <31.341202, 38.294258, 23.350481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.553860, 38.279808, 23.240173>,  <31.908289, 38.255722, 23.056328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.553860, 38.279808, 23.240173> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321085, 0.635413, -0.702250,
		-0.334329, -0.769822, -0.543690,
		-0.886075, 0.060212, 0.459615,
		31.288036, 38.297871, 23.378057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.381254, 38.376030, 22.553312>,  <31.908289, 38.255722, 23.056328>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.381254, 38.376030, 22.553312> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.179913, 38.498440, 22.876541>,  <31.059107, 38.571884, 23.070478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.179913, 38.498440, 22.876541>,  <31.381254, 38.376030, 22.553312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.179913, 38.498440, 22.876541> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470470, 0.687348, -0.553363,
		-0.724769, -0.658713, -0.202006,
		-0.503356, 0.306023, 0.808074,
		31.028906, 38.590248, 23.118963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.757565, 38.616066, 22.269932>,  <31.381254, 38.376030, 22.553312>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.757565, 38.616066, 22.269932> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.765078, 38.795559, 22.627319>,  <30.769585, 38.903255, 22.841751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.765078, 38.795559, 22.627319>,  <30.757565, 38.616066, 22.269932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.765078, 38.795559, 22.627319> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407976, 0.819285, -0.402899,
		-0.912799, -0.356947, 0.198459,
		0.018781, 0.448733, 0.893469,
		30.770712, 38.930180, 22.895359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.164675, 39.005829, 22.354864>,  <30.757565, 38.616066, 22.269932>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.164675, 39.005829, 22.354864> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.412521, 39.157539, 22.629740>,  <30.561230, 39.248566, 22.794664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.412521, 39.157539, 22.629740>,  <30.164675, 39.005829, 22.354864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.412521, 39.157539, 22.629740> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039696, 0.889527, -0.455156,
		-0.783902, 0.254742, 0.566219,
		0.619614, 0.379274, 0.687190,
		30.598406, 39.271320, 22.835897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.880804, 39.631634, 22.576279>,  <30.164675, 39.005829, 22.354864>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.880804, 39.631634, 22.576279> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.275782, 39.641380, 22.638712>,  <30.512768, 39.647228, 22.676172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.275782, 39.641380, 22.638712>,  <29.880804, 39.631634, 22.576279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.275782, 39.641380, 22.638712> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071755, 0.811035, -0.580580,
		-0.140738, 0.584490, 0.799102,
		0.987443, 0.024370, 0.156083,
		30.572014, 39.648693, 22.685537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.983484, 40.317486, 22.681961>,  <29.880804, 39.631634, 22.576279>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.983484, 40.317486, 22.681961> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.338346, 40.162502, 22.581696>,  <30.551264, 40.069511, 22.521536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.338346, 40.162502, 22.581696>,  <29.983484, 40.317486, 22.681961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.338346, 40.162502, 22.581696> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120247, 0.718514, -0.685039,
		0.445527, 0.577595, 0.684025,
		0.887156, -0.387455, -0.250664,
		30.604494, 40.046265, 22.506496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.269398, 40.850792, 22.295723>,  <29.983484, 40.317486, 22.681961>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.269398, 40.850792, 22.295723> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.580326, 40.606464, 22.235500>,  <30.766884, 40.459866, 22.199368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.580326, 40.606464, 22.235500>,  <30.269398, 40.850792, 22.295723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.580326, 40.606464, 22.235500> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391415, 0.656934, -0.644385,
		0.492509, 0.441965, 0.749734,
		0.777322, -0.610822, -0.150554,
		30.813522, 40.423218, 22.190334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.010027, 41.166931, 22.529175>,  <30.269398, 40.850792, 22.295723>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.010027, 41.166931, 22.529175> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.008450, 40.888748, 22.241751>,  <31.007504, 40.721840, 22.069296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.008450, 40.888748, 22.241751>,  <31.010027, 41.166931, 22.529175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.008450, 40.888748, 22.241751> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463012, 0.635630, -0.617733,
		0.886343, -0.335139, 0.319496,
		-0.003946, -0.695454, -0.718560,
		31.007265, 40.680111, 22.026182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.698095, 41.123760, 22.286343>,  <31.010027, 41.166931, 22.529175>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.698095, 41.123760, 22.286343> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.490925, 40.965515, 21.982964>,  <31.366623, 40.870567, 21.800936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.490925, 40.965515, 21.982964>,  <31.698095, 41.123760, 22.286343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.490925, 40.965515, 21.982964> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627371, 0.427059, -0.651172,
		0.581513, -0.813089, 0.027009,
		-0.517927, -0.395610, -0.758449,
		31.335546, 40.846832, 21.755428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.163635, 40.930717, 21.783575>,  <31.698095, 41.123760, 22.286343>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.163635, 40.930717, 21.783575> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.819397, 40.953518, 21.581141>,  <31.612854, 40.967197, 21.459679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.819397, 40.953518, 21.581141>,  <32.163635, 40.930717, 21.783575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.819397, 40.953518, 21.581141> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490225, 0.362041, -0.792847,
		0.138033, -0.930418, -0.339513,
		-0.860596, 0.056999, -0.506088,
		31.561218, 40.970619, 21.429314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.210117, 40.586388, 21.171747>,  <32.163635, 40.930717, 21.783575>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.210117, 40.586388, 21.171747> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.902178, 40.824604, 21.079948>,  <31.717415, 40.967533, 21.024868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.902178, 40.824604, 21.079948>,  <32.210117, 40.586388, 21.171747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.902178, 40.824604, 21.079948> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397388, 0.165893, -0.902531,
		-0.499423, -0.786008, -0.364373,
		-0.769844, 0.595542, -0.229499,
		31.671225, 41.003265, 21.011099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.002106, 40.397533, 20.531956>,  <32.210117, 40.586388, 21.171747>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.002106, 40.397533, 20.531956> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.797516, 40.741238, 20.528776>,  <31.674761, 40.947460, 20.526869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.797516, 40.741238, 20.528776>,  <32.002106, 40.397533, 20.531956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.797516, 40.741238, 20.528776> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249224, 0.139484, -0.958348,
		-0.822362, -0.492153, -0.285491,
		-0.511476, 0.859261, -0.007950,
		31.644073, 40.999016, 20.526392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.655676, 40.384159, 19.844969>,  <32.002106, 40.397533, 20.531956>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.655676, 40.384159, 19.844969> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.643011, 40.765953, 19.963600>,  <31.635412, 40.995029, 20.034779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.643011, 40.765953, 19.963600>,  <31.655676, 40.384159, 19.844969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.643011, 40.765953, 19.963600> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146881, 0.297947, -0.943215,
		-0.988647, 0.013698, -0.149628,
		-0.031661, 0.954484, 0.296577,
		31.633512, 41.052299, 20.052574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.091303, 40.805889, 19.419451>,  <31.655676, 40.384159, 19.844969>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.091303, 40.805889, 19.419451> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.354502, 41.082809, 19.537952>,  <31.512421, 41.248962, 19.609053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.354502, 41.082809, 19.537952>,  <31.091303, 40.805889, 19.419451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.354502, 41.082809, 19.537952> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001822, 0.394881, -0.918730,
		-0.753019, 0.603981, 0.261091,
		0.657996, 0.692297, 0.296253,
		31.551901, 41.290497, 19.626829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.956884, 41.316410, 18.973936>,  <31.091303, 40.805889, 19.419451>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.956884, 41.316410, 18.973936> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.306213, 41.430000, 19.132261>,  <31.515810, 41.498154, 19.227257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.306213, 41.430000, 19.132261>,  <30.956884, 41.316410, 18.973936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.306213, 41.430000, 19.132261> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295724, 0.336620, -0.893999,
		-0.387112, 0.897800, 0.210000,
		0.873322, 0.283976, 0.395811,
		31.568211, 41.515194, 19.251005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.071548, 42.122303, 18.829687>,  <30.956884, 41.316410, 18.973936>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.071548, 42.122303, 18.829687> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.432934, 41.954922, 18.866892>,  <31.649765, 41.854492, 18.889214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.432934, 41.954922, 18.866892>,  <31.071548, 42.122303, 18.829687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.432934, 41.954922, 18.866892> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358319, 0.618109, -0.699677,
		0.235293, 0.665460, 0.708379,
		0.903463, -0.418455, 0.093010,
		31.703972, 41.829384, 18.894794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.558233, 42.615326, 18.784149>,  <31.071548, 42.122303, 18.829687>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.558233, 42.615326, 18.784149> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.757526, 42.281303, 18.690813>,  <31.877102, 42.080891, 18.634811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.757526, 42.281303, 18.690813>,  <31.558233, 42.615326, 18.784149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.757526, 42.281303, 18.690813> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446839, 0.477928, -0.756254,
		0.743034, 0.272525, 0.611254,
		0.498233, -0.835054, -0.233342,
		31.906996, 42.030788, 18.620810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.153728, 42.845711, 18.607286>,  <31.558233, 42.615326, 18.784149>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.153728, 42.845711, 18.607286> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.222515, 42.470360, 18.487371>,  <32.263786, 42.245148, 18.415422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.222515, 42.470360, 18.487371>,  <32.153728, 42.845711, 18.607286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.222515, 42.470360, 18.487371> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199921, 0.331235, -0.922125,
		0.964603, 0.098640, 0.244563,
		0.171966, -0.938378, -0.299790,
		32.274105, 42.188847, 18.397434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.753010, 42.849831, 18.244623>,  <32.153728, 42.845711, 18.607286>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.753010, 42.849831, 18.244623> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.538948, 42.542675, 18.103790>,  <32.410511, 42.358383, 18.019291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.538948, 42.542675, 18.103790>,  <32.753010, 42.849831, 18.244623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.538948, 42.542675, 18.103790> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099792, 0.356403, -0.928988,
		0.838840, -0.532286, -0.114102,
		-0.535154, -0.767885, -0.352083,
		32.378403, 42.312309, 17.998165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.954105, 42.865330, 17.569431>,  <32.753010, 42.849831, 18.244623>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.954105, 42.865330, 17.569431> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.670876, 42.583584, 17.549425>,  <32.500938, 42.414536, 17.537420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.670876, 42.583584, 17.549425>,  <32.954105, 42.865330, 17.569431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.670876, 42.583584, 17.549425> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031433, 0.102201, -0.994267,
		0.705437, -0.702444, -0.094506,
		-0.708075, -0.704363, -0.050017,
		32.458454, 42.372276, 17.534420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.118347, 42.311489, 17.091257>,  <32.954105, 42.865330, 17.569431>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.118347, 42.311489, 17.091257> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.719078, 42.287327, 17.090937>,  <32.479515, 42.272827, 17.090744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.719078, 42.287327, 17.090937>,  <33.118347, 42.311489, 17.091257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.719078, 42.287327, 17.090937> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005847, 0.109825, -0.993934,
		0.060129, -0.992114, -0.109978,
		-0.998174, -0.060407, -0.000803,
		32.419624, 42.269203, 17.090696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.618092, 41.714378, 16.840113>,  <33.118347, 42.311489, 17.091257>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.618092, 41.714378, 16.840113> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.967674, 41.906849, 16.812773>,  <34.177422, 42.022331, 16.796368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.967674, 41.906849, 16.812773>,  <33.618092, 41.714378, 16.840113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.967674, 41.906849, 16.812773> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173679, -0.177859, 0.968608,
		0.453915, -0.858391, -0.239011,
		0.873955, 0.481177, -0.068352,
		34.229862, 42.051201, 16.792267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.143124, 41.254578, 17.076841>,  <33.618092, 41.714378, 16.840113>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.143124, 41.254578, 17.076841> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.302685, 41.620487, 17.102329>,  <34.398422, 41.840034, 17.117622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.302685, 41.620487, 17.102329>,  <34.143124, 41.254578, 17.076841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.302685, 41.620487, 17.102329> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352326, -0.217049, 0.910361,
		0.846606, -0.340698, -0.408881,
		0.398905, 0.914776, 0.063718,
		34.422356, 41.894920, 17.121445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.819523, 41.073418, 17.302986>,  <34.143124, 41.254578, 17.076841>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.819523, 41.073418, 17.302986> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.765076, 41.463474, 17.372915>,  <34.732407, 41.697510, 17.414873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.765076, 41.463474, 17.372915>,  <34.819523, 41.073418, 17.302986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.765076, 41.463474, 17.372915> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400349, -0.107274, 0.910062,
		0.906197, 0.193863, -0.375797,
		-0.136114, 0.975146, 0.174824,
		34.724243, 41.756020, 17.425364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.438313, 41.286095, 17.526642>,  <34.819523, 41.073418, 17.302986>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.438313, 41.286095, 17.526642> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.150650, 41.525970, 17.667036>,  <34.978054, 41.669895, 17.751272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.150650, 41.525970, 17.667036>,  <35.438313, 41.286095, 17.526642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.150650, 41.525970, 17.667036> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301918, -0.185267, 0.935159,
		0.625828, 0.778494, -0.047820,
		-0.719156, 0.599686, 0.350986,
		34.934902, 41.705875, 17.772331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.818760, 41.703503, 17.978651>,  <35.438313, 41.286095, 17.526642>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.818760, 41.703503, 17.978651> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.430229, 41.725090, 18.071264>,  <35.197109, 41.738045, 18.126833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.430229, 41.725090, 18.071264>,  <35.818760, 41.703503, 17.978651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.430229, 41.725090, 18.071264> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202230, -0.324457, 0.924029,
		0.124994, 0.944359, 0.304240,
		-0.971329, 0.053972, 0.231533,
		35.138832, 41.741283, 18.140724>
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
