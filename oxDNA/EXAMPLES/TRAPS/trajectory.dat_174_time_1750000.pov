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
	sky <-0, 1, 0>
	up <-0, 1, 0>
	right 1.6 * <0.99995, 0, 0.00999983>
	location <54.4867, 55, 106.329>
	look_at <55, 55, 55.0001>
	direction <0.513302, 0, -51.3289>
	angle 67.0682
}


# declare cpy_camera_pos = <54.4867, 55, 106.329>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 88
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-0.98995, -1, 1.00995>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <0.98995, 1, -1.00995>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<36.539188, 52.815838, 50.251789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.845268, 52.619965, 50.084610>,  <37.028915, 52.502441, 49.984303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.845268, 52.619965, 50.084610>,  <36.539188, 52.815838, 50.251789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.845268, 52.619965, 50.084610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428773, -0.096626, 0.898230,
		-0.480237, -0.866527, 0.136027,
		0.765197, -0.489688, -0.417947,
		37.074829, 52.473057, 49.959225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.646366, 52.212608, 50.624237>,  <36.539188, 52.815838, 50.251789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.646366, 52.212608, 50.624237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.005760, 52.303391, 50.473927>,  <37.221397, 52.357861, 50.383739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.005760, 52.303391, 50.473927>,  <36.646366, 52.212608, 50.624237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.005760, 52.303391, 50.473927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407627, -0.113550, 0.906061,
		0.162967, -0.967263, -0.194538,
		0.898489, 0.226957, -0.375778,
		37.275307, 52.371479, 50.361195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.171703, 51.692776, 50.838055>,  <36.646366, 52.212608, 50.624237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.171703, 51.692776, 50.838055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.375908, 52.027550, 50.759144>,  <37.498428, 52.228413, 50.711796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.375908, 52.027550, 50.759144>,  <37.171703, 51.692776, 50.838055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.375908, 52.027550, 50.759144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530396, -0.125916, 0.838347,
		0.676802, -0.532621, -0.508188,
		0.510510, 0.836935, -0.197280,
		37.529060, 52.278629, 50.699959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.844055, 51.630054, 50.865410>,  <37.171703, 51.692776, 50.838055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.844055, 51.630054, 50.865410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.770905, 52.000553, 50.997238>,  <37.727013, 52.222855, 51.076336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.770905, 52.000553, 50.997238>,  <37.844055, 51.630054, 50.865410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.770905, 52.000553, 50.997238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439583, -0.222814, 0.870127,
		0.879388, 0.304002, -0.366415,
		-0.182877, 0.926249, 0.329574,
		37.716042, 52.278427, 51.096111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.414440, 51.833149, 51.237553>,  <37.844055, 51.630054, 50.865410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.414440, 51.833149, 51.237553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.113743, 52.066692, 51.360184>,  <37.933323, 52.206818, 51.433762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.113743, 52.066692, 51.360184>,  <38.414440, 51.833149, 51.237553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.113743, 52.066692, 51.360184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458179, 0.128069, 0.879585,
		0.474290, 0.801691, -0.363787,
		-0.751745, 0.583858, 0.306576,
		37.888218, 52.241848, 51.452156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.183453, 51.978817, 51.269627>,  <38.414440, 51.833149, 51.237553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.183453, 51.978817, 51.269627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.469887, 52.018379, 51.546013>,  <39.641747, 52.042114, 51.711845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.469887, 52.018379, 51.546013>,  <39.183453, 51.978817, 51.269627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.469887, 52.018379, 51.546013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297626, 0.938676, 0.174088,
		-0.631380, -0.330313, 0.701608,
		0.716086, 0.098901, 0.690970,
		39.684711, 52.048050, 51.753304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.769840, 52.144085, 51.823341>,  <39.183453, 51.978817, 51.269627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.769840, 52.144085, 51.823341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.148251, 52.270462, 51.852203>,  <39.375298, 52.346291, 51.869522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.148251, 52.270462, 51.852203>,  <38.769840, 52.144085, 51.823341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.148251, 52.270462, 51.852203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323678, 0.932228, 0.161811,
		-0.016145, -0.176434, 0.984180,
		0.946029, 0.315945, 0.072159,
		39.432060, 52.365246, 51.873852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.871971, 52.446949, 52.539608>,  <38.769840, 52.144085, 51.823341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.871971, 52.446949, 52.539608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.055569, 52.576889, 52.208839>,  <39.165726, 52.654854, 52.010376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.055569, 52.576889, 52.208839>,  <38.871971, 52.446949, 52.539608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.055569, 52.576889, 52.208839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308219, 0.931174, 0.194721,
		0.833264, 0.165499, 0.527524,
		0.458990, 0.324847, -0.826924,
		39.193264, 52.674343, 51.960762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.285721, 52.823471, 53.049091>,  <38.871971, 52.446949, 52.539608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.285721, 52.823471, 53.049091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.048672, 52.805584, 53.370789>,  <38.906445, 52.794853, 53.563805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.048672, 52.805584, 53.370789>,  <39.285721, 52.823471, 53.049091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.048672, 52.805584, 53.370789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017431, 0.997512, 0.068304,
		-0.805294, 0.054497, -0.590366,
		-0.592620, -0.044714, 0.804240,
		38.870884, 52.792171, 53.612061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.749786, 52.732876, 52.477547>,  <39.285721, 52.823471, 53.049091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.749786, 52.732876, 52.477547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.100903, 52.603931, 52.335800>,  <40.311573, 52.526566, 52.250751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.100903, 52.603931, 52.335800>,  <39.749786, 52.732876, 52.477547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.100903, 52.603931, 52.335800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214899, -0.926086, 0.310132,
		-0.428145, -0.196078, -0.882182,
		0.877787, -0.322362, -0.354362,
		40.364239, 52.507221, 52.229492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.410656, 52.997887, 52.908039>,  <39.749786, 52.732876, 52.477547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.410656, 52.997887, 52.908039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.557018, 53.366230, 52.961906>,  <40.644836, 53.587234, 52.994225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.557018, 53.366230, 52.961906>,  <40.410656, 52.997887, 52.908039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.557018, 53.366230, 52.961906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675287, -0.362280, 0.642449,
		0.640391, -0.144137, -0.754403,
		0.365906, 0.920857, 0.134667,
		40.666790, 53.642487, 53.002308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.191887, 53.019615, 53.025585>,  <40.410656, 52.997887, 52.908039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.191887, 53.019615, 53.025585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.209831, 53.358482, 53.237354>,  <41.220596, 53.561802, 53.364414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.209831, 53.358482, 53.237354>,  <41.191887, 53.019615, 53.025585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.209831, 53.358482, 53.237354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450368, -0.490197, 0.746241,
		0.891715, 0.204960, -0.403529,
		0.044859, 0.847171, 0.529423,
		41.223289, 53.612633, 53.396183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.848900, 53.283340, 53.386703>,  <41.191887, 53.019615, 53.025585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.848900, 53.283340, 53.386703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.544384, 53.402756, 53.616943>,  <41.361675, 53.474403, 53.755085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.544384, 53.402756, 53.616943>,  <41.848900, 53.283340, 53.386703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.544384, 53.402756, 53.616943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406730, -0.471478, 0.782483,
		0.504982, 0.829809, 0.237507,
		-0.761291, 0.298539, 0.575596,
		41.315998, 53.492317, 53.789623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.155434, 53.434326, 54.003017>,  <41.848900, 53.283340, 53.386703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.155434, 53.434326, 54.003017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.775425, 53.362011, 54.104820>,  <41.547421, 53.318623, 54.165901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.775425, 53.362011, 54.104820>,  <42.155434, 53.434326, 54.003017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.775425, 53.362011, 54.104820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310358, -0.458890, 0.832525,
		-0.033716, 0.869906, 0.492064,
		-0.950022, -0.180786, 0.254510,
		41.490417, 53.307774, 54.181175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.651203, 52.927853, 54.174061>,  <42.155434, 53.434326, 54.003017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.651203, 52.927853, 54.174061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.405708, 52.930672, 54.489853>,  <42.258411, 52.932365, 54.679329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.405708, 52.930672, 54.489853>,  <42.651203, 52.927853, 54.174061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.405708, 52.930672, 54.489853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774994, 0.196247, 0.600726,
		-0.150698, 0.980529, -0.125908,
		-0.613738, 0.007050, 0.789478,
		42.221588, 52.932785, 54.726696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.798965, 53.578354, 54.421932>,  <42.651203, 52.927853, 54.174061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.798965, 53.578354, 54.421932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.709316, 53.299538, 54.694374>,  <42.655525, 53.132248, 54.857841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.709316, 53.299538, 54.694374>,  <42.798965, 53.578354, 54.421932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.709316, 53.299538, 54.694374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569321, 0.473589, 0.672002,
		-0.790976, 0.538380, 0.290697,
		-0.224122, -0.697037, 0.681108,
		42.642078, 53.090427, 54.898708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.668884, 53.953293, 55.072453>,  <42.798965, 53.578354, 54.421932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.668884, 53.953293, 55.072453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.715946, 53.576820, 55.199158>,  <42.744183, 53.350937, 55.275181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.715946, 53.576820, 55.199158>,  <42.668884, 53.953293, 55.072453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.715946, 53.576820, 55.199158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484515, 0.332838, 0.808989,
		-0.866834, 0.058293, 0.495177,
		0.117655, -0.941180, 0.316759,
		42.751244, 53.294468, 55.294186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.409702, 53.793552, 55.877613>,  <42.668884, 53.953293, 55.072453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.409702, 53.793552, 55.877613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.720528, 53.586899, 55.733803>,  <42.907024, 53.462906, 55.647518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.720528, 53.586899, 55.733803>,  <42.409702, 53.793552, 55.877613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.720528, 53.586899, 55.733803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562172, 0.312793, 0.765586,
		-0.283069, -0.797027, 0.533497,
		0.777068, -0.516631, -0.359525,
		42.953648, 53.431908, 55.625946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.729469, 53.638073, 56.476864>,  <42.409702, 53.793552, 55.877613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.729469, 53.638073, 56.476864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.986519, 53.617626, 56.171074>,  <43.140751, 53.605358, 55.987602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.986519, 53.617626, 56.171074>,  <42.729469, 53.638073, 56.476864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.986519, 53.617626, 56.171074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728408, 0.350173, 0.588898,
		0.237595, -0.935289, 0.262265,
		0.642628, -0.051117, -0.764471,
		43.179306, 53.602291, 55.941734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.185982, 53.166340, 56.521362>,  <42.729469, 53.638073, 56.476864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.185982, 53.166340, 56.521362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.316498, 53.484482, 56.317032>,  <43.394806, 53.675365, 56.194431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.316498, 53.484482, 56.317032>,  <43.185982, 53.166340, 56.521362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.316498, 53.484482, 56.317032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453435, 0.342477, 0.822864,
		0.829416, -0.500120, -0.248894,
		0.326290, 0.795355, -0.510828,
		43.414387, 53.723087, 56.163784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.923313, 53.192345, 56.607262>,  <43.185982, 53.166340, 56.521362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.923313, 53.192345, 56.607262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.760017, 53.544151, 56.509453>,  <43.662041, 53.755234, 56.450768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.760017, 53.544151, 56.509453>,  <43.923313, 53.192345, 56.607262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.760017, 53.544151, 56.509453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722044, 0.474996, 0.503021,
		0.558563, 0.028797, -0.828962,
		-0.408239, 0.879517, -0.244523,
		43.637547, 53.808006, 56.436096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.321842, 53.855942, 56.239975>,  <43.923313, 53.192345, 56.607262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.321842, 53.855942, 56.239975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.022614, 53.965527, 56.481743>,  <43.843075, 54.031277, 56.626804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.022614, 53.965527, 56.481743>,  <44.321842, 53.855942, 56.239975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.022614, 53.965527, 56.481743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650635, 0.482037, 0.586783,
		-0.130599, 0.832218, -0.538848,
		-0.748076, 0.273960, 0.604424,
		43.798191, 54.047714, 56.663071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.176380, 54.680420, 56.232750>,  <44.321842, 53.855942, 56.239975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.176380, 54.680420, 56.232750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.158104, 54.428982, 56.543304>,  <44.147141, 54.278118, 56.729637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.158104, 54.428982, 56.543304>,  <44.176380, 54.680420, 56.232750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.158104, 54.428982, 56.543304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658980, 0.565144, 0.496344,
		-0.750772, 0.534301, 0.388413,
		-0.045688, -0.628598, 0.776388,
		44.144398, 54.240402, 56.776222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.166901, 54.574867, 55.509792>,  <44.176380, 54.680420, 56.232750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.166901, 54.574867, 55.509792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.560307, 54.560863, 55.438828>,  <44.796349, 54.552460, 55.396248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.560307, 54.560863, 55.438828>,  <44.166901, 54.574867, 55.509792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.560307, 54.560863, 55.438828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149928, -0.390681, 0.908234,
		-0.101113, -0.919860, -0.378991,
		0.983513, -0.035013, -0.177416,
		44.855362, 54.550358, 55.385601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.516960, 53.815388, 55.505863>,  <44.166901, 54.574867, 55.509792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.516960, 53.815388, 55.505863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.733944, 54.121235, 55.645058>,  <44.864136, 54.304745, 55.728573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.733944, 54.121235, 55.645058>,  <44.516960, 53.815388, 55.505863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.733944, 54.121235, 55.645058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010971, -0.407745, 0.913030,
		0.840011, -0.499098, -0.212796,
		0.542458, 0.764621, 0.347987,
		44.896683, 54.350620, 55.749454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.033321, 53.590389, 55.096508>,  <44.516960, 53.815388, 55.505863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.033321, 53.590389, 55.096508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.847263, 53.922176, 54.972816>,  <44.735630, 54.121250, 54.898602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.847263, 53.922176, 54.972816>,  <45.033321, 53.590389, 55.096508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.847263, 53.922176, 54.972816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774294, 0.550538, 0.312053,
		0.429083, -0.094288, -0.898331,
		-0.465142, 0.829469, -0.309233,
		44.707722, 54.171017, 54.880047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.563972, 54.051147, 54.909149>,  <45.033321, 53.590389, 55.096508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.563972, 54.051147, 54.909149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.235210, 54.273743, 54.957802>,  <45.037952, 54.407299, 54.986996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.235210, 54.273743, 54.957802>,  <45.563972, 54.051147, 54.909149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.235210, 54.273743, 54.957802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561103, 0.754146, 0.341213,
		0.098149, 0.348696, -0.932083,
		-0.821907, 0.556484, 0.121636,
		44.988640, 54.440689, 54.994293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.512814, 54.719223, 54.442375>,  <45.563972, 54.051147, 54.909149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.512814, 54.719223, 54.442375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.354080, 54.721806, 54.809525>,  <45.258842, 54.723354, 55.029812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.354080, 54.721806, 54.809525>,  <45.512814, 54.719223, 54.442375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.354080, 54.721806, 54.809525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679488, 0.674358, 0.289028,
		-0.617108, 0.738376, -0.271990,
		-0.396830, 0.006453, 0.917870,
		45.235031, 54.723740, 55.084885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.712837, 55.297382, 54.774532>,  <45.512814, 54.719223, 54.442375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.712837, 55.297382, 54.774532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.541676, 55.154602, 55.106674>,  <45.438976, 55.068935, 55.305958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.541676, 55.154602, 55.106674>,  <45.712837, 55.297382, 54.774532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.541676, 55.154602, 55.106674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521060, 0.653243, 0.549336,
		-0.738507, 0.667727, -0.093533,
		-0.427906, -0.356952, 0.830350,
		45.413303, 55.047516, 55.355778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.453995, 55.882183, 55.232994>,  <45.712837, 55.297382, 54.774532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.453995, 55.882183, 55.232994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.525501, 55.572502, 55.475861>,  <45.568405, 55.386696, 55.621582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.525501, 55.572502, 55.475861>,  <45.453995, 55.882183, 55.232994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.525501, 55.572502, 55.475861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544269, 0.591906, 0.594490,
		-0.819642, 0.224190, 0.527186,
		0.178766, -0.774200, 0.607171,
		45.579132, 55.340240, 55.658012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.160011, 55.996983, 55.850895>,  <45.453995, 55.882183, 55.232994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.160011, 55.996983, 55.850895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.495518, 55.779202, 55.848228>,  <45.696823, 55.648533, 55.846630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.495518, 55.779202, 55.848228>,  <45.160011, 55.996983, 55.850895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.495518, 55.779202, 55.848228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494607, 0.756750, 0.427426,
		-0.227668, -0.361808, 0.904026,
		0.838767, -0.544449, -0.006665,
		45.747147, 55.615868, 55.846230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.438236, 55.912849, 56.520710>,  <45.160011, 55.996983, 55.850895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.438236, 55.912849, 56.520710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.725189, 55.891979, 56.242821>,  <45.897362, 55.879456, 56.076088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.725189, 55.891979, 56.242821>,  <45.438236, 55.912849, 56.520710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.725189, 55.891979, 56.242821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582049, 0.592892, 0.556506,
		0.382859, -0.803590, 0.455699,
		0.717383, -0.052176, -0.694723,
		45.940403, 55.876328, 56.034405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.000687, 55.779655, 56.871021>,  <45.438236, 55.912849, 56.520710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.000687, 55.779655, 56.871021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.170921, 55.927811, 56.540764>,  <46.273064, 56.016705, 56.342609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.170921, 55.927811, 56.540764>,  <46.000687, 55.779655, 56.871021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.170921, 55.927811, 56.540764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660792, 0.496159, 0.563187,
		0.618249, -0.785264, -0.033590,
		0.425585, 0.370386, -0.825646,
		46.298595, 56.038925, 56.293072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.636662, 55.744675, 56.912708>,  <46.000687, 55.779655, 56.871021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.636662, 55.744675, 56.912708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.634472, 56.031303, 56.633713>,  <46.633156, 56.203281, 56.466316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.634472, 56.031303, 56.633713>,  <46.636662, 55.744675, 56.912708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.634472, 56.031303, 56.633713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686901, 0.509599, 0.518146,
		0.726730, -0.476270, -0.495005,
		-0.005477, 0.716572, -0.697492,
		46.632828, 56.246277, 56.424465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.332798, 55.902794, 56.531849>,  <46.636662, 55.744675, 56.912708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.332798, 55.902794, 56.531849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.073071, 56.201569, 56.589073>,  <46.917233, 56.380833, 56.623409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.073071, 56.201569, 56.589073>,  <47.332798, 55.902794, 56.531849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.073071, 56.201569, 56.589073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616146, 0.406391, 0.674693,
		0.445816, 0.526238, -0.724101,
		-0.649317, 0.746940, 0.143064,
		46.878277, 56.425652, 56.631992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.652550, 56.488716, 56.288628>,  <47.332798, 55.902794, 56.531849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.652550, 56.488716, 56.288628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.383472, 56.553001, 56.577530>,  <47.222027, 56.591572, 56.750874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.383472, 56.553001, 56.577530>,  <47.652550, 56.488716, 56.288628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.383472, 56.553001, 56.577530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726528, 0.328354, 0.603606,
		-0.140150, 0.930782, -0.337642,
		-0.672692, 0.160711, 0.722258,
		47.181664, 56.601215, 56.794209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.590694, 56.926388, 55.686951>,  <47.652550, 56.488716, 56.288628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.590694, 56.926388, 55.686951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.681694, 57.315567, 55.703026>,  <47.736294, 57.549076, 55.712669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.681694, 57.315567, 55.703026>,  <47.590694, 56.926388, 55.686951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.681694, 57.315567, 55.703026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973467, -0.228277, 0.015841,
		0.024586, 0.035514, -0.999067,
		0.227501, 0.972948, 0.040184,
		47.749943, 57.607452, 55.715080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.918129, 57.119297, 55.113667>,  <47.590694, 56.926388, 55.686951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.918129, 57.119297, 55.113667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.053497, 57.352783, 55.408897>,  <48.134716, 57.492874, 55.586037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.053497, 57.352783, 55.408897>,  <47.918129, 57.119297, 55.113667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.053497, 57.352783, 55.408897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940898, -0.198553, -0.274387,
		-0.013616, 0.787311, -0.616406,
		0.338417, 0.583711, 0.738075,
		48.155022, 57.527897, 55.630322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.311035, 57.624508, 54.824989>,  <47.918129, 57.119297, 55.113667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.311035, 57.624508, 54.824989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.451332, 57.563145, 55.194519>,  <48.535511, 57.526325, 55.416237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.451332, 57.563145, 55.194519>,  <48.311035, 57.624508, 54.824989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.451332, 57.563145, 55.194519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919796, -0.128900, -0.370621,
		0.175937, 0.979720, 0.095894,
		0.350744, -0.153409, 0.923821,
		48.556557, 57.517120, 55.471664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.948238, 57.931686, 54.865685>,  <48.311035, 57.624508, 54.824989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.948238, 57.931686, 54.865685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.907394, 57.633404, 55.129044>,  <48.882889, 57.454433, 55.287060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.907394, 57.633404, 55.129044>,  <48.948238, 57.931686, 54.865685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.907394, 57.633404, 55.129044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932324, -0.302552, -0.198076,
		0.346907, 0.593617, 0.726137,
		-0.102113, -0.745709, 0.658401,
		48.876759, 57.409691, 55.326565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.452175, 58.060791, 55.362522>,  <48.948238, 57.931686, 54.865685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.452175, 58.060791, 55.362522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.358124, 57.675575, 55.309967>,  <49.301693, 57.444447, 55.278435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.358124, 57.675575, 55.309967>,  <49.452175, 58.060791, 55.362522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.358124, 57.675575, 55.309967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971562, -0.228977, -0.060300,
		0.027986, -0.141831, 0.989495,
		-0.235124, -0.963044, -0.131389,
		49.287586, 57.386662, 55.270550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.894897, 57.645256, 55.857510>,  <49.452175, 58.060791, 55.362522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.894897, 57.645256, 55.857510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.767891, 57.417328, 55.554329>,  <49.691685, 57.280571, 55.372421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.767891, 57.417328, 55.554329>,  <49.894897, 57.645256, 55.857510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.767891, 57.417328, 55.554329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935859, -0.059508, -0.347313,
		0.152802, -0.819612, 0.552167,
		-0.317520, -0.569820, -0.757948,
		49.672634, 57.246384, 55.326946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.426579, 57.984116, 56.402309>,  <49.894897, 57.645256, 55.857510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.426579, 57.984116, 56.402309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.457779, 58.142395, 56.036285>,  <50.476501, 58.237362, 55.816669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.457779, 58.142395, 56.036285>,  <50.426579, 57.984116, 56.402309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.457779, 58.142395, 56.036285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702476, 0.629479, 0.332089,
		0.707419, -0.668714, -0.228867,
		0.078005, 0.395699, -0.915061,
		50.481182, 58.261105, 55.761768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.986500, 57.869514, 56.728859>,  <50.426579, 57.984116, 56.402309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.986500, 57.869514, 56.728859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.009026, 57.857300, 57.128036>,  <51.022541, 57.849972, 57.367542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.009026, 57.857300, 57.128036>,  <50.986500, 57.869514, 56.728859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.009026, 57.857300, 57.128036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319221, 0.947617, 0.010979,
		-0.946006, 0.317947, 0.063112,
		0.056315, -0.030532, 0.997946,
		51.025921, 57.848141, 57.427422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.527634, 58.422455, 57.221275>,  <50.986500, 57.869514, 56.728859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.527634, 58.422455, 57.221275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.895424, 58.322399, 57.342598>,  <51.116096, 58.262367, 57.415394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.895424, 58.322399, 57.342598>,  <50.527634, 58.422455, 57.221275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.895424, 58.322399, 57.342598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293267, 0.950202, -0.105409,
		-0.261839, 0.185872, 0.947044,
		0.919475, -0.250137, 0.303310,
		51.171265, 58.247356, 57.433590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.704071, 59.004120, 57.514511>,  <50.527634, 58.422455, 57.221275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.704071, 59.004120, 57.514511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.042614, 58.802376, 57.446053>,  <51.245739, 58.681328, 57.404976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.042614, 58.802376, 57.446053>,  <50.704071, 59.004120, 57.514511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.042614, 58.802376, 57.446053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448892, 0.848438, -0.280443,
		0.286653, 0.160529, 0.944489,
		0.846360, -0.504364, -0.171147,
		51.296520, 58.651066, 57.394707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.290642, 58.978065, 57.976234>,  <50.704071, 59.004120, 57.514511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.290642, 58.978065, 57.976234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.416821, 58.922562, 57.600739>,  <51.492527, 58.889259, 57.375439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.416821, 58.922562, 57.600739>,  <51.290642, 58.978065, 57.976234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.416821, 58.922562, 57.600739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447131, 0.894286, 0.018066,
		0.836999, -0.425441, 0.344140,
		0.315446, -0.138755, -0.938744,
		51.511456, 58.880936, 57.319115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.905739, 59.138073, 57.991692>,  <51.290642, 58.978065, 57.976234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.905739, 59.138073, 57.991692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.727497, 59.215233, 57.642014>,  <51.620552, 59.261528, 57.432205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.727497, 59.215233, 57.642014>,  <51.905739, 59.138073, 57.991692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.727497, 59.215233, 57.642014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496957, 0.865534, -0.062328,
		0.744627, -0.462214, -0.481550,
		-0.445607, 0.192898, -0.874200,
		51.593815, 59.273102, 57.379753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.997658, 58.474682, 58.436707>,  <51.905739, 59.138073, 57.991692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.997658, 58.474682, 58.436707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.065876, 58.620823, 58.802750>,  <52.106808, 58.708508, 59.022377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.065876, 58.620823, 58.802750>,  <51.997658, 58.474682, 58.436707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.065876, 58.620823, 58.802750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134602, -0.928650, 0.345674,
		0.976113, 0.064222, -0.207556,
		0.170547, 0.365355, 0.915112,
		52.117039, 58.730431, 59.077282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.504250, 57.841724, 58.282166>,  <51.997658, 58.474682, 58.436707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.504250, 57.841724, 58.282166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.800186, 57.595802, 58.172874>,  <52.977745, 57.448250, 58.107300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.800186, 57.595802, 58.172874>,  <52.504250, 57.841724, 58.282166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.800186, 57.595802, 58.172874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649192, 0.545760, 0.529807,
		-0.176612, -0.569349, 0.802901,
		0.739837, -0.614807, -0.273229,
		53.022137, 57.411362, 58.090904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.977848, 57.913700, 58.815205>,  <52.504250, 57.841724, 58.282166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.977848, 57.913700, 58.815205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.125061, 57.815559, 58.456459>,  <53.213387, 57.756676, 58.241211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.125061, 57.815559, 58.456459>,  <52.977848, 57.913700, 58.815205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.125061, 57.815559, 58.456459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869652, 0.432153, 0.238642,
		0.329030, -0.867783, 0.372412,
		0.368028, -0.245348, -0.896861,
		53.235470, 57.741955, 58.187401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.664516, 57.892551, 58.757790>,  <52.977848, 57.913700, 58.815205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.664516, 57.892551, 58.757790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.626202, 57.889366, 58.359642>,  <53.603210, 57.887455, 58.120754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.626202, 57.889366, 58.359642>,  <53.664516, 57.892551, 58.757790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.626202, 57.889366, 58.359642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993179, 0.066020, -0.096107,
		0.066480, -0.997786, 0.001590,
		-0.095790, -0.007968, -0.995370,
		53.597466, 57.886974, 58.061031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.123127, 57.376789, 58.479370>,  <53.664516, 57.892551, 58.757790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.123127, 57.376789, 58.479370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.088394, 57.617752, 58.161987>,  <54.067554, 57.762329, 57.971558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.088394, 57.617752, 58.161987>,  <54.123127, 57.376789, 58.479370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.088394, 57.617752, 58.161987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987779, -0.051423, -0.147137,
		-0.129438, -0.796532, -0.590578,
		-0.086830, 0.602405, -0.793454,
		54.062344, 57.798473, 57.923950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.444748, 57.071232, 57.858711>,  <54.123127, 57.376789, 58.479370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.444748, 57.071232, 57.858711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.451302, 57.471062, 57.849098>,  <54.455235, 57.710960, 57.843330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.451302, 57.471062, 57.849098>,  <54.444748, 57.071232, 57.858711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.451302, 57.471062, 57.849098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943883, -0.023391, -0.329450,
		-0.329873, -0.017289, -0.943867,
		0.016383, 0.999577, -0.024035,
		54.456215, 57.770935, 57.841888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.583378, 57.340012, 57.250038>,  <54.444748, 57.071232, 57.858711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.583378, 57.340012, 57.250038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.718727, 57.610870, 57.511414>,  <54.799938, 57.773384, 57.668240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.718727, 57.610870, 57.511414>,  <54.583378, 57.340012, 57.250038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.718727, 57.610870, 57.511414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886232, 0.004148, -0.463222,
		-0.316380, 0.735837, -0.598705,
		0.338372, 0.677146, 0.653435,
		54.820240, 57.814014, 57.707443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.802002, 57.927147, 56.874023>,  <54.583378, 57.340012, 57.250038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.802002, 57.927147, 56.874023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.014442, 57.879982, 57.209648>,  <55.141907, 57.851685, 57.411022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.014442, 57.879982, 57.209648>,  <54.802002, 57.927147, 56.874023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.014442, 57.879982, 57.209648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847305, 0.072393, -0.526150,
		0.001296, 0.990382, 0.138354,
		0.531106, -0.117909, 0.839061,
		55.173775, 57.844608, 57.461365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.271084, 58.500835, 56.911812>,  <54.802002, 57.927147, 56.874023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.271084, 58.500835, 56.911812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.421242, 58.170822, 57.080765>,  <55.511337, 57.972816, 57.182137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.421242, 58.170822, 57.080765>,  <55.271084, 58.500835, 56.911812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.421242, 58.170822, 57.080765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831155, 0.097965, -0.547342,
		0.410196, 0.556531, 0.722504,
		0.375393, -0.825031, 0.422379,
		55.533859, 57.923313, 57.207478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.087048, 58.586796, 56.821003>,  <55.271084, 58.500835, 56.911812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.087048, 58.586796, 56.821003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.796425, 58.345482, 56.689453>,  <55.622051, 58.200691, 56.610523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.796425, 58.345482, 56.689453>,  <56.087048, 58.586796, 56.821003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.796425, 58.345482, 56.689453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466783, -0.784605, 0.408054,
		-0.504211, 0.142962, 0.851665,
		-0.726557, -0.603288, -0.328874,
		55.578457, 58.164494, 56.590790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.722717, 58.209274, 56.747704>,  <56.087048, 58.586796, 56.821003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.722717, 58.209274, 56.747704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.061348, 58.072739, 56.911064>,  <57.264526, 57.990818, 57.009083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.061348, 58.072739, 56.911064>,  <56.722717, 58.209274, 56.747704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.061348, 58.072739, 56.911064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501052, 0.769969, -0.395089,
		-0.179598, 0.539105, 0.822867,
		0.846576, -0.341342, 0.408404,
		57.315319, 57.970337, 57.033585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.154972, 58.723450, 56.590866>,  <56.722717, 58.209274, 56.747704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.154972, 58.723450, 56.590866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.394554, 58.451019, 56.759338>,  <57.538303, 58.287560, 56.860420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.394554, 58.451019, 56.759338>,  <57.154972, 58.723450, 56.590866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.394554, 58.451019, 56.759338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784043, 0.605753, -0.135426,
		-0.162894, 0.411335, 0.896810,
		0.598951, -0.681078, 0.421178,
		57.574238, 58.246696, 56.885693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.449585, 58.871544, 57.263908>,  <57.154972, 58.723450, 56.590866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.449585, 58.871544, 57.263908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.702003, 58.627613, 57.072121>,  <57.853455, 58.481255, 56.957047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.702003, 58.627613, 57.072121>,  <57.449585, 58.871544, 57.263908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.702003, 58.627613, 57.072121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694376, 0.719611, -0.001373,
		0.345871, -0.332069, 0.877555,
		0.631042, -0.609828, -0.479474,
		57.891315, 58.444664, 56.928280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.019348, 58.735615, 57.686790>,  <57.449585, 58.871544, 57.263908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.019348, 58.735615, 57.686790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.144852, 58.715408, 57.307526>,  <58.220154, 58.703285, 57.079967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.144852, 58.715408, 57.307526>,  <58.019348, 58.735615, 57.686790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.144852, 58.715408, 57.307526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690127, 0.697977, 0.191187,
		0.652136, -0.714337, 0.253855,
		0.313757, -0.050512, -0.948159,
		58.238979, 58.700256, 57.023079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.771824, 58.740955, 57.654469>,  <58.019348, 58.735615, 57.686790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.771824, 58.740955, 57.654469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.636345, 58.872131, 57.301712>,  <58.555058, 58.950836, 57.090057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.636345, 58.872131, 57.301712>,  <58.771824, 58.740955, 57.654469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.636345, 58.872131, 57.301712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644936, 0.763380, 0.036178,
		0.685084, -0.556511, -0.470060,
		-0.338701, 0.327943, -0.881893,
		58.534737, 58.970512, 57.037144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.325970, 58.999783, 57.269447>,  <58.771824, 58.740955, 57.654469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.325970, 58.999783, 57.269447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.022705, 59.197079, 57.098846>,  <58.840744, 59.315456, 56.996487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.022705, 59.197079, 57.098846>,  <59.325970, 58.999783, 57.269447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.022705, 59.197079, 57.098846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407478, 0.869019, 0.280654,
		0.509065, 0.038993, -0.859844,
		-0.758165, 0.493239, -0.426499,
		58.795258, 59.345051, 56.970898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.455029, 59.528526, 56.769119>,  <59.325970, 58.999783, 57.269447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.455029, 59.528526, 56.769119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.130684, 59.655663, 56.965683>,  <58.936077, 59.731945, 57.083622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.130684, 59.655663, 56.965683>,  <59.455029, 59.528526, 56.769119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.130684, 59.655663, 56.965683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405169, 0.910782, 0.079459,
		-0.422310, 0.263534, -0.867297,
		-0.810859, 0.317845, 0.491408,
		58.887424, 59.751015, 57.113106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.201706, 60.126930, 56.378059>,  <59.455029, 59.528526, 56.769119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.201706, 60.126930, 56.378059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.097984, 60.144878, 56.763962>,  <59.035751, 60.155647, 56.995502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.097984, 60.144878, 56.763962>,  <59.201706, 60.126930, 56.378059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.097984, 60.144878, 56.763962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308906, 0.950300, 0.038833,
		-0.915061, 0.308087, -0.260280,
		-0.259308, 0.044868, 0.964752,
		59.020191, 60.158340, 57.053387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.506744, 59.514828, 55.984138>,  <59.201706, 60.126930, 56.378059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.506744, 59.514828, 55.984138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.176880, 59.334351, 55.847687>,  <58.978962, 59.226067, 55.765816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.176880, 59.334351, 55.847687>,  <59.506744, 59.514828, 55.984138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.176880, 59.334351, 55.847687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334790, 0.096756, -0.937312,
		0.455911, -0.887168, 0.071263,
		-0.824658, -0.451189, -0.341127,
		58.929482, 59.198994, 55.745350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.246742, 59.940357, 55.894802>,  <59.506744, 59.514828, 55.984138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.246742, 59.940357, 55.894802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.931625, 60.152390, 56.020271>,  <59.742554, 60.279610, 56.095554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.931625, 60.152390, 56.020271>,  <60.246742, 59.940357, 55.894802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.931625, 60.152390, 56.020271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004304, 0.513989, -0.857786,
		-0.615923, -0.674409, -0.407199,
		-0.787795, 0.530083, 0.313675,
		59.695286, 60.311413, 56.114372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.295494, 59.618252, 56.598499>,  <60.246742, 59.940357, 55.894802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.295494, 59.618252, 56.598499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.434135, 59.305779, 56.390800>,  <60.517323, 59.118294, 56.266182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.434135, 59.305779, 56.390800>,  <60.295494, 59.618252, 56.598499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.434135, 59.305779, 56.390800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893629, 0.443259, -0.070347,
		0.285116, -0.439634, 0.851722,
		0.346606, -0.781181, -0.519250,
		60.538116, 59.071423, 56.235023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.922455, 59.205528, 56.868881>,  <60.295494, 59.618252, 56.598499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.922455, 59.205528, 56.868881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.919464, 59.192612, 56.469101>,  <60.917671, 59.184860, 56.229233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.919464, 59.192612, 56.469101>,  <60.922455, 59.205528, 56.868881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.919464, 59.192612, 56.469101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834336, 0.550734, -0.024033,
		0.551207, -0.834057, 0.022824,
		-0.007475, -0.032290, -0.999451,
		60.917221, 59.182922, 56.169266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.634800, 59.008965, 56.597160>,  <60.922455, 59.205528, 56.868881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.634800, 59.008965, 56.597160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.477676, 59.275349, 56.343483>,  <61.383404, 59.435177, 56.191277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.477676, 59.275349, 56.343483>,  <61.634800, 59.008965, 56.597160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.477676, 59.275349, 56.343483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821390, 0.564192, 0.083697,
		0.413546, -0.488045, -0.768630,
		-0.392807, 0.665957, -0.634195,
		61.359833, 59.475136, 56.153225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.231831, 59.269161, 56.269501>,  <61.634800, 59.008965, 56.597160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.231831, 59.269161, 56.269501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.930061, 59.527771, 56.224159>,  <61.749001, 59.682938, 56.196953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.930061, 59.527771, 56.224159>,  <62.231831, 59.269161, 56.269501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.930061, 59.527771, 56.224159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653457, 0.756071, -0.036736,
		0.061956, -0.101789, -0.992875,
		-0.754424, 0.646526, -0.113358,
		61.703735, 59.721729, 56.190151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.385723, 59.715878, 55.723331>,  <62.231831, 59.269161, 56.269501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.385723, 59.715878, 55.723331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.125908, 59.900612, 55.964928>,  <61.970020, 60.011452, 56.109886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.125908, 59.900612, 55.964928>,  <62.385723, 59.715878, 55.723331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.125908, 59.900612, 55.964928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355610, 0.886670, -0.295564,
		-0.672044, 0.022805, -0.740160,
		-0.649537, 0.461840, 0.603991,
		61.931046, 60.039165, 56.146126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.199123, 60.372868, 55.376595>,  <62.385723, 59.715878, 55.723331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.199123, 60.372868, 55.376595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.126862, 60.387756, 55.769730>,  <62.083504, 60.396690, 56.005611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.126862, 60.387756, 55.769730>,  <62.199123, 60.372868, 55.376595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.126862, 60.387756, 55.769730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521130, 0.851108, 0.063550,
		-0.834139, 0.523669, -0.173154,
		-0.180652, 0.037226, 0.982842,
		62.072666, 60.398926, 56.064583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.093948, 60.996494, 55.621037>,  <62.199123, 60.372868, 55.376595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.093948, 60.996494, 55.621037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.178741, 60.892677, 55.997910>,  <62.229618, 60.830387, 56.224033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.178741, 60.892677, 55.997910>,  <62.093948, 60.996494, 55.621037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.178741, 60.892677, 55.997910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465891, 0.874323, 0.136033,
		-0.859075, 0.410116, 0.306260,
		0.211981, -0.259546, 0.942178,
		62.242336, 60.814812, 56.280563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.904049, 61.507259, 56.233719>,  <62.093948, 60.996494, 55.621037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.904049, 61.507259, 56.233719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.246979, 61.303127, 56.260727>,  <62.452736, 61.180649, 56.276932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.246979, 61.303127, 56.260727>,  <61.904049, 61.507259, 56.233719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.246979, 61.303127, 56.260727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509723, 0.859906, 0.027284,
		-0.071985, 0.011025, 0.997345,
		0.857322, -0.510334, 0.067520,
		62.504177, 61.150028, 56.280983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.211544, 61.793293, 56.774189>,  <61.904049, 61.507259, 56.233719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.211544, 61.793293, 56.774189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.510666, 61.626877, 56.567230>,  <62.690140, 61.527027, 56.443054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.510666, 61.626877, 56.567230>,  <62.211544, 61.793293, 56.774189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.510666, 61.626877, 56.567230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565115, 0.807905, 0.167134,
		0.348470, -0.417371, 0.839268,
		0.747806, -0.416041, -0.517393,
		62.735008, 61.502064, 56.412014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.961422, 61.658077, 57.188660>,  <62.211544, 61.793293, 56.774189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.961422, 61.658077, 57.188660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.998390, 61.739243, 56.798729>,  <63.020573, 61.787941, 56.564770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.998390, 61.739243, 56.798729>,  <62.961422, 61.658077, 57.188660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.998390, 61.739243, 56.798729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531696, 0.817696, 0.220619,
		0.841878, -0.538700, -0.032318,
		0.092421, 0.202918, -0.974825,
		63.026115, 61.800117, 56.506283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.648758, 61.753601, 56.933052>,  <62.961422, 61.658077, 57.188660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.648758, 61.753601, 56.933052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.393242, 61.978428, 56.722900>,  <63.239933, 62.113323, 56.596809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.393242, 61.978428, 56.722900>,  <63.648758, 61.753601, 56.933052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.393242, 61.978428, 56.722900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456022, 0.826586, 0.329847,
		0.619668, -0.028881, -0.784333,
		-0.638792, 0.562069, -0.525379,
		63.201603, 62.147049, 56.565289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.037651, 62.192085, 56.505253>,  <63.648758, 61.753601, 56.933052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.037651, 62.192085, 56.505253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.688293, 62.362129, 56.600311>,  <63.478680, 62.464157, 56.657349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.688293, 62.362129, 56.600311>,  <64.037651, 62.192085, 56.505253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.688293, 62.362129, 56.600311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480129, 0.833395, 0.273729,
		-0.081689, 0.353173, -0.931985,
		-0.873386, 0.425113, 0.237648,
		63.426277, 62.489662, 56.671604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.597672, 62.349655, 56.098495>,  <64.037651, 62.192085, 56.505253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.597672, 62.349655, 56.098495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.253754, 62.382999, 55.896980>,  <64.047401, 62.403004, 55.776070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.253754, 62.382999, 55.896980>,  <64.597672, 62.349655, 56.098495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.253754, 62.382999, 55.896980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219880, -0.950874, 0.217924,
		-0.460876, 0.298144, 0.835885,
		-0.859794, 0.083358, -0.503791,
		63.995815, 62.408009, 55.745842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.169121, 62.362549, 55.641785>,  <64.597672, 62.349655, 56.098495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.169121, 62.362549, 55.641785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.124023, 62.030773, 55.860626>,  <65.096962, 61.831707, 55.991932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.124023, 62.030773, 55.860626>,  <65.169121, 62.362549, 55.641785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.124023, 62.030773, 55.860626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991784, -0.060444, 0.112742,
		-0.060444, 0.555316, 0.829440,
		-0.112742, -0.829440, 0.547100,
		65.090202, 61.781940, 56.024757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.531273, 62.501575, 56.337757>,  <65.169121, 62.362549, 55.641785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.531273, 62.501575, 56.337757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.473785, 62.108589, 56.290230>,  <65.439293, 61.872799, 56.261715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.473785, 62.108589, 56.290230>,  <65.531273, 62.501575, 56.337757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.473785, 62.108589, 56.290230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937137, -0.173685, 0.302668,
		-0.317996, -0.067852, 0.945661,
		-0.143711, -0.982461, -0.118818,
		65.430672, 61.813850, 56.254585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.431236, 62.073254, 56.993580>,  <65.531273, 62.501575, 56.337757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.431236, 62.073254, 56.993580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.602310, 61.876328, 56.690338>,  <65.704956, 61.758171, 56.508392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.602310, 61.876328, 56.690338>,  <65.431236, 62.073254, 56.993580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.602310, 61.876328, 56.690338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869533, -0.005093, 0.493848,
		-0.246989, -0.870404, 0.425904,
		0.427678, -0.492312, -0.758103,
		65.730614, 61.728634, 56.462906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.557640, 61.372505, 57.168045>,  <65.431236, 62.073254, 56.993580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.557640, 61.372505, 57.168045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.808434, 61.536743, 56.903229>,  <65.958908, 61.635288, 56.744339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.808434, 61.536743, 56.903229>,  <65.557640, 61.372505, 57.168045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.808434, 61.536743, 56.903229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749686, -0.086955, 0.656057,
		0.211808, -0.907660, -0.362339,
		0.626984, 0.410599, -0.662042,
		65.996529, 61.659924, 56.704617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.120689, 60.923317, 57.053051>,  <65.557640, 61.372505, 57.168045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.120689, 60.923317, 57.053051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.241661, 61.302605, 57.014229>,  <66.314247, 61.530178, 56.990936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.241661, 61.302605, 57.014229>,  <66.120689, 60.923317, 57.053051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.241661, 61.302605, 57.014229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616277, -0.116850, 0.778812,
		0.727142, -0.295352, -0.619703,
		0.302436, 0.948216, -0.097052,
		66.332390, 61.587070, 56.985115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.752449, 60.715767, 57.430309>,  <66.120689, 60.923317, 57.053051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.752449, 60.715767, 57.430309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.685829, 60.362736, 57.254440>,  <66.645859, 60.150917, 57.148918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.685829, 60.362736, 57.254440>,  <66.752449, 60.715767, 57.430309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.685829, 60.362736, 57.254440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985644, -0.161550, -0.049067,
		-0.027724, -0.441536, 0.896815,
		-0.166546, -0.882580, -0.439677,
		66.635864, 60.097961, 57.122536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.062370, 60.074436, 57.833775>,  <66.752449, 60.715767, 57.430309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.062370, 60.074436, 57.833775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.012108, 60.091637, 57.437317>,  <66.981949, 60.101955, 57.199444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.012108, 60.091637, 57.437317>,  <67.062370, 60.074436, 57.833775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.012108, 60.091637, 57.437317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980775, -0.144963, -0.130634,
		-0.149296, -0.988502, -0.023957,
		-0.125659, 0.043000, -0.991141,
		66.974411, 60.104538, 57.139973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.402130, 59.494823, 57.380882>,  <67.062370, 60.074436, 57.833775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.402130, 59.494823, 57.380882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.403717, 59.828411, 57.160164>,  <67.404671, 60.028564, 57.027733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.403717, 59.828411, 57.160164>,  <67.402130, 59.494823, 57.380882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.403717, 59.828411, 57.160164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997729, 0.033798, 0.058263,
		0.067239, -0.550776, -0.831940,
		0.003972, 0.833968, -0.551798,
		67.404907, 60.078602, 56.994625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.795708, 58.913143, 57.511932>,  <67.402130, 59.494823, 57.380882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.795708, 58.913143, 57.511932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.145256, 58.899666, 57.317932>,  <68.354980, 58.891579, 57.201534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.145256, 58.899666, 57.317932>,  <67.795708, 58.913143, 57.511932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.145256, 58.899666, 57.317932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149501, 0.930632, -0.334027,
		0.462609, 0.364403, 0.808210,
		0.873867, -0.033696, -0.484997,
		68.407417, 58.889557, 57.172432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.395409, 59.280170, 57.782303>,  <67.795708, 58.913143, 57.511932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.395409, 59.280170, 57.782303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.414902, 59.271759, 57.382866>,  <68.426598, 59.266712, 57.143204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.414902, 59.271759, 57.382866>,  <68.395409, 59.280170, 57.782303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.414902, 59.271759, 57.382866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110531, 0.993524, -0.026315,
		0.992678, 0.111658, 0.046083,
		0.048723, -0.021029, -0.998591,
		68.429520, 59.265450, 57.083290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.455070, 58.812561, 58.304638>,  <68.395409, 59.280170, 57.782303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.455070, 58.812561, 58.304638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.708931, 59.091194, 58.170776>,  <68.861244, 59.258373, 58.090458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.708931, 59.091194, 58.170776>,  <68.455070, 58.812561, 58.304638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.708931, 59.091194, 58.170776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728720, -0.395263, 0.559226,
		0.257269, -0.598783, -0.758466,
		0.634649, 0.696581, -0.334657,
		68.899323, 59.300167, 58.070381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.165138, 58.484264, 58.086067>,  <68.455070, 58.812561, 58.304638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.165138, 58.484264, 58.086067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.213730, 58.865395, 58.197334>,  <69.242882, 59.094070, 58.264095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.213730, 58.865395, 58.197334>,  <69.165138, 58.484264, 58.086067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.213730, 58.865395, 58.197334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800507, -0.259737, 0.540115,
		0.586883, 0.157063, -0.794292,
		0.121475, 0.952821, 0.278166,
		69.250175, 59.151241, 58.280785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.913780, 58.834824, 58.026432>,  <69.165138, 58.484264, 58.086067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.913780, 58.834824, 58.026432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.716026, 59.006180, 58.328972>,  <69.597374, 59.108994, 58.510494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.716026, 59.006180, 58.328972>,  <69.913780, 58.834824, 58.026432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.716026, 59.006180, 58.328972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705795, -0.310061, 0.636958,
		0.507382, 0.848730, -0.149068,
		-0.494385, 0.428392, 0.756349,
		69.567711, 59.134697, 58.555878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.679810, 58.878273, 58.168484>,  <69.913780, 58.834824, 58.026432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.679810, 58.878273, 58.168484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.712303, 58.663017, 58.504059>,  <70.731796, 58.533863, 58.705402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.712303, 58.663017, 58.504059>,  <70.679810, 58.878273, 58.168484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.712303, 58.663017, 58.504059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557642, 0.673105, 0.485762,
		-0.826097, -0.507285, -0.245410,
		0.081233, -0.538138, 0.838933,
		70.736671, 58.501575, 58.755737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.277817, 58.314522, 58.220387>,  <70.679810, 58.878273, 58.168484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.277817, 58.314522, 58.220387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.298744, 57.965614, 58.414879>,  <71.311302, 57.756271, 58.531574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.298744, 57.965614, 58.414879>,  <71.277817, 58.314522, 58.220387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.298744, 57.965614, 58.414879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820396, -0.240074, -0.518956,
		0.569398, 0.426052, 0.703041,
		0.052321, -0.872264, 0.486228,
		71.314438, 57.703934, 58.560749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.811913, 58.300396, 58.758400>,  <71.277817, 58.314522, 58.220387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.811913, 58.300396, 58.758400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.727768, 57.976688, 58.539009>,  <71.677284, 57.782463, 58.407375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.727768, 57.976688, 58.539009>,  <71.811913, 58.300396, 58.758400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.727768, 57.976688, 58.539009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796118, 0.183816, -0.576549,
		0.567404, -0.557935, 0.605609,
		-0.210356, -0.809272, -0.548480,
		71.664658, 57.733906, 58.374466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.370659, 57.835239, 58.680698>,  <71.811913, 58.300396, 58.758400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.370659, 57.835239, 58.680698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.132324, 57.831802, 58.359474>,  <71.989326, 57.829739, 58.166740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.132324, 57.831802, 58.359474>,  <72.370659, 57.835239, 58.680698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.132324, 57.831802, 58.359474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744302, 0.369673, -0.556198,
		0.301648, -0.929123, -0.213870,
		-0.595838, -0.008592, -0.803059,
		71.953575, 57.829224, 58.118557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.071304, 57.479469, 58.930904>,  <72.370659, 57.835239, 58.680698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.071304, 57.479469, 58.930904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.096901, 57.306183, 59.290512>,  <73.112259, 57.202209, 59.506275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.096901, 57.306183, 59.290512>,  <73.071304, 57.479469, 58.930904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.096901, 57.306183, 59.290512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266389, 0.875588, 0.402968,
		-0.961739, 0.213702, 0.171433,
		0.063990, -0.433218, 0.899015,
		73.116096, 57.176216, 59.560215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.757668, 57.919456, 59.356369>,  <73.071304, 57.479469, 58.930904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.757668, 57.919456, 59.356369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.986595, 57.719734, 59.616570>,  <73.123947, 57.599903, 59.772690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.986595, 57.719734, 59.616570>,  <72.757668, 57.919456, 59.356369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.986595, 57.719734, 59.616570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292250, 0.865367, 0.407099,
		-0.766191, -0.042877, 0.641181,
		0.572312, -0.499301, 0.650506,
		73.158287, 57.569942, 59.811722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <110.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <110.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 110.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 110.000000>,  <110.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 0.000000>,  <0.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 0.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 0.000000, 110.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 110.000000, 0.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
