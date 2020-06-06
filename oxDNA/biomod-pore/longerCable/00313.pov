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
	<24.220215, 35.300728, 34.761589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.472380, 34.990246, 34.765324>,  <24.623678, 34.803955, 34.767567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.472380, 34.990246, 34.765324>,  <24.220215, 35.300728, 34.761589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.472380, 34.990246, 34.765324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479039, 0.398473, 0.782138,
		-0.610823, -0.488594, 0.623035,
		0.630410, -0.776206, 0.009341,
		24.661503, 34.757385, 34.768127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.148310, 34.917259, 35.393200>,  <24.220215, 35.300728, 34.761589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.148310, 34.917259, 35.393200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.516609, 34.909683, 35.237324>,  <24.737589, 34.905140, 35.143799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.516609, 34.909683, 35.237324>,  <24.148310, 34.917259, 35.393200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.516609, 34.909683, 35.237324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370881, 0.352513, 0.859175,
		0.121101, -0.935615, 0.331601,
		0.920751, -0.018938, -0.389691,
		24.792835, 34.904003, 35.120415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.647049, 34.640400, 35.850487>,  <24.148310, 34.917259, 35.393200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.647049, 34.640400, 35.850487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.859047, 34.905521, 35.638905>,  <24.986246, 35.064594, 35.511955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.859047, 34.905521, 35.638905>,  <24.647049, 34.640400, 35.850487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.859047, 34.905521, 35.638905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295883, 0.440030, 0.847837,
		0.794706, -0.605860, 0.037102,
		0.529996, 0.662803, -0.528958,
		25.018045, 35.104362, 35.480217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.287571, 34.530937, 36.071003>,  <24.647049, 34.640400, 35.850487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.287571, 34.530937, 36.071003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.241035, 34.892666, 35.906723>,  <25.213114, 35.109703, 35.808155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.241035, 34.892666, 35.906723>,  <25.287571, 34.530937, 36.071003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.241035, 34.892666, 35.906723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401939, 0.420998, 0.813146,
		0.908246, -0.070473, -0.412460,
		-0.116340, 0.904320, -0.410695,
		25.206133, 35.163963, 35.783516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.904963, 34.908649, 36.473354>,  <25.287571, 34.530937, 36.071003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.904963, 34.908649, 36.473354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.639414, 35.164974, 36.319141>,  <25.480085, 35.318768, 36.226612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.639414, 35.164974, 36.319141>,  <25.904963, 34.908649, 36.473354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.639414, 35.164974, 36.319141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063291, 0.561815, 0.824838,
		0.745163, 0.523186, -0.413531,
		-0.663872, 0.640812, -0.385531,
		25.440252, 35.357216, 36.203484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.191471, 35.575771, 36.363461>,  <25.904963, 34.908649, 36.473354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.191471, 35.575771, 36.363461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.797514, 35.590984, 36.431034>,  <25.561140, 35.600113, 36.471577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.797514, 35.590984, 36.431034>,  <26.191471, 35.575771, 36.363461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.797514, 35.590984, 36.431034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156551, 0.612505, 0.774809,
		-0.074005, 0.789551, -0.609206,
		-0.984894, 0.038032, 0.168933,
		25.502047, 35.602394, 36.481712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.962976, 36.230122, 36.390350>,  <26.191471, 35.575771, 36.363461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.962976, 36.230122, 36.390350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.672863, 36.056583, 36.604168>,  <25.498795, 35.952461, 36.732460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.672863, 36.056583, 36.604168>,  <25.962976, 36.230122, 36.390350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.672863, 36.056583, 36.604168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225269, 0.584155, 0.779755,
		-0.650550, 0.685961, -0.325947,
		-0.725285, -0.433844, 0.534548,
		25.455278, 35.926430, 36.764534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.603331, 36.803909, 36.768238>,  <25.962976, 36.230122, 36.390350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.603331, 36.803909, 36.768238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.552279, 36.461742, 36.969028>,  <25.521646, 36.256443, 37.089500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.552279, 36.461742, 36.969028>,  <25.603331, 36.803909, 36.768238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.552279, 36.461742, 36.969028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202365, 0.473004, 0.857505,
		-0.970958, 0.211026, 0.112736,
		-0.127631, -0.855415, 0.501971,
		25.513988, 36.205116, 37.119621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.054689, 36.858429, 37.317177>,  <25.603331, 36.803909, 36.768238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.054689, 36.858429, 37.317177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.351225, 36.609753, 37.418304>,  <25.529146, 36.460548, 37.478981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.351225, 36.609753, 37.418304>,  <25.054689, 36.858429, 37.317177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.351225, 36.609753, 37.418304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079507, 0.455413, 0.886723,
		-0.666403, -0.637263, 0.387045,
		0.741341, -0.621687, 0.252822,
		25.573627, 36.423248, 37.494152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.897419, 36.509327, 37.990395>,  <25.054689, 36.858429, 37.317177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.897419, 36.509327, 37.990395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.295488, 36.487999, 37.957447>,  <25.534330, 36.475201, 37.937679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.295488, 36.487999, 37.957447>,  <24.897419, 36.509327, 37.990395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.295488, 36.487999, 37.957447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097601, 0.451394, 0.886971,
		-0.010115, -0.890730, 0.454421,
		0.995174, -0.053324, -0.082370,
		25.594040, 36.472000, 37.932735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.110231, 36.308235, 38.666759>,  <24.897419, 36.509327, 37.990395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.110231, 36.308235, 38.666759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.420109, 36.474548, 38.476192>,  <25.606035, 36.574337, 38.361855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.420109, 36.474548, 38.476192>,  <25.110231, 36.308235, 38.666759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.420109, 36.474548, 38.476192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165882, 0.593403, 0.787627,
		0.610181, -0.689204, 0.390740,
		0.774702, 0.415778, -0.476409,
		25.652517, 36.599285, 38.333267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.755249, 36.228348, 39.044678>,  <25.110231, 36.308235, 38.666759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.755249, 36.228348, 39.044678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.786156, 36.551350, 38.810764>,  <25.804699, 36.745152, 38.670414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.786156, 36.551350, 38.810764>,  <25.755249, 36.228348, 39.044678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.786156, 36.551350, 38.810764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185868, 0.564590, 0.804171,
		0.979532, -0.170827, -0.106465,
		0.077265, 0.807500, -0.584785,
		25.809336, 36.793598, 38.635330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.461355, 36.535641, 39.155720>,  <25.755249, 36.228348, 39.044678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.461355, 36.535641, 39.155720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.222845, 36.815083, 38.997528>,  <26.079739, 36.982750, 38.902611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.222845, 36.815083, 38.997528>,  <26.461355, 36.535641, 39.155720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.222845, 36.815083, 38.997528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033167, 0.513656, 0.857355,
		0.802096, 0.498100, -0.329450,
		-0.596273, 0.698608, -0.395481,
		26.043962, 37.024666, 38.878883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.716158, 37.275471, 39.025673>,  <26.461355, 36.535641, 39.155720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.716158, 37.275471, 39.025673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.326506, 37.315117, 39.106915>,  <26.092714, 37.338905, 39.155659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.326506, 37.315117, 39.106915>,  <26.716158, 37.275471, 39.025673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.326506, 37.315117, 39.106915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214908, 0.684290, 0.696823,
		-0.069915, 0.722443, -0.687886,
		-0.974129, 0.099114, 0.203101,
		26.034267, 37.344852, 39.167843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.644049, 37.789173, 38.394180>,  <26.716158, 37.275471, 39.025673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.644049, 37.789173, 38.394180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.927704, 37.557247, 38.233715>,  <27.097897, 37.418091, 38.137436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.927704, 37.557247, 38.233715>,  <26.644049, 37.789173, 38.394180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.927704, 37.557247, 38.233715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604062, 0.206181, 0.769805,
		-0.363636, -0.788225, 0.496458,
		0.709139, -0.579819, -0.401162,
		27.140446, 37.383301, 38.113365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.310972, 37.611691, 37.801666>,  <26.644049, 37.789173, 38.394180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.310972, 37.611691, 37.801666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.170027, 37.356693, 38.075729>,  <26.085461, 37.203697, 38.240170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.170027, 37.356693, 38.075729>,  <26.310972, 37.611691, 37.801666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.170027, 37.356693, 38.075729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006318, -0.733720, -0.679422,
		0.935842, -0.235073, 0.262563,
		-0.352362, -0.637491, 0.685161,
		26.064318, 37.165447, 38.281277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.711643, 37.085163, 37.747402>,  <26.310972, 37.611691, 37.801666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.711643, 37.085163, 37.747402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.384499, 36.941414, 37.927158>,  <26.188211, 36.855164, 38.035011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.384499, 36.941414, 37.927158>,  <26.711643, 37.085163, 37.747402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.384499, 36.941414, 37.927158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032873, -0.750534, -0.660014,
		0.574474, -0.554573, 0.602020,
		-0.817862, -0.359371, 0.449393,
		26.139139, 36.833603, 38.061977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.823956, 36.398136, 37.624950>,  <26.711643, 37.085163, 37.747402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.823956, 36.398136, 37.624950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.444221, 36.425560, 37.747627>,  <26.216381, 36.442013, 37.821236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.444221, 36.425560, 37.747627>,  <26.823956, 36.398136, 37.624950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.444221, 36.425560, 37.747627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276543, -0.645839, -0.711629,
		0.149288, -0.760389, 0.632077,
		-0.949335, 0.068559, 0.306696,
		26.159420, 36.446129, 37.839638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.634905, 35.703655, 37.757011>,  <26.823956, 36.398136, 37.624950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.634905, 35.703655, 37.757011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.321880, 35.933353, 37.660816>,  <26.134066, 36.071171, 37.603100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.321880, 35.933353, 37.660816>,  <26.634905, 35.703655, 37.757011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.321880, 35.933353, 37.660816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209965, -0.607094, -0.766388,
		-0.586087, -0.549260, 0.595664,
		-0.782571, 0.574239, -0.240485,
		26.087112, 36.105629, 37.588669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.975498, 35.397816, 37.770287>,  <26.634905, 35.703655, 37.757011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.975498, 35.397816, 37.770287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.887127, 35.696503, 37.519333>,  <25.834105, 35.875713, 37.368759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.887127, 35.696503, 37.519333>,  <25.975498, 35.397816, 37.770287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.887127, 35.696503, 37.519333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366211, -0.659722, -0.656244,
		-0.903925, 0.084771, 0.419207,
		-0.220930, 0.746713, -0.627383,
		25.820848, 35.920517, 37.331120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.201839, 35.182823, 37.803482>,  <25.975498, 35.397816, 37.770287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.201839, 35.182823, 37.803482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.278568, 35.511703, 37.589119>,  <25.324606, 35.709030, 37.460503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.278568, 35.511703, 37.589119>,  <25.201839, 35.182823, 37.803482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.278568, 35.511703, 37.589119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538708, -0.368227, -0.757761,
		-0.820365, 0.434052, 0.372290,
		0.191821, 0.822196, -0.535908,
		25.336115, 35.758362, 37.428345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.636909, 35.267269, 37.464066>,  <25.201839, 35.182823, 37.803482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.636909, 35.267269, 37.464066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.880836, 35.493195, 37.241676>,  <25.027193, 35.628750, 37.108242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.880836, 35.493195, 37.241676>,  <24.636909, 35.267269, 37.464066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.880836, 35.493195, 37.241676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364644, -0.422888, -0.829579,
		-0.703672, 0.708624, -0.051928,
		0.609819, 0.564816, -0.555970,
		25.063782, 35.662640, 37.074886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.262611, 35.429012, 36.859856>,  <24.636909, 35.267269, 37.464066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.262611, 35.429012, 36.859856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.641611, 35.478291, 36.741825>,  <24.869011, 35.507858, 36.671005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.641611, 35.478291, 36.741825>,  <24.262611, 35.429012, 36.859856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.641611, 35.478291, 36.741825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205315, -0.473055, -0.856776,
		-0.245137, 0.872377, -0.422926,
		0.947499, 0.123194, -0.295076,
		24.925861, 35.515247, 36.653301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.274714, 35.788486, 36.146412>,  <24.262611, 35.429012, 36.859856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.274714, 35.788486, 36.146412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.592358, 35.554302, 36.211681>,  <24.782944, 35.413792, 36.250843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.592358, 35.554302, 36.211681>,  <24.274714, 35.788486, 36.146412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.592358, 35.554302, 36.211681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253035, -0.562577, -0.787070,
		0.552593, 0.583734, -0.594891,
		0.794112, -0.585458, 0.163171,
		24.830591, 35.378666, 36.260632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.669434, 36.342098, 35.712326>,  <24.274714, 35.788486, 36.146412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.669434, 36.342098, 35.712326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.910511, 36.044029, 35.826504>,  <25.055159, 35.865189, 35.895012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.910511, 36.044029, 35.826504>,  <24.669434, 36.342098, 35.712326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.910511, 36.044029, 35.826504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021849, -0.342166, -0.939385,
		0.797673, 0.572399, -0.189941,
		0.602695, -0.745172, 0.285443,
		25.091320, 35.820477, 35.912136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.158491, 36.399994, 35.245419>,  <24.669434, 36.342098, 35.712326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.158491, 36.399994, 35.245419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.160604, 36.035835, 35.410900>,  <25.161873, 35.817341, 35.510189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.160604, 36.035835, 35.410900>,  <25.158491, 36.399994, 35.245419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.160604, 36.035835, 35.410900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060860, -0.412652, -0.908854,
		0.998132, 0.029980, 0.053227,
		0.005283, -0.910396, 0.413706,
		25.162189, 35.762718, 35.535011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.703209, 35.952175, 34.852001>,  <25.158491, 36.399994, 35.245419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.703209, 35.952175, 34.852001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.462601, 35.695683, 35.042576>,  <25.318235, 35.541786, 35.156921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.462601, 35.695683, 35.042576>,  <25.703209, 35.952175, 34.852001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.462601, 35.695683, 35.042576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029641, -0.613898, -0.788829,
		0.798307, -0.460375, 0.388280,
		-0.601521, -0.641236, 0.476433,
		25.282145, 35.503311, 35.185505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.985416, 35.205070, 34.855053>,  <25.703209, 35.952175, 34.852001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.985416, 35.205070, 34.855053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.585825, 35.222767, 34.851318>,  <25.346071, 35.233383, 34.849079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.585825, 35.222767, 34.851318>,  <25.985416, 35.205070, 34.855053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.585825, 35.222767, 34.851318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022504, -0.665612, -0.745958,
		-0.039212, -0.744986, 0.665927,
		-0.998978, 0.044237, -0.009335,
		25.286131, 35.236038, 34.848518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.693193, 35.085560, 34.708115>,  <25.985416, 35.205070, 34.855053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.693193, 35.085560, 34.708115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.078329, 35.013760, 34.627396>,  <27.309410, 34.970680, 34.578964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.078329, 35.013760, 34.627396>,  <26.693193, 35.085560, 34.708115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.078329, 35.013760, 34.627396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150102, 0.976811, -0.152675,
		0.224527, 0.116710, 0.967453,
		0.962838, -0.179497, -0.201802,
		27.367180, 34.959911, 34.566856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.044771, 35.635841, 34.922745>,  <26.693193, 35.085560, 34.708115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.044771, 35.635841, 34.922745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.298283, 35.471649, 34.660500>,  <27.450390, 35.373135, 34.503155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.298283, 35.471649, 34.660500>,  <27.044771, 35.635841, 34.922745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.298283, 35.471649, 34.660500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227394, 0.908997, -0.349308,
		0.739333, 0.072303, 0.669446,
		0.633781, -0.410483, -0.655611,
		27.488417, 35.348503, 34.463818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.722998, 35.952675, 35.160908>,  <27.044771, 35.635841, 34.922745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.722998, 35.952675, 35.160908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.745043, 35.801971, 34.791039>,  <27.758270, 35.711548, 34.569118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.745043, 35.801971, 34.791039>,  <27.722998, 35.952675, 35.160908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.745043, 35.801971, 34.791039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512262, 0.805579, -0.297707,
		0.857059, -0.457265, 0.237399,
		0.055113, -0.376763, -0.924669,
		27.761576, 35.688942, 34.513638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.407038, 36.015907, 34.954239>,  <27.722998, 35.952675, 35.160908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.407038, 36.015907, 34.954239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.210218, 36.009960, 34.606064>,  <28.092127, 36.006393, 34.397160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.210218, 36.009960, 34.606064>,  <28.407038, 36.015907, 34.954239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.210218, 36.009960, 34.606064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478871, 0.830377, -0.284881,
		0.727028, -0.557004, -0.401467,
		-0.492049, -0.014865, -0.870441,
		28.062603, 36.005501, 34.344933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.840719, 36.162884, 34.363640>,  <28.407038, 36.015907, 34.954239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.840719, 36.162884, 34.363640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.477915, 36.262333, 34.227688>,  <28.260233, 36.322002, 34.146114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.477915, 36.262333, 34.227688>,  <28.840719, 36.162884, 34.363640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.477915, 36.262333, 34.227688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369359, 0.857337, -0.358535,
		0.202255, -0.450734, -0.869444,
		-0.907010, 0.248622, -0.339883,
		28.205812, 36.336918, 34.125721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.985819, 36.316700, 33.748360>,  <28.840719, 36.162884, 34.363640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.985819, 36.316700, 33.748360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.638454, 36.497887, 33.829037>,  <28.430035, 36.606598, 33.877445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.638454, 36.497887, 33.829037>,  <28.985819, 36.316700, 33.748360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.638454, 36.497887, 33.829037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371471, 0.863773, -0.340450,
		-0.328432, -0.220726, -0.918375,
		-0.868413, 0.452964, 0.201697,
		28.377930, 36.633778, 33.889545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.713989, 36.694908, 33.162731>,  <28.985819, 36.316700, 33.748360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.713989, 36.694908, 33.162731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.597141, 36.854065, 33.510605>,  <28.527033, 36.949558, 33.719330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.597141, 36.854065, 33.510605>,  <28.713989, 36.694908, 33.162731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.597141, 36.854065, 33.510605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384311, 0.881536, -0.274226,
		-0.875768, 0.254122, -0.410429,
		-0.292121, 0.397890, 0.869683,
		28.509504, 36.973431, 33.771511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.165277, 36.849209, 32.622967>,  <28.713989, 36.694908, 33.162731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.165277, 36.849209, 32.622967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.098658, 36.966213, 32.999626>,  <28.058685, 37.036415, 33.225620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.098658, 36.966213, 32.999626>,  <28.165277, 36.849209, 32.622967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.098658, 36.966213, 32.999626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359911, 0.907129, -0.218132,
		-0.918001, 0.302579, -0.256359,
		-0.166549, 0.292512, 0.941647,
		28.048693, 37.053967, 33.282120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.829365, 37.487587, 32.575233>,  <28.165277, 36.849209, 32.622967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.829365, 37.487587, 32.575233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.991104, 37.494663, 32.941006>,  <28.088148, 37.498909, 33.160469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.991104, 37.494663, 32.941006>,  <27.829365, 37.487587, 32.575233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.991104, 37.494663, 32.941006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369359, 0.911497, -0.180964,
		-0.836705, 0.410926, 0.362028,
		0.404350, 0.017695, 0.914433,
		28.112410, 37.499973, 33.215336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.622404, 38.144054, 32.891499>,  <27.829365, 37.487587, 32.575233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.622404, 38.144054, 32.891499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.945894, 38.016312, 33.089073>,  <28.139988, 37.939667, 33.207619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.945894, 38.016312, 33.089073>,  <27.622404, 38.144054, 32.891499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.945894, 38.016312, 33.089073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522949, 0.774794, -0.355273,
		-0.269238, 0.545622, 0.793604,
		0.808725, -0.319361, 0.493936,
		28.188511, 37.920502, 33.237255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.964636, 38.693794, 32.949203>,  <27.622404, 38.144054, 32.891499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.964636, 38.693794, 32.949203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.233387, 38.406284, 33.020695>,  <28.394638, 38.233780, 33.063587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.233387, 38.406284, 33.020695>,  <27.964636, 38.693794, 32.949203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.233387, 38.406284, 33.020695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737013, 0.624897, -0.257521,
		0.073415, 0.304745, 0.949600,
		0.671880, -0.718773, 0.178724,
		28.434952, 38.190651, 33.074310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.629524, 38.772724, 32.580551>,  <27.964636, 38.693794, 32.949203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.629524, 38.772724, 32.580551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.868330, 38.968258, 32.326115>,  <29.011614, 39.085579, 32.173450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.868330, 38.968258, 32.326115>,  <28.629524, 38.772724, 32.580551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.868330, 38.968258, 32.326115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553818, 0.824789, 0.114052,
		0.580397, 0.284191, 0.763135,
		0.597013, 0.488833, -0.636095,
		29.047434, 39.114906, 32.135284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.907484, 38.251926, 32.015587>,  <28.629524, 38.772724, 32.580551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.907484, 38.251926, 32.015587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.613262, 37.981224, 32.003216>,  <28.436729, 37.818802, 31.995794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.613262, 37.981224, 32.003216>,  <28.907484, 38.251926, 32.015587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.613262, 37.981224, 32.003216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612359, -0.644648, -0.457653,
		0.289785, -0.355566, 0.888593,
		-0.735555, -0.676759, -0.030924,
		28.392595, 37.778198, 31.993938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.059834, 37.761196, 32.625294>,  <28.907484, 38.251926, 32.015587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.059834, 37.761196, 32.625294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.004442, 38.048180, 32.898373>,  <28.971207, 38.220367, 33.062222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.004442, 38.048180, 32.898373>,  <29.059834, 37.761196, 32.625294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.004442, 38.048180, 32.898373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351853, -0.680011, 0.643260,
		0.925755, -0.151133, 0.346606,
		-0.138479, 0.717456, 0.682701,
		28.962898, 38.263416, 33.103184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.446894, 37.703598, 33.247116>,  <29.059834, 37.761196, 32.625294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.446894, 37.703598, 33.247116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.114342, 37.908306, 33.333740>,  <28.914810, 38.031132, 33.385715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.114342, 37.908306, 33.333740>,  <29.446894, 37.703598, 33.247116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.114342, 37.908306, 33.333740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317962, -0.757705, 0.569897,
		0.455746, 0.404943, 0.792664,
		-0.831382, 0.511766, 0.216565,
		28.864927, 38.061836, 33.398708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.244160, 37.560398, 33.980877>,  <29.446894, 37.703598, 33.247116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.244160, 37.560398, 33.980877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.915602, 37.662571, 33.776894>,  <28.718466, 37.723877, 33.654503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.915602, 37.662571, 33.776894>,  <29.244160, 37.560398, 33.980877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.915602, 37.662571, 33.776894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486356, -0.780735, 0.392315,
		-0.297934, 0.570269, 0.765525,
		-0.821397, 0.255434, -0.509962,
		28.669182, 37.739201, 33.623905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.586401, 37.474834, 34.467983>,  <29.244160, 37.560398, 33.980877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.586401, 37.474834, 34.467983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.481285, 37.483669, 34.082142>,  <28.418215, 37.488972, 33.850639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.481285, 37.483669, 34.082142>,  <28.586401, 37.474834, 34.467983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.481285, 37.483669, 34.082142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529273, -0.839196, 0.124977,
		-0.806729, 0.543380, 0.232222,
		-0.262790, 0.022086, -0.964600,
		28.402449, 37.490295, 33.792763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.916590, 37.373184, 34.527683>,  <28.586401, 37.474834, 34.467983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.916590, 37.373184, 34.527683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.009144, 37.267159, 34.153259>,  <28.064676, 37.203545, 33.928604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.009144, 37.267159, 34.153259>,  <27.916590, 37.373184, 34.527683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.009144, 37.267159, 34.153259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508964, -0.852973, 0.115724,
		-0.829106, 0.449642, -0.332273,
		0.231386, -0.265063, -0.936057,
		28.078560, 37.187641, 33.872444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.233784, 37.147701, 34.165218>,  <27.916590, 37.373184, 34.527683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.233784, 37.147701, 34.165218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.589590, 36.993404, 34.067268>,  <27.803074, 36.900826, 34.008499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.589590, 36.993404, 34.067268>,  <27.233784, 37.147701, 34.165218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.589590, 36.993404, 34.067268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378866, -0.922279, 0.076568,
		-0.255382, 0.024668, -0.966526,
		0.889517, -0.385738, -0.244879,
		27.856445, 36.877682, 33.993805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.024752, 36.619526, 33.703575>,  <27.233784, 37.147701, 34.165218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.024752, 36.619526, 33.703575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.396900, 36.538181, 33.825592>,  <27.620190, 36.489376, 33.898804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.396900, 36.538181, 33.825592>,  <27.024752, 36.619526, 33.703575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.396900, 36.538181, 33.825592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233542, -0.970135, 0.065541,
		0.282605, -0.132218, -0.950080,
		0.930372, -0.203361, 0.305044,
		27.676012, 36.477173, 33.917107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.283356, 35.966728, 33.329937>,  <27.024752, 36.619526, 33.703575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.283356, 35.966728, 33.329937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.549231, 35.987209, 33.628082>,  <27.708755, 35.999496, 33.806969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.549231, 35.987209, 33.628082>,  <27.283356, 35.966728, 33.329937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.549231, 35.987209, 33.628082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003407, -0.997846, 0.065510,
		0.747113, -0.041004, -0.663431,
		0.664688, 0.051204, 0.745364,
		27.748636, 36.002571, 33.851692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.832935, 35.410172, 33.181583>,  <27.283356, 35.966728, 33.329937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.832935, 35.410172, 33.181583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.839561, 35.476051, 33.576065>,  <27.843538, 35.515579, 33.812756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.839561, 35.476051, 33.576065>,  <27.832935, 35.410172, 33.181583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.839561, 35.476051, 33.576065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018075, -0.986130, 0.164987,
		0.999699, -0.020559, -0.013360,
		0.016567, 0.164696, 0.986205,
		27.844532, 35.525459, 33.871925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.297220, 34.863880, 33.540112>,  <27.832935, 35.410172, 33.181583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.297220, 34.863880, 33.540112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.040880, 34.995174, 33.817696>,  <27.887075, 35.073952, 33.984245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.040880, 34.995174, 33.817696>,  <28.297220, 34.863880, 33.540112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.040880, 34.995174, 33.817696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050481, -0.920044, 0.388551,
		0.766005, 0.213971, 0.606179,
		-0.640850, 0.328232, 0.693956,
		27.848625, 35.093643, 34.025883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.570284, 34.692604, 34.254219>,  <28.297220, 34.863880, 33.540112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.570284, 34.692604, 34.254219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.175177, 34.737423, 34.297588>,  <27.938112, 34.764313, 34.323608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.175177, 34.737423, 34.297588>,  <28.570284, 34.692604, 34.254219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.175177, 34.737423, 34.297588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056967, -0.906667, 0.417984,
		0.145136, 0.406696, 0.901961,
		-0.987770, 0.112046, 0.108422,
		27.878845, 34.771038, 34.330116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.372217, 34.445732, 34.929176>,  <28.570284, 34.692604, 34.254219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.372217, 34.445732, 34.929176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.061205, 34.429394, 34.678169>,  <27.874598, 34.419590, 34.527565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.061205, 34.429394, 34.678169>,  <28.372217, 34.445732, 34.929176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.061205, 34.429394, 34.678169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308210, -0.845058, 0.436903,
		-0.548132, 0.533113, 0.644471,
		-0.777533, -0.040848, -0.627514,
		27.827946, 34.417141, 34.489914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.775829, 34.215069, 35.352444>,  <28.372217, 34.445732, 34.929176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.775829, 34.215069, 35.352444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.672037, 34.141037, 34.973305>,  <27.609762, 34.096619, 34.745823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.672037, 34.141037, 34.973305>,  <27.775829, 34.215069, 35.352444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.672037, 34.141037, 34.973305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421119, -0.861555, 0.283517,
		-0.869096, 0.472724, 0.145616,
		-0.259482, -0.185082, -0.947847,
		27.594193, 34.085514, 34.688950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.931440, 34.382828, 36.116833>,  <27.775829, 34.215069, 35.352444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.931440, 34.382828, 36.116833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.869339, 34.176880, 36.454071>,  <27.832079, 34.053310, 36.656414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.869339, 34.176880, 36.454071>,  <27.931440, 34.382828, 36.116833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.869339, 34.176880, 36.454071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197427, 0.820056, 0.537151,
		-0.967946, 0.249844, -0.025667,
		-0.155252, -0.514866, 0.843095,
		27.822763, 34.022419, 36.707001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.892889, 35.030109, 36.601070>,  <27.931440, 34.382828, 36.116833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.892889, 35.030109, 36.601070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.865217, 35.374271, 36.803028>,  <27.848614, 35.580769, 36.924202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.865217, 35.374271, 36.803028>,  <27.892889, 35.030109, 36.601070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.865217, 35.374271, 36.803028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870937, -0.194728, 0.451166,
		0.486502, 0.470945, -0.735885,
		-0.069177, 0.860402, 0.504899,
		27.844463, 35.632393, 36.954498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.383354, 35.093155, 37.204086>,  <27.892889, 35.030109, 36.601070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.383354, 35.093155, 37.204086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.671417, 34.876545, 37.030590>,  <28.844255, 34.746578, 36.926491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.671417, 34.876545, 37.030590>,  <28.383354, 35.093155, 37.204086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.671417, 34.876545, 37.030590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618400, 0.784434, 0.047394,
		0.314577, -0.302357, 0.899790,
		0.720155, -0.541521, -0.433742,
		28.887465, 34.714088, 36.900467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.017050, 35.247719, 37.649605>,  <28.383354, 35.093155, 37.204086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.017050, 35.247719, 37.649605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.098917, 35.129826, 37.276245>,  <29.148037, 35.059090, 37.052227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.098917, 35.129826, 37.276245>,  <29.017050, 35.247719, 37.649605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.098917, 35.129826, 37.276245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482224, 0.860200, -0.165883,
		0.851805, -0.416157, 0.318186,
		0.204669, -0.294737, -0.933403,
		29.160318, 35.041405, 36.996223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.753706, 35.232777, 37.526913>,  <29.017050, 35.247719, 37.649605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.753706, 35.232777, 37.526913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.501932, 35.351231, 37.239548>,  <29.350868, 35.422302, 37.067127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.501932, 35.351231, 37.239548>,  <29.753706, 35.232777, 37.526913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.501932, 35.351231, 37.239548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480001, 0.875229, -0.059777,
		0.611076, -0.382465, -0.693041,
		-0.629432, 0.296132, -0.718415,
		29.313103, 35.440071, 37.024025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.108999, 35.344875, 36.985806>,  <29.753706, 35.232777, 37.526913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.108999, 35.344875, 36.985806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.795706, 35.593544, 36.982395>,  <29.607729, 35.742744, 36.980347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.795706, 35.593544, 36.982395>,  <30.108999, 35.344875, 36.985806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.795706, 35.593544, 36.982395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612840, 0.769658, -0.179033,
		-0.104734, -0.145452, -0.983806,
		-0.783235, 0.621667, -0.008529,
		29.560736, 35.780045, 36.979836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.449797, 34.735722, 36.733025>,  <30.108999, 35.344875, 36.985806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.449797, 34.735722, 36.733025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.525101, 34.779778, 37.123394>,  <30.570282, 34.806210, 37.357616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.525101, 34.779778, 37.123394>,  <30.449797, 34.735722, 36.733025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.525101, 34.779778, 37.123394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673356, -0.737847, -0.046622,
		0.714948, 0.665921, -0.213069,
		0.188258, 0.110139, 0.975924,
		30.581579, 34.812820, 37.416172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.075426, 35.094650, 37.075603>,  <30.449797, 34.735722, 36.733025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.075426, 35.094650, 37.075603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.975256, 34.818203, 37.346790>,  <30.915154, 34.652332, 37.509502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.975256, 34.818203, 37.346790>,  <31.075426, 35.094650, 37.075603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.975256, 34.818203, 37.346790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867171, -0.471495, -0.160332,
		0.430467, 0.547764, 0.717393,
		-0.250423, -0.691120, 0.677969,
		30.900129, 34.610867, 37.550182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.538630, 34.979988, 37.607178>,  <31.075426, 35.094650, 37.075603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.538630, 34.979988, 37.607178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.387400, 34.613007, 37.557655>,  <31.296661, 34.392818, 37.527943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.387400, 34.613007, 37.557655>,  <31.538630, 34.979988, 37.607178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.387400, 34.613007, 37.557655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923587, -0.382982, 0.017643,
		-0.063604, -0.107679, 0.992149,
		-0.378076, -0.917458, -0.123810,
		31.273977, 34.337769, 37.520512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.031898, 34.502518, 38.000492>,  <31.538630, 34.979988, 37.607178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.031898, 34.502518, 38.000492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.825045, 34.299530, 37.724796>,  <31.700933, 34.177738, 37.559380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.825045, 34.299530, 37.724796>,  <32.031898, 34.502518, 38.000492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.825045, 34.299530, 37.724796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851997, -0.382076, -0.357939,
		-0.081698, -0.772330, 0.629946,
		-0.517134, -0.507469, -0.689237,
		31.669905, 34.147289, 37.518024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.104710, 33.753994, 37.966335>,  <32.031898, 34.502518, 38.000492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.104710, 33.753994, 37.966335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.983091, 33.841129, 37.595367>,  <31.910122, 33.893410, 37.372787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.983091, 33.841129, 37.595367>,  <32.104710, 33.753994, 37.966335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.983091, 33.841129, 37.595367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733068, -0.568231, -0.373797,
		-0.608416, -0.793511, 0.013074,
		-0.304041, 0.217840, -0.927418,
		31.891878, 33.906483, 37.317142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.736824, 33.520493, 37.624702>,  <32.104710, 33.753994, 37.966335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.736824, 33.520493, 37.624702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.485348, 33.614059, 37.328045>,  <32.334461, 33.670200, 37.150051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.485348, 33.614059, 37.328045>,  <32.736824, 33.520493, 37.624702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.485348, 33.614059, 37.328045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580439, -0.493531, -0.647702,
		-0.517532, -0.837681, 0.174502,
		-0.628690, 0.233918, -0.741641,
		32.296741, 33.684235, 37.105553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.724300, 32.884510, 37.286369>,  <32.736824, 33.520493, 37.624702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.724300, 32.884510, 37.286369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.583504, 33.175476, 37.050751>,  <32.499023, 33.350056, 36.909382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.583504, 33.175476, 37.050751>,  <32.724300, 32.884510, 37.286369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.583504, 33.175476, 37.050751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434710, -0.430282, -0.791129,
		-0.828930, -0.534537, -0.164755,
		-0.351996, 0.727411, -0.589043,
		32.477905, 33.393700, 36.874039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.382610, 32.558010, 36.791840>,  <32.724300, 32.884510, 37.286369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.382610, 32.558010, 36.791840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.543262, 32.894070, 36.646046>,  <32.639652, 33.095703, 36.558571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.543262, 32.894070, 36.646046>,  <32.382610, 32.558010, 36.791840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.543262, 32.894070, 36.646046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384241, -0.515857, -0.765670,
		-0.831297, 0.167465, -0.530001,
		0.401628, 0.840147, -0.364483,
		32.663750, 33.146114, 36.536701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.149494, 32.625416, 36.134777>,  <32.382610, 32.558010, 36.791840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.149494, 32.625416, 36.134777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.451881, 32.886559, 36.115623>,  <32.633312, 33.043243, 36.104130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.451881, 32.886559, 36.115623>,  <32.149494, 32.625416, 36.134777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.451881, 32.886559, 36.115623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221302, -0.323725, -0.919906,
		-0.616065, 0.684824, -0.389204,
		0.755969, 0.652854, -0.047883,
		32.678673, 33.082413, 36.101257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.011093, 32.943474, 35.452324>,  <32.149494, 32.625416, 36.134777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.011093, 32.943474, 35.452324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.392780, 32.978725, 35.566658>,  <32.621792, 32.999878, 35.635258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.392780, 32.978725, 35.566658>,  <32.011093, 32.943474, 35.452324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.392780, 32.978725, 35.566658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298869, -0.242323, -0.923015,
		-0.012080, 0.966185, -0.257568,
		0.954218, 0.088129, 0.285835,
		32.679047, 33.005165, 35.652409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.339531, 33.344837, 34.945251>,  <32.011093, 32.943474, 35.452324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.339531, 33.344837, 34.945251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.656445, 33.168064, 35.113533>,  <32.846592, 33.062000, 35.214500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.656445, 33.168064, 35.113533>,  <32.339531, 33.344837, 34.945251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.656445, 33.168064, 35.113533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421075, -0.102975, -0.901161,
		0.441574, 0.891119, 0.104501,
		0.792280, -0.441932, 0.420699,
		32.894127, 33.035484, 35.239742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.856297, 33.649048, 34.580666>,  <32.339531, 33.344837, 34.945251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.856297, 33.649048, 34.580666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.009674, 33.320225, 34.749043>,  <33.101700, 33.122932, 34.850067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.009674, 33.320225, 34.749043>,  <32.856297, 33.649048, 34.580666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.009674, 33.320225, 34.749043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570537, -0.147575, -0.807904,
		0.726265, 0.549947, 0.412428,
		0.383441, -0.822058, 0.420944,
		33.124706, 33.073608, 34.875324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.569012, 33.745914, 34.492558>,  <32.856297, 33.649048, 34.580666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.569012, 33.745914, 34.492558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.519508, 33.357563, 34.574608>,  <33.489807, 33.124550, 34.623837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.519508, 33.357563, 34.574608>,  <33.569012, 33.745914, 34.492558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.519508, 33.357563, 34.574608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471888, -0.239422, -0.848527,
		0.872930, -0.008214, 0.487777,
		-0.123754, -0.970881, 0.205122,
		33.482384, 33.066299, 34.636143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.203331, 33.449013, 34.359177>,  <33.569012, 33.745914, 34.492558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.203331, 33.449013, 34.359177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.945202, 33.144440, 34.334549>,  <33.790325, 32.961697, 34.319775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.945202, 33.144440, 34.334549>,  <34.203331, 33.449013, 34.359177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.945202, 33.144440, 34.334549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338015, -0.212335, -0.916875,
		0.685063, -0.612487, 0.394398,
		-0.645318, -0.761429, -0.061567,
		33.751606, 32.916012, 34.316078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.484379, 32.759644, 34.064949>,  <34.203331, 33.449013, 34.359177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.484379, 32.759644, 34.064949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.093899, 32.695194, 34.006889>,  <33.859612, 32.656525, 33.972054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.093899, 32.695194, 34.006889>,  <34.484379, 32.759644, 34.064949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.093899, 32.695194, 34.006889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195979, -0.368929, -0.908561,
		0.092839, -0.915386, 0.391725,
		-0.976204, -0.161120, -0.145146,
		33.801037, 32.646858, 33.963345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.477943, 32.189800, 33.613064>,  <34.484379, 32.759644, 34.064949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.477943, 32.189800, 33.613064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.105885, 32.332985, 33.580357>,  <33.882648, 32.418896, 33.560734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.105885, 32.332985, 33.580357>,  <34.477943, 32.189800, 33.613064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.105885, 32.332985, 33.580357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001005, -0.225174, -0.974318,
		-0.367181, -0.906179, 0.209805,
		-0.930149, 0.357962, -0.081769,
		33.826839, 32.440372, 33.555824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.106194, 31.621313, 33.172932>,  <34.477943, 32.189800, 33.613064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.106194, 31.621313, 33.172932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.920536, 31.975107, 33.153915>,  <33.809143, 32.187382, 33.142506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.920536, 31.975107, 33.153915>,  <34.106194, 31.621313, 33.172932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.920536, 31.975107, 33.153915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258515, -0.186602, -0.947813,
		-0.847197, -0.427630, 0.315262,
		-0.464141, 0.884484, -0.047540,
		33.781292, 32.240452, 33.139652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.530346, 31.505901, 32.852165>,  <34.106194, 31.621313, 33.172932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.530346, 31.505901, 32.852165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.551476, 31.898861, 32.780499>,  <33.564156, 32.134636, 32.737499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.551476, 31.898861, 32.780499>,  <33.530346, 31.505901, 32.852165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.551476, 31.898861, 32.780499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311918, -0.154209, -0.937511,
		-0.948639, 0.105412, 0.298282,
		0.052827, 0.982399, -0.179168,
		33.567326, 32.193581, 32.726749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.994640, 31.625137, 32.372375>,  <33.530346, 31.505901, 32.852165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.994640, 31.625137, 32.372375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.219986, 31.953703, 32.336811>,  <33.355194, 32.150841, 32.315472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.219986, 31.953703, 32.336811>,  <32.994640, 31.625137, 32.372375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.219986, 31.953703, 32.336811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223744, 0.048086, -0.973461,
		-0.795339, 0.568302, 0.210876,
		0.563360, 0.821414, -0.088909,
		33.388992, 32.200127, 32.310139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.601677, 32.045879, 32.001991>,  <32.994640, 31.625137, 32.372375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.601677, 32.045879, 32.001991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.971085, 32.190777, 31.951580>,  <33.192730, 32.277718, 31.921333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.971085, 32.190777, 31.951580>,  <32.601677, 32.045879, 32.001991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.971085, 32.190777, 31.951580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150389, 0.039727, -0.987828,
		-0.352832, 0.931235, 0.091167,
		0.923522, 0.362248, -0.126030,
		33.248142, 32.299450, 31.913771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.555199, 32.691734, 31.659840>,  <32.601677, 32.045879, 32.001991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.555199, 32.691734, 31.659840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.932655, 32.577042, 31.593710>,  <33.159130, 32.508224, 31.554031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.932655, 32.577042, 31.593710>,  <32.555199, 32.691734, 31.659840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.932655, 32.577042, 31.593710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086387, 0.268821, -0.959308,
		0.319509, 0.919521, 0.228900,
		0.943637, -0.286734, -0.165326,
		33.215748, 32.491020, 31.544113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.951397, 33.276264, 31.351366>,  <32.555199, 32.691734, 31.659840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.951397, 33.276264, 31.351366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.157112, 32.946323, 31.257454>,  <33.280540, 32.748360, 31.201107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.157112, 32.946323, 31.257454>,  <32.951397, 33.276264, 31.351366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.157112, 32.946323, 31.257454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106191, 0.210408, -0.971829,
		0.851019, 0.524730, 0.020618,
		0.514286, -0.824856, -0.234783,
		33.311398, 32.698868, 31.187019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.424118, 33.487247, 30.785116>,  <32.951397, 33.276264, 31.351366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.424118, 33.487247, 30.785116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.405926, 33.088394, 30.760910>,  <33.395012, 32.849083, 30.746387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.405926, 33.088394, 30.760910>,  <33.424118, 33.487247, 30.785116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.405926, 33.088394, 30.760910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056749, 0.057899, -0.996708,
		0.997352, -0.048764, 0.053953,
		-0.045480, -0.997131, -0.060513,
		33.392281, 32.789253, 30.742756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.878761, 33.374977, 30.240675>,  <33.424118, 33.487247, 30.785116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.878761, 33.374977, 30.240675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.678158, 33.030144, 30.269823>,  <33.557796, 32.823246, 30.287312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.678158, 33.030144, 30.269823>,  <33.878761, 33.374977, 30.240675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.678158, 33.030144, 30.269823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075657, -0.127604, -0.988935,
		0.861840, -0.490443, 0.129217,
		-0.501505, -0.862081, 0.072869,
		33.527706, 32.771519, 30.291683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.243095, 32.900986, 29.936047>,  <33.878761, 33.374977, 30.240675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.243095, 32.900986, 29.936047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.867798, 32.762615, 29.937998>,  <33.642620, 32.679592, 29.939169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.867798, 32.762615, 29.937998>,  <34.243095, 32.900986, 29.936047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.867798, 32.762615, 29.937998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042515, -0.129287, -0.990695,
		0.343341, -0.929311, 0.136010,
		-0.938248, -0.345929, 0.004880,
		33.586323, 32.658836, 29.939461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.280014, 32.383442, 29.489658>,  <34.243095, 32.900986, 29.936047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.280014, 32.383442, 29.489658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.886429, 32.452953, 29.505705>,  <33.650276, 32.494659, 29.515333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.886429, 32.452953, 29.505705>,  <34.280014, 32.383442, 29.489658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.886429, 32.452953, 29.505705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072791, -0.185956, -0.979858,
		-0.162806, -0.967071, 0.195623,
		-0.983969, 0.173767, 0.040119,
		33.591240, 32.505089, 29.517740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.002880, 31.939625, 29.126377>,  <34.280014, 32.383442, 29.489658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.002880, 31.939625, 29.126377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.686642, 32.184402, 29.117628>,  <33.496899, 32.331268, 29.112379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.686642, 32.184402, 29.117628>,  <34.002880, 31.939625, 29.126377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.686642, 32.184402, 29.117628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074107, -0.131077, -0.988598,
		-0.607834, -0.779964, 0.148979,
		-0.790599, 0.611944, -0.021873,
		33.449463, 32.367985, 29.111067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.463165, 31.622669, 28.679857>,  <34.002880, 31.939625, 29.126377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.463165, 31.622669, 28.679857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.343899, 32.004475, 28.679943>,  <33.272339, 32.233559, 28.679995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.343899, 32.004475, 28.679943>,  <33.463165, 31.622669, 28.679857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.343899, 32.004475, 28.679943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125624, -0.039020, -0.991310,
		-0.946210, -0.295606, 0.131544,
		-0.298170, 0.954513, 0.000214,
		33.254448, 32.290829, 28.680008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.946426, 31.614460, 28.232121>,  <33.463165, 31.622669, 28.679857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.946426, 31.614460, 28.232121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.017349, 32.007706, 28.250244>,  <33.059902, 32.243652, 28.261118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.017349, 32.007706, 28.250244>,  <32.946426, 31.614460, 28.232121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.017349, 32.007706, 28.250244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181166, 0.077857, -0.980366,
		-0.967337, 0.165618, 0.191911,
		0.177308, 0.983112, 0.045310,
		33.070541, 32.302639, 28.263838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.375259, 32.013981, 28.037432>,  <32.946426, 31.614460, 28.232121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.375259, 32.013981, 28.037432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.664295, 32.285572, 27.985514>,  <32.837719, 32.448528, 27.954363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.664295, 32.285572, 27.985514>,  <32.375259, 32.013981, 28.037432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.664295, 32.285572, 27.985514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261009, 0.094118, -0.960737,
		-0.640104, 0.728100, 0.245228,
		0.722593, 0.678979, -0.129795,
		32.881073, 32.489265, 27.946575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.081478, 32.627346, 27.619396>,  <32.375259, 32.013981, 28.037432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.081478, 32.627346, 27.619396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.478611, 32.617859, 27.572527>,  <32.716888, 32.612167, 27.544405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.478611, 32.617859, 27.572527>,  <32.081478, 32.627346, 27.619396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.478611, 32.617859, 27.572527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114614, 0.089841, -0.989339,
		0.033996, 0.995674, 0.086478,
		0.992828, -0.023722, -0.117172,
		32.776459, 32.610741, 27.537374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.231915, 33.162319, 27.159388>,  <32.081478, 32.627346, 27.619396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.231915, 33.162319, 27.159388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.563835, 32.939404, 27.147652>,  <32.762985, 32.805653, 27.140610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.563835, 32.939404, 27.147652>,  <32.231915, 33.162319, 27.159388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.563835, 32.939404, 27.147652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045330, 0.119706, -0.991774,
		0.556221, 0.821641, 0.124594,
		0.829797, -0.557294, -0.029338,
		32.812775, 32.772217, 27.138851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.765961, 33.527191, 26.872416>,  <32.231915, 33.162319, 27.159388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.765961, 33.527191, 26.872416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.874805, 33.146984, 26.812462>,  <32.940113, 32.918861, 26.776489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.874805, 33.146984, 26.812462>,  <32.765961, 33.527191, 26.872416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.874805, 33.146984, 26.812462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293542, 0.230336, -0.927781,
		0.916398, 0.208467, 0.341696,
		0.272117, -0.950519, -0.149886,
		32.956440, 32.861828, 26.767496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.377960, 33.566067, 26.457434>,  <32.765961, 33.527191, 26.872416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.377960, 33.566067, 26.457434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.256508, 33.186897, 26.418983>,  <33.183636, 32.959396, 26.395914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.256508, 33.186897, 26.418983>,  <33.377960, 33.566067, 26.457434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.256508, 33.186897, 26.418983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379288, -0.027705, -0.924864,
		0.874041, -0.317278, 0.367950,
		-0.303633, -0.947928, -0.096124,
		33.165417, 32.902519, 26.390146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.938938, 33.171196, 26.146690>,  <33.377960, 33.566067, 26.457434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.938938, 33.171196, 26.146690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.614594, 32.949490, 26.071550>,  <33.419987, 32.816463, 26.026466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.614594, 32.949490, 26.071550>,  <33.938938, 33.171196, 26.146690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.614594, 32.949490, 26.071550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328217, -0.164944, -0.930090,
		0.484536, -0.815830, 0.315667,
		-0.810863, -0.554269, -0.187848,
		33.371334, 32.783211, 26.015196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.106960, 32.591251, 25.892107>,  <33.938938, 33.171196, 26.146690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.106960, 32.591251, 25.892107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.729626, 32.594589, 25.759418>,  <33.503223, 32.596592, 25.679806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.729626, 32.594589, 25.759418>,  <34.106960, 32.591251, 25.892107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.729626, 32.594589, 25.759418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331617, -0.011775, -0.943341,
		-0.011775, -0.999896, 0.008341,
		0.943341, -0.008341, 0.331721,
		33.446625, 32.597092, 25.659903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.928528, 32.004063, 25.426256>,  <34.106960, 32.591251, 25.892107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.928528, 32.004063, 25.426256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.680752, 32.307880, 25.346880>,  <33.532085, 32.490173, 25.299253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.680752, 32.307880, 25.346880>,  <33.928528, 32.004063, 25.426256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.680752, 32.307880, 25.346880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302387, -0.002422, -0.953182,
		-0.724468, -0.650447, -0.228177,
		-0.619442, 0.759548, -0.198441,
		33.494919, 32.535744, 25.287348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.796558, 31.987135, 24.659924>,  <33.928528, 32.004063, 25.426256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.796558, 31.987135, 24.659924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.648945, 32.346149, 24.756460>,  <33.560379, 32.561558, 24.814383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.648945, 32.346149, 24.756460>,  <33.796558, 31.987135, 24.659924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.648945, 32.346149, 24.756460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177049, 0.322801, -0.929760,
		-0.912398, -0.300382, -0.278032,
		-0.369032, 0.897536, 0.241341,
		33.538235, 32.615410, 24.828863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.269192, 32.151470, 24.176191>,  <33.796558, 31.987135, 24.659924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.269192, 32.151470, 24.176191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.381874, 32.512211, 24.307222>,  <33.449486, 32.728653, 24.385841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.381874, 32.512211, 24.307222>,  <33.269192, 32.151470, 24.176191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.381874, 32.512211, 24.307222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179504, 0.285842, -0.941314,
		-0.942560, 0.323977, -0.081362,
		0.281708, 0.901850, 0.327579,
		33.466385, 32.782764, 24.405497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.945515, 32.571247, 23.746399>,  <33.269192, 32.151470, 24.176191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.945515, 32.571247, 23.746399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.243420, 32.786243, 23.904602>,  <33.422165, 32.915241, 23.999523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.243420, 32.786243, 23.904602>,  <32.945515, 32.571247, 23.746399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.243420, 32.786243, 23.904602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175637, 0.413897, -0.893219,
		-0.643799, 0.734704, 0.213852,
		0.744764, 0.537494, 0.395508,
		33.466850, 32.947491, 24.023254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.889378, 33.219387, 23.503777>,  <32.945515, 32.571247, 23.746399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.889378, 33.219387, 23.503777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.269291, 33.237080, 23.627686>,  <33.497238, 33.247696, 23.702030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.269291, 33.237080, 23.627686>,  <32.889378, 33.219387, 23.503777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.269291, 33.237080, 23.627686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228951, 0.576575, -0.784310,
		-0.213300, 0.815846, 0.537493,
		0.949781, 0.044233, 0.309772,
		33.554226, 33.250351, 23.720617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.126072, 33.990978, 23.432661>,  <32.889378, 33.219387, 23.503777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.126072, 33.990978, 23.432661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.433678, 33.735428, 23.424206>,  <33.618240, 33.582096, 23.419132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.433678, 33.735428, 23.424206>,  <33.126072, 33.990978, 23.432661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.433678, 33.735428, 23.424206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411114, 0.519636, -0.748975,
		0.489489, 0.567284, 0.662261,
		0.769017, -0.638879, -0.021138,
		33.664383, 33.543762, 23.417864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.692532, 34.463860, 23.631788>,  <33.126072, 33.990978, 23.432661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.692532, 34.463860, 23.631788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.840542, 34.137901, 23.453342>,  <33.929348, 33.942326, 23.346275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.840542, 34.137901, 23.453342>,  <33.692532, 34.463860, 23.631788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.840542, 34.137901, 23.453342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488421, 0.579121, -0.652735,
		0.790268, 0.023640, 0.612306,
		0.370030, -0.814899, -0.446115,
		33.951550, 33.893433, 23.319508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.476746, 34.585243, 23.592701>,  <33.692532, 34.463860, 23.631788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.476746, 34.585243, 23.592701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.425220, 34.298363, 23.318758>,  <34.394306, 34.126236, 23.154392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.425220, 34.298363, 23.318758>,  <34.476746, 34.585243, 23.592701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.425220, 34.298363, 23.318758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592222, 0.498302, -0.633221,
		0.795412, -0.487154, 0.360555,
		-0.128811, -0.717200, -0.684859,
		34.386578, 34.083202, 23.113300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.118504, 34.620220, 23.181555>,  <34.476746, 34.585243, 23.592701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.118504, 34.620220, 23.181555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.881863, 34.394398, 22.951326>,  <34.739880, 34.258904, 22.813189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.881863, 34.394398, 22.951326>,  <35.118504, 34.620220, 23.181555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.881863, 34.394398, 22.951326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387537, 0.426894, -0.817053,
		0.706980, -0.706427, -0.033766,
		-0.591603, -0.564555, -0.575572,
		34.704380, 34.225033, 22.778654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.561489, 34.170128, 22.681408>,  <35.118504, 34.620220, 23.181555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.561489, 34.170128, 22.681408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.204006, 34.217155, 22.508221>,  <34.989517, 34.245373, 22.404308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.204006, 34.217155, 22.508221>,  <35.561489, 34.170128, 22.681408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.204006, 34.217155, 22.508221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394634, 0.665074, -0.633988,
		0.213419, -0.737465, -0.640779,
		-0.893709, 0.117568, -0.432968,
		34.935894, 34.252426, 22.378330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.646622, 34.196930, 22.003317>,  <35.561489, 34.170128, 22.681408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.646622, 34.196930, 22.003317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.273003, 34.339783, 22.002274>,  <35.048832, 34.425495, 22.001648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.273003, 34.339783, 22.002274>,  <35.646622, 34.196930, 22.003317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.273003, 34.339783, 22.002274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268875, 0.698380, -0.663304,
		-0.235067, -0.620260, -0.748346,
		-0.934050, 0.357133, -0.002606,
		34.992786, 34.446922, 22.001492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.561939, 34.426727, 21.343557>,  <35.646622, 34.196930, 22.003317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.561939, 34.426727, 21.343557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.272251, 34.626911, 21.533310>,  <35.098438, 34.747021, 21.647161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.272251, 34.626911, 21.533310>,  <35.561939, 34.426727, 21.343557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.272251, 34.626911, 21.533310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147425, 0.784409, -0.602469,
		-0.673622, -0.366386, -0.641868,
		-0.724223, 0.500464, 0.474381,
		35.054985, 34.777050, 21.675625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.051533, 34.722115, 20.818085>,  <35.561939, 34.426727, 21.343557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.051533, 34.722115, 20.818085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.026653, 34.934982, 21.155825>,  <35.011726, 35.062702, 21.358469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.026653, 34.934982, 21.155825>,  <35.051533, 34.722115, 20.818085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.026653, 34.934982, 21.155825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260546, 0.825312, -0.500974,
		-0.963456, 0.188834, -0.189985,
		-0.062196, 0.532166, 0.844352,
		35.007996, 35.094631, 21.409130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.489906, 35.290478, 20.746658>,  <35.051533, 34.722115, 20.818085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.489906, 35.290478, 20.746658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.787560, 35.390709, 20.994360>,  <34.966152, 35.450848, 21.142981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.787560, 35.390709, 20.994360>,  <34.489906, 35.290478, 20.746658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.787560, 35.390709, 20.994360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228919, 0.775207, -0.588770,
		-0.627581, 0.579883, 0.519497,
		0.744135, 0.250578, 0.619252,
		35.010799, 35.465881, 21.180136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.281227, 35.972549, 21.024349>,  <34.489906, 35.290478, 20.746658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.281227, 35.972549, 21.024349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.652046, 35.854321, 20.932076>,  <34.874538, 35.783382, 20.876711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.652046, 35.854321, 20.932076>,  <34.281227, 35.972549, 21.024349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.652046, 35.854321, 20.932076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105577, 0.796158, -0.595807,
		0.359764, 0.527988, 0.769284,
		0.927051, -0.295568, -0.230685,
		34.930161, 35.765652, 20.862869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.764355, 36.529369, 21.155613>,  <34.281227, 35.972549, 21.024349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.764355, 36.529369, 21.155613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.056667, 36.800697, 21.125069>,  <35.232056, 36.963493, 21.106741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.056667, 36.800697, 21.125069>,  <34.764355, 36.529369, 21.155613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.056667, 36.800697, 21.125069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312697, 0.233226, -0.920775,
		-0.606773, 0.696767, 0.382547,
		0.730785, 0.678323, -0.076362,
		35.275902, 37.004192, 21.102160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.482693, 37.280399, 20.931931>,  <34.764355, 36.529369, 21.155613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.482693, 37.280399, 20.931931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.866158, 37.234013, 20.827995>,  <35.096237, 37.206181, 20.765635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.866158, 37.234013, 20.827995>,  <34.482693, 37.280399, 20.931931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.866158, 37.234013, 20.827995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238615, 0.169831, -0.956149,
		0.155012, 0.978626, 0.135139,
		0.958663, -0.115968, -0.259840,
		35.153755, 37.199223, 20.750044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.405838, 37.530922, 20.324261>,  <34.482693, 37.280399, 20.931931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.405838, 37.530922, 20.324261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.748196, 37.324677, 20.340240>,  <34.953609, 37.200932, 20.349829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.748196, 37.324677, 20.340240>,  <34.405838, 37.530922, 20.324261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.748196, 37.324677, 20.340240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055729, -0.168755, -0.984081,
		0.514143, 0.840041, -0.173170,
		0.855892, -0.515609, 0.039949,
		35.004963, 37.169994, 20.352224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.558624, 37.777847, 19.626612>,  <34.405838, 37.530922, 20.324261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.558624, 37.777847, 19.626612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.837082, 37.589520, 19.409830>,  <35.004158, 37.476524, 19.279760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.837082, 37.589520, 19.409830>,  <34.558624, 37.777847, 19.626612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.837082, 37.589520, 19.409830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441562, -0.314416, 0.840337,
		-0.566046, -0.824300, -0.010982,
		0.696143, -0.470820, -0.541953,
		35.045925, 37.448273, 19.247244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.674988, 37.007401, 19.819971>,  <34.558624, 37.777847, 19.626612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.674988, 37.007401, 19.819971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.010048, 37.164101, 19.667721>,  <35.211082, 37.258121, 19.576370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.010048, 37.164101, 19.667721>,  <34.674988, 37.007401, 19.819971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.010048, 37.164101, 19.667721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504247, -0.286768, 0.814555,
		0.209954, -0.874239, -0.437752,
		0.837648, 0.391754, -0.380624,
		35.261341, 37.281628, 19.553534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.298836, 36.534180, 19.690897>,  <34.674988, 37.007401, 19.819971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.298836, 36.534180, 19.690897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.400841, 36.909176, 19.785616>,  <35.462044, 37.134174, 19.842447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.400841, 36.909176, 19.785616>,  <35.298836, 36.534180, 19.690897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.400841, 36.909176, 19.785616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343730, -0.316791, 0.884021,
		0.903779, -0.144043, -0.403031,
		0.255014, 0.937494, 0.236797,
		35.477345, 37.190426, 19.856655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.982517, 36.672871, 20.034533>,  <35.298836, 36.534180, 19.690897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.982517, 36.672871, 20.034533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.757801, 36.986267, 20.140766>,  <35.622971, 37.174305, 20.204506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.757801, 36.986267, 20.140766>,  <35.982517, 36.672871, 20.034533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.757801, 36.986267, 20.140766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297065, -0.108564, 0.948665,
		0.772101, 0.611849, -0.171757,
		-0.561793, 0.783489, 0.265582,
		35.589264, 37.221313, 20.220440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.378429, 37.209732, 20.407301>,  <35.982517, 36.672871, 20.034533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.378429, 37.209732, 20.407301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.991608, 37.218555, 20.508753>,  <35.759514, 37.223850, 20.569624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.991608, 37.218555, 20.508753>,  <36.378429, 37.209732, 20.407301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.991608, 37.218555, 20.508753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253787, 0.004610, 0.967249,
		0.020162, 0.999746, -0.010055,
		-0.967050, 0.022054, 0.253630,
		35.701492, 37.225170, 20.584843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.377678, 37.725651, 20.804451>,  <36.378429, 37.209732, 20.407301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.377678, 37.725651, 20.804451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.050545, 37.518162, 20.904110>,  <35.854267, 37.393669, 20.963905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.050545, 37.518162, 20.904110>,  <36.377678, 37.725651, 20.804451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.050545, 37.518162, 20.904110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225519, 0.109419, 0.968075,
		-0.529428, 0.847909, 0.027496,
		-0.817831, -0.518726, 0.249150,
		35.805195, 37.362545, 20.978855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.004147, 38.143116, 21.397066>,  <36.377678, 37.725651, 20.804451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.004147, 38.143116, 21.397066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.844803, 37.776234, 21.399687>,  <35.749199, 37.556103, 21.401258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.844803, 37.776234, 21.399687>,  <36.004147, 38.143116, 21.397066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.844803, 37.776234, 21.399687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100734, -0.036649, 0.994238,
		-0.911683, 0.396719, 0.106994,
		-0.398355, -0.917208, 0.006551,
		35.725296, 37.501072, 21.401651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.396561, 38.184750, 21.799797>,  <36.004147, 38.143116, 21.397066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.396561, 38.184750, 21.799797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.516476, 37.803146, 21.798820>,  <35.588425, 37.574184, 21.798235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.516476, 37.803146, 21.798820>,  <35.396561, 38.184750, 21.799797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.516476, 37.803146, 21.798820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183898, -0.060299, 0.981094,
		-0.936115, -0.293668, -0.193516,
		0.299785, -0.954003, -0.002442,
		35.606411, 37.516945, 21.798088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.851925, 37.829422, 22.266533>,  <35.396561, 38.184750, 21.799797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.851925, 37.829422, 22.266533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.160896, 37.577263, 22.235657>,  <35.346279, 37.425968, 22.217131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.160896, 37.577263, 22.235657>,  <34.851925, 37.829422, 22.266533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.160896, 37.577263, 22.235657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003557, -0.125831, 0.992045,
		-0.635094, -0.766008, -0.099438,
		0.772427, -0.630396, -0.077190,
		35.392624, 37.388145, 22.212500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.636482, 37.060581, 22.666954>,  <34.851925, 37.829422, 22.266533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.636482, 37.060581, 22.666954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.032303, 37.084797, 22.614611>,  <35.269794, 37.099327, 22.583204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.032303, 37.084797, 22.614611>,  <34.636482, 37.060581, 22.666954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.032303, 37.084797, 22.614611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115096, 0.214963, 0.969816,
		0.086837, -0.974744, 0.205750,
		0.989552, 0.060535, -0.130856,
		35.329166, 37.102959, 22.575354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.959148, 36.444504, 22.945774>,  <34.636482, 37.060581, 22.666954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.959148, 36.444504, 22.945774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.203342, 36.761112, 22.934418>,  <35.349857, 36.951077, 22.927603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.203342, 36.761112, 22.934418>,  <34.959148, 36.444504, 22.945774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.203342, 36.761112, 22.934418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137098, -0.070300, 0.988060,
		0.780071, -0.607089, -0.151433,
		0.610486, 0.791518, -0.028392,
		35.386490, 36.998569, 22.925900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.508034, 36.319302, 23.436333>,  <34.959148, 36.444504, 22.945774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.508034, 36.319302, 23.436333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.548233, 36.710144, 23.361326>,  <35.572353, 36.944649, 23.316322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.548233, 36.710144, 23.361326>,  <35.508034, 36.319302, 23.436333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.548233, 36.710144, 23.361326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210438, 0.163333, 0.963866,
		0.972428, -0.136329, -0.189206,
		0.100499, 0.977106, -0.187518,
		35.578384, 37.003277, 23.305071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.175602, 36.594929, 23.797548>,  <35.508034, 36.319302, 23.436333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.175602, 36.594929, 23.797548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.950150, 36.921082, 23.744671>,  <35.814880, 37.116772, 23.712944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.950150, 36.921082, 23.744671>,  <36.175602, 36.594929, 23.797548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.950150, 36.921082, 23.744671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122878, 0.241020, 0.962710,
		0.816838, 0.526367, -0.236038,
		-0.563629, 0.815382, -0.132195,
		35.781059, 37.165695, 23.705013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.578785, 37.162880, 24.200323>,  <36.175602, 36.594929, 23.797548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.578785, 37.162880, 24.200323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.198887, 37.279106, 24.153770>,  <35.970947, 37.348843, 24.125839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.198887, 37.279106, 24.153770>,  <36.578785, 37.162880, 24.200323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.198887, 37.279106, 24.153770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034136, 0.273449, 0.961281,
		0.311144, 0.916949, -0.249790,
		-0.949749, 0.290570, -0.116383,
		35.913963, 37.366276, 24.118856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.581909, 37.694378, 24.590149>,  <36.578785, 37.162880, 24.200323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.581909, 37.694378, 24.590149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.188808, 37.621532, 24.577305>,  <35.952950, 37.577824, 24.569599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.188808, 37.621532, 24.577305>,  <36.581909, 37.694378, 24.590149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.188808, 37.621532, 24.577305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088150, 0.308704, 0.947065,
		-0.162565, 0.933560, -0.319433,
		-0.982753, -0.182118, -0.032109,
		35.893982, 37.566898, 24.567673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.336216, 38.333672, 24.846962>,  <36.581909, 37.694378, 24.590149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.336216, 38.333672, 24.846962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.053066, 38.052711, 24.876738>,  <35.883175, 37.884136, 24.894602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.053066, 38.052711, 24.876738>,  <36.336216, 38.333672, 24.846962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.053066, 38.052711, 24.876738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251500, 0.349122, 0.902697,
		-0.660044, 0.620278, -0.423790,
		-0.707877, -0.702403, 0.074437,
		35.840702, 37.841991, 24.899069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.900707, 38.694717, 25.236883>,  <36.336216, 38.333672, 24.846962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.900707, 38.694717, 25.236883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.752193, 38.323856, 25.256996>,  <35.663086, 38.101337, 25.269064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.752193, 38.323856, 25.256996>,  <35.900707, 38.694717, 25.236883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.752193, 38.323856, 25.256996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340033, 0.186161, 0.921803,
		-0.864017, 0.325152, -0.384383,
		-0.371283, -0.927157, 0.050284,
		35.640808, 38.045708, 25.272081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.344418, 38.776096, 25.626526>,  <35.900707, 38.694717, 25.236883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.344418, 38.776096, 25.626526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.368988, 38.379192, 25.669701>,  <35.383728, 38.141048, 25.695606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.368988, 38.379192, 25.669701>,  <35.344418, 38.776096, 25.626526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.368988, 38.379192, 25.669701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319379, 0.082916, 0.943992,
		-0.945634, -0.092454, -0.311814,
		0.061422, -0.992259, 0.107936,
		35.387413, 38.081516, 25.702082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.717854, 38.526093, 25.831324>,  <35.344418, 38.776096, 25.626526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.717854, 38.526093, 25.831324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.001366, 38.288273, 25.983185>,  <35.171474, 38.145580, 26.074301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.001366, 38.288273, 25.983185>,  <34.717854, 38.526093, 25.831324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.001366, 38.288273, 25.983185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437574, 0.051586, 0.897702,
		-0.553316, -0.802400, -0.223597,
		0.708782, -0.594553, 0.379653,
		35.214001, 38.109909, 26.097080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.472282, 37.991028, 26.325182>,  <34.717854, 38.526093, 25.831324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.472282, 37.991028, 26.325182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.838688, 37.932693, 26.474663>,  <35.058529, 37.897694, 26.564352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.838688, 37.932693, 26.474663>,  <34.472282, 37.991028, 26.325182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.838688, 37.932693, 26.474663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400653, -0.379002, 0.834167,
		0.019981, -0.913832, -0.405601,
		0.916012, -0.145837, 0.373702,
		35.113491, 37.888943, 26.586773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.484798, 37.308983, 26.585936>,  <34.472282, 37.991028, 26.325182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.484798, 37.308983, 26.585936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.791916, 37.478798, 26.777878>,  <34.976185, 37.580685, 26.893044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.791916, 37.478798, 26.777878>,  <34.484798, 37.308983, 26.585936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.791916, 37.478798, 26.777878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390544, -0.283615, 0.875807,
		0.507904, -0.859845, -0.051959,
		0.767795, 0.424534, 0.479856,
		35.022255, 37.606159, 26.921835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.780602, 36.794891, 27.093330>,  <34.484798, 37.308983, 26.585936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.780602, 36.794891, 27.093330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.878899, 37.158230, 27.228695>,  <34.937878, 37.376232, 27.309914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.878899, 37.158230, 27.228695>,  <34.780602, 36.794891, 27.093330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.878899, 37.158230, 27.228695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381386, -0.230357, 0.895254,
		0.891155, -0.349065, 0.289822,
		0.245740, 0.908344, 0.338413,
		34.952621, 37.430733, 27.330219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.107998, 36.645679, 27.705502>,  <34.780602, 36.794891, 27.093330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.107998, 36.645679, 27.705502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.035175, 37.037251, 27.742495>,  <34.991482, 37.272194, 27.764690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.035175, 37.037251, 27.742495>,  <35.107998, 36.645679, 27.705502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.035175, 37.037251, 27.742495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298501, -0.144638, 0.943386,
		0.936885, 0.144141, 0.318543,
		-0.182054, 0.978929, 0.092483,
		34.980560, 37.330929, 27.770239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.485855, 36.960903, 28.240828>,  <35.107998, 36.645679, 27.705502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.485855, 36.960903, 28.240828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.193142, 37.233219, 28.228046>,  <35.017513, 37.396610, 28.220379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.193142, 37.233219, 28.228046>,  <35.485855, 36.960903, 28.240828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.193142, 37.233219, 28.228046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146227, -0.111045, 0.982999,
		0.665671, 0.724009, 0.180811,
		-0.731778, 0.680793, -0.031951,
		34.973610, 37.437458, 28.218462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.584015, 37.405514, 28.834372>,  <35.485855, 36.960903, 28.240828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.584015, 37.405514, 28.834372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.199932, 37.410496, 28.722765>,  <34.969482, 37.413483, 28.655800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.199932, 37.410496, 28.722765>,  <35.584015, 37.405514, 28.834372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.199932, 37.410496, 28.722765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277083, -0.167982, 0.946048,
		-0.035090, 0.985711, 0.164748,
		-0.960205, 0.012452, -0.279018,
		34.911869, 37.414230, 28.639059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.298149, 37.740467, 29.310198>,  <35.584015, 37.405514, 28.834372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.298149, 37.740467, 29.310198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.931652, 37.649960, 29.177959>,  <34.711754, 37.595654, 29.098616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.931652, 37.649960, 29.177959>,  <35.298149, 37.740467, 29.310198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.931652, 37.649960, 29.177959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278007, -0.235062, 0.931374,
		-0.288455, 0.945276, 0.152469,
		-0.916246, -0.226272, -0.330598,
		34.656780, 37.582077, 29.078779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.819019, 38.095287, 29.709906>,  <35.298149, 37.740467, 29.310198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.819019, 38.095287, 29.709906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.615589, 37.788445, 29.553495>,  <34.493530, 37.604340, 29.459648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.615589, 37.788445, 29.553495>,  <34.819019, 38.095287, 29.709906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.615589, 37.788445, 29.553495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330051, -0.245769, 0.911408,
		-0.795248, 0.592576, -0.128193,
		-0.508573, -0.767106, -0.391028,
		34.463017, 37.558311, 29.436188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.169842, 38.171631, 30.038218>,  <34.819019, 38.095287, 29.709906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.169842, 38.171631, 30.038218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.186119, 37.796436, 29.900505>,  <34.195885, 37.571320, 29.817877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.186119, 37.796436, 29.900505>,  <34.169842, 38.171631, 30.038218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.186119, 37.796436, 29.900505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424282, -0.328179, 0.843968,
		-0.904615, 0.111729, -0.411325,
		0.040692, -0.937985, -0.344281,
		34.198326, 37.515041, 29.797220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.666531, 37.947723, 30.233282>,  <34.169842, 38.171631, 30.038218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.666531, 37.947723, 30.233282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.822716, 37.586487, 30.161772>,  <33.916428, 37.369743, 30.118866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.822716, 37.586487, 30.161772>,  <33.666531, 37.947723, 30.233282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.822716, 37.586487, 30.161772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306252, -0.310546, 0.899872,
		-0.868189, -0.296612, -0.397831,
		0.390458, -0.903096, -0.178774,
		33.939854, 37.315559, 30.108139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.174103, 37.425682, 30.389866>,  <33.666531, 37.947723, 30.233282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.174103, 37.425682, 30.389866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.527813, 37.241646, 30.421789>,  <33.740040, 37.131222, 30.440943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.527813, 37.241646, 30.421789>,  <33.174103, 37.425682, 30.389866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.527813, 37.241646, 30.421789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275848, -0.376781, 0.884276,
		-0.376781, -0.803959, -0.460094,
		-0.884276, 0.460094, -0.079806,
		33.793095, 37.103619, 30.445730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.038334, 36.692989, 30.532804>,  <33.174103, 37.425682, 30.389866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.038334, 36.692989, 30.532804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.400558, 36.799786, 30.664675>,  <33.617893, 36.863861, 30.743797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.400558, 36.799786, 30.664675>,  <33.038334, 36.692989, 30.532804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.400558, 36.799786, 30.664675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212110, -0.388055, 0.896896,
		0.367392, -0.882117, -0.294775,
		0.905557, 0.266987, 0.329674,
		33.672226, 36.879883, 30.763577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.160748, 36.235821, 31.012766>,  <33.038334, 36.692989, 30.532804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.160748, 36.235821, 31.012766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.454628, 36.484825, 31.120619>,  <33.630955, 36.634228, 31.185331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.454628, 36.484825, 31.120619>,  <33.160748, 36.235821, 31.012766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.454628, 36.484825, 31.120619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067104, -0.328821, 0.942005,
		0.675066, -0.710184, -0.199812,
		0.734699, 0.622507, 0.269632,
		33.675037, 36.671577, 31.201509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.510151, 35.753460, 31.427855>,  <33.160748, 36.235821, 31.012766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.510151, 35.753460, 31.427855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.636250, 36.128407, 31.487139>,  <33.711910, 36.353374, 31.522709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.636250, 36.128407, 31.487139>,  <33.510151, 35.753460, 31.427855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.636250, 36.128407, 31.487139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113697, -0.192355, 0.974717,
		0.942175, -0.290425, -0.167215,
		0.315246, 0.937365, 0.148211,
		33.730824, 36.409615, 31.531603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.999134, 35.648788, 31.914261>,  <33.510151, 35.753460, 31.427855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.999134, 35.648788, 31.914261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.905029, 36.036636, 31.941044>,  <33.848568, 36.269344, 31.957113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.905029, 36.036636, 31.941044>,  <33.999134, 35.648788, 31.914261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.905029, 36.036636, 31.941044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187604, -0.022291, 0.981992,
		0.953654, 0.243586, -0.176661,
		-0.235262, 0.969623, 0.066956,
		33.834450, 36.327522, 31.961130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.629650, 35.989071, 32.227776>,  <33.999134, 35.648788, 31.914261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.629650, 35.989071, 32.227776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.310337, 36.219425, 32.298313>,  <34.118748, 36.357639, 32.340637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.310337, 36.219425, 32.298313>,  <34.629650, 35.989071, 32.227776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.310337, 36.219425, 32.298313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156294, -0.084684, 0.984073,
		0.581648, 0.813132, -0.022405,
		-0.798284, 0.575886, 0.176344,
		34.070850, 36.392193, 32.351215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.806252, 36.522545, 32.769619>,  <34.629650, 35.989071, 32.227776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.806252, 36.522545, 32.769619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.412537, 36.451946, 32.767982>,  <34.176308, 36.409588, 32.766998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.412537, 36.451946, 32.767982>,  <34.806252, 36.522545, 32.769619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.412537, 36.451946, 32.767982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044038, -0.267911, 0.962437,
		-0.170968, 0.947139, 0.271475,
		-0.984292, -0.176501, -0.004094,
		34.117249, 36.398994, 32.766754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.565937, 36.758484, 33.465191>,  <34.806252, 36.522545, 32.769619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.565937, 36.758484, 33.465191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.270824, 36.528698, 33.323391>,  <34.093758, 36.390827, 33.238312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.270824, 36.528698, 33.323391>,  <34.565937, 36.758484, 33.465191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.270824, 36.528698, 33.323391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157290, -0.364397, 0.917864,
		-0.656462, 0.732939, 0.178486,
		-0.737778, -0.574469, -0.354497,
		34.049492, 36.356358, 33.217041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.887829, 36.974209, 33.719227>,  <34.565937, 36.758484, 33.465191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.887829, 36.974209, 33.719227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.811756, 36.598545, 33.604816>,  <33.766113, 36.373146, 33.536171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.811756, 36.598545, 33.604816>,  <33.887829, 36.974209, 33.719227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.811756, 36.598545, 33.604816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228623, -0.240969, 0.943221,
		-0.954757, 0.244780, -0.168885,
		-0.190185, -0.939157, -0.286030,
		33.754700, 36.316799, 33.519009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.145859, 36.822124, 33.938068>,  <33.887829, 36.974209, 33.719227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.145859, 36.822124, 33.938068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.346416, 36.478024, 33.901028>,  <33.466751, 36.271564, 33.878803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.346416, 36.478024, 33.901028>,  <33.145859, 36.822124, 33.938068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.346416, 36.478024, 33.901028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217358, -0.228825, 0.948891,
		-0.837474, -0.455639, -0.301713,
		0.501391, -0.860251, -0.092598,
		33.496834, 36.219948, 33.873249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.802120, 36.434624, 34.392101>,  <33.145859, 36.822124, 33.938068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.802120, 36.434624, 34.392101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.128353, 36.220684, 34.303768>,  <33.324093, 36.092319, 34.250771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.128353, 36.220684, 34.303768>,  <32.802120, 36.434624, 34.392101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.128353, 36.220684, 34.303768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016593, -0.359858, 0.932859,
		-0.578407, -0.764486, -0.284618,
		0.815580, -0.534849, -0.220830,
		33.373028, 36.060230, 34.237518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.702595, 35.730740, 34.601036>,  <32.802120, 36.434624, 34.392101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.702595, 35.730740, 34.601036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.100983, 35.763714, 34.586941>,  <33.340015, 35.783497, 34.578484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.100983, 35.763714, 34.586941>,  <32.702595, 35.730740, 34.601036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.100983, 35.763714, 34.586941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069059, -0.454849, 0.887887,
		0.057165, -0.886745, -0.458711,
		0.995973, 0.082434, -0.035237,
		33.399776, 35.788445, 34.576370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.939129, 35.015961, 34.684658>,  <32.702595, 35.730740, 34.601036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.939129, 35.015961, 34.684658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.225868, 35.275291, 34.787262>,  <33.397911, 35.430889, 34.848824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.225868, 35.275291, 34.787262>,  <32.939129, 35.015961, 34.684658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.225868, 35.275291, 34.787262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148019, -0.501032, 0.852677,
		0.681333, -0.573273, -0.455130,
		0.716851, 0.648325, 0.256514,
		33.440922, 35.469788, 34.864216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.412868, 34.591793, 34.964676>,  <32.939129, 35.015961, 34.684658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.412868, 34.591793, 34.964676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.506828, 34.951626, 35.111961>,  <33.563206, 35.167526, 35.200333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.506828, 34.951626, 35.111961>,  <33.412868, 34.591793, 34.964676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.506828, 34.951626, 35.111961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046413, -0.388758, 0.920170,
		0.970911, -0.199058, -0.133071,
		0.234900, 0.899579, 0.368211,
		33.577297, 35.221500, 35.222424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.149555, 34.560703, 35.331333>,  <33.412868, 34.591793, 34.964676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.149555, 34.560703, 35.331333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.973835, 34.896351, 35.459644>,  <33.868404, 35.097740, 35.536633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.973835, 34.896351, 35.459644>,  <34.149555, 34.560703, 35.331333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.973835, 34.896351, 35.459644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323405, -0.185414, 0.927917,
		0.838109, 0.511373, -0.189923,
		-0.439298, 0.839118, 0.320779,
		33.842045, 35.148087, 35.555878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.677784, 34.923889, 35.869579>,  <34.149555, 34.560703, 35.331333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.677784, 34.923889, 35.869579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.304951, 35.043488, 35.951385>,  <34.081249, 35.115246, 36.000469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.304951, 35.043488, 35.951385>,  <34.677784, 34.923889, 35.869579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.304951, 35.043488, 35.951385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130004, -0.250862, 0.959253,
		0.338115, 0.920691, 0.194954,
		-0.932082, 0.298993, 0.204514,
		34.025326, 35.133186, 36.012741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.208450, 34.791191, 36.328297>,  <34.677784, 34.923889, 35.869579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.208450, 34.791191, 36.328297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.561413, 34.682247, 36.174839>,  <35.773190, 34.616879, 36.082764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.561413, 34.682247, 36.174839>,  <35.208450, 34.791191, 36.328297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.561413, 34.682247, 36.174839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250529, 0.962193, -0.106864,
		0.398241, -0.001816, 0.917279,
		0.882405, -0.272363, -0.383640,
		35.826134, 34.600540, 36.059746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.586468, 35.380997, 36.456184>,  <35.208450, 34.791191, 36.328297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.586468, 35.380997, 36.456184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.805237, 35.166824, 36.198753>,  <35.936501, 35.038322, 36.044296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.805237, 35.166824, 36.198753>,  <35.586468, 35.380997, 36.456184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.805237, 35.166824, 36.198753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239601, 0.836694, -0.492477,
		0.802162, 0.115148, 0.585899,
		0.546926, -0.535429, -0.643574,
		35.969315, 35.006195, 36.005680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.182812, 35.774597, 36.313042>,  <35.586468, 35.380997, 36.456184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.182812, 35.774597, 36.313042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.190250, 35.494968, 36.027119>,  <36.194714, 35.327190, 35.855564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.190250, 35.494968, 36.027119>,  <36.182812, 35.774597, 36.313042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.190250, 35.494968, 36.027119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247539, 0.695897, -0.674130,
		0.968699, -0.164406, 0.185990,
		0.018599, -0.699069, -0.714812,
		36.195831, 35.285248, 35.812675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.787483, 35.980194, 35.943569>,  <36.182812, 35.774597, 36.313042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.787483, 35.980194, 35.943569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.594982, 35.740795, 35.687386>,  <36.479481, 35.597157, 35.533676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.594982, 35.740795, 35.687386>,  <36.787483, 35.980194, 35.943569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.594982, 35.740795, 35.687386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313227, 0.564987, -0.763334,
		0.818710, -0.567966, -0.084435,
		-0.481252, -0.598501, -0.640462,
		36.450607, 35.561245, 35.495247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.254288, 35.885574, 35.510536>,  <36.787483, 35.980194, 35.943569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.254288, 35.885574, 35.510536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.915787, 35.814667, 35.309563>,  <36.712688, 35.772121, 35.188980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.915787, 35.814667, 35.309563>,  <37.254288, 35.885574, 35.510536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.915787, 35.814667, 35.309563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410921, 0.383093, -0.827275,
		0.339123, -0.906542, -0.251352,
		-0.846250, -0.177263, -0.502432,
		36.661911, 35.761486, 35.158833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.538834, 35.799194, 34.808228>,  <37.254288, 35.885574, 35.510536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.538834, 35.799194, 34.808228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.146858, 35.859676, 34.756279>,  <36.911674, 35.895966, 34.725109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.146858, 35.859676, 34.756279>,  <37.538834, 35.799194, 34.808228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.146858, 35.859676, 34.756279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175404, 0.344731, -0.922168,
		-0.094665, -0.926444, -0.364336,
		-0.979935, 0.151203, -0.129868,
		36.852879, 35.905037, 34.717319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.380241, 35.542240, 34.189419>,  <37.538834, 35.799194, 34.808228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.380241, 35.542240, 34.189419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.068993, 35.791519, 34.220791>,  <36.882244, 35.941086, 34.239616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.068993, 35.791519, 34.220791>,  <37.380241, 35.542240, 34.189419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.068993, 35.791519, 34.220791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248338, 0.419939, -0.872914,
		-0.576933, -0.659758, -0.481527,
		-0.778124, 0.623194, 0.078434,
		36.835556, 35.978477, 34.244320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.028973, 35.462914, 33.572456>,  <37.380241, 35.542240, 34.189419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.028973, 35.462914, 33.572456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.877739, 35.811245, 33.698128>,  <36.786999, 36.020245, 33.773533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.877739, 35.811245, 33.698128>,  <37.028973, 35.462914, 33.572456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.877739, 35.811245, 33.698128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118710, 0.382174, -0.916434,
		-0.918130, -0.309189, -0.247869,
		-0.378081, 0.870830, 0.314182,
		36.764317, 36.072495, 33.792381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.532913, 35.595329, 33.131092>,  <37.028973, 35.462914, 33.572456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.532913, 35.595329, 33.131092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.624958, 35.956039, 33.277435>,  <36.680183, 36.172466, 33.365242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.624958, 35.956039, 33.277435>,  <36.532913, 35.595329, 33.131092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.624958, 35.956039, 33.277435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178245, 0.330532, -0.926810,
		-0.956701, 0.278483, -0.084678,
		0.230112, 0.901774, 0.365859,
		36.693993, 36.226570, 33.387192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.067646, 36.197342, 32.780350>,  <36.532913, 35.595329, 33.131092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.067646, 36.197342, 32.780350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.415131, 36.337353, 32.920532>,  <36.623623, 36.421360, 33.004642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.415131, 36.337353, 32.920532>,  <36.067646, 36.197342, 32.780350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.415131, 36.337353, 32.920532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288672, 0.217182, -0.932470,
		-0.402500, 0.911216, 0.087627,
		0.868713, 0.350024, 0.350459,
		36.675743, 36.442360, 33.025669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.114784, 36.908092, 32.479542>,  <36.067646, 36.197342, 32.780350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.114784, 36.908092, 32.479542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.491646, 36.838196, 32.593956>,  <36.717762, 36.796257, 32.662605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.491646, 36.838196, 32.593956>,  <36.114784, 36.908092, 32.479542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.491646, 36.838196, 32.593956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309776, 0.128013, -0.942152,
		0.128013, 0.976258, 0.174737,
		0.942152, -0.174737, 0.286034,
		36.774292, 36.785774, 32.679768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.610260, 37.494934, 32.265709>,  <36.114784, 36.908092, 32.479542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.610260, 37.494934, 32.265709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.858788, 37.188210, 32.330151>,  <37.007904, 37.004173, 32.368816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.858788, 37.188210, 32.330151>,  <36.610260, 37.494934, 32.265709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.858788, 37.188210, 32.330151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451502, 0.182325, -0.873444,
		0.640395, 0.615429, 0.459501,
		0.621321, -0.766815, 0.161107,
		37.045185, 36.958164, 32.378483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.317009, 37.705990, 32.096207>,  <36.610260, 37.494934, 32.265709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.317009, 37.705990, 32.096207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.294014, 37.309219, 32.050976>,  <37.280216, 37.071159, 32.023838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.294014, 37.309219, 32.050976>,  <37.317009, 37.705990, 32.096207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.294014, 37.309219, 32.050976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317119, 0.089252, -0.944177,
		0.946642, -0.090137, 0.309426,
		-0.057489, -0.991922, -0.113074,
		37.276768, 37.011642, 32.017056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.006886, 37.556190, 31.807100>,  <37.317009, 37.705990, 32.096207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.006886, 37.556190, 31.807100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.749340, 37.259071, 31.733686>,  <37.594810, 37.080799, 31.689638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.749340, 37.259071, 31.733686>,  <38.006886, 37.556190, 31.807100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.749340, 37.259071, 31.733686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187311, 0.079553, -0.979074,
		0.741857, -0.664770, 0.087913,
		-0.643865, -0.742800, -0.183535,
		37.556179, 37.036232, 31.678625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.309376, 37.132626, 31.323639>,  <38.006886, 37.556190, 31.807100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.309376, 37.132626, 31.323639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.937778, 36.995571, 31.267675>,  <37.714821, 36.913338, 31.234097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.937778, 36.995571, 31.267675>,  <38.309376, 37.132626, 31.323639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.937778, 36.995571, 31.267675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138541, 0.028605, -0.989944,
		0.343196, -0.939032, 0.020896,
		-0.928991, -0.342640, -0.139911,
		37.659081, 36.892780, 31.225702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.371761, 36.593685, 30.843235>,  <38.309376, 37.132626, 31.323639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.371761, 36.593685, 30.843235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.987892, 36.706043, 30.838644>,  <37.757572, 36.773460, 30.835890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.987892, 36.706043, 30.838644>,  <38.371761, 36.593685, 30.843235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.987892, 36.706043, 30.838644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018192, 0.021307, -0.999607,
		-0.280544, -0.959501, -0.025558,
		-0.959669, 0.280899, -0.011478,
		37.699993, 36.790314, 30.835201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.111023, 36.367012, 30.253700>,  <38.371761, 36.593685, 30.843235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.111023, 36.367012, 30.253700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.843212, 36.654621, 30.328249>,  <37.682526, 36.827187, 30.372978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.843212, 36.654621, 30.328249>,  <38.111023, 36.367012, 30.253700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.843212, 36.654621, 30.328249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133107, 0.130703, -0.982445,
		-0.730763, -0.682582, 0.008198,
		-0.669528, 0.719026, 0.186370,
		37.642353, 36.870327, 30.384159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.600216, 36.247074, 29.675068>,  <38.111023, 36.367012, 30.253700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.600216, 36.247074, 29.675068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.539528, 36.611698, 29.827927>,  <37.503113, 36.830475, 29.919641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.539528, 36.611698, 29.827927>,  <37.600216, 36.247074, 29.675068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.539528, 36.611698, 29.827927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200259, 0.350253, -0.914997,
		-0.967924, -0.215355, 0.129407,
		-0.151724, 0.911562, 0.382145,
		37.494011, 36.885166, 29.942570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.024883, 36.417252, 29.475748>,  <37.600216, 36.247074, 29.675068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.024883, 36.417252, 29.475748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.180183, 36.781231, 29.534073>,  <37.273361, 36.999619, 29.569067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.180183, 36.781231, 29.534073>,  <37.024883, 36.417252, 29.475748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.180183, 36.781231, 29.534073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284399, 0.268806, -0.920250,
		-0.876573, 0.315817, 0.363151,
		0.388248, 0.909947, 0.145810,
		37.296658, 37.054214, 29.577816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.583397, 36.934658, 29.060459>,  <37.024883, 36.417252, 29.475748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.583397, 36.934658, 29.060459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.918156, 37.139065, 29.138920>,  <37.119011, 37.261707, 29.185995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.918156, 37.139065, 29.138920>,  <36.583397, 36.934658, 29.060459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.918156, 37.139065, 29.138920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043544, 0.295062, -0.954485,
		-0.545630, 0.807344, 0.224684,
		0.836894, 0.511012, 0.196149,
		37.169224, 37.292370, 29.197765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.436287, 37.681198, 28.886026>,  <36.583397, 36.934658, 29.060459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.436287, 37.681198, 28.886026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.821655, 37.577301, 28.859661>,  <37.052876, 37.514961, 28.843842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.821655, 37.577301, 28.859661>,  <36.436287, 37.681198, 28.886026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.821655, 37.577301, 28.859661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003747, 0.232875, -0.972500,
		0.267953, 0.937177, 0.223384,
		0.963425, -0.259747, -0.065911,
		37.110683, 37.499378, 28.839888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.659576, 38.120659, 28.421709>,  <36.436287, 37.681198, 28.886026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.659576, 38.120659, 28.421709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.965134, 37.862770, 28.410378>,  <37.148468, 37.708035, 28.403578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.965134, 37.862770, 28.410378>,  <36.659576, 38.120659, 28.421709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.965134, 37.862770, 28.410378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183663, 0.259275, -0.948180,
		0.618661, 0.719100, 0.316470,
		0.763889, -0.644726, -0.028331,
		37.194302, 37.669353, 28.401878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.300411, 38.458824, 28.018137>,  <36.659576, 38.120659, 28.421709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.300411, 38.458824, 28.018137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.354988, 38.063034, 27.998898>,  <37.387733, 37.825558, 27.987354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.354988, 38.063034, 27.998898>,  <37.300411, 38.458824, 28.018137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.354988, 38.063034, 27.998898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035213, 0.053364, -0.997954,
		0.990021, 0.134473, 0.042124,
		0.136446, -0.989479, -0.048096,
		37.395924, 37.766190, 27.984468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.589523, 38.308266, 27.353600>,  <37.300411, 38.458824, 28.018137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.589523, 38.308266, 27.353600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.494740, 37.942970, 27.486176>,  <37.437870, 37.723793, 27.565722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.494740, 37.942970, 27.486176>,  <37.589523, 38.308266, 27.353600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.494740, 37.942970, 27.486176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128966, -0.308568, -0.942419,
		0.962921, -0.266061, -0.044657,
		-0.236961, -0.913235, 0.331439,
		37.423653, 37.668999, 27.585608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.118622, 37.855728, 27.098351>,  <37.589523, 38.308266, 27.353600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.118622, 37.855728, 27.098351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.811333, 37.606495, 27.157137>,  <37.626961, 37.456955, 27.192410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.811333, 37.606495, 27.157137>,  <38.118622, 37.855728, 27.098351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.811333, 37.606495, 27.157137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210530, -0.462690, -0.861159,
		0.604576, -0.630621, 0.486627,
		-0.768222, -0.623085, 0.146967,
		37.580868, 37.419571, 27.201227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.373180, 37.186771, 27.126446>,  <38.118622, 37.855728, 27.098351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.373180, 37.186771, 27.126446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.987976, 37.167046, 27.020483>,  <37.756855, 37.155209, 26.956905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.987976, 37.167046, 27.020483>,  <38.373180, 37.186771, 27.126446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.987976, 37.167046, 27.020483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262497, -0.393729, -0.880950,
		-0.060860, -0.917903, 0.392110,
		-0.963012, -0.049313, -0.264909,
		37.699074, 37.152252, 26.941010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.222633, 36.451557, 26.969452>,  <38.373180, 37.186771, 27.126446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.222633, 36.451557, 26.969452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.993149, 36.711468, 26.769993>,  <37.855457, 36.867413, 26.650318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.993149, 36.711468, 26.769993>,  <38.222633, 36.451557, 26.969452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.993149, 36.711468, 26.769993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194025, -0.483659, -0.853480,
		-0.795747, -0.586399, 0.151407,
		-0.573709, 0.649777, -0.498646,
		37.821037, 36.906403, 26.620399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.851017, 36.073189, 26.406038>,  <38.222633, 36.451557, 26.969452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.851017, 36.073189, 26.406038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.817741, 36.454983, 26.291475>,  <37.797775, 36.684059, 26.222738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.817741, 36.454983, 26.291475>,  <37.851017, 36.073189, 26.406038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.817741, 36.454983, 26.291475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125007, -0.275138, -0.953243,
		-0.988662, -0.115107, -0.096428,
		-0.083194, 0.954489, -0.286407,
		37.792782, 36.741329, 26.205553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.392311, 36.002823, 25.887482>,  <37.851017, 36.073189, 26.406038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.392311, 36.002823, 25.887482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.576309, 36.352070, 25.822899>,  <37.686710, 36.561619, 25.784149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.576309, 36.352070, 25.822899>,  <37.392311, 36.002823, 25.887482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.576309, 36.352070, 25.822899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128407, -0.245341, -0.960895,
		-0.878587, 0.421276, -0.224971,
		0.459997, 0.873117, -0.161458,
		37.714310, 36.614006, 25.774462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.176086, 36.152218, 25.220440>,  <37.392311, 36.002823, 25.887482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.176086, 36.152218, 25.220440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.466930, 36.423359, 25.263931>,  <37.641438, 36.586044, 25.290026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.466930, 36.423359, 25.263931>,  <37.176086, 36.152218, 25.220440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.466930, 36.423359, 25.263931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208027, -0.066619, -0.975852,
		-0.654240, 0.732173, -0.189451,
		0.727114, 0.677853, 0.108728,
		37.685066, 36.626717, 25.296549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.013054, 36.743614, 24.709408>,  <37.176086, 36.152218, 25.220440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.013054, 36.743614, 24.709408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.401058, 36.752991, 24.806173>,  <37.633862, 36.758617, 24.864233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.401058, 36.752991, 24.806173>,  <37.013054, 36.743614, 24.709408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.401058, 36.752991, 24.806173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242687, -0.039170, -0.969314,
		-0.013245, 0.998958, -0.043684,
		0.970014, 0.023440, 0.241915,
		37.692062, 36.760021, 24.878748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.289558, 37.311001, 24.332142>,  <37.013054, 36.743614, 24.709408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.289558, 37.311001, 24.332142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.621452, 37.107666, 24.424347>,  <37.820587, 36.985664, 24.479670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.621452, 37.107666, 24.424347>,  <37.289558, 37.311001, 24.332142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.621452, 37.107666, 24.424347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317667, 0.090501, -0.943874,
		0.458942, 0.856391, 0.236573,
		0.829735, -0.508335, 0.230512,
		37.870373, 36.955166, 24.493500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.791759, 37.698555, 24.013132>,  <37.289558, 37.311001, 24.332142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.791759, 37.698555, 24.013132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.926544, 37.325024, 24.061174>,  <38.007416, 37.100906, 24.090000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.926544, 37.325024, 24.061174>,  <37.791759, 37.698555, 24.013132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.926544, 37.325024, 24.061174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388127, 0.021550, -0.921354,
		0.857795, 0.357079, 0.369705,
		0.336963, -0.933825, 0.120107,
		38.027634, 37.044876, 24.097206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.534813, 37.764992, 23.879372>,  <37.791759, 37.698555, 24.013132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.534813, 37.764992, 23.879372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.435211, 37.380798, 23.829626>,  <38.375450, 37.150284, 23.799778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.435211, 37.380798, 23.829626>,  <38.534813, 37.764992, 23.879372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.435211, 37.380798, 23.829626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436251, 0.003413, -0.899819,
		0.864687, -0.278311, 0.418163,
		-0.249003, -0.960485, -0.124364,
		38.360512, 37.092651, 23.792316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.120953, 37.497780, 23.509148>,  <38.534813, 37.764992, 23.879372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.120953, 37.497780, 23.509148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.830956, 37.226658, 23.460222>,  <38.656956, 37.063984, 23.430868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.830956, 37.226658, 23.460222>,  <39.120953, 37.497780, 23.509148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.830956, 37.226658, 23.460222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329561, -0.185451, -0.925742,
		0.604793, -0.711465, 0.357830,
		-0.724993, -0.677809, -0.122312,
		38.613457, 37.023315, 23.423529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.425465, 36.979191, 23.263176>,  <39.120953, 37.497780, 23.509148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.425465, 36.979191, 23.263176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.052067, 36.933052, 23.127361>,  <38.828030, 36.905369, 23.045874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.052067, 36.933052, 23.127361>,  <39.425465, 36.979191, 23.263176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.052067, 36.933052, 23.127361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348454, -0.068211, -0.934841,
		0.084674, -0.990980, 0.103868,
		-0.933493, -0.115350, -0.339535,
		38.772018, 36.898449, 23.025501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.446877, 36.369003, 22.805958>,  <39.425465, 36.979191, 23.263176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.446877, 36.369003, 22.805958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.104725, 36.544533, 22.695860>,  <38.899433, 36.649849, 22.629801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.104725, 36.544533, 22.695860>,  <39.446877, 36.369003, 22.805958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.104725, 36.544533, 22.695860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185757, -0.236161, -0.953794,
		-0.483546, -0.866985, 0.120494,
		-0.855381, 0.438821, -0.275244,
		38.848110, 36.676178, 22.613287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.119274, 35.964718, 22.333767>,  <39.446877, 36.369003, 22.805958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.119274, 35.964718, 22.333767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.966595, 36.329651, 22.274494>,  <38.874985, 36.548611, 22.238930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.966595, 36.329651, 22.274494>,  <39.119274, 35.964718, 22.333767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.966595, 36.329651, 22.274494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198978, -0.075454, -0.977095,
		-0.902614, -0.402443, -0.152733,
		-0.381701, 0.912330, -0.148183,
		38.852085, 36.603352, 22.230040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.221359, 35.228405, 22.607632>,  <39.119274, 35.964718, 22.333767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.221359, 35.228405, 22.607632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.467892, 34.951202, 22.458036>,  <39.615810, 34.784882, 22.368279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.467892, 34.951202, 22.458036>,  <39.221359, 35.228405, 22.607632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.467892, 34.951202, 22.458036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096136, -0.405150, 0.909182,
		-0.781595, -0.596313, -0.183084,
		0.616333, -0.693011, -0.373990,
		39.652790, 34.743298, 22.345839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.040035, 34.508991, 22.720001>,  <39.221359, 35.228405, 22.607632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.040035, 34.508991, 22.720001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.436001, 34.467121, 22.681805>,  <39.673580, 34.441998, 22.658886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.436001, 34.467121, 22.681805>,  <39.040035, 34.508991, 22.720001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.436001, 34.467121, 22.681805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032702, -0.486984, 0.872799,
		-0.137863, -0.867116, -0.478648,
		0.989911, -0.104674, -0.095493,
		39.732975, 34.435719, 22.653156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.189781, 33.794823, 22.924362>,  <39.040035, 34.508991, 22.720001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.189781, 33.794823, 22.924362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.529247, 34.005184, 22.946918>,  <39.732929, 34.131401, 22.960453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.529247, 34.005184, 22.946918>,  <39.189781, 33.794823, 22.924362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.529247, 34.005184, 22.946918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200093, -0.417917, 0.886176,
		0.489614, -0.740788, -0.459904,
		0.848670, 0.525908, 0.056392,
		39.783848, 34.162956, 22.963837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.638374, 33.364510, 23.416426>,  <39.189781, 33.794823, 22.924362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.638374, 33.364510, 23.416426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.810150, 33.725571, 23.405090>,  <39.913216, 33.942207, 23.398289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.810150, 33.725571, 23.405090>,  <39.638374, 33.364510, 23.416426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.810150, 33.725571, 23.405090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444425, -0.183911, 0.876734,
		0.786172, -0.389101, -0.480139,
		0.429441, 0.902650, -0.028340,
		39.938984, 33.996365, 23.396587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.280914, 33.262573, 23.801834>,  <39.638374, 33.364510, 23.416426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.280914, 33.262573, 23.801834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.243683, 33.660809, 23.806425>,  <40.221344, 33.899750, 23.809179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.243683, 33.660809, 23.806425>,  <40.280914, 33.262573, 23.801834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.243683, 33.660809, 23.806425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013250, -0.010290, 0.999859,
		0.995570, 0.093222, -0.012234,
		-0.093083, 0.995592, 0.011480,
		40.215759, 33.959488, 23.809870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.708160, 33.535328, 24.385420>,  <40.280914, 33.262573, 23.801834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.708160, 33.535328, 24.385420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.455109, 33.834057, 24.303413>,  <40.303276, 34.013294, 24.254210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.455109, 33.834057, 24.303413>,  <40.708160, 33.535328, 24.385420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.455109, 33.834057, 24.303413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173660, 0.121184, 0.977321,
		0.754731, 0.653888, 0.053028,
		-0.632632, 0.746824, -0.205015,
		40.265320, 34.058105, 24.241909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.833565, 33.976219, 24.957840>,  <40.708160, 33.535328, 24.385420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.833565, 33.976219, 24.957840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.503719, 34.128654, 24.790607>,  <40.305813, 34.220116, 24.690268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.503719, 34.128654, 24.790607>,  <40.833565, 33.976219, 24.957840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.503719, 34.128654, 24.790607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339832, 0.257128, 0.904654,
		0.452252, 0.888064, -0.082525,
		-0.824610, 0.381087, -0.418079,
		40.256336, 34.242981, 24.665184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.847603, 34.658791, 25.096760>,  <40.833565, 33.976219, 24.957840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.847603, 34.658791, 25.096760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.465416, 34.555073, 25.040419>,  <40.236103, 34.492844, 25.006613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.465416, 34.555073, 25.040419>,  <40.847603, 34.658791, 25.096760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.465416, 34.555073, 25.040419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204121, 0.236072, 0.950055,
		-0.213092, 0.936502, -0.278488,
		-0.955472, -0.259295, -0.140855,
		40.178776, 34.477283, 24.998161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.482712, 35.170952, 25.411339>,  <40.847603, 34.658791, 25.096760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.482712, 35.170952, 25.411339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.231750, 34.860416, 25.387112>,  <40.081173, 34.674095, 25.372576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.231750, 34.860416, 25.387112>,  <40.482712, 35.170952, 25.411339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.231750, 34.860416, 25.387112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418895, 0.270916, 0.866679,
		-0.656424, 0.569129, -0.495177,
		-0.627403, -0.776336, -0.060569,
		40.043530, 34.627514, 25.368940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.812801, 35.442661, 25.660706>,  <40.482712, 35.170952, 25.411339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.812801, 35.442661, 25.660706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.791962, 35.044849, 25.696918>,  <39.779457, 34.806164, 25.718647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.791962, 35.044849, 25.696918>,  <39.812801, 35.442661, 25.660706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.791962, 35.044849, 25.696918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277500, 0.101504, 0.955348,
		-0.959312, 0.024654, -0.281271,
		-0.052103, -0.994530, 0.090532,
		39.776329, 34.746490, 25.724079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.196175, 35.348118, 26.056597>,  <39.812801, 35.442661, 25.660706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.196175, 35.348118, 26.056597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.421303, 35.022751, 26.115360>,  <39.556377, 34.827530, 26.150618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.421303, 35.022751, 26.115360>,  <39.196175, 35.348118, 26.056597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.421303, 35.022751, 26.115360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305485, -0.039547, 0.951375,
		-0.768059, -0.580329, -0.270746,
		0.562818, -0.813421, 0.146907,
		39.590149, 34.778725, 26.159433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.851299, 34.923264, 26.549864>,  <39.196175, 35.348118, 26.056597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.851299, 34.923264, 26.549864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.218475, 34.766609, 26.575190>,  <39.438782, 34.672615, 26.590385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.218475, 34.766609, 26.575190>,  <38.851299, 34.923264, 26.549864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.218475, 34.766609, 26.575190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117536, -0.116037, 0.986266,
		-0.378913, -0.912773, -0.152546,
		0.917938, -0.391638, 0.063316,
		39.493858, 34.649117, 26.594185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.825726, 34.324883, 27.061508>,  <38.851299, 34.923264, 26.549864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.825726, 34.324883, 27.061508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.215858, 34.413166, 27.062872>,  <39.449940, 34.466137, 27.063690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.215858, 34.413166, 27.062872>,  <38.825726, 34.324883, 27.061508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.215858, 34.413166, 27.062872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035408, -0.171675, 0.984517,
		0.217878, -0.960112, -0.175255,
		0.975334, 0.220710, 0.003408,
		39.508457, 34.479378, 27.063894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.135094, 33.687408, 27.421604>,  <38.825726, 34.324883, 27.061508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.135094, 33.687408, 27.421604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.364399, 34.014679, 27.439318>,  <39.501984, 34.211040, 27.449945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.364399, 34.014679, 27.439318>,  <39.135094, 33.687408, 27.421604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.364399, 34.014679, 27.439318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197293, -0.190289, 0.961699,
		0.795264, -0.542570, -0.270505,
		0.573263, 0.818173, 0.044284,
		39.536377, 34.260132, 27.452602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.566620, 33.600780, 27.923862>,  <39.135094, 33.687408, 27.421604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.566620, 33.600780, 27.923862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.605484, 33.997124, 27.886429>,  <39.628803, 34.234928, 27.863968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.605484, 33.997124, 27.886429>,  <39.566620, 33.600780, 27.923862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.605484, 33.997124, 27.886429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103704, 0.083439, 0.991102,
		0.989851, -0.106001, -0.094649,
		0.097160, 0.990859, -0.093585,
		39.634632, 34.294380, 27.858353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.133583, 33.848053, 28.456274>,  <39.566620, 33.600780, 27.923862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.133583, 33.848053, 28.456274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.924622, 34.169571, 28.342422>,  <39.799244, 34.362480, 28.274113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.924622, 34.169571, 28.342422>,  <40.133583, 33.848053, 28.456274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.924622, 34.169571, 28.342422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087274, 0.281641, 0.955543,
		0.848219, 0.524022, -0.076981,
		-0.522407, 0.803790, -0.284626,
		39.767899, 34.410709, 28.257034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.417511, 34.449429, 28.878302>,  <40.133583, 33.848053, 28.456274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.417511, 34.449429, 28.878302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.050453, 34.544987, 28.751274>,  <39.830219, 34.602322, 28.675058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.050453, 34.544987, 28.751274>,  <40.417511, 34.449429, 28.878302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.050453, 34.544987, 28.751274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185966, 0.448074, 0.874441,
		0.351195, 0.861486, -0.366748,
		-0.917649, 0.238897, -0.317568,
		39.775158, 34.616657, 28.656004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.325462, 35.008354, 29.276575>,  <40.417511, 34.449429, 28.878302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.325462, 35.008354, 29.276575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.957790, 34.926197, 29.142159>,  <39.737186, 34.876904, 29.061508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.957790, 34.926197, 29.142159>,  <40.325462, 35.008354, 29.276575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.957790, 34.926197, 29.142159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390094, 0.357343, 0.848607,
		-0.054219, 0.911108, -0.408586,
		-0.919178, -0.205397, -0.336043,
		39.682037, 34.864578, 29.041346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.886234, 35.559593, 29.437101>,  <40.325462, 35.008354, 29.276575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.886234, 35.559593, 29.437101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.624146, 35.260830, 29.391815>,  <39.466892, 35.081573, 29.364643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.624146, 35.260830, 29.391815>,  <39.886234, 35.559593, 29.437101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.624146, 35.260830, 29.391815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514782, 0.331766, 0.790526,
		-0.552886, 0.576251, -0.601873,
		-0.655223, -0.746904, -0.113215,
		39.427578, 35.036758, 29.357851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.226013, 35.771358, 29.702566>,  <39.886234, 35.559593, 29.437101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.226013, 35.771358, 29.702566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.218349, 35.371590, 29.691389>,  <39.213753, 35.131729, 29.684683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.218349, 35.371590, 29.691389>,  <39.226013, 35.771358, 29.702566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.218349, 35.371590, 29.691389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332400, -0.019989, 0.942926,
		-0.942944, 0.027354, -0.331826,
		-0.019160, -0.999426, -0.027941,
		39.212601, 35.071762, 29.683006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.576523, 35.618874, 29.894581>,  <39.226013, 35.771358, 29.702566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.576523, 35.618874, 29.894581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.777279, 35.277454, 29.950523>,  <38.897732, 35.072601, 29.984089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.777279, 35.277454, 29.950523>,  <38.576523, 35.618874, 29.894581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.777279, 35.277454, 29.950523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340304, -0.046213, 0.939179,
		-0.795175, -0.518955, -0.313660,
		0.501887, -0.853551, 0.139855,
		38.927845, 35.021389, 29.992479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.096046, 35.093361, 30.167652>,  <38.576523, 35.618874, 29.894581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.096046, 35.093361, 30.167652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.456779, 34.959042, 30.276415>,  <38.673218, 34.878448, 30.341673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.456779, 34.959042, 30.276415>,  <38.096046, 35.093361, 30.167652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.456779, 34.959042, 30.276415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350821, -0.201707, 0.914461,
		-0.252239, -0.920080, -0.299715,
		0.901832, -0.335809, 0.271905,
		38.727329, 34.858299, 30.357986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.895782, 34.616695, 30.550200>,  <38.096046, 35.093361, 30.167652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.895782, 34.616695, 30.550200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.280296, 34.646217, 30.656393>,  <38.511005, 34.663929, 30.720108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.280296, 34.646217, 30.656393>,  <37.895782, 34.616695, 30.550200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.280296, 34.646217, 30.656393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253231, -0.143228, 0.956744,
		0.108636, -0.986934, -0.118994,
		0.961287, 0.073804, 0.265482,
		38.568684, 34.668358, 30.736038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.939896, 34.148407, 31.087141>,  <37.895782, 34.616695, 30.550200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.939896, 34.148407, 31.087141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.263653, 34.381737, 31.114323>,  <38.457909, 34.521736, 31.130630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.263653, 34.381737, 31.114323>,  <37.939896, 34.148407, 31.087141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.263653, 34.381737, 31.114323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099062, 0.021562, 0.994848,
		0.578854, -0.811953, 0.075237,
		0.809392, 0.583325, 0.067953,
		38.506470, 34.556732, 31.134708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.332474, 33.814461, 31.564425>,  <37.939896, 34.148407, 31.087141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.332474, 33.814461, 31.564425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.451916, 34.196186, 31.559830>,  <38.523579, 34.425220, 31.557074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.451916, 34.196186, 31.559830>,  <38.332474, 33.814461, 31.564425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.451916, 34.196186, 31.559830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086962, 0.039193, 0.995440,
		0.950408, -0.296240, 0.094692,
		0.298600, 0.954309, -0.011488,
		38.541496, 34.482479, 31.556383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.039841, 33.884567, 31.913195>,  <38.332474, 33.814461, 31.564425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.039841, 33.884567, 31.913195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.838020, 34.229801, 31.922321>,  <38.716930, 34.436939, 31.927797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.838020, 34.229801, 31.922321>,  <39.039841, 33.884567, 31.913195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.838020, 34.229801, 31.922321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159981, 0.067487, 0.984811,
		0.848433, 0.500534, -0.172127,
		-0.504547, 0.863083, 0.022818,
		38.686657, 34.488728, 31.929167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.358700, 34.217377, 32.376492>,  <39.039841, 33.884567, 31.913195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.358700, 34.217377, 32.376492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.024990, 34.437675, 32.366169>,  <38.824764, 34.569855, 32.359974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.024990, 34.437675, 32.366169>,  <39.358700, 34.217377, 32.376492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.024990, 34.437675, 32.366169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022170, 0.080278, 0.996526,
		0.550907, 0.830802, -0.079184,
		-0.834272, 0.550749, -0.025806,
		38.774708, 34.602901, 32.358429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.504650, 34.801907, 32.707550>,  <39.358700, 34.217377, 32.376492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.504650, 34.801907, 32.707550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.107193, 34.760162, 32.724457>,  <38.868721, 34.735115, 32.734600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.107193, 34.760162, 32.724457>,  <39.504650, 34.801907, 32.707550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.107193, 34.760162, 32.724457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045616, -0.029942, 0.998510,
		-0.102942, 0.994089, 0.034512,
		-0.993641, -0.104363, 0.042264,
		38.809101, 34.728855, 32.737137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.241142, 35.385391, 33.253159>,  <39.504650, 34.801907, 32.707550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.241142, 35.385391, 33.253159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.967159, 35.095631, 33.221996>,  <38.802769, 34.921776, 33.203297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.967159, 35.095631, 33.221996>,  <39.241142, 35.385391, 33.253159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.967159, 35.095631, 33.221996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022912, -0.128295, 0.991471,
		-0.728219, 0.677335, 0.104474,
		-0.684961, -0.724402, -0.077908,
		38.761669, 34.878311, 33.198624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.808022, 35.555958, 33.707077>,  <39.241142, 35.385391, 33.253159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.808022, 35.555958, 33.707077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.734219, 35.167583, 33.646103>,  <38.689938, 34.934559, 33.609516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.734219, 35.167583, 33.646103>,  <38.808022, 35.555958, 33.707077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.734219, 35.167583, 33.646103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151550, -0.125140, 0.980496,
		-0.971077, 0.204011, -0.124056,
		-0.184508, -0.970937, -0.152438,
		38.678867, 34.876301, 33.600372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.357002, 35.370251, 34.270103>,  <38.808022, 35.555958, 33.707077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.357002, 35.370251, 34.270103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.500076, 35.024128, 34.129646>,  <38.585922, 34.816452, 34.045372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.500076, 35.024128, 34.129646>,  <38.357002, 35.370251, 34.270103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.500076, 35.024128, 34.129646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057293, -0.395641, 0.916616,
		-0.932082, -0.307744, -0.191092,
		0.357687, -0.865310, -0.351138,
		38.607384, 34.764534, 34.024303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.002621, 34.780300, 34.529243>,  <38.357002, 35.370251, 34.270103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.002621, 34.780300, 34.529243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.351379, 34.607544, 34.436924>,  <38.560635, 34.503891, 34.381535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.351379, 34.607544, 34.436924>,  <38.002621, 34.780300, 34.529243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.351379, 34.607544, 34.436924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017890, -0.442900, 0.896392,
		-0.489366, -0.785689, -0.378436,
		0.871894, -0.431894, -0.230797,
		38.612949, 34.477978, 34.367683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.966366, 34.193752, 34.849731>,  <38.002621, 34.780300, 34.529243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.966366, 34.193752, 34.849731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.359444, 34.220158, 34.780506>,  <38.595291, 34.236000, 34.738972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.359444, 34.220158, 34.780506>,  <37.966366, 34.193752, 34.849731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.359444, 34.220158, 34.780506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185167, -0.327054, 0.926687,
		0.004575, -0.942697, -0.333619,
		0.982696, 0.066014, -0.173060,
		38.654251, 34.239964, 34.728588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.236542, 33.516529, 35.035572>,  <37.966366, 34.193752, 34.849731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.236542, 33.516529, 35.035572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.559875, 33.751411, 35.052513>,  <38.753876, 33.892342, 35.062679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.559875, 33.751411, 35.052513>,  <38.236542, 33.516529, 35.035572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.559875, 33.751411, 35.052513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284494, -0.452585, 0.845121,
		0.515427, -0.671088, -0.532894,
		0.808330, 0.587204, 0.042354,
		38.802376, 33.927574, 35.065220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.705467, 33.075882, 35.095291>,  <38.236542, 33.516529, 35.035572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.705467, 33.075882, 35.095291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.868931, 33.408417, 35.245956>,  <38.967010, 33.607937, 35.336357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.868931, 33.408417, 35.245956>,  <38.705467, 33.075882, 35.095291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.868931, 33.408417, 35.245956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325314, -0.518272, 0.790926,
		0.852740, -0.200688, -0.482244,
		0.408663, 0.831335, 0.376665,
		38.991531, 33.657818, 35.358955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.429050, 32.835938, 35.334568>,  <38.705467, 33.075882, 35.095291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.429050, 32.835938, 35.334568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.324883, 33.177479, 35.514839>,  <39.262383, 33.382404, 35.623001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.324883, 33.177479, 35.514839>,  <39.429050, 32.835938, 35.334568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.324883, 33.177479, 35.514839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304287, -0.370409, 0.877614,
		0.916291, 0.365685, -0.163355,
		-0.260423, 0.853857, 0.450676,
		39.246758, 33.433636, 35.650043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.918568, 32.875004, 35.971157>,  <39.429050, 32.835938, 35.334568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.918568, 32.875004, 35.971157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.627522, 33.139233, 36.045158>,  <39.452892, 33.297768, 36.089558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.627522, 33.139233, 36.045158>,  <39.918568, 32.875004, 35.971157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.627522, 33.139233, 36.045158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146331, -0.114018, 0.982643,
		0.670197, 0.742057, -0.013700,
		-0.727615, 0.660569, 0.185001,
		39.409237, 33.337402, 36.100658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.188118, 33.354527, 36.375259>,  <39.918568, 32.875004, 35.971157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.188118, 33.354527, 36.375259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.792164, 33.358292, 36.431889>,  <39.554592, 33.360550, 36.465866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.792164, 33.358292, 36.431889>,  <40.188118, 33.354527, 36.375259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.792164, 33.358292, 36.431889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140328, -0.082480, 0.986664,
		0.020961, 0.996548, 0.080325,
		-0.989883, 0.009409, 0.141572,
		39.495197, 33.361115, 36.474361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.054649, 33.687168, 37.059330>,  <40.188118, 33.354527, 36.375259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.054649, 33.687168, 37.059330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.708996, 33.490528, 37.016254>,  <39.501602, 33.372543, 36.990410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.708996, 33.490528, 37.016254>,  <40.054649, 33.687168, 37.059330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.708996, 33.490528, 37.016254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036798, -0.275131, 0.960702,
		-0.501909, 0.826216, 0.255840,
		-0.864137, -0.491600, -0.107688,
		39.449753, 33.343048, 36.983948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.773014, 33.653488, 37.698120>,  <40.054649, 33.687168, 37.059330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.773014, 33.653488, 37.698120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.587154, 33.359207, 37.501007>,  <39.475639, 33.182640, 37.382740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.587154, 33.359207, 37.501007>,  <39.773014, 33.653488, 37.698120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.587154, 33.359207, 37.501007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102052, -0.597295, 0.795502,
		-0.879592, 0.319343, 0.352615,
		-0.464654, -0.735703, -0.492787,
		39.447758, 33.138496, 37.353172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.302193, 33.273636, 38.139221>,  <39.773014, 33.653488, 37.698120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.302193, 33.273636, 38.139221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.404461, 33.012115, 37.854359>,  <39.465820, 32.855202, 37.683441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.404461, 33.012115, 37.854359>,  <39.302193, 33.273636, 38.139221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.404461, 33.012115, 37.854359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228648, -0.674850, 0.701639,
		-0.939337, -0.342220, -0.023047,
		0.255668, -0.653806, -0.712160,
		39.481163, 32.815975, 37.640709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.497166, 34.058254, 38.436745>,  <39.302193, 33.273636, 38.139221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.497166, 34.058254, 38.436745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.718697, 34.107204, 38.766182>,  <39.851616, 34.136574, 38.963844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.718697, 34.107204, 38.766182>,  <39.497166, 34.058254, 38.436745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.718697, 34.107204, 38.766182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782291, 0.415207, 0.464354,
		-0.285134, -0.901458, 0.325686,
		0.553823, 0.122377, 0.823592,
		39.884842, 34.143917, 39.013260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.039917, 33.870995, 39.076450>,  <39.497166, 34.058254, 38.436745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.039917, 33.870995, 39.076450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.356777, 34.044815, 39.247879>,  <39.546894, 34.149105, 39.350735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.356777, 34.044815, 39.247879>,  <39.039917, 33.870995, 39.076450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.356777, 34.044815, 39.247879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581417, 0.323724, 0.746430,
		0.185621, -0.840460, 0.509090,
		0.792148, 0.434546, 0.428567,
		39.594421, 34.175179, 39.376450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.159473, 33.714432, 39.721413>,  <39.039917, 33.870995, 39.076450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.159473, 33.714432, 39.721413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.344345, 34.069115, 39.716557>,  <39.455269, 34.281925, 39.713642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.344345, 34.069115, 39.716557>,  <39.159473, 33.714432, 39.721413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.344345, 34.069115, 39.716557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529688, 0.287014, 0.798156,
		0.711214, -0.362458, 0.602328,
		0.462175, 0.886706, -0.012139,
		39.482998, 34.335125, 39.712914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.201443, 33.959114, 40.424412>,  <39.159473, 33.714432, 39.721413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.201443, 33.959114, 40.424412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.269863, 34.284863, 40.202587>,  <39.310917, 34.480312, 40.069492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.269863, 34.284863, 40.202587>,  <39.201443, 33.959114, 40.424412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.269863, 34.284863, 40.202587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529323, 0.550686, 0.645416,
		0.830999, 0.183141, 0.525263,
		0.171052, 0.814374, -0.554560,
		39.321178, 34.529175, 40.036221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.498569, 34.494347, 40.906502>,  <39.201443, 33.959114, 40.424412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.498569, 34.494347, 40.906502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.318447, 34.658413, 40.589268>,  <39.210373, 34.756851, 40.398926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.318447, 34.658413, 40.589268>,  <39.498569, 34.494347, 40.906502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.318447, 34.658413, 40.589268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461466, 0.653502, 0.599987,
		0.764380, 0.636160, -0.104997,
		-0.450304, 0.410166, -0.793089,
		39.183357, 34.781464, 40.351341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.508411, 35.140511, 41.098831>,  <39.498569, 34.494347, 40.906502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.508411, 35.140511, 41.098831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.222507, 35.072670, 40.827431>,  <39.050964, 35.031963, 40.664593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.222507, 35.072670, 40.827431>,  <39.508411, 35.140511, 41.098831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.222507, 35.072670, 40.827431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622729, 0.595914, 0.507045,
		0.318328, 0.784933, -0.531551,
		-0.714756, -0.169605, -0.678497,
		39.008080, 35.021790, 40.623882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.228519, 35.755562, 41.001377>,  <39.508411, 35.140511, 41.098831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.228519, 35.755562, 41.001377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.964291, 35.481964, 40.877575>,  <38.805752, 35.317806, 40.803295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.964291, 35.481964, 40.877575>,  <39.228519, 35.755562, 41.001377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.964291, 35.481964, 40.877575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748449, 0.567646, 0.342932,
		-0.058874, 0.458180, -0.886907,
		-0.660574, -0.683995, -0.309505,
		38.766117, 35.276764, 40.784725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.651142, 36.084946, 40.742188>,  <39.228519, 35.755562, 41.001377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.651142, 36.084946, 40.742188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.551033, 35.711262, 40.843857>,  <38.490967, 35.487049, 40.904858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.551033, 35.711262, 40.843857>,  <38.651142, 36.084946, 40.742188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.551033, 35.711262, 40.843857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.891049, 0.324941, 0.316932,
		-0.378674, -0.147163, -0.913755,
		-0.250276, -0.934214, 0.254176,
		38.475952, 35.430996, 40.920109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.921875, 36.054340, 40.635708>,  <38.651142, 36.084946, 40.742188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.921875, 36.054340, 40.635708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.004669, 35.751835, 40.883972>,  <38.054348, 35.570332, 41.032932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.004669, 35.751835, 40.883972>,  <37.921875, 36.054340, 40.635708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.004669, 35.751835, 40.883972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.877501, 0.137008, 0.459587,
		-0.432605, -0.639761, -0.635263,
		0.206990, -0.756263, 0.620662,
		38.066765, 35.524956, 41.070171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.338749, 35.462845, 40.608742>,  <37.921875, 36.054340, 40.635708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.338749, 35.462845, 40.608742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.501690, 35.488289, 40.973164>,  <37.599457, 35.503555, 41.191814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.501690, 35.488289, 40.973164>,  <37.338749, 35.462845, 40.608742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.501690, 35.488289, 40.973164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.912036, -0.023478, 0.409437,
		0.047436, -0.997698, 0.048456,
		0.407357, 0.063615, 0.911051,
		37.623898, 35.507374, 41.246479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.933964, 35.060940, 41.027058>,  <37.338749, 35.462845, 40.608742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.933964, 35.060940, 41.027058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.106140, 35.322121, 41.276333>,  <37.209446, 35.478828, 41.425900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.106140, 35.322121, 41.276333>,  <36.933964, 35.060940, 41.027058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.106140, 35.322121, 41.276333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857989, 0.081569, 0.507151,
		0.280314, -0.752990, 0.595340,
		0.430441, 0.652957, 0.623192,
		37.235271, 35.518009, 41.463291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.613132, 35.079708, 41.675869>,  <36.933964, 35.060940, 41.027058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.613132, 35.079708, 41.675869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.862972, 35.348480, 41.835064>,  <37.012875, 35.509743, 41.930580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.862972, 35.348480, 41.835064>,  <36.613132, 35.079708, 41.675869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.862972, 35.348480, 41.835064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683886, 0.224550, 0.694174,
		0.377065, -0.705757, 0.599774,
		0.624597, 0.671926, 0.397987,
		37.050350, 35.550056, 41.954460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.410751, 35.098278, 42.433670>,  <36.613132, 35.079708, 41.675869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.410751, 35.098278, 42.433670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.627377, 35.427181, 42.363693>,  <36.757351, 35.624523, 42.321705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.627377, 35.427181, 42.363693>,  <36.410751, 35.098278, 42.433670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.627377, 35.427181, 42.363693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495739, 0.480437, 0.723480,
		0.678936, -0.305081, 0.667810,
		0.541561, 0.822257, -0.174945,
		36.789845, 35.673859, 42.311211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.513634, 35.455788, 43.173229>,  <36.410751, 35.098278, 42.433670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.513634, 35.455788, 43.173229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.594990, 35.735706, 42.899319>,  <36.643803, 35.903656, 42.734974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.594990, 35.735706, 42.899319>,  <36.513634, 35.455788, 43.173229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.594990, 35.735706, 42.899319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583017, 0.648446, 0.489500,
		0.786590, 0.299675, 0.539881,
		0.203392, 0.699795, -0.684776,
		36.656006, 35.945644, 42.693886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.713936, 36.118088, 43.518799>,  <36.513634, 35.455788, 43.173229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.713936, 36.118088, 43.518799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.574093, 36.232422, 43.161907>,  <36.490189, 36.301022, 42.947773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.574093, 36.232422, 43.161907>,  <36.713936, 36.118088, 43.518799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.574093, 36.232422, 43.161907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529171, 0.725632, 0.439815,
		0.773145, 0.625904, -0.102430,
		-0.349608, 0.285838, -0.892228,
		36.469212, 36.318172, 42.894238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.690243, 36.851032, 43.583275>,  <36.713936, 36.118088, 43.518799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.690243, 36.851032, 43.583275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.453548, 36.787502, 43.267143>,  <36.311531, 36.749386, 43.077465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.453548, 36.787502, 43.267143>,  <36.690243, 36.851032, 43.583275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.453548, 36.787502, 43.267143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621651, 0.714073, 0.321947,
		0.513220, 0.681818, -0.521276,
		-0.591739, -0.158822, -0.790329,
		36.276028, 36.739857, 43.030045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.631775, 37.536831, 43.340408>,  <36.690243, 36.851032, 43.583275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.631775, 37.536831, 43.340408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.326118, 37.315670, 43.207508>,  <36.142723, 37.182976, 43.127769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.326118, 37.315670, 43.207508>,  <36.631775, 37.536831, 43.340408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.326118, 37.315670, 43.207508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644738, 0.670592, 0.366905,
		0.019940, 0.494580, -0.868904,
		-0.764144, -0.552899, -0.332246,
		36.096874, 37.149799, 43.107834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.199142, 38.006779, 43.175335>,  <36.631775, 37.536831, 43.340408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.199142, 38.006779, 43.175335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.977047, 37.675507, 43.205868>,  <35.843788, 37.476746, 43.224190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.977047, 37.675507, 43.205868>,  <36.199142, 38.006779, 43.175335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.977047, 37.675507, 43.205868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757386, 0.541425, 0.365000,
		-0.343614, 0.144849, -0.927873,
		-0.555243, -0.828177, 0.076334,
		35.810474, 37.427052, 43.228767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.586040, 38.257797, 43.165894>,  <36.199142, 38.006779, 43.175335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.586040, 38.257797, 43.165894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.555294, 37.898972, 43.339962>,  <35.536846, 37.683678, 43.444401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.555294, 37.898972, 43.339962>,  <35.586040, 38.257797, 43.165894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.555294, 37.898972, 43.339962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767921, 0.331642, 0.548006,
		-0.635915, -0.292052, -0.714365,
		-0.076867, -0.897062, 0.435169,
		35.532234, 37.629852, 43.470512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.996487, 38.291389, 43.580196>,  <35.586040, 38.257797, 43.165894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.996487, 38.291389, 43.580196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.055241, 37.937397, 43.756939>,  <35.090492, 37.725002, 43.862984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.055241, 37.937397, 43.756939>,  <34.996487, 38.291389, 43.580196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.055241, 37.937397, 43.756939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799507, 0.156795, 0.579831,
		-0.582419, -0.438435, -0.684516,
		0.146889, -0.884980, 0.441852,
		35.099308, 37.671902, 43.889496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.586784, 37.726334, 43.509018>,  <34.996487, 38.291389, 43.580196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.586784, 37.726334, 43.509018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.745628, 37.702801, 43.875370>,  <34.840935, 37.688679, 44.095181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.745628, 37.702801, 43.875370>,  <34.586784, 37.726334, 43.509018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.745628, 37.702801, 43.875370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.905339, 0.138594, 0.401439,
		-0.150554, -0.988600, 0.001771,
		0.397108, -0.058835, 0.915884,
		34.864761, 37.685150, 44.150135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.802273, 37.014748, 43.669735>,  <34.586784, 37.726334, 43.509018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.802273, 37.014748, 43.669735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.804470, 37.000336, 43.270000>,  <34.805790, 36.991688, 43.030159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.804470, 37.000336, 43.270000>,  <34.802273, 37.014748, 43.669735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.804470, 37.000336, 43.270000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489682, -0.871428, 0.028726,
		-0.871884, 0.489199, -0.022433,
		0.005496, -0.036031, -0.999336,
		34.806118, 36.989525, 42.970200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.115578, 36.773632, 43.495586>,  <34.802273, 37.014748, 43.669735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.115578, 36.773632, 43.495586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.389603, 36.687069, 43.217350>,  <34.554020, 36.635132, 43.050407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.389603, 36.687069, 43.217350>,  <34.115578, 36.773632, 43.495586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.389603, 36.687069, 43.217350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443482, -0.881420, -0.162547,
		-0.577935, 0.419839, -0.699804,
		0.685065, -0.216409, -0.695595,
		34.595123, 36.622147, 43.008671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.294964, 36.067482, 43.829685>,  <34.115578, 36.773632, 43.495586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.294964, 36.067482, 43.829685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.339134, 36.308510, 44.145840>,  <34.365635, 36.453129, 44.335533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.339134, 36.308510, 44.145840>,  <34.294964, 36.067482, 43.829685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.339134, 36.308510, 44.145840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822921, 0.501369, -0.267265,
		-0.557323, -0.620914, 0.551233,
		0.110423, 0.602574, 0.790387,
		34.372261, 36.489281, 44.382957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.032867, 36.290977, 44.029633>,  <34.294964, 36.067482, 43.829685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.032867, 36.290977, 44.029633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.023399, 35.958725, 44.252159>,  <35.017719, 35.759373, 44.385674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.023399, 35.958725, 44.252159>,  <35.032867, 36.290977, 44.029633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.023399, 35.958725, 44.252159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755587, 0.349513, 0.554012,
		-0.654620, 0.433459, 0.619343,
		-0.023673, -0.830635, 0.556314,
		35.016296, 35.709534, 44.419052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.007442, 36.411888, 43.291779>,  <35.032867, 36.290977, 44.029633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.007442, 36.411888, 43.291779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.244225, 36.731544, 43.249893>,  <35.386295, 36.923336, 43.224762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.244225, 36.731544, 43.249893>,  <35.007442, 36.411888, 43.291779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.244225, 36.731544, 43.249893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558497, -0.500393, -0.661580,
		-0.581091, 0.333145, -0.742528,
		0.591958, 0.799138, -0.104714,
		35.421810, 36.971287, 43.218479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.156704, 36.511726, 42.576279>,  <35.007442, 36.411888, 43.291779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.156704, 36.511726, 42.576279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.454376, 36.714531, 42.750240>,  <35.632980, 36.836212, 42.854618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.454376, 36.714531, 42.750240>,  <35.156704, 36.511726, 42.576279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.454376, 36.714531, 42.750240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649819, -0.398691, -0.647132,
		-0.154710, 0.764190, -0.626161,
		0.744177, 0.507010, 0.434904,
		35.677628, 36.866634, 42.880711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.441978, 36.816902, 42.002075>,  <35.156704, 36.511726, 42.576279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.441978, 36.816902, 42.002075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.723236, 36.780357, 42.284138>,  <35.891991, 36.758430, 42.453373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.723236, 36.780357, 42.284138>,  <35.441978, 36.816902, 42.002075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.723236, 36.780357, 42.284138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582641, -0.494422, -0.645040,
		0.407573, 0.864408, -0.294421,
		0.703145, -0.091359, 0.705153,
		35.934181, 36.752949, 42.495682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.197548, 36.744076, 41.656788>,  <35.441978, 36.816902, 42.002075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.197548, 36.744076, 41.656788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.280788, 36.621399, 42.028301>,  <36.330730, 36.547794, 42.251209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.280788, 36.621399, 42.028301>,  <36.197548, 36.744076, 41.656788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.280788, 36.621399, 42.028301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823965, -0.456701, -0.335419,
		0.527046, 0.835083, 0.157665,
		0.208098, -0.306692, 0.928782,
		36.343216, 36.529392, 42.306934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.836803, 36.916977, 41.892929>,  <36.197548, 36.744076, 41.656788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.836803, 36.916977, 41.892929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.780006, 36.600983, 42.131512>,  <36.745930, 36.411385, 42.274662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.780006, 36.600983, 42.131512>,  <36.836803, 36.916977, 41.892929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.780006, 36.600983, 42.131512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814817, -0.435422, -0.382728,
		0.562060, 0.431660, 0.705519,
		-0.141990, -0.789985, 0.596458,
		36.737408, 36.363987, 42.310448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.492325, 36.803524, 42.132248>,  <36.836803, 36.916977, 41.892929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.492325, 36.803524, 42.132248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.290031, 36.464550, 42.196861>,  <37.168655, 36.261166, 42.235630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.290031, 36.464550, 42.196861>,  <37.492325, 36.803524, 42.132248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.290031, 36.464550, 42.196861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748066, -0.524044, -0.407155,
		0.429689, -0.085071, 0.898961,
		-0.505732, -0.847432, 0.161538,
		37.138313, 36.210320, 42.245323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.986221, 36.311111, 42.366226>,  <37.492325, 36.803524, 42.132248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.986221, 36.311111, 42.366226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.667999, 36.120007, 42.217182>,  <37.477066, 36.005344, 42.127758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.667999, 36.120007, 42.217182>,  <37.986221, 36.311111, 42.366226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.667999, 36.120007, 42.217182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603621, -0.571856, -0.555538,
		0.052340, -0.666873, 0.743331,
		-0.795552, -0.477767, -0.372608,
		37.429333, 35.976677, 42.105400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.136410, 35.646465, 42.533997>,  <37.986221, 36.311111, 42.366226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.136410, 35.646465, 42.533997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.907307, 35.683067, 42.208157>,  <37.769844, 35.705029, 42.012653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.907307, 35.683067, 42.208157>,  <38.136410, 35.646465, 42.533997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.907307, 35.683067, 42.208157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686239, -0.490018, -0.537549,
		-0.448358, -0.866896, 0.217866,
		-0.572757, 0.091506, -0.814601,
		37.735481, 35.710522, 41.963776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.388290, 35.161205, 42.214264>,  <38.136410, 35.646465, 42.533997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.388290, 35.161205, 42.214264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.137161, 35.275852, 41.924797>,  <37.986485, 35.344643, 41.751118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.137161, 35.275852, 41.924797>,  <38.388290, 35.161205, 42.214264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.137161, 35.275852, 41.924797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559874, -0.479592, -0.675672,
		-0.540726, -0.829361, 0.140626,
		-0.627819, 0.286621, -0.723665,
		37.948814, 35.361839, 41.707699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.267944, 34.533176, 41.914703>,  <38.388290, 35.161205, 42.214264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.267944, 34.533176, 41.914703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.192665, 34.829910, 41.657249>,  <38.147499, 35.007950, 41.502777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.192665, 34.829910, 41.657249>,  <38.267944, 34.533176, 41.914703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.192665, 34.829910, 41.657249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659014, -0.390524, -0.642800,
		-0.728204, -0.545138, -0.415383,
		-0.188198, 0.741833, -0.643635,
		38.136208, 35.052460, 41.464157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.163902, 34.199127, 41.310654>,  <38.267944, 34.533176, 41.914703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.163902, 34.199127, 41.310654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.270538, 34.572128, 41.213184>,  <38.334518, 34.795929, 41.154705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.270538, 34.572128, 41.213184>,  <38.163902, 34.199127, 41.310654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.270538, 34.572128, 41.213184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802621, -0.354763, -0.479524,
		-0.533601, -0.067740, -0.843019,
		0.266589, 0.932499, -0.243671,
		38.350513, 34.851879, 41.140083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.738384, 34.503414, 40.839844>,  <38.163902, 34.199127, 41.310654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.738384, 34.503414, 40.839844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.949139, 34.842556, 40.816097>,  <38.075592, 35.046043, 40.801849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.949139, 34.842556, 40.816097>,  <37.738384, 34.503414, 40.839844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.949139, 34.842556, 40.816097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610862, -0.426321, -0.667157,
		-0.590963, 0.315254, -0.742548,
		0.526888, 0.847859, -0.059363,
		38.107204, 35.096912, 40.798290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.814026, 34.619591, 40.289139>,  <37.738384, 34.503414, 40.839844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.814026, 34.619591, 40.289139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.126820, 34.822701, 40.433727>,  <38.314495, 34.944565, 40.520481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.126820, 34.822701, 40.433727>,  <37.814026, 34.619591, 40.289139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.126820, 34.822701, 40.433727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600369, -0.457793, -0.655730,
		-0.167485, 0.729788, -0.662840,
		0.781988, 0.507774, 0.361469,
		38.361416, 34.975033, 40.542168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.172264, 34.968731, 39.652489>,  <37.814026, 34.619591, 40.289139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.172264, 34.968731, 39.652489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.439217, 34.988628, 39.949711>,  <38.599388, 35.000568, 40.128044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.439217, 34.988628, 39.949711>,  <38.172264, 34.968731, 39.652489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.439217, 34.988628, 39.949711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721485, -0.290462, -0.628563,
		0.184559, 0.955592, -0.229741,
		0.667381, 0.049748, 0.743053,
		38.639431, 35.003551, 40.172626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.700768, 35.401226, 39.344318>,  <38.172264, 34.968731, 39.652489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.700768, 35.401226, 39.344318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.824905, 35.174904, 39.649879>,  <38.899387, 35.039108, 39.833218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.824905, 35.174904, 39.649879>,  <38.700768, 35.401226, 39.344318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.824905, 35.174904, 39.649879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841553, -0.210211, -0.497594,
		0.442123, 0.797291, 0.410920,
		0.310347, -0.565809, 0.763901,
		38.918011, 35.005161, 39.879051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.434883, 35.709831, 39.467152>,  <38.700768, 35.401226, 39.344318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.434883, 35.709831, 39.467152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.367897, 35.336407, 39.593903>,  <39.327705, 35.112350, 39.669952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.367897, 35.336407, 39.593903>,  <39.434883, 35.709831, 39.467152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.367897, 35.336407, 39.593903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841168, -0.302937, -0.447957,
		0.514191, 0.191531, 0.836016,
		-0.167462, -0.933566, 0.316878,
		39.317657, 35.056335, 39.688965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.097950, 35.476849, 39.639019>,  <39.434883, 35.709831, 39.467152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.097950, 35.476849, 39.639019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.897610, 35.130955, 39.624115>,  <39.777405, 34.923420, 39.615173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.897610, 35.130955, 39.624115>,  <40.097950, 35.476849, 39.639019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.897610, 35.130955, 39.624115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752762, -0.413943, -0.511859,
		0.427198, -0.284411, 0.858261,
		-0.500850, -0.864732, -0.037258,
		39.747356, 34.871536, 39.612938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.633442, 34.945492, 39.752254>,  <40.097950, 35.476849, 39.639019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.633442, 34.945492, 39.752254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.314396, 34.723156, 39.658573>,  <40.122971, 34.589752, 39.602364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.314396, 34.723156, 39.658573>,  <40.633442, 34.945492, 39.752254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.314396, 34.723156, 39.658573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601227, -0.763813, -0.234767,
		-0.048397, -0.328065, 0.943415,
		-0.797611, -0.555844, -0.234208,
		40.075111, 34.556404, 39.588310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.714870, 34.303017, 40.035767>,  <40.633442, 34.945492, 39.752254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.714870, 34.303017, 40.035767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.453503, 34.229084, 39.742134>,  <40.296680, 34.184723, 39.565956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.453503, 34.229084, 39.742134>,  <40.714870, 34.303017, 40.035767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.453503, 34.229084, 39.742134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546419, -0.786290, -0.288399,
		-0.523896, -0.589563, 0.614776,
		-0.653422, -0.184834, -0.734082,
		40.257477, 34.173634, 39.521908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.474743, 33.585476, 40.021999>,  <40.714870, 34.303017, 40.035767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.474743, 33.585476, 40.021999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.419666, 33.717033, 39.648289>,  <40.386620, 33.795967, 39.424061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.419666, 33.717033, 39.648289>,  <40.474743, 33.585476, 40.021999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.419666, 33.717033, 39.648289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582495, -0.736013, -0.344940,
		-0.801088, -0.591706, -0.090237,
		-0.137688, 0.328889, -0.934277,
		40.378361, 33.815701, 39.368004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.436310, 33.081902, 39.460152>,  <40.474743, 33.585476, 40.021999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.436310, 33.081902, 39.460152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.642982, 33.380630, 39.292675>,  <40.766987, 33.559868, 39.192188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.642982, 33.380630, 39.292675>,  <40.436310, 33.081902, 39.460152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.642982, 33.380630, 39.292675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816476, -0.576976, -0.021587,
		-0.257695, -0.330695, -0.907873,
		0.516682, 0.746820, -0.418688,
		40.797989, 33.604675, 39.167068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.787060, 32.856808, 38.823643>,  <40.436310, 33.081902, 39.460152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.787060, 32.856808, 38.823643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.993500, 33.156815, 38.989105>,  <41.117363, 33.336819, 39.088383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.993500, 33.156815, 38.989105>,  <40.787060, 32.856808, 38.823643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.993500, 33.156815, 38.989105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829318, -0.558328, -0.022374,
		0.214176, 0.354601, -0.910158,
		0.516101, 0.750019, 0.413657,
		41.148331, 33.381821, 39.113201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.349014, 33.299225, 38.448891>,  <40.787060, 32.856808, 38.823643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.349014, 33.299225, 38.448891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.413132, 33.248463, 38.840443>,  <41.451603, 33.218006, 39.075375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.413132, 33.248463, 38.840443>,  <41.349014, 33.299225, 38.448891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.413132, 33.248463, 38.840443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756980, -0.620640, -0.204420,
		0.633472, 0.773758, -0.003419,
		0.160294, -0.126907, 0.978877,
		41.461220, 33.210392, 39.134106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.036690, 33.524868, 38.750469>,  <41.349014, 33.299225, 38.448891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.036690, 33.524868, 38.750469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.867813, 33.222420, 38.950481>,  <41.766487, 33.040951, 39.070488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.867813, 33.222420, 38.950481>,  <42.036690, 33.524868, 38.750469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.867813, 33.222420, 38.950481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755564, -0.598298, -0.266763,
		0.500873, 0.265179, 0.823897,
		-0.422196, -0.756121, 0.500031,
		41.741154, 32.995583, 39.100491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.893784, 33.127937, 38.024063>,  <42.036690, 33.524868, 38.750469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.893784, 33.127937, 38.024063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.151188, 32.929272, 37.791092>,  <42.305630, 32.810074, 37.651306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.151188, 32.929272, 37.791092>,  <41.893784, 33.127937, 38.024063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.151188, 32.929272, 37.791092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401723, 0.866832, -0.295330,
		0.651550, -0.043930, 0.757332,
		0.643506, -0.496661, -0.582433,
		42.344238, 32.780273, 37.616364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.680908, 33.125149, 38.204533>,  <41.893784, 33.127937, 38.024063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.680908, 33.125149, 38.204533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.560162, 33.104057, 37.823776>,  <42.487713, 33.091404, 37.595322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.560162, 33.104057, 37.823776>,  <42.680908, 33.125149, 38.204533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.560162, 33.104057, 37.823776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377251, 0.910363, -0.170064,
		0.875532, -0.410438, -0.254919,
		-0.301870, -0.052728, -0.951890,
		42.469601, 33.088238, 37.538208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.244549, 33.167873, 37.770866>,  <42.680908, 33.125149, 38.204533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.244549, 33.167873, 37.770866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.926086, 33.304607, 37.571156>,  <42.735008, 33.386646, 37.451328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.926086, 33.304607, 37.571156>,  <43.244549, 33.167873, 37.770866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.926086, 33.304607, 37.571156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472953, 0.866234, -0.161105,
		0.377422, -0.364402, -0.851331,
		-0.796158, 0.341834, -0.499281,
		42.687241, 33.407158, 37.421371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.417927, 33.586899, 37.136925>,  <43.244549, 33.167873, 37.770866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.417927, 33.586899, 37.136925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.112724, 33.718800, 37.359306>,  <42.929604, 33.797939, 37.492737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.112724, 33.718800, 37.359306>,  <43.417927, 33.586899, 37.136925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.112724, 33.718800, 37.359306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580868, 0.727113, 0.365921,
		-0.283577, 0.602135, -0.746336,
		-0.763005, 0.329756, 0.555954,
		42.883823, 33.817726, 37.526093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.921574, 33.213814, 36.584812>,  <43.417927, 33.586899, 37.136925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.921574, 33.213814, 36.584812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.816212, 33.562199, 36.418896>,  <42.752995, 33.771229, 36.319347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.816212, 33.562199, 36.418896>,  <42.921574, 33.213814, 36.584812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.816212, 33.562199, 36.418896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933986, 0.122632, -0.335607,
		-0.241434, -0.475807, -0.845765,
		-0.263402, 0.870959, -0.414789,
		42.737190, 33.823486, 36.294460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.995163, 33.317158, 35.854393>,  <42.921574, 33.213814, 36.584812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.995163, 33.317158, 35.854393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.013927, 33.694489, 35.985802>,  <43.025188, 33.920887, 36.064648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.013927, 33.694489, 35.985802>,  <42.995163, 33.317158, 35.854393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.013927, 33.694489, 35.985802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870084, 0.122961, -0.477321,
		-0.490666, 0.308238, -0.815007,
		0.046915, 0.943329, 0.328526,
		43.028004, 33.977486, 36.084358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.199699, 33.858246, 35.302353>,  <42.995163, 33.317158, 35.854393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.199699, 33.858246, 35.302353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.301151, 33.970997, 35.672482>,  <43.362022, 34.038647, 35.894558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.301151, 33.970997, 35.672482>,  <43.199699, 33.858246, 35.302353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.301151, 33.970997, 35.672482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877508, 0.335450, -0.342714,
		-0.407000, 0.898900, -0.162265,
		0.253634, 0.281874, 0.925320,
		43.377243, 34.055557, 35.950077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.333561, 34.652336, 35.192974>,  <43.199699, 33.858246, 35.302353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.333561, 34.652336, 35.192974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.488617, 34.492172, 35.525097>,  <43.581650, 34.396072, 35.724369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.488617, 34.492172, 35.525097>,  <43.333561, 34.652336, 35.192974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.488617, 34.492172, 35.525097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802504, 0.589784, -0.090237,
		-0.453569, 0.701302, 0.549954,
		0.387637, -0.400412, 0.830306,
		43.604908, 34.372047, 35.774189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.683273, 35.150856, 35.724499>,  <43.333561, 34.652336, 35.192974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.683273, 35.150856, 35.724499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.853474, 34.788956, 35.732281>,  <43.955593, 34.571815, 35.736950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.853474, 34.788956, 35.732281>,  <43.683273, 35.150856, 35.724499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.853474, 34.788956, 35.732281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903072, 0.423127, -0.073659,
		0.058412, 0.048909, 0.997094,
		0.425499, -0.904750, 0.019453,
		43.981125, 34.517532, 35.738117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.099072, 35.010281, 36.338219>,  <43.683273, 35.150856, 35.724499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.099072, 35.010281, 36.338219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.219856, 34.813885, 36.011353>,  <44.292328, 34.696049, 35.815235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.219856, 34.813885, 36.011353>,  <44.099072, 35.010281, 36.338219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.219856, 34.813885, 36.011353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876544, 0.480012, 0.035488,
		0.374824, -0.726995, 0.575314,
		0.301958, -0.490986, -0.817162,
		44.310444, 34.666588, 35.766205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.702335, 34.831779, 36.562771>,  <44.099072, 35.010281, 36.338219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.702335, 34.831779, 36.562771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.677971, 34.841583, 36.163635>,  <44.663353, 34.847466, 35.924152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.677971, 34.841583, 36.163635>,  <44.702335, 34.831779, 36.562771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.677971, 34.841583, 36.163635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831212, 0.554716, -0.037117,
		0.552609, -0.831679, -0.054157,
		-0.060911, 0.024505, -0.997843,
		44.659698, 34.848934, 35.864281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.338783, 34.606655, 36.198811>,  <44.702335, 34.831779, 36.562771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.338783, 34.606655, 36.198811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.140091, 34.866348, 35.968418>,  <45.020878, 35.022163, 35.830181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.140091, 34.866348, 35.968418>,  <45.338783, 34.606655, 36.198811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.140091, 34.866348, 35.968418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773257, 0.632422, 0.045992,
		0.394124, -0.422539, -0.816166,
		-0.496729, 0.649233, -0.575984,
		44.991074, 35.061119, 35.795624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.859169, 35.123928, 35.994152>,  <45.338783, 34.606655, 36.198811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.859169, 35.123928, 35.994152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.493568, 35.262478, 35.909660>,  <45.274208, 35.345608, 35.858963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.493568, 35.262478, 35.909660>,  <45.859169, 35.123928, 35.994152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.493568, 35.262478, 35.909660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290420, 0.922163, 0.255482,
		0.283284, 0.172165, -0.943456,
		-0.914006, 0.346373, -0.211234,
		45.219368, 35.366390, 35.846291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.879963, 35.451656, 35.379509>,  <45.859169, 35.123928, 35.994152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.879963, 35.451656, 35.379509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.575642, 35.591736, 35.598061>,  <45.393047, 35.675785, 35.729191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.575642, 35.591736, 35.598061>,  <45.879963, 35.451656, 35.379509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.575642, 35.591736, 35.598061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457497, 0.886545, 0.068810,
		-0.460291, 0.302318, -0.834707,
		-0.760808, 0.350203, 0.546378,
		45.347401, 35.696796, 35.761974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.556030, 35.488571, 35.024044>,  <45.879963, 35.451656, 35.379509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.556030, 35.488571, 35.024044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.874695, 35.509186, 34.783154>,  <47.065891, 35.521553, 34.638618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.874695, 35.509186, 34.783154>,  <46.556030, 35.488571, 35.024044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.874695, 35.509186, 34.783154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588753, -0.291612, 0.753878,
		-0.136767, -0.955147, -0.262656,
		0.796659, 0.051534, -0.602228,
		47.113693, 35.524647, 34.602486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.970699, 34.862682, 34.919647>,  <46.556030, 35.488571, 35.024044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.970699, 34.862682, 34.919647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.192852, 35.194859, 34.902084>,  <47.326145, 35.394165, 34.891548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.192852, 35.194859, 34.902084>,  <46.970699, 34.862682, 34.919647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.192852, 35.194859, 34.902084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634683, -0.389168, 0.667627,
		0.537336, -0.398652, -0.743200,
		0.555380, 0.830437, -0.043904,
		47.359467, 35.443989, 34.888912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.710766, 34.663967, 34.809582>,  <46.970699, 34.862682, 34.919647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.710766, 34.663967, 34.809582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.673313, 35.024200, 34.979374>,  <47.650841, 35.240341, 35.081249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.673313, 35.024200, 34.979374>,  <47.710766, 34.663967, 34.809582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.673313, 35.024200, 34.979374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809578, -0.179291, 0.558961,
		0.579496, 0.395986, -0.712305,
		-0.093631, 0.900583, 0.424480,
		47.645226, 35.294376, 35.106716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.818047, 31.532698, 27.688839> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.427036, 31.476145, 27.626295>,  <36.192429, 31.442213, 27.588768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.427036, 31.476145, 27.626295>,  <36.818047, 31.532698, 27.688839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.427036, 31.476145, 27.626295> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153372, -0.031850, 0.987655,
		-0.144616, 0.989443, 0.009450,
		-0.977529, -0.141381, -0.156359,
		36.133778, 31.433731, 27.579388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.459328, 32.133930, 27.911829>,  <36.818047, 31.532698, 27.688839>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.459328, 32.133930, 27.911829> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.233727, 31.803860, 27.924425>,  <36.098366, 31.605818, 27.931982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.233727, 31.803860, 27.924425>,  <36.459328, 32.133930, 27.911829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.233727, 31.803860, 27.924425> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176952, 0.158016, 0.971452,
		-0.806593, 0.542327, -0.235138,
		-0.564000, -0.825175, 0.031489,
		36.064526, 31.556307, 27.933872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.942787, 32.356464, 28.344454>,  <36.459328, 32.133930, 27.911829>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.942787, 32.356464, 28.344454> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.875118, 31.963217, 28.316572>,  <35.834515, 31.727268, 28.299843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.875118, 31.963217, 28.316572>,  <35.942787, 32.356464, 28.344454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.875118, 31.963217, 28.316572> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400634, 0.003981, 0.916230,
		-0.900484, 0.182928, -0.394544,
		-0.169175, -0.983118, -0.069703,
		35.824368, 31.668282, 28.295662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.129616, 32.240360, 28.427567>,  <35.942787, 32.356464, 28.344454>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.129616, 32.240360, 28.427567> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.362644, 31.925093, 28.506969>,  <35.502460, 31.735931, 28.554611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.362644, 31.925093, 28.506969>,  <35.129616, 32.240360, 28.427567>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.362644, 31.925093, 28.506969> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401365, -0.066592, 0.913494,
		-0.706769, -0.611846, -0.355138,
		0.582567, -0.788169, 0.198508,
		35.537415, 31.688643, 28.566523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.662670, 31.814774, 28.694712>,  <35.129616, 32.240360, 28.427567>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.662670, 31.814774, 28.694712> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.026165, 31.684982, 28.799715>,  <35.244263, 31.607107, 28.862717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.026165, 31.684982, 28.799715>,  <34.662670, 31.814774, 28.694712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.026165, 31.684982, 28.799715> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281272, -0.011437, 0.959560,
		-0.308357, -0.945823, -0.101660,
		0.908737, -0.324481, 0.262507,
		35.298786, 31.587639, 28.878468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.479660, 31.414736, 29.167566>,  <34.662670, 31.814774, 28.694712>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.479660, 31.414736, 29.167566> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.870583, 31.464327, 29.236265>,  <35.105137, 31.494081, 29.277485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.870583, 31.464327, 29.236265>,  <34.479660, 31.414736, 29.167566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.870583, 31.464327, 29.236265> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167541, -0.043660, 0.984898,
		0.129607, -0.991324, -0.021897,
		0.977308, 0.123981, 0.171746,
		35.163776, 31.501520, 29.287788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.518578, 31.111431, 29.761753>,  <34.479660, 31.414736, 29.167566>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.518578, 31.111431, 29.761753> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.870491, 31.299681, 29.734953>,  <35.081638, 31.412630, 29.718872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.870491, 31.299681, 29.734953>,  <34.518578, 31.111431, 29.761753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.870491, 31.299681, 29.734953> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082021, -0.011452, 0.996565,
		0.468242, -0.882259, -0.048676,
		0.879786, 0.470626, -0.067002,
		35.134426, 31.440868, 29.714851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.057446, 30.746796, 30.229343>,  <34.518578, 31.111431, 29.761753>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.057446, 30.746796, 30.229343> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.180416, 31.122963, 30.171240>,  <35.254200, 31.348663, 30.136377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.180416, 31.122963, 30.171240>,  <35.057446, 30.746796, 30.229343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.180416, 31.122963, 30.171240> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157702, 0.100186, 0.982391,
		0.938412, -0.324925, -0.117506,
		0.307431, 0.940418, -0.145257,
		35.272644, 31.405088, 30.127663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.590408, 30.830425, 30.657490>,  <35.057446, 30.746796, 30.229343>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.590408, 30.830425, 30.657490> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.446091, 31.198645, 30.597597>,  <35.359501, 31.419577, 30.561661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.446091, 31.198645, 30.597597>,  <35.590408, 30.830425, 30.657490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.446091, 31.198645, 30.597597> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097976, 0.197068, 0.975482,
		0.927487, 0.337273, -0.161292,
		-0.360790, 0.920549, -0.149733,
		35.337852, 31.474810, 30.552677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.051823, 31.287045, 30.964785>,  <35.590408, 30.830425, 30.657490>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.051823, 31.287045, 30.964785> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.716900, 31.501732, 30.923122>,  <35.515945, 31.630545, 30.898125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.716900, 31.501732, 30.923122>,  <36.051823, 31.287045, 30.964785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.716900, 31.501732, 30.923122> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079311, 0.307726, 0.948164,
		0.540948, 0.785645, -0.300230,
		-0.837308, 0.536718, -0.104154,
		35.465706, 31.662748, 30.891876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.171593, 31.962690, 31.200472>,  <36.051823, 31.287045, 30.964785>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.171593, 31.962690, 31.200472> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.786697, 31.858616, 31.232456>,  <35.555759, 31.796171, 31.251646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.786697, 31.858616, 31.232456>,  <36.171593, 31.962690, 31.200472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.786697, 31.858616, 31.232456> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055379, 0.100487, 0.993396,
		-0.266502, 0.960316, -0.082284,
		-0.962242, -0.260185, 0.079961,
		35.498024, 31.780560, 31.256445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.861492, 32.382038, 31.667500>,  <36.171593, 31.962690, 31.200472>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.861492, 32.382038, 31.667500> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.636829, 32.051678, 31.687231>,  <35.502033, 31.853462, 31.699070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.636829, 32.051678, 31.687231>,  <35.861492, 32.382038, 31.667500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.636829, 32.051678, 31.687231> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125472, -0.026092, 0.991754,
		-0.817800, 0.563216, 0.118281,
		-0.561658, -0.825898, 0.049330,
		35.468330, 31.803909, 31.702030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.542801, 32.512783, 32.326668>,  <35.861492, 32.382038, 31.667500>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.542801, 32.512783, 32.326668> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.493248, 32.123127, 32.251080>,  <35.463516, 31.889334, 32.205727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.493248, 32.123127, 32.251080>,  <35.542801, 32.512783, 32.326668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.493248, 32.123127, 32.251080> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233258, -0.213692, 0.948644,
		-0.964491, 0.073444, 0.253699,
		-0.123886, -0.974136, -0.188972,
		35.456081, 31.830887, 32.194389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.114410, 32.154457, 32.903477>,  <35.542801, 32.512783, 32.326668>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.114410, 32.154457, 32.903477> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.314243, 31.858908, 32.722599>,  <35.434143, 31.681578, 32.614071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.314243, 31.858908, 32.722599>,  <35.114410, 32.154457, 32.903477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.314243, 31.858908, 32.722599> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186706, -0.417894, 0.889104,
		-0.845905, -0.528610, -0.070821,
		0.499585, -0.738875, -0.452193,
		35.464119, 31.637245, 32.586941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.969875, 31.591839, 33.342815>,  <35.114410, 32.154457, 32.903477>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.969875, 31.591839, 33.342815> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.263531, 31.424351, 33.129005>,  <35.439724, 31.323858, 33.000721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.263531, 31.424351, 33.129005>,  <34.969875, 31.591839, 33.342815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.263531, 31.424351, 33.129005> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186193, -0.632900, 0.751512,
		-0.652981, -0.651233, -0.386667,
		0.734131, -0.418728, -0.534527,
		35.483772, 31.298735, 32.968647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.833923, 30.834965, 33.291515>,  <34.969875, 31.591839, 33.342815>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.833923, 30.834965, 33.291515> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.227432, 30.897100, 33.255611>,  <35.463539, 30.934381, 33.234070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.227432, 30.897100, 33.255611>,  <34.833923, 30.834965, 33.291515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.227432, 30.897100, 33.255611> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168118, -0.623472, 0.763556,
		0.062647, -0.766258, -0.639472,
		0.983774, 0.155341, -0.089763,
		35.522564, 30.943703, 33.228683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.114643, 30.274607, 33.637070>,  <34.833923, 30.834965, 33.291515>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.114643, 30.274607, 33.637070> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.436768, 30.509205, 33.602432>,  <35.630043, 30.649963, 33.581650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.436768, 30.509205, 33.602432>,  <35.114643, 30.274607, 33.637070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.436768, 30.509205, 33.602432> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316057, -0.301148, 0.899676,
		0.501579, -0.751887, -0.427884,
		0.805311, 0.586494, -0.086589,
		35.678360, 30.685154, 33.576454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.630371, 29.841024, 33.737976>,  <35.114643, 30.274607, 33.637070>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.630371, 29.841024, 33.737976> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.774197, 30.204275, 33.823784>,  <35.860493, 30.422226, 33.875271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.774197, 30.204275, 33.823784>,  <35.630371, 29.841024, 33.737976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.774197, 30.204275, 33.823784> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460324, -0.372605, 0.805772,
		0.811674, -0.190979, -0.552008,
		0.359566, 0.908126, 0.214521,
		35.882065, 30.476713, 33.888142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.335983, 29.806271, 33.863983>,  <35.630371, 29.841024, 33.737976>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.335983, 29.806271, 33.863983> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.216839, 30.133183, 34.061298>,  <36.145351, 30.329330, 34.179688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.216839, 30.133183, 34.061298>,  <36.335983, 29.806271, 33.863983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.216839, 30.133183, 34.061298> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451906, -0.334450, 0.826997,
		0.840869, 0.469248, -0.269715,
		-0.297860, 0.817282, 0.493285,
		36.127480, 30.378366, 34.209282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.929085, 30.016840, 34.316624>,  <36.335983, 29.806271, 33.863983>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.929085, 30.016840, 34.316624> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.630962, 30.206865, 34.503738>,  <36.452087, 30.320881, 34.616009>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.630962, 30.206865, 34.503738>,  <36.929085, 30.016840, 34.316624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.630962, 30.206865, 34.503738> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470727, -0.121929, 0.873813,
		0.472154, 0.871463, -0.132751,
		-0.745310, 0.475064, 0.467791,
		36.407368, 30.349384, 34.644077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.246880, 30.446943, 34.759964>,  <36.929085, 30.016840, 34.316624>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.246880, 30.446943, 34.759964> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.872379, 30.411398, 34.895931>,  <36.647678, 30.390070, 34.977512>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.872379, 30.411398, 34.895931>,  <37.246880, 30.446943, 34.759964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.872379, 30.411398, 34.895931> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351094, -0.272936, 0.895678,
		0.013181, 0.957919, 0.286735,
		-0.936248, -0.088865, 0.339917,
		36.591503, 30.384739, 34.997906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.226139, 30.929583, 35.219460>,  <37.246880, 30.446943, 34.759964>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.226139, 30.929583, 35.219460> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.934902, 30.666401, 35.296371>,  <36.760159, 30.508492, 35.342518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.934902, 30.666401, 35.296371>,  <37.226139, 30.929583, 35.219460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.934902, 30.666401, 35.296371> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408164, -0.190774, 0.892753,
		-0.550706, 0.728494, 0.407455,
		-0.728097, -0.657953, 0.192284,
		36.716473, 30.469015, 35.354057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.692093, 31.419912, 35.465355>,  <37.226139, 30.929583, 35.219460>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.692093, 31.419912, 35.465355> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.073135, 31.302856, 35.432110>,  <38.301762, 31.232624, 35.412163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.073135, 31.302856, 35.432110>,  <37.692093, 31.419912, 35.465355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.073135, 31.302856, 35.432110> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002440, 0.265856, -0.964010,
		0.304202, 0.918522, 0.252542,
		0.952604, -0.292638, -0.083115,
		38.358917, 31.215065, 35.407177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.047729, 31.902523, 34.959209>,  <37.692093, 31.419912, 35.465355>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.047729, 31.902523, 34.959209> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.304104, 31.595829, 34.973747>,  <38.457928, 31.411812, 34.982471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.304104, 31.595829, 34.973747>,  <38.047729, 31.902523, 34.959209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.304104, 31.595829, 34.973747> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282120, 0.191265, -0.940120,
		0.713872, 0.612809, 0.338899,
		0.640933, -0.766736, 0.036347,
		38.496384, 31.365808, 34.984650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.768837, 32.191719, 34.643261>,  <38.047729, 31.902523, 34.959209>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.768837, 32.191719, 34.643261> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.737320, 31.795076, 34.602261>,  <38.718410, 31.557091, 34.577660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.737320, 31.795076, 34.602261>,  <38.768837, 32.191719, 34.643261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.737320, 31.795076, 34.602261> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227169, 0.082255, -0.970375,
		0.970663, -0.099741, 0.218782,
		-0.078790, -0.991608, -0.102500,
		38.713684, 31.497595, 34.571510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.289322, 32.077614, 34.292431>,  <38.768837, 32.191719, 34.643261>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.289322, 32.077614, 34.292431> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.112434, 31.719309, 34.274342>,  <39.006302, 31.504326, 34.263489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.112434, 31.719309, 34.274342>,  <39.289322, 32.077614, 34.292431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.112434, 31.719309, 34.274342> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434228, -0.169704, -0.884673,
		0.784784, -0.410860, 0.464013,
		-0.442222, -0.895765, -0.045226,
		38.979767, 31.450579, 34.260773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.810951, 31.575895, 34.098225>,  <39.289322, 32.077614, 34.292431>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.810951, 31.575895, 34.098225> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.450165, 31.450247, 33.979713>,  <39.233692, 31.374859, 33.908607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.450165, 31.450247, 33.979713>,  <39.810951, 31.575895, 34.098225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.450165, 31.450247, 33.979713> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380462, -0.253634, -0.889336,
		0.204212, -0.914876, 0.348280,
		-0.901968, -0.314121, -0.296281,
		39.179573, 31.356010, 33.890831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.976376, 31.077183, 33.605766>,  <39.810951, 31.575895, 34.098225>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.976376, 31.077183, 33.605766> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.591553, 31.160242, 33.534962>,  <39.360661, 31.210077, 33.492477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.591553, 31.160242, 33.534962>,  <39.976376, 31.077183, 33.605766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.591553, 31.160242, 33.534962> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132027, -0.213484, -0.967984,
		-0.238795, -0.954623, 0.177967,
		-0.962053, 0.207654, -0.177015,
		39.302937, 31.222536, 33.481857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.822639, 30.615250, 33.179077>,  <39.976376, 31.077183, 33.605766>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.822639, 30.615250, 33.179077> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.512459, 30.860331, 33.118057>,  <39.326351, 31.007380, 33.081444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.512459, 30.860331, 33.118057>,  <39.822639, 30.615250, 33.179077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.512459, 30.860331, 33.118057> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043772, -0.188856, -0.981029,
		-0.629891, -0.767415, 0.119629,
		-0.775449, 0.612705, -0.152550,
		39.279823, 31.044142, 33.072292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.279682, 30.224760, 32.852085>,  <39.822639, 30.615250, 33.179077>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.279682, 30.224760, 32.852085> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.223576, 30.609833, 32.759502>,  <39.189911, 30.840876, 32.703953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.223576, 30.609833, 32.759502>,  <39.279682, 30.224760, 32.852085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.223576, 30.609833, 32.759502> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122731, -0.248870, -0.960729,
		-0.982477, -0.106353, 0.153059,
		-0.140268, 0.962680, -0.231456,
		39.181496, 30.898636, 32.690067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.829319, 30.240862, 32.386135>,  <39.279682, 30.224760, 32.852085>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.829319, 30.240862, 32.386135> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.019749, 30.589127, 32.336655>,  <39.134007, 30.798084, 32.306965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.019749, 30.589127, 32.336655>,  <38.829319, 30.240862, 32.386135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.019749, 30.589127, 32.336655> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035750, -0.159712, -0.986516,
		-0.878677, 0.465235, -0.107162,
		0.476077, 0.870660, -0.123703,
		39.162571, 30.850325, 32.299545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.417267, 30.677736, 31.841259>,  <38.829319, 30.240862, 32.386135>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.417267, 30.677736, 31.841259> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.784435, 30.835939, 31.853846>,  <39.004738, 30.930862, 31.861397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.784435, 30.835939, 31.853846>,  <38.417267, 30.677736, 31.841259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.784435, 30.835939, 31.853846> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017652, 0.119937, -0.992625,
		-0.396366, 0.910597, 0.117074,
		0.917923, 0.395509, 0.031465,
		39.059811, 30.954592, 31.863285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.386471, 31.231724, 31.390160>,  <38.417267, 30.677736, 31.841259>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.386471, 31.231724, 31.390160> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.781429, 31.204353, 31.447235>,  <39.018406, 31.187931, 31.481480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.781429, 31.204353, 31.447235>,  <38.386471, 31.231724, 31.390160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.781429, 31.204353, 31.447235> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150461, 0.126603, -0.980476,
		0.049026, 0.989591, 0.135303,
		0.987400, -0.068427, 0.142688,
		39.077648, 31.183825, 31.490042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.747646, 31.803291, 31.191841>,  <38.386471, 31.231724, 31.390160>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.747646, 31.803291, 31.191841> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.015369, 31.509686, 31.145800>,  <39.176003, 31.333523, 31.118174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.015369, 31.509686, 31.145800>,  <38.747646, 31.803291, 31.191841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.015369, 31.509686, 31.145800> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045921, 0.195494, -0.979629,
		0.741565, 0.650388, 0.164552,
		0.669308, -0.734015, -0.115105,
		39.216160, 31.289480, 31.111267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.285980, 32.039158, 30.774136>,  <38.747646, 31.803291, 31.191841>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.285980, 32.039158, 30.774136> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.277725, 31.639784, 30.753317>,  <39.272770, 31.400160, 30.740826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.277725, 31.639784, 30.753317>,  <39.285980, 32.039158, 30.774136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.277725, 31.639784, 30.753317> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168521, 0.054786, -0.984174,
		0.985482, -0.011544, -0.169387,
		-0.020642, -0.998431, -0.052045,
		39.271534, 31.340254, 30.737703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.477043, 31.900627, 30.052961>,  <39.285980, 32.039158, 30.774136>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.477043, 31.900627, 30.052961> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.387169, 31.523775, 30.152485>,  <39.333244, 31.297663, 30.212198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.387169, 31.523775, 30.152485>,  <39.477043, 31.900627, 30.052961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.387169, 31.523775, 30.152485> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127166, -0.224804, -0.966070,
		0.966098, -0.248701, -0.069297,
		-0.224684, -0.942131, 0.248810,
		39.319763, 31.241137, 30.227127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.913776, 31.434532, 29.654358>,  <39.477043, 31.900627, 30.052961>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.913776, 31.434532, 29.654358> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.588085, 31.226572, 29.757689>,  <39.392670, 31.101795, 29.819687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.588085, 31.226572, 29.757689>,  <39.913776, 31.434532, 29.654358>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.588085, 31.226572, 29.757689> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100268, -0.312346, -0.944662,
		0.571818, -0.795074, 0.202192,
		-0.814230, -0.519902, 0.258325,
		39.343815, 31.070602, 29.835186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.993736, 30.735134, 29.373104>,  <39.913776, 31.434532, 29.654358>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.993736, 30.735134, 29.373104> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.603920, 30.820007, 29.402098>,  <39.370029, 30.870932, 29.419493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.603920, 30.820007, 29.402098>,  <39.993736, 30.735134, 29.373104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.603920, 30.820007, 29.402098> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120032, -0.220642, -0.967941,
		-0.189383, -0.951996, 0.240493,
		-0.974539, 0.212178, 0.072485,
		39.311558, 30.883663, 29.423843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.651844, 30.274986, 28.932133>,  <39.993736, 30.735134, 29.373104>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.651844, 30.274986, 28.932133> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.372681, 30.555296, 28.991243>,  <39.205181, 30.723482, 29.026709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.372681, 30.555296, 28.991243>,  <39.651844, 30.274986, 28.932133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.372681, 30.555296, 28.991243> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313535, -0.113445, -0.942776,
		-0.643910, -0.704303, 0.298892,
		-0.697908, 0.700776, 0.147775,
		39.163307, 30.765530, 29.035576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.990639, 29.896999, 28.770184>,  <39.651844, 30.274986, 28.932133>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.990639, 29.896999, 28.770184> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.930206, 30.291740, 28.747217>,  <38.893948, 30.528585, 28.733438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.930206, 30.291740, 28.747217>,  <38.990639, 29.896999, 28.770184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.930206, 30.291740, 28.747217> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573801, -0.134843, -0.807817,
		-0.804939, -0.089100, 0.586630,
		-0.151080, 0.986852, -0.057415,
		38.884884, 30.587797, 28.729992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.395481, 30.004698, 28.255081> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.569698, 30.364290, 28.273581>,  <38.674229, 30.580046, 28.284679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.569698, 30.364290, 28.273581>,  <38.395481, 30.004698, 28.255081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.569698, 30.364290, 28.273581> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183086, 0.138770, -0.973253,
		-0.881353, 0.415424, 0.225031,
		0.435540, 0.898980, 0.046247,
		38.700359, 30.633984, 28.287455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.844715, 30.510237, 27.957365>,  <38.395481, 30.004698, 28.255081>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.844715, 30.510237, 27.957365> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.191616, 30.708467, 27.938244>,  <38.399757, 30.827406, 27.926771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.191616, 30.708467, 27.938244>,  <37.844715, 30.510237, 27.957365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.191616, 30.708467, 27.938244> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259539, 0.368068, -0.892841,
		-0.424877, 0.786721, 0.447828,
		0.867248, 0.495577, -0.047801,
		38.451790, 30.857140, 27.923903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.792824, 31.193800, 27.673986>,  <37.844715, 30.510237, 27.957365>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.792824, 31.193800, 27.673986> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.181774, 31.140425, 27.597372>,  <38.415142, 31.108400, 27.551403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.181774, 31.140425, 27.597372>,  <37.792824, 31.193800, 27.673986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.181774, 31.140425, 27.597372> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089334, 0.545343, -0.833439,
		0.215665, 0.827523, 0.518356,
		0.972372, -0.133436, -0.191538,
		38.473484, 31.100393, 27.539911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.027187, 31.823980, 27.405342>,  <37.792824, 31.193800, 27.673986>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.027187, 31.823980, 27.405342> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.318222, 31.569191, 27.303450>,  <38.492844, 31.416317, 27.242313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.318222, 31.569191, 27.303450>,  <38.027187, 31.823980, 27.405342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.318222, 31.569191, 27.303450> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042567, 0.412519, -0.909954,
		0.684698, 0.651224, 0.327255,
		0.727583, -0.636974, -0.254730,
		38.536495, 31.378099, 27.227030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.546379, 32.198132, 27.146469>,  <38.027187, 31.823980, 27.405342>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.546379, 32.198132, 27.146469> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.595764, 31.846081, 26.963110>,  <38.625397, 31.634850, 26.853094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.595764, 31.846081, 26.963110>,  <38.546379, 32.198132, 27.146469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.595764, 31.846081, 26.963110> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093338, 0.449587, -0.888347,
		0.987950, 0.152465, -0.026641,
		0.123464, -0.880128, -0.458400,
		38.632805, 31.582043, 26.825590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.994629, 32.395866, 26.598660>,  <38.546379, 32.198132, 27.146469>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.994629, 32.395866, 26.598660> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.848679, 32.039028, 26.492058>,  <38.761108, 31.824924, 26.428097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.848679, 32.039028, 26.492058>,  <38.994629, 32.395866, 26.598660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.848679, 32.039028, 26.492058> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088753, 0.251610, -0.963751,
		0.926816, -0.375304, -0.012630,
		-0.364877, -0.892099, -0.266505,
		38.739216, 31.771399, 26.412106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.393532, 32.286671, 25.974415>,  <38.994629, 32.395866, 26.598660>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.393532, 32.286671, 25.974415> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.086433, 32.030434, 25.980230>,  <38.902176, 31.876692, 25.983719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.086433, 32.030434, 25.980230>,  <39.393532, 32.286671, 25.974415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.086433, 32.030434, 25.980230> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045895, 0.032346, -0.998423,
		0.639113, -0.767198, -0.054233,
		-0.767742, -0.640594, 0.014538,
		38.856110, 31.838255, 25.984592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.541706, 31.726650, 25.469677>,  <39.393532, 32.286671, 25.974415>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.541706, 31.726650, 25.469677> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.145451, 31.710281, 25.521782>,  <38.907700, 31.700460, 25.553045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.145451, 31.710281, 25.521782>,  <39.541706, 31.726650, 25.469677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.145451, 31.710281, 25.521782> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129755, -0.014865, -0.991435,
		0.042509, -0.999052, 0.009415,
		-0.990635, -0.040923, 0.130264,
		38.848259, 31.698004, 25.560862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.300461, 31.102373, 25.120575>,  <39.541706, 31.726650, 25.469677>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.300461, 31.102373, 25.120575> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.988716, 31.349815, 25.160412>,  <38.801670, 31.498280, 25.184315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.988716, 31.349815, 25.160412>,  <39.300461, 31.102373, 25.120575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.988716, 31.349815, 25.160412> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235115, -0.141397, -0.961628,
		-0.580785, -0.772874, 0.255643,
		-0.779365, 0.618605, 0.099593,
		38.754906, 31.535397, 25.190290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.818890, 30.849710, 24.765495>,  <39.300461, 31.102373, 25.120575>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.818890, 30.849710, 24.765495> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.683681, 31.224955, 24.795666>,  <38.602558, 31.450102, 24.813768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.683681, 31.224955, 24.795666>,  <38.818890, 30.849710, 24.765495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.683681, 31.224955, 24.795666> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411413, -0.075207, -0.908341,
		-0.846452, -0.338070, 0.411373,
		-0.338021, 0.938111, 0.075428,
		38.582275, 31.506388, 24.818295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.118034, 30.810820, 24.405231>,  <38.818890, 30.849710, 24.765495>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.118034, 30.810820, 24.405231> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.233471, 31.192953, 24.430712>,  <38.302731, 31.422234, 24.445999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.233471, 31.192953, 24.430712>,  <38.118034, 30.810820, 24.405231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.233471, 31.192953, 24.430712> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115236, 0.100703, -0.988220,
		-0.950494, 0.277847, 0.139150,
		0.288587, 0.955332, 0.063699,
		38.320045, 31.479553, 24.449821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.628750, 31.175097, 24.029692>,  <38.118034, 30.810820, 24.405231>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.628750, 31.175097, 24.029692> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.976509, 31.372347, 24.042171>,  <38.185165, 31.490696, 24.049660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.976509, 31.372347, 24.042171>,  <37.628750, 31.175097, 24.029692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.976509, 31.372347, 24.042171> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048890, 0.148681, -0.987676,
		-0.491685, 0.857160, 0.153372,
		0.869400, 0.493124, 0.031197,
		38.237328, 31.520285, 24.051531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.518879, 31.748684, 23.595158>,  <37.628750, 31.175097, 24.029692>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.518879, 31.748684, 23.595158> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.917786, 31.735207, 23.621439>,  <38.157131, 31.727121, 23.637207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.917786, 31.735207, 23.621439>,  <37.518879, 31.748684, 23.595158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.917786, 31.735207, 23.621439> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068364, 0.085062, -0.994028,
		0.027901, 0.995806, 0.087133,
		0.997270, -0.033691, 0.065704,
		38.216969, 31.725100, 23.641150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.766651, 32.237286, 23.088089>,  <37.518879, 31.748684, 23.595158>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.766651, 32.237286, 23.088089> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.098145, 32.026485, 23.163416>,  <38.297043, 31.900005, 23.208612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.098145, 32.026485, 23.163416>,  <37.766651, 32.237286, 23.088089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.098145, 32.026485, 23.163416> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212818, -0.014446, -0.976985,
		0.517592, 0.849742, 0.100183,
		0.828738, -0.527001, 0.188317,
		38.346767, 31.868385, 23.219912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.430145, 32.715946, 22.901663>,  <37.766651, 32.237286, 23.088089>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.430145, 32.715946, 22.901663> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.588821, 32.348766, 22.902718>,  <38.684025, 32.128460, 22.903351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.588821, 32.348766, 22.902718>,  <38.430145, 32.715946, 22.901663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.588821, 32.348766, 22.902718> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346492, 0.147073, -0.926452,
		0.850049, 0.368425, 0.376404,
		0.396687, -0.917950, 0.002636,
		38.707829, 32.073380, 22.903509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.004532, 32.787125, 22.740641>,  <38.430145, 32.715946, 22.901663>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.004532, 32.787125, 22.740641> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.945652, 32.404839, 22.638704>,  <38.910324, 32.175468, 22.577541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.945652, 32.404839, 22.638704>,  <39.004532, 32.787125, 22.740641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.945652, 32.404839, 22.638704> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342255, 0.192516, -0.919674,
		0.928005, -0.222599, 0.298758,
		-0.147203, -0.955713, -0.254842,
		38.901489, 32.118126, 22.562252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.596943, 32.563072, 22.429268>,  <39.004532, 32.787125, 22.740641>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.596943, 32.563072, 22.429268> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.299149, 32.344894, 22.275265>,  <39.120472, 32.213989, 22.182863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.299149, 32.344894, 22.275265>,  <39.596943, 32.563072, 22.429268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.299149, 32.344894, 22.275265> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348044, 0.175038, -0.920992,
		0.569738, -0.819668, 0.059524,
		-0.744488, -0.545441, -0.385007,
		39.075802, 32.181263, 22.159763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.772655, 32.274990, 21.733261>,  <39.596943, 32.563072, 22.429268>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.772655, 32.274990, 21.733261> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.379635, 32.200592, 21.732851>,  <39.143822, 32.155952, 21.732605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.379635, 32.200592, 21.732851>,  <39.772655, 32.274990, 21.733261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.379635, 32.200592, 21.732851> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030007, 0.163953, -0.986012,
		0.183571, -0.968773, -0.166673,
		-0.982548, -0.186004, -0.001027,
		39.084869, 32.144794, 21.732544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.751892, 31.800900, 21.283436>,  <39.772655, 32.274990, 21.733261>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.751892, 31.800900, 21.283436> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.405396, 31.995781, 21.327713>,  <39.197498, 32.112709, 21.354279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.405396, 31.995781, 21.327713>,  <39.751892, 31.800900, 21.283436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.405396, 31.995781, 21.327713> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046454, 0.142052, -0.988769,
		-0.497458, -0.861657, -0.100418,
		-0.866243, 0.487206, 0.110692,
		39.145523, 32.141941, 21.360920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.324764, 31.493662, 20.859009>,  <39.751892, 31.800900, 21.283436>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.324764, 31.493662, 20.859009> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.157509, 31.854181, 20.904301>,  <39.057156, 32.070492, 20.931475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.157509, 31.854181, 20.904301>,  <39.324764, 31.493662, 20.859009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.157509, 31.854181, 20.904301> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153161, 0.052912, -0.986784,
		-0.895377, -0.429957, 0.115919,
		-0.418141, 0.901298, 0.113229,
		39.032066, 32.124569, 20.938269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.777485, 31.496256, 20.505812>,  <39.324764, 31.493662, 20.859009>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.777485, 31.496256, 20.505812> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.833370, 31.889368, 20.554176>,  <38.866901, 32.125237, 20.583195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.833370, 31.889368, 20.554176>,  <38.777485, 31.496256, 20.505812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.833370, 31.889368, 20.554176> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031160, 0.126412, -0.991488,
		-0.989701, 0.134758, 0.048285,
		0.139715, 0.982782, 0.120911,
		38.875286, 32.184204, 20.590450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.302830, 31.772312, 20.004820>,  <38.777485, 31.496256, 20.505812>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.302830, 31.772312, 20.004820> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.588730, 32.037987, 20.092449>,  <38.760269, 32.197392, 20.145027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.588730, 32.037987, 20.092449>,  <38.302830, 31.772312, 20.004820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.588730, 32.037987, 20.092449> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051769, 0.262135, -0.963642,
		-0.697466, 0.700100, 0.152975,
		0.714746, 0.664188, 0.219074,
		38.803154, 32.237244, 20.158171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.266994, 31.847916, 19.264193>,  <38.302830, 31.772312, 20.004820>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.266994, 31.847916, 19.264193> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.033405, 31.857527, 18.939627>,  <37.893250, 31.863293, 18.744886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.033405, 31.857527, 18.939627>,  <38.266994, 31.847916, 19.264193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.033405, 31.857527, 18.939627> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683277, -0.554238, 0.475345,
		-0.438295, 0.832011, 0.340080,
		-0.583978, 0.024027, -0.811414,
		37.858212, 31.864735, 18.696203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.587223, 31.923996, 19.473524>,  <38.266994, 31.847916, 19.264193>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.587223, 31.923996, 19.473524> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.527340, 31.809635, 19.094927>,  <37.491409, 31.741018, 18.867769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.527340, 31.809635, 19.094927>,  <37.587223, 31.923996, 19.473524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.527340, 31.809635, 19.094927> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717080, -0.627674, 0.303021,
		-0.680722, 0.724076, -0.111045,
		-0.149710, -0.285901, -0.946492,
		37.482426, 31.723866, 18.810980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.925365, 31.461861, 19.630383>,  <37.587223, 31.923996, 19.473524>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.925365, 31.461861, 19.630383> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.552525, 31.317356, 19.640800>,  <36.328819, 31.230654, 19.647051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.552525, 31.317356, 19.640800>,  <36.925365, 31.461861, 19.630383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.552525, 31.317356, 19.640800> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122081, 0.381056, 0.916457,
		-0.341005, 0.851050, -0.399285,
		-0.932101, -0.361261, 0.026045,
		36.272896, 31.208979, 19.648615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.510670, 32.108177, 19.910908>,  <36.925365, 31.461861, 19.630383>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.510670, 32.108177, 19.910908> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.284393, 31.781256, 19.954756>,  <36.148628, 31.585104, 19.981064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.284393, 31.781256, 19.954756>,  <36.510670, 32.108177, 19.910908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.284393, 31.781256, 19.954756> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086910, 0.191285, 0.977679,
		-0.820025, 0.543536, -0.179240,
		-0.565690, -0.817299, 0.109620,
		36.114685, 31.536066, 19.987642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.924057, 32.429371, 20.207331>,  <36.510670, 32.108177, 19.910908>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.924057, 32.429371, 20.207331> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.892857, 32.037403, 20.280729>,  <35.874138, 31.802221, 20.324768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.892857, 32.037403, 20.280729>,  <35.924057, 32.429371, 20.207331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.892857, 32.037403, 20.280729> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143182, 0.193158, 0.970664,
		-0.986618, 0.049438, -0.155373,
		-0.077999, -0.979921, 0.183495,
		35.869457, 31.743427, 20.335777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.455994, 32.349216, 20.667910>,  <35.924057, 32.429371, 20.207331>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.455994, 32.349216, 20.667910> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.648140, 32.000977, 20.710455>,  <35.763428, 31.792034, 20.735983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.648140, 32.000977, 20.710455>,  <35.455994, 32.349216, 20.667910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.648140, 32.000977, 20.710455> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101327, 0.065374, 0.992703,
		-0.871197, -0.487636, -0.056812,
		0.480364, -0.870596, 0.106364,
		35.792248, 31.739798, 20.742365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.023216, 31.829880, 21.035526>,  <35.455994, 32.349216, 20.667910>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.023216, 31.829880, 21.035526> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.411022, 31.743168, 21.081205>,  <35.643707, 31.691141, 21.108612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.411022, 31.743168, 21.081205>,  <35.023216, 31.829880, 21.035526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.411022, 31.743168, 21.081205> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092040, 0.109719, 0.989692,
		-0.227076, -0.970035, 0.086422,
		0.969518, -0.216781, 0.114197,
		35.701878, 31.678133, 21.115465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.031055, 31.237505, 21.625326>,  <35.023216, 31.829880, 21.035526>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.031055, 31.237505, 21.625326> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.394745, 31.399738, 21.587780>,  <35.612961, 31.497078, 21.565252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.394745, 31.399738, 21.587780>,  <35.031055, 31.237505, 21.625326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.394745, 31.399738, 21.587780> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072168, 0.068503, 0.995037,
		0.410001, -0.911487, 0.033014,
		0.909225, 0.405584, -0.093866,
		35.667511, 31.521414, 21.559620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.302322, 30.942028, 22.210732>,  <35.031055, 31.237505, 21.625326>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.302322, 30.942028, 22.210732> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.563843, 31.225101, 22.103603>,  <35.720757, 31.394945, 22.039328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.563843, 31.225101, 22.103603>,  <35.302322, 30.942028, 22.210732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.563843, 31.225101, 22.103603> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068352, 0.297263, 0.952346,
		0.753571, -0.640953, 0.145980,
		0.653803, 0.707682, -0.267819,
		35.759983, 31.437407, 22.023258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.880047, 30.792538, 22.581385>,  <35.302322, 30.942028, 22.210732>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.880047, 30.792538, 22.581385> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.883659, 31.182085, 22.490614>,  <35.885826, 31.415813, 22.436152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.883659, 31.182085, 22.490614>,  <35.880047, 30.792538, 22.581385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.883659, 31.182085, 22.490614> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087514, 0.225295, 0.970352,
		0.996122, -0.028625, -0.083192,
		0.009034, 0.973870, -0.226927,
		35.886368, 31.474247, 22.422537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.486511, 31.072725, 22.922718>,  <35.880047, 30.792538, 22.581385>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.486511, 31.072725, 22.922718> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.234142, 31.372038, 22.840736>,  <36.082722, 31.551626, 22.791548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.234142, 31.372038, 22.840736>,  <36.486511, 31.072725, 22.922718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.234142, 31.372038, 22.840736> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199726, 0.411914, 0.889065,
		0.749696, 0.519998, -0.409338,
		-0.630925, 0.748284, -0.204953,
		36.044865, 31.596523, 22.779251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.814594, 31.643574, 23.236475>,  <36.486511, 31.072725, 22.922718>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.814594, 31.643574, 23.236475> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.436996, 31.774578, 23.220436>,  <36.210438, 31.853180, 23.210812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.436996, 31.774578, 23.220436>,  <36.814594, 31.643574, 23.236475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.436996, 31.774578, 23.220436> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028022, 0.200665, 0.979259,
		0.328763, 0.923294, -0.198605,
		-0.943997, 0.327510, -0.040099,
		36.153797, 31.872831, 23.208406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.865665, 32.276733, 23.633387>,  <36.814594, 31.643574, 23.236475>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.865665, 32.276733, 23.633387> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.492260, 32.136032, 23.605640>,  <36.268215, 32.051609, 23.588993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.492260, 32.136032, 23.605640>,  <36.865665, 32.276733, 23.633387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.492260, 32.136032, 23.605640> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098507, 0.065615, 0.992971,
		-0.344731, 0.933789, -0.095903,
		-0.933518, -0.351755, -0.069366,
		36.212204, 32.030506, 23.584831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.463711, 32.743904, 23.933815>,  <36.865665, 32.276733, 23.633387>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.463711, 32.743904, 23.933815> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.282051, 32.387848, 23.948782>,  <36.173058, 32.174213, 23.957762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.282051, 32.387848, 23.948782>,  <36.463711, 32.743904, 23.933815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.282051, 32.387848, 23.948782> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032291, 0.058414, 0.997770,
		-0.890341, 0.451926, -0.055272,
		-0.454147, -0.890141, 0.037415,
		36.145805, 32.120804, 23.960007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.918835, 32.887379, 24.261950>,  <36.463711, 32.743904, 23.933815>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.918835, 32.887379, 24.261950> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.947327, 32.489288, 24.288647>,  <35.964420, 32.250435, 24.304665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.947327, 32.489288, 24.288647>,  <35.918835, 32.887379, 24.261950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.947327, 32.489288, 24.288647> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013435, 0.065949, 0.997732,
		-0.997370, -0.071962, -0.008673,
		0.071227, -0.995225, 0.066742,
		35.968697, 32.190720, 24.308670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.425026, 32.599186, 24.902626>,  <35.918835, 32.887379, 24.261950>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.425026, 32.599186, 24.902626> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.702072, 32.320442, 24.828142>,  <35.868301, 32.153194, 24.783453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.702072, 32.320442, 24.828142>,  <35.425026, 32.599186, 24.902626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.702072, 32.320442, 24.828142> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087441, -0.175132, 0.980654,
		-0.715989, -0.695497, -0.060365,
		0.692614, -0.696859, -0.186208,
		35.909855, 32.111385, 24.772280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.286312, 32.139721, 25.450884>,  <35.425026, 32.599186, 24.902626>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.286312, 32.139721, 25.450884> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.624794, 31.983868, 25.305492>,  <35.827885, 31.890356, 25.218258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.624794, 31.983868, 25.305492>,  <35.286312, 32.139721, 25.450884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.624794, 31.983868, 25.305492> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263041, -0.287776, 0.920866,
		-0.463402, -0.874854, -0.141029,
		0.846208, -0.389634, -0.363479,
		35.878658, 31.866978, 25.196449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.289845, 31.496361, 25.709469>,  <35.286312, 32.139721, 25.450884>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.289845, 31.496361, 25.709469> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.672890, 31.591284, 25.644154>,  <35.902718, 31.648237, 25.604965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.672890, 31.591284, 25.644154>,  <35.289845, 31.496361, 25.709469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.672890, 31.591284, 25.644154> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252811, -0.420667, 0.871278,
		0.138071, -0.875628, -0.462830,
		0.957613, 0.237307, -0.163287,
		35.960175, 31.662476, 25.595167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.572330, 30.954565, 25.779797>,  <35.289845, 31.496361, 25.709469>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.572330, 30.954565, 25.779797> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.862694, 31.225235, 25.829054>,  <36.036911, 31.387636, 25.858608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.862694, 31.225235, 25.829054>,  <35.572330, 30.954565, 25.779797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.862694, 31.225235, 25.829054> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163667, -0.343851, 0.924651,
		0.668030, -0.651061, -0.360355,
		0.725913, 0.676673, 0.123145,
		36.080467, 31.428236, 25.865997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.153854, 30.597750, 26.030149>,  <35.572330, 30.954565, 25.779797>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.153854, 30.597750, 26.030149> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.185925, 30.976387, 26.155071>,  <36.205166, 31.203569, 26.230024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.185925, 30.976387, 26.155071>,  <36.153854, 30.597750, 26.030149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.185925, 30.976387, 26.155071> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037033, -0.315926, 0.948061,
		0.996093, -0.064446, -0.060385,
		0.080176, 0.946593, 0.312305,
		36.209976, 31.260365, 26.248762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.502998, 30.533579, 26.687687>,  <36.153854, 30.597750, 26.030149>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.502998, 30.533579, 26.687687> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.398815, 30.919300, 26.706768>,  <36.336304, 31.150734, 26.718218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.398815, 30.919300, 26.706768>,  <36.502998, 30.533579, 26.687687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.398815, 30.919300, 26.706768> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033473, -0.040360, 0.998624,
		0.964904, 0.261700, -0.021766,
		-0.260461, 0.964305, 0.047704,
		36.320675, 31.208591, 26.721079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.812122, 30.835312, 27.270634>,  <36.502998, 30.533579, 26.687687>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.812122, 30.835312, 27.270634> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.473785, 31.042297, 27.218807>,  <36.270782, 31.166489, 27.187712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.473785, 31.042297, 27.218807>,  <36.812122, 30.835312, 27.270634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.473785, 31.042297, 27.218807> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152023, -0.001016, 0.988376,
		0.511316, 0.855705, 0.079526,
		-0.845840, 0.517462, -0.129568,
		36.220032, 31.197536, 27.179937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.187290, 30.433508, 31.124950> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.891788, 30.703083, 31.127789>,  <39.714489, 30.864828, 31.129492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.891788, 30.703083, 31.127789>,  <40.187290, 30.433508, 31.124950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.891788, 30.703083, 31.127789> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285656, 0.303556, 0.908986,
		0.610447, 0.673543, -0.416767,
		-0.738753, 0.673940, 0.007097,
		39.670162, 30.905266, 31.129917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.360081, 31.053453, 31.564238>,  <40.187290, 30.433508, 31.124950>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.360081, 31.053453, 31.564238> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.961754, 31.088263, 31.553038>,  <39.722759, 31.109148, 31.546318>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.961754, 31.088263, 31.553038>,  <40.360081, 31.053453, 31.564238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.961754, 31.088263, 31.553038> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003888, 0.265687, 0.964051,
		0.091334, 0.960124, -0.264236,
		-0.995813, 0.087023, -0.027999,
		39.663010, 31.114370, 31.544638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.195278, 31.609695, 32.025429>,  <40.360081, 31.053453, 31.564238>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.195278, 31.609695, 32.025429> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.854172, 31.406952, 31.975019>,  <39.649509, 31.285305, 31.944775>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.854172, 31.406952, 31.975019>,  <40.195278, 31.609695, 32.025429>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.854172, 31.406952, 31.975019> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265335, 0.212596, 0.940425,
		-0.449873, 0.835402, -0.315783,
		-0.852767, -0.506860, -0.126020,
		39.598343, 31.254894, 31.937214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.693565, 32.074532, 32.210541>,  <40.195278, 31.609695, 32.025429>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.693565, 32.074532, 32.210541> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.533970, 31.708067, 32.225807>,  <39.438213, 31.488188, 32.234966>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.533970, 31.708067, 32.225807>,  <39.693565, 32.074532, 32.210541>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.533970, 31.708067, 32.225807> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452125, 0.232776, 0.861045,
		-0.797740, 0.326293, -0.507094,
		-0.398992, -0.916160, 0.038170,
		39.414272, 31.433220, 32.237259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.004704, 32.119762, 32.446533>,  <39.693565, 32.074532, 32.210541>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.004704, 32.119762, 32.446533> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.072372, 31.734200, 32.528759>,  <39.112976, 31.502861, 32.578094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.072372, 31.734200, 32.528759>,  <39.004704, 32.119762, 32.446533>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.072372, 31.734200, 32.528759> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359739, 0.133793, 0.923411,
		-0.917588, -0.230168, -0.324122,
		0.169174, -0.963910, 0.205567,
		39.123123, 31.445026, 32.590427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.426735, 32.023060, 32.834026>,  <39.004704, 32.119762, 32.446533>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.426735, 32.023060, 32.834026> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.686737, 31.730709, 32.917271>,  <38.842739, 31.555298, 32.967216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.686737, 31.730709, 32.917271>,  <38.426735, 32.023060, 32.834026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.686737, 31.730709, 32.917271> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268038, 0.035755, 0.962745,
		-0.711089, -0.681572, -0.172662,
		0.650006, -0.730877, 0.208113,
		38.881741, 31.511446, 32.979706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.046803, 31.576797, 33.256989>,  <38.426735, 32.023060, 32.834026>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.046803, 31.576797, 33.256989> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.424065, 31.454418, 33.308914>,  <38.650421, 31.380991, 33.340069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.424065, 31.454418, 33.308914>,  <38.046803, 31.576797, 33.256989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.424065, 31.454418, 33.308914> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174988, -0.125084, 0.976593,
		-0.282552, -0.943795, -0.171511,
		0.943156, -0.305951, 0.129810,
		38.707012, 31.362633, 33.347858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.034069, 30.863859, 33.516598>,  <38.046803, 31.576797, 33.256989>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.034069, 30.863859, 33.516598> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.371307, 31.043863, 33.634369>,  <38.573650, 31.151865, 33.705032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.371307, 31.043863, 33.634369>,  <38.034069, 30.863859, 33.516598>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.371307, 31.043863, 33.634369> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172436, -0.292372, 0.940630,
		0.509374, -0.843808, -0.168899,
		0.843092, 0.450008, 0.294429,
		38.624233, 31.178865, 33.722698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.276527, 30.370031, 33.970535>,  <38.034069, 30.863859, 33.516598>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.276527, 30.370031, 33.970535> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.487076, 30.697916, 34.060871>,  <38.613403, 30.894648, 34.115074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.487076, 30.697916, 34.060871>,  <38.276527, 30.370031, 33.970535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.487076, 30.697916, 34.060871> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145055, -0.175150, 0.973797,
		0.837790, -0.545338, 0.026709,
		0.526371, 0.819712, 0.225843,
		38.644989, 30.943830, 34.128624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.730286, 30.235891, 34.516922>,  <38.276527, 30.370031, 33.970535>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.730286, 30.235891, 34.516922> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.736877, 30.634968, 34.543270>,  <38.740833, 30.874414, 34.559078>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.736877, 30.634968, 34.543270>,  <38.730286, 30.235891, 34.516922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.736877, 30.634968, 34.543270> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102070, -0.063852, 0.992726,
		0.994641, -0.023082, 0.100783,
		0.016478, 0.997692, 0.065866,
		38.741821, 30.934275, 34.563030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.083759, 30.260141, 35.009613>,  <38.730286, 30.235891, 34.516922>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.083759, 30.260141, 35.009613> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.921581, 30.624577, 34.979862>,  <38.824276, 30.843239, 34.962013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.921581, 30.624577, 34.979862>,  <39.083759, 30.260141, 35.009613>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.921581, 30.624577, 34.979862> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082968, 0.117704, 0.989577,
		0.910347, 0.395047, -0.123314,
		-0.405444, 0.911089, -0.074375,
		38.799950, 30.897903, 34.957550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.560207, 30.739773, 35.318604>,  <39.083759, 30.260141, 35.009613>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.560207, 30.739773, 35.318604> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.179150, 30.859964, 35.337318>,  <38.950516, 30.932079, 35.348549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.179150, 30.859964, 35.337318>,  <39.560207, 30.739773, 35.318604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.179150, 30.859964, 35.337318> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029545, -0.061687, 0.997658,
		0.302660, 0.951792, 0.049888,
		-0.952641, 0.300477, 0.046791,
		38.893356, 30.950108, 35.351357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.502781, 31.375744, 35.795265>,  <39.560207, 30.739773, 35.318604>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.502781, 31.375744, 35.795265> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.164772, 31.161983, 35.787731>,  <38.961967, 31.033728, 35.783211>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.164772, 31.161983, 35.787731>,  <39.502781, 31.375744, 35.795265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.164772, 31.161983, 35.787731> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002494, -0.039155, 0.999230,
		-0.534725, 0.844325, 0.034420,
		-0.845022, -0.534399, -0.018831,
		38.911266, 31.001663, 35.782082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.125931, 31.684776, 36.330246>,  <39.502781, 31.375744, 35.795265>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.125931, 31.684776, 36.330246> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.992935, 31.316273, 36.249516>,  <38.913136, 31.095171, 36.201077>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.992935, 31.316273, 36.249516>,  <39.125931, 31.684776, 36.330246>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.992935, 31.316273, 36.249516> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272303, -0.298665, 0.914686,
		-0.902940, 0.249168, 0.350165,
		-0.332492, -0.921257, -0.201827,
		38.893188, 31.039896, 36.188969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.790199, 32.220760, 36.718895>,  <39.125931, 31.684776, 36.330246>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.790199, 32.220760, 36.718895> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.974529, 32.502708, 36.934597>,  <39.085129, 32.671879, 37.064018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.974529, 32.502708, 36.934597>,  <38.790199, 32.220760, 36.718895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.974529, 32.502708, 36.934597> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130927, 0.654960, -0.744235,
		-0.877779, 0.272362, 0.394111,
		0.460828, 0.704873, 0.539251,
		39.112778, 32.714169, 37.096371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.359535, 32.752659, 36.625229>,  <38.790199, 32.220760, 36.718895>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.359535, 32.752659, 36.625229> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.697578, 32.930008, 36.744705>,  <38.900402, 33.036419, 36.816391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.697578, 32.930008, 36.744705>,  <38.359535, 32.752659, 36.625229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.697578, 32.930008, 36.744705> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077241, 0.654120, -0.752436,
		-0.528991, 0.612816, 0.587047,
		0.845105, 0.443376, 0.298689,
		38.951111, 33.063023, 36.834312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.220020, 33.524731, 36.664894>,  <38.359535, 32.752659, 36.625229>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.220020, 33.524731, 36.664894> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.603249, 33.448009, 36.579750>,  <38.833187, 33.401978, 36.528664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.603249, 33.448009, 36.579750>,  <38.220020, 33.524731, 36.664894>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.603249, 33.448009, 36.579750> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073875, 0.552429, -0.830280,
		0.276837, 0.811194, 0.515098,
		0.958073, -0.191800, -0.212860,
		38.890671, 33.390469, 36.515892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.496059, 34.221245, 36.346066>,  <38.220020, 33.524731, 36.664894>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.496059, 34.221245, 36.346066> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.762505, 33.939896, 36.246826>,  <38.922371, 33.771088, 36.187283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.762505, 33.939896, 36.246826>,  <38.496059, 34.221245, 36.346066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.762505, 33.939896, 36.246826> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145807, 0.449032, -0.881539,
		0.731456, 0.551033, 0.401665,
		0.666117, -0.703373, -0.248103,
		38.962341, 33.728886, 36.172394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.107315, 34.626202, 36.254707>,  <38.496059, 34.221245, 36.346066>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.107315, 34.626202, 36.254707> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.132557, 34.274189, 36.066429>,  <39.147701, 34.062981, 35.953461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.132557, 34.274189, 36.066429>,  <39.107315, 34.626202, 36.254707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.132557, 34.274189, 36.066429> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133104, 0.474847, -0.869945,
		0.989091, -0.007756, 0.147100,
		0.063103, -0.880034, -0.470700,
		39.151489, 34.010178, 35.925220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.673508, 34.645458, 35.832214>,  <39.107315, 34.626202, 36.254707>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.673508, 34.645458, 35.832214> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.459137, 34.344505, 35.679008>,  <39.330513, 34.163933, 35.587086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.459137, 34.344505, 35.679008>,  <39.673508, 34.645458, 35.832214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.459137, 34.344505, 35.679008> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060819, 0.418083, -0.906370,
		0.842070, -0.509044, -0.178303,
		-0.535928, -0.752383, -0.383015,
		39.298359, 34.118790, 35.564102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.787819, 34.732727, 35.145798>,  <39.673508, 34.645458, 35.832214>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.787819, 34.732727, 35.145798> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.483635, 34.474842, 35.114674>,  <39.301125, 34.320110, 35.096001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.483635, 34.474842, 35.114674>,  <39.787819, 34.732727, 35.145798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.483635, 34.474842, 35.114674> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038107, 0.163918, -0.985738,
		0.648270, -0.746645, -0.149220,
		-0.760456, -0.644711, -0.077811,
		39.255497, 34.281429, 35.091331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.922356, 34.279621, 34.631172>,  <39.787819, 34.732727, 35.145798>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.922356, 34.279621, 34.631172> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.523216, 34.288998, 34.655666>,  <39.283733, 34.294624, 34.670364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.523216, 34.288998, 34.655666>,  <39.922356, 34.279621, 34.631172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.523216, 34.288998, 34.655666> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054184, 0.231112, -0.971417,
		-0.036923, -0.972645, -0.229345,
		-0.997848, 0.023441, 0.061235,
		39.223862, 34.296028, 34.674038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.737606, 33.940380, 34.077587>,  <39.922356, 34.279621, 34.631172>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.737606, 33.940380, 34.077587> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.394985, 34.124901, 34.170124>,  <39.189411, 34.235611, 34.225647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.394985, 34.124901, 34.170124>,  <39.737606, 33.940380, 34.077587>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.394985, 34.124901, 34.170124> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297327, -0.074727, -0.951847,
		-0.421798, -0.884092, 0.201164,
		-0.856553, 0.461299, 0.231344,
		39.138020, 34.263290, 34.239529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.205772, 33.675621, 33.596451>,  <39.737606, 33.940380, 34.077587>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.205772, 33.675621, 33.596451> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.010689, 34.000546, 33.724380>,  <38.893639, 34.195499, 33.801140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.010689, 34.000546, 33.724380>,  <39.205772, 33.675621, 33.596451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.010689, 34.000546, 33.724380> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431321, 0.094307, -0.897256,
		-0.759013, -0.575549, 0.304372,
		-0.487711, 0.812311, 0.319827,
		38.864376, 34.244240, 33.820328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.500988, 33.557579, 33.368725>,  <39.205772, 33.675621, 33.596451>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.500988, 33.557579, 33.368725> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.543777, 33.949192, 33.438065>,  <38.569450, 34.184158, 33.479668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.543777, 33.949192, 33.438065>,  <38.500988, 33.557579, 33.368725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.543777, 33.949192, 33.438065> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366768, 0.200913, -0.908359,
		-0.924142, 0.033588, 0.380570,
		0.106972, 0.979033, 0.173353,
		38.575871, 34.242901, 33.490070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.824135, 33.943871, 33.070190>,  <38.500988, 33.557579, 33.368725>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.824135, 33.943871, 33.070190> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.098904, 34.231415, 33.112858>,  <38.263763, 34.403942, 33.138458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.098904, 34.231415, 33.112858>,  <37.824135, 33.943871, 33.070190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.098904, 34.231415, 33.112858> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284296, 0.400894, -0.870896,
		-0.668816, 0.567911, 0.479752,
		0.686921, 0.718860, 0.106670,
		38.304981, 34.447071, 33.144859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.552086, 34.525936, 32.746281>,  <37.824135, 33.943871, 33.070190>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.552086, 34.525936, 32.746281> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.941883, 34.615440, 32.739349>,  <38.175762, 34.669144, 32.735191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.941883, 34.615440, 32.739349>,  <37.552086, 34.525936, 32.746281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.941883, 34.615440, 32.739349> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120311, 0.455687, -0.881972,
		-0.189453, 0.861558, 0.470983,
		0.974491, 0.223757, -0.017324,
		38.234230, 34.682568, 32.734154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.677269, 35.243679, 32.330227>,  <37.552086, 34.525936, 32.746281>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.677269, 35.243679, 32.330227> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.025303, 35.046768, 32.340145>,  <38.234123, 34.928619, 32.346096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.025303, 35.046768, 32.340145>,  <37.677269, 35.243679, 32.330227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.025303, 35.046768, 32.340145> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251591, 0.400291, -0.881175,
		0.423861, 0.772933, 0.472140,
		0.870083, -0.492282, 0.024795,
		38.286327, 34.899082, 32.347584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.874786, 35.961876, 32.565067>,  <37.677269, 35.243679, 32.330227>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.874786, 35.961876, 32.565067> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.612759, 36.258102, 32.505135>,  <37.455544, 36.435837, 32.469173>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.612759, 36.258102, 32.505135>,  <37.874786, 35.961876, 32.565067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.612759, 36.258102, 32.505135> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211336, 0.010804, 0.977354,
		0.725415, 0.671895, 0.149431,
		-0.655065, 0.740567, -0.149833,
		37.416241, 36.480274, 32.460186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.962982, 36.466152, 33.067562>,  <37.874786, 35.961876, 32.565067>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.962982, 36.466152, 33.067562> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.600613, 36.569832, 32.933632>,  <37.383190, 36.632038, 32.853271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.600613, 36.569832, 32.933632>,  <37.962982, 36.466152, 33.067562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.600613, 36.569832, 32.933632> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337734, 0.034642, 0.940604,
		0.255404, 0.965202, 0.056158,
		-0.905927, 0.259200, -0.334830,
		37.328835, 36.647591, 32.833183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.707375, 37.025658, 33.560574>,  <37.962982, 36.466152, 33.067562>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.707375, 37.025658, 33.560574> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.396484, 36.846260, 33.384037>,  <37.209953, 36.738621, 33.278114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.396484, 36.846260, 33.384037>,  <37.707375, 37.025658, 33.560574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.396484, 36.846260, 33.384037> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525350, 0.076483, 0.847442,
		-0.346316, 0.890508, -0.295060,
		-0.777221, -0.448493, -0.441341,
		37.163319, 36.711712, 33.251637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.166809, 37.313091, 33.939060>,  <37.707375, 37.025658, 33.560574>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.166809, 37.313091, 33.939060> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.006317, 36.985271, 33.775421>,  <36.910023, 36.788582, 33.677238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.006317, 36.985271, 33.775421>,  <37.166809, 37.313091, 33.939060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.006317, 36.985271, 33.775421> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423750, -0.229878, 0.876123,
		-0.812065, 0.524882, -0.255048,
		-0.401231, -0.819546, -0.409094,
		36.885948, 36.739407, 33.652695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.563404, 37.247665, 34.356144>,  <37.166809, 37.313091, 33.939060>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.563404, 37.247665, 34.356144> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.592663, 36.899464, 34.161465>,  <36.610218, 36.690544, 34.044659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.592663, 36.899464, 34.161465>,  <36.563404, 37.247665, 34.356144>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.592663, 36.899464, 34.161465> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551658, -0.441869, 0.707408,
		-0.830857, 0.216746, -0.512541,
		0.073148, -0.870501, -0.486700,
		36.614609, 36.638313, 34.015453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.871128, 36.803822, 34.405418>,  <36.563404, 37.247665, 34.356144>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.871128, 36.803822, 34.405418> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.173149, 36.548576, 34.345135>,  <36.354362, 36.395432, 34.308964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.173149, 36.548576, 34.345135>,  <35.871128, 36.803822, 34.405418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.173149, 36.548576, 34.345135> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392097, -0.623668, 0.676238,
		-0.525506, -0.451503, -0.721103,
		0.755052, -0.638109, -0.150708,
		36.399666, 36.357143, 34.299923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.644428, 36.209541, 34.558350>,  <35.871128, 36.803822, 34.405418>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.644428, 36.209541, 34.558350> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.028702, 36.111637, 34.610764>,  <36.259266, 36.052895, 34.642212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.028702, 36.111637, 34.610764>,  <35.644428, 36.209541, 34.558350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.028702, 36.111637, 34.610764> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262097, -0.643902, 0.718816,
		-0.091561, -0.724903, -0.682739,
		0.960688, -0.244759, 0.131039,
		36.316910, 36.038208, 34.650074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.588856, 35.501091, 34.531521>,  <35.644428, 36.209541, 34.558350>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.588856, 35.501091, 34.531521> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.924561, 35.593060, 34.728607>,  <36.125984, 35.648239, 34.846859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.924561, 35.593060, 34.728607>,  <35.588856, 35.501091, 34.531521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.924561, 35.593060, 34.728607> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223419, -0.680333, 0.698019,
		0.495701, -0.695906, -0.519612,
		0.839264, 0.229918, 0.492720,
		36.176338, 35.662033, 34.876423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.682247, 34.864143, 34.677040>,  <35.588856, 35.501091, 34.531521>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.682247, 34.864143, 34.677040> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.947659, 35.047241, 34.913750>,  <36.106907, 35.157101, 35.055775>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.947659, 35.047241, 34.913750>,  <35.682247, 34.864143, 34.677040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.947659, 35.047241, 34.913750> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038674, -0.768946, 0.638143,
		0.747150, -0.446313, -0.492516,
		0.663530, 0.457741, 0.591779,
		36.146717, 35.184563, 35.091282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.305202, 34.439560, 34.820084>,  <35.682247, 34.864143, 34.677040>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.305202, 34.439560, 34.820084> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.268303, 34.700603, 35.120907>,  <36.246162, 34.857231, 35.301399>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.268303, 34.700603, 35.120907>,  <36.305202, 34.439560, 34.820084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.268303, 34.700603, 35.120907> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018094, -0.754052, 0.656566,
		0.995571, 0.074177, 0.057754,
		-0.092251, 0.652613, 0.752055,
		36.240627, 34.896389, 35.346523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.899792, 34.280872, 35.382782>,  <36.305202, 34.439560, 34.820084>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.899792, 34.280872, 35.382782> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.608681, 34.493725, 35.555836>,  <36.434013, 34.621437, 35.659668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.608681, 34.493725, 35.555836>,  <36.899792, 34.280872, 35.382782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.608681, 34.493725, 35.555836> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213006, -0.775028, 0.594945,
		0.651895, 0.340834, 0.677396,
		-0.727779, 0.532131, 0.432637,
		36.390347, 34.653366, 35.685627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.956097, 34.202839, 36.174271>,  <36.899792, 34.280872, 35.382782>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.956097, 34.202839, 36.174271> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.585152, 34.280750, 36.046482>,  <36.362583, 34.327499, 35.969810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.585152, 34.280750, 36.046482>,  <36.956097, 34.202839, 36.174271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.585152, 34.280750, 36.046482> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361177, -0.689026, 0.628327,
		-0.097736, 0.698071, 0.709327,
		-0.927361, 0.194782, -0.319470,
		36.306942, 34.339184, 35.950642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.380589, 37.399353, 28.905514> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.981911, 37.401161, 28.873053>,  <37.742706, 37.402248, 28.853577>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.981911, 37.401161, 28.873053>,  <38.380589, 37.399353, 28.905514>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.981911, 37.401161, 28.873053> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080199, -0.216902, 0.972894,
		-0.013203, 0.976183, 0.216547,
		-0.996692, 0.004522, -0.081152,
		37.682903, 37.402519, 28.848707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.278713, 37.822475, 29.542355>,  <38.380589, 37.399353, 28.905514>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.278713, 37.822475, 29.542355> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.946667, 37.635433, 29.420858>,  <37.747440, 37.523209, 29.347961>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.946667, 37.635433, 29.420858>,  <38.278713, 37.822475, 29.542355>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.946667, 37.635433, 29.420858> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265936, -0.146775, 0.952751,
		-0.490090, 0.871668, -0.002512,
		-0.830114, -0.467602, -0.303741,
		37.697632, 37.495152, 29.329737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.759872, 38.247707, 29.834187>,  <38.278713, 37.822475, 29.542355>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.759872, 38.247707, 29.834187> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.654079, 37.868076, 29.765722>,  <37.590603, 37.640297, 29.724644>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.654079, 37.868076, 29.765722>,  <37.759872, 38.247707, 29.834187>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.654079, 37.868076, 29.765722> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226286, -0.111451, 0.967664,
		-0.937467, 0.294661, -0.185286,
		-0.264483, -0.949080, -0.171160,
		37.574734, 37.583351, 29.714375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.391872, 38.072353, 30.420776>,  <37.759872, 38.247707, 29.834187>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.391872, 38.072353, 30.420776> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.381332, 37.702068, 30.269850>,  <37.375008, 37.479897, 30.179295>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.381332, 37.702068, 30.269850>,  <37.391872, 38.072353, 30.420776>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.381332, 37.702068, 30.269850> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124555, -0.371466, 0.920055,
		-0.991863, 0.071242, -0.105512,
		-0.026352, -0.925710, -0.377316,
		37.373428, 37.424355, 30.156654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.704647, 37.741310, 30.562304>,  <37.391872, 38.072353, 30.420776>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.704647, 37.741310, 30.562304> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.996353, 37.471497, 30.516388>,  <37.171375, 37.309608, 30.488838>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.996353, 37.471497, 30.516388>,  <36.704647, 37.741310, 30.562304>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.996353, 37.471497, 30.516388> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268083, -0.436027, 0.859076,
		-0.629532, -0.595717, -0.498809,
		0.729261, -0.674539, -0.114792,
		37.215130, 37.269135, 30.481951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.433968, 37.090473, 30.829302>,  <36.704647, 37.741310, 30.562304>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.433968, 37.090473, 30.829302> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.821587, 36.992229, 30.819246>,  <37.054157, 36.933285, 30.813213>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.821587, 36.992229, 30.819246>,  <36.433968, 37.090473, 30.829302>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.821587, 36.992229, 30.819246> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100314, -0.484717, 0.868900,
		-0.225591, -0.839480, -0.494349,
		0.969044, -0.245606, -0.025136,
		37.112301, 36.918549, 30.811705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.483982, 36.414684, 31.028065>,  <36.433968, 37.090473, 30.829302>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.483982, 36.414684, 31.028065> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.846886, 36.568546, 31.096098>,  <37.064629, 36.660862, 31.136919>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.846886, 36.568546, 31.096098>,  <36.483982, 36.414684, 31.028065>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.846886, 36.568546, 31.096098> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021645, -0.446571, 0.894486,
		0.420023, -0.807846, -0.413480,
		0.907256, 0.384654, 0.170084,
		37.119061, 36.683941, 31.147123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.807590, 35.901955, 31.439495>,  <36.483982, 36.414684, 31.028065>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.807590, 35.901955, 31.439495> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.024658, 36.231491, 31.504965>,  <37.154900, 36.429214, 31.544247>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.024658, 36.231491, 31.504965>,  <36.807590, 35.901955, 31.439495>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.024658, 36.231491, 31.504965> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076864, -0.145335, 0.986392,
		0.836421, -0.547867, -0.015545,
		0.542671, 0.823844, 0.163673,
		37.187458, 36.478645, 31.554066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.442387, 35.763607, 31.913406>,  <36.807590, 35.901955, 31.439495>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.442387, 35.763607, 31.913406> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.367588, 36.155312, 31.944593>,  <37.322708, 36.390335, 31.963305>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.367588, 36.155312, 31.944593>,  <37.442387, 35.763607, 31.913406>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.367588, 36.155312, 31.944593> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174692, -0.111248, 0.978318,
		0.966704, 0.169319, 0.191873,
		-0.186994, 0.979262, 0.077965,
		37.311489, 36.449089, 31.967983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.164532, 35.713379, 31.854734>,  <37.442387, 35.763607, 31.913406>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.164532, 35.713379, 31.854734> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.316135, 35.346565, 31.904387>,  <38.407097, 35.126476, 31.934177>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.316135, 35.346565, 31.904387>,  <38.164532, 35.713379, 31.854734>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.316135, 35.346565, 31.904387> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275655, -0.016171, -0.961121,
		0.883383, 0.398492, 0.246655,
		0.379010, -0.917029, 0.124131,
		38.429840, 35.071457, 31.941626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.823952, 35.748886, 31.468613>,  <38.164532, 35.713379, 31.854734>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.823952, 35.748886, 31.468613> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.735733, 35.359970, 31.499619>,  <38.682804, 35.126621, 31.518221>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.735733, 35.359970, 31.499619>,  <38.823952, 35.748886, 31.468613>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.735733, 35.359970, 31.499619> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450662, -0.172056, -0.875957,
		0.865023, -0.158253, 0.476120,
		-0.220542, -0.972292, 0.077514,
		38.669571, 35.068283, 31.522873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.416489, 35.399982, 31.361179>,  <38.823952, 35.748886, 31.468613>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.416489, 35.399982, 31.361179> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.133976, 35.125477, 31.291649>,  <38.964470, 34.960773, 31.249931>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.133976, 35.125477, 31.291649>,  <39.416489, 35.399982, 31.361179>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.133976, 35.125477, 31.291649> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388116, -0.170005, -0.905795,
		0.592060, -0.707209, 0.386420,
		-0.706280, -0.686261, -0.173826,
		38.922092, 34.919598, 31.239502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.776821, 34.848000, 31.145382>,  <39.416489, 35.399982, 31.361179>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.776821, 34.848000, 31.145382> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.409042, 34.768757, 31.009512>,  <39.188377, 34.721210, 30.927990>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.409042, 34.768757, 31.009512>,  <39.776821, 34.848000, 31.145382>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.409042, 34.768757, 31.009512> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352871, -0.034526, -0.935035,
		0.173506, -0.979573, 0.101649,
		-0.919444, -0.198103, -0.339673,
		39.133209, 34.709328, 30.907610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.895782, 34.345562, 30.670835>,  <39.776821, 34.848000, 31.145382>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.895782, 34.345562, 30.670835> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.536999, 34.498501, 30.582052>,  <39.321728, 34.590263, 30.528782>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.536999, 34.498501, 30.582052>,  <39.895782, 34.345562, 30.670835>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.536999, 34.498501, 30.582052> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183776, -0.134161, -0.973769,
		-0.402098, -0.914227, 0.050071,
		-0.896963, 0.382349, -0.221959,
		39.267910, 34.613205, 30.515465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.624596, 33.920280, 30.143150>,  <39.895782, 34.345562, 30.670835>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.624596, 33.920280, 30.143150> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.425995, 34.266727, 30.120100>,  <39.306835, 34.474598, 30.106270>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.425995, 34.266727, 30.120100>,  <39.624596, 33.920280, 30.143150>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.425995, 34.266727, 30.120100> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085024, -0.017543, -0.996224,
		-0.863860, -0.499529, -0.064930,
		-0.496505, 0.866119, -0.057627,
		39.277042, 34.526562, 30.102812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.232941, 33.753689, 29.598572>,  <39.624596, 33.920280, 30.143150>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.232941, 33.753689, 29.598572> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.234703, 34.152431, 29.630207>,  <39.235760, 34.391678, 29.649189>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.234703, 34.152431, 29.630207>,  <39.232941, 33.753689, 29.598572>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.234703, 34.152431, 29.630207> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000182, 0.079090, -0.996867,
		-0.999990, 0.004403, 0.000167,
		0.004403, 0.996858, 0.079090,
		39.236023, 34.451488, 29.653934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.644665, 34.029221, 29.292089>,  <39.232941, 33.753689, 29.598572>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.644665, 34.029221, 29.292089> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.880142, 34.352509, 29.298048>,  <39.021427, 34.546482, 29.301624>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.880142, 34.352509, 29.298048>,  <38.644665, 34.029221, 29.292089>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.880142, 34.352509, 29.298048> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159980, -0.098421, -0.982201,
		-0.792369, 0.580596, -0.187239,
		0.588691, 0.808221, 0.014898,
		39.056751, 34.594975, 29.302517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.440903, 34.464130, 28.761723>,  <38.644665, 34.029221, 29.292089>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.440903, 34.464130, 28.761723> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.811588, 34.595547, 28.834679>,  <39.034000, 34.674397, 28.878452>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.811588, 34.595547, 28.834679>,  <38.440903, 34.464130, 28.761723>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.811588, 34.595547, 28.834679> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225927, -0.099282, -0.969072,
		-0.300273, 0.939257, -0.166233,
		0.926711, 0.328542, 0.182391,
		39.089603, 34.694111, 28.889397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.616524, 34.943279, 28.193796>,  <38.440903, 34.464130, 28.761723>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.616524, 34.943279, 28.193796> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.976009, 34.855694, 28.345781>,  <39.191700, 34.803143, 28.436972>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.976009, 34.855694, 28.345781>,  <38.616524, 34.943279, 28.193796>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.976009, 34.855694, 28.345781> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394800, 0.026781, -0.918377,
		0.190914, 0.975366, 0.110515,
		0.898713, -0.218962, 0.379961,
		39.245625, 34.790005, 28.459770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.103588, 35.444057, 27.901188>,  <38.616524, 34.943279, 28.193796>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.103588, 35.444057, 27.901188> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.296497, 35.114445, 28.020105>,  <39.412243, 34.916676, 28.091455>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.296497, 35.114445, 28.020105>,  <39.103588, 35.444057, 27.901188>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.296497, 35.114445, 28.020105> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517263, -0.006027, -0.855805,
		0.707004, 0.566509, 0.423336,
		0.482270, -0.824033, 0.297296,
		39.441177, 34.867233, 28.109295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.810974, 35.576130, 27.840832>,  <39.103588, 35.444057, 27.901188>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.810974, 35.576130, 27.840832> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.738556, 35.183056, 27.825081>,  <39.695107, 34.947212, 27.815630>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.738556, 35.183056, 27.825081>,  <39.810974, 35.576130, 27.840832>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.738556, 35.183056, 27.825081> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519909, -0.061646, -0.851994,
		0.834816, -0.174722, 0.522068,
		-0.181045, -0.982686, -0.039377,
		39.684242, 34.888248, 27.813269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.286407, 35.380222, 27.383865>,  <39.810974, 35.576130, 27.840832>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.286407, 35.380222, 27.383865> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.085190, 35.035522, 27.410189>,  <39.964458, 34.828701, 27.425982>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.085190, 35.035522, 27.410189>,  <40.286407, 35.380222, 27.383865>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.085190, 35.035522, 27.410189> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229372, -0.206530, -0.951175,
		0.833267, -0.463390, 0.301555,
		-0.503046, -0.861751, 0.065806,
		39.934277, 34.776997, 27.429930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.679615, 34.994724, 27.052685>,  <40.286407, 35.380222, 27.383865>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.679615, 34.994724, 27.052685> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.328880, 34.802410, 27.052326>,  <40.118439, 34.687019, 27.052111>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.328880, 34.802410, 27.052326>,  <40.679615, 34.994724, 27.052685>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.328880, 34.802410, 27.052326> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012577, 0.024797, -0.999614,
		0.480625, -0.876486, -0.027790,
		-0.876836, -0.480788, -0.000894,
		40.065830, 34.658173, 27.052057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<32.304585, 32.066326, 25.765974> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.633255, 32.281826, 25.840378>,  <32.830456, 32.411125, 25.885019>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.633255, 32.281826, 25.840378>,  <32.304585, 32.066326, 25.765974>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.633255, 32.281826, 25.840378> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152826, -0.106148, 0.982536,
		0.549090, -0.835749, -0.004884,
		0.821671, 0.538754, 0.186009,
		32.879757, 32.443451, 25.896181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.831898, 31.650509, 26.223196>,  <32.304585, 32.066326, 25.765974>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.831898, 31.650509, 26.223196> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.939762, 32.032772, 26.270525>,  <33.004482, 32.262131, 26.298922>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.939762, 32.032772, 26.270525>,  <32.831898, 31.650509, 26.223196>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.939762, 32.032772, 26.270525> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016312, -0.127388, 0.991719,
		0.962817, -0.265499, -0.049940,
		0.269662, 0.955658, 0.118321,
		33.020660, 32.319469, 26.306021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.418259, 31.673950, 26.641689>,  <32.831898, 31.650509, 26.223196>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.418259, 31.673950, 26.641689> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.267715, 32.044125, 26.659239>,  <33.177391, 32.266228, 26.669767>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.267715, 32.044125, 26.659239>,  <33.418259, 31.673950, 26.641689>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.267715, 32.044125, 26.659239> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209871, 0.039035, 0.976950,
		0.902392, 0.376887, -0.208913,
		-0.376354, 0.925436, 0.043873,
		33.154808, 32.321754, 26.672401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.905334, 32.071327, 27.007111>,  <33.418259, 31.673950, 26.641689>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.905334, 32.071327, 27.007111> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.559036, 32.261112, 27.070814>,  <33.351257, 32.374981, 27.109037>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.559036, 32.261112, 27.070814>,  <33.905334, 32.071327, 27.007111>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.559036, 32.261112, 27.070814> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240987, 0.116305, 0.963534,
		0.438636, 0.872560, -0.215030,
		-0.865750, 0.474460, 0.159260,
		33.299313, 32.403450, 27.118591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.106552, 32.658379, 27.416786>,  <33.905334, 32.071327, 27.007111>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.106552, 32.658379, 27.416786> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.708206, 32.641239, 27.448814>,  <33.469196, 32.630955, 27.468031>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.708206, 32.641239, 27.448814>,  <34.106552, 32.658379, 27.416786>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.708206, 32.641239, 27.448814> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061087, 0.336330, 0.939761,
		-0.067201, 0.940769, -0.332323,
		-0.995868, -0.042852, 0.080070,
		33.409447, 32.628384, 27.472836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.852058, 33.314922, 27.788399>,  <34.106552, 32.658379, 27.416786>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.852058, 33.314922, 27.788399> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.558762, 33.045559, 27.826080>,  <33.382782, 32.883942, 27.848690>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.558762, 33.045559, 27.826080>,  <33.852058, 33.314922, 27.788399>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.558762, 33.045559, 27.826080> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085424, 0.228672, 0.969749,
		-0.674581, 0.703013, -0.225197,
		-0.733241, -0.673411, 0.094204,
		33.338791, 32.843536, 27.854342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.464687, 33.540085, 28.243788>,  <33.852058, 33.314922, 27.788399>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.464687, 33.540085, 28.243788> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.331272, 33.162991, 28.243835>,  <33.251225, 32.936733, 28.243864>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.331272, 33.162991, 28.243835>,  <33.464687, 33.540085, 28.243788>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.331272, 33.162991, 28.243835> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154786, 0.054886, 0.986422,
		-0.929944, 0.328988, -0.164229,
		-0.333535, -0.942738, 0.000118,
		33.231213, 32.880169, 28.243872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.879639, 33.528172, 28.703266>,  <33.464687, 33.540085, 28.243788>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.879639, 33.528172, 28.703266> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.013653, 33.151501, 28.690624>,  <33.094063, 32.925499, 28.683039>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.013653, 33.151501, 28.690624>,  <32.879639, 33.528172, 28.703266>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.013653, 33.151501, 28.690624> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189768, -0.100298, 0.976693,
		-0.922897, -0.321229, -0.212303,
		0.335036, -0.941675, -0.031606,
		33.114162, 32.868999, 28.681143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.435822, 33.181252, 29.092991>,  <32.879639, 33.528172, 28.703266>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.435822, 33.181252, 29.092991> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.749004, 32.932419, 29.093554>,  <32.936913, 32.783119, 29.093891>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.749004, 32.932419, 29.093554>,  <32.435822, 33.181252, 29.092991>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.749004, 32.932419, 29.093554> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065445, -0.080121, 0.994634,
		-0.618628, -0.778845, -0.103443,
		0.782954, -0.622079, 0.001406,
		32.983891, 32.745796, 29.093975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.285706, 32.803921, 29.657963>,  <32.435822, 33.181252, 29.092991>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.285706, 32.803921, 29.657963> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.663242, 32.678787, 29.615437>,  <32.889763, 32.603706, 29.589922>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.663242, 32.678787, 29.615437>,  <32.285706, 32.803921, 29.657963>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.663242, 32.678787, 29.615437> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038131, -0.216482, 0.975542,
		-0.328202, -0.924807, -0.192395,
		0.943838, -0.312839, -0.106314,
		32.946392, 32.584938, 29.583542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.381493, 32.287697, 30.119841>,  <32.285706, 32.803921, 29.657963>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.381493, 32.287697, 30.119841> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.760479, 32.389629, 30.042526>,  <32.987873, 32.450790, 29.996138>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.760479, 32.389629, 30.042526>,  <32.381493, 32.287697, 30.119841>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.760479, 32.389629, 30.042526> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249403, -0.210290, 0.945292,
		0.200245, -0.943843, -0.262799,
		0.947471, 0.254833, -0.193288,
		33.044720, 32.466080, 29.984539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.814877, 31.705254, 30.357130>,  <32.381493, 32.287697, 30.119841>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.814877, 31.705254, 30.357130> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.043415, 32.033386, 30.347204>,  <33.180538, 32.230267, 30.341248>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.043415, 32.033386, 30.347204>,  <32.814877, 31.705254, 30.357130>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.043415, 32.033386, 30.347204> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207542, -0.115161, 0.971424,
		0.794033, -0.560171, -0.236050,
		0.571347, 0.820333, -0.024817,
		33.214821, 32.279488, 30.339760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.293285, 31.485460, 30.708130>,  <32.814877, 31.705254, 30.357130>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.293285, 31.485460, 30.708130> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.327251, 31.883921, 30.699390>,  <33.347630, 32.122997, 30.694147>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.327251, 31.883921, 30.699390>,  <33.293285, 31.485460, 30.708130>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.327251, 31.883921, 30.699390> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248902, 0.000026, 0.968528,
		0.964799, -0.087677, -0.247942,
		0.084911, 0.996149, -0.021848,
		33.352726, 32.182766, 30.692837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.965618, 31.653469, 30.928574>,  <33.293285, 31.485460, 30.708130>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.965618, 31.653469, 30.928574> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.759945, 31.991783, 30.985514>,  <33.636543, 32.194771, 31.019678>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.759945, 31.991783, 30.985514>,  <33.965618, 31.653469, 30.928574>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.759945, 31.991783, 30.985514> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354734, 0.058604, 0.933129,
		0.780885, 0.530293, -0.330163,
		-0.514181, 0.845787, 0.142350,
		33.605690, 32.245518, 31.028219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.372261, 32.317123, 30.695816>,  <33.965618, 31.653469, 30.928574>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.372261, 32.317123, 30.695816> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.738041, 32.173046, 30.769627>,  <34.957508, 32.086601, 30.813913>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.738041, 32.173046, 30.769627>,  <34.372261, 32.317123, 30.695816>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.738041, 32.173046, 30.769627> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181303, -0.043040, -0.982485,
		0.361823, 0.931886, 0.025946,
		0.914447, -0.360190, 0.184527,
		35.012375, 32.064991, 30.824986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.867676, 32.651062, 30.248356>,  <34.372261, 32.317123, 30.695816>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.867676, 32.651062, 30.248356> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.051353, 32.306450, 30.334995>,  <35.161560, 32.099682, 30.386978>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.051353, 32.306450, 30.334995>,  <34.867676, 32.651062, 30.248356>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.051353, 32.306450, 30.334995> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234029, -0.117888, -0.965056,
		0.856955, 0.493838, 0.147488,
		0.459195, -0.861526, 0.216597,
		35.189114, 32.047993, 30.399975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.514366, 32.666344, 30.082745>,  <34.867676, 32.651062, 30.248356>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.514366, 32.666344, 30.082745> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.437878, 32.273781, 30.076180>,  <35.391983, 32.038242, 30.072241>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.437878, 32.273781, 30.076180>,  <35.514366, 32.666344, 30.082745>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.437878, 32.273781, 30.076180> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221460, -0.026848, -0.974800,
		0.956237, -0.190039, 0.222477,
		-0.191223, -0.981410, -0.016413,
		35.380512, 31.979359, 30.071255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.008163, 32.379887, 29.617701>,  <35.514366, 32.666344, 30.082745>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.008163, 32.379887, 29.617701> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.756218, 32.073414, 29.668671>,  <35.605053, 31.889530, 29.699253>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.756218, 32.073414, 29.668671>,  <36.008163, 32.379887, 29.617701>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.756218, 32.073414, 29.668671> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111168, -0.251299, -0.961505,
		0.768713, -0.591447, 0.243458,
		-0.629860, -0.766185, 0.127427,
		35.567261, 31.843559, 29.706898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.415195, 31.793446, 29.452820>,  <36.008163, 32.379887, 29.617701>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.415195, 31.793446, 29.452820> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.026291, 31.709499, 29.411520>,  <35.792946, 31.659132, 29.386740>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.026291, 31.709499, 29.411520>,  <36.415195, 31.793446, 29.452820>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.026291, 31.709499, 29.411520> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169656, -0.328937, -0.928987,
		0.160998, -0.920738, 0.355418,
		-0.972263, -0.209864, -0.103250,
		35.734612, 31.646540, 29.380545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.375233, 31.052101, 29.330753>,  <36.415195, 31.793446, 29.452820>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.375233, 31.052101, 29.330753> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.034302, 31.209753, 29.193232>,  <35.829742, 31.304344, 29.110718>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.034302, 31.209753, 29.193232>,  <36.375233, 31.052101, 29.330753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.034302, 31.209753, 29.193232> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110249, -0.507193, -0.854751,
		-0.511274, -0.766424, 0.388836,
		-0.852317, 0.394143, -0.343812,
		35.778603, 31.327991, 29.090090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.077263, 30.529005, 28.904255>,  <36.375233, 31.052101, 29.330753>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.077263, 30.529005, 28.904255> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.916134, 30.879419, 28.798201>,  <35.819458, 31.089668, 28.734568>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.916134, 30.879419, 28.798201>,  <36.077263, 30.529005, 28.904255>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.916134, 30.879419, 28.798201> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015271, -0.283202, -0.958939,
		-0.915152, -0.390328, 0.100701,
		-0.402819, 0.876037, -0.265134,
		35.795288, 31.142231, 28.718660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.590080, 30.425947, 28.413095>,  <36.077263, 30.529005, 28.904255>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.590080, 30.425947, 28.413095> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.662113, 30.816614, 28.366299>,  <35.705334, 31.051014, 28.338221>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.662113, 30.816614, 28.366299>,  <35.590080, 30.425947, 28.413095>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.662113, 30.816614, 28.366299> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020020, -0.115275, -0.993132,
		-0.983448, 0.181188, -0.001206,
		0.180083, 0.976669, -0.116994,
		35.716137, 31.109615, 28.331200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.134975, 30.662092, 27.873905>,  <35.590080, 30.425947, 28.413095>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.134975, 30.662092, 27.873905> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.410107, 30.950474, 27.907654>,  <35.575184, 31.123503, 27.927902>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.410107, 30.950474, 27.907654>,  <35.134975, 30.662092, 27.873905>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.410107, 30.950474, 27.907654> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021392, 0.136314, -0.990435,
		-0.725560, 0.679442, 0.109184,
		0.687826, 0.720955, 0.084369,
		35.616455, 31.166759, 27.932964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.947735, 31.063324, 27.313677>,  <35.134975, 30.662092, 27.873905>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.947735, 31.063324, 27.313677> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.316952, 31.186726, 27.405607>,  <35.538483, 31.260767, 27.460766>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.316952, 31.186726, 27.405607>,  <34.947735, 31.063324, 27.313677>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.316952, 31.186726, 27.405607> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131758, 0.307764, -0.942296,
		-0.361433, 0.900060, 0.243431,
		0.923042, 0.308503, 0.229826,
		35.593864, 31.279276, 27.474556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.115128, 31.867920, 27.057508>,  <34.947735, 31.063324, 27.313677>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.115128, 31.867920, 27.057508> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.467117, 31.680489, 27.088697>,  <35.678310, 31.568029, 27.107410>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.467117, 31.680489, 27.088697>,  <35.115128, 31.867920, 27.057508>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.467117, 31.680489, 27.088697> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245634, 0.308362, -0.919009,
		0.406584, 0.827857, 0.386449,
		0.879974, -0.468579, 0.077975,
		35.731110, 31.539915, 27.112089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.668957, 32.334229, 26.816664>,  <35.115128, 31.867920, 27.057508>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.668957, 32.334229, 26.816664> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.880753, 31.996256, 26.786377>,  <36.007832, 31.793472, 26.768206>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.880753, 31.996256, 26.786377>,  <35.668957, 32.334229, 26.816664>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.880753, 31.996256, 26.786377> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237534, 0.233353, -0.942934,
		0.814383, 0.481287, 0.324258,
		0.529488, -0.844932, -0.075717,
		36.039600, 31.742777, 26.763662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.415665, 32.529278, 26.545650>,  <35.668957, 32.334229, 26.816664>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.415665, 32.529278, 26.545650> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.347954, 32.148037, 26.445297>,  <36.307327, 31.919292, 26.385086>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.347954, 32.148037, 26.445297>,  <36.415665, 32.529278, 26.545650>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.347954, 32.148037, 26.445297> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303994, 0.191652, -0.933197,
		0.937514, -0.234238, 0.257294,
		-0.169279, -0.953102, -0.250884,
		36.297169, 31.862106, 26.370031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.943115, 32.358559, 25.995392>,  <36.415665, 32.529278, 26.545650>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.943115, 32.358559, 25.995392> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.655540, 32.082191, 25.965002>,  <36.482998, 31.916372, 25.946768>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.655540, 32.082191, 25.965002>,  <36.943115, 32.358559, 25.995392>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.655540, 32.082191, 25.965002> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094952, 0.010659, -0.995425,
		0.688564, -0.722857, 0.057941,
		-0.718932, -0.690915, -0.075976,
		36.439861, 31.874916, 25.942209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.573185, 31.794426, 25.864330>,  <36.943115, 32.358559, 25.995392>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.573185, 31.794426, 25.864330> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.955761, 31.755686, 25.754169>,  <38.185307, 31.732441, 25.688072>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.955761, 31.755686, 25.754169>,  <37.573185, 31.794426, 25.864330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.955761, 31.755686, 25.754169> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206824, -0.440991, 0.873356,
		-0.206034, -0.892271, -0.401749,
		0.956438, -0.096850, -0.275403,
		38.242691, 31.726631, 25.671549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.788345, 31.077850, 25.996925>,  <37.573185, 31.794426, 25.864330>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.788345, 31.077850, 25.996925> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.129772, 31.286089, 25.988903>,  <38.334629, 31.411032, 25.984089>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.129772, 31.286089, 25.988903>,  <37.788345, 31.077850, 25.996925>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.129772, 31.286089, 25.988903> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253050, -0.380630, 0.889430,
		0.455400, -0.764264, -0.456630,
		0.853567, 0.520597, -0.020058,
		38.385841, 31.442268, 25.982885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.327137, 30.609013, 25.987537>,  <37.788345, 31.077850, 25.996925>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.327137, 30.609013, 25.987537> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.461712, 30.954521, 26.137583>,  <38.542458, 31.161827, 26.227610>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.461712, 30.954521, 26.137583>,  <38.327137, 30.609013, 25.987537>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.461712, 30.954521, 26.137583> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312708, -0.478201, 0.820693,
		0.888272, -0.158807, -0.430992,
		0.336433, 0.863773, 0.375112,
		38.562641, 31.213654, 26.250116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.921387, 30.436813, 26.370832>,  <38.327137, 30.609013, 25.987537>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.921387, 30.436813, 26.370832> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.828484, 30.795630, 26.521233>,  <38.772743, 31.010920, 26.611473>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.828484, 30.795630, 26.521233>,  <38.921387, 30.436813, 26.370832>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.828484, 30.795630, 26.521233> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341762, -0.286661, 0.894999,
		0.910635, 0.336370, -0.239996,
		-0.232254, 0.897040, 0.376003,
		38.758808, 31.064741, 26.634033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.471363, 30.607901, 26.816191>,  <38.921387, 30.436813, 26.370832>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.471363, 30.607901, 26.816191> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.180607, 30.851074, 26.943972>,  <39.006153, 30.996979, 27.020639>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.180607, 30.851074, 26.943972>,  <39.471363, 30.607901, 26.816191>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.180607, 30.851074, 26.943972> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274339, -0.169388, 0.946597,
		0.629580, 0.775709, -0.043653,
		-0.726889, 0.607934, 0.319451,
		38.962540, 31.033455, 27.039806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.730946, 30.981905, 27.334372>,  <39.471363, 30.607901, 26.816191>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.730946, 30.981905, 27.334372> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.344425, 31.031099, 27.424826>,  <39.112514, 31.060616, 27.479099>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.344425, 31.031099, 27.424826>,  <39.730946, 30.981905, 27.334372>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.344425, 31.031099, 27.424826> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196218, -0.216709, 0.956314,
		0.166618, 0.968459, 0.185274,
		-0.966301, 0.122985, 0.226137,
		39.054535, 31.067995, 27.492666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.673485, 31.324678, 27.970932>,  <39.730946, 30.981905, 27.334372>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.673485, 31.324678, 27.970932> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.299156, 31.184998, 27.951757>,  <39.074558, 31.101189, 27.940252>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.299156, 31.184998, 27.951757>,  <39.673485, 31.324678, 27.970932>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.299156, 31.184998, 27.951757> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005981, -0.120239, 0.992727,
		-0.352428, 0.929300, 0.110433,
		-0.935820, -0.349204, -0.047934,
		39.018410, 31.080236, 27.937378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.264381, 31.797400, 28.297512>,  <39.673485, 31.324678, 27.970932>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.264381, 31.797400, 28.297512> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.081264, 31.441936, 28.308203>,  <38.971394, 31.228659, 28.314617>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.081264, 31.441936, 28.308203>,  <39.264381, 31.797400, 28.297512>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.081264, 31.441936, 28.308203> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054391, 0.002011, 0.998518,
		-0.887392, 0.458570, 0.047415,
		-0.457795, -0.888656, 0.026727,
		38.943928, 31.175339, 28.316221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.694298, 31.860739, 28.694899>,  <39.264381, 31.797400, 28.297512>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.694298, 31.860739, 28.694899> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.749191, 31.464630, 28.704115>,  <38.782127, 31.226965, 28.709644>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.749191, 31.464630, 28.704115>,  <38.694298, 31.860739, 28.694899>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.749191, 31.464630, 28.704115> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032881, 0.018693, 0.999285,
		-0.989993, -0.137893, -0.029996,
		0.137233, -0.990271, 0.023040,
		38.790359, 31.167549, 28.711027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.250618, 31.632132, 29.267729>,  <38.694298, 31.860739, 28.694899>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.250618, 31.632132, 29.267729> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.513645, 31.339787, 29.194586>,  <38.671463, 31.164379, 29.150700>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.513645, 31.339787, 29.194586>,  <38.250618, 31.632132, 29.267729>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.513645, 31.339787, 29.194586> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198939, -0.065649, 0.977810,
		-0.726651, -0.679358, 0.102228,
		0.657572, -0.730864, -0.182855,
		38.710918, 31.120527, 29.139729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.070129, 31.092461, 29.685841>,  <38.250618, 31.632132, 29.267729>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.070129, 31.092461, 29.685841> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.456306, 31.033875, 29.599611>,  <38.688011, 30.998722, 29.547874>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.456306, 31.033875, 29.599611>,  <38.070129, 31.092461, 29.685841>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.456306, 31.033875, 29.599611> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196487, -0.134363, 0.971257,
		-0.171223, -0.980048, -0.100941,
		0.965441, -0.146467, -0.215572,
		38.745937, 30.989935, 29.534939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.227352, 30.424904, 30.049171>,  <38.070129, 31.092461, 29.685841>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.227352, 30.424904, 30.049171> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.570145, 30.621950, 29.988630>,  <38.775822, 30.740177, 29.952305>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.570145, 30.621950, 29.988630>,  <38.227352, 30.424904, 30.049171>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.570145, 30.621950, 29.988630> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201346, -0.049710, 0.978258,
		0.474382, -0.868825, -0.141787,
		0.856984, 0.492617, -0.151353,
		38.827240, 30.769735, 29.943224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.717613, 30.151617, 30.530592>,  <38.227352, 30.424904, 30.049171>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.717613, 30.151617, 30.530592> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.906311, 30.492935, 30.441738>,  <39.019531, 30.697725, 30.388426>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.906311, 30.492935, 30.441738>,  <38.717613, 30.151617, 30.530592>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.906311, 30.492935, 30.441738> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420915, 0.003434, 0.907094,
		0.774782, -0.521416, -0.357545,
		0.471745, 0.853296, -0.222132,
		39.047836, 30.748924, 30.375099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.411301, 30.038534, 30.696793>,  <38.717613, 30.151617, 30.530592>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.411301, 30.038534, 30.696793> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.357536, 30.434902, 30.697897>,  <39.325275, 30.672724, 30.698559>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.357536, 30.434902, 30.697897>,  <39.411301, 30.038534, 30.696793>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.357536, 30.434902, 30.697897> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406582, 0.052609, 0.912098,
		0.903673, 0.123720, -0.409962,
		-0.134413, 0.990922, 0.002761,
		39.317211, 30.732178, 30.698725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<40.780399, 34.294670, 26.574673> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.388409, 34.374313, 26.574450>,  <40.153214, 34.422100, 26.574316>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.388409, 34.374313, 26.574450>,  <40.780399, 34.294670, 26.574673>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.388409, 34.374313, 26.574450> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062249, -0.309040, -0.949010,
		-0.189127, -0.929974, 0.315246,
		-0.979978, 0.199107, -0.000558,
		40.094414, 34.434048, 26.574282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.323227, 33.700314, 26.229294>,  <40.780399, 34.294670, 26.574673>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.323227, 33.700314, 26.229294> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.080460, 34.016792, 26.199202>,  <39.934799, 34.206680, 26.181147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.080460, 34.016792, 26.199202>,  <40.323227, 33.700314, 26.229294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.080460, 34.016792, 26.199202> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162451, -0.216156, -0.962749,
		-0.777981, -0.572093, 0.259720,
		-0.606923, 0.791192, -0.075229,
		39.898384, 34.254150, 26.176634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.787701, 33.443714, 25.833214>,  <40.323227, 33.700314, 26.229294>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.787701, 33.443714, 25.833214> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.758999, 33.841721, 25.805531>,  <39.741776, 34.080524, 25.788921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.758999, 33.841721, 25.805531>,  <39.787701, 33.443714, 25.833214>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.758999, 33.841721, 25.805531> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122945, -0.077682, -0.989368,
		-0.989816, -0.062486, 0.127907,
		-0.071757, 0.995018, -0.069208,
		39.737473, 34.140224, 25.784767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.170280, 33.683105, 25.356655>,  <39.787701, 33.443714, 25.833214>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.170280, 33.683105, 25.356655> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.447163, 33.971722, 25.362778>,  <39.613293, 34.144894, 25.366451>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.447163, 33.971722, 25.362778>,  <39.170280, 33.683105, 25.356655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.447163, 33.971722, 25.362778> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072051, -0.047988, -0.996246,
		-0.718099, 0.690706, -0.085205,
		0.692201, 0.721542, 0.015306,
		39.654823, 34.188183, 25.367369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.906479, 34.098701, 24.795517>,  <39.170280, 33.683105, 25.356655>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.906479, 34.098701, 24.795517> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.296558, 34.169891, 24.848135>,  <39.530605, 34.212605, 24.879705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.296558, 34.169891, 24.848135>,  <38.906479, 34.098701, 24.795517>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.296558, 34.169891, 24.848135> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148406, -0.084935, -0.985272,
		-0.164185, 0.980362, -0.109242,
		0.975202, 0.177979, 0.131547,
		39.589119, 34.223286, 24.887600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.114872, 34.642128, 24.184324>,  <38.906479, 34.098701, 24.795517>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.114872, 34.642128, 24.184324> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.471039, 34.527004, 24.325361>,  <39.684738, 34.457928, 24.409983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.471039, 34.527004, 24.325361>,  <39.114872, 34.642128, 24.184324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.471039, 34.527004, 24.325361> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426897, 0.259457, -0.866280,
		0.157844, 0.921871, 0.353892,
		0.890418, -0.287813, 0.352590,
		39.738163, 34.440659, 24.431139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.586765, 35.194641, 24.068426>,  <39.114872, 34.642128, 24.184324>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.586765, 35.194641, 24.068426> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.798874, 34.857262, 24.102823>,  <39.926140, 34.654835, 24.123461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.798874, 34.857262, 24.102823>,  <39.586765, 35.194641, 24.068426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.798874, 34.857262, 24.102823> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449503, 0.193694, -0.872026,
		0.718857, 0.501068, 0.481846,
		0.530276, -0.843453, 0.085993,
		39.957958, 34.604225, 24.128622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.163841, 35.248371, 23.769609>,  <39.586765, 35.194641, 24.068426>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.163841, 35.248371, 23.769609> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.171764, 34.848457, 23.772264>,  <40.176517, 34.608509, 23.773857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.171764, 34.848457, 23.772264>,  <40.163841, 35.248371, 23.769609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.171764, 34.848457, 23.772264> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291523, -0.000576, -0.956564,
		0.956359, 0.020883, 0.291448,
		0.019808, -0.999782, 0.006639,
		40.177708, 34.548523, 23.774256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.792885, 35.032784, 23.386654>,  <40.163841, 35.248371, 23.769609>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.792885, 35.032784, 23.386654> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.511929, 34.748619, 23.368925>,  <40.343353, 34.578121, 23.358288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.511929, 34.748619, 23.368925>,  <40.792885, 35.032784, 23.386654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.511929, 34.748619, 23.368925> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149360, -0.086221, -0.985017,
		0.695942, -0.698489, 0.166667,
		-0.702393, -0.710407, -0.044321,
		40.301212, 34.535496, 23.355629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.019939, 34.535767, 23.002131>,  <40.792885, 35.032784, 23.386654>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.019939, 34.535767, 23.002131> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.630955, 34.442596, 22.998898>,  <40.397564, 34.386696, 22.996958>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.630955, 34.442596, 22.998898>,  <41.019939, 34.535767, 23.002131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.630955, 34.442596, 22.998898> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001895, 0.026773, -0.999640,
		0.233056, -0.972126, -0.025595,
		-0.972462, -0.232924, -0.008082,
		40.339218, 34.372719, 22.996473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.965027, 34.258579, 22.365980>,  <41.019939, 34.535767, 23.002131>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.965027, 34.258579, 22.365980> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.575493, 34.312286, 22.439320>,  <40.341774, 34.344509, 22.483324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.575493, 34.312286, 22.439320>,  <40.965027, 34.258579, 22.365980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.575493, 34.312286, 22.439320> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181053, 0.029213, -0.983039,
		-0.137348, -0.990514, -0.004138,
		-0.973835, 0.134269, 0.183348,
		40.283340, 34.352566, 22.494324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.590263, 33.779247, 21.942997>,  <40.965027, 34.258579, 22.365980>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.590263, 33.779247, 21.942997> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.331882, 34.071098, 22.032795>,  <40.176853, 34.246208, 22.086674>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.331882, 34.071098, 22.032795>,  <40.590263, 33.779247, 21.942997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.331882, 34.071098, 22.032795> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246649, 0.078827, -0.965894,
		-0.722436, -0.679289, 0.129043,
		-0.645949, 0.729625, 0.224494,
		40.138096, 34.289986, 22.100143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.474304, 33.681381, 21.180054>,  <40.590263, 33.779247, 21.942997>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.474304, 33.681381, 21.180054> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.758175, 33.444046, 21.028103>,  <40.928497, 33.301643, 20.936932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.758175, 33.444046, 21.028103>,  <40.474304, 33.681381, 21.180054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.758175, 33.444046, 21.028103> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530834, -0.804841, 0.265416,
		-0.463223, 0.013293, -0.886142,
		0.709675, -0.593342, -0.379878,
		40.971077, 33.266045, 20.914139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.278660, 33.055393, 20.605873>,  <40.474304, 33.681381, 21.180054>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.278660, 33.055393, 20.605873> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.616608, 32.923248, 20.774181>,  <40.819378, 32.843960, 20.875166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.616608, 32.923248, 20.774181>,  <40.278660, 33.055393, 20.605873>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.616608, 32.923248, 20.774181> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496279, -0.777685, 0.385893,
		0.199741, -0.534850, -0.820999,
		0.844873, -0.330366, 0.420771,
		40.870071, 32.824139, 20.900414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.636379, 33.268684, 20.514105>,  <40.278660, 33.055393, 20.605873>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.636379, 33.268684, 20.514105> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.353710, 33.004456, 20.412706>,  <39.184109, 32.845921, 20.351868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.353710, 33.004456, 20.412706>,  <39.636379, 33.268684, 20.514105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.353710, 33.004456, 20.412706> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222601, -0.132513, 0.965862,
		-0.671610, 0.738978, -0.053400,
		-0.706675, -0.660569, -0.253494,
		39.141708, 32.806286, 20.336658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.855145, 33.428509, 20.739815>,  <39.636379, 33.268684, 20.514105>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.855145, 33.428509, 20.739815> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.877728, 33.030132, 20.711763>,  <38.891277, 32.791107, 20.694933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.877728, 33.030132, 20.711763>,  <38.855145, 33.428509, 20.739815>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.877728, 33.030132, 20.711763> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244764, -0.081901, 0.966117,
		-0.967938, -0.037376, -0.248394,
		0.056453, -0.995939, -0.070127,
		38.894665, 32.731350, 20.690725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.283020, 33.205555, 21.222548>,  <38.855145, 33.428509, 20.739815>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.283020, 33.205555, 21.222548> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.512157, 32.887188, 21.144207>,  <38.649639, 32.696167, 21.097202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.512157, 32.887188, 21.144207>,  <38.283020, 33.205555, 21.222548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.512157, 32.887188, 21.144207> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059004, -0.278367, 0.958661,
		-0.817536, -0.537609, -0.206424,
		0.572846, -0.795920, -0.195854,
		38.684013, 32.648411, 21.085451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.905560, 32.619732, 21.423353>,  <38.283020, 33.205555, 21.222548>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.905560, 32.619732, 21.423353> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.277275, 32.472549, 21.410463>,  <38.500305, 32.384239, 21.402729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.277275, 32.472549, 21.410463>,  <37.905560, 32.619732, 21.423353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.277275, 32.472549, 21.410463> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128943, -0.404931, 0.905210,
		-0.346119, -0.837045, -0.423742,
		0.929287, -0.367949, -0.032223,
		38.556061, 32.362164, 21.400797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.803516, 31.992090, 21.832499>,  <37.905560, 32.619732, 21.423353>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.803516, 31.992090, 21.832499> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.200058, 32.026081, 21.792494>,  <38.437981, 32.046474, 21.768492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.200058, 32.026081, 21.792494>,  <37.803516, 31.992090, 21.832499>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.200058, 32.026081, 21.792494> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129139, -0.495913, 0.858716,
		0.023374, -0.864205, -0.502597,
		0.991351, 0.084977, -0.100011,
		38.497463, 32.051575, 21.762491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.194454, 31.373009, 21.912104>,  <37.803516, 31.992090, 21.832499>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.194454, 31.373009, 21.912104> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.454742, 31.662857, 22.002861>,  <38.610916, 31.836765, 22.057316>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.454742, 31.662857, 22.002861>,  <38.194454, 31.373009, 21.912104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.454742, 31.662857, 22.002861> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080518, -0.362982, 0.928311,
		0.755032, -0.585806, -0.294547,
		0.650725, 0.724621, 0.226895,
		38.649960, 31.880243, 22.070930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.499676, 30.936831, 22.316017>,  <38.194454, 31.373009, 21.912104>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.499676, 30.936831, 22.316017> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.657024, 31.297405, 22.388313>,  <38.751434, 31.513750, 22.431690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.657024, 31.297405, 22.388313>,  <38.499676, 30.936831, 22.316017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.657024, 31.297405, 22.388313> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067634, -0.167684, 0.983518,
		0.916888, -0.399113, -0.004994,
		0.393372, 0.901438, 0.180741,
		38.775036, 31.567837, 22.442535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.976612, 30.814074, 22.905272>,  <38.499676, 30.936831, 22.316017>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.976612, 30.814074, 22.905272> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.873692, 31.200596, 22.908031>,  <38.811939, 31.432510, 22.909687>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.873692, 31.200596, 22.908031>,  <38.976612, 30.814074, 22.905272>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.873692, 31.200596, 22.908031> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193222, -0.058442, 0.979413,
		0.946817, 0.250669, 0.201748,
		-0.257299, 0.966307, 0.006899,
		38.796501, 31.490488, 22.910101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.417160, 31.160925, 23.377869>,  <38.976612, 30.814074, 22.905272>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.417160, 31.160925, 23.377869> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.104431, 31.405621, 23.329666>,  <38.916794, 31.552439, 23.300745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.104431, 31.405621, 23.329666>,  <39.417160, 31.160925, 23.377869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.104431, 31.405621, 23.329666> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091081, 0.079148, 0.992693,
		0.616808, 0.787089, -0.006162,
		-0.781826, 0.611740, -0.120508,
		38.869884, 31.589142, 23.293514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.535236, 31.675421, 23.744656>,  <39.417160, 31.160925, 23.377869>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.535236, 31.675421, 23.744656> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.136459, 31.680145, 23.713741>,  <38.897194, 31.682980, 23.695192>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.136459, 31.680145, 23.713741>,  <39.535236, 31.675421, 23.744656>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.136459, 31.680145, 23.713741> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070814, 0.282514, 0.956646,
		0.033135, 0.959190, -0.280813,
		-0.996939, 0.011813, -0.077285,
		38.837379, 31.683689, 23.690556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.367275, 32.212326, 24.156399>,  <39.535236, 31.675421, 23.744656>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.367275, 32.212326, 24.156399> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.022156, 32.011913, 24.129448>,  <38.815083, 31.891665, 24.113277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.022156, 32.011913, 24.129448>,  <39.367275, 32.212326, 24.156399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.022156, 32.011913, 24.129448> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211350, 0.236415, 0.948388,
		-0.459244, 0.832510, -0.309872,
		-0.862801, -0.501033, -0.067379,
		38.763317, 31.861603, 24.109234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.854240, 32.638882, 24.353668>,  <39.367275, 32.212326, 24.156399>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.854240, 32.638882, 24.353668> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.689724, 32.277843, 24.404505>,  <38.591015, 32.061218, 24.435007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.689724, 32.277843, 24.404505>,  <38.854240, 32.638882, 24.353668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.689724, 32.277843, 24.404505> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143417, 0.201777, 0.968875,
		-0.900150, 0.380263, -0.212437,
		-0.411292, -0.902600, 0.127094,
		38.566338, 32.007065, 24.442633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.168377, 32.709332, 24.827291>,  <38.854240, 32.638882, 24.353668>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.168377, 32.709332, 24.827291> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.309212, 32.335114, 24.838575>,  <38.393715, 32.110584, 24.845346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.309212, 32.335114, 24.838575>,  <38.168377, 32.709332, 24.827291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.309212, 32.335114, 24.838575> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209877, -0.049544, 0.976472,
		-0.912132, -0.349725, -0.213793,
		0.352089, -0.935542, 0.028209,
		38.414837, 32.054451, 24.847038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.801346, 32.456982, 25.364792>,  <38.168377, 32.709332, 24.827291>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.801346, 32.456982, 25.364792> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.079601, 32.175533, 25.306822>,  <38.246555, 32.006664, 25.272039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.079601, 32.175533, 25.306822>,  <37.801346, 32.456982, 25.364792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.079601, 32.175533, 25.306822> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083580, -0.279631, 0.956463,
		-0.713513, -0.653240, -0.253331,
		0.695639, -0.703622, -0.144923,
		38.288292, 31.964447, 25.263346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.146633, 32.089935, 25.287973>,  <37.801346, 32.456982, 25.364792>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.146633, 32.089935, 25.287973> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.782749, 31.953833, 25.383183>,  <36.564419, 31.872171, 25.440308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.782749, 31.953833, 25.383183>,  <37.146633, 32.089935, 25.287973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.782749, 31.953833, 25.383183> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244637, -0.024011, -0.969317,
		0.335528, -0.940027, -0.061395,
		-0.909710, -0.340253, 0.238022,
		36.509834, 31.851757, 25.454590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.080994, 31.634861, 24.773436>,  <37.146633, 32.089935, 25.287973>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.080994, 31.634861, 24.773436> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.713421, 31.692703, 24.920219>,  <36.492878, 31.727409, 25.008289>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.713421, 31.692703, 24.920219>,  <37.080994, 31.634861, 24.773436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.713421, 31.692703, 24.920219> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371384, -0.003890, -0.928471,
		-0.132835, -0.989482, 0.057279,
		-0.918928, 0.144606, 0.366961,
		36.437744, 31.736084, 25.030308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.637165, 31.117777, 24.524473>,  <37.080994, 31.634861, 24.773436>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.637165, 31.117777, 24.524473> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.409458, 31.436600, 24.605106>,  <36.272835, 31.627893, 24.653486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.409458, 31.436600, 24.605106>,  <36.637165, 31.117777, 24.524473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.409458, 31.436600, 24.605106> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460072, -0.105629, -0.881576,
		-0.681374, -0.594593, 0.426835,
		-0.569266, 0.797058, 0.201583,
		36.238678, 31.675716, 24.665581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.955433, 30.901646, 24.430424>,  <36.637165, 31.117777, 24.524473>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.955433, 30.901646, 24.430424> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.978134, 31.297712, 24.379284>,  <35.991756, 31.535353, 24.348600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.978134, 31.297712, 24.379284>,  <35.955433, 30.901646, 24.430424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.978134, 31.297712, 24.379284> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412400, -0.093368, -0.906205,
		-0.909233, 0.104159, 0.403046,
		0.056758, 0.990169, -0.127849,
		35.995163, 31.594763, 24.340929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.388042, 31.089960, 23.987549>,  <35.955433, 30.901646, 24.430424>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.388042, 31.089960, 23.987549> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.614285, 31.419487, 23.972456>,  <35.750031, 31.617203, 23.963400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.614285, 31.419487, 23.972456>,  <35.388042, 31.089960, 23.987549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.614285, 31.419487, 23.972456> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263057, 0.136864, -0.955023,
		-0.781598, 0.550088, 0.294121,
		0.565601, 0.823815, -0.037732,
		35.783966, 31.666632, 23.961136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.021679, 31.571718, 23.622332>,  <35.388042, 31.089960, 23.987549>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.021679, 31.571718, 23.622332> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.389889, 31.724667, 23.590261>,  <35.610813, 31.816435, 23.571020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.389889, 31.724667, 23.590261>,  <35.021679, 31.571718, 23.622332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.389889, 31.724667, 23.590261> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198170, 0.280130, -0.939285,
		-0.336696, 0.880522, 0.333641,
		0.920524, 0.382371, -0.080175,
		35.666046, 31.839378, 23.566210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.878906, 32.161217, 23.277424>,  <35.021679, 31.571718, 23.622332>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.878906, 32.161217, 23.277424> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.266628, 32.067577, 23.247345>,  <35.499260, 32.011395, 23.229298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.266628, 32.067577, 23.247345>,  <34.878906, 32.161217, 23.277424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.266628, 32.067577, 23.247345> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046510, 0.125736, -0.990973,
		0.241440, 0.964048, 0.110988,
		0.969300, -0.234099, -0.075196,
		35.557419, 31.997347, 23.224787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.752106, 32.750881, 23.548029>,  <34.878906, 32.161217, 23.277424>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.752106, 32.750881, 23.548029> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.438171, 32.995838, 23.510040>,  <34.249813, 33.142811, 23.487247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.438171, 32.995838, 23.510040>,  <34.752106, 32.750881, 23.548029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.438171, 32.995838, 23.510040> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258573, -0.184327, 0.948242,
		0.563187, 0.768768, 0.303013,
		-0.784832, 0.612388, -0.094972,
		34.202721, 33.179554, 23.481548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.839256, 33.280632, 24.073853>,  <34.752106, 32.750881, 23.548029>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.839256, 33.280632, 24.073853> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.453304, 33.242134, 23.976084>,  <34.221733, 33.219036, 23.917421>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.453304, 33.242134, 23.976084>,  <34.839256, 33.280632, 24.073853>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.453304, 33.242134, 23.976084> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238544, -0.068644, 0.968703,
		-0.110013, 0.992988, 0.043274,
		-0.964880, -0.096248, -0.244423,
		34.163841, 33.213261, 23.902758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.434174, 33.673637, 24.568275>,  <34.839256, 33.280632, 24.073853>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.434174, 33.673637, 24.568275> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.149792, 33.453815, 24.392759>,  <33.979164, 33.321922, 24.287449>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.149792, 33.453815, 24.392759>,  <34.434174, 33.673637, 24.568275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.149792, 33.453815, 24.392759> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431086, -0.152407, 0.889346,
		-0.555621, 0.821438, -0.128552,
		-0.710950, -0.549556, -0.438791,
		33.936508, 33.288948, 24.261122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.730835, 33.931446, 24.880392>,  <34.434174, 33.673637, 24.568275>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.730835, 33.931446, 24.880392> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.648613, 33.568687, 24.733269>,  <33.599277, 33.351032, 24.644995>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.648613, 33.568687, 24.733269>,  <33.730835, 33.931446, 24.880392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.648613, 33.568687, 24.733269> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441887, -0.249328, 0.861726,
		-0.873202, 0.339663, -0.349495,
		-0.205558, -0.906898, -0.367806,
		33.586945, 33.296619, 24.622927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.973412, 33.774307, 25.041634>,  <33.730835, 33.931446, 24.880392>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.973412, 33.774307, 25.041634> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.129284, 33.410717, 24.982418>,  <33.222809, 33.192562, 24.946890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.129284, 33.410717, 24.982418>,  <32.973412, 33.774307, 25.041634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.129284, 33.410717, 24.982418> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525712, -0.351536, 0.774629,
		-0.756157, -0.224036, -0.614846,
		0.389685, -0.908972, -0.148038,
		33.246189, 33.138027, 24.938007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.429142, 33.288979, 25.106541>,  <32.973412, 33.774307, 25.041634>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.429142, 33.288979, 25.106541> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.769203, 33.085800, 25.162004>,  <32.973240, 32.963894, 25.195282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.769203, 33.085800, 25.162004>,  <32.429142, 33.288979, 25.106541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.769203, 33.085800, 25.162004> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372431, -0.393950, 0.840297,
		-0.372196, -0.766026, -0.524093,
		0.850156, -0.507944, 0.138665,
		33.024250, 32.933414, 25.203602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.206429, 32.761848, 25.378305>,  <32.429142, 33.288979, 25.106541>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.206429, 32.761848, 25.378305> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.594833, 32.732807, 25.469398>,  <32.827877, 32.715382, 25.524054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.594833, 32.732807, 25.469398>,  <32.206429, 32.761848, 25.378305>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.594833, 32.732807, 25.469398> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235267, -0.458555, 0.856958,
		0.042212, -0.885695, -0.462344,
		0.971014, -0.072601, 0.227731,
		32.886139, 32.711025, 25.537718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<38.214764, 37.674374, 22.036556> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.427170, 37.342960, 22.107620>,  <38.554611, 37.144112, 22.150259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.427170, 37.342960, 22.107620>,  <38.214764, 37.674374, 22.036556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.427170, 37.342960, 22.107620> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574228, -0.197671, 0.794474,
		-0.623128, -0.523892, -0.580731,
		0.531012, -0.828531, 0.177659,
		38.586475, 37.094402, 22.160917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.689499, 37.156200, 22.346506>,  <38.214764, 37.674374, 22.036556>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.689499, 37.156200, 22.346506> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.052818, 37.009338, 22.426695>,  <38.270809, 36.921223, 22.474808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.052818, 37.009338, 22.426695>,  <37.689499, 37.156200, 22.346506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.052818, 37.009338, 22.426695> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304996, -0.253242, 0.918067,
		-0.286313, -0.895019, -0.342002,
		0.908296, -0.367164, 0.200470,
		38.325310, 36.899193, 22.486837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.564236, 36.551003, 22.645832>,  <37.689499, 37.156200, 22.346506>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.564236, 36.551003, 22.645832> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.928337, 36.666515, 22.764515>,  <38.146797, 36.735825, 22.835726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.928337, 36.666515, 22.764515>,  <37.564236, 36.551003, 22.645832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.928337, 36.666515, 22.764515> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218111, -0.274679, 0.936472,
		0.351939, -0.917145, -0.187041,
		0.910256, 0.288786, 0.296709,
		38.201412, 36.753151, 22.853527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.784157, 36.030273, 23.042814>,  <37.564236, 36.551003, 22.645832>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.784157, 36.030273, 23.042814> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.023590, 36.325302, 23.167835>,  <38.167252, 36.502319, 23.242847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.023590, 36.325302, 23.167835>,  <37.784157, 36.030273, 23.042814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.023590, 36.325302, 23.167835> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167576, -0.266247, 0.949226,
		0.783337, -0.620568, -0.035772,
		0.598584, 0.737569, 0.312553,
		38.203167, 36.546574, 23.261600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.952709, 35.834881, 23.771255>,  <37.784157, 36.030273, 23.042814>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.952709, 35.834881, 23.771255> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.100567, 36.206551, 23.770510>,  <38.189281, 36.429554, 23.770061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.100567, 36.206551, 23.770510>,  <37.952709, 35.834881, 23.771255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.100567, 36.206551, 23.770510> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073817, 0.031367, 0.996778,
		0.926238, -0.368312, 0.080183,
		0.369640, 0.929173, -0.001866,
		38.211460, 36.485302, 23.769951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.609543, 35.901932, 24.207523>,  <37.952709, 35.834881, 23.771255>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.609543, 35.901932, 24.207523> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.438221, 36.262596, 24.183630>,  <38.335426, 36.478992, 24.169294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.438221, 36.262596, 24.183630>,  <38.609543, 35.901932, 24.207523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.438221, 36.262596, 24.183630> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115488, 0.010941, 0.993249,
		0.896224, 0.432312, 0.099445,
		-0.428305, 0.901658, -0.059733,
		38.309731, 36.533092, 24.165710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.976089, 36.317688, 24.700605>,  <38.609543, 35.901932, 24.207523>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.976089, 36.317688, 24.700605> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.647881, 36.537930, 24.639175>,  <38.450954, 36.670074, 24.602318>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.647881, 36.537930, 24.639175>,  <38.976089, 36.317688, 24.700605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.647881, 36.537930, 24.639175> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128391, 0.084279, 0.988136,
		0.557012, 0.830503, 0.001540,
		-0.820520, 0.550601, -0.153573,
		38.401726, 36.703110, 24.593103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.957539, 36.934956, 25.137150>,  <38.976089, 36.317688, 24.700605>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.957539, 36.934956, 25.137150> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.567184, 36.900734, 25.056818>,  <38.332973, 36.880199, 25.008619>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.567184, 36.900734, 25.056818>,  <38.957539, 36.934956, 25.137150>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.567184, 36.900734, 25.056818> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218209, 0.356875, 0.908309,
		-0.006039, 0.930226, -0.366937,
		-0.975883, -0.085554, -0.200829,
		38.274418, 36.875069, 24.996569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.585381, 37.544518, 25.252552>,  <38.957539, 36.934956, 25.137150>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.585381, 37.544518, 25.252552> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.298985, 37.267395, 25.286898>,  <38.127148, 37.101120, 25.307505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.298985, 37.267395, 25.286898>,  <38.585381, 37.544518, 25.252552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.298985, 37.267395, 25.286898> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305777, 0.421802, 0.853571,
		-0.627577, 0.584896, -0.513852,
		-0.715994, -0.692806, 0.085865,
		38.084187, 37.059555, 25.312656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.047764, 37.864334, 25.653528>,  <38.585381, 37.544518, 25.252552>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.047764, 37.864334, 25.653528> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.953159, 37.476940, 25.684750>,  <37.896397, 37.244503, 25.703482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.953159, 37.476940, 25.684750>,  <38.047764, 37.864334, 25.653528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.953159, 37.476940, 25.684750> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292170, 0.147504, 0.944923,
		-0.926660, 0.200680, -0.317849,
		-0.236511, -0.968489, 0.078053,
		37.882206, 37.186394, 25.708166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.405479, 37.913330, 25.873165>,  <38.047764, 37.864334, 25.653528>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.405479, 37.913330, 25.873165> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.531712, 37.544865, 25.964260>,  <37.607452, 37.323784, 26.018917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.531712, 37.544865, 25.964260>,  <37.405479, 37.913330, 25.873165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.531712, 37.544865, 25.964260> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422982, 0.078277, 0.902751,
		-0.849408, -0.381223, -0.364932,
		0.315583, -0.921163, 0.227739,
		37.626389, 37.268517, 26.032581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.765869, 37.543484, 26.110231>,  <37.405479, 37.913330, 25.873165>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.765869, 37.543484, 26.110231> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.082123, 37.355171, 26.266830>,  <37.271873, 37.242184, 26.360790>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.082123, 37.355171, 26.266830>,  <36.765869, 37.543484, 26.110231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.082123, 37.355171, 26.266830> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481235, -0.082455, 0.872705,
		-0.378572, -0.878388, -0.291748,
		0.790630, -0.470781, 0.391496,
		37.319313, 37.213936, 26.384279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.054901, 37.455044, 26.221920>,  <36.765869, 37.543484, 26.110231>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.054901, 37.455044, 26.221920> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.658504, 37.494823, 26.186031>,  <35.420666, 37.518692, 26.164499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.658504, 37.494823, 26.186031>,  <36.054901, 37.455044, 26.221920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.658504, 37.494823, 26.186031> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083755, -0.062623, -0.994517,
		-0.104525, -0.993070, 0.053730,
		-0.990989, 0.099451, -0.089720,
		35.361206, 37.524658, 26.159115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.703579, 36.892849, 26.011194>,  <36.054901, 37.455044, 26.221920>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.703579, 36.892849, 26.011194> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.567978, 37.250980, 25.895636>,  <35.486618, 37.465858, 25.826300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.567978, 37.250980, 25.895636>,  <35.703579, 36.892849, 26.011194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.567978, 37.250980, 25.895636> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154729, -0.249837, -0.955845,
		-0.927974, -0.368736, -0.053838,
		-0.339004, 0.895329, -0.288897,
		35.466278, 37.519581, 25.808966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.288898, 36.792221, 25.511246>,  <35.703579, 36.892849, 26.011194>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.288898, 36.792221, 25.511246> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.389690, 37.170525, 25.429224>,  <35.450165, 37.397507, 25.380011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.389690, 37.170525, 25.429224>,  <35.288898, 36.792221, 25.511246>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.389690, 37.170525, 25.429224> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048449, -0.199298, -0.978741,
		-0.966518, 0.256561, -0.004399,
		0.251984, 0.945757, -0.205055,
		35.465286, 37.454250, 25.367708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.835903, 36.923199, 25.005848>,  <35.288898, 36.792221, 25.511246>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.835903, 36.923199, 25.005848> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.121643, 37.201939, 24.980202>,  <35.293087, 37.369183, 24.964815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.121643, 37.201939, 24.980202>,  <34.835903, 36.923199, 25.005848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.121643, 37.201939, 24.980202> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111481, 0.022874, -0.993503,
		-0.690854, 0.716854, 0.094025,
		0.714348, 0.696848, -0.064113,
		35.335949, 37.410992, 24.960968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.595566, 37.437038, 24.478228>,  <34.835903, 36.923199, 25.005848>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.595566, 37.437038, 24.478228> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.991699, 37.483536, 24.508484>,  <35.229382, 37.511433, 24.526638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.991699, 37.483536, 24.508484>,  <34.595566, 37.437038, 24.478228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.991699, 37.483536, 24.508484> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112231, -0.351316, -0.929506,
		-0.081477, 0.929013, -0.360967,
		0.990336, 0.116245, 0.075640,
		35.288799, 37.518410, 24.531176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.723995, 37.892204, 23.973984>,  <34.595566, 37.437038, 24.478228>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.723995, 37.892204, 23.973984> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.080772, 37.719234, 24.026819>,  <35.294838, 37.615452, 24.058521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.080772, 37.719234, 24.026819>,  <34.723995, 37.892204, 23.973984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.080772, 37.719234, 24.026819> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162835, 0.034673, -0.986044,
		0.421807, 0.901005, 0.101339,
		0.891944, -0.432422, 0.132090,
		35.348354, 37.589508, 24.066446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.106968, 38.316681, 23.412125>,  <34.723995, 37.892204, 23.973984>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.106968, 38.316681, 23.412125> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.301018, 37.980175, 23.507559>,  <35.417446, 37.778271, 23.564819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.301018, 37.980175, 23.507559>,  <35.106968, 38.316681, 23.412125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.301018, 37.980175, 23.507559> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184701, -0.168108, -0.968311,
		0.854716, 0.513820, 0.073829,
		0.485126, -0.841267, 0.238587,
		35.446556, 37.727795, 23.579136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.688122, 38.309429, 22.985771>,  <35.106968, 38.316681, 23.412125>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.688122, 38.309429, 22.985771> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.670406, 37.929203, 23.108713>,  <35.659779, 37.701069, 23.182478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.670406, 37.929203, 23.108713>,  <35.688122, 38.309429, 22.985771>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.670406, 37.929203, 23.108713> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268345, -0.307671, -0.912869,
		0.962304, 0.042048, 0.268706,
		-0.044289, -0.950563, 0.307357,
		35.657120, 37.644035, 23.200920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.306755, 37.941967, 22.707304>,  <35.688122, 38.309429, 22.985771>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.306755, 37.941967, 22.707304> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.027748, 37.668270, 22.792414>,  <35.860344, 37.504051, 22.843479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.027748, 37.668270, 22.792414>,  <36.306755, 37.941967, 22.707304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.027748, 37.668270, 22.792414> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083123, -0.372201, -0.924423,
		0.711726, -0.627118, 0.316495,
		-0.697522, -0.684244, 0.212777,
		35.818493, 37.462997, 22.856247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.624702, 37.331787, 22.553780>,  <36.306755, 37.941967, 22.707304>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.624702, 37.331787, 22.553780> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.232380, 37.253792, 22.554169>,  <35.996986, 37.206997, 22.554403>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.232380, 37.253792, 22.554169>,  <36.624702, 37.331787, 22.553780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.232380, 37.253792, 22.554169> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058537, -0.299209, -0.952390,
		0.185993, -0.934053, 0.304880,
		-0.980806, -0.194985, 0.000974,
		35.938137, 37.195297, 22.554461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.552937, 36.731281, 22.217863>,  <36.624702, 37.331787, 22.553780>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.552937, 36.731281, 22.217863> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.178375, 36.871284, 22.207703>,  <35.953640, 36.955288, 22.201607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.178375, 36.871284, 22.207703>,  <36.552937, 36.731281, 22.217863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.178375, 36.871284, 22.207703> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030774, 0.009795, -0.999478,
		-0.349577, -0.936695, -0.019943,
		-0.936402, 0.350009, -0.025401,
		35.897453, 36.976288, 22.200083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.145557, 36.342545, 21.792730>,  <36.552937, 36.731281, 22.217863>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.145557, 36.342545, 21.792730> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.927578, 36.677853, 21.799973>,  <35.796791, 36.879040, 21.804317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.927578, 36.677853, 21.799973>,  <36.145557, 36.342545, 21.792730>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.927578, 36.677853, 21.799973> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259504, -0.148086, -0.954321,
		-0.797299, -0.524758, 0.298234,
		-0.544952, 0.838272, 0.018108,
		35.764091, 36.929333, 21.805405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.378159, 36.273903, 21.578426>,  <36.145557, 36.342545, 21.792730>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.378159, 36.273903, 21.578426> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.477238, 36.656715, 21.518118>,  <35.536686, 36.886402, 21.481932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.477238, 36.656715, 21.518118>,  <35.378159, 36.273903, 21.578426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.477238, 36.656715, 21.518118> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429258, -0.031104, -0.902646,
		-0.868552, 0.288306, 0.403109,
		0.247700, 0.957033, -0.150773,
		35.551548, 36.943825, 21.472885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.557835, 36.006691, 22.280668>,  <35.378159, 36.273903, 21.578426>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.557835, 36.006691, 22.280668> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.352425, 35.866161, 21.967525>,  <35.229179, 35.781845, 21.779640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.352425, 35.866161, 21.967525>,  <35.557835, 36.006691, 22.280668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.352425, 35.866161, 21.967525> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400500, -0.708733, 0.580774,
		-0.758874, 0.611776, 0.223249,
		-0.513527, -0.351323, -0.782855,
		35.198368, 35.760765, 21.732670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.903198, 35.766178, 22.493567>,  <35.557835, 36.006691, 22.280668>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.903198, 35.766178, 22.493567> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.921219, 35.584068, 22.137882>,  <34.932030, 35.474804, 21.924471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.921219, 35.584068, 22.137882>,  <34.903198, 35.766178, 22.493567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.921219, 35.584068, 22.137882> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498528, -0.781603, 0.374922,
		-0.865702, 0.426405, -0.262181,
		0.045053, -0.455275, -0.889210,
		34.934734, 35.447487, 21.871119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.223473, 35.441196, 22.507318>,  <34.903198, 35.766178, 22.493567>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.223473, 35.441196, 22.507318> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.474327, 35.249577, 22.261650>,  <34.624840, 35.134605, 22.114248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.474327, 35.249577, 22.261650>,  <34.223473, 35.441196, 22.507318>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.474327, 35.249577, 22.261650> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423129, -0.871543, 0.247739,
		-0.653956, 0.104507, -0.749279,
		0.627139, -0.479053, -0.614170,
		34.662468, 35.105862, 22.077398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.845421, 34.954491, 22.067543>,  <34.223473, 35.441196, 22.507318>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.845421, 34.954491, 22.067543> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.219677, 34.813309, 22.068192>,  <34.444229, 34.728600, 22.068581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.219677, 34.813309, 22.068192>,  <33.845421, 34.954491, 22.067543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.219677, 34.813309, 22.068192> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322538, -0.853115, 0.410079,
		-0.143358, -0.384208, -0.912049,
		0.935638, -0.352959, 0.001621,
		34.500370, 34.707420, 22.068678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.710312, 34.255585, 21.888716>,  <33.845421, 34.954491, 22.067543>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.710312, 34.255585, 21.888716> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.073288, 34.280209, 22.054977>,  <34.291073, 34.294983, 22.154734>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.073288, 34.280209, 22.054977>,  <33.710312, 34.255585, 21.888716>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.073288, 34.280209, 22.054977> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196325, -0.812482, 0.548935,
		0.371501, -0.579727, -0.725192,
		0.907438, 0.061556, 0.415652,
		34.345520, 34.298676, 22.179672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.842945, 33.601757, 22.082582>,  <33.710312, 34.255585, 21.888716>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.842945, 33.601757, 22.082582> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.134853, 33.782085, 22.288179>,  <34.309998, 33.890282, 22.411537>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.134853, 33.782085, 22.288179>,  <33.842945, 33.601757, 22.082582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.134853, 33.782085, 22.288179> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064454, -0.703080, 0.708184,
		0.680646, -0.549942, -0.484030,
		0.729772, 0.450825, 0.513994,
		34.353786, 33.917332, 22.442377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.305965, 33.064522, 22.280207>,  <33.842945, 33.601757, 22.082582>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.305965, 33.064522, 22.280207> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.312344, 33.377586, 22.529102>,  <34.316170, 33.565426, 22.678440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.312344, 33.377586, 22.529102>,  <34.305965, 33.064522, 22.280207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.312344, 33.377586, 22.529102> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197695, -0.607565, 0.769273,
		0.980134, -0.135278, 0.145043,
		0.015942, 0.782665, 0.622239,
		34.317127, 33.612385, 22.715775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.624508, 32.868202, 22.865511>,  <34.305965, 33.064522, 22.280207>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.624508, 32.868202, 22.865511> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.398914, 33.173748, 22.991007>,  <34.263557, 33.357075, 23.066305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.398914, 33.173748, 22.991007>,  <34.624508, 32.868202, 22.865511>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.398914, 33.173748, 22.991007> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205651, -0.497878, 0.842511,
		0.799770, 0.410640, 0.437884,
		-0.563982, 0.763867, 0.313739,
		34.229721, 33.402908, 23.085129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.358444, 32.679031, 22.618515>,  <34.624508, 32.868202, 22.865511>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.358444, 32.679031, 22.618515> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.566605, 32.343761, 22.683817>,  <35.691502, 32.142601, 22.722998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.566605, 32.343761, 22.683817>,  <35.358444, 32.679031, 22.618515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.566605, 32.343761, 22.683817> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161258, -0.091280, -0.982682,
		0.838556, 0.537716, 0.087659,
		0.520403, -0.838170, 0.163255,
		35.722725, 32.092312, 22.732794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.903240, 32.728073, 22.099421>,  <35.358444, 32.679031, 22.618515>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.903240, 32.728073, 22.099421> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.897305, 32.339954, 22.196003>,  <35.893742, 32.107082, 22.253952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.897305, 32.339954, 22.196003>,  <35.903240, 32.728073, 22.099421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.897305, 32.339954, 22.196003> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264657, -0.236682, -0.934847,
		0.964228, 0.050032, 0.260308,
		-0.014838, -0.970298, 0.241457,
		35.892853, 32.048866, 22.268440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.499638, 32.425419, 21.717964>,  <35.903240, 32.728073, 22.099421>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.499638, 32.425419, 21.717964> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.248638, 32.120251, 21.780174>,  <36.098038, 31.937149, 21.817499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.248638, 32.120251, 21.780174>,  <36.499638, 32.425419, 21.717964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.248638, 32.120251, 21.780174> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172409, -0.330933, -0.927771,
		0.759287, -0.555364, 0.339196,
		-0.627502, -0.762925, 0.155524,
		36.060387, 31.891373, 21.826832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.902935, 31.893755, 21.468313>,  <36.499638, 32.425419, 21.717964>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.902935, 31.893755, 21.468313> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.520664, 31.778851, 21.494097>,  <36.291302, 31.709908, 21.509567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.520664, 31.778851, 21.494097>,  <36.902935, 31.893755, 21.468313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.520664, 31.778851, 21.494097> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059622, -0.403260, -0.913141,
		0.288303, -0.868828, 0.402515,
		-0.955681, -0.287260, 0.064460,
		36.233959, 31.692673, 21.513435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.920864, 31.193104, 21.207235>,  <36.902935, 31.893755, 21.468313>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.920864, 31.193104, 21.207235> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.545616, 31.330366, 21.188540>,  <36.320469, 31.412724, 21.177322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.545616, 31.330366, 21.188540>,  <36.920864, 31.193104, 21.207235>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.545616, 31.330366, 21.188540> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048878, -0.264799, -0.963064,
		-0.342859, -0.901180, 0.265185,
		-0.938115, 0.343157, -0.046741,
		36.264183, 31.433311, 21.174517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.516525, 30.684364, 20.889660>,  <36.920864, 31.193104, 21.207235>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.516525, 30.684364, 20.889660> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.287231, 31.011307, 20.866560>,  <36.149654, 31.207472, 20.852699>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.287231, 31.011307, 20.866560>,  <36.516525, 30.684364, 20.889660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.287231, 31.011307, 20.866560> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107399, -0.144817, -0.983612,
		-0.812324, -0.557636, 0.170797,
		-0.573232, 0.817356, -0.057749,
		36.115261, 31.256514, 20.849236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.879246, 30.487375, 20.710217>,  <36.516525, 30.684364, 20.889660>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.879246, 30.487375, 20.710217> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.893738, 30.864578, 20.577898>,  <35.902431, 31.090900, 20.498507>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.893738, 30.864578, 20.577898>,  <35.879246, 30.487375, 20.710217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.893738, 30.864578, 20.577898> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112775, -0.325040, -0.938952,
		-0.992960, 0.071324, 0.094571,
		0.036230, 0.943007, -0.330796,
		35.904606, 31.147480, 20.478659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.347446, 30.484762, 20.245407>,  <35.879246, 30.487375, 20.710217>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.347446, 30.484762, 20.245407> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.586006, 30.793600, 20.157614>,  <35.729141, 30.978903, 20.104939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.586006, 30.793600, 20.157614>,  <35.347446, 30.484762, 20.245407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.586006, 30.793600, 20.157614> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060071, -0.229737, -0.971397,
		-0.800435, 0.592528, -0.090635,
		0.596402, 0.772096, -0.219483,
		35.764927, 31.025229, 20.091768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.071190, 30.807135, 19.626186>,  <35.347446, 30.484762, 20.245407>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.071190, 30.807135, 19.626186> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.451599, 30.928770, 19.648378>,  <35.679844, 31.001751, 19.661694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.451599, 30.928770, 19.648378>,  <35.071190, 30.807135, 19.626186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.451599, 30.928770, 19.648378> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108806, -0.161325, -0.980885,
		-0.289326, 0.938884, -0.186511,
		0.951027, 0.304089, 0.055481,
		35.736908, 31.019997, 19.665022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.700829, 29.693251, 35.461887> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.019363, 29.934988, 35.451965>,  <36.210484, 30.080030, 35.446014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.019363, 29.934988, 35.451965>,  <35.700829, 29.693251, 35.461887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.019363, 29.934988, 35.451965> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387569, 0.478359, -0.788012,
		-0.464366, 0.637136, 0.615160,
		0.796338, 0.604343, -0.024801,
		36.258266, 30.116291, 35.444527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.384258, 30.411831, 35.478054>,  <35.700829, 29.693251, 35.461887>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.384258, 30.411831, 35.478054> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.757633, 30.396475, 35.335377>,  <35.981659, 30.387262, 35.249771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.757633, 30.396475, 35.335377>,  <35.384258, 30.411831, 35.478054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.757633, 30.396475, 35.335377> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296526, 0.477071, -0.827330,
		0.201927, 0.878026, 0.433930,
		0.933433, -0.038389, -0.356691,
		36.037663, 30.384958, 35.228371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.490189, 31.081600, 35.150837>,  <35.384258, 30.411831, 35.478054>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.490189, 31.081600, 35.150837> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.757156, 30.819777, 35.008789>,  <35.917336, 30.662682, 34.923561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.757156, 30.819777, 35.008789>,  <35.490189, 31.081600, 35.150837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.757156, 30.819777, 35.008789> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086365, 0.405614, -0.909955,
		0.739660, 0.637988, 0.214183,
		0.667416, -0.654560, -0.355116,
		35.957382, 30.623409, 34.902256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.835415, 31.556950, 34.719147>,  <35.490189, 31.081600, 35.150837>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.835415, 31.556950, 34.719147> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.924793, 31.195951, 34.571865>,  <35.978420, 30.979353, 34.483498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.924793, 31.195951, 34.571865>,  <35.835415, 31.556950, 34.719147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.924793, 31.195951, 34.571865> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093383, 0.356196, -0.929733,
		0.970232, 0.242133, -0.004686,
		0.223450, -0.902494, -0.368204,
		35.991829, 30.925203, 34.461403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.323284, 31.679869, 34.192608>,  <35.835415, 31.556950, 34.719147>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.323284, 31.679869, 34.192608> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.195076, 31.311804, 34.102661>,  <36.118153, 31.090965, 34.048695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.195076, 31.311804, 34.102661>,  <36.323284, 31.679869, 34.192608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.195076, 31.311804, 34.102661> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015650, 0.242503, -0.970024,
		0.947112, -0.307394, -0.092128,
		-0.320521, -0.920164, -0.224867,
		36.098919, 31.035755, 34.035202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.750702, 31.383097, 33.667313>,  <36.323284, 31.679869, 34.192608>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.750702, 31.383097, 33.667313> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.410473, 31.176746, 33.626534>,  <36.206333, 31.052937, 33.602066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.410473, 31.176746, 33.626534>,  <36.750702, 31.383097, 33.667313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.410473, 31.176746, 33.626534> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143766, 0.414610, -0.898571,
		0.505820, -0.749645, -0.426822,
		-0.850574, -0.515878, -0.101944,
		36.155300, 31.021984, 33.595951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.712906, 31.244303, 32.885353>,  <36.750702, 31.383097, 33.667313>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.712906, 31.244303, 32.885353> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.342636, 31.156742, 33.008778>,  <36.120476, 31.104206, 33.082832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.342636, 31.156742, 33.008778>,  <36.712906, 31.244303, 32.885353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.342636, 31.156742, 33.008778> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369510, 0.348129, -0.861550,
		0.081177, -0.911530, -0.403141,
		-0.925674, -0.218903, 0.308559,
		36.064934, 31.091070, 33.101345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.580296, 30.878147, 32.360603>,  <36.712906, 31.244303, 32.885353>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.580296, 30.878147, 32.360603> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.241825, 30.991974, 32.540829>,  <36.038742, 31.060270, 32.648964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.241825, 30.991974, 32.540829>,  <36.580296, 30.878147, 32.360603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.241825, 30.991974, 32.540829> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401864, 0.214542, -0.890212,
		-0.349989, -0.934341, -0.067184,
		-0.846176, 0.284566, 0.450565,
		35.987972, 31.077343, 32.675999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.048409, 30.715038, 31.860668>,  <36.580296, 30.878147, 32.360603>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.048409, 30.715038, 31.860668> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.861012, 30.978951, 32.095684>,  <35.748573, 31.137299, 32.236694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.861012, 30.978951, 32.095684>,  <36.048409, 30.715038, 31.860668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.861012, 30.978951, 32.095684> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466926, 0.379656, -0.798650,
		-0.749998, -0.648498, 0.130205,
		-0.468489, 0.659782, 0.587542,
		35.720463, 31.176886, 32.271946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.342628, 30.534658, 31.883068>,  <36.048409, 30.715038, 31.860668>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.342628, 30.534658, 31.883068> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.373772, 30.924751, 31.965879>,  <35.392456, 31.158808, 32.015568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.373772, 30.924751, 31.965879>,  <35.342628, 30.534658, 31.883068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.373772, 30.924751, 31.965879> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476096, 0.218821, -0.851733,
		-0.875940, -0.032256, 0.481340,
		0.077854, 0.975232, 0.207030,
		35.397129, 31.217321, 32.027988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.651371, 30.822250, 31.710329>,  <35.342628, 30.534658, 31.883068>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.651371, 30.822250, 31.710329> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.923599, 31.115112, 31.721416>,  <35.086937, 31.290829, 31.728069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.923599, 31.115112, 31.721416>,  <34.651371, 30.822250, 31.710329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.923599, 31.115112, 31.721416> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327088, 0.337461, -0.882685,
		-0.655616, 0.591666, 0.469147,
		0.680574, 0.732155, 0.027718,
		35.127773, 31.334759, 31.729733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.270279, 31.345879, 31.564186>,  <34.651371, 30.822250, 31.710329>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.270279, 31.345879, 31.564186> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.622322, 31.516033, 31.479845>,  <34.833549, 31.618126, 31.429241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.622322, 31.516033, 31.479845>,  <34.270279, 31.345879, 31.564186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.622322, 31.516033, 31.479845> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389957, 0.394348, -0.832119,
		-0.270822, 0.814578, 0.512951,
		0.880107, 0.425385, -0.210852,
		34.886353, 31.643648, 31.416590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.442039, 32.036037, 31.394350>,  <34.270279, 31.345879, 31.564186>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.442039, 32.036037, 31.394350> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.075745, 32.194065, 31.423605>,  <33.855968, 32.288883, 31.441158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.075745, 32.194065, 31.423605>,  <34.442039, 32.036037, 31.394350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.075745, 32.194065, 31.423605> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173927, 0.225696, 0.958546,
		0.362190, 0.890493, -0.275392,
		-0.915734, 0.395074, 0.073136,
		33.801025, 32.312588, 31.445545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.441422, 32.777023, 31.682621>,  <34.442039, 32.036037, 31.394350>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.441422, 32.777023, 31.682621> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.087009, 32.606987, 31.756647>,  <33.874363, 32.504963, 31.801062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.087009, 32.606987, 31.756647>,  <34.441422, 32.777023, 31.682621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.087009, 32.606987, 31.756647> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110966, 0.193125, 0.974879,
		-0.450156, 0.884306, -0.123943,
		-0.886028, -0.425095, 0.185064,
		33.821201, 32.479458, 31.812166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.184410, 33.192577, 32.142681>,  <34.441422, 32.777023, 31.682621>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.184410, 33.192577, 32.142681> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.939816, 32.877422, 32.171864>,  <33.793060, 32.688332, 32.189373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.939816, 32.877422, 32.171864>,  <34.184410, 33.192577, 32.142681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.939816, 32.877422, 32.171864> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177854, 0.226708, 0.957586,
		-0.771009, 0.572573, -0.278757,
		-0.611485, -0.787885, 0.072960,
		33.756371, 32.641056, 32.193752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.626648, 33.529266, 32.556591>,  <34.184410, 33.192577, 32.142681>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.626648, 33.529266, 32.556591> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.620678, 33.132671, 32.608318>,  <33.617096, 32.894714, 32.639355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.620678, 33.132671, 32.608318>,  <33.626648, 33.529266, 32.556591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.620678, 33.132671, 32.608318> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115512, 0.126756, 0.985185,
		-0.993194, 0.029646, 0.112637,
		-0.014929, -0.991491, 0.129318,
		33.616199, 32.835224, 32.647114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.962494, 33.316792, 32.870705>,  <33.626648, 33.529266, 32.556591>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.962494, 33.316792, 32.870705> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.204945, 33.007591, 32.945618>,  <33.350414, 32.822071, 32.990566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.204945, 33.007591, 32.945618>,  <32.962494, 33.316792, 32.870705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.204945, 33.007591, 32.945618> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249051, 0.039172, 0.967698,
		-0.755371, -0.633190, -0.168775,
		0.606125, -0.773004, 0.187286,
		33.386784, 32.775688, 33.001804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.630974, 32.794857, 33.284222>,  <32.962494, 33.316792, 32.870705>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.630974, 32.794857, 33.284222> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.013050, 32.735683, 33.386776>,  <33.242294, 32.700180, 33.448307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.013050, 32.735683, 33.386776>,  <32.630974, 32.794857, 33.284222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.013050, 32.735683, 33.386776> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260674, -0.010065, 0.965374,
		-0.140236, -0.988945, -0.048178,
		0.955188, -0.147939, 0.256381,
		33.299606, 32.691303, 33.463692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.515247, 32.512730, 33.826389>,  <32.630974, 32.794857, 33.284222>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.515247, 32.512730, 33.826389> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.908672, 32.572281, 33.867275>,  <33.144726, 32.608013, 33.891808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.908672, 32.572281, 33.867275>,  <32.515247, 32.512730, 33.826389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.908672, 32.572281, 33.867275> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112378, 0.061492, 0.991761,
		0.141369, -0.986941, 0.077212,
		0.983558, 0.148881, 0.102217,
		33.203739, 32.616943, 33.897942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.744335, 32.022575, 34.271549>,  <32.515247, 32.512730, 33.826389>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.744335, 32.022575, 34.271549> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.045467, 32.285774, 34.278263>,  <33.226147, 32.443695, 34.282291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.045467, 32.285774, 34.278263>,  <32.744335, 32.022575, 34.271549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.045467, 32.285774, 34.278263> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047769, 0.029186, 0.998432,
		0.656476, -0.752454, 0.053404,
		0.752833, 0.657998, 0.016784,
		33.271317, 32.483173, 34.283298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.051865, 31.815428, 34.952930>,  <32.744335, 32.022575, 34.271549>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.051865, 31.815428, 34.952930> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.217548, 32.163017, 34.844627>,  <33.316959, 32.371571, 34.779644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.217548, 32.163017, 34.844627>,  <33.051865, 31.815428, 34.952930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.217548, 32.163017, 34.844627> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080203, 0.261477, 0.961872,
		0.906641, -0.420133, 0.038612,
		0.414210, 0.868975, -0.270762,
		33.341812, 32.423710, 34.763397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.684238, 31.973175, 35.234238>,  <33.051865, 31.815428, 34.952930>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.684238, 31.973175, 35.234238> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.509254, 32.317783, 35.131157>,  <33.404266, 32.524548, 35.069309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.509254, 32.317783, 35.131157>,  <33.684238, 31.973175, 35.234238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.509254, 32.317783, 35.131157> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019302, 0.295509, 0.955145,
		0.899032, 0.412860, -0.145902,
		-0.437457, 0.861522, -0.257703,
		33.378017, 32.576241, 35.053844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.852718, 32.412788, 35.872120>,  <33.684238, 31.973175, 35.234238>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.852718, 32.412788, 35.872120> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.571629, 32.618862, 35.675850>,  <33.402973, 32.742508, 35.558086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.571629, 32.618862, 35.675850>,  <33.852718, 32.412788, 35.872120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.571629, 32.618862, 35.675850> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290412, 0.421888, 0.858878,
		0.649491, 0.746053, -0.146855,
		-0.702725, 0.515185, -0.490675,
		33.360809, 32.773418, 35.528648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.916424, 33.151707, 36.042706>,  <33.852718, 32.412788, 35.872120>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.916424, 33.151707, 36.042706> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.540226, 33.082241, 35.925877>,  <33.314507, 33.040562, 35.855778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.540226, 33.082241, 35.925877>,  <33.916424, 33.151707, 36.042706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.540226, 33.082241, 35.925877> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339744, 0.464719, 0.817686,
		-0.006268, 0.868262, -0.496067,
		-0.940497, -0.173661, -0.292073,
		33.258076, 33.030144, 35.838253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.732883, 33.832855, 36.123127>,  <33.916424, 33.151707, 36.042706>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.732883, 33.832855, 36.123127> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.407265, 33.601688, 36.100056>,  <33.211891, 33.462986, 36.086212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.407265, 33.601688, 36.100056>,  <33.732883, 33.832855, 36.123127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.407265, 33.601688, 36.100056> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418668, 0.515082, 0.747935,
		-0.402539, 0.633006, -0.661261,
		-0.814051, -0.577922, -0.057679,
		33.163048, 33.428310, 36.082752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.219589, 34.252579, 36.075676>,  <33.732883, 33.832855, 36.123127>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.219589, 34.252579, 36.075676> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.049919, 33.916969, 36.211983>,  <32.948116, 33.715603, 36.293766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.049919, 33.916969, 36.211983>,  <33.219589, 34.252579, 36.075676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.049919, 33.916969, 36.211983> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511103, 0.532441, 0.674745,
		-0.747564, 0.112039, -0.654672,
		-0.424172, -0.839020, 0.340770,
		32.922668, 33.665264, 36.314213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.543892, 34.329021, 35.925846>,  <33.219589, 34.252579, 36.075676>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.543892, 34.329021, 35.925846> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.581722, 34.070782, 36.228966>,  <32.604420, 33.915840, 36.410839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.581722, 34.070782, 36.228966>,  <32.543892, 34.329021, 35.925846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.581722, 34.070782, 36.228966> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563607, 0.592750, 0.575320,
		-0.820611, -0.481512, -0.307804,
		0.094573, -0.645595, 0.757801,
		32.610092, 33.877102, 36.456306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.844002, 34.918041, 36.329292>,  <32.543892, 34.329021, 35.925846>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.844002, 34.918041, 36.329292> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.200180, 35.085598, 36.400444>,  <33.413887, 35.186134, 36.443134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.200180, 35.085598, 36.400444>,  <32.844002, 34.918041, 36.329292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.200180, 35.085598, 36.400444> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002395, 0.395166, -0.918606,
		-0.455092, 0.817539, 0.352876,
		0.890441, 0.418895, 0.177879,
		33.467312, 35.211266, 36.453808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.865738, 35.631073, 36.310577>,  <32.844002, 34.918041, 36.329292>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.865738, 35.631073, 36.310577> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.220608, 35.479321, 36.205517>,  <33.433529, 35.388271, 36.142479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.220608, 35.479321, 36.205517>,  <32.865738, 35.631073, 36.310577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.220608, 35.479321, 36.205517> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031969, 0.517310, -0.855201,
		0.460317, 0.767112, 0.446818,
		0.887179, -0.379379, -0.262651,
		33.486763, 35.365505, 36.126720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.410774, 36.207504, 36.162395>,  <32.865738, 35.631073, 36.310577>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.410774, 36.207504, 36.162395> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.499645, 35.868153, 35.970192>,  <33.552967, 35.664543, 35.854870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.499645, 35.868153, 35.970192>,  <33.410774, 36.207504, 36.162395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.499645, 35.868153, 35.970192> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017359, 0.496192, -0.868039,
		0.974852, 0.184517, 0.124969,
		0.222177, -0.848379, -0.480511,
		33.566299, 35.613640, 35.826038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.861290, 36.395638, 35.663853>,  <33.410774, 36.207504, 36.162395>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.861290, 36.395638, 35.663853> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.765919, 36.036026, 35.516941>,  <33.708694, 35.820259, 35.428795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.765919, 36.036026, 35.516941>,  <33.861290, 36.395638, 35.663853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.765919, 36.036026, 35.516941> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278882, 0.298878, -0.912632,
		0.930256, -0.320027, 0.179462,
		-0.238430, -0.899030, -0.367283,
		33.694389, 35.766315, 35.406757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.405071, 36.289890, 35.115360>,  <33.861290, 36.395638, 35.663853>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.405071, 36.289890, 35.115360> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.114220, 36.027721, 35.033665>,  <33.939709, 35.870422, 34.984646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.114220, 36.027721, 35.033665>,  <34.405071, 36.289890, 35.115360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.114220, 36.027721, 35.033665> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102997, 0.189988, -0.976369,
		0.678733, -0.730980, -0.070639,
		-0.727127, -0.655418, -0.204240,
		33.896080, 35.831097, 34.972393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.666889, 35.805916, 34.649536>,  <34.405071, 36.289890, 35.115360>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.666889, 35.805916, 34.649536> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.267590, 35.817722, 34.629028>,  <34.028011, 35.824806, 34.616722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.267590, 35.817722, 34.629028>,  <34.666889, 35.805916, 34.649536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.267590, 35.817722, 34.629028> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054752, 0.132752, -0.989636,
		-0.022409, -0.990710, -0.134136,
		-0.998249, 0.029521, -0.051268,
		33.968117, 35.826576, 34.613647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.562687, 35.442059, 34.088818>,  <34.666889, 35.805916, 34.649536>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.562687, 35.442059, 34.088818> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.212406, 35.626892, 34.144848>,  <34.002235, 35.737793, 34.178467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.212406, 35.626892, 34.144848>,  <34.562687, 35.442059, 34.088818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.212406, 35.626892, 34.144848> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190781, -0.064620, -0.979504,
		-0.443559, -0.884480, 0.144744,
		-0.875704, 0.462082, 0.140079,
		33.949696, 35.765518, 34.186871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.232803, 35.111767, 33.560841>,  <34.562687, 35.442059, 34.088818>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.232803, 35.111767, 33.560841> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.994118, 35.415974, 33.663250>,  <33.850906, 35.598499, 33.724697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.994118, 35.415974, 33.663250>,  <34.232803, 35.111767, 33.560841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.994118, 35.415974, 33.663250> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187673, 0.177942, -0.965979,
		-0.780201, -0.624460, 0.036549,
		-0.596711, 0.760517, 0.256025,
		33.815105, 35.644131, 33.740059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.526581, 35.069946, 33.126831>,  <34.232803, 35.111767, 33.560841>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.526581, 35.069946, 33.126831> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.583282, 35.443790, 33.257313>,  <33.617302, 35.668098, 33.335602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.583282, 35.443790, 33.257313>,  <33.526581, 35.069946, 33.126831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.583282, 35.443790, 33.257313> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187902, 0.348942, -0.918113,
		-0.971904, 0.068853, 0.225080,
		0.141754, 0.934611, 0.326201,
		33.625809, 35.724174, 33.355171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.125351, 35.581188, 32.672588>,  <33.526581, 35.069946, 33.126831>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.125351, 35.581188, 32.672588> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.388485, 35.818268, 32.858475>,  <33.546368, 35.960514, 32.970005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.388485, 35.818268, 32.858475>,  <33.125351, 35.581188, 32.672588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.388485, 35.818268, 32.858475> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094891, 0.677325, -0.729539,
		-0.747156, 0.435822, 0.501813,
		0.657840, 0.592697, 0.464712,
		33.585838, 35.996078, 32.997887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.815784, 36.241684, 32.871864>,  <33.125351, 35.581188, 32.672588>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.815784, 36.241684, 32.871864> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.212166, 36.272720, 32.828049>,  <33.449993, 36.291344, 32.801762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.212166, 36.272720, 32.828049>,  <32.815784, 36.241684, 32.871864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.212166, 36.272720, 32.828049> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133620, 0.648100, -0.749741,
		0.012818, 0.757592, 0.652602,
		0.990950, 0.077590, -0.109537,
		33.509449, 36.295998, 32.795189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.964489, 36.941448, 32.605564>,  <32.815784, 36.241684, 32.871864>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.964489, 36.941448, 32.605564> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.315304, 36.772854, 32.513344>,  <33.525791, 36.671696, 32.458012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.315304, 36.772854, 32.513344>,  <32.964489, 36.941448, 32.605564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.315304, 36.772854, 32.513344> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041858, 0.545107, -0.837321,
		0.478594, 0.724712, 0.495722,
		0.877038, -0.421487, -0.230550,
		33.578415, 36.646408, 32.444180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.340439, 37.494965, 32.234417>,  <32.964489, 36.941448, 32.605564>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.340439, 37.494965, 32.234417> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.541134, 37.159004, 32.151638>,  <33.661549, 36.957428, 32.101971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.541134, 37.159004, 32.151638>,  <33.340439, 37.494965, 32.234417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.541134, 37.159004, 32.151638> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068016, 0.276806, -0.958516,
		0.862344, 0.466844, 0.196010,
		0.501734, -0.839902, -0.206950,
		33.691654, 36.907032, 32.089554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.105740, 37.591541, 32.016987>,  <33.340439, 37.494965, 32.234417>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.105740, 37.591541, 32.016987> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.953194, 37.256771, 31.859961>,  <33.861664, 37.055908, 31.765743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.953194, 37.256771, 31.859961>,  <34.105740, 37.591541, 32.016987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.953194, 37.256771, 31.859961> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393763, 0.237141, -0.888096,
		0.836366, -0.493270, 0.239114,
		-0.381368, -0.836928, -0.392569,
		33.838783, 37.005692, 31.742189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.618523, 37.510452, 31.548018>,  <34.105740, 37.591541, 32.016987>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.618523, 37.510452, 31.548018> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.337204, 37.241001, 31.457148>,  <34.168415, 37.079330, 31.402626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.337204, 37.241001, 31.457148>,  <34.618523, 37.510452, 31.548018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.337204, 37.241001, 31.457148> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284953, 0.025639, -0.958199,
		0.651291, -0.738628, 0.173920,
		-0.703294, -0.673625, -0.227172,
		34.126217, 37.038914, 31.388996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.952477, 36.991978, 31.150221>,  <34.618523, 37.510452, 31.548018>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.952477, 36.991978, 31.150221> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.565552, 36.992840, 31.048786>,  <34.333397, 36.993355, 30.987925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.565552, 36.992840, 31.048786>,  <34.952477, 36.991978, 31.150221>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.565552, 36.992840, 31.048786> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253461, -0.024597, -0.967033,
		-0.008311, -0.999695, 0.023250,
		-0.967310, 0.002144, -0.253588,
		34.275360, 36.993484, 30.972710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.943813, 36.577782, 30.553785>,  <34.952477, 36.991978, 31.150221>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.943813, 36.577782, 30.553785> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.587402, 36.756889, 30.523911>,  <34.373558, 36.864353, 30.505985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.587402, 36.756889, 30.523911>,  <34.943813, 36.577782, 30.553785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.587402, 36.756889, 30.523911> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042691, -0.081148, -0.995787,
		-0.451943, -0.890460, 0.053189,
		-0.891025, 0.447768, -0.074689,
		34.320095, 36.891220, 30.501503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.621265, 36.187283, 29.988852>,  <34.943813, 36.577782, 30.553785>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.621265, 36.187283, 29.988852> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.423637, 36.534050, 30.015217>,  <34.305061, 36.742111, 30.031036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.423637, 36.534050, 30.015217>,  <34.621265, 36.187283, 29.988852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.423637, 36.534050, 30.015217> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068641, 0.114472, -0.991052,
		-0.866707, -0.485128, -0.116064,
		-0.494073, 0.866918, 0.065914,
		34.275417, 36.794125, 30.034990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.384945, 36.315067, 29.321487>,  <34.621265, 36.187283, 29.988852>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.384945, 36.315067, 29.321487> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.316994, 36.679890, 29.470778>,  <34.276222, 36.898781, 29.560352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.316994, 36.679890, 29.470778>,  <34.384945, 36.315067, 29.321487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.316994, 36.679890, 29.470778> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075366, 0.389646, -0.917876,
		-0.982578, -0.127801, -0.134931,
		-0.169881, 0.912054, 0.373225,
		34.266029, 36.953506, 29.582745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.832050, 36.567066, 28.935226>,  <34.384945, 36.315067, 29.321487>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.832050, 36.567066, 28.935226> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.029514, 36.880325, 29.086473>,  <34.147995, 37.068283, 29.177221>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.029514, 36.880325, 29.086473>,  <33.832050, 36.567066, 28.935226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.029514, 36.880325, 29.086473> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084722, 0.389412, -0.917159,
		-0.865516, 0.484803, 0.125888,
		0.493664, 0.783150, 0.378116,
		34.177612, 37.115269, 29.199909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.674603, 37.065636, 28.439909>,  <33.832050, 36.567066, 28.935226>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.674603, 37.065636, 28.439909> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.992138, 37.207245, 28.637691>,  <34.182659, 37.292210, 28.756361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.992138, 37.207245, 28.637691>,  <33.674603, 37.065636, 28.439909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.992138, 37.207245, 28.637691> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309803, 0.464232, -0.829765,
		-0.523301, 0.811883, 0.258847,
		0.793838, 0.354026, 0.494457,
		34.230289, 37.313454, 28.786028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.640392, 37.714981, 28.270460>,  <33.674603, 37.065636, 28.439909>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.640392, 37.714981, 28.270460> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.019207, 37.642689, 28.376633>,  <34.246498, 37.599316, 28.440336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.019207, 37.642689, 28.376633>,  <33.640392, 37.714981, 28.270460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.019207, 37.642689, 28.376633> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320807, 0.496266, -0.806723,
		0.014074, 0.849151, 0.527963,
		0.947040, -0.180728, 0.265429,
		34.303318, 37.588470, 28.456261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.015995, 38.241287, 28.018347>,  <33.640392, 37.714981, 28.270460>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.015995, 38.241287, 28.018347> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.308445, 37.977444, 28.088064>,  <34.483913, 37.819138, 28.129894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.308445, 37.977444, 28.088064>,  <34.015995, 38.241287, 28.018347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.308445, 37.977444, 28.088064> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476171, 0.310398, -0.822748,
		0.488591, 0.684522, 0.541025,
		0.731122, -0.659608, 0.174292,
		34.527782, 37.779560, 28.140352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.673710, 38.581188, 27.937593>,  <34.015995, 38.241287, 28.018347>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.673710, 38.581188, 27.937593> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.768906, 38.197945, 27.873865>,  <34.826023, 37.967999, 27.835629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.768906, 38.197945, 27.873865>,  <34.673710, 38.581188, 27.937593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.768906, 38.197945, 27.873865> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721837, 0.284229, -0.631003,
		0.649855, 0.035171, 0.759244,
		0.237992, -0.958111, -0.159320,
		34.840302, 37.910511, 27.826069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.367432, 38.541065, 27.881731>,  <34.673710, 38.581188, 27.937593>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.367432, 38.541065, 27.881731> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.264210, 38.196381, 27.706978>,  <35.202274, 37.989571, 27.602125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.264210, 38.196381, 27.706978>,  <35.367432, 38.541065, 27.881731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.264210, 38.196381, 27.706978> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553151, 0.238967, -0.798072,
		0.792105, -0.447611, 0.414987,
		-0.258057, -0.861707, -0.436884,
		35.186794, 37.937870, 27.575912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.960804, 38.230328, 27.556080>,  <35.367432, 38.541065, 27.881731>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.960804, 38.230328, 27.556080> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.663128, 38.044891, 27.363720>,  <35.484524, 37.933628, 27.248304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.663128, 38.044891, 27.363720>,  <35.960804, 38.230328, 27.556080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.663128, 38.044891, 27.363720> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496617, 0.097478, -0.862479,
		0.446718, -0.880669, 0.157687,
		-0.744188, -0.463594, -0.480900,
		35.439873, 37.905815, 27.219450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.279106, 37.698673, 27.135870>,  <35.960804, 38.230328, 27.556080>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.279106, 37.698673, 27.135870> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.924782, 37.767612, 26.963531>,  <35.712185, 37.808975, 26.860128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.924782, 37.767612, 26.963531>,  <36.279106, 37.698673, 27.135870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.924782, 37.767612, 26.963531> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443674, 0.042513, -0.895179,
		-0.135962, -0.984119, -0.114124,
		-0.885815, 0.172344, -0.430847,
		35.659039, 37.819317, 26.834278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.448132, 37.023224, 26.679188>,  <36.279106, 37.698673, 27.135870>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.448132, 37.023224, 26.679188> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.839870, 37.061775, 26.750288>,  <37.074913, 37.084904, 26.792948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.839870, 37.061775, 26.750288>,  <36.448132, 37.023224, 26.679188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.839870, 37.061775, 26.750288> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193048, 0.184228, 0.963739,
		0.060132, -0.978147, 0.199027,
		0.979345, 0.096374, 0.177751,
		37.133675, 37.090687, 26.803614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.556549, 36.677311, 27.331684>,  <36.448132, 37.023224, 26.679188>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.556549, 36.677311, 27.331684> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.879848, 36.909786, 27.293829>,  <37.073830, 37.049271, 27.271116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.879848, 36.909786, 27.293829>,  <36.556549, 36.677311, 27.331684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.879848, 36.909786, 27.293829> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045459, 0.098654, 0.994083,
		0.587087, -0.807766, 0.053317,
		0.808246, 0.581189, -0.094638,
		37.122322, 37.084145, 27.265438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.016994, 36.490120, 27.859058>,  <36.556549, 36.677311, 27.331684>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.016994, 36.490120, 27.859058> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.157177, 36.852058, 27.762369>,  <37.241287, 37.069221, 27.704355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.157177, 36.852058, 27.762369>,  <37.016994, 36.490120, 27.859058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.157177, 36.852058, 27.762369> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286633, 0.142089, 0.947445,
		0.891640, -0.401325, -0.209563,
		0.350456, 0.904848, -0.241725,
		37.262314, 37.123512, 27.689852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.712002, 36.519867, 28.055651>,  <37.016994, 36.490120, 27.859058>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.712002, 36.519867, 28.055651> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.616199, 36.907543, 28.032640>,  <37.558720, 37.140148, 28.018835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.616199, 36.907543, 28.032640>,  <37.712002, 36.519867, 28.055651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.616199, 36.907543, 28.032640> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291533, 0.128307, 0.947917,
		0.926092, 0.210262, -0.313281,
		-0.239507, 0.969189, -0.057526,
		37.544346, 37.198299, 28.015383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.214783, 36.870991, 28.414164>,  <37.712002, 36.519867, 28.055651>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.214783, 36.870991, 28.414164> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.903877, 37.122524, 28.422409>,  <37.717335, 37.273445, 28.427357>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.903877, 37.122524, 28.422409>,  <38.214783, 36.870991, 28.414164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.903877, 37.122524, 28.422409> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082117, 0.068907, 0.994238,
		0.623791, 0.774480, -0.105197,
		-0.777266, 0.628835, 0.020614,
		37.670696, 37.311176, 28.428593>
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
