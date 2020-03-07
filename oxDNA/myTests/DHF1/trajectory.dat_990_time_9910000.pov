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
	right 1.6 * <1, 0, 0>
	location <2.5, 2.5, 11.1562>
	look_at <2.5, 2.5, 2.5>
	direction <0, 0, -8.6562>
	angle 67.0682
}


# declare cpy_camera_pos = <2.5, 2.5, 11.1562>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 4
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1, 1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1, -1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<2.930150, 5.449301, 1.053491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.223190, 5.388386, 0.788130>,  <3.399014, 5.351836, 0.628913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.223190, 5.388386, 0.788130>,  <2.930150, 5.449301, 1.053491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.223190, 5.388386, 0.788130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592120, -0.338099, 0.731494,
		-0.335673, -0.928712, -0.157538,
		0.732610, -0.152261, -0.663400,
		3.442971, 5.342699, 0.589109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.173361, 4.676299, 0.812635>,  <2.930150, 5.449301, 1.053491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.173361, 4.676299, 0.812635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.387516, 5.005254, 0.889614>,  <3.516009, 5.202628, 0.935802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.387516, 5.005254, 0.889614>,  <3.173361, 4.676299, 0.812635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.387516, 5.005254, 0.889614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310715, -0.403655, 0.860534,
		0.785376, -0.400923, -0.471641,
		0.535388, 0.822389, 0.192449,
		3.548132, 5.251971, 0.947349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.014642, 3.986426, 0.941128>,  <3.173361, 4.676299, 0.812635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.014642, 3.986426, 0.941128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.869164, 4.097064, 1.296930>,  <2.781876, 4.163448, 1.510412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.869164, 4.097064, 1.296930>,  <3.014642, 3.986426, 0.941128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.869164, 4.097064, 1.296930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009540, -0.953743, 0.300472,
		0.931468, 0.117767, 0.344235,
		-0.363697, 0.276596, 0.889505,
		2.760054, 4.180043, 1.563782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.441149, 3.692320, 1.445435>,  <3.014642, 3.986426, 0.941128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.441149, 3.692320, 1.445435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.084034, 3.770610, 1.607729>,  <2.869765, 3.817584, 1.705106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.084034, 3.770610, 1.607729>,  <3.441149, 3.692320, 1.445435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.084034, 3.770610, 1.607729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108126, -0.967456, 0.228773,
		0.437308, 0.160375, 0.884896,
		-0.892788, 0.195725, 0.405736,
		2.816197, 3.829327, 1.729450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.319250, 3.250575, 2.048897>,  <3.441149, 3.692320, 1.445435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.319250, 3.250575, 2.048897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.945118, 3.387619, 2.013620>,  <2.720639, 3.469845, 1.992454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.945118, 3.387619, 2.013620>,  <3.319250, 3.250575, 2.048897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.945118, 3.387619, 2.013620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350964, -0.929975, 0.109406,
		-0.044533, 0.133283, 0.990077,
		-0.935329, 0.342609, -0.088192,
		2.664519, 3.490402, 1.987163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.901949, 3.111405, 2.680689>,  <3.319250, 3.250575, 2.048897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.901949, 3.111405, 2.680689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.650261, 3.142324, 2.371340>,  <2.499248, 3.160876, 2.185730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.650261, 3.142324, 2.371340>,  <2.901949, 3.111405, 2.680689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.650261, 3.142324, 2.371340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223226, -0.971092, 0.084558,
		-0.744481, 0.225843, 0.628286,
		-0.629220, 0.077298, -0.773374,
		2.461495, 3.165514, 2.139328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.299214, 2.754538, 2.937732>,  <2.901949, 3.111405, 2.680689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.299214, 2.754538, 2.937732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.249992, 2.769586, 2.541058>,  <2.220460, 2.778614, 2.303053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.249992, 2.769586, 2.541058>,  <2.299214, 2.754538, 2.937732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.249992, 2.769586, 2.541058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483273, -0.875061, 0.026771,
		-0.866779, 0.482549, 0.125859,
		-0.123053, 0.037620, -0.991687,
		2.213076, 2.780872, 2.243551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.617924, 2.737831, 2.828388>,  <2.299214, 2.754538, 2.937732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.617924, 2.737831, 2.828388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.786720, 2.604357, 2.491205>,  <1.887998, 2.524272, 2.288895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.786720, 2.604357, 2.491205>,  <1.617924, 2.737831, 2.828388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.786720, 2.604357, 2.491205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541884, -0.838269, 0.060559,
		-0.726833, 0.431230, -0.534561,
		0.421991, -0.333685, -0.842958,
		1.913318, 2.504251, 2.238318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.109620, 0.787527, 2.046558> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.845291, 0.944714, 1.790779>,  <1.686694, 1.039025, 1.637312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.845291, 0.944714, 1.790779>,  <2.109620, 0.787527, 2.046558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.845291, 0.944714, 1.790779> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462656, 0.884136, 0.065215,
		0.590985, -0.252748, -0.766065,
		-0.660823, 0.392965, -0.639446,
		1.647044, 1.062603, 1.598945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.324264, 1.380993, 2.052462>,  <2.109620, 0.787527, 2.046558>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.324264, 1.380993, 2.052462> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.057838, 1.433252, 1.758717>,  <1.897983, 1.464608, 1.582469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.057838, 1.433252, 1.758717>,  <2.324264, 1.380993, 2.052462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.057838, 1.433252, 1.758717> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247763, 0.967391, -0.052616,
		0.703542, -0.216994, -0.676715,
		-0.666065, 0.130647, -0.734363,
		1.858019, 1.472447, 1.538408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.627985, 1.943834, 1.741638>,  <2.324264, 1.380993, 2.052462>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.627985, 1.943834, 1.741638> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.250763, 1.937984, 1.608711>,  <2.024430, 1.934475, 1.528955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.250763, 1.937984, 1.608711>,  <2.627985, 1.943834, 1.741638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.250763, 1.937984, 1.608711> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037138, 0.988158, -0.148878,
		0.330559, -0.152741, -0.931344,
		-0.943054, -0.014624, -0.332317,
		1.967847, 1.933597, 1.509016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.391299, 2.103345, 1.023659>,  <2.627985, 1.943834, 1.741638>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.391299, 2.103345, 1.023659> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.244141, 2.233152, 1.372219>,  <2.155846, 2.311037, 1.581355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.244141, 2.233152, 1.372219>,  <2.391299, 2.103345, 1.023659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.244141, 2.233152, 1.372219> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071944, 0.944250, -0.321274,
		-0.927080, -0.055504, -0.370733,
		-0.367896, 0.324518, 0.871402,
		2.133772, 2.330508, 1.633639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.012668, 2.733908, 0.946327>,  <2.391299, 2.103345, 1.023659>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.012668, 2.733908, 0.946327> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.083862, 2.770926, 1.338196>,  <2.126579, 2.793136, 1.573317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.083862, 2.770926, 1.338196>,  <2.012668, 2.733908, 0.946327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.083862, 2.770926, 1.338196> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080099, 0.990902, -0.108156,
		-0.980768, 0.097721, 0.168953,
		0.177985, 0.092543, 0.979672,
		2.137258, 2.798688, 1.632097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.587371, 3.332044, 1.217068>,  <2.012668, 2.733908, 0.946327>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.587371, 3.332044, 1.217068> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.875092, 3.273762, 1.488766>,  <2.047724, 3.238792, 1.651785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.875092, 3.273762, 1.488766>,  <1.587371, 3.332044, 1.217068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.875092, 3.273762, 1.488766> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193357, 0.981112, 0.005699,
		-0.667246, 0.127237, 0.733889,
		0.719302, -0.145705, 0.679245,
		2.090882, 3.230050, 1.692539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.431916, 3.735395, 1.804836>,  <1.587371, 3.332044, 1.217068>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.431916, 3.735395, 1.804836> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.825104, 3.661894, 1.805901>,  <2.061016, 3.617793, 1.806539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.825104, 3.661894, 1.805901>,  <1.431916, 3.735395, 1.804836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.825104, 3.661894, 1.805901> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183757, 0.982595, -0.027213,
		0.002386, 0.027239, 0.999626,
		0.982969, -0.183753, 0.002661,
		2.119994, 3.606768, 1.806699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.674621, 4.340242, 2.093825>,  <1.431916, 3.735395, 1.804836>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.674621, 4.340242, 2.093825> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.992462, 4.142769, 1.952469>,  <2.183167, 4.024285, 1.867656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.992462, 4.142769, 1.952469>,  <1.674621, 4.340242, 2.093825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.992462, 4.142769, 1.952469> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435858, 0.869055, -0.234033,
		0.422653, 0.031936, 0.905729,
		0.794602, -0.493684, -0.353389,
		2.230843, 3.994664, 1.846452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
