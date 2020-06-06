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
	<24.489193, 34.585957, 34.703178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.304811, 34.696133, 35.040619>,  <24.194183, 34.762238, 35.243084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.304811, 34.696133, 35.040619>,  <24.489193, 34.585957, 34.703178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.304811, 34.696133, 35.040619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283061, 0.946593, -0.154398,
		-0.841070, 0.167619, -0.514300,
		-0.460953, 0.275438, 0.843597,
		24.166525, 34.778763, 35.293697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.203890, 34.833969, 34.588566>,  <24.489193, 34.585957, 34.703178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.203890, 34.833969, 34.588566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.241743, 34.535450, 34.852104>,  <25.264454, 34.356339, 35.010227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.241743, 34.535450, 34.852104>,  <25.203890, 34.833969, 34.588566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.241743, 34.535450, 34.852104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.882876, 0.242875, 0.401923,
		-0.459973, -0.619716, -0.635907,
		0.094632, -0.746300, 0.658848,
		25.270132, 34.311562, 35.049759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.766146, 35.087818, 34.984165>,  <25.203890, 34.833969, 34.588566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.766146, 35.087818, 34.984165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.994249, 35.379791, 35.134899>,  <26.131111, 35.554974, 35.225338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.994249, 35.379791, 35.134899>,  <25.766146, 35.087818, 34.984165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.994249, 35.379791, 35.134899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251009, -0.591625, 0.766142,
		0.782176, -0.342311, -0.520599,
		0.570259, 0.729933, 0.376832,
		26.165327, 35.598770, 35.247948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.377504, 34.742962, 35.151489>,  <25.766146, 35.087818, 34.984165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.377504, 34.742962, 35.151489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.334623, 35.078697, 35.364662>,  <26.308895, 35.280140, 35.492565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.334623, 35.078697, 35.364662>,  <26.377504, 34.742962, 35.151489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.334623, 35.078697, 35.364662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261701, -0.493299, 0.829559,
		0.959177, 0.228399, -0.166773,
		-0.107201, 0.839339, 0.532933,
		26.302464, 35.330498, 35.524544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.081324, 34.878307, 35.552204>,  <26.377504, 34.742962, 35.151489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.081324, 34.878307, 35.552204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.834190, 35.152275, 35.706692>,  <26.685909, 35.316654, 35.799385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.834190, 35.152275, 35.706692>,  <27.081324, 34.878307, 35.552204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.834190, 35.152275, 35.706692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473071, -0.068556, 0.878353,
		0.628080, 0.725385, -0.281660,
		-0.617835, 0.684921, 0.386218,
		26.648840, 35.357750, 35.822556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.465309, 35.482712, 35.852753>,  <27.081324, 34.878307, 35.552204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.465309, 35.482712, 35.852753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.107702, 35.439198, 36.026604>,  <26.893139, 35.413090, 36.130917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.107702, 35.439198, 36.026604>,  <27.465309, 35.482712, 35.852753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.107702, 35.439198, 36.026604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444678, -0.096856, 0.890439,
		-0.054767, 0.989336, 0.134964,
		-0.894015, -0.108782, 0.434631,
		26.839499, 35.406563, 36.156994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.431984, 35.958168, 36.426285>,  <27.465309, 35.482712, 35.852753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.431984, 35.958168, 36.426285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.151367, 35.692806, 36.530384>,  <26.982996, 35.533588, 36.592842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.151367, 35.692806, 36.530384>,  <27.431984, 35.958168, 36.426285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.151367, 35.692806, 36.530384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464043, -0.148116, 0.873341,
		-0.540834, 0.733452, 0.411760,
		-0.701543, -0.663407, 0.260247,
		26.940905, 35.493786, 36.608459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.232563, 36.135891, 37.211609>,  <27.431984, 35.958168, 36.426285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.232563, 36.135891, 37.211609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.130383, 35.761738, 37.113796>,  <27.069075, 35.537247, 37.055107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.130383, 35.761738, 37.113796>,  <27.232563, 36.135891, 37.211609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.130383, 35.761738, 37.113796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459439, -0.339986, 0.820564,
		-0.850682, 0.097266, 0.516603,
		-0.255451, -0.935387, -0.244532,
		27.053747, 35.481121, 37.040436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.822203, 35.852451, 37.794353>,  <27.232563, 36.135891, 37.211609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.822203, 35.852451, 37.794353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.024506, 35.589695, 37.570675>,  <27.145887, 35.432041, 37.436466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.024506, 35.589695, 37.570675>,  <26.822203, 35.852451, 37.794353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.024506, 35.589695, 37.570675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401663, -0.394357, 0.826528,
		-0.763463, -0.642633, 0.064399,
		0.505758, -0.656891, -0.559199,
		27.176233, 35.392628, 37.402916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.781450, 35.145813, 38.065613>,  <26.822203, 35.852451, 37.794353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.781450, 35.145813, 38.065613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.108288, 35.169945, 37.836277>,  <27.304390, 35.184425, 37.698677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.108288, 35.169945, 37.836277>,  <26.781450, 35.145813, 38.065613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.108288, 35.169945, 37.836277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541279, -0.422586, 0.726938,
		-0.198428, -0.904312, -0.377949,
		0.817095, 0.060331, -0.573338,
		27.353416, 35.188046, 37.664276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.088583, 34.522911, 38.091141>,  <26.781450, 35.145813, 38.065613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.088583, 34.522911, 38.091141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.373972, 34.776596, 37.971992>,  <27.545206, 34.928806, 37.900505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.373972, 34.776596, 37.971992>,  <27.088583, 34.522911, 38.091141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.373972, 34.776596, 37.971992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584911, -0.305021, 0.751560,
		0.385795, -0.710445, -0.588584,
		0.713472, 0.634217, -0.297872,
		27.588013, 34.966862, 37.882629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.654177, 34.074825, 38.051899>,  <27.088583, 34.522911, 38.091141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.654177, 34.074825, 38.051899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.735085, 34.461437, 38.115028>,  <27.783628, 34.693405, 38.152908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.735085, 34.461437, 38.115028>,  <27.654177, 34.074825, 38.051899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.735085, 34.461437, 38.115028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561038, -0.246452, 0.790251,
		0.802697, -0.071298, -0.592110,
		0.202270, 0.966529, 0.157825,
		27.795765, 34.751396, 38.162376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.391220, 34.185558, 38.231102>,  <27.654177, 34.074825, 38.051899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.391220, 34.185558, 38.231102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.198347, 34.500301, 38.385170>,  <28.082623, 34.689148, 38.477612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.198347, 34.500301, 38.385170>,  <28.391220, 34.185558, 38.231102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.198347, 34.500301, 38.385170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582134, -0.040785, 0.812069,
		0.654691, 0.615787, -0.438390,
		-0.482182, 0.786857, 0.385172,
		28.053692, 34.736359, 38.500721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.956287, 34.696514, 38.439491>,  <28.391220, 34.185558, 38.231102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.956287, 34.696514, 38.439491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.606815, 34.734821, 38.630283>,  <28.397131, 34.757805, 38.744759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.606815, 34.734821, 38.630283>,  <28.956287, 34.696514, 38.439491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.606815, 34.734821, 38.630283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482583, 0.046491, 0.874615,
		0.061584, 0.994317, -0.086834,
		-0.873682, 0.095767, 0.476978,
		28.344711, 34.763550, 38.773376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.736540, 35.485722, 38.408363>,  <28.956287, 34.696514, 38.439491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.736540, 35.485722, 38.408363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.039846, 35.334389, 38.195988>,  <29.221830, 35.243587, 38.068562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.039846, 35.334389, 38.195988>,  <28.736540, 35.485722, 38.408363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.039846, 35.334389, 38.195988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474919, -0.878476, -0.052278,
		-0.446637, 0.291793, -0.845796,
		0.758266, -0.378335, -0.530938,
		29.267326, 35.220890, 38.036705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.678764, 35.693325, 37.636547>,  <28.736540, 35.485722, 38.408363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.678764, 35.693325, 37.636547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.352461, 35.468941, 37.692917>,  <28.156679, 35.334309, 37.726738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.352461, 35.468941, 37.692917>,  <28.678764, 35.693325, 37.636547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.352461, 35.468941, 37.692917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393418, 0.359549, -0.846137,
		0.423987, -0.745681, -0.513998,
		-0.815755, -0.560967, 0.140920,
		28.107733, 35.300652, 37.735195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.458696, 35.352978, 36.965275>,  <28.678764, 35.693325, 37.636547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.458696, 35.352978, 36.965275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.137012, 35.318195, 37.200455>,  <27.944002, 35.297325, 37.341564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.137012, 35.318195, 37.200455>,  <28.458696, 35.352978, 36.965275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.137012, 35.318195, 37.200455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571607, 0.384185, -0.725029,
		-0.162837, -0.919152, -0.358670,
		-0.804208, -0.086956, 0.587953,
		27.895750, 35.292107, 37.376842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.973583, 34.965984, 36.594189>,  <28.458696, 35.352978, 36.965275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.973583, 34.965984, 36.594189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.765547, 35.166035, 36.871136>,  <27.640726, 35.286064, 37.037304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.765547, 35.166035, 36.871136>,  <27.973583, 34.965984, 36.594189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.765547, 35.166035, 36.871136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671783, 0.261078, -0.693214,
		-0.527460, -0.825656, 0.200195,
		-0.520090, 0.500130, 0.692370,
		27.609520, 35.316074, 37.078846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.391293, 34.693192, 36.465363>,  <27.973583, 34.965984, 36.594189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.391293, 34.693192, 36.465363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.355318, 35.063263, 36.612858>,  <27.333735, 35.285305, 36.701355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.355318, 35.063263, 36.612858>,  <27.391293, 34.693192, 36.465363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.355318, 35.063263, 36.612858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584883, 0.250605, -0.771433,
		-0.806116, -0.285045, 0.518581,
		-0.089934, 0.925174, 0.368735,
		27.328339, 35.340816, 36.723476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.377541, 34.364674, 37.145660>,  <27.391293, 34.693192, 36.465363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.377541, 34.364674, 37.145660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.187546, 34.689915, 37.280273>,  <27.073549, 34.885059, 37.361042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.187546, 34.689915, 37.280273>,  <27.377541, 34.364674, 37.145660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.187546, 34.689915, 37.280273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540235, 0.032445, -0.840889,
		-0.694648, -0.581215, 0.423856,
		-0.474985, 0.813103, 0.336530,
		27.045050, 34.933846, 37.381233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.613518, 34.322632, 36.898594>,  <27.377541, 34.364674, 37.145660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.613518, 34.322632, 36.898594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.677879, 34.697826, 37.021416>,  <26.716496, 34.922943, 37.095108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.677879, 34.697826, 37.021416>,  <26.613518, 34.322632, 36.898594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.677879, 34.697826, 37.021416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667802, 0.332551, -0.665921,
		-0.726740, -0.097905, 0.679900,
		0.160904, 0.937989, 0.307059,
		26.726151, 34.979225, 37.113533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.933603, 34.702805, 36.806892>,  <26.613518, 34.322632, 36.898594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.933603, 34.702805, 36.806892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.238712, 34.959660, 36.776310>,  <26.421778, 35.113773, 36.757961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.238712, 34.959660, 36.776310>,  <25.933603, 34.702805, 36.806892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.238712, 34.959660, 36.776310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424574, 0.408113, -0.808196,
		-0.487768, 0.648928, 0.583930,
		0.762771, 0.642134, -0.076453,
		26.467543, 35.152298, 36.753372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.680126, 35.470280, 36.802734>,  <25.933603, 34.702805, 36.806892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.680126, 35.470280, 36.802734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.030396, 35.443371, 36.611458>,  <26.240557, 35.427227, 36.496693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.030396, 35.443371, 36.611458>,  <25.680126, 35.470280, 36.802734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.030396, 35.443371, 36.611458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427483, 0.352618, -0.832418,
		0.224619, 0.933346, 0.280020,
		0.875674, -0.067273, -0.478194,
		26.293098, 35.423187, 36.467999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.892973, 36.113644, 36.475094>,  <25.680126, 35.470280, 36.802734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.892973, 36.113644, 36.475094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.091698, 35.822906, 36.285408>,  <26.210934, 35.648464, 36.171597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.091698, 35.822906, 36.285408>,  <25.892973, 36.113644, 36.475094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.091698, 35.822906, 36.285408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283247, 0.380695, -0.880251,
		0.820334, 0.571640, -0.016742,
		0.496813, -0.726842, -0.474213,
		26.240742, 35.604855, 36.143143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.368139, 36.334183, 35.998112>,  <25.892973, 36.113644, 36.475094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.368139, 36.334183, 35.998112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.213436, 35.989044, 35.867931>,  <26.120613, 35.781960, 35.789825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.213436, 35.989044, 35.867931>,  <26.368139, 36.334183, 35.998112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.213436, 35.989044, 35.867931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140375, 0.403881, -0.903977,
		0.911434, -0.303936, -0.277327,
		-0.386759, -0.862846, -0.325447,
		26.097408, 35.730190, 35.770298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.599749, 36.257580, 35.316189>,  <26.368139, 36.334183, 35.998112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.599749, 36.257580, 35.316189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.263247, 36.044498, 35.353096>,  <26.061346, 35.916649, 35.375240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.263247, 36.044498, 35.353096>,  <26.599749, 36.257580, 35.316189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.263247, 36.044498, 35.353096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276564, 0.277392, -0.920090,
		0.464546, -0.799547, -0.380685,
		-0.841254, -0.532708, 0.092264,
		26.010870, 35.884686, 35.380775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.617624, 35.868141, 34.722683>,  <26.599749, 36.257580, 35.316189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.617624, 35.868141, 34.722683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.251768, 35.929272, 34.872391>,  <26.032255, 35.965950, 34.962215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.251768, 35.929272, 34.872391>,  <26.617624, 35.868141, 34.722683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.251768, 35.929272, 34.872391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292185, 0.389939, -0.873256,
		-0.279397, -0.908071, -0.312001,
		-0.914639, 0.152823, 0.374273,
		25.977377, 35.975117, 34.984673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.234976, 35.672215, 34.138363>,  <26.617624, 35.868141, 34.722683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.234976, 35.672215, 34.138363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.006376, 35.877197, 34.394730>,  <25.869217, 36.000187, 34.548550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.006376, 35.877197, 34.394730>,  <26.234976, 35.672215, 34.138363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.006376, 35.877197, 34.394730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572698, 0.310298, -0.758770,
		-0.587713, -0.800689, 0.116149,
		-0.571498, 0.512458, 0.640919,
		25.834927, 36.030933, 34.587006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.881266, 35.352795, 33.904228>,  <26.234976, 35.672215, 34.138363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.881266, 35.352795, 33.904228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.211998, 35.183846, 34.052799>,  <27.410437, 35.082478, 34.141941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.211998, 35.183846, 34.052799>,  <26.881266, 35.352795, 33.904228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.211998, 35.183846, 34.052799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078518, 0.740575, 0.667370,
		-0.556945, -0.522638, 0.645494,
		0.826830, -0.422371, 0.371423,
		27.460047, 35.057133, 34.164227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.570324, 35.303871, 33.510914>,  <26.881266, 35.352795, 33.904228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.570324, 35.303871, 33.510914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.923130, 35.326035, 33.323730>,  <28.134813, 35.339333, 33.211422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.923130, 35.326035, 33.323730>,  <27.570324, 35.303871, 33.510914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.923130, 35.326035, 33.323730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292892, 0.713468, 0.636535,
		0.369141, -0.698493, 0.613060,
		0.882014, 0.055410, -0.467953,
		28.187735, 35.342659, 33.183346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.103468, 35.125935, 33.927151>,  <27.570324, 35.303871, 33.510914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.103468, 35.125935, 33.927151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.229916, 35.395451, 33.659992>,  <28.305784, 35.557159, 33.499699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.229916, 35.395451, 33.659992>,  <28.103468, 35.125935, 33.927151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.229916, 35.395451, 33.659992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345600, 0.573837, 0.742477,
		0.883532, -0.465535, -0.051460,
		0.316119, 0.673787, -0.667892,
		28.324751, 35.597588, 33.459625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.820696, 35.332317, 34.138653>,  <28.103468, 35.125935, 33.927151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.820696, 35.332317, 34.138653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.620665, 35.615509, 33.939182>,  <28.500645, 35.785423, 33.819500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.620665, 35.615509, 33.939182>,  <28.820696, 35.332317, 34.138653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.620665, 35.615509, 33.939182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321487, 0.686480, 0.652220,
		0.804093, 0.165844, -0.570903,
		-0.500080, 0.707983, -0.498678,
		28.470640, 35.827904, 33.789577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.279663, 35.848755, 34.125187>,  <28.820696, 35.332317, 34.138653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.279663, 35.848755, 34.125187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.913399, 36.004234, 34.084244>,  <28.693640, 36.097523, 34.059677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.913399, 36.004234, 34.084244>,  <29.279663, 35.848755, 34.125187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.913399, 36.004234, 34.084244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258612, 0.764654, 0.590274,
		0.307707, 0.514020, -0.800687,
		-0.915662, 0.388699, -0.102358,
		28.638700, 36.120846, 34.053535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.418858, 36.579540, 34.040916>,  <29.279663, 35.848755, 34.125187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.418858, 36.579540, 34.040916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.031881, 36.548222, 34.137188>,  <28.799696, 36.529430, 34.194950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.031881, 36.548222, 34.137188>,  <29.418858, 36.579540, 34.040916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.031881, 36.548222, 34.137188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094857, 0.769464, 0.631607,
		-0.234652, 0.633873, -0.736983,
		-0.967440, -0.078300, 0.240683,
		28.741650, 36.524731, 34.209393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.144686, 37.320854, 34.212158>,  <29.418858, 36.579540, 34.040916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.144686, 37.320854, 34.212158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.939930, 37.044357, 34.416176>,  <28.817076, 36.878460, 34.538586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.939930, 37.044357, 34.416176>,  <29.144686, 37.320854, 34.212158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.939930, 37.044357, 34.416176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316855, 0.399942, 0.860029,
		-0.798480, 0.601851, 0.014298,
		-0.511891, -0.691247, 0.510045,
		28.786362, 36.836983, 34.569191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.474142, 37.523956, 34.319935>,  <29.144686, 37.320854, 34.212158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.474142, 37.523956, 34.319935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.253393, 37.266560, 34.532104>,  <28.120943, 37.112122, 34.659409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.253393, 37.266560, 34.532104>,  <28.474142, 37.523956, 34.319935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.253393, 37.266560, 34.532104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223378, 0.498748, 0.837468,
		-0.803455, 0.580662, -0.131503,
		-0.551872, -0.643492, 0.530429,
		28.087831, 37.073513, 34.691235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.307003, 37.980789, 34.758869>,  <28.474142, 37.523956, 34.319935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.307003, 37.980789, 34.758869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.313560, 37.613197, 34.916454>,  <28.317495, 37.392643, 35.011005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.313560, 37.613197, 34.916454>,  <28.307003, 37.980789, 34.758869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.313560, 37.613197, 34.916454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303870, 0.379958, 0.873668,
		-0.952573, 0.105391, 0.285479,
		0.016394, -0.918980, 0.393963,
		28.318480, 37.337502, 35.034645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.790819, 37.907272, 35.379147>,  <28.307003, 37.980789, 34.758869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.790819, 37.907272, 35.379147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.091509, 37.645908, 35.414845>,  <28.271923, 37.489090, 35.436264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.091509, 37.645908, 35.414845>,  <27.790819, 37.907272, 35.379147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.091509, 37.645908, 35.414845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172060, 0.324961, 0.929944,
		-0.636636, -0.683706, 0.356707,
		0.751725, -0.653411, 0.089244,
		28.317026, 37.449886, 35.441616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.727814, 37.265408, 35.880058>,  <27.790819, 37.907272, 35.379147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.727814, 37.265408, 35.880058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.097483, 37.407387, 35.823601>,  <28.319284, 37.492573, 35.789726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.097483, 37.407387, 35.823601>,  <27.727814, 37.265408, 35.880058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.097483, 37.407387, 35.823601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034935, 0.289427, 0.956562,
		0.380378, -0.888958, 0.255080,
		0.924171, 0.354944, -0.141148,
		28.374735, 37.513870, 35.781258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.133160, 37.121899, 36.516071>,  <27.727814, 37.265408, 35.880058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.133160, 37.121899, 36.516071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.248123, 37.448330, 36.315506>,  <28.317101, 37.644188, 36.195168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.248123, 37.448330, 36.315506>,  <28.133160, 37.121899, 36.516071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.248123, 37.448330, 36.315506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041127, 0.533536, 0.844777,
		0.956925, -0.222175, 0.186905,
		0.287409, 0.816075, -0.501416,
		28.334345, 37.693153, 36.165081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.726583, 37.444374, 36.892521>,  <28.133160, 37.121899, 36.516071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.726583, 37.444374, 36.892521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.486683, 37.701405, 36.701778>,  <28.342743, 37.855625, 36.587334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.486683, 37.701405, 36.701778>,  <28.726583, 37.444374, 36.892521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.486683, 37.701405, 36.701778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042069, 0.569784, 0.820717,
		0.799078, 0.512289, -0.314697,
		-0.599754, 0.642578, -0.476853,
		28.306757, 37.894176, 36.558723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.397020, 37.510433, 36.266823>,  <28.726583, 37.444374, 36.892521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.397020, 37.510433, 36.266823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.064327, 37.288807, 36.280834>,  <28.864712, 37.155830, 36.289242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.064327, 37.288807, 36.280834>,  <29.397020, 37.510433, 36.266823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.064327, 37.288807, 36.280834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228087, 0.283508, -0.931450,
		0.506160, -0.782706, -0.362179,
		-0.831732, -0.554071, 0.035025,
		28.814808, 37.122585, 36.291344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.357597, 37.060932, 35.675327>,  <29.397020, 37.510433, 36.266823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.357597, 37.060932, 35.675327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.977139, 37.082100, 35.796997>,  <28.748863, 37.094799, 35.869999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.977139, 37.082100, 35.796997>,  <29.357597, 37.060932, 35.675327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.977139, 37.082100, 35.796997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308318, -0.111227, -0.944759,
		-0.016159, -0.992385, 0.122107,
		-0.951146, 0.052914, 0.304173,
		28.691795, 37.097977, 35.888248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.018728, 36.414753, 35.706177>,  <29.357597, 37.060932, 35.675327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.018728, 36.414753, 35.706177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.775040, 36.721191, 35.624260>,  <28.628826, 36.905056, 35.575108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.775040, 36.721191, 35.624260>,  <29.018728, 36.414753, 35.706177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.775040, 36.721191, 35.624260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208104, -0.403655, -0.890930,
		-0.765207, -0.500155, 0.405343,
		-0.609221, 0.766099, -0.204795,
		28.592274, 36.951019, 35.562820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.462170, 36.142765, 35.460884>,  <29.018728, 36.414753, 35.706177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.462170, 36.142765, 35.460884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.463329, 36.512291, 35.307751>,  <28.464025, 36.734005, 35.215870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.463329, 36.512291, 35.307751>,  <28.462170, 36.142765, 35.460884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.463329, 36.512291, 35.307751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276204, -0.367205, -0.888184,
		-0.961094, 0.108316, 0.254096,
		0.002900, 0.923812, -0.382836,
		28.464199, 36.789436, 35.192902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.844261, 36.309639, 35.141380>,  <28.462170, 36.142765, 35.460884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.844261, 36.309639, 35.141380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.146639, 36.496933, 34.958378>,  <28.328066, 36.609310, 34.848576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.146639, 36.496933, 34.958378>,  <27.844261, 36.309639, 35.141380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.146639, 36.496933, 34.958378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324333, -0.339186, -0.883041,
		-0.568646, 0.815912, -0.104542,
		0.755943, 0.468231, -0.457504,
		28.373423, 36.637402, 34.821125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.506390, 36.505016, 34.471497>,  <27.844261, 36.309639, 35.141380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.506390, 36.505016, 34.471497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.898211, 36.500854, 34.391125>,  <28.133303, 36.498356, 34.342903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.898211, 36.500854, 34.391125>,  <27.506390, 36.505016, 34.471497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.898211, 36.500854, 34.391125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188952, -0.390649, -0.900939,
		-0.069114, 0.920481, -0.384627,
		0.979551, -0.010409, -0.200926,
		28.192076, 36.497730, 34.330849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.507008, 36.714428, 33.799782>,  <27.506390, 36.505016, 34.471497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.507008, 36.714428, 33.799782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.838074, 36.504459, 33.879200>,  <28.036715, 36.378479, 33.926853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.838074, 36.504459, 33.879200>,  <27.507008, 36.714428, 33.799782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.838074, 36.504459, 33.879200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134874, -0.529456, -0.837547,
		0.544771, 0.666432, -0.509012,
		0.827668, -0.524924, 0.198547,
		28.086374, 36.346981, 33.938763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.655621, 36.539761, 33.140484>,  <27.507008, 36.714428, 33.799782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.655621, 36.539761, 33.140484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.928858, 36.333153, 33.347015>,  <28.092800, 36.209190, 33.470936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.928858, 36.333153, 33.347015>,  <27.655621, 36.539761, 33.140484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.928858, 36.333153, 33.347015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040560, -0.732717, -0.679323,
		0.729204, 0.443098, -0.521464,
		0.683093, -0.516516, 0.516328,
		28.133785, 36.178200, 33.501915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.303299, 36.519421, 32.672932>,  <27.655621, 36.539761, 33.140484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.303299, 36.519421, 32.672932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.213326, 36.227577, 32.931255>,  <28.159342, 36.052471, 33.086250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.213326, 36.227577, 32.931255>,  <28.303299, 36.519421, 32.672932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.213326, 36.227577, 32.931255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157267, -0.626921, -0.763044,
		0.961598, -0.273201, 0.026273,
		-0.224935, -0.729610, 0.645812,
		28.145845, 36.008694, 33.125000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.708881, 35.744827, 32.755516>,  <28.303299, 36.519421, 32.672932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.708881, 35.744827, 32.755516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.310108, 35.730343, 32.783268>,  <28.070845, 35.721653, 32.799919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.310108, 35.730343, 32.783268>,  <28.708881, 35.744827, 32.755516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.310108, 35.730343, 32.783268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037961, -0.551525, -0.833294,
		0.068435, -0.833372, 0.548460,
		-0.996933, -0.036207, 0.069379,
		28.011028, 35.719482, 32.804081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.441687, 34.974556, 32.722939>,  <28.708881, 35.744827, 32.755516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.441687, 34.974556, 32.722939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.216423, 35.273590, 32.582104>,  <28.081264, 35.453011, 32.497601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.216423, 35.273590, 32.582104>,  <28.441687, 34.974556, 32.722939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.216423, 35.273590, 32.582104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108922, -0.489517, -0.865164,
		-0.819138, -0.448875, 0.357105,
		-0.563160, 0.747585, -0.352090,
		28.047476, 35.497864, 32.476479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.660833, 34.758869, 32.634735>,  <28.441687, 34.974556, 32.722939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.660833, 34.758869, 32.634735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.833218, 35.003895, 32.369694>,  <27.936647, 35.150909, 32.210670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.833218, 35.003895, 32.369694>,  <27.660833, 34.758869, 32.634735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.833218, 35.003895, 32.369694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187203, -0.657620, -0.729720,
		-0.882739, 0.438520, -0.168734,
		0.430959, 0.612565, -0.662599,
		27.962505, 35.187664, 32.170914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.323942, 34.639439, 32.026875>,  <27.660833, 34.758869, 32.634735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.323942, 34.639439, 32.026875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.669636, 34.807018, 31.915461>,  <27.877052, 34.907566, 31.848612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.669636, 34.807018, 31.915461>,  <27.323942, 34.639439, 32.026875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.669636, 34.807018, 31.915461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124696, -0.714757, -0.688167,
		-0.487391, 0.560005, -0.669958,
		0.864234, 0.418947, -0.278536,
		27.928905, 34.932701, 31.831900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.265512, 34.661797, 31.330780>,  <27.323942, 34.639439, 32.026875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.265512, 34.661797, 31.330780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.657158, 34.701332, 31.401848>,  <27.892145, 34.725052, 31.444489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.657158, 34.701332, 31.401848>,  <27.265512, 34.661797, 31.330780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.657158, 34.701332, 31.401848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200628, -0.611234, -0.765598,
		0.032929, 0.785254, -0.618298,
		0.979114, 0.098838, 0.177671,
		27.950891, 34.730984, 31.455149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.556398, 34.705997, 30.681091>,  <27.265512, 34.661797, 31.330780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.556398, 34.705997, 30.681091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.874157, 34.608608, 30.903677>,  <28.064812, 34.550175, 31.037228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.874157, 34.608608, 30.903677>,  <27.556398, 34.705997, 30.681091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.874157, 34.608608, 30.903677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351620, -0.562681, -0.748167,
		0.495272, 0.790006, -0.361381,
		0.794398, -0.243477, 0.556462,
		28.112476, 34.535564, 31.070616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.242949, 34.775360, 30.251129>,  <27.556398, 34.705997, 30.681091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.242949, 34.775360, 30.251129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.299355, 34.508247, 30.543480>,  <28.333199, 34.347980, 30.718889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.299355, 34.508247, 30.543480>,  <28.242949, 34.775360, 30.251129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.299355, 34.508247, 30.543480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351811, -0.656264, -0.667492,
		0.925389, 0.351256, 0.142391,
		0.141014, -0.667785, 0.730875,
		28.341660, 34.307911, 30.762743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.824451, 34.418591, 30.006767>,  <28.242949, 34.775360, 30.251129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.824451, 34.418591, 30.006767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.667658, 34.192902, 30.297422>,  <28.573582, 34.057487, 30.471815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.667658, 34.192902, 30.297422>,  <28.824451, 34.418591, 30.006767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.667658, 34.192902, 30.297422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145448, -0.817923, -0.556638,
		0.908401, -0.112506, 0.402678,
		-0.391985, -0.564219, 0.726639,
		28.550062, 34.023636, 30.515413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.297178, 33.874458, 30.155443>,  <28.824451, 34.418591, 30.006767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.297178, 33.874458, 30.155443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.905411, 33.802177, 30.191416>,  <28.670351, 33.758808, 30.212999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.905411, 33.802177, 30.191416>,  <29.297178, 33.874458, 30.155443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.905411, 33.802177, 30.191416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106621, -0.841486, -0.529655,
		0.171384, -0.509165, 0.843433,
		-0.979418, -0.180702, 0.089930,
		28.611586, 33.747967, 30.218395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.223492, 33.201656, 30.381630>,  <29.297178, 33.874458, 30.155443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.223492, 33.201656, 30.381630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.901686, 33.318851, 30.174974>,  <28.708603, 33.389168, 30.050982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.901686, 33.318851, 30.174974>,  <29.223492, 33.201656, 30.381630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.901686, 33.318851, 30.174974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004993, -0.873165, -0.487399,
		-0.593912, -0.389540, 0.703937,
		-0.804515, 0.292987, -0.516638,
		28.660332, 33.406746, 30.019983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.589596, 32.768730, 30.501408>,  <29.223492, 33.201656, 30.381630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.589596, 32.768730, 30.501408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.554094, 32.947258, 30.145222>,  <28.532793, 33.054375, 29.931511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.554094, 32.947258, 30.145222>,  <28.589596, 32.768730, 30.501408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.554094, 32.947258, 30.145222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042069, -0.891514, -0.451035,
		-0.995165, -0.077491, 0.060347,
		-0.088752, 0.446316, -0.890463,
		28.527470, 33.081154, 29.878082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.051331, 33.046455, 30.887115>,  <28.589596, 32.768730, 30.501408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.051331, 33.046455, 30.887115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.394239, 33.239697, 30.815893>,  <28.599985, 33.355640, 30.773159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.394239, 33.239697, 30.815893>,  <28.051331, 33.046455, 30.887115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.394239, 33.239697, 30.815893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269459, 0.715659, 0.644378,
		0.438726, -0.504427, 0.743688,
		0.857270, 0.483099, -0.178056,
		28.651421, 33.384624, 30.762476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.353569, 33.057335, 31.514297>,  <28.051331, 33.046455, 30.887115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.353569, 33.057335, 31.514297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.419373, 33.357677, 31.258436>,  <28.458855, 33.537884, 31.104919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.419373, 33.357677, 31.258436>,  <28.353569, 33.057335, 31.514297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.419373, 33.357677, 31.258436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168828, 0.660351, 0.731733,
		0.971820, -0.012387, 0.235400,
		0.164510, 0.750855, -0.639651,
		28.468725, 33.582935, 31.066542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.702045, 33.582642, 31.798388>,  <28.353569, 33.057335, 31.514297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.702045, 33.582642, 31.798388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.590540, 33.803280, 31.483927>,  <28.523636, 33.935661, 31.295250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.590540, 33.803280, 31.483927>,  <28.702045, 33.582642, 31.798388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.590540, 33.803280, 31.483927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078877, 0.802685, 0.591164,
		0.957115, 0.226804, -0.180252,
		-0.278764, 0.551594, -0.786151,
		28.506910, 33.968758, 31.248081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.176456, 34.199360, 31.713726>,  <28.702045, 33.582642, 31.798388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.176456, 34.199360, 31.713726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.839920, 34.291473, 31.518131>,  <28.637999, 34.346741, 31.400774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.839920, 34.291473, 31.518131>,  <29.176456, 34.199360, 31.713726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.839920, 34.291473, 31.518131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064920, 0.855089, 0.514402,
		0.536589, 0.464533, -0.704472,
		-0.841343, 0.230288, -0.488988,
		28.587517, 34.360561, 31.371435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.260445, 34.888161, 31.570866>,  <29.176456, 34.199360, 31.713726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.260445, 34.888161, 31.570866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.863626, 34.843178, 31.548237>,  <28.625536, 34.816189, 31.534658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.863626, 34.843178, 31.548237>,  <29.260445, 34.888161, 31.570866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.863626, 34.843178, 31.548237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125439, 0.845301, 0.519358,
		-0.010583, 0.522323, -0.852683,
		-0.992045, -0.112456, -0.056574,
		28.566013, 34.809441, 31.531265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.033539, 35.517338, 31.091787>,  <29.260445, 34.888161, 31.570866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.033539, 35.517338, 31.091787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.761656, 35.375034, 31.348360>,  <28.598526, 35.289654, 31.502304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.761656, 35.375034, 31.348360>,  <29.033539, 35.517338, 31.091787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.761656, 35.375034, 31.348360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273972, 0.934347, 0.227894,
		-0.680393, -0.020832, -0.732552,
		-0.679710, -0.355756, 0.641430,
		28.557743, 35.268307, 31.540789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.238016, 36.188667, 30.770853>,  <29.033539, 35.517338, 31.091787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.238016, 36.188667, 30.770853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.547945, 36.411636, 30.890133>,  <29.733902, 36.545418, 30.961700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.547945, 36.411636, 30.890133>,  <29.238016, 36.188667, 30.770853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.547945, 36.411636, 30.890133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469119, -0.190795, -0.862279,
		-0.423762, 0.808006, -0.409332,
		0.774825, 0.557426, 0.298199,
		29.780392, 36.578865, 30.979593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.409897, 36.563488, 30.181229>,  <29.238016, 36.188667, 30.770853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.409897, 36.563488, 30.181229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.743511, 36.586506, 30.400709>,  <29.943680, 36.600315, 30.532398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.743511, 36.586506, 30.400709>,  <29.409897, 36.563488, 30.181229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.743511, 36.586506, 30.400709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546593, 0.048981, -0.835965,
		-0.074978, 0.997141, 0.009401,
		0.834035, 0.057540, 0.548703,
		29.993721, 36.603767, 30.565319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.885836, 36.948383, 29.772545>,  <29.409897, 36.563488, 30.181229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.885836, 36.948383, 29.772545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.127537, 36.757347, 30.027666>,  <30.272556, 36.642727, 30.180738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.127537, 36.757347, 30.027666>,  <29.885836, 36.948383, 29.772545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.127537, 36.757347, 30.027666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645494, -0.175884, -0.743238,
		0.467139, 0.860800, 0.202001,
		0.604250, -0.477586, 0.637803,
		30.308811, 36.614071, 30.219007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.426659, 36.990223, 29.424379>,  <29.885836, 36.948383, 29.772545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.426659, 36.990223, 29.424379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.542475, 36.723148, 29.698711>,  <30.611965, 36.562904, 29.863310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.542475, 36.723148, 29.698711>,  <30.426659, 36.990223, 29.424379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.542475, 36.723148, 29.698711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618495, -0.416333, -0.666431,
		0.730501, 0.617141, 0.292415,
		0.289540, -0.667686, 0.685830,
		30.629337, 36.522842, 29.904461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.155306, 37.030949, 29.437517>,  <30.426659, 36.990223, 29.424379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.155306, 37.030949, 29.437517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.060249, 36.676311, 29.596252>,  <31.003216, 36.463528, 29.691494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.060249, 36.676311, 29.596252>,  <31.155306, 37.030949, 29.437517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.060249, 36.676311, 29.596252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660176, -0.447098, -0.603548,
		0.712527, 0.118555, 0.691556,
		-0.237640, -0.886593, 0.396837,
		30.988956, 36.410332, 29.715303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.823259, 36.681244, 29.531363>,  <31.155306, 37.030949, 29.437517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.823259, 36.681244, 29.531363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.542721, 36.396214, 29.523899>,  <31.374397, 36.225193, 29.519421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.542721, 36.396214, 29.523899>,  <31.823259, 36.681244, 29.531363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.542721, 36.396214, 29.523899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556334, -0.530823, -0.639311,
		0.445653, -0.458759, 0.768722,
		-0.701345, -0.712578, -0.018660,
		31.332317, 36.182442, 29.518301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.098007, 36.089447, 29.489943>,  <31.823259, 36.681244, 29.531363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.098007, 36.089447, 29.489943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.744766, 35.957432, 29.356554>,  <31.532822, 35.878223, 29.276522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.744766, 35.957432, 29.356554>,  <32.098007, 36.089447, 29.489943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.744766, 35.957432, 29.356554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463872, -0.507568, -0.726083,
		0.070379, -0.795894, 0.601332,
		-0.883102, -0.330042, -0.333471,
		31.479836, 35.858418, 29.256512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.235989, 35.383053, 29.322205>,  <32.098007, 36.089447, 29.489943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.235989, 35.383053, 29.322205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.886292, 35.452530, 29.140863>,  <31.676474, 35.494217, 29.032059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.886292, 35.452530, 29.140863>,  <32.235989, 35.383053, 29.322205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.886292, 35.452530, 29.140863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319919, -0.496271, -0.807073,
		-0.365169, -0.850614, 0.378294,
		-0.874245, 0.173695, -0.453351,
		31.624018, 35.504639, 29.004858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.036804, 34.723431, 29.009598>,  <32.235989, 35.383053, 29.322205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.036804, 34.723431, 29.009598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.828348, 34.992241, 28.799150>,  <31.703274, 35.153526, 28.672882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.828348, 34.992241, 28.799150>,  <32.036804, 34.723431, 29.009598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.828348, 34.992241, 28.799150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376710, -0.372025, -0.848343,
		-0.765834, -0.640299, -0.059280,
		-0.521140, 0.672022, -0.526117,
		31.672007, 35.193848, 28.641315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.787230, 34.311440, 28.419525>,  <32.036804, 34.723431, 29.009598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.787230, 34.311440, 28.419525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.755322, 34.694702, 28.309563>,  <31.736177, 34.924660, 28.243586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.755322, 34.694702, 28.309563>,  <31.787230, 34.311440, 28.419525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.755322, 34.694702, 28.309563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399595, -0.221916, -0.889425,
		-0.913214, -0.180800, -0.365173,
		-0.079770, 0.958157, -0.274904,
		31.731390, 34.982151, 28.227091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.614882, 34.252930, 27.674484>,  <31.787230, 34.311440, 28.419525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.614882, 34.252930, 27.674484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.756287, 34.622372, 27.733782>,  <31.841129, 34.844036, 27.769360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.756287, 34.622372, 27.733782>,  <31.614882, 34.252930, 27.674484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.756287, 34.622372, 27.733782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298663, 0.038738, -0.953572,
		-0.886470, 0.381375, -0.262153,
		0.353514, 0.923608, 0.148243,
		31.862341, 34.899456, 27.778255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.300476, 34.639053, 27.137585>,  <31.614882, 34.252930, 27.674484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.300476, 34.639053, 27.137585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.606531, 34.849564, 27.285963>,  <31.790165, 34.975868, 27.374990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.606531, 34.849564, 27.285963>,  <31.300476, 34.639053, 27.137585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.606531, 34.849564, 27.285963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197262, 0.356817, -0.913110,
		-0.612906, 0.771828, 0.169200,
		0.765137, 0.526274, 0.370947,
		31.836073, 35.007446, 27.397247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.296459, 35.283127, 26.704023>,  <31.300476, 34.639053, 27.137585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.296459, 35.283127, 26.704023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.661690, 35.233448, 26.859390>,  <31.880827, 35.203640, 26.952610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.661690, 35.233448, 26.859390>,  <31.296459, 35.283127, 26.704023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.661690, 35.233448, 26.859390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406954, 0.216414, -0.887442,
		0.026162, 0.968369, 0.248146,
		0.913074, -0.124201, 0.388420,
		31.935612, 35.196186, 26.975916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.665022, 35.878399, 26.532185>,  <31.296459, 35.283127, 26.704023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.665022, 35.878399, 26.532185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.949993, 35.611919, 26.620392>,  <32.120975, 35.452034, 26.673317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.949993, 35.611919, 26.620392>,  <31.665022, 35.878399, 26.532185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.949993, 35.611919, 26.620392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550579, 0.335810, -0.764261,
		0.435094, 0.665895, 0.606034,
		0.712430, -0.666195, 0.220519,
		32.163723, 35.412060, 26.686548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.126469, 36.277340, 26.535809>,  <31.665022, 35.878399, 26.532185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.126469, 36.277340, 26.535809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.281353, 35.912224, 26.483852>,  <32.374283, 35.693153, 26.452679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.281353, 35.912224, 26.483852>,  <32.126469, 36.277340, 26.535809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.281353, 35.912224, 26.483852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426416, 0.302206, -0.852550,
		0.817456, 0.274734, 0.506248,
		0.387215, -0.912794, -0.129889,
		32.397518, 35.638386, 26.444885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.740047, 36.413795, 26.422356>,  <32.126469, 36.277340, 26.535809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.740047, 36.413795, 26.422356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.663929, 36.052467, 26.268579>,  <32.618256, 35.835670, 26.176313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.663929, 36.052467, 26.268579>,  <32.740047, 36.413795, 26.422356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.663929, 36.052467, 26.268579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273601, 0.327281, -0.904450,
		0.942830, -0.277300, 0.184869,
		-0.190300, -0.903323, -0.384440,
		32.606838, 35.781471, 26.153248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.243416, 36.273899, 25.858549>,  <32.740047, 36.413795, 26.422356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.243416, 36.273899, 25.858549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.009922, 35.961246, 25.770639>,  <32.869827, 35.773655, 25.717894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.009922, 35.961246, 25.770639>,  <33.243416, 36.273899, 25.858549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.009922, 35.961246, 25.770639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136758, 0.172160, -0.975530,
		0.800345, -0.599506, 0.006399,
		-0.583735, -0.781635, -0.219775,
		32.834801, 35.726757, 25.704706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.512718, 36.017525, 25.272438>,  <33.243416, 36.273899, 25.858549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.512718, 36.017525, 25.272438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.142193, 35.867008, 25.265055>,  <32.919876, 35.776699, 25.260624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.142193, 35.867008, 25.265055>,  <33.512718, 36.017525, 25.272438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.142193, 35.867008, 25.265055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014498, 0.084569, -0.996312,
		0.376465, -0.922634, -0.083793,
		-0.926318, -0.376291, -0.018460,
		32.864296, 35.754120, 25.259516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.450672, 35.642124, 24.590467>,  <33.512718, 36.017525, 25.272438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.450672, 35.642124, 24.590467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.066135, 35.673683, 24.695995>,  <32.835415, 35.692619, 24.759312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.066135, 35.673683, 24.695995>,  <33.450672, 35.642124, 24.590467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.066135, 35.673683, 24.695995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250862, 0.144156, -0.957229,
		-0.113554, -0.986405, -0.118791,
		-0.961339, 0.078897, 0.263821,
		32.777733, 35.697353, 24.775141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.042992, 35.111717, 24.222733>,  <33.450672, 35.642124, 24.590467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.042992, 35.111717, 24.222733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.802689, 35.410778, 24.335941>,  <32.658504, 35.590214, 24.403866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.802689, 35.410778, 24.335941>,  <33.042992, 35.111717, 24.222733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.802689, 35.410778, 24.335941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295241, 0.121500, -0.947666,
		-0.742913, -0.652880, 0.147745,
		-0.600761, 0.747654, 0.283021,
		32.622459, 35.635075, 24.420847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.476776, 34.899166, 23.985634>,  <33.042992, 35.111717, 24.222733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.476776, 34.899166, 23.985634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.438248, 35.293041, 24.043766>,  <32.415131, 35.529366, 24.078646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.438248, 35.293041, 24.043766>,  <32.476776, 34.899166, 23.985634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.438248, 35.293041, 24.043766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245237, 0.118030, -0.962252,
		-0.964666, -0.128327, 0.230112,
		-0.096322, 0.984683, 0.145330,
		32.409351, 35.588448, 24.087364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.995367, 35.094177, 23.597998>,  <32.476776, 34.899166, 23.985634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.995367, 35.094177, 23.597998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.146038, 35.459839, 23.657907>,  <32.236443, 35.679237, 23.693853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.146038, 35.459839, 23.657907>,  <31.995367, 35.094177, 23.597998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.146038, 35.459839, 23.657907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142538, 0.216954, -0.965719,
		-0.915312, 0.342417, 0.212024,
		0.376678, 0.914156, 0.149774,
		32.259041, 35.734085, 23.702839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.590322, 35.475300, 23.219919>,  <31.995367, 35.094177, 23.597998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.590322, 35.475300, 23.219919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.897762, 35.724419, 23.278408>,  <32.082226, 35.873890, 23.313501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.897762, 35.724419, 23.278408>,  <31.590322, 35.475300, 23.219919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.897762, 35.724419, 23.278408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093600, 0.335588, -0.937347,
		-0.632848, 0.706757, 0.316225,
		0.768598, 0.622797, 0.146224,
		32.128342, 35.911259, 23.322275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.362589, 36.005432, 22.868450>,  <31.590322, 35.475300, 23.219919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.362589, 36.005432, 22.868450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.758158, 36.045071, 22.912663>,  <31.995499, 36.068851, 22.939190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.758158, 36.045071, 22.912663>,  <31.362589, 36.005432, 22.868450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.758158, 36.045071, 22.912663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063901, 0.387911, -0.919479,
		-0.133992, 0.916354, 0.377281,
		0.988920, 0.099095, 0.110533,
		32.054832, 36.074799, 22.945822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.484341, 36.529102, 22.451880>,  <31.362589, 36.005432, 22.868450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.484341, 36.529102, 22.451880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.855864, 36.386684, 22.492970>,  <32.078777, 36.301235, 22.517624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.855864, 36.386684, 22.492970>,  <31.484341, 36.529102, 22.451880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.855864, 36.386684, 22.492970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230086, 0.336805, -0.913029,
		0.290479, 0.871663, 0.394747,
		0.928807, -0.356042, 0.102723,
		32.134506, 36.279873, 22.523787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.935385, 37.014549, 22.180067>,  <31.484341, 36.529102, 22.451880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.935385, 37.014549, 22.180067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.158756, 36.682831, 22.171846>,  <32.292778, 36.483799, 22.166914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.158756, 36.682831, 22.171846>,  <31.935385, 37.014549, 22.180067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.158756, 36.682831, 22.171846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299585, 0.224710, -0.927229,
		0.773567, 0.511635, 0.373930,
		0.558429, -0.829298, -0.020550,
		32.326286, 36.434040, 22.165682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.625053, 37.283535, 21.977217>,  <31.935385, 37.014549, 22.180067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.625053, 37.283535, 21.977217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.613453, 36.891266, 21.899824>,  <32.606491, 36.655903, 21.853390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.613453, 36.891266, 21.899824>,  <32.625053, 37.283535, 21.977217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.613453, 36.891266, 21.899824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356355, 0.170698, -0.918626,
		0.933901, -0.095592, 0.344517,
		-0.029005, -0.980676, -0.193479,
		32.604752, 36.597065, 21.841780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.310768, 36.999138, 21.833292>,  <32.625053, 37.283535, 21.977217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.310768, 36.999138, 21.833292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.069065, 36.719765, 21.679899>,  <32.924042, 36.552139, 21.587864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.069065, 36.719765, 21.679899>,  <33.310768, 36.999138, 21.833292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.069065, 36.719765, 21.679899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411106, 0.138988, -0.900930,
		0.682540, -0.702047, 0.203146,
		-0.604260, -0.698435, -0.383481,
		32.887787, 36.510235, 21.564856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.701077, 36.761082, 21.434849>,  <33.310768, 36.999138, 21.833292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.701077, 36.761082, 21.434849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.348946, 36.641266, 21.287714>,  <33.137669, 36.569378, 21.199432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.348946, 36.641266, 21.287714>,  <33.701077, 36.761082, 21.434849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.348946, 36.641266, 21.287714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347548, 0.120493, -0.929888,
		0.322858, -0.946445, -0.001970,
		-0.880325, -0.299537, -0.367837,
		33.084846, 36.551403, 21.177362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.831825, 36.217064, 20.918346>,  <33.701077, 36.761082, 21.434849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.831825, 36.217064, 20.918346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.489273, 36.414295, 20.857058>,  <33.283741, 36.532635, 20.820284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.489273, 36.414295, 20.857058>,  <33.831825, 36.217064, 20.918346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.489273, 36.414295, 20.857058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279073, 0.192338, -0.940810,
		-0.434427, -0.848454, -0.302322,
		-0.856383, 0.493083, -0.153224,
		33.232357, 36.562222, 20.811090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.827835, 36.121807, 20.166981>,  <33.831825, 36.217064, 20.918346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.827835, 36.121807, 20.166981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.556942, 36.399910, 20.263296>,  <33.394405, 36.566772, 20.321085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.556942, 36.399910, 20.263296>,  <33.827835, 36.121807, 20.166981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.556942, 36.399910, 20.263296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279299, 0.545685, -0.790076,
		-0.680701, -0.467810, -0.563738,
		-0.677229, 0.695257, 0.240789,
		33.353775, 36.608486, 20.335533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.531643, 36.378288, 19.479784>,  <33.827835, 36.121807, 20.166981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.531643, 36.378288, 19.479784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.462048, 36.672466, 19.741730>,  <33.420292, 36.848972, 19.898897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.462048, 36.672466, 19.741730>,  <33.531643, 36.378288, 19.479784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.462048, 36.672466, 19.741730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252123, 0.676108, -0.692323,
		-0.951926, 0.044651, -0.303057,
		-0.173986, 0.735448, 0.654863,
		33.409851, 36.893101, 19.938189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.176960, 36.802593, 19.128704>,  <33.531643, 36.378288, 19.479784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.176960, 36.802593, 19.128704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.332474, 37.008297, 19.434484>,  <33.425781, 37.131718, 19.617952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.332474, 37.008297, 19.434484>,  <33.176960, 36.802593, 19.128704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.332474, 37.008297, 19.434484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391790, 0.658685, -0.642367,
		-0.833875, 0.549246, 0.054606,
		0.388786, 0.514259, 0.764449,
		33.449108, 37.162575, 19.663820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.038845, 37.498741, 18.908155>,  <33.176960, 36.802593, 19.128704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.038845, 37.498741, 18.908155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.309082, 37.510296, 19.202839>,  <33.471226, 37.517227, 19.379648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.309082, 37.510296, 19.202839>,  <33.038845, 37.498741, 18.908155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.309082, 37.510296, 19.202839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422772, 0.803450, -0.419204,
		-0.604017, 0.594671, 0.530593,
		0.675593, 0.028886, 0.736708,
		33.511761, 37.518963, 19.423851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.070602, 38.247864, 19.023457>,  <33.038845, 37.498741, 18.908155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.070602, 38.247864, 19.023457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.401588, 38.071548, 19.162596>,  <33.600182, 37.965759, 19.246078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.401588, 38.071548, 19.162596>,  <33.070602, 38.247864, 19.023457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.401588, 38.071548, 19.162596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548549, 0.766914, -0.333072,
		-0.119952, 0.466417, 0.876394,
		0.827469, -0.440793, 0.347846,
		33.649830, 37.939312, 19.266949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.316711, 38.761223, 19.419193>,  <33.070602, 38.247864, 19.023457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.316711, 38.761223, 19.419193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.619183, 38.517761, 19.323082>,  <33.800667, 38.371685, 19.265415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.619183, 38.517761, 19.323082>,  <33.316711, 38.761223, 19.419193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.619183, 38.517761, 19.323082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487030, 0.768729, -0.414558,
		0.437030, 0.196458, 0.877729,
		0.756179, -0.608654, -0.240276,
		33.846035, 38.335163, 19.250999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.891331, 39.016842, 19.828779>,  <33.316711, 38.761223, 19.419193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.891331, 39.016842, 19.828779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.054420, 38.816902, 19.523123>,  <34.152275, 38.696938, 19.339729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.054420, 38.816902, 19.523123>,  <33.891331, 39.016842, 19.828779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.054420, 38.816902, 19.523123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370367, 0.855458, -0.361968,
		0.834620, -0.135429, 0.533918,
		0.407723, -0.499851, -0.764141,
		34.176739, 38.666946, 19.293880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.650429, 39.179218, 19.900627>,  <33.891331, 39.016842, 19.828779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.650429, 39.179218, 19.900627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.566647, 39.047623, 19.532303>,  <34.516376, 38.968666, 19.311308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.566647, 39.047623, 19.532303>,  <34.650429, 39.179218, 19.900627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.566647, 39.047623, 19.532303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452812, 0.802010, -0.389540,
		0.866654, -0.498548, -0.019018,
		-0.209457, -0.328985, -0.920813,
		34.503811, 38.948929, 19.256060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.226498, 39.351585, 19.526800>,  <34.650429, 39.179218, 19.900627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.226498, 39.351585, 19.526800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.007404, 39.286449, 19.198538>,  <34.875950, 39.247368, 19.001581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.007404, 39.286449, 19.198538>,  <35.226498, 39.351585, 19.526800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.007404, 39.286449, 19.198538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526676, 0.695031, -0.489432,
		0.650077, -0.700297, -0.294930,
		-0.547733, -0.162836, -0.820654,
		34.843086, 39.237598, 18.952341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.644318, 39.245735, 18.939102>,  <35.226498, 39.351585, 19.526800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.644318, 39.245735, 18.939102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.289665, 39.385979, 18.818468>,  <35.076874, 39.470123, 18.746088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.289665, 39.385979, 18.818468>,  <35.644318, 39.245735, 18.939102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.289665, 39.385979, 18.818468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454978, 0.778187, -0.432920,
		0.082903, -0.521056, -0.849487,
		-0.886635, 0.350608, -0.301583,
		35.023674, 39.491161, 18.727993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.770195, 39.501751, 18.200329>,  <35.644318, 39.245735, 18.939102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.770195, 39.501751, 18.200329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.439686, 39.673225, 18.346478>,  <35.241379, 39.776112, 18.434166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.439686, 39.673225, 18.346478>,  <35.770195, 39.501751, 18.200329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.439686, 39.673225, 18.346478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344134, 0.897730, -0.275051,
		-0.445915, -0.101531, -0.889298,
		-0.826276, 0.428687, 0.365371,
		35.191803, 39.801830, 18.456089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.525959, 39.875744, 17.636038>,  <35.770195, 39.501751, 18.200329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.525959, 39.875744, 17.636038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.316402, 40.018536, 17.945385>,  <35.190666, 40.104210, 18.130993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.316402, 40.018536, 17.945385>,  <35.525959, 39.875744, 17.636038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.316402, 40.018536, 17.945385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124933, 0.930324, -0.344803,
		-0.842570, -0.084022, -0.531992,
		-0.523896, 0.356984, 0.773366,
		35.159233, 40.125629, 18.177395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.038799, 40.495148, 17.349110>,  <35.525959, 39.875744, 17.636038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.038799, 40.495148, 17.349110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.101994, 40.563725, 17.738089>,  <35.139912, 40.604870, 17.971476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.101994, 40.563725, 17.738089>,  <35.038799, 40.495148, 17.349110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.101994, 40.563725, 17.738089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126507, 0.973183, -0.192120,
		-0.979304, 0.153373, 0.132061,
		0.157986, 0.171438, 0.972445,
		35.149387, 40.615154, 18.029821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.511688, 41.029541, 17.622660>,  <35.038799, 40.495148, 17.349110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.511688, 41.029541, 17.622660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.718399, 41.367950, 17.570229>,  <35.842426, 41.570995, 17.538769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.718399, 41.367950, 17.570229>,  <35.511688, 41.029541, 17.622660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.718399, 41.367950, 17.570229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079689, -0.104908, -0.991284,
		-0.852403, 0.522719, 0.013205,
		0.516778, 0.846025, -0.131079,
		35.873432, 41.621758, 17.530905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.118233, 41.354477, 17.254417>,  <35.511688, 41.029541, 17.622660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.118233, 41.354477, 17.254417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.470524, 41.539009, 17.211521>,  <35.681896, 41.649727, 17.185783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.470524, 41.539009, 17.211521>,  <35.118233, 41.354477, 17.254417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.470524, 41.539009, 17.211521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065566, -0.105489, -0.992257,
		-0.469071, 0.880935, -0.062659,
		0.880723, 0.461330, -0.107241,
		35.734741, 41.677406, 17.179348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.954685, 41.841545, 16.745312>,  <35.118233, 41.354477, 17.254417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.954685, 41.841545, 16.745312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.352898, 41.805038, 16.735680>,  <35.591827, 41.783134, 16.729900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.352898, 41.805038, 16.735680>,  <34.954685, 41.841545, 16.745312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.352898, 41.805038, 16.735680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034449, -0.113793, -0.992907,
		0.087880, 0.989303, -0.116429,
		0.995535, -0.091268, -0.024080,
		35.651558, 41.777657, 16.728455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.237762, 42.342682, 16.342222>,  <34.954685, 41.841545, 16.745312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.237762, 42.342682, 16.342222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.442776, 41.999638, 16.359253>,  <35.565784, 41.793812, 16.369471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.442776, 41.999638, 16.359253>,  <35.237762, 42.342682, 16.342222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.442776, 41.999638, 16.359253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159652, 0.046459, -0.986079,
		0.843694, 0.512197, 0.160731,
		0.512534, -0.857611, 0.042577,
		35.596535, 41.742355, 16.372026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.035236, 42.297695, 15.656620>,  <35.237762, 42.342682, 16.342222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.035236, 42.297695, 15.656620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.286369, 42.085472, 15.428816>,  <35.437050, 41.958138, 15.292133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.286369, 42.085472, 15.428816>,  <35.035236, 42.297695, 15.656620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.286369, 42.085472, 15.428816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579642, -0.169625, 0.797021,
		-0.519468, -0.830504, 0.201038,
		0.627828, -0.530557, -0.569509,
		35.474716, 41.926304, 15.257963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.176338, 41.552361, 15.831782>,  <35.035236, 42.297695, 15.656620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.176338, 41.552361, 15.831782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.499283, 41.713779, 15.659590>,  <35.693050, 41.810631, 15.556274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.499283, 41.713779, 15.659590>,  <35.176338, 41.552361, 15.831782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.499283, 41.713779, 15.659590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474782, -0.011110, 0.880033,
		0.350353, -0.914891, -0.200567,
		0.807363, 0.403548, -0.430482,
		35.741493, 41.834843, 15.530445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.877178, 41.144665, 15.874280>,  <35.176338, 41.552361, 15.831782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.877178, 41.144665, 15.874280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.981514, 41.529861, 15.847092>,  <36.044113, 41.760979, 15.830779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.981514, 41.529861, 15.847092>,  <35.877178, 41.144665, 15.874280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.981514, 41.529861, 15.847092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514534, -0.079103, 0.853813,
		0.816835, -0.257679, -0.516123,
		0.260837, 0.962987, -0.067971,
		36.059765, 41.818756, 15.826700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.678791, 41.273418, 16.227568>,  <35.877178, 41.144665, 15.874280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.678791, 41.273418, 16.227568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.395432, 41.553265, 16.264874>,  <36.225414, 41.721172, 16.287258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.395432, 41.553265, 16.264874>,  <36.678791, 41.273418, 16.227568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.395432, 41.553265, 16.264874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214953, 0.087986, 0.972653,
		0.672281, 0.709077, -0.212715,
		-0.708402, 0.699620, 0.093267,
		36.182911, 41.763149, 16.292854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.989059, 41.784039, 16.641678>,  <36.678791, 41.273418, 16.227568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.989059, 41.784039, 16.641678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.590633, 41.777573, 16.676527>,  <36.351578, 41.773693, 16.697437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.590633, 41.777573, 16.676527>,  <36.989059, 41.784039, 16.641678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.590633, 41.777573, 16.676527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087535, -0.026819, 0.995800,
		-0.013757, 0.999510, 0.028128,
		-0.996066, -0.016161, 0.087123,
		36.291813, 41.772724, 16.702663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.818398, 42.368038, 17.027990>,  <36.989059, 41.784039, 16.641678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.818398, 42.368038, 17.027990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.501312, 42.128452, 17.073339>,  <36.311062, 41.984699, 17.100550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.501312, 42.128452, 17.073339>,  <36.818398, 42.368038, 17.027990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.501312, 42.128452, 17.073339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129925, 0.347712, 0.928556,
		-0.595593, 0.721345, -0.353455,
		-0.792710, -0.598964, 0.113374,
		36.263500, 41.948765, 17.107351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.502048, 42.800053, 17.533932>,  <36.818398, 42.368038, 17.027990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.502048, 42.800053, 17.533932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.300053, 42.455418, 17.513304>,  <36.178856, 42.248638, 17.500927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.300053, 42.455418, 17.513304>,  <36.502048, 42.800053, 17.533932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.300053, 42.455418, 17.513304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465903, 0.221804, 0.856584,
		-0.726582, 0.456591, -0.513423,
		-0.504988, -0.861584, -0.051569,
		36.148556, 42.196941, 17.497833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.716042, 42.977669, 17.602476>,  <36.502048, 42.800053, 17.533932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.716042, 42.977669, 17.602476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.802277, 42.603870, 17.715778>,  <35.854019, 42.379589, 17.783760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.802277, 42.603870, 17.715778>,  <35.716042, 42.977669, 17.602476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.802277, 42.603870, 17.715778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299167, 0.212915, 0.930143,
		-0.929527, -0.285270, -0.233669,
		0.215590, -0.934499, 0.283253,
		35.866955, 42.323521, 17.800755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.061165, 42.748657, 17.821682>,  <35.716042, 42.977669, 17.602476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.061165, 42.748657, 17.821682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.326958, 42.505749, 17.995890>,  <35.486435, 42.360004, 18.100414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.326958, 42.505749, 17.995890>,  <35.061165, 42.748657, 17.821682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.326958, 42.505749, 17.995890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401553, 0.201359, 0.893426,
		-0.630251, -0.768552, -0.110053,
		0.664484, -0.607274, 0.435521,
		35.526302, 42.323566, 18.126547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.674774, 42.334145, 18.317495>,  <35.061165, 42.748657, 17.821682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.674774, 42.334145, 18.317495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.059994, 42.323566, 18.424704>,  <35.291126, 42.317219, 18.489029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.059994, 42.323566, 18.424704>,  <34.674774, 42.334145, 18.317495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.059994, 42.323566, 18.424704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266602, 0.047511, 0.962635,
		-0.038192, -0.998521, 0.038705,
		0.963050, -0.026446, 0.268022,
		35.348907, 42.315636, 18.505110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.610199, 41.899990, 18.910076>,  <34.674774, 42.334145, 18.317495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.610199, 41.899990, 18.910076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.978897, 42.050137, 18.949022>,  <35.200115, 42.140224, 18.972391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.978897, 42.050137, 18.949022>,  <34.610199, 41.899990, 18.910076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.978897, 42.050137, 18.949022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202505, 0.251797, 0.946356,
		0.330712, -0.892020, 0.308107,
		0.921749, 0.375365, 0.097366,
		35.255421, 42.162746, 18.978231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.899738, 41.602650, 19.500231>,  <34.610199, 41.899990, 18.910076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.899738, 41.602650, 19.500231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.103661, 41.935989, 19.414793>,  <35.226013, 42.135994, 19.363531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.103661, 41.935989, 19.414793>,  <34.899738, 41.602650, 19.500231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.103661, 41.935989, 19.414793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154557, 0.332965, 0.930186,
		0.846292, -0.441202, 0.298548,
		0.509806, 0.833352, -0.213595,
		35.256603, 42.185993, 19.350714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.337627, 41.623257, 20.061460>,  <34.899738, 41.602650, 19.500231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.337627, 41.623257, 20.061460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.288036, 41.993927, 19.919527>,  <35.258282, 42.216328, 19.834368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.288036, 41.993927, 19.919527>,  <35.337627, 41.623257, 20.061460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.288036, 41.993927, 19.919527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028095, 0.354169, 0.934759,
		0.991887, 0.125860, -0.017875,
		-0.123979, 0.926673, -0.354832,
		35.250843, 42.271931, 19.813078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.893345, 42.157413, 20.332520>,  <35.337627, 41.623257, 20.061460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.893345, 42.157413, 20.332520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.570061, 42.374207, 20.240395>,  <35.376091, 42.504284, 20.185120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.570061, 42.374207, 20.240395>,  <35.893345, 42.157413, 20.332520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.570061, 42.374207, 20.240395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077594, 0.289671, 0.953976,
		0.583755, 0.788887, -0.192062,
		-0.808214, 0.541985, -0.230310,
		35.327595, 42.536800, 20.171301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.907703, 42.754730, 20.838980>,  <35.893345, 42.157413, 20.332520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.907703, 42.754730, 20.838980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.532703, 42.781910, 20.702465>,  <35.307705, 42.798218, 20.620556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.532703, 42.781910, 20.702465>,  <35.907703, 42.754730, 20.838980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.532703, 42.781910, 20.702465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309912, 0.283021, 0.907664,
		0.158266, 0.956704, -0.244274,
		-0.937500, 0.067949, -0.341286,
		35.251453, 42.802296, 20.600079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.680637, 43.365921, 21.194611>,  <35.907703, 42.754730, 20.838980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.680637, 43.365921, 21.194611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.358101, 43.150509, 21.096792>,  <35.164581, 43.021259, 21.038101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.358101, 43.150509, 21.096792>,  <35.680637, 43.365921, 21.194611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.358101, 43.150509, 21.096792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378121, 0.151435, 0.913286,
		-0.454803, 0.828884, -0.325739,
		-0.806337, -0.538534, -0.244546,
		35.116199, 42.988949, 21.023428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.267628, 43.625568, 21.583101>,  <35.680637, 43.365921, 21.194611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.267628, 43.625568, 21.583101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.057343, 43.298855, 21.488037>,  <34.931171, 43.102825, 21.430998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.057343, 43.298855, 21.488037>,  <35.267628, 43.625568, 21.583101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.057343, 43.298855, 21.488037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468977, 0.045200, 0.882053,
		-0.709706, 0.575167, -0.406817,
		-0.525716, -0.816786, -0.237662,
		34.899628, 43.053818, 21.416739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.644371, 43.781010, 21.847172>,  <35.267628, 43.625568, 21.583101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.644371, 43.781010, 21.847172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.639999, 43.383427, 21.803492>,  <34.637379, 43.144875, 21.777285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.639999, 43.383427, 21.803492>,  <34.644371, 43.781010, 21.847172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.639999, 43.383427, 21.803492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542079, -0.085877, 0.835928,
		-0.840257, 0.068329, -0.537866,
		-0.010927, -0.993960, -0.109198,
		34.636723, 43.085239, 21.770733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.841034, 43.503620, 21.995705>,  <34.644371, 43.781010, 21.847172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.841034, 43.503620, 21.995705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.093292, 43.193905, 22.016768>,  <34.244648, 43.008076, 22.029406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.093292, 43.193905, 22.016768>,  <33.841034, 43.503620, 21.995705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.093292, 43.193905, 22.016768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525420, -0.376040, 0.763235,
		-0.571159, -0.508998, -0.643971,
		0.630644, -0.774283, 0.052659,
		34.282486, 42.961620, 22.032566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.418388, 43.050865, 22.101553>,  <33.841034, 43.503620, 21.995705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.418388, 43.050865, 22.101553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.759525, 42.875717, 22.215345>,  <33.964207, 42.770630, 22.283621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.759525, 42.875717, 22.215345>,  <33.418388, 43.050865, 22.101553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.759525, 42.875717, 22.215345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484010, -0.458468, 0.745346,
		-0.195937, -0.773355, -0.602934,
		0.852844, -0.437868, 0.284481,
		34.015377, 42.744358, 22.300690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.219326, 42.395134, 22.167475>,  <33.418388, 43.050865, 22.101553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.219326, 42.395134, 22.167475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.545059, 42.471737, 22.386633>,  <33.740498, 42.517700, 22.518127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.545059, 42.471737, 22.386633>,  <33.219326, 42.395134, 22.167475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.545059, 42.471737, 22.386633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441832, -0.407590, 0.799159,
		0.376362, -0.892858, -0.247299,
		0.814332, 0.191508, 0.547895,
		33.789360, 42.529190, 22.551001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.323753, 41.866909, 22.586197>,  <33.219326, 42.395134, 22.167475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.323753, 41.866909, 22.586197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.538719, 42.140789, 22.783119>,  <33.667698, 42.305119, 22.901272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.538719, 42.140789, 22.783119>,  <33.323753, 41.866909, 22.586197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.538719, 42.140789, 22.783119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402987, -0.304298, 0.863136,
		0.740800, -0.662256, 0.112392,
		0.537416, 0.684704, 0.492304,
		33.699944, 42.346199, 22.930811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.517719, 41.479137, 23.050827>,  <33.323753, 41.866909, 22.586197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.517719, 41.479137, 23.050827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.562836, 41.851917, 23.188669>,  <33.589905, 42.075584, 23.271376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.562836, 41.851917, 23.188669>,  <33.517719, 41.479137, 23.050827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.562836, 41.851917, 23.188669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079083, -0.337300, 0.938070,
		0.990467, -0.133058, 0.035657,
		0.112790, 0.931947, 0.344607,
		33.596672, 42.131500, 23.292051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.915058, 41.391685, 23.583841>,  <33.517719, 41.479137, 23.050827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.915058, 41.391685, 23.583841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.765392, 41.756172, 23.652760>,  <33.675591, 41.974865, 23.694111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.765392, 41.756172, 23.652760>,  <33.915058, 41.391685, 23.583841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.765392, 41.756172, 23.652760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166919, -0.248930, 0.954029,
		0.912215, 0.328207, 0.245241,
		-0.374167, 0.911215, 0.172294,
		33.653141, 42.029537, 23.704449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.254833, 41.653038, 24.173714>,  <33.915058, 41.391685, 23.583841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.254833, 41.653038, 24.173714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.901131, 41.834309, 24.128603>,  <33.688908, 41.943069, 24.101536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.901131, 41.834309, 24.128603>,  <34.254833, 41.653038, 24.173714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.901131, 41.834309, 24.128603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270069, -0.299226, 0.915165,
		0.380981, 0.839701, 0.386981,
		-0.884260, 0.453172, -0.112778,
		33.635853, 41.970261, 24.094770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.168869, 42.042973, 24.756519>,  <34.254833, 41.653038, 24.173714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.168869, 42.042973, 24.756519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.800823, 41.992611, 24.608175>,  <33.579994, 41.962395, 24.519169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.800823, 41.992611, 24.608175>,  <34.168869, 42.042973, 24.756519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.800823, 41.992611, 24.608175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314509, -0.326759, 0.891242,
		-0.233389, 0.936684, 0.261060,
		-0.920116, -0.125901, -0.370858,
		33.524788, 41.954842, 24.496918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.795258, 42.389568, 25.204126>,  <34.168869, 42.042973, 24.756519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.795258, 42.389568, 25.204126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.527370, 42.159527, 25.016195>,  <33.366638, 42.021503, 24.903437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.527370, 42.159527, 25.016195>,  <33.795258, 42.389568, 25.204126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.527370, 42.159527, 25.016195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379295, -0.279022, 0.882203,
		-0.638447, 0.769030, -0.031266,
		-0.669717, -0.575099, -0.469830,
		33.326454, 41.986996, 24.875246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.185402, 42.564049, 25.595341>,  <33.795258, 42.389568, 25.204126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.185402, 42.564049, 25.595341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.073269, 42.245136, 25.381514>,  <33.005989, 42.053791, 25.253218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.073269, 42.245136, 25.381514>,  <33.185402, 42.564049, 25.595341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.073269, 42.245136, 25.381514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610449, -0.281704, 0.740267,
		-0.740788, 0.533846, -0.407727,
		-0.280330, -0.797278, -0.534569,
		32.989170, 42.005955, 25.221144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.449131, 42.465088, 25.687485>,  <33.185402, 42.564049, 25.595341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.449131, 42.465088, 25.687485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.591896, 42.102310, 25.597980>,  <32.677555, 41.884644, 25.544277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.591896, 42.102310, 25.597980>,  <32.449131, 42.465088, 25.687485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.591896, 42.102310, 25.597980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595790, -0.405504, 0.693254,
		-0.719478, -0.114115, -0.685076,
		0.356912, -0.906942, -0.223763,
		32.698971, 41.830227, 25.530851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.820894, 41.921970, 25.665741>,  <32.449131, 42.465088, 25.687485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.820894, 41.921970, 25.665741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.159393, 41.713257, 25.708839>,  <32.362492, 41.588028, 25.734699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.159393, 41.713257, 25.708839>,  <31.820894, 41.921970, 25.665741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.159393, 41.713257, 25.708839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450053, -0.591822, 0.668729,
		-0.285165, -0.614401, -0.735657,
		0.846247, -0.521783, 0.107746,
		32.413269, 41.556721, 25.741163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.574303, 41.140198, 25.663580>,  <31.820894, 41.921970, 25.665741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.574303, 41.140198, 25.663580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.937355, 41.172035, 25.828444>,  <32.155186, 41.191135, 25.927361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.937355, 41.172035, 25.828444>,  <31.574303, 41.140198, 25.663580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.937355, 41.172035, 25.828444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341263, -0.431837, 0.834899,
		0.244434, -0.898433, -0.364787,
		0.907630, 0.079590, 0.412158,
		32.209644, 41.195911, 25.952091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.687983, 40.508808, 25.910561>,  <31.574303, 41.140198, 25.663580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.687983, 40.508808, 25.910561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.933693, 40.744244, 26.120790>,  <32.081120, 40.885506, 26.246929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.933693, 40.744244, 26.120790>,  <31.687983, 40.508808, 25.910561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.933693, 40.744244, 26.120790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325152, -0.418075, 0.848228,
		0.718988, -0.691936, -0.065432,
		0.614274, 0.588590, 0.525575,
		32.117977, 40.920822, 26.278463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.243458, 40.088360, 26.090475>,  <31.687983, 40.508808, 25.910561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.243458, 40.088360, 26.090475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.237740, 40.395802, 26.346300>,  <32.234310, 40.580265, 26.499796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.237740, 40.395802, 26.346300>,  <32.243458, 40.088360, 26.090475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.237740, 40.395802, 26.346300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281145, -0.616914, 0.735102,
		0.959559, -0.169302, 0.224908,
		-0.014295, 0.768605, 0.639563,
		32.233452, 40.626385, 26.538170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.644505, 39.960381, 26.634596>,  <32.243458, 40.088360, 26.090475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.644505, 39.960381, 26.634596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.460312, 40.267437, 26.812891>,  <32.349796, 40.451672, 26.919868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.460312, 40.267437, 26.812891>,  <32.644505, 39.960381, 26.634596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.460312, 40.267437, 26.812891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364999, -0.621469, 0.693219,
		0.809158, 0.156517, 0.566362,
		-0.460477, 0.767645, 0.445738,
		32.322170, 40.497730, 26.946613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.759682, 39.898144, 27.331024>,  <32.644505, 39.960381, 26.634596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.759682, 39.898144, 27.331024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.427799, 40.117580, 27.289768>,  <32.228672, 40.249241, 27.265015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.427799, 40.117580, 27.289768>,  <32.759682, 39.898144, 27.331024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.427799, 40.117580, 27.289768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381230, -0.421927, 0.822582,
		0.407743, 0.721821, 0.559214,
		-0.829705, 0.548591, -0.103142,
		32.178886, 40.282158, 27.258825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.725708, 40.162460, 27.990362>,  <32.759682, 39.898144, 27.331024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.725708, 40.162460, 27.990362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.361805, 40.203705, 27.829510>,  <32.143463, 40.228451, 27.732998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.361805, 40.203705, 27.829510>,  <32.725708, 40.162460, 27.990362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.361805, 40.203705, 27.829510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406639, -0.416375, 0.813189,
		-0.083586, 0.903327, 0.420730,
		-0.909757, 0.103114, -0.402132,
		32.088879, 40.234638, 27.708870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.398769, 40.341564, 28.515688>,  <32.725708, 40.162460, 27.990362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.398769, 40.341564, 28.515688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.098030, 40.216476, 28.283506>,  <31.917585, 40.141422, 28.144197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.098030, 40.216476, 28.283506>,  <32.398769, 40.341564, 28.515688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.098030, 40.216476, 28.283506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433726, -0.428485, 0.792642,
		-0.496593, 0.847706, 0.186521,
		-0.751849, -0.312721, -0.580455,
		31.872475, 40.122662, 28.109369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.769896, 40.472519, 28.866896>,  <32.398769, 40.341564, 28.515688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.769896, 40.472519, 28.866896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.703106, 40.166801, 28.617744>,  <31.663033, 39.983372, 28.468254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.703106, 40.166801, 28.617744>,  <31.769896, 40.472519, 28.866896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.703106, 40.166801, 28.617744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385600, -0.530810, 0.754688,
		-0.907432, 0.366195, -0.206079,
		-0.166974, -0.764292, -0.622878,
		31.653013, 39.937515, 28.430882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.055336, 40.245686, 28.957918>,  <31.769896, 40.472519, 28.866896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.055336, 40.245686, 28.957918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.204842, 39.922009, 28.776583>,  <31.294544, 39.727802, 28.667782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.204842, 39.922009, 28.776583>,  <31.055336, 40.245686, 28.957918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.204842, 39.922009, 28.776583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556575, -0.586652, 0.588271,
		-0.741975, 0.032444, -0.669642,
		0.373761, -0.809189, -0.453338,
		31.316971, 39.679253, 28.640581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.588160, 39.743271, 29.148283>,  <31.055336, 40.245686, 28.957918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.588160, 39.743271, 29.148283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.889040, 39.522625, 29.004108>,  <31.069569, 39.390236, 28.917604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.889040, 39.522625, 29.004108>,  <30.588160, 39.743271, 29.148283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.889040, 39.522625, 29.004108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267037, -0.755255, 0.598566,
		-0.602399, -0.353992, -0.715405,
		0.752201, -0.551615, -0.360436,
		31.114700, 39.357140, 28.895977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.312929, 39.071842, 28.998026>,  <30.588160, 39.743271, 29.148283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.312929, 39.071842, 28.998026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.707315, 39.029972, 29.050045>,  <30.943947, 39.004848, 29.081257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.707315, 39.029972, 29.050045>,  <30.312929, 39.071842, 28.998026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.707315, 39.029972, 29.050045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159412, -0.821641, 0.547261,
		0.049568, -0.560313, -0.826797,
		0.985967, -0.104675, 0.130048,
		31.003105, 38.998569, 29.089060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.419367, 38.327415, 29.073090>,  <30.312929, 39.071842, 28.998026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.419367, 38.327415, 29.073090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.741110, 38.484600, 29.251345>,  <30.934155, 38.578911, 29.358297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.741110, 38.484600, 29.251345>,  <30.419367, 38.327415, 29.073090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.741110, 38.484600, 29.251345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095258, -0.825637, 0.556103,
		0.586462, -0.404854, -0.701538,
		0.804356, 0.392960, 0.445639,
		30.982416, 38.602489, 29.385036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.955591, 37.822609, 28.974663>,  <30.419367, 38.327415, 29.073090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.955591, 37.822609, 28.974663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.074179, 38.080387, 29.256598>,  <31.145330, 38.235054, 29.425758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.074179, 38.080387, 29.256598>,  <30.955591, 37.822609, 28.974663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.074179, 38.080387, 29.256598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106667, -0.755742, 0.646124,
		0.949068, -0.116372, -0.292794,
		0.296467, 0.644447, 0.704837,
		31.163118, 38.273720, 29.468048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.574791, 37.598076, 29.329117>,  <30.955591, 37.822609, 28.974663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.574791, 37.598076, 29.329117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.423481, 37.843216, 29.606627>,  <31.332695, 37.990299, 29.773132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.423481, 37.843216, 29.606627>,  <31.574791, 37.598076, 29.329117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.423481, 37.843216, 29.606627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188290, -0.682855, 0.705872,
		0.906341, 0.397645, 0.142914,
		-0.378276, 0.612852, 0.693772,
		31.309998, 38.027073, 29.814758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.058994, 37.516220, 29.974600>,  <31.574791, 37.598076, 29.329117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.058994, 37.516220, 29.974600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.713476, 37.676060, 30.097359>,  <31.506166, 37.771961, 30.171015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.713476, 37.676060, 30.097359>,  <32.058994, 37.516220, 29.974600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.713476, 37.676060, 30.097359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153923, -0.370704, 0.915908,
		0.479762, 0.838392, 0.258704,
		-0.863792, 0.399597, 0.306897,
		31.454338, 37.795940, 30.189428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.864605, 37.586720, 30.148380>,  <32.058994, 37.516220, 29.974600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.864605, 37.586720, 30.148380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.158772, 37.599140, 30.419142>,  <33.335270, 37.606590, 30.581598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.158772, 37.599140, 30.419142>,  <32.864605, 37.586720, 30.148380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.158772, 37.599140, 30.419142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411689, 0.772971, -0.482729,
		-0.538215, 0.633681, 0.555673,
		0.735416, 0.031047, 0.676905,
		33.379395, 37.608456, 30.622213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.007996, 38.307438, 30.345591>,  <32.864605, 37.586720, 30.148380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.007996, 38.307438, 30.345591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.342407, 38.102505, 30.424143>,  <33.543053, 37.979546, 30.471275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.342407, 38.102505, 30.424143>,  <33.007996, 38.307438, 30.345591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.342407, 38.102505, 30.424143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545635, 0.738620, -0.395881,
		0.057773, 0.438121, 0.897057,
		0.836029, -0.512337, 0.196383,
		33.593216, 37.948803, 30.483057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.512218, 38.759598, 30.613560>,  <33.007996, 38.307438, 30.345591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.512218, 38.759598, 30.613560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.723808, 38.438599, 30.503159>,  <33.850761, 38.245998, 30.436918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.723808, 38.438599, 30.503159>,  <33.512218, 38.759598, 30.613560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.723808, 38.438599, 30.503159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565824, 0.575906, -0.590064,
		0.632478, 0.155961, 0.758714,
		0.528975, -0.802501, -0.276001,
		33.882500, 38.197849, 30.420359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.117325, 39.011501, 30.736967>,  <33.512218, 38.759598, 30.613560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.117325, 39.011501, 30.736967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.154808, 38.709053, 30.477890>,  <34.177299, 38.527584, 30.322443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.154808, 38.709053, 30.477890>,  <34.117325, 39.011501, 30.736967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.154808, 38.709053, 30.477890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688938, 0.518893, -0.506078,
		0.718737, -0.398795, 0.569543,
		0.093710, -0.756117, -0.647693,
		34.182922, 38.482220, 30.283583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.760582, 39.018890, 30.496096>,  <34.117325, 39.011501, 30.736967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.760582, 39.018890, 30.496096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.586342, 38.803288, 30.207727>,  <34.481800, 38.673923, 30.034706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.586342, 38.803288, 30.207727>,  <34.760582, 39.018890, 30.496096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.586342, 38.803288, 30.207727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517852, 0.505025, -0.690492,
		0.736264, -0.674106, 0.059140,
		-0.435597, -0.539010, -0.720919,
		34.455662, 38.641586, 29.991451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.324760, 38.771812, 30.054443>,  <34.760582, 39.018890, 30.496096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.324760, 38.771812, 30.054443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.981918, 38.782967, 29.848688>,  <34.776215, 38.789661, 29.725235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.981918, 38.782967, 29.848688>,  <35.324760, 38.771812, 30.054443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.981918, 38.782967, 29.848688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465208, 0.470766, -0.749640,
		0.221249, -0.881817, -0.416470,
		-0.857105, 0.027888, -0.514385,
		34.724785, 38.791332, 29.694372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.600876, 38.854637, 29.422735>,  <35.324760, 38.771812, 30.054443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.600876, 38.854637, 29.422735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.215542, 38.933685, 29.350155>,  <34.984341, 38.981113, 29.306606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.215542, 38.933685, 29.350155>,  <35.600876, 38.854637, 29.422735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.215542, 38.933685, 29.350155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250717, 0.422391, -0.871049,
		-0.095498, -0.884607, -0.456453,
		-0.963338, 0.197625, -0.181449,
		34.926540, 38.992973, 29.295721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.525146, 38.746632, 28.670734>,  <35.600876, 38.854637, 29.422735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.525146, 38.746632, 28.670734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.211464, 38.956787, 28.802788>,  <35.023254, 39.082882, 28.882021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.211464, 38.956787, 28.802788>,  <35.525146, 38.746632, 28.670734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.211464, 38.956787, 28.802788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005339, 0.526313, -0.850274,
		-0.620479, -0.668552, -0.409932,
		-0.784205, 0.525388, 0.330136,
		34.976204, 39.114403, 28.901829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.135860, 38.813480, 28.120541>,  <35.525146, 38.746632, 28.670734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.135860, 38.813480, 28.120541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.030220, 39.101933, 28.376734>,  <34.966835, 39.275005, 28.530449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.030220, 39.101933, 28.376734>,  <35.135860, 38.813480, 28.120541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.030220, 39.101933, 28.376734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000013, 0.664057, -0.747682,
		-0.964494, -0.197473, -0.175370,
		-0.264103, 0.721133, 0.640482,
		34.950989, 39.318272, 28.568878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.787647, 39.229675, 27.652420>,  <35.135860, 38.813480, 28.120541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.787647, 39.229675, 27.652420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.874378, 39.447308, 27.976633>,  <34.926418, 39.577885, 28.171162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.874378, 39.447308, 27.976633>,  <34.787647, 39.229675, 27.652420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.874378, 39.447308, 27.976633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148494, 0.802242, -0.578236,
		-0.964850, 0.245736, 0.093155,
		0.216827, 0.544079, 0.810534,
		34.939426, 39.610531, 28.219793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.307915, 39.753086, 27.629522>,  <34.787647, 39.229675, 27.652420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.307915, 39.753086, 27.629522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.645565, 39.834011, 27.828125>,  <34.848156, 39.882568, 27.947287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.645565, 39.834011, 27.828125>,  <34.307915, 39.753086, 27.629522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.645565, 39.834011, 27.828125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130409, 0.820779, -0.556162,
		-0.520041, 0.534220, 0.666458,
		0.844128, 0.202315, 0.496505,
		34.898804, 39.894707, 27.977076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.324318, 40.458668, 27.904425>,  <34.307915, 39.753086, 27.629522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.324318, 40.458668, 27.904425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.712036, 40.360783, 27.894730>,  <34.944668, 40.302052, 27.888912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.712036, 40.360783, 27.894730>,  <34.324318, 40.458668, 27.904425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.712036, 40.360783, 27.894730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195015, 0.824967, -0.530470,
		0.149808, 0.509454, 0.847357,
		0.969292, -0.244717, -0.024236,
		35.002823, 40.287369, 27.887459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.661716, 41.137711, 27.944208>,  <34.324318, 40.458668, 27.904425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.661716, 41.137711, 27.944208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.945000, 40.885643, 27.816881>,  <35.114967, 40.734402, 27.740484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.945000, 40.885643, 27.816881>,  <34.661716, 41.137711, 27.944208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.945000, 40.885643, 27.816881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348542, 0.704171, -0.618596,
		0.613973, 0.327146, 0.718340,
		0.708206, -0.630173, -0.318318,
		35.157463, 40.696590, 27.721386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.229309, 41.645683, 27.963629>,  <34.661716, 41.137711, 27.944208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.229309, 41.645683, 27.963629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.339439, 41.326786, 27.748741>,  <35.405518, 41.135448, 27.619808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.339439, 41.326786, 27.748741>,  <35.229309, 41.645683, 27.963629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.339439, 41.326786, 27.748741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336846, 0.603395, -0.722807,
		0.900406, 0.018047, 0.434676,
		0.275326, -0.797239, -0.537221,
		35.422035, 41.087616, 27.587574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.895584, 41.705536, 27.690336>,  <35.229309, 41.645683, 27.963629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.895584, 41.705536, 27.690336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.745682, 41.435272, 27.436396>,  <35.655739, 41.273113, 27.284031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.745682, 41.435272, 27.436396>,  <35.895584, 41.705536, 27.690336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.745682, 41.435272, 27.436396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453147, 0.463901, -0.761218,
		0.808835, -0.572954, 0.132323,
		-0.374758, -0.675662, -0.634852,
		35.633255, 41.232574, 27.245939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.469048, 41.697182, 27.204266>,  <35.895584, 41.705536, 27.690336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.469048, 41.697182, 27.204266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.178703, 41.484264, 27.030006>,  <36.004498, 41.356514, 26.925451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.178703, 41.484264, 27.030006>,  <36.469048, 41.697182, 27.204266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.178703, 41.484264, 27.030006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198159, 0.444682, -0.873494,
		0.658677, -0.720365, -0.217301,
		-0.725864, -0.532290, -0.435648,
		35.960945, 41.324577, 26.899313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.741634, 41.185398, 26.663475>,  <36.469048, 41.697182, 27.204266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.741634, 41.185398, 26.663475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.370377, 41.295242, 26.562973>,  <36.147621, 41.361149, 26.502672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.370377, 41.295242, 26.562973>,  <36.741634, 41.185398, 26.663475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.370377, 41.295242, 26.562973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336245, 0.329105, -0.882400,
		-0.159631, -0.903480, -0.397796,
		-0.928147, 0.274615, -0.251255,
		36.091934, 41.377628, 26.487597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.609493, 40.917061, 25.928808>,  <36.741634, 41.185398, 26.663475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.609493, 40.917061, 25.928808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.346661, 41.213078, 25.986198>,  <36.188961, 41.390686, 26.020632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.346661, 41.213078, 25.986198>,  <36.609493, 40.917061, 25.928808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.346661, 41.213078, 25.986198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116465, 0.287707, -0.950611,
		-0.744772, -0.607915, -0.275234,
		-0.657077, 0.740043, 0.143475,
		36.149536, 41.435089, 26.029242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.234013, 40.880508, 25.382238>,  <36.609493, 40.917061, 25.928808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.234013, 40.880508, 25.382238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.185970, 41.257847, 25.505964>,  <36.157143, 41.484249, 25.580200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.185970, 41.257847, 25.505964>,  <36.234013, 40.880508, 25.382238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.185970, 41.257847, 25.505964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022359, 0.314063, -0.949139,
		-0.992509, -0.107084, -0.058814,
		-0.120109, 0.943344, 0.309316,
		36.149937, 41.540852, 25.598759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.716927, 41.103050, 25.011435>,  <36.234013, 40.880508, 25.382238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.716927, 41.103050, 25.011435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.874870, 41.442974, 25.151098>,  <35.969639, 41.646927, 25.234898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.874870, 41.442974, 25.151098>,  <35.716927, 41.103050, 25.011435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.874870, 41.442974, 25.151098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079601, 0.410258, -0.908489,
		-0.915286, 0.330934, 0.229640,
		0.394862, 0.849806, 0.349161,
		35.993328, 41.697914, 25.255846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.344604, 41.543457, 24.668146>,  <35.716927, 41.103050, 25.011435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.344604, 41.543457, 24.668146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.670269, 41.749889, 24.774586>,  <35.865665, 41.873749, 24.838449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.670269, 41.749889, 24.774586>,  <35.344604, 41.543457, 24.668146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.670269, 41.749889, 24.774586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042166, 0.509627, -0.859362,
		-0.579109, 0.688437, 0.436678,
		0.814159, 0.516077, 0.266101,
		35.914516, 41.904713, 24.854416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.265827, 42.290569, 24.555471>,  <35.344604, 41.543457, 24.668146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.265827, 42.290569, 24.555471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.655846, 42.203720, 24.536928>,  <35.889854, 42.151611, 24.525803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.655846, 42.203720, 24.536928>,  <35.265827, 42.290569, 24.555471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.655846, 42.203720, 24.536928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020961, 0.297892, -0.954369,
		0.221020, 0.929580, 0.295009,
		0.975044, -0.217119, -0.046356,
		35.948360, 42.138584, 24.523022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.426903, 42.799320, 24.110775>,  <35.265827, 42.290569, 24.555471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.426903, 42.799320, 24.110775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.739124, 42.549416, 24.102652>,  <35.926456, 42.399471, 24.097778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.739124, 42.549416, 24.102652>,  <35.426903, 42.799320, 24.110775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.739124, 42.549416, 24.102652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203985, 0.285291, -0.936482,
		0.590874, 0.726828, 0.350126,
		0.780550, -0.624764, -0.020309,
		35.973289, 42.361988, 24.096560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.026806, 43.101334, 23.818832>,  <35.426903, 42.799320, 24.110775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.026806, 43.101334, 23.818832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.101746, 42.713360, 23.756691>,  <36.146709, 42.480576, 23.719406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.101746, 42.713360, 23.756691>,  <36.026806, 43.101334, 23.818832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.101746, 42.713360, 23.756691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372767, 0.216527, -0.902309,
		0.908815, 0.111136, 0.402124,
		0.187350, -0.969930, -0.155355,
		36.157951, 42.422382, 23.710085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.686687, 43.162556, 23.421598>,  <36.026806, 43.101334, 23.818832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.686687, 43.162556, 23.421598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.552185, 42.786758, 23.395399>,  <36.471481, 42.561279, 23.379679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.552185, 42.786758, 23.395399>,  <36.686687, 43.162556, 23.421598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.552185, 42.786758, 23.395399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398451, -0.078904, -0.913790,
		0.853327, -0.333367, 0.400872,
		-0.336258, -0.939489, -0.065500,
		36.451309, 42.504913, 23.375750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.207016, 42.679111, 23.149839>,  <36.686687, 43.162556, 23.421598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.207016, 42.679111, 23.149839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.891140, 42.460693, 23.037968>,  <36.701614, 42.329643, 22.970844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.891140, 42.460693, 23.037968>,  <37.207016, 42.679111, 23.149839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.891140, 42.460693, 23.037968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474093, -0.253805, -0.843101,
		0.389388, -0.798384, 0.459304,
		-0.789692, -0.546046, -0.279680,
		36.654232, 42.296879, 22.954063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.424175, 42.009815, 23.080858>,  <37.207016, 42.679111, 23.149839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.424175, 42.009815, 23.080858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.076385, 42.014263, 22.883318>,  <36.867710, 42.016933, 22.764793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.076385, 42.014263, 22.883318>,  <37.424175, 42.009815, 23.080858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.076385, 42.014263, 22.883318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479166, -0.223982, -0.848665,
		-0.120055, -0.974529, 0.189416,
		-0.869475, 0.011125, -0.493852,
		36.815544, 42.017601, 22.735163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.389656, 41.361786, 22.673727>,  <37.424175, 42.009815, 23.080858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.389656, 41.361786, 22.673727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.194038, 41.650295, 22.477524>,  <37.076668, 41.823402, 22.359802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.194038, 41.650295, 22.477524>,  <37.389656, 41.361786, 22.673727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.194038, 41.650295, 22.477524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511382, -0.218477, -0.831117,
		-0.706631, -0.657287, -0.262004,
		-0.489041, 0.721277, -0.490508,
		37.047325, 41.866680, 22.330372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.653557, 41.363190, 22.030346>,  <37.389656, 41.361786, 22.673727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.653557, 41.363190, 22.030346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.391571, 41.660839, 21.977726>,  <37.234379, 41.839428, 21.946154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.391571, 41.660839, 21.977726>,  <37.653557, 41.363190, 22.030346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.391571, 41.660839, 21.977726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369453, 0.163474, -0.914757,
		-0.659185, -0.647736, -0.381987,
		-0.654966, 0.744120, -0.131548,
		37.195080, 41.884075, 21.938261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.198204, 41.294594, 21.509472>,  <37.653557, 41.363190, 22.030346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.198204, 41.294594, 21.509472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.236027, 41.689442, 21.561077>,  <37.258720, 41.926350, 21.592041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.236027, 41.689442, 21.561077>,  <37.198204, 41.294594, 21.509472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.236027, 41.689442, 21.561077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431454, 0.076154, -0.898915,
		-0.897165, 0.140665, -0.418697,
		0.094561, 0.987124, 0.129013,
		37.264397, 41.985580, 21.599781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.958092, 41.683891, 20.846550>,  <37.198204, 41.294594, 21.509472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.958092, 41.683891, 20.846550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.188587, 41.952141, 21.033405>,  <37.326885, 42.113091, 21.145519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.188587, 41.952141, 21.033405>,  <36.958092, 41.683891, 20.846550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.188587, 41.952141, 21.033405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377742, 0.288322, -0.879876,
		-0.724752, 0.683472, -0.087182,
		0.576234, 0.670624, 0.467138,
		37.361458, 42.153328, 21.173546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.918663, 42.243099, 20.539005>,  <36.958092, 41.683891, 20.846550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.918663, 42.243099, 20.539005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.271446, 42.327812, 20.707430>,  <37.483116, 42.378639, 20.808485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.271446, 42.327812, 20.707430>,  <36.918663, 42.243099, 20.539005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.271446, 42.327812, 20.707430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382688, 0.199722, -0.902032,
		-0.275127, 0.956692, 0.095101,
		0.881961, 0.211780, 0.421064,
		37.536034, 42.391346, 20.833750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.237339, 42.728165, 20.144739>,  <36.918663, 42.243099, 20.539005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.237339, 42.728165, 20.144739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.568062, 42.614185, 20.338728>,  <37.766495, 42.545795, 20.455122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.568062, 42.614185, 20.338728>,  <37.237339, 42.728165, 20.144739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.568062, 42.614185, 20.338728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538575, 0.152298, -0.828699,
		0.162279, 0.946366, 0.279388,
		0.826803, -0.284952, 0.484974,
		37.816101, 42.528698, 20.484221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.814770, 43.308769, 20.083569>,  <37.237339, 42.728165, 20.144739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.814770, 43.308769, 20.083569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.974106, 42.945560, 20.135454>,  <38.069706, 42.727634, 20.166586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.974106, 42.945560, 20.135454>,  <37.814770, 43.308769, 20.083569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.974106, 42.945560, 20.135454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590469, 0.145635, -0.793811,
		0.701904, 0.392801, 0.594170,
		0.398342, -0.908019, 0.129716,
		38.093609, 42.673157, 20.174368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.468842, 43.305363, 19.711624>,  <37.814770, 43.308769, 20.083569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.468842, 43.305363, 19.711624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.433403, 42.909618, 19.757793>,  <38.412140, 42.672173, 19.785494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.433403, 42.909618, 19.757793>,  <38.468842, 43.305363, 19.711624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.433403, 42.909618, 19.757793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443425, -0.142938, -0.884841,
		0.891922, -0.027215, 0.451370,
		-0.088599, -0.989358, 0.115421,
		38.406822, 42.612812, 19.792419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.043736, 43.005268, 19.533377>,  <38.468842, 43.305363, 19.711624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.043736, 43.005268, 19.533377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.791302, 42.696621, 19.501535>,  <38.639843, 42.511433, 19.482430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.791302, 42.696621, 19.501535>,  <39.043736, 43.005268, 19.533377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.791302, 42.696621, 19.501535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383020, -0.220723, -0.896982,
		0.674557, -0.596563, 0.434840,
		-0.631085, -0.771618, -0.079605,
		38.601974, 42.465137, 19.477654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.492130, 42.470127, 19.332588>,  <39.043736, 43.005268, 19.533377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.492130, 42.470127, 19.332588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.125713, 42.351315, 19.224777>,  <38.905865, 42.280025, 19.160089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.125713, 42.351315, 19.224777>,  <39.492130, 42.470127, 19.332588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.125713, 42.351315, 19.224777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366702, -0.347976, -0.862811,
		0.162494, -0.889204, 0.427682,
		-0.916038, -0.297034, -0.269529,
		38.850903, 42.262203, 19.143919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.515255, 41.814114, 19.008974>,  <39.492130, 42.470127, 19.332588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.515255, 41.814114, 19.008974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.204269, 42.022049, 18.867373>,  <39.017677, 42.146809, 18.782412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.204269, 42.022049, 18.867373>,  <39.515255, 41.814114, 19.008974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.204269, 42.022049, 18.867373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247793, -0.264157, -0.932105,
		-0.578057, -0.812397, 0.076560,
		-0.777463, 0.519839, -0.354004,
		38.971031, 42.178001, 18.761171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.197994, 41.454674, 18.396275>,  <39.515255, 41.814114, 19.008974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.197994, 41.454674, 18.396275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.471378, 41.163937, 18.423355>,  <39.635410, 40.989494, 18.439604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.471378, 41.163937, 18.423355>,  <39.197994, 41.454674, 18.396275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.471378, 41.163937, 18.423355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033018, 0.123426, 0.991804,
		-0.729239, -0.675625, 0.108356,
		0.683462, -0.726840, 0.067700,
		39.676418, 40.945885, 18.443665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.958317, 41.018002, 18.923655>,  <39.197994, 41.454674, 18.396275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.958317, 41.018002, 18.923655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.354355, 40.974144, 18.888563>,  <39.591976, 40.947830, 18.867508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.354355, 40.974144, 18.888563>,  <38.958317, 41.018002, 18.923655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.354355, 40.974144, 18.888563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082625, -0.050250, 0.995313,
		-0.113541, -0.992700, -0.040692,
		0.990091, -0.109647, -0.087728,
		39.651382, 40.941250, 18.862246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.021023, 40.466427, 19.399237>,  <38.958317, 41.018002, 18.923655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.021023, 40.466427, 19.399237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.378067, 40.633568, 19.331535>,  <39.592293, 40.733852, 19.290915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.378067, 40.633568, 19.331535>,  <39.021023, 40.466427, 19.399237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.378067, 40.633568, 19.331535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203009, -0.037328, 0.978465,
		0.402537, -0.907748, -0.118147,
		0.892609, 0.417853, -0.169255,
		39.645851, 40.758923, 19.280760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.521294, 40.131863, 19.825899>,  <39.021023, 40.466427, 19.399237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.521294, 40.131863, 19.825899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.730747, 40.461353, 19.738922>,  <39.856419, 40.659050, 19.686735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.730747, 40.461353, 19.738922>,  <39.521294, 40.131863, 19.825899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.730747, 40.461353, 19.738922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419519, -0.027167, 0.907340,
		0.741495, -0.566332, -0.359796,
		0.523630, 0.823730, -0.217442,
		39.887836, 40.708473, 19.673689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.201057, 39.971001, 19.948193>,  <39.521294, 40.131863, 19.825899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.201057, 39.971001, 19.948193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.178715, 40.368965, 19.981737>,  <40.165310, 40.607742, 20.001863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.178715, 40.368965, 19.981737>,  <40.201057, 39.971001, 19.948193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.178715, 40.368965, 19.981737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306751, -0.062829, 0.949714,
		0.950149, 0.078772, -0.301681,
		-0.055857, 0.994911, 0.083860,
		40.161957, 40.667439, 20.006895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.810360, 40.189739, 20.340725>,  <40.201057, 39.971001, 19.948193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.810360, 40.189739, 20.340725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.602180, 40.531151, 20.350670>,  <40.477272, 40.735996, 20.356638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.602180, 40.531151, 20.350670>,  <40.810360, 40.189739, 20.340725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.602180, 40.531151, 20.350670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332955, 0.176039, 0.926365,
		0.786302, 0.490407, -0.375806,
		-0.520452, 0.853529, 0.024864,
		40.446045, 40.787209, 20.358130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.302937, 40.767719, 20.741613>,  <40.810360, 40.189739, 20.340725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.302937, 40.767719, 20.741613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.910156, 40.838104, 20.769377>,  <40.674488, 40.880337, 20.786036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.910156, 40.838104, 20.769377>,  <41.302937, 40.767719, 20.741613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.910156, 40.838104, 20.769377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094873, 0.140688, 0.985498,
		0.163647, 0.974291, -0.154842,
		-0.981946, 0.175964, 0.069411,
		40.615574, 40.890892, 20.790199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.278557, 40.974911, 21.354572>,  <41.302937, 40.767719, 20.741613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.278557, 40.974911, 21.354572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.883621, 40.980194, 21.291340>,  <40.646660, 40.983364, 21.253401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.883621, 40.980194, 21.291340>,  <41.278557, 40.974911, 21.354572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.883621, 40.980194, 21.291340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156228, 0.091791, 0.983447,
		0.027495, 0.995691, -0.088566,
		-0.987338, 0.013204, -0.158079,
		40.587421, 40.984154, 21.243916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.992207, 41.547665, 21.703949>,  <41.278557, 40.974911, 21.354572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.992207, 41.547665, 21.703949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.703281, 41.272125, 21.679476>,  <40.529926, 41.106800, 21.664791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.703281, 41.272125, 21.679476>,  <40.992207, 41.547665, 21.703949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.703281, 41.272125, 21.679476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209861, 0.134036, 0.968500,
		-0.658951, 0.712404, -0.241379,
		-0.722317, -0.688850, -0.061182,
		40.486588, 41.065472, 21.661121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.531086, 41.822666, 22.202971>,  <40.992207, 41.547665, 21.703949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.531086, 41.822666, 22.202971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.429657, 41.438206, 22.159359>,  <40.368801, 41.207531, 22.133192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.429657, 41.438206, 22.159359>,  <40.531086, 41.822666, 22.202971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.429657, 41.438206, 22.159359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184757, -0.062513, 0.980794,
		-0.949508, 0.268847, -0.161728,
		-0.253573, -0.961152, -0.109028,
		40.353584, 41.149860, 22.126650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.906597, 41.719887, 22.539089>,  <40.531086, 41.822666, 22.202971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.906597, 41.719887, 22.539089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.089066, 41.363956, 22.534822>,  <40.198547, 41.150398, 22.532263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.089066, 41.363956, 22.534822>,  <39.906597, 41.719887, 22.539089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.089066, 41.363956, 22.534822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090811, -0.058469, 0.994150,
		-0.885247, -0.452532, -0.107478,
		0.456169, -0.889829, -0.010665,
		40.225918, 41.097008, 22.531624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.429134, 41.261406, 23.018583>,  <39.906597, 41.719887, 22.539089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.429134, 41.261406, 23.018583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.747444, 41.022282, 22.979877>,  <39.938431, 40.878807, 22.956654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.747444, 41.022282, 22.979877>,  <39.429134, 41.261406, 23.018583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.747444, 41.022282, 22.979877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226212, -0.441652, 0.868200,
		-0.561756, -0.669003, -0.486688,
		0.795775, -0.597811, -0.096764,
		39.986176, 40.842937, 22.950848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.331333, 40.467060, 22.845440>,  <39.429134, 41.261406, 23.018583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.331333, 40.467060, 22.845440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.643639, 40.547314, 23.082134>,  <39.831024, 40.595467, 23.224152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.643639, 40.547314, 23.082134>,  <39.331333, 40.467060, 22.845440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.643639, 40.547314, 23.082134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502834, -0.360409, 0.785661,
		0.370894, -0.910963, -0.180512,
		0.780766, 0.200629, 0.591736,
		39.877869, 40.607502, 23.259655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.409210, 39.879951, 23.269878>,  <39.331333, 40.467060, 22.845440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.409210, 39.879951, 23.269878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.573711, 40.186371, 23.467480>,  <39.672413, 40.370224, 23.586040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.573711, 40.186371, 23.467480>,  <39.409210, 39.879951, 23.269878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.573711, 40.186371, 23.467480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374846, -0.351878, 0.857713,
		0.830879, -0.537914, 0.142438,
		0.411255, 0.766049, 0.494003,
		39.697086, 40.416187, 23.615681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.813747, 39.616379, 23.858654>,  <39.409210, 39.879951, 23.269878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.813747, 39.616379, 23.858654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.744152, 40.003273, 23.932617>,  <39.702396, 40.235409, 23.976995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.744152, 40.003273, 23.932617>,  <39.813747, 39.616379, 23.858654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.744152, 40.003273, 23.932617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354649, -0.236720, 0.904537,
		0.918669, 0.091802, 0.384214,
		-0.173989, 0.967231, 0.184910,
		39.691956, 40.293442, 23.988091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.984955, 39.652843, 24.577045>,  <39.813747, 39.616379, 23.858654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.984955, 39.652843, 24.577045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.762440, 39.977058, 24.503757>,  <39.628929, 40.171589, 24.459785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.762440, 39.977058, 24.503757>,  <39.984955, 39.652843, 24.577045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.762440, 39.977058, 24.503757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540551, -0.185499, 0.820607,
		0.631145, 0.555536, 0.541328,
		-0.556292, 0.810537, -0.183219,
		39.595551, 40.220219, 24.448792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.905323, 39.864067, 25.232445>,  <39.984955, 39.652843, 24.577045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.905323, 39.864067, 25.232445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.603020, 40.008678, 25.014038>,  <39.421638, 40.095444, 24.882994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.603020, 40.008678, 25.014038>,  <39.905323, 39.864067, 25.232445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.603020, 40.008678, 25.014038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634141, -0.195992, 0.747965,
		0.163395, 0.911529, 0.377381,
		-0.755756, 0.361527, -0.546014,
		39.376293, 40.117138, 24.850233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.599899, 40.257042, 25.648785>,  <39.905323, 39.864067, 25.232445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.599899, 40.257042, 25.648785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.323822, 40.173542, 25.371641>,  <39.158176, 40.123444, 25.205355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.323822, 40.173542, 25.371641>,  <39.599899, 40.257042, 25.648785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.323822, 40.173542, 25.371641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644715, -0.257392, 0.719787,
		-0.328592, 0.943490, 0.043066,
		-0.690196, -0.208751, -0.692858,
		39.116764, 40.110916, 25.163784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.948597, 40.691631, 25.780054>,  <39.599899, 40.257042, 25.648785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.948597, 40.691631, 25.780054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.859859, 40.357044, 25.579611>,  <38.806618, 40.156292, 25.459345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.859859, 40.357044, 25.579611>,  <38.948597, 40.691631, 25.780054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.859859, 40.357044, 25.579611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567961, -0.306886, 0.763702,
		-0.792595, 0.454030, -0.407002,
		-0.221840, -0.836467, -0.501108,
		38.793308, 40.106106, 25.429279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.249123, 40.686695, 25.823576>,  <38.948597, 40.691631, 25.780054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.249123, 40.686695, 25.823576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.321529, 40.310154, 25.709671>,  <38.364975, 40.084229, 25.641329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.321529, 40.310154, 25.709671>,  <38.249123, 40.686695, 25.823576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.321529, 40.310154, 25.709671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556653, -0.336770, 0.759423,
		-0.810783, 0.021042, -0.584968,
		0.181020, -0.941352, -0.284760,
		38.375835, 40.027748, 25.624243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.690975, 40.468975, 25.886189>,  <38.249123, 40.686695, 25.823576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.690975, 40.468975, 25.886189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.904285, 40.131981, 25.855618>,  <38.032272, 39.929783, 25.837275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.904285, 40.131981, 25.855618>,  <37.690975, 40.468975, 25.886189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.904285, 40.131981, 25.855618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713759, -0.496597, 0.493902,
		-0.454056, -0.208837, -0.866153,
		0.533274, -0.842484, -0.076423,
		38.064266, 39.879234, 25.832689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.199787, 39.964550, 25.968561>,  <37.690975, 40.468975, 25.886189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.199787, 39.964550, 25.968561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.536457, 39.764931, 26.051056>,  <37.738461, 39.645161, 26.100554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.536457, 39.764931, 26.051056>,  <37.199787, 39.964550, 25.968561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.536457, 39.764931, 26.051056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452581, -0.443633, 0.773538,
		-0.294537, -0.744408, -0.599254,
		0.841676, -0.499046, 0.206238,
		37.788960, 39.615215, 26.112926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.966167, 39.296860, 26.185793>,  <37.199787, 39.964550, 25.968561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.966167, 39.296860, 26.185793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.345695, 39.323818, 26.309208>,  <37.573414, 39.339993, 26.383257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.345695, 39.323818, 26.309208>,  <36.966167, 39.296860, 26.185793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.345695, 39.323818, 26.309208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250448, -0.434578, 0.865111,
		0.192385, -0.898109, -0.395459,
		0.948822, 0.067392, 0.308537,
		37.630341, 39.344036, 26.401770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.202717, 38.650280, 26.457640>,  <36.966167, 39.296860, 26.185793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.202717, 38.650280, 26.457640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.417515, 38.931248, 26.644505>,  <37.546394, 39.099827, 26.756624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.417515, 38.931248, 26.644505>,  <37.202717, 38.650280, 26.457640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.417515, 38.931248, 26.644505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181296, -0.444747, 0.877116,
		0.823873, -0.555703, -0.111481,
		0.536997, 0.702421, 0.467162,
		37.578613, 39.141975, 26.784653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.595127, 38.204582, 26.938530>,  <37.202717, 38.650280, 26.457640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.595127, 38.204582, 26.938530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.583130, 38.589809, 27.045568>,  <37.575932, 38.820946, 27.109793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.583130, 38.589809, 27.045568>,  <37.595127, 38.204582, 26.938530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.583130, 38.589809, 27.045568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157931, -0.268922, 0.950126,
		0.986995, -0.013766, 0.160163,
		-0.029992, 0.963064, 0.267598,
		37.574131, 38.878727, 27.125849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.697098, 38.150177, 27.591774>,  <37.595127, 38.204582, 26.938530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.697098, 38.150177, 27.591774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.636700, 38.545483, 27.582489>,  <37.600460, 38.782665, 27.576918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.636700, 38.545483, 27.582489>,  <37.697098, 38.150177, 27.591774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.636700, 38.545483, 27.582489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043160, 0.016871, 0.998926,
		0.987592, 0.151835, 0.040106,
		-0.150996, 0.988262, -0.023215,
		37.591400, 38.841961, 27.575525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.185760, 38.392887, 28.079206>,  <37.697098, 38.150177, 27.591774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.185760, 38.392887, 28.079206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.850018, 38.605431, 28.033363>,  <37.648571, 38.732956, 28.005857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.850018, 38.605431, 28.033363>,  <38.185760, 38.392887, 28.079206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.850018, 38.605431, 28.033363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060672, 0.117940, 0.991166,
		0.540183, 0.838896, -0.066755,
		-0.839358, 0.531360, -0.114606,
		37.598209, 38.764839, 27.998981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.275085, 39.092190, 28.311413>,  <38.185760, 38.392887, 28.079206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.275085, 39.092190, 28.311413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.877518, 39.051907, 28.329187>,  <37.638977, 39.027737, 28.339851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.877518, 39.051907, 28.329187>,  <38.275085, 39.092190, 28.311413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.877518, 39.051907, 28.329187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029871, 0.141775, 0.989448,
		-0.105948, 0.984762, -0.137905,
		-0.993923, -0.100711, 0.044436,
		37.579342, 39.021694, 28.342518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.118500, 39.619797, 28.631853>,  <38.275085, 39.092190, 28.311413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.118500, 39.619797, 28.631853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.813232, 39.365406, 28.677647>,  <37.630070, 39.212772, 28.705122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.813232, 39.365406, 28.677647>,  <38.118500, 39.619797, 28.631853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.813232, 39.365406, 28.677647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049219, 0.119439, 0.991621,
		-0.644320, 0.762411, -0.059850,
		-0.763171, -0.635975, 0.114482,
		37.584282, 39.174614, 28.711992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.692276, 39.939190, 29.158300>,  <38.118500, 39.619797, 28.631853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.692276, 39.939190, 29.158300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.571869, 39.557842, 29.149580>,  <37.499626, 39.329033, 29.144348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.571869, 39.557842, 29.149580>,  <37.692276, 39.939190, 29.158300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.571869, 39.557842, 29.149580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143093, -0.067758, 0.987387,
		-0.942821, 0.294102, 0.156817,
		-0.301018, -0.953369, -0.021799,
		37.481564, 39.271832, 29.143040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.344273, 39.753948, 29.719954>,  <37.692276, 39.939190, 29.158300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.344273, 39.753948, 29.719954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.470024, 39.393391, 29.600855>,  <37.545475, 39.177055, 29.529396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.470024, 39.393391, 29.600855>,  <37.344273, 39.753948, 29.719954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.470024, 39.393391, 29.600855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151629, -0.261942, 0.953097,
		-0.937111, -0.344778, 0.054329,
		0.314376, -0.901396, -0.297747,
		37.564339, 39.122971, 29.511530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.020798, 39.286156, 30.142435>,  <37.344273, 39.753948, 29.719954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.020798, 39.286156, 30.142435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.323494, 39.064610, 30.003536>,  <37.505112, 38.931683, 29.920197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.323494, 39.064610, 30.003536>,  <37.020798, 39.286156, 30.142435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.323494, 39.064610, 30.003536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215785, -0.289778, 0.932451,
		-0.617073, -0.780555, -0.099772,
		0.756741, -0.553861, -0.347247,
		37.550518, 38.898453, 29.899363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.048527, 38.569630, 30.506451>,  <37.020798, 39.286156, 30.142435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.048527, 38.569630, 30.506451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.420105, 38.595932, 30.360722>,  <37.643051, 38.611713, 30.273285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.420105, 38.595932, 30.360722>,  <37.048527, 38.569630, 30.506451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.420105, 38.595932, 30.360722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352072, -0.461163, 0.814478,
		-0.114456, -0.884876, -0.451548,
		0.928948, 0.065756, -0.364323,
		37.698788, 38.615658, 30.251425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.215565, 37.944042, 30.680107>,  <37.048527, 38.569630, 30.506451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.215565, 37.944042, 30.680107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.533379, 38.175835, 30.607540>,  <37.724068, 38.314911, 30.564001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.533379, 38.175835, 30.607540>,  <37.215565, 37.944042, 30.680107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.533379, 38.175835, 30.607540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414779, -0.299744, 0.859134,
		0.443475, -0.757861, -0.478515,
		0.794536, 0.579483, -0.181416,
		37.771740, 38.349678, 30.553116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.844944, 37.543583, 30.786268>,  <37.215565, 37.944042, 30.680107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.844944, 37.543583, 30.786268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.922733, 37.931793, 30.843203>,  <37.969406, 38.164719, 30.877363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.922733, 37.931793, 30.843203>,  <37.844944, 37.543583, 30.786268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.922733, 37.931793, 30.843203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528969, -0.225963, 0.818005,
		0.826058, -0.083787, -0.557322,
		0.194472, 0.970526, 0.142338,
		37.981075, 38.222950, 30.885904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.336338, 37.557495, 31.444807>,  <37.844944, 37.543583, 30.786268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.336338, 37.557495, 31.444807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.326359, 37.953140, 31.386793>,  <38.320374, 38.190529, 31.351984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.326359, 37.953140, 31.386793>,  <38.336338, 37.557495, 31.444807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.326359, 37.953140, 31.386793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492937, 0.138386, 0.858989,
		0.869707, -0.050067, -0.491022,
		-0.024943, 0.989112, -0.145035,
		38.318874, 38.249874, 31.343283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.034775, 37.887768, 31.506332>,  <38.336338, 37.557495, 31.444807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.034775, 37.887768, 31.506332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.770363, 38.171333, 31.604700>,  <38.611717, 38.341473, 31.663721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.770363, 38.171333, 31.604700>,  <39.034775, 37.887768, 31.506332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.770363, 38.171333, 31.604700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460729, 0.124785, 0.878725,
		0.592256, 0.694165, -0.409105,
		-0.661031, 0.708917, 0.245918,
		38.572052, 38.384007, 31.678476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.332958, 38.552120, 31.654951>,  <39.034775, 37.887768, 31.506332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.332958, 38.552120, 31.654951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.984196, 38.576069, 31.849352>,  <38.774940, 38.590439, 31.965992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.984196, 38.576069, 31.849352>,  <39.332958, 38.552120, 31.654951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.984196, 38.576069, 31.849352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483783, 0.258874, 0.836025,
		-0.075756, 0.964054, -0.254680,
		-0.871903, 0.059876, 0.486004,
		38.722626, 38.594032, 31.995153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.387962, 39.053398, 32.175671>,  <39.332958, 38.552120, 31.654951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.387962, 39.053398, 32.175671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.070904, 38.864540, 32.329960>,  <38.880669, 38.751225, 32.422535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.070904, 38.864540, 32.329960>,  <39.387962, 39.053398, 32.175671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.070904, 38.864540, 32.329960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335207, 0.190969, 0.922587,
		-0.509258, 0.860586, 0.006895,
		-0.792649, -0.472146, 0.385727,
		38.833111, 38.722897, 32.445679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.022385, 39.500359, 32.780521>,  <39.387962, 39.053398, 32.175671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.022385, 39.500359, 32.780521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.909626, 39.122330, 32.846691>,  <38.841972, 38.895512, 32.886395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.909626, 39.122330, 32.846691>,  <39.022385, 39.500359, 32.780521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.909626, 39.122330, 32.846691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171594, 0.119978, 0.977835,
		-0.943975, 0.304035, 0.128348,
		-0.281897, -0.945076, 0.165427,
		38.825058, 38.838806, 32.896320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.435513, 39.446529, 33.291569>,  <39.022385, 39.500359, 32.780521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.435513, 39.446529, 33.291569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.612213, 39.088940, 33.321655>,  <38.718235, 38.874386, 33.339706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.612213, 39.088940, 33.321655>,  <38.435513, 39.446529, 33.291569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.612213, 39.088940, 33.321655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002638, 0.085138, 0.996366,
		-0.897133, -0.439950, 0.039968,
		0.441754, -0.893978, 0.075220,
		38.744740, 38.820747, 33.344223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.034130, 39.114437, 33.852909>,  <38.435513, 39.446529, 33.291569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.034130, 39.114437, 33.852909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.396851, 38.946819, 33.834538>,  <38.614483, 38.846249, 33.823513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.396851, 38.946819, 33.834538>,  <38.034130, 39.114437, 33.852909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.396851, 38.946819, 33.834538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102818, 0.114194, 0.988124,
		-0.408825, -0.900755, 0.146637,
		0.906802, -0.419047, -0.045928,
		38.668892, 38.821106, 33.820759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.145298, 38.858334, 34.444813>,  <38.034130, 39.114437, 33.852909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.145298, 38.858334, 34.444813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.518070, 38.796284, 34.313702>,  <38.741734, 38.759056, 34.235035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.518070, 38.796284, 34.313702>,  <38.145298, 38.858334, 34.444813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.518070, 38.796284, 34.313702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309243, -0.132121, 0.941761,
		-0.189394, -0.979021, -0.075158,
		0.931933, -0.155122, -0.327778,
		38.797649, 38.749748, 34.215370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.433792, 38.357834, 34.759583>,  <38.145298, 38.858334, 34.444813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.433792, 38.357834, 34.759583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.766186, 38.543564, 34.637024>,  <38.965622, 38.655003, 34.563488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.766186, 38.543564, 34.637024>,  <38.433792, 38.357834, 34.759583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.766186, 38.543564, 34.637024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351562, -0.011468, 0.936095,
		0.431135, -0.885592, -0.172767,
		0.830979, 0.464321, -0.306396,
		39.015480, 38.682861, 34.545105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.024662, 37.943230, 35.224022>,  <38.433792, 38.357834, 34.759583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.024662, 37.943230, 35.224022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.157318, 38.287685, 35.069901>,  <39.236912, 38.494358, 34.977428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.157318, 38.287685, 35.069901>,  <39.024662, 37.943230, 35.224022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.157318, 38.287685, 35.069901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591811, 0.128159, 0.795824,
		0.734694, -0.491951, -0.467129,
		0.331639, 0.861139, -0.385299,
		39.256809, 38.546028, 34.954311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.786232, 37.911858, 35.170906>,  <39.024662, 37.943230, 35.224022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.786232, 37.911858, 35.170906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.713242, 38.303993, 35.200920>,  <39.669449, 38.539276, 35.218929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.713242, 38.303993, 35.200920>,  <39.786232, 37.911858, 35.170906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.713242, 38.303993, 35.200920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535587, 0.035113, 0.843750,
		0.824530, 0.194149, -0.531467,
		-0.182475, 0.980343, 0.075033,
		39.658501, 38.598095, 35.223431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.466595, 38.312527, 35.250423>,  <39.786232, 37.911858, 35.170906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.466595, 38.312527, 35.250423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.169743, 38.527653, 35.410423>,  <39.991631, 38.656731, 35.506424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.169743, 38.527653, 35.410423>,  <40.466595, 38.312527, 35.250423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.169743, 38.527653, 35.410423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584990, 0.228428, 0.778208,
		0.327162, 0.811525, -0.484140,
		-0.742127, 0.537817, 0.400001,
		39.947105, 38.688999, 35.530422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.724289, 38.979191, 35.445469>,  <40.466595, 38.312527, 35.250423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.724289, 38.979191, 35.445469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.399849, 38.886009, 35.660076>,  <40.205185, 38.830101, 35.788841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.399849, 38.886009, 35.660076>,  <40.724289, 38.979191, 35.445469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.399849, 38.886009, 35.660076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482628, 0.251641, 0.838896,
		-0.330433, 0.939367, -0.091676,
		-0.811101, -0.232953, 0.536515,
		40.156517, 38.816124, 35.821030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.560455, 39.546085, 35.795727>,  <40.724289, 38.979191, 35.445469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.560455, 39.546085, 35.795727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.427326, 39.242447, 36.019512>,  <40.347450, 39.060265, 36.153782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.427326, 39.242447, 36.019512>,  <40.560455, 39.546085, 35.795727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.427326, 39.242447, 36.019512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440119, 0.399658, 0.804095,
		-0.833981, 0.513851, 0.201079,
		-0.332822, -0.759099, 0.559463,
		40.327480, 39.014717, 36.187351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.285824, 39.861862, 36.352703>,  <40.560455, 39.546085, 35.795727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.285824, 39.861862, 36.352703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.362553, 39.483509, 36.457401>,  <40.408588, 39.256496, 36.520222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.362553, 39.483509, 36.457401>,  <40.285824, 39.861862, 36.352703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.362553, 39.483509, 36.457401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495831, 0.323560, 0.805891,
		-0.846969, -0.024806, 0.531064,
		0.191822, -0.945882, 0.261746,
		40.420097, 39.199745, 36.535927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.220684, 39.713406, 37.041935>,  <40.285824, 39.861862, 36.352703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.220684, 39.713406, 37.041935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.507149, 39.478420, 36.891201>,  <40.679028, 39.337429, 36.800758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.507149, 39.478420, 36.891201>,  <40.220684, 39.713406, 37.041935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.507149, 39.478420, 36.891201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633924, 0.321622, 0.703349,
		-0.291993, -0.742595, 0.602739,
		0.716157, -0.587463, -0.376837,
		40.721996, 39.302181, 36.778149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.678150, 39.512341, 37.518391>,  <40.220684, 39.713406, 37.041935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.678150, 39.512341, 37.518391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.898407, 39.181305, 37.474777>,  <40.030560, 38.982685, 37.448608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.898407, 39.181305, 37.474777>,  <39.678150, 39.512341, 37.518391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.898407, 39.181305, 37.474777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575072, 0.281417, 0.768178,
		-0.605052, -0.485694, 0.630883,
		0.550640, -0.827591, -0.109037,
		40.063599, 38.933029, 37.442066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.762070, 39.046421, 38.152260>,  <39.678150, 39.512341, 37.518391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.762070, 39.046421, 38.152260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.082748, 39.004532, 37.916862>,  <40.275154, 38.979397, 37.775623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.082748, 39.004532, 37.916862>,  <39.762070, 39.046421, 38.152260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.082748, 39.004532, 37.916862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592466, 0.008773, 0.805548,
		-0.079198, -0.994462, 0.069079,
		0.801693, -0.104725, -0.588490,
		40.323257, 38.973114, 37.740314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.041992, 38.460842, 38.386562>,  <39.762070, 39.046421, 38.152260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.041992, 38.460842, 38.386562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.335045, 38.625900, 38.170055>,  <40.510876, 38.724937, 38.040150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.335045, 38.625900, 38.170055>,  <40.041992, 38.460842, 38.386562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.335045, 38.625900, 38.170055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597824, -0.009995, 0.801565,
		0.325354, -0.910835, -0.254014,
		0.732633, 0.412648, -0.541267,
		40.554836, 38.749695, 38.007675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.558346, 37.957417, 38.365711>,  <40.041992, 38.460842, 38.386562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.558346, 37.957417, 38.365711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.667068, 38.339676, 38.320366>,  <40.732304, 38.569031, 38.293159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.667068, 38.339676, 38.320366>,  <40.558346, 37.957417, 38.365711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.667068, 38.339676, 38.320366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581662, -0.069292, 0.810474,
		0.766675, -0.286233, -0.574700,
		0.271806, 0.955651, -0.113366,
		40.748611, 38.626369, 38.286354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.320396, 38.041077, 38.392338>,  <40.558346, 37.957417, 38.365711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.320396, 38.041077, 38.392338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.184628, 38.406494, 38.481983>,  <41.103165, 38.625744, 38.535770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.184628, 38.406494, 38.481983>,  <41.320396, 38.041077, 38.392338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.184628, 38.406494, 38.481983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599441, 0.026466, 0.799981,
		0.724887, 0.405877, -0.556599,
		-0.339425, 0.913545, 0.224114,
		41.082802, 38.680557, 38.549217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.828358, 38.576733, 38.382713>,  <41.320396, 38.041077, 38.392338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.828358, 38.576733, 38.382713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.558270, 38.720081, 38.640594>,  <41.396217, 38.806091, 38.795322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.558270, 38.720081, 38.640594>,  <41.828358, 38.576733, 38.382713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.558270, 38.720081, 38.640594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737093, 0.294892, 0.608057,
		0.027792, 0.885781, -0.463271,
		-0.675220, 0.358373, 0.644707,
		41.355705, 38.827595, 38.834007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.055538, 39.260624, 38.481930>,  <41.828358, 38.576733, 38.382713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.055538, 39.260624, 38.481930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.826344, 39.144024, 38.788319>,  <41.688828, 39.074066, 38.972153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.826344, 39.144024, 38.788319>,  <42.055538, 39.260624, 38.481930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.826344, 39.144024, 38.788319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677797, 0.356870, 0.642833,
		-0.460737, 0.887510, -0.006907,
		-0.572986, -0.291495, 0.765975,
		41.654449, 39.056576, 39.018112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.296352, 39.764526, 39.073528>,  <42.055538, 39.260624, 38.481930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.296352, 39.764526, 39.073528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.086258, 39.485695, 39.268757>,  <41.960201, 39.318398, 39.385895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.086258, 39.485695, 39.268757>,  <42.296352, 39.764526, 39.073528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.086258, 39.485695, 39.268757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609189, 0.092455, 0.787617,
		-0.594154, 0.711011, 0.376090,
		-0.525233, -0.697076, 0.488073,
		41.928688, 39.276573, 39.415180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.223637, 39.992249, 39.846706>,  <42.296352, 39.764526, 39.073528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.223637, 39.992249, 39.846706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.224606, 39.595535, 39.795547>,  <42.225189, 39.357506, 39.764851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.224606, 39.595535, 39.795547>,  <42.223637, 39.992249, 39.846706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.224606, 39.595535, 39.795547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720826, -0.086912, 0.687645,
		-0.693112, -0.093860, 0.714693,
		0.002426, -0.991785, -0.127896,
		42.225334, 39.298000, 39.757179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.108566, 39.779842, 40.507744>,  <42.223637, 39.992249, 39.846706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.108566, 39.779842, 40.507744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.296467, 39.529858, 40.258343>,  <42.409206, 39.379868, 40.108700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.296467, 39.529858, 40.258343>,  <42.108566, 39.779842, 40.507744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.296467, 39.529858, 40.258343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775510, -0.045333, 0.629706,
		-0.421807, -0.779338, 0.463369,
		0.469748, -0.624962, -0.623506,
		42.437389, 39.342369, 40.071289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.580505, 39.940269, 41.036171>,  <42.108566, 39.779842, 40.507744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.580505, 39.940269, 41.036171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.717724, 39.589031, 41.169598>,  <42.800056, 39.378288, 41.249653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.717724, 39.589031, 41.169598>,  <42.580505, 39.940269, 41.036171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.717724, 39.589031, 41.169598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459255, -0.466569, -0.755909,
		0.819391, 0.106123, -0.563326,
		0.343050, -0.878096, 0.333564,
		42.820641, 39.325603, 41.269669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.004185, 39.467136, 40.536404>,  <42.580505, 39.940269, 41.036171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.004185, 39.467136, 40.536404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.787758, 39.238438, 40.783096>,  <42.657902, 39.101219, 40.931114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.787758, 39.238438, 40.783096>,  <43.004185, 39.467136, 40.536404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.787758, 39.238438, 40.783096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433434, -0.438864, -0.787104,
		0.720685, -0.693185, -0.010361,
		-0.541062, -0.571745, 0.616733,
		42.625439, 39.066914, 40.968117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.056782, 38.799286, 40.315548>,  <43.004185, 39.467136, 40.536404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.056782, 38.799286, 40.315548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.700436, 38.892738, 40.471382>,  <42.486629, 38.948811, 40.564880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.700436, 38.892738, 40.471382>,  <43.056782, 38.799286, 40.315548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.700436, 38.892738, 40.471382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451552, -0.361807, -0.815596,
		-0.049597, -0.902503, 0.427819,
		-0.890865, 0.233634, 0.389582,
		42.433178, 38.962830, 40.588257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.585030, 38.300087, 40.306343>,  <43.056782, 38.799286, 40.315548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.585030, 38.300087, 40.306343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.380493, 38.643467, 40.290333>,  <42.257771, 38.849495, 40.280727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.380493, 38.643467, 40.290333>,  <42.585030, 38.300087, 40.306343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.380493, 38.643467, 40.290333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391131, -0.273945, -0.878619,
		-0.765212, -0.433617, 0.475844,
		-0.511339, 0.858446, -0.040025,
		42.227093, 38.901001, 40.278324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.199989, 38.140034, 39.784393>,  <42.585030, 38.300087, 40.306343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.199989, 38.140034, 39.784393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.103374, 38.522385, 39.851265>,  <42.045406, 38.751797, 39.891388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.103374, 38.522385, 39.851265>,  <42.199989, 38.140034, 39.784393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.103374, 38.522385, 39.851265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646763, -0.030140, -0.762096,
		-0.723435, -0.292202, 0.625508,
		-0.241538, 0.955882, 0.167181,
		42.030914, 38.809151, 39.901421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.485649, 38.252491, 40.058449>,  <42.199989, 38.140034, 39.784393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.485649, 38.252491, 40.058449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.606003, 38.579239, 39.861595>,  <41.678215, 38.775288, 39.743484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.606003, 38.579239, 39.861595>,  <41.485649, 38.252491, 40.058449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.606003, 38.579239, 39.861595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680846, -0.177343, -0.710633,
		-0.667769, 0.548885, 0.502801,
		0.300888, 0.816868, -0.492130,
		41.696270, 38.824299, 39.713955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.880512, 38.668831, 40.044415>,  <41.485649, 38.252491, 40.058449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.880512, 38.668831, 40.044415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.119461, 38.786179, 39.745861>,  <41.262829, 38.856586, 39.566730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.119461, 38.786179, 39.745861>,  <40.880512, 38.668831, 40.044415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.119461, 38.786179, 39.745861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779054, -0.008607, -0.626898,
		-0.190336, 0.955961, 0.223407,
		0.597368, 0.293367, -0.746383,
		41.298672, 38.874187, 39.521946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.488449, 39.265926, 39.646076>,  <40.880512, 38.668831, 40.044415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.488449, 39.265926, 39.646076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.771851, 39.117130, 39.406193>,  <40.941891, 39.027851, 39.262264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.771851, 39.117130, 39.406193>,  <40.488449, 39.265926, 39.646076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.771851, 39.117130, 39.406193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665867, -0.070896, -0.742694,
		0.233758, 0.925526, -0.297925,
		0.708504, -0.371989, -0.599705,
		40.984402, 39.005535, 39.226280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.610046, 39.674671, 39.123558>,  <40.488449, 39.265926, 39.646076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.610046, 39.674671, 39.123558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.671711, 39.299877, 38.998154>,  <40.708710, 39.075001, 38.922913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.671711, 39.299877, 38.998154>,  <40.610046, 39.674671, 39.123558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.671711, 39.299877, 38.998154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833210, 0.047255, -0.550933,
		0.531033, 0.346150, -0.773424,
		0.154157, -0.936989, -0.313509,
		40.717957, 39.018780, 38.904102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.473587, 39.584869, 38.384289>,  <40.610046, 39.674671, 39.123558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.473587, 39.584869, 38.384289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.408356, 39.249901, 38.592953>,  <40.369217, 39.048920, 38.718151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.408356, 39.249901, 38.592953>,  <40.473587, 39.584869, 38.384289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.408356, 39.249901, 38.592953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.934034, -0.039259, -0.355020,
		0.317780, -0.545149, -0.775776,
		-0.163083, -0.837419, 0.521663,
		40.359432, 38.998676, 38.749451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.143009, 39.922157, 38.070328>,  <40.473587, 39.584869, 38.384289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.143009, 39.922157, 38.070328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.122257, 39.525269, 38.115582>,  <41.109806, 39.287136, 38.142735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.122257, 39.525269, 38.115582>,  <41.143009, 39.922157, 38.070328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.122257, 39.525269, 38.115582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277652, -0.094491, -0.956023,
		0.959280, -0.081012, -0.270591,
		-0.051881, -0.992224, 0.113137,
		41.106693, 39.227600, 38.149521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.426777, 39.540489, 37.460808>,  <41.143009, 39.922157, 38.070328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.426777, 39.540489, 37.460808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.155998, 39.302017, 37.633461>,  <40.993530, 39.158932, 37.737053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.155998, 39.302017, 37.633461>,  <41.426777, 39.540489, 37.460808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.155998, 39.302017, 37.633461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371452, -0.229556, -0.899626,
		0.635425, -0.769332, -0.066055,
		-0.676948, -0.596182, 0.431635,
		40.952915, 39.123161, 37.762951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.503143, 38.846992, 37.165134>,  <41.426777, 39.540489, 37.460808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.503143, 38.846992, 37.165134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.135399, 38.892933, 37.315647>,  <40.914753, 38.920498, 37.405956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.135399, 38.892933, 37.315647>,  <41.503143, 38.846992, 37.165134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.135399, 38.892933, 37.315647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392326, -0.338964, -0.855093,
		0.029341, -0.933763, 0.356688,
		-0.919358, 0.114848, 0.376285,
		40.859592, 38.927387, 37.428532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.162407, 38.368645, 36.751911>,  <41.503143, 38.846992, 37.165134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.162407, 38.368645, 36.751911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.874748, 38.584816, 36.926620>,  <40.702152, 38.714520, 37.031448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.874748, 38.584816, 36.926620>,  <41.162407, 38.368645, 36.751911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.874748, 38.584816, 36.926620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619716, -0.214502, -0.754944,
		-0.314301, -0.813591, 0.489167,
		-0.719143, 0.540424, 0.436777,
		40.659004, 38.746944, 37.057655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.575386, 37.965099, 36.944744>,  <41.162407, 38.368645, 36.751911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.575386, 37.965099, 36.944744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.520916, 38.345242, 36.832832>,  <40.488235, 38.573326, 36.765686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.520916, 38.345242, 36.832832>,  <40.575386, 37.965099, 36.944744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.520916, 38.345242, 36.832832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518083, -0.309031, -0.797552,
		-0.844421, 0.036347, 0.534445,
		-0.136172, 0.950357, -0.279783,
		40.480064, 38.630348, 36.748898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.863823, 38.052338, 36.877869>,  <40.575386, 37.965099, 36.944744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.863823, 38.052338, 36.877869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.008400, 38.353504, 36.657879>,  <40.095146, 38.534203, 36.525883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.008400, 38.353504, 36.657879>,  <39.863823, 38.052338, 36.877869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.008400, 38.353504, 36.657879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603562, -0.260662, -0.753504,
		-0.710683, 0.604297, 0.360215,
		0.361446, 0.752914, -0.549979,
		40.116833, 38.579380, 36.492886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.276398, 38.599899, 36.662296>,  <39.863823, 38.052338, 36.877869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.276398, 38.599899, 36.662296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.562466, 38.580757, 36.383373>,  <39.734108, 38.569271, 36.216019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.562466, 38.580757, 36.383373>,  <39.276398, 38.599899, 36.662296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.562466, 38.580757, 36.383373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697247, -0.118398, -0.706985,
		-0.048726, 0.991812, -0.118044,
		0.715173, -0.047857, -0.697307,
		39.777016, 38.566399, 36.174183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.304699, 39.157200, 36.181370>,  <39.276398, 38.599899, 36.662296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.304699, 39.157200, 36.181370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.438995, 38.827599, 35.998810>,  <39.519573, 38.629837, 35.889275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.438995, 38.827599, 35.998810>,  <39.304699, 39.157200, 36.181370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.438995, 38.827599, 35.998810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757915, 0.051391, -0.650326,
		0.559324, 0.564253, -0.607268,
		0.335740, -0.824001, -0.456400,
		39.539719, 38.580399, 35.861889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.002682, 39.659733, 35.683640>,  <39.304699, 39.157200, 36.181370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.002682, 39.659733, 35.683640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.279728, 39.371723, 35.666439>,  <39.445957, 39.198917, 35.656120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.279728, 39.371723, 35.666439>,  <39.002682, 39.659733, 35.683640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.279728, 39.371723, 35.666439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355128, -0.288512, -0.889182,
		0.627824, 0.631135, -0.455529,
		0.692619, -0.720021, -0.042999,
		39.487514, 39.155716, 35.653538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.272747, 39.744228, 35.008598>,  <39.002682, 39.659733, 35.683640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.272747, 39.744228, 35.008598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.417152, 39.387646, 35.118130>,  <39.503796, 39.173698, 35.183849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.417152, 39.387646, 35.118130>,  <39.272747, 39.744228, 35.008598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.417152, 39.387646, 35.118130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041855, -0.308825, -0.950197,
		0.931623, 0.331569, -0.148800,
		0.361009, -0.891453, 0.273831,
		39.525455, 39.120209, 35.200279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.752392, 39.623894, 34.527531>,  <39.272747, 39.744228, 35.008598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.752392, 39.623894, 34.527531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.647755, 39.253414, 34.636139>,  <39.584972, 39.031128, 34.701302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.647755, 39.253414, 34.636139>,  <39.752392, 39.623894, 34.527531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.647755, 39.253414, 34.636139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225345, -0.214930, -0.950276,
		0.938503, -0.309773, -0.152490,
		-0.261595, -0.926199, 0.271518,
		39.569275, 38.975555, 34.717594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.070038, 39.189407, 34.105156>,  <39.752392, 39.623894, 34.527531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.070038, 39.189407, 34.105156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.746094, 39.011864, 34.258575>,  <39.551727, 38.905338, 34.350628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.746094, 39.011864, 34.258575>,  <40.070038, 39.189407, 34.105156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.746094, 39.011864, 34.258575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219792, -0.376615, -0.899918,
		0.543887, -0.813112, 0.207450,
		-0.809863, -0.443858, 0.383551,
		39.503136, 38.878708, 34.373642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.096012, 38.623806, 33.780056>,  <40.070038, 39.189407, 34.105156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.096012, 38.623806, 33.780056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.721214, 38.651127, 33.917099>,  <39.496334, 38.667519, 33.999325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.721214, 38.651127, 33.917099>,  <40.096012, 38.623806, 33.780056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.721214, 38.651127, 33.917099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346139, -0.314129, -0.884031,
		0.047240, -0.946920, 0.317979,
		-0.936994, 0.068303, 0.342605,
		39.440117, 38.671619, 34.019882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.767277, 38.154209, 33.508358>,  <40.096012, 38.623806, 33.780056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.767277, 38.154209, 33.508358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.437706, 38.351814, 33.619431>,  <39.239964, 38.470375, 33.686073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.437706, 38.351814, 33.619431>,  <39.767277, 38.154209, 33.508358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.437706, 38.351814, 33.619431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419991, -0.203319, -0.884460,
		-0.380474, -0.845349, 0.374999,
		-0.823922, 0.494010, 0.277681,
		39.190529, 38.500015, 33.702736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.173229, 37.616108, 33.529354>,  <39.767277, 38.154209, 33.508358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.173229, 37.616108, 33.529354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.055275, 37.991890, 33.459541>,  <38.984501, 38.217361, 33.417656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.055275, 37.991890, 33.459541>,  <39.173229, 37.616108, 33.529354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.055275, 37.991890, 33.459541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309042, -0.266605, -0.912916,
		-0.904176, -0.215270, 0.368950,
		-0.294887, 0.939458, -0.174530,
		38.966808, 38.273727, 33.407181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.350395, 37.196049, 32.983799>,  <39.173229, 37.616108, 33.529354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.350395, 37.196049, 32.983799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.585342, 36.981693, 33.226391>,  <39.726311, 36.853081, 33.371948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.585342, 36.981693, 33.226391>,  <39.350395, 37.196049, 32.983799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.585342, 36.981693, 33.226391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577347, -0.247703, -0.778019,
		0.567162, 0.807132, 0.163904,
		0.587366, -0.535892, 0.606483,
		39.761551, 36.820927, 33.408337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.020943, 37.197269, 32.831844>,  <39.350395, 37.196049, 32.983799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.020943, 37.197269, 32.831844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.063072, 36.836155, 32.998642>,  <40.088348, 36.619488, 33.098721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.063072, 36.836155, 32.998642>,  <40.020943, 37.197269, 32.831844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.063072, 36.836155, 32.998642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583274, -0.283537, -0.761182,
		0.805418, 0.323391, 0.496709,
		0.105324, -0.902788, 0.416991,
		40.094669, 36.565319, 33.123741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.714375, 37.078896, 32.982342>,  <40.020943, 37.197269, 32.831844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.714375, 37.078896, 32.982342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.537731, 36.727432, 32.909744>,  <40.431744, 36.516556, 32.866188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.537731, 36.727432, 32.909744>,  <40.714375, 37.078896, 32.982342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.537731, 36.727432, 32.909744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786001, -0.281334, -0.550503,
		0.432645, -0.385760, 0.814867,
		-0.441612, -0.878658, -0.181490,
		40.405247, 36.463837, 32.855297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.290543, 36.604256, 33.144318>,  <40.714375, 37.078896, 32.982342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.290543, 36.604256, 33.144318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.996616, 36.416142, 32.948818>,  <40.820263, 36.303272, 32.831516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.996616, 36.416142, 32.948818>,  <41.290543, 36.604256, 33.144318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.996616, 36.416142, 32.948818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667914, -0.627146, -0.400722,
		-0.118065, -0.620900, 0.774947,
		-0.734814, -0.470287, -0.488752,
		40.776173, 36.275055, 32.802193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.429855, 36.067787, 33.461170>,  <41.290543, 36.604256, 33.144318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.429855, 36.067787, 33.461170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.527294, 35.819733, 33.759457>,  <41.585758, 35.670902, 33.938427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.527294, 35.819733, 33.759457>,  <41.429855, 36.067787, 33.461170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.527294, 35.819733, 33.759457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945452, -0.019633, -0.325170,
		0.216290, 0.784250, 0.581524,
		0.243597, -0.620134, 0.745717,
		41.600372, 35.633694, 33.983173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.059246, 36.355782, 33.821678>,  <41.429855, 36.067787, 33.461170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.059246, 36.355782, 33.821678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.024483, 35.961475, 33.879242>,  <42.003624, 35.724892, 33.913780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.024483, 35.961475, 33.879242>,  <42.059246, 36.355782, 33.821678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.024483, 35.961475, 33.879242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973806, -0.114529, -0.196429,
		0.210115, 0.123073, 0.969899,
		-0.086907, -0.985767, 0.143913,
		41.998409, 35.665745, 33.922417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.495495, 36.070488, 34.342712>,  <42.059246, 36.355782, 33.821678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.495495, 36.070488, 34.342712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.426277, 35.769047, 34.089058>,  <42.384747, 35.588181, 33.936863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.426277, 35.769047, 34.089058>,  <42.495495, 36.070488, 34.342712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.426277, 35.769047, 34.089058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983973, -0.104145, -0.144742,
		0.043036, -0.649024, 0.759550,
		-0.173045, -0.753606, -0.634140,
		42.374363, 35.542965, 33.898815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.753071, 35.338295, 34.487209>,  <42.495495, 36.070488, 34.342712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.753071, 35.338295, 34.487209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.748661, 35.373940, 34.088825>,  <42.746014, 35.395325, 33.849796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.748661, 35.373940, 34.088825>,  <42.753071, 35.338295, 34.487209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.748661, 35.373940, 34.088825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996529, -0.081214, -0.018299,
		-0.082517, -0.992705, -0.087904,
		-0.011026, 0.089109, -0.995961,
		42.745354, 35.400673, 33.790035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.005524, 34.708981, 34.094501>,  <42.753071, 35.338295, 34.487209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.005524, 34.708981, 34.094501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.100945, 35.051456, 33.911182>,  <43.158199, 35.256943, 33.801193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.100945, 35.051456, 33.911182>,  <43.005524, 34.708981, 34.094501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.100945, 35.051456, 33.911182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936224, -0.077374, 0.342779,
		0.258024, -0.510838, -0.820042,
		0.238554, 0.856188, -0.458295,
		43.172512, 35.308311, 33.773693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.613976, 34.665359, 33.833088>,  <43.005524, 34.708981, 34.094501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.613976, 34.665359, 33.833088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.560669, 35.060295, 33.867485>,  <43.528687, 35.297256, 33.888123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.560669, 35.060295, 33.867485>,  <43.613976, 34.665359, 33.833088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.560669, 35.060295, 33.867485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921501, 0.091502, 0.377443,
		0.364796, 0.129545, -0.922031,
		-0.133263, 0.987343, 0.085997,
		43.520691, 35.356499, 33.893284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.982483, 35.008476, 33.461330>,  <43.613976, 34.665359, 33.833088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.982483, 35.008476, 33.461330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.897690, 35.207878, 33.797558>,  <43.846813, 35.327518, 33.999294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.897690, 35.207878, 33.797558>,  <43.982483, 35.008476, 33.461330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.897690, 35.207878, 33.797558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959512, -0.057075, 0.275825,
		0.185475, 0.865007, -0.466221,
		-0.211981, 0.498503, 0.840570,
		43.834095, 35.357430, 34.049728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.380932, 35.475071, 33.672649>,  <43.982483, 35.008476, 33.461330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.380932, 35.475071, 33.672649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.252537, 35.420231, 34.047493>,  <44.175499, 35.387325, 34.272400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.252537, 35.420231, 34.047493>,  <44.380932, 35.475071, 33.672649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.252537, 35.420231, 34.047493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946954, -0.062776, 0.315178,
		0.015617, 0.988566, 0.149979,
		-0.320989, -0.137101, 0.937107,
		44.156239, 35.379101, 34.328625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.759007, 35.967106, 33.978279>,  <44.380932, 35.475071, 33.672649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.759007, 35.967106, 33.978279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.627090, 35.727448, 34.270103>,  <44.547939, 35.583652, 34.445198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.627090, 35.727448, 34.270103>,  <44.759007, 35.967106, 33.978279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.627090, 35.727448, 34.270103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879826, 0.085108, 0.467614,
		-0.342262, 0.796101, 0.499079,
		-0.329793, -0.599149, 0.729559,
		44.528152, 35.547703, 34.488972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.991764, 36.202904, 34.725380>,  <44.759007, 35.967106, 33.978279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.991764, 36.202904, 34.725380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.904411, 35.812565, 34.723030>,  <44.851997, 35.578362, 34.721619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.904411, 35.812565, 34.723030>,  <44.991764, 36.202904, 34.725380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.904411, 35.812565, 34.723030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929403, -0.209820, 0.303621,
		-0.297520, 0.060846, 0.952775,
		-0.218385, -0.975845, -0.005875,
		44.838898, 35.519810, 34.721268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.276951, 35.836636, 35.414112>,  <44.991764, 36.202904, 34.725380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.276951, 35.836636, 35.414112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.258179, 35.642479, 35.064896>,  <45.246918, 35.525986, 34.855366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.258179, 35.642479, 35.064896>,  <45.276951, 35.836636, 35.414112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.258179, 35.642479, 35.064896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940533, -0.315849, 0.125051,
		-0.336447, -0.815252, 0.471347,
		-0.046926, -0.485390, -0.873037,
		45.244102, 35.496861, 34.802986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.402088, 35.043919, 35.478134>,  <45.276951, 35.836636, 35.414112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.402088, 35.043919, 35.478134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.504883, 35.190571, 35.120464>,  <45.566559, 35.278564, 34.905865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.504883, 35.190571, 35.120464>,  <45.402088, 35.043919, 35.478134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.504883, 35.190571, 35.120464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898823, -0.430620, 0.081755,
		-0.355073, -0.824710, -0.440200,
		0.256983, 0.366633, -0.894170,
		45.581978, 35.300560, 34.852215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.706554, 34.487118, 35.056095>,  <45.402088, 35.043919, 35.478134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.706554, 34.487118, 35.056095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.849415, 34.843388, 34.943569>,  <45.935131, 35.057148, 34.876053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.849415, 34.843388, 34.943569>,  <45.706554, 34.487118, 35.056095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.849415, 34.843388, 34.943569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931648, -0.361265, 0.038989,
		-0.066904, -0.276015, -0.958822,
		0.357150, 0.890676, -0.281319,
		45.956558, 35.110592, 34.859173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.162502, 34.413231, 34.482052>,  <45.706554, 34.487118, 35.056095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.162502, 34.413231, 34.482052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.257820, 34.717888, 34.723087>,  <46.315010, 34.900681, 34.867710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.257820, 34.717888, 34.723087>,  <46.162502, 34.413231, 34.482052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.257820, 34.717888, 34.723087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916373, -0.381838, 0.120249,
		0.321679, 0.523546, -0.788937,
		0.238290, 0.761643, 0.602593,
		46.329308, 34.946381, 34.903866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.743233, 34.828571, 34.161694>,  <46.162502, 34.413231, 34.482052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.743233, 34.828571, 34.161694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.738949, 34.856491, 34.560696>,  <46.736378, 34.873241, 34.800095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.738949, 34.856491, 34.560696>,  <46.743233, 34.828571, 34.161694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.738949, 34.856491, 34.560696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970035, -0.241426, 0.027308,
		0.242729, 0.967906, -0.065123,
		-0.010709, 0.069800, 0.997504,
		46.735737, 34.877430, 34.859947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.231289, 35.321785, 34.353607>,  <46.743233, 34.828571, 34.161694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.231289, 35.321785, 34.353607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.192104, 35.002403, 34.591217>,  <47.168594, 34.810772, 34.733784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.192104, 35.002403, 34.591217>,  <47.231289, 35.321785, 34.353607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.192104, 35.002403, 34.591217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993057, -0.039358, 0.110858,
		-0.065136, 0.600763, 0.796769,
		-0.097959, -0.798458, 0.594028,
		47.162716, 34.762867, 34.769424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.644619, 35.346096, 35.022842>,  <47.231289, 35.321785, 34.353607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.644619, 35.346096, 35.022842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.564297, 34.961788, 34.946312>,  <47.516102, 34.731205, 34.900394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.564297, 34.961788, 34.946312>,  <47.644619, 35.346096, 35.022842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.564297, 34.961788, 34.946312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972112, -0.219581, 0.082359,
		-0.121139, -0.169451, 0.978065,
		-0.200809, -0.960766, -0.191325,
		47.504055, 34.673557, 34.888916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.464058, 34.355137, 23.888676> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.089550, 34.384689, 23.751301>,  <35.864845, 34.402420, 23.668877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.089550, 34.384689, 23.751301>,  <36.464058, 34.355137, 23.888676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.089550, 34.384689, 23.751301> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348209, -0.324412, 0.879493,
		-0.046438, 0.943026, 0.329461,
		-0.936266, 0.073880, -0.343435,
		35.808670, 34.406853, 23.648270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.124290, 34.590282, 24.463169>,  <36.464058, 34.355137, 23.888676>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.124290, 34.590282, 24.463169> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.839989, 34.450092, 24.219202>,  <35.669407, 34.365978, 24.072823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.839989, 34.450092, 24.219202>,  <36.124290, 34.590282, 24.463169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.839989, 34.450092, 24.219202> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568683, -0.224056, 0.791453,
		-0.414037, 0.909378, -0.040058,
		-0.710755, -0.350471, -0.609915,
		35.626762, 34.344952, 24.036228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.462421, 34.840786, 24.783674>,  <36.124290, 34.590282, 24.463169>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.462421, 34.840786, 24.783674> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.359035, 34.524494, 24.561701>,  <35.297005, 34.334721, 24.428516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.359035, 34.524494, 24.561701>,  <35.462421, 34.840786, 24.783674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.359035, 34.524494, 24.561701> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479086, -0.393908, 0.784419,
		-0.838853, 0.468603, -0.277015,
		-0.258463, -0.790726, -0.554932,
		35.281498, 34.287277, 24.395222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.763443, 34.732849, 24.977732>,  <35.462421, 34.840786, 24.783674>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.763443, 34.732849, 24.977732> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.874100, 34.381508, 24.821798>,  <34.940495, 34.170704, 24.728239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.874100, 34.381508, 24.821798>,  <34.763443, 34.732849, 24.977732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.874100, 34.381508, 24.821798> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452059, -0.476925, 0.753781,
		-0.848005, -0.032301, -0.529004,
		0.276643, -0.878350, -0.389833,
		34.957092, 34.118004, 24.704849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.214725, 34.413315, 24.985189>,  <34.763443, 34.732849, 24.977732>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.214725, 34.413315, 24.985189> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.484600, 34.121891, 24.937859>,  <34.646526, 33.947037, 24.909460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.484600, 34.121891, 24.937859>,  <34.214725, 34.413315, 24.985189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.484600, 34.121891, 24.937859> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390537, -0.488398, 0.780351,
		-0.626324, -0.480279, -0.614044,
		0.674684, -0.728560, -0.118329,
		34.687004, 33.903324, 24.902361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.835972, 33.826530, 25.060381>,  <34.214725, 34.413315, 24.985189>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.835972, 33.826530, 25.060381> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.217125, 33.743595, 25.148952>,  <34.445816, 33.693836, 25.202095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.217125, 33.743595, 25.148952>,  <33.835972, 33.826530, 25.060381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.217125, 33.743595, 25.148952> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289090, -0.399523, 0.869947,
		-0.091904, -0.892969, -0.440636,
		0.952880, -0.207335, 0.221430,
		34.502991, 33.681393, 25.215382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.679829, 33.250854, 25.378750>,  <33.835972, 33.826530, 25.060381>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.679829, 33.250854, 25.378750> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.053303, 33.363903, 25.466705>,  <34.277390, 33.431732, 25.519478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.053303, 33.363903, 25.466705>,  <33.679829, 33.250854, 25.378750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.053303, 33.363903, 25.466705> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138682, -0.280744, 0.949710,
		0.330144, -0.917228, -0.222932,
		0.933688, 0.282624, 0.219889,
		34.333408, 33.448689, 25.532673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.848213, 32.832146, 25.913212>,  <33.679829, 33.250854, 25.378750>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.848213, 32.832146, 25.913212> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.122307, 33.121773, 25.944666>,  <34.286762, 33.295547, 25.963539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.122307, 33.121773, 25.944666>,  <33.848213, 32.832146, 25.913212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.122307, 33.121773, 25.944666> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084721, -0.186478, 0.978799,
		0.723379, -0.664044, -0.189124,
		0.685234, 0.724065, 0.078636,
		34.327877, 33.338993, 25.968256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.305958, 32.526230, 26.394253>,  <33.848213, 32.832146, 25.913212>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.305958, 32.526230, 26.394253> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.345364, 32.924065, 26.381054>,  <34.369007, 33.162766, 26.373135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.345364, 32.924065, 26.381054>,  <34.305958, 32.526230, 26.394253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.345364, 32.924065, 26.381054> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084196, 0.024711, 0.996143,
		0.991568, -0.100910, -0.081306,
		0.098512, 0.994589, -0.032999,
		34.374916, 33.222443, 26.371155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.824989, 32.749378, 26.859119>,  <34.305958, 32.526230, 26.394253>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.824989, 32.749378, 26.859119> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.630592, 33.097919, 26.832134>,  <34.513954, 33.307045, 26.815943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.630592, 33.097919, 26.832134>,  <34.824989, 32.749378, 26.859119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.630592, 33.097919, 26.832134> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060637, 0.110623, 0.992011,
		0.871854, 0.478024, -0.106599,
		-0.485997, 0.871353, -0.067462,
		34.484795, 33.359325, 26.811895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.268234, 33.255280, 27.134977>,  <34.824989, 32.749378, 26.859119>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.268234, 33.255280, 27.134977> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.887703, 33.372898, 27.171873>,  <34.659386, 33.443470, 27.194012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.887703, 33.372898, 27.171873>,  <35.268234, 33.255280, 27.134977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.887703, 33.372898, 27.171873> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135159, 0.129114, 0.982376,
		0.276955, 0.947030, -0.162574,
		-0.951330, 0.294047, 0.092241,
		34.602303, 33.461113, 27.199545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.366714, 33.693462, 27.630295>,  <35.268234, 33.255280, 27.134977>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.366714, 33.693462, 27.630295> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.971695, 33.636772, 27.657597>,  <34.734684, 33.602757, 27.673977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.971695, 33.636772, 27.657597>,  <35.366714, 33.693462, 27.630295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.971695, 33.636772, 27.657597> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036232, 0.217304, 0.975431,
		-0.153075, 0.965760, -0.209464,
		-0.987550, -0.141725, 0.068255,
		34.675430, 33.594254, 27.678074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.121094, 34.323502, 27.940199>,  <35.366714, 33.693462, 27.630295>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.121094, 34.323502, 27.940199> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.838638, 34.045238, 27.993006>,  <34.669167, 33.878281, 28.024689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.838638, 34.045238, 27.993006>,  <35.121094, 34.323502, 27.940199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.838638, 34.045238, 27.993006> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116687, 0.298221, 0.947338,
		-0.698395, 0.653545, -0.291759,
		-0.706137, -0.695660, 0.132016,
		34.626797, 33.836540, 28.032610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.610584, 34.697227, 28.342747>,  <35.121094, 34.323502, 27.940199>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.610584, 34.697227, 28.342747> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.533028, 34.309322, 28.402029>,  <34.486492, 34.076580, 28.437599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.533028, 34.309322, 28.402029>,  <34.610584, 34.697227, 28.342747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.533028, 34.309322, 28.402029> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258161, 0.196187, 0.945972,
		-0.946445, 0.145159, -0.288395,
		-0.193896, -0.969763, 0.148206,
		34.474857, 34.018394, 28.446491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.980740, 34.660759, 28.813841>,  <34.610584, 34.697227, 28.342747>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.980740, 34.660759, 28.813841> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.155991, 34.304886, 28.865229>,  <34.261143, 34.091362, 28.896061>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.155991, 34.304886, 28.865229>,  <33.980740, 34.660759, 28.813841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.155991, 34.304886, 28.865229> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011418, 0.148413, 0.988860,
		-0.898840, -0.431780, 0.075182,
		0.438127, -0.889686, 0.128470,
		34.287430, 34.037979, 28.903770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.648743, 34.415497, 29.412626>,  <33.980740, 34.660759, 28.813841>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.648743, 34.415497, 29.412626> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.982658, 34.202663, 29.356035>,  <34.183006, 34.074963, 29.322081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.982658, 34.202663, 29.356035>,  <33.648743, 34.415497, 29.412626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.982658, 34.202663, 29.356035> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087873, -0.124908, 0.988269,
		-0.543512, -0.837429, -0.057516,
		0.834789, -0.532082, -0.141477,
		34.233097, 34.043037, 29.313593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.635372, 33.763691, 29.811329>,  <33.648743, 34.415497, 29.412626>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.635372, 33.763691, 29.811329> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.017052, 33.874020, 29.764990>,  <34.246059, 33.940216, 29.737186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.017052, 33.874020, 29.764990>,  <33.635372, 33.763691, 29.811329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.017052, 33.874020, 29.764990> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161085, -0.147405, 0.975870,
		0.252090, -0.949839, -0.185085,
		0.954202, 0.275822, -0.115845,
		34.303314, 33.956764, 29.730236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.071953, 33.298290, 30.185272>,  <33.635372, 33.763691, 29.811329>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.071953, 33.298290, 30.185272> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.295105, 33.628223, 30.148567>,  <34.428997, 33.826183, 30.126545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.295105, 33.628223, 30.148567>,  <34.071953, 33.298290, 30.185272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.295105, 33.628223, 30.148567> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250552, -0.061982, 0.966117,
		0.791198, -0.561967, -0.241242,
		0.557879, 0.824834, -0.091763,
		34.462467, 33.875675, 30.121038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.542767, 33.188782, 30.680273>,  <34.071953, 33.298290, 30.185272>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.542767, 33.188782, 30.680273> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.614464, 33.574577, 30.602678>,  <34.657482, 33.806053, 30.556122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.614464, 33.574577, 30.602678>,  <34.542767, 33.188782, 30.680273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.614464, 33.574577, 30.602678> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312817, 0.131070, 0.940727,
		0.932747, -0.229303, -0.278215,
		0.179245, 0.964490, -0.193985,
		34.668236, 33.863926, 30.544483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.136288, 33.206978, 30.957541>,  <34.542767, 33.188782, 30.680273>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.136288, 33.206978, 30.957541> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.037128, 33.594093, 30.939974>,  <34.977634, 33.826363, 30.929434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.037128, 33.594093, 30.939974>,  <35.136288, 33.206978, 30.957541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.037128, 33.594093, 30.939974> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348991, 0.131498, 0.927854,
		0.903744, 0.214684, -0.370348,
		-0.247895, 0.967791, -0.043918,
		34.962761, 33.884430, 30.926798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.686123, 33.592766, 31.204355>,  <35.136288, 33.206978, 30.957541>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.686123, 33.592766, 31.204355> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.391937, 33.860981, 31.243294>,  <35.215427, 34.021908, 31.266657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.391937, 33.860981, 31.243294>,  <35.686123, 33.592766, 31.204355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.391937, 33.860981, 31.243294> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350904, 0.254037, 0.901295,
		0.579620, 0.697029, -0.422128,
		-0.735464, 0.670534, 0.097346,
		35.171299, 34.062141, 31.272497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.000843, 34.411842, 31.349913>,  <35.686123, 33.592766, 31.204355>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.000843, 34.411842, 31.349913> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.629890, 34.341820, 31.482161>,  <35.407318, 34.299805, 31.561510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.629890, 34.341820, 31.482161>,  <36.000843, 34.411842, 31.349913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.629890, 34.341820, 31.482161> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237646, 0.406879, 0.882028,
		-0.288929, 0.896551, -0.335732,
		-0.927386, -0.175058, 0.330621,
		35.351673, 34.289303, 31.581347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.007965, 34.664677, 32.019276>,  <36.000843, 34.411842, 31.349913>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.007965, 34.664677, 32.019276> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.280907, 34.900032, 32.192802>,  <36.444672, 35.041245, 32.296917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.280907, 34.900032, 32.192802>,  <36.007965, 34.664677, 32.019276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.280907, 34.900032, 32.192802> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381714, 0.219327, -0.897881,
		-0.623449, 0.778265, -0.074937,
		0.682353, 0.588387, 0.433814,
		36.485611, 35.076550, 32.322945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.927578, 35.298080, 31.661667>,  <36.007965, 34.664677, 32.019276>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.927578, 35.298080, 31.661667> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.292809, 35.280163, 31.823793>,  <36.511948, 35.269413, 31.921070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.292809, 35.280163, 31.823793>,  <35.927578, 35.298080, 31.661667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.292809, 35.280163, 31.823793> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403680, 0.239998, -0.882861,
		-0.057728, 0.969739, 0.237219,
		0.913077, -0.044794, 0.405319,
		36.566730, 35.266724, 31.945389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.290882, 35.885963, 31.335493>,  <35.927578, 35.298080, 31.661667>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.290882, 35.885963, 31.335493> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.562130, 35.621159, 31.463175>,  <36.724880, 35.462276, 31.539783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.562130, 35.621159, 31.463175>,  <36.290882, 35.885963, 31.335493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.562130, 35.621159, 31.463175> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569093, 0.198150, -0.798041,
		0.465062, 0.722826, 0.511116,
		0.678123, -0.662011, 0.319203,
		36.765568, 35.422554, 31.558935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.866711, 36.226532, 31.185995>,  <36.290882, 35.885963, 31.335493>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.866711, 36.226532, 31.185995> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.935383, 35.832916, 31.204693>,  <36.976585, 35.596745, 31.215912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.935383, 35.832916, 31.204693>,  <36.866711, 36.226532, 31.185995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.935383, 35.832916, 31.204693> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510773, 0.048340, -0.858356,
		0.842399, 0.171241, 0.510922,
		0.171684, -0.984043, 0.046744,
		36.986889, 35.537704, 31.218716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.485081, 36.141953, 30.936148>,  <36.866711, 36.226532, 31.185995>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.485081, 36.141953, 30.936148> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.411221, 35.748970, 30.946587>,  <37.366905, 35.513180, 30.952850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.411221, 35.748970, 30.946587>,  <37.485081, 36.141953, 30.936148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.411221, 35.748970, 30.946587> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492259, -0.115433, -0.862761,
		0.850639, -0.146460, 0.504938,
		-0.184647, -0.982458, 0.026096,
		37.355827, 35.454231, 30.954416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.109097, 35.805462, 30.702578>,  <37.485081, 36.141953, 30.936148>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.109097, 35.805462, 30.702578> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.806805, 35.548878, 30.649811>,  <37.625431, 35.394928, 30.618151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.806805, 35.548878, 30.649811>,  <38.109097, 35.805462, 30.702578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.806805, 35.548878, 30.649811> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336617, -0.207703, -0.918449,
		0.561749, -0.738504, 0.372894,
		-0.755729, -0.641460, -0.131916,
		37.580086, 35.356441, 30.610235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.417660, 35.336880, 30.187475>,  <38.109097, 35.805462, 30.702578>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.417660, 35.336880, 30.187475> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.027817, 35.250019, 30.165640>,  <37.793911, 35.197903, 30.152538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.027817, 35.250019, 30.165640>,  <38.417660, 35.336880, 30.187475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.027817, 35.250019, 30.165640> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080482, -0.112234, -0.990417,
		0.208946, -0.969664, 0.126862,
		-0.974610, -0.217153, -0.054589,
		37.735435, 35.184872, 30.149263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.348690, 34.757179, 29.787868>,  <38.417660, 35.336880, 30.187475>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.348690, 34.757179, 29.787868> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.987442, 34.927746, 29.767714>,  <37.770691, 35.030087, 29.755621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.987442, 34.927746, 29.767714>,  <38.348690, 34.757179, 29.787868>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.987442, 34.927746, 29.767714> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030390, -0.053575, -0.998101,
		-0.428307, -0.902939, 0.035426,
		-0.903122, 0.426417, -0.050386,
		37.716507, 35.055672, 29.752598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.902031, 34.311096, 29.306244>,  <38.348690, 34.757179, 29.787868>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.902031, 34.311096, 29.306244> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.736092, 34.674904, 29.316631>,  <37.636528, 34.893188, 29.322863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.736092, 34.674904, 29.316631>,  <37.902031, 34.311096, 29.306244>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.736092, 34.674904, 29.316631> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146002, -0.038371, -0.988540,
		-0.898102, -0.413881, 0.148710,
		-0.414844, 0.909522, 0.025966,
		37.611637, 34.947762, 29.324421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.270523, 34.187195, 28.913568>,  <37.902031, 34.311096, 29.306244>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.270523, 34.187195, 28.913568> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.337498, 34.580357, 28.944183>,  <37.377682, 34.816254, 28.962553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.337498, 34.580357, 28.944183>,  <37.270523, 34.187195, 28.913568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.337498, 34.580357, 28.944183> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327881, 0.128731, -0.935907,
		-0.929763, 0.131610, 0.343831,
		0.167436, 0.982908, 0.076537,
		37.387730, 34.875229, 28.967144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.621590, 34.521252, 28.757721>,  <37.270523, 34.187195, 28.913568>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.621590, 34.521252, 28.757721> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.902557, 34.803265, 28.718655>,  <37.071136, 34.972473, 28.695215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.902557, 34.803265, 28.718655>,  <36.621590, 34.521252, 28.757721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.902557, 34.803265, 28.718655> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295378, 0.163899, -0.941217,
		-0.647584, 0.689973, 0.323377,
		0.702415, 0.705036, -0.097665,
		37.113281, 35.014774, 28.689356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.233459, 35.068958, 28.281178>,  <36.621590, 34.521252, 28.757721>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.233459, 35.068958, 28.281178> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.620148, 35.171268, 28.279104>,  <36.852161, 35.232655, 28.277861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.620148, 35.171268, 28.279104>,  <36.233459, 35.068958, 28.281178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.620148, 35.171268, 28.279104> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080789, 0.286009, -0.954815,
		-0.242734, 0.923460, 0.297155,
		0.966723, 0.255773, -0.005181,
		36.910164, 35.248001, 28.277550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.302448, 35.793694, 28.031836>,  <36.233459, 35.068958, 28.281178>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.302448, 35.793694, 28.031836> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.642437, 35.599190, 27.950741>,  <36.846428, 35.482487, 27.902084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.642437, 35.599190, 27.950741>,  <36.302448, 35.793694, 28.031836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.642437, 35.599190, 27.950741> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098347, 0.231611, -0.967825,
		0.517570, 0.842561, 0.149040,
		0.849970, -0.486259, -0.202738,
		36.897427, 35.453312, 27.889919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.478550, 36.132122, 27.403700>,  <36.302448, 35.793694, 28.031836>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.478550, 36.132122, 27.403700> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.706894, 35.804234, 27.422384>,  <36.843899, 35.607502, 27.433594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.706894, 35.804234, 27.422384>,  <36.478550, 36.132122, 27.403700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.706894, 35.804234, 27.422384> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201904, 0.085011, -0.975709,
		0.795835, 0.566424, 0.214033,
		0.570860, -0.819718, 0.046709,
		36.878151, 35.558319, 27.436398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.161701, 36.353462, 27.068529>,  <36.478550, 36.132122, 27.403700>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.161701, 36.353462, 27.068529> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.116108, 35.956123, 27.075205>,  <37.088753, 35.717720, 27.079210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.116108, 35.956123, 27.075205>,  <37.161701, 36.353462, 27.068529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.116108, 35.956123, 27.075205> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410889, -0.062428, -0.909545,
		0.904532, -0.096812, 0.415269,
		-0.113980, -0.993343, 0.016689,
		37.081913, 35.658119, 27.080212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.728886, 36.138176, 26.791599>,  <37.161701, 36.353462, 27.068529>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.728886, 36.138176, 26.791599> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.472958, 35.836670, 26.731644>,  <37.319401, 35.655766, 26.695669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.472958, 35.836670, 26.731644>,  <37.728886, 36.138176, 26.791599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.472958, 35.836670, 26.731644> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330322, -0.093622, -0.939214,
		0.693912, -0.650443, 0.308886,
		-0.639823, -0.753763, -0.149890,
		37.281010, 35.610542, 26.686676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.087151, 35.727886, 26.418535>,  <37.728886, 36.138176, 26.791599>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.087151, 35.727886, 26.418535> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.713303, 35.604748, 26.347296>,  <37.488995, 35.530865, 26.304552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.713303, 35.604748, 26.347296>,  <38.087151, 35.727886, 26.418535>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.713303, 35.604748, 26.347296> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238929, -0.172553, -0.955583,
		0.263444, -0.935657, 0.234825,
		-0.934617, -0.307849, -0.178098,
		37.432919, 35.512394, 26.293867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.267063, 35.169998, 26.024008>,  <38.087151, 35.727886, 26.418535>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.267063, 35.169998, 26.024008> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.886570, 35.257790, 25.937311>,  <37.658272, 35.310463, 25.885292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.886570, 35.257790, 25.937311>,  <38.267063, 35.169998, 26.024008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.886570, 35.257790, 25.937311> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198994, -0.100259, -0.974859,
		-0.235693, -0.970452, 0.051694,
		-0.951236, 0.219481, -0.216744,
		37.601200, 35.323635, 25.872288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.137928, 34.756020, 25.314842> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.833073, 35.014183, 25.335182>,  <37.650158, 35.169083, 25.347385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.833073, 35.014183, 25.335182>,  <38.137928, 34.756020, 25.314842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.833073, 35.014183, 25.335182> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039383, 0.124617, -0.991423,
		-0.646211, -0.753602, -0.120394,
		-0.762142, 0.645410, 0.050849,
		37.604431, 35.207806, 25.350437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.544853, 34.552761, 24.832644>,  <38.137928, 34.756020, 25.314842>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.544853, 34.552761, 24.832644> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.516327, 34.947926, 24.887691>,  <37.499210, 35.185024, 24.920721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.516327, 34.947926, 24.887691>,  <37.544853, 34.552761, 24.832644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.516327, 34.947926, 24.887691> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172656, 0.123662, -0.977188,
		-0.982397, -0.093448, 0.161751,
		-0.071314, 0.987914, 0.137620,
		37.494934, 35.244301, 24.928978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.091846, 34.708866, 24.351707>,  <37.544853, 34.552761, 24.832644>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.091846, 34.708866, 24.351707> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.254784, 35.056587, 24.463694>,  <37.352547, 35.265221, 24.530886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.254784, 35.056587, 24.463694>,  <37.091846, 34.708866, 24.351707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.254784, 35.056587, 24.463694> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059824, 0.331289, -0.941631,
		-0.911312, 0.366822, 0.186955,
		0.407347, 0.869304, 0.279963,
		37.376987, 35.317379, 24.547682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.922882, 35.090824, 23.820347>,  <37.091846, 34.708866, 24.351707>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.922882, 35.090824, 23.820347> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.161140, 35.349163, 24.011377>,  <37.304096, 35.504166, 24.125996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.161140, 35.349163, 24.011377>,  <36.922882, 35.090824, 23.820347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.161140, 35.349163, 24.011377> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053917, 0.625364, -0.778468,
		-0.801433, 0.437945, 0.407320,
		0.595649, 0.645852, 0.477574,
		37.339836, 35.542919, 24.154650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.597004, 35.783195, 24.016689>,  <36.922882, 35.090824, 23.820347>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.597004, 35.783195, 24.016689> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.991962, 35.824711, 23.968885>,  <37.228935, 35.849621, 23.940203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.991962, 35.824711, 23.968885>,  <36.597004, 35.783195, 24.016689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.991962, 35.824711, 23.968885> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156910, 0.542627, -0.825188,
		-0.020793, 0.833538, 0.552071,
		0.987394, 0.103784, -0.119507,
		37.288181, 35.855846, 23.933033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.677227, 36.467793, 23.788586>,  <36.597004, 35.783195, 24.016689>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.677227, 36.467793, 23.788586> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.010452, 36.270668, 23.688066>,  <37.210388, 36.152393, 23.627754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.010452, 36.270668, 23.688066>,  <36.677227, 36.467793, 23.788586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.010452, 36.270668, 23.688066> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141201, 0.628664, -0.764751,
		0.534856, 0.601601, 0.593300,
		0.833061, -0.492807, -0.251298,
		37.260372, 36.122826, 23.612677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.086319, 36.976231, 23.488409>,  <36.677227, 36.467793, 23.788586>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.086319, 36.976231, 23.488409> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.278519, 36.648045, 23.364502>,  <37.393837, 36.451134, 23.290157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.278519, 36.648045, 23.364502>,  <37.086319, 36.976231, 23.488409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.278519, 36.648045, 23.364502> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180598, 0.438214, -0.880541,
		0.858201, 0.367152, 0.358735,
		0.480495, -0.820468, -0.309768,
		37.422668, 36.401905, 23.271572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.790356, 37.170898, 23.195450>,  <37.086319, 36.976231, 23.488409>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.790356, 37.170898, 23.195450> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.686096, 36.819370, 23.035583>,  <37.623539, 36.608452, 22.939663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.686096, 36.819370, 23.035583>,  <37.790356, 37.170898, 23.195450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.686096, 36.819370, 23.035583> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250606, 0.338198, -0.907094,
		0.932340, -0.336595, 0.132086,
		-0.260652, -0.878821, -0.399668,
		37.607903, 36.555725, 22.915684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.389587, 36.850853, 22.792589>,  <37.790356, 37.170898, 23.195450>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.389587, 36.850853, 22.792589> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.057953, 36.681854, 22.646105>,  <37.858971, 36.580456, 22.558214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.057953, 36.681854, 22.646105>,  <38.389587, 36.850853, 22.792589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.057953, 36.681854, 22.646105> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281935, 0.249696, -0.926372,
		0.482834, -0.871289, -0.087902,
		-0.829086, -0.422501, -0.366209,
		37.809227, 36.555103, 22.536242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.629185, 36.420914, 22.153164>,  <38.389587, 36.850853, 22.792589>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.629185, 36.420914, 22.153164> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.238209, 36.489426, 22.103735>,  <38.003624, 36.530533, 22.074078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.238209, 36.489426, 22.103735>,  <38.629185, 36.420914, 22.153164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.238209, 36.489426, 22.103735> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163507, 0.243329, -0.956063,
		-0.133687, -0.954701, -0.265846,
		-0.977442, 0.171281, -0.123570,
		37.944977, 36.540810, 22.066664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.495327, 36.064613, 21.526445>,  <38.629185, 36.420914, 22.153164>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.495327, 36.064613, 21.526445> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.212143, 36.334244, 21.610746>,  <38.042233, 36.496021, 21.661327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.212143, 36.334244, 21.610746>,  <38.495327, 36.064613, 21.526445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.212143, 36.334244, 21.610746> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139493, 0.159071, -0.977363,
		-0.692339, -0.721333, -0.018587,
		-0.707960, 0.674074, 0.210752,
		37.999756, 36.536465, 21.673971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.973648, 36.109718, 21.081997>,  <38.495327, 36.064613, 21.526445>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.973648, 36.109718, 21.081997> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.937443, 36.491238, 21.196587>,  <37.915722, 36.720150, 21.265341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.937443, 36.491238, 21.196587>,  <37.973648, 36.109718, 21.081997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.937443, 36.491238, 21.196587> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196674, 0.299109, -0.933731,
		-0.976283, -0.028168, -0.214660,
		-0.090509, 0.953803, 0.286475,
		37.910290, 36.777378, 21.282530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.783394, 36.349060, 20.521931>,  <37.973648, 36.109718, 21.081997>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.783394, 36.349060, 20.521931> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.884369, 36.685581, 20.713131>,  <37.944954, 36.887493, 20.827852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.884369, 36.685581, 20.713131>,  <37.783394, 36.349060, 20.521931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.884369, 36.685581, 20.713131> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226660, 0.428844, -0.874481,
		-0.940692, 0.329094, -0.082435,
		0.252435, 0.841302, 0.478003,
		37.960098, 36.937973, 20.856531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.582264, 37.002354, 20.072515>,  <37.783394, 36.349060, 20.521931>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.582264, 37.002354, 20.072515> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.828850, 37.138573, 20.356485>,  <37.976803, 37.220306, 20.526867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.828850, 37.138573, 20.356485>,  <37.582264, 37.002354, 20.072515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.828850, 37.138573, 20.356485> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428290, 0.611544, -0.665268,
		-0.660707, 0.714170, 0.231144,
		0.616469, 0.340550, 0.709923,
		38.013790, 37.240738, 20.569462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.573097, 37.803440, 20.123106>,  <37.582264, 37.002354, 20.072515>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.573097, 37.803440, 20.123106> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.926613, 37.700951, 20.279701>,  <38.138721, 37.639458, 20.373657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.926613, 37.700951, 20.279701>,  <37.573097, 37.803440, 20.123106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.926613, 37.700951, 20.279701> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466355, 0.549918, -0.692895,
		-0.037751, 0.794947, 0.605504,
		0.883792, -0.256222, 0.391487,
		38.191750, 37.624084, 20.397148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.972519, 38.429134, 20.281006>,  <37.573097, 37.803440, 20.123106>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.972519, 38.429134, 20.281006> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.221458, 38.122078, 20.219799>,  <38.370823, 37.937843, 20.183075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.221458, 38.122078, 20.219799>,  <37.972519, 38.429134, 20.281006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.221458, 38.122078, 20.219799> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435275, 0.501879, -0.747431,
		0.650552, 0.398558, 0.646478,
		0.622348, -0.767639, -0.153016,
		38.408161, 37.891785, 20.173895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.566135, 38.694180, 20.279160>,  <37.972519, 38.429134, 20.281006>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.566135, 38.694180, 20.279160> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.648296, 38.345169, 20.101845>,  <38.697594, 38.135761, 19.995457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.648296, 38.345169, 20.101845>,  <38.566135, 38.694180, 20.279160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.648296, 38.345169, 20.101845> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566315, 0.475373, -0.673281,
		0.798184, -0.112749, 0.591768,
		0.205399, -0.872530, -0.443287,
		38.709915, 38.083408, 19.968859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.216545, 38.756218, 20.029558>,  <38.566135, 38.694180, 20.279160>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.216545, 38.756218, 20.029558> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.051735, 38.470440, 19.803350>,  <38.952850, 38.298973, 19.667625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.051735, 38.470440, 19.803350>,  <39.216545, 38.756218, 20.029558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.051735, 38.470440, 19.803350> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371598, 0.434936, -0.820211,
		0.831957, -0.548091, 0.086282,
		-0.412023, -0.714442, -0.565517,
		38.928127, 38.256107, 19.633696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.700058, 38.643818, 19.498501>,  <39.216545, 38.756218, 20.029558>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.700058, 38.643818, 19.498501> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.414871, 38.419014, 19.330778>,  <39.243759, 38.284130, 19.230145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.414871, 38.419014, 19.330778>,  <39.700058, 38.643818, 19.498501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.414871, 38.419014, 19.330778> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345677, 0.238560, -0.907522,
		0.610068, -0.791980, 0.024188,
		-0.712969, -0.562012, -0.419307,
		39.200981, 38.250412, 19.204987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.039227, 38.169930, 19.093676>,  <39.700058, 38.643818, 19.498501>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.039227, 38.169930, 19.093676> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.674500, 38.223316, 18.938358>,  <39.455662, 38.255348, 18.845167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.674500, 38.223316, 18.938358>,  <40.039227, 38.169930, 19.093676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.674500, 38.223316, 18.938358> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407406, 0.176511, -0.896027,
		-0.051055, -0.975208, -0.215322,
		-0.911819, 0.133471, -0.388294,
		39.400955, 38.263355, 18.821871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.989506, 37.781166, 18.466265>,  <40.039227, 38.169930, 19.093676>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.989506, 37.781166, 18.466265> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.713673, 38.069443, 18.437780>,  <39.548172, 38.242409, 18.420689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.713673, 38.069443, 18.437780>,  <39.989506, 37.781166, 18.466265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.713673, 38.069443, 18.437780> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380465, 0.276854, -0.882382,
		-0.616211, -0.635573, -0.465113,
		-0.689587, 0.720693, -0.071213,
		39.506798, 38.285652, 18.416416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.874432, 37.797634, 17.760641>,  <39.989506, 37.781166, 18.466265>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.874432, 37.797634, 17.760641> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.707310, 38.141552, 17.878075>,  <39.607037, 38.347904, 17.948534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.707310, 38.141552, 17.878075>,  <39.874432, 37.797634, 17.760641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.707310, 38.141552, 17.878075> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630328, 0.507037, -0.587878,
		-0.654311, -0.060567, -0.753796,
		-0.417809, 0.859794, 0.293583,
		39.581966, 38.399490, 17.966150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.361935, 38.293285, 17.284649>,  <39.874432, 37.797634, 17.760641>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.361935, 38.293285, 17.284649> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.556248, 38.542816, 17.529549>,  <39.672836, 38.692535, 17.676489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.556248, 38.542816, 17.529549>,  <39.361935, 38.293285, 17.284649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.556248, 38.542816, 17.529549> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434971, 0.435032, -0.788382,
		-0.758164, 0.649297, -0.060015,
		0.485786, 0.623828, 0.612251,
		39.701984, 38.729965, 17.713224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.792606, 38.096840, 17.048939>,  <39.361935, 38.293285, 17.284649>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.792606, 38.096840, 17.048939> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.710487, 38.013184, 16.666502>,  <38.661217, 37.962990, 16.437040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.710487, 38.013184, 16.666502>,  <38.792606, 38.096840, 17.048939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.710487, 38.013184, 16.666502> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703131, -0.648010, 0.292727,
		-0.680779, 0.732355, -0.014015,
		-0.205298, -0.209137, -0.956093,
		38.648899, 37.950443, 16.379673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.116516, 37.924473, 17.295139>,  <38.792606, 38.096840, 17.048939>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.116516, 37.924473, 17.295139> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.808113, 37.883221, 17.043774>,  <37.623070, 37.858471, 16.892954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.808113, 37.883221, 17.043774>,  <38.116516, 37.924473, 17.295139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.808113, 37.883221, 17.043774> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509235, -0.492696, 0.705642,
		-0.382391, 0.864069, 0.327356,
		-0.771010, -0.103130, -0.628416,
		37.576809, 37.852283, 16.855249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.511959, 38.323952, 17.503241>,  <38.116516, 37.924473, 17.295139>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.511959, 38.323952, 17.503241> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.356148, 38.047043, 17.260252>,  <37.262661, 37.880898, 17.114458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.356148, 38.047043, 17.260252>,  <37.511959, 38.323952, 17.503241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.356148, 38.047043, 17.260252> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605562, -0.304453, 0.735257,
		-0.693948, 0.654265, -0.300623,
		-0.389527, -0.692276, -0.607472,
		37.239288, 37.839359, 17.078011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.815331, 38.333878, 17.506914>,  <37.511959, 38.323952, 17.503241>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.815331, 38.333878, 17.506914> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.860367, 37.959488, 17.373480>,  <36.887390, 37.734856, 17.293419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.860367, 37.959488, 17.373480>,  <36.815331, 38.333878, 17.506914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.860367, 37.959488, 17.373480> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617689, -0.328900, 0.714343,
		-0.778321, 0.125626, -0.615170,
		0.112589, -0.935972, -0.333587,
		36.894142, 37.678696, 17.273403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.095844, 37.976627, 17.589621>,  <36.815331, 38.333878, 17.506914>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.095844, 37.976627, 17.589621> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.380825, 37.696465, 17.572462>,  <36.551811, 37.528366, 17.562168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.380825, 37.696465, 17.572462>,  <36.095844, 37.976627, 17.589621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.380825, 37.696465, 17.572462> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338267, -0.396352, 0.853511,
		-0.614810, -0.593573, -0.519307,
		0.712449, -0.700411, -0.042895,
		36.594559, 37.486340, 17.559593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.640926, 37.326145, 17.652121>,  <36.095844, 37.976627, 17.589621>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.640926, 37.326145, 17.652121> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.015636, 37.214996, 17.737206>,  <36.240463, 37.148308, 17.788256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.015636, 37.214996, 17.737206>,  <35.640926, 37.326145, 17.652121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.015636, 37.214996, 17.737206> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339984, -0.578701, 0.741294,
		-0.082887, -0.766742, -0.636582,
		0.936771, -0.277871, 0.212713,
		36.296669, 37.131634, 17.801020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.608559, 36.659286, 17.746422>,  <35.640926, 37.326145, 17.652121>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.608559, 36.659286, 17.746422> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.933357, 36.803150, 17.930294>,  <36.128239, 36.889469, 18.040617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.933357, 36.803150, 17.930294>,  <35.608559, 36.659286, 17.746422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.933357, 36.803150, 17.930294> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334914, -0.357902, 0.871630,
		0.478008, -0.861715, -0.170162,
		0.811998, 0.359657, 0.459680,
		36.176956, 36.911049, 18.068197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.739399, 36.120956, 18.193731>,  <35.608559, 36.659286, 17.746422>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.739399, 36.120956, 18.193731> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.937473, 36.443359, 18.323435>,  <36.056316, 36.636803, 18.401257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.937473, 36.443359, 18.323435>,  <35.739399, 36.120956, 18.193731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.937473, 36.443359, 18.323435> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145961, -0.290746, 0.945601,
		0.856438, -0.515578, -0.026328,
		0.495186, 0.806006, 0.324260,
		36.086029, 36.685162, 18.420713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.358074, 35.913818, 18.431158>,  <35.739399, 36.120956, 18.193731>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.358074, 35.913818, 18.431158> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.253807, 36.254051, 18.613831>,  <36.191246, 36.458191, 18.723434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.253807, 36.254051, 18.613831>,  <36.358074, 35.913818, 18.431158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.253807, 36.254051, 18.613831> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219252, -0.512833, 0.830019,
		0.940202, 0.116231, 0.320171,
		-0.260668, 0.850584, 0.456683,
		36.175606, 36.509228, 18.750835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.333923, 35.686699, 19.113163>,  <36.358074, 35.913818, 18.431158>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.333923, 35.686699, 19.113163> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.202339, 36.060196, 19.169601>,  <36.123390, 36.284294, 19.203465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.202339, 36.060196, 19.169601>,  <36.333923, 35.686699, 19.113163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.202339, 36.060196, 19.169601> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063097, -0.170810, 0.983282,
		0.942235, 0.314555, 0.115106,
		-0.328957, 0.933745, 0.141096,
		36.103653, 36.340321, 19.211929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.815418, 36.105522, 19.614624>,  <36.333923, 35.686699, 19.113163>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.815418, 36.105522, 19.614624> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.441788, 36.247719, 19.628069>,  <36.217609, 36.333038, 19.636135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.441788, 36.247719, 19.628069>,  <36.815418, 36.105522, 19.614624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.441788, 36.247719, 19.628069> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012403, -0.126378, 0.991905,
		0.356862, 0.926096, 0.122455,
		-0.934075, 0.355492, 0.033613,
		36.161564, 36.354366, 19.638153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.854008, 36.587170, 20.163126>,  <36.815418, 36.105522, 19.614624>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.854008, 36.587170, 20.163126> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.470551, 36.487057, 20.108917>,  <36.240475, 36.426991, 20.076391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.470551, 36.487057, 20.108917>,  <36.854008, 36.587170, 20.163126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.470551, 36.487057, 20.108917> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136065, -0.015221, 0.990583,
		-0.249985, 0.968054, -0.019463,
		-0.958642, -0.250279, -0.135523,
		36.182957, 36.411972, 20.068260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.574665, 36.701866, 20.748295>,  <36.854008, 36.587170, 20.163126>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.574665, 36.701866, 20.748295> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.276737, 36.473614, 20.609949>,  <36.097980, 36.336662, 20.526941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.276737, 36.473614, 20.609949>,  <36.574665, 36.701866, 20.748295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.276737, 36.473614, 20.609949> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245357, -0.247805, 0.937226,
		-0.620520, 0.782923, 0.044560,
		-0.744819, -0.570634, -0.345863,
		36.053291, 36.302422, 20.506189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.010113, 36.779732, 21.189518>,  <36.574665, 36.701866, 20.748295>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.010113, 36.779732, 21.189518> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.952969, 36.434402, 20.995916>,  <35.918682, 36.227203, 20.879755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.952969, 36.434402, 20.995916>,  <36.010113, 36.779732, 21.189518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.952969, 36.434402, 20.995916> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237387, -0.444860, 0.863567,
		-0.960853, 0.238264, -0.141391,
		-0.142858, -0.863325, -0.484006,
		35.910110, 36.175404, 20.850714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.413719, 36.580936, 21.486889>,  <36.010113, 36.779732, 21.189518>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.413719, 36.580936, 21.486889> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.570084, 36.255035, 21.315603>,  <35.663902, 36.059494, 21.212831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.570084, 36.255035, 21.315603>,  <35.413719, 36.580936, 21.486889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.570084, 36.255035, 21.315603> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154413, -0.516694, 0.842130,
		-0.907382, -0.263079, -0.327791,
		0.390915, -0.814749, -0.428217,
		35.687359, 36.010612, 21.187138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.041611, 36.144379, 21.827305>,  <35.413719, 36.580936, 21.486889>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.041611, 36.144379, 21.827305> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.330009, 35.921398, 21.662664>,  <35.503048, 35.787609, 21.563879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.330009, 35.921398, 21.662664>,  <35.041611, 36.144379, 21.827305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.330009, 35.921398, 21.662664> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065417, -0.646098, 0.760446,
		-0.689847, -0.521350, -0.502299,
		0.720993, -0.557450, -0.411604,
		35.546307, 35.754166, 21.539185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.791374, 35.428139, 21.802765>,  <35.041611, 36.144379, 21.827305>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.791374, 35.428139, 21.802765> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.191208, 35.416893, 21.800245>,  <35.431107, 35.410145, 21.798733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.191208, 35.416893, 21.800245>,  <34.791374, 35.428139, 21.802765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.191208, 35.416893, 21.800245> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015730, -0.715732, 0.698198,
		-0.024137, -0.697809, -0.715877,
		0.999585, -0.028114, -0.006299,
		35.491085, 35.408459, 21.798355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.974636, 34.761082, 21.866302>,  <34.791374, 35.428139, 21.802765>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.974636, 34.761082, 21.866302> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.302559, 34.948067, 21.998602>,  <35.499313, 35.060257, 22.077982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.302559, 34.948067, 21.998602>,  <34.974636, 34.761082, 21.866302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.302559, 34.948067, 21.998602> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016951, -0.597140, 0.801958,
		0.572391, -0.651843, -0.497463,
		0.819806, 0.467466, 0.330748,
		35.548500, 35.088306, 22.097826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.337109, 34.278870, 22.198811>,  <34.974636, 34.761082, 21.866302>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.337109, 34.278870, 22.198811> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.513390, 34.612427, 22.331724>,  <35.619160, 34.812561, 22.411472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.513390, 34.612427, 22.331724>,  <35.337109, 34.278870, 22.198811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.513390, 34.612427, 22.331724> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210836, -0.455969, 0.864662,
		0.872542, -0.311001, -0.376760,
		0.440702, 0.833889, 0.332282,
		35.645599, 34.862595, 22.431408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.981838, 34.016472, 22.395828>,  <35.337109, 34.278870, 22.198811>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.981838, 34.016472, 22.395828> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.839752, 34.344749, 22.574839>,  <35.754501, 34.541718, 22.682245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.839752, 34.344749, 22.574839>,  <35.981838, 34.016472, 22.395828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.839752, 34.344749, 22.574839> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094246, -0.507753, 0.856332,
		0.930021, 0.262004, 0.257708,
		-0.355215, 0.820695, 0.447528,
		35.733189, 34.590958, 22.709097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.314419, 34.000401, 23.090675>,  <35.981838, 34.016472, 22.395828>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.314419, 34.000401, 23.090675> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.010883, 34.258644, 23.124987>,  <35.828762, 34.413589, 23.145575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.010883, 34.258644, 23.124987>,  <36.314419, 34.000401, 23.090675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.010883, 34.258644, 23.124987> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266983, -0.428502, 0.863195,
		0.594040, 0.632124, 0.497529,
		-0.758839, 0.645604, 0.085780,
		35.783230, 34.452324, 23.150721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<38.177067, 35.462109, 28.135284> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.783951, 35.413506, 28.190948>,  <37.548080, 35.384342, 28.224346>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.783951, 35.413506, 28.190948>,  <38.177067, 35.462109, 28.135284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.783951, 35.413506, 28.190948> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122397, 0.135962, 0.983124,
		-0.138376, 0.983235, -0.118750,
		-0.982787, -0.121506, 0.139159,
		37.489113, 35.377052, 28.232697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.980991, 35.940552, 28.557552>,  <38.177067, 35.462109, 28.135284>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.980991, 35.940552, 28.557552> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.717224, 35.641823, 28.592014>,  <37.558964, 35.462585, 28.612692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.717224, 35.641823, 28.592014>,  <37.980991, 35.940552, 28.557552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.717224, 35.641823, 28.592014> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140467, -0.009813, 0.990037,
		-0.738540, 0.664947, 0.111375,
		-0.659415, -0.746826, 0.086156,
		37.519402, 35.417774, 28.617861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.577328, 36.181370, 29.068361>,  <37.980991, 35.940552, 28.557552>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.577328, 36.181370, 29.068361> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.550888, 35.783009, 29.043701>,  <37.535023, 35.543991, 29.028906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.550888, 35.783009, 29.043701>,  <37.577328, 36.181370, 29.068361>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.550888, 35.783009, 29.043701> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055900, -0.057991, 0.996751,
		-0.996246, 0.069331, -0.051838,
		-0.066099, -0.995907, -0.061649,
		37.531059, 35.484238, 29.025206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.046810, 36.042789, 29.450464>,  <37.577328, 36.181370, 29.068361>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.046810, 36.042789, 29.450464> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.207989, 35.680401, 29.398550>,  <37.304695, 35.462967, 29.367401>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.207989, 35.680401, 29.398550>,  <37.046810, 36.042789, 29.450464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.207989, 35.680401, 29.398550> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114995, -0.190801, 0.974870,
		-0.907972, -0.377891, -0.181065,
		0.402942, -0.905977, -0.129787,
		37.328873, 35.408607, 29.359613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.526714, 35.600395, 29.701939>,  <37.046810, 36.042789, 29.450464>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.526714, 35.600395, 29.701939> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.893753, 35.441917, 29.714823>,  <37.113976, 35.346828, 29.722553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.893753, 35.441917, 29.714823>,  <36.526714, 35.600395, 29.701939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.893753, 35.441917, 29.714823> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135214, -0.234907, 0.962567,
		-0.373804, -0.887605, -0.269122,
		0.917599, -0.396201, 0.032208,
		37.169033, 35.323059, 29.724485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.379055, 35.059795, 30.015774>,  <36.526714, 35.600395, 29.701939>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.379055, 35.059795, 30.015774> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.773945, 35.095207, 30.068771>,  <37.010880, 35.116455, 30.100569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.773945, 35.095207, 30.068771>,  <36.379055, 35.059795, 30.015774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.773945, 35.095207, 30.068771> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118346, -0.149432, 0.981664,
		0.106701, -0.984801, -0.137046,
		0.987223, 0.088526, 0.132492,
		37.070110, 35.121765, 30.108519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.521698, 34.589291, 30.484779>,  <36.379055, 35.059795, 30.015774>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.521698, 34.589291, 30.484779> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.855789, 34.806915, 30.516762>,  <37.056244, 34.937492, 30.535952>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.855789, 34.806915, 30.516762>,  <36.521698, 34.589291, 30.484779>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.855789, 34.806915, 30.516762> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053253, -0.064689, 0.996483,
		0.547325, -0.836545, -0.025057,
		0.835224, 0.544066, 0.079955,
		37.106358, 34.970135, 30.540749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.898212, 34.268017, 30.955843>,  <36.521698, 34.589291, 30.484779>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.898212, 34.268017, 30.955843> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.058460, 34.634514, 30.954781>,  <37.154610, 34.854412, 30.954144>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.058460, 34.634514, 30.954781>,  <36.898212, 34.268017, 30.955843>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.058460, 34.634514, 30.954781> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067380, 0.032353, 0.997203,
		0.913762, -0.399322, 0.074697,
		0.400622, 0.916240, -0.002657,
		37.178646, 34.909386, 30.953983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.298347, 34.347115, 31.524759>,  <36.898212, 34.268017, 30.955843>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.298347, 34.347115, 31.524759> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.229855, 34.730904, 31.435242>,  <37.188759, 34.961178, 31.381531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.229855, 34.730904, 31.435242>,  <37.298347, 34.347115, 31.524759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.229855, 34.730904, 31.435242> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216991, 0.184844, 0.958513,
		0.961038, 0.212692, 0.176546,
		-0.171234, 0.959476, -0.223795,
		37.178486, 35.018745, 31.368103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.703064, 34.716221, 32.043449>,  <37.298347, 34.347115, 31.524759>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.703064, 34.716221, 32.043449> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.405785, 34.931103, 31.883913>,  <37.227417, 35.060032, 31.788191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.405785, 34.931103, 31.883913>,  <37.703064, 34.716221, 32.043449>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.405785, 34.931103, 31.883913> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299769, 0.265579, 0.916300,
		0.598163, 0.800550, -0.036340,
		-0.743195, 0.537204, -0.398840,
		37.182827, 35.092262, 31.764261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.807476, 35.314293, 32.334785>,  <37.703064, 34.716221, 32.043449>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.807476, 35.314293, 32.334785> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.425365, 35.276230, 32.222797>,  <37.196098, 35.253391, 32.155605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.425365, 35.276230, 32.222797>,  <37.807476, 35.314293, 32.334785>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.425365, 35.276230, 32.222797> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295367, 0.261846, 0.918801,
		-0.014122, 0.960407, -0.278243,
		-0.955280, -0.095159, -0.279975,
		37.138783, 35.247681, 32.138805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.403767, 35.906281, 32.501968>,  <37.807476, 35.314293, 32.334785>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.403767, 35.906281, 32.501968> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.152763, 35.595631, 32.479710>,  <37.002163, 35.409241, 32.466354>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.152763, 35.595631, 32.479710>,  <37.403767, 35.906281, 32.501968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.152763, 35.595631, 32.479710> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311897, 0.185235, 0.931884,
		-0.713413, 0.602118, -0.358462,
		-0.627504, -0.776622, -0.055650,
		36.964512, 35.362644, 32.463013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.556686, 36.525719, 32.790909>,  <37.403767, 35.906281, 32.501968>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.556686, 36.525719, 32.790909> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.862228, 36.551960, 33.047726>,  <38.045555, 36.567703, 33.201817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.862228, 36.551960, 33.047726>,  <37.556686, 36.525719, 32.790909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.862228, 36.551960, 33.047726> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589449, 0.334193, -0.735435,
		-0.262811, 0.940219, 0.216608,
		0.763858, 0.065601, 0.642041,
		38.091385, 36.571640, 33.240337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.925678, 37.182430, 32.590603>,  <37.556686, 36.525719, 32.790909>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.925678, 37.182430, 32.590603> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.133690, 36.889805, 32.766956>,  <38.258499, 36.714230, 32.872768>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.133690, 36.889805, 32.766956>,  <37.925678, 37.182430, 32.590603>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.133690, 36.889805, 32.766956> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669967, 0.029179, -0.741817,
		0.529821, 0.681149, 0.505298,
		0.520032, -0.731563, 0.440888,
		38.289700, 36.670338, 32.899223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.355629, 37.633747, 32.998165>,  <37.925678, 37.182430, 32.590603>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.355629, 37.633747, 32.998165> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.496166, 38.007664, 32.977314>,  <38.580490, 38.232014, 32.964802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.496166, 38.007664, 32.977314>,  <38.355629, 37.633747, 32.998165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.496166, 38.007664, 32.977314> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300741, 0.059956, -0.951820,
		-0.886629, 0.350095, 0.302196,
		0.351346, 0.934794, -0.052130,
		38.601570, 38.288101, 32.961674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.824390, 37.995255, 32.823483>,  <38.355629, 37.633747, 32.998165>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.824390, 37.995255, 32.823483> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.125561, 38.229633, 32.703636>,  <38.306263, 38.370262, 32.631729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.125561, 38.229633, 32.703636>,  <37.824390, 37.995255, 32.823483>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.125561, 38.229633, 32.703636> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471269, 0.162280, -0.866932,
		-0.459358, 0.793932, 0.398325,
		0.752925, 0.585950, -0.299611,
		38.351437, 38.405418, 32.613754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.570637, 38.654659, 32.565971>,  <37.824390, 37.995255, 32.823483>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.570637, 38.654659, 32.565971> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.929192, 38.624737, 32.391209>,  <38.144325, 38.606785, 32.286350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.929192, 38.624737, 32.391209>,  <37.570637, 38.654659, 32.565971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.929192, 38.624737, 32.391209> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402740, 0.274292, -0.873250,
		0.185164, 0.958733, 0.215746,
		0.896390, -0.074805, -0.436908,
		38.198109, 38.602295, 32.260136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.575443, 39.163849, 31.880398>,  <37.570637, 38.654659, 32.565971>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.575443, 39.163849, 31.880398> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.900936, 38.939697, 31.818663>,  <38.096233, 38.805206, 31.781622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.900936, 38.939697, 31.818663>,  <37.575443, 39.163849, 31.880398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.900936, 38.939697, 31.818663> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227171, -0.062209, -0.971866,
		0.535009, 0.825899, -0.177922,
		0.813731, -0.560376, -0.154338,
		38.145054, 38.771584, 31.772362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.891647, 39.468266, 31.279385>,  <37.575443, 39.163849, 31.880398>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.891647, 39.468266, 31.279385> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.034115, 39.095325, 31.304262>,  <38.119595, 38.871563, 31.319189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.034115, 39.095325, 31.304262>,  <37.891647, 39.468266, 31.279385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.034115, 39.095325, 31.304262> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070961, -0.093354, -0.993101,
		0.931723, 0.349299, -0.099410,
		0.356170, -0.932349, 0.062193,
		38.140965, 38.815620, 31.322920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.440113, 39.457760, 30.985741>,  <37.891647, 39.468266, 31.279385>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.440113, 39.457760, 30.985741> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.296570, 39.085976, 30.951492>,  <38.210445, 38.862907, 30.930944>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.296570, 39.085976, 30.951492>,  <38.440113, 39.457760, 30.985741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.296570, 39.085976, 30.951492> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098898, 0.129076, -0.986691,
		0.928138, -0.345614, -0.138242,
		-0.358858, -0.929457, -0.085620,
		38.188911, 38.807140, 30.925806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.814205, 39.198227, 30.350492>,  <38.440113, 39.457760, 30.985741>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.814205, 39.198227, 30.350492> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.517735, 38.939072, 30.420815>,  <38.339851, 38.783581, 30.463007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.517735, 38.939072, 30.420815>,  <38.814205, 39.198227, 30.350492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.517735, 38.939072, 30.420815> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164813, -0.078255, -0.983216,
		0.650769, -0.757708, -0.048780,
		-0.741173, -0.647885, 0.175806,
		38.295383, 38.744705, 30.473557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.908333, 38.694885, 29.843214>,  <38.814205, 39.198227, 30.350492>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.908333, 38.694885, 29.843214> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.529228, 38.660118, 29.965979>,  <38.301765, 38.639259, 30.039637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.529228, 38.660118, 29.965979>,  <38.908333, 38.694885, 29.843214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.529228, 38.660118, 29.965979> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304789, -0.037032, -0.951700,
		0.094085, -0.995527, 0.008605,
		-0.947761, -0.086918, 0.306909,
		38.244900, 38.634045, 30.058052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.548626, 38.157898, 29.512310>,  <38.908333, 38.694885, 29.843214>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.548626, 38.157898, 29.512310> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.243805, 38.390518, 29.626198>,  <38.060913, 38.530090, 29.694530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.243805, 38.390518, 29.626198>,  <38.548626, 38.157898, 29.512310>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.243805, 38.390518, 29.626198> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300645, 0.071658, -0.951040,
		-0.573485, -0.810345, 0.120234,
		-0.762055, 0.581555, 0.284721,
		38.015190, 38.564983, 29.711615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.993732, 37.993145, 29.092264>,  <38.548626, 38.157898, 29.512310>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.993732, 37.993145, 29.092264> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.836605, 38.337265, 29.222239>,  <37.742329, 38.543736, 29.300222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.836605, 38.337265, 29.222239>,  <37.993732, 37.993145, 29.092264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.836605, 38.337265, 29.222239> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467960, 0.117171, -0.875948,
		-0.791647, -0.496147, 0.356557,
		-0.392821, 0.860296, 0.324934,
		37.718758, 38.595352, 29.319719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.205307, 37.976528, 29.026199>,  <37.993732, 37.993145, 29.092264>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.205307, 37.976528, 29.026199> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.288647, 38.365532, 29.067791>,  <37.338650, 38.598934, 29.092747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.288647, 38.365532, 29.067791>,  <37.205307, 37.976528, 29.026199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.288647, 38.365532, 29.067791> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524552, 0.200840, -0.827350,
		-0.825490, 0.117837, 0.551978,
		0.208352, 0.972511, 0.103980,
		37.351151, 38.657284, 29.098986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.602528, 38.332993, 28.840796>,  <37.205307, 37.976528, 29.026199>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.602528, 38.332993, 28.840796> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.904301, 38.592484, 28.800814>,  <37.085365, 38.748177, 28.776825>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.904301, 38.592484, 28.800814>,  <36.602528, 38.332993, 28.840796>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.904301, 38.592484, 28.800814> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248878, 0.141808, -0.958097,
		-0.607365, 0.747696, 0.268437,
		0.754432, 0.648723, -0.099955,
		37.130630, 38.787102, 28.770826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.301933, 38.940601, 28.463858>,  <36.602528, 38.332993, 28.840796>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.301933, 38.940601, 28.463858> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.699200, 38.923515, 28.420420>,  <36.937561, 38.913261, 28.394358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.699200, 38.923515, 28.420420>,  <36.301933, 38.940601, 28.463858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.699200, 38.923515, 28.420420> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106135, 0.056123, -0.992767,
		0.048503, 0.997509, 0.051206,
		0.993168, -0.042718, -0.108593,
		36.997150, 38.910702, 28.387842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.483177, 39.359051, 27.862961>,  <36.301933, 38.940601, 28.463858>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.483177, 39.359051, 27.862961> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.848221, 39.205406, 27.918968>,  <37.067245, 39.113220, 27.952572>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.848221, 39.205406, 27.918968>,  <36.483177, 39.359051, 27.862961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.848221, 39.205406, 27.918968> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174554, 0.056380, -0.983032,
		0.369696, 0.921565, 0.118501,
		0.912609, -0.384108, 0.140019,
		37.122005, 39.090176, 27.960974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.160248, 39.934700, 28.212460>,  <36.483177, 39.359051, 27.862961>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.160248, 39.934700, 28.212460> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.809799, 40.094543, 28.104588>,  <35.599529, 40.190449, 28.039865>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.809799, 40.094543, 28.104588>,  <36.160248, 39.934700, 28.212460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.809799, 40.094543, 28.104588> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446618, -0.462182, 0.766107,
		0.181499, 0.791646, 0.583398,
		-0.876122, 0.399604, -0.269678,
		35.546963, 40.214424, 28.023684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.924213, 39.990120, 28.899776>,  <36.160248, 39.934700, 28.212460>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.924213, 39.990120, 28.899776> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.605679, 40.038460, 28.662716>,  <35.414558, 40.067463, 28.520479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.605679, 40.038460, 28.662716>,  <35.924213, 39.990120, 28.899776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.605679, 40.038460, 28.662716> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586952, -0.390992, 0.708952,
		-0.146046, 0.912425, 0.382296,
		-0.796340, 0.120850, -0.592653,
		35.366776, 40.074715, 28.484921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.357868, 40.280880, 29.306395>,  <35.924213, 39.990120, 28.899776>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.357868, 40.280880, 29.306395> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.200615, 40.099110, 28.986658>,  <35.106262, 39.990047, 28.794817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.200615, 40.099110, 28.986658>,  <35.357868, 40.280880, 29.306395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.200615, 40.099110, 28.986658> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655598, -0.471008, 0.590205,
		-0.644701, 0.756073, -0.112754,
		-0.393130, -0.454428, -0.799340,
		35.082676, 39.962780, 28.746857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.592350, 40.313843, 29.344769>,  <35.357868, 40.280880, 29.306395>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.592350, 40.313843, 29.344769> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.682159, 40.005127, 29.106802>,  <34.736046, 39.819897, 28.964022>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.682159, 40.005127, 29.106802>,  <34.592350, 40.313843, 29.344769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.682159, 40.005127, 29.106802> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403108, -0.629379, 0.664369,
		-0.887182, 0.090647, -0.452427,
		0.224525, -0.771793, -0.594915,
		34.749516, 39.773590, 28.928328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.930672, 39.953323, 29.303200>,  <34.592350, 40.313843, 29.344769>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.930672, 39.953323, 29.303200> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.231251, 39.711033, 29.198568>,  <34.411598, 39.565659, 29.135790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.231251, 39.711033, 29.198568>,  <33.930672, 39.953323, 29.303200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.231251, 39.711033, 29.198568> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436843, -0.753868, 0.490766,
		-0.494467, -0.254515, -0.831098,
		0.751446, -0.605727, -0.261580,
		34.456684, 39.529316, 29.120094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.695045, 39.365047, 29.127380>,  <33.930672, 39.953323, 29.303200>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.695045, 39.365047, 29.127380> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.072468, 39.239353, 29.169245>,  <34.298923, 39.163937, 29.194365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.072468, 39.239353, 29.169245>,  <33.695045, 39.365047, 29.127380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.072468, 39.239353, 29.169245> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318344, -0.773247, 0.548404,
		-0.091397, -0.550770, -0.829638,
		0.943559, -0.314233, 0.104662,
		34.355537, 39.145084, 29.200644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.601521, 38.685734, 29.022982>,  <33.695045, 39.365047, 29.127380>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.601521, 38.685734, 29.022982> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.955044, 38.708969, 29.208675>,  <34.167156, 38.722912, 29.320091>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.955044, 38.708969, 29.208675>,  <33.601521, 38.685734, 29.022982>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.955044, 38.708969, 29.208675> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275039, -0.738182, 0.615988,
		0.378473, -0.672096, -0.636432,
		0.883805, 0.058091, 0.464234,
		34.220184, 38.726395, 29.347946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.669163, 38.016983, 29.164091>,  <33.601521, 38.685734, 29.022982>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.669163, 38.016983, 29.164091> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.937950, 38.197937, 29.398630>,  <34.099224, 38.306511, 29.539354>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.937950, 38.197937, 29.398630>,  <33.669163, 38.016983, 29.164091>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.937950, 38.197937, 29.398630> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187904, -0.661687, 0.725853,
		0.716346, -0.597927, -0.359627,
		0.671968, 0.452386, 0.586349,
		34.139542, 38.333652, 29.574535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.230728, 37.613358, 29.301598>,  <33.669163, 38.016983, 29.164091>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.230728, 37.613358, 29.301598> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.236927, 37.858959, 29.617258>,  <34.240646, 38.006321, 29.806654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.236927, 37.858959, 29.617258>,  <34.230728, 37.613358, 29.301598>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.236927, 37.858959, 29.617258> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075699, -0.786260, 0.613241,
		0.997010, -0.069240, 0.034297,
		0.015494, 0.614003, 0.789151,
		34.241577, 38.043159, 29.854004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.648254, 37.326317, 29.773922>,  <34.230728, 37.613358, 29.301598>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.648254, 37.326317, 29.773922> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.417286, 37.568123, 29.993429>,  <34.278706, 37.713207, 30.125134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.417286, 37.568123, 29.993429>,  <34.648254, 37.326317, 29.773922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.417286, 37.568123, 29.993429> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188757, -0.752777, 0.630633,
		0.794328, 0.260556, 0.548775,
		-0.577420, 0.604514, 0.548770,
		34.244061, 37.749477, 30.158060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.687866, 37.150158, 30.473213>,  <34.648254, 37.326317, 29.773922>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.687866, 37.150158, 30.473213> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.348957, 37.362453, 30.464725>,  <34.145611, 37.489830, 30.459633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.348957, 37.362453, 30.464725>,  <34.687866, 37.150158, 30.473213>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.348957, 37.362453, 30.464725> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426258, -0.655552, 0.623342,
		0.316921, 0.537184, 0.781661,
		-0.847269, 0.530739, -0.021221,
		34.094776, 37.521675, 30.458359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.432526, 37.092884, 31.192266>,  <34.687866, 37.150158, 30.473213>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.432526, 37.092884, 31.192266> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.138744, 37.252174, 30.972448>,  <33.962475, 37.347748, 30.840557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.138744, 37.252174, 30.972448>,  <34.432526, 37.092884, 31.192266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.138744, 37.252174, 30.972448> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663422, -0.591929, 0.457703,
		-0.143023, 0.700740, 0.698933,
		-0.734449, 0.398225, -0.549546,
		33.918411, 37.371643, 30.807585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.027599, 42.510109, 25.249382> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.697952, 42.327034, 25.115902>,  <36.500164, 42.217190, 25.035814>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.697952, 42.327034, 25.115902>,  <37.027599, 42.510109, 25.249382>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.697952, 42.327034, 25.115902> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194338, -0.324900, 0.925566,
		-0.532039, 0.827624, 0.178809,
		-0.824116, -0.457688, -0.333699,
		36.450718, 42.189728, 25.015793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.530346, 42.771164, 25.745064>,  <37.027599, 42.510109, 25.249382>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.530346, 42.771164, 25.745064> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.379654, 42.433170, 25.593239>,  <36.289238, 42.230373, 25.502144>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.379654, 42.433170, 25.593239>,  <36.530346, 42.771164, 25.745064>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.379654, 42.433170, 25.593239> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188478, -0.331260, 0.924523,
		-0.906944, 0.419839, -0.034465,
		-0.376734, -0.844986, -0.379564,
		36.266632, 42.179676, 25.479370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.949898, 42.665298, 26.207781>,  <36.530346, 42.771164, 25.745064>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.949898, 42.665298, 26.207781> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.979755, 42.321930, 26.004786>,  <35.997669, 42.115910, 25.882988>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.979755, 42.321930, 26.004786>,  <35.949898, 42.665298, 26.207781>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.979755, 42.321930, 26.004786> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390334, -0.493452, 0.777267,
		-0.917642, 0.140070, -0.371904,
		0.074645, -0.858420, -0.507487,
		36.002148, 42.064404, 25.852539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.328537, 42.421062, 26.177141>,  <35.949898, 42.665298, 26.207781>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.328537, 42.421062, 26.177141> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.572098, 42.107006, 26.131907>,  <35.718235, 41.918571, 26.104765>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.572098, 42.107006, 26.131907>,  <35.328537, 42.421062, 26.177141>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.572098, 42.107006, 26.131907> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570231, -0.532343, 0.625658,
		-0.551436, -0.316472, -0.771857,
		0.608896, -0.785147, -0.113091,
		35.754768, 41.871464, 26.097980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.930019, 41.713242, 26.102629>,  <35.328537, 42.421062, 26.177141>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.930019, 41.713242, 26.102629> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.287056, 41.610977, 26.251181>,  <35.501278, 41.549618, 26.340311>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.287056, 41.610977, 26.251181>,  <34.930019, 41.713242, 26.102629>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.287056, 41.610977, 26.251181> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443913, -0.642488, 0.624620,
		0.078913, -0.722388, -0.686970,
		0.892589, -0.255664, 0.371378,
		35.554832, 41.534279, 26.362595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.777573, 41.139938, 26.406702>,  <34.930019, 41.713242, 26.102629>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.777573, 41.139938, 26.406702> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.151268, 41.165627, 26.547028>,  <35.375484, 41.181038, 26.631222>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.151268, 41.165627, 26.547028>,  <34.777573, 41.139938, 26.406702>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.151268, 41.165627, 26.547028> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277375, -0.487477, 0.827906,
		0.224180, -0.870771, -0.437609,
		0.934241, 0.064218, 0.350813,
		35.431541, 41.184891, 26.652271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.018803, 40.462433, 26.409410>,  <34.777573, 41.139938, 26.406702>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.018803, 40.462433, 26.409410> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.190861, 40.707523, 26.674601>,  <35.294094, 40.854580, 26.833715>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.190861, 40.707523, 26.674601>,  <35.018803, 40.462433, 26.409410>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.190861, 40.707523, 26.674601> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197327, -0.652815, 0.731365,
		0.880931, -0.445414, -0.159894,
		0.430141, 0.612731, 0.662977,
		35.319904, 40.891342, 26.873493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.644566, 40.170879, 26.559118>,  <35.018803, 40.462433, 26.409410>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.644566, 40.170879, 26.559118> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.579227, 40.425503, 26.860613>,  <35.540024, 40.578278, 27.041510>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.579227, 40.425503, 26.860613>,  <35.644566, 40.170879, 26.559118>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.579227, 40.425503, 26.860613> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112880, -0.746919, 0.655263,
		0.980090, 0.192117, 0.050152,
		-0.163347, 0.636555, 0.753734,
		35.530224, 40.616470, 27.086733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.067791, 39.975704, 27.243319>,  <35.644566, 40.170879, 26.559118>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.067791, 39.975704, 27.243319> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.775070, 40.207954, 27.386055>,  <35.599438, 40.347305, 27.471697>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.775070, 40.207954, 27.386055>,  <36.067791, 39.975704, 27.243319>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.775070, 40.207954, 27.386055> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041524, -0.560619, 0.827032,
		0.680246, 0.590410, 0.434374,
		-0.731807, 0.580622, 0.356842,
		35.555527, 40.382141, 27.493107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.923599, 39.909420, 27.469288>,  <36.067791, 39.975704, 27.243319>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.923599, 39.909420, 27.469288> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.166809, 39.599590, 27.538960>,  <37.312737, 39.413692, 27.580763>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.166809, 39.599590, 27.538960>,  <36.923599, 39.909420, 27.469288>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.166809, 39.599590, 27.538960> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501797, 0.204928, -0.840360,
		0.615228, 0.598362, 0.513281,
		0.608025, -0.774576, 0.174179,
		37.349216, 39.367218, 27.591213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.618690, 40.161625, 27.521259>,  <36.923599, 39.909420, 27.469288>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.618690, 40.161625, 27.521259> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.639519, 39.775906, 27.417402>,  <37.652016, 39.544476, 27.355087>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.639519, 39.775906, 27.417402>,  <37.618690, 40.161625, 27.521259>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.639519, 39.775906, 27.417402> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522326, 0.247898, -0.815918,
		0.851155, -0.093132, 0.516587,
		0.052073, -0.964299, -0.259645,
		37.655140, 39.486614, 27.339508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.315536, 39.955490, 27.427397>,  <37.618690, 40.161625, 27.521259>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.315536, 39.955490, 27.427397> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.087635, 39.700336, 27.220137>,  <37.950893, 39.547245, 27.095781>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.087635, 39.700336, 27.220137>,  <38.315536, 39.955490, 27.427397>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.087635, 39.700336, 27.220137> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479542, 0.253973, -0.839963,
		0.667397, -0.727047, 0.161192,
		-0.569754, -0.637887, -0.518151,
		37.916710, 39.508972, 27.064692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.768459, 39.704193, 26.966444>,  <38.315536, 39.955490, 27.427397>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.768459, 39.704193, 26.966444> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.431557, 39.564018, 26.802589>,  <38.229416, 39.479912, 26.704277>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.431557, 39.564018, 26.802589>,  <38.768459, 39.704193, 26.966444>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.431557, 39.564018, 26.802589> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452429, -0.046339, -0.890596,
		0.293115, -0.935440, 0.197577,
		-0.842254, -0.350436, -0.409637,
		38.178879, 39.458889, 26.679699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.910572, 39.167568, 26.503029>,  <38.768459, 39.704193, 26.966444>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.910572, 39.167568, 26.503029> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.555855, 39.293312, 26.367512>,  <38.343025, 39.368759, 26.286201>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.555855, 39.293312, 26.367512>,  <38.910572, 39.167568, 26.503029>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.555855, 39.293312, 26.367512> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339419, -0.054560, -0.939052,
		-0.313682, -0.947736, -0.058316,
		-0.886791, 0.314357, -0.338794,
		38.289818, 39.387619, 26.265873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.833992, 38.772907, 25.881386>,  <38.910572, 39.167568, 26.503029>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.833992, 38.772907, 25.881386> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.630886, 39.117161, 25.866005>,  <38.509022, 39.323715, 25.856777>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.630886, 39.117161, 25.866005>,  <38.833992, 38.772907, 25.881386>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.630886, 39.117161, 25.866005> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357508, 0.169899, -0.918326,
		-0.783812, -0.480041, -0.393953,
		-0.507766, 0.860637, -0.038450,
		38.478558, 39.375351, 25.854469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.560143, 38.797798, 25.237688>,  <38.833992, 38.772907, 25.881386>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.560143, 38.797798, 25.237688> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.520073, 39.176647, 25.359627>,  <38.496029, 39.403957, 25.432791>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.520073, 39.176647, 25.359627>,  <38.560143, 38.797798, 25.237688>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.520073, 39.176647, 25.359627> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186786, 0.318842, -0.929220,
		-0.977280, -0.036145, -0.208849,
		-0.100176, 0.947118, 0.304847,
		38.490021, 39.460781, 25.451080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.360008, 39.147907, 24.636049>,  <38.560143, 38.797798, 25.237688>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.360008, 39.147907, 24.636049> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.490902, 39.429485, 24.888201>,  <38.569439, 39.598434, 25.039492>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.490902, 39.429485, 24.888201>,  <38.360008, 39.147907, 24.636049>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.490902, 39.429485, 24.888201> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513932, 0.427231, -0.743873,
		-0.792965, 0.567391, -0.221978,
		0.327231, 0.703947, 0.630380,
		38.589073, 39.640671, 25.077314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.184982, 39.758751, 24.277609>,  <38.360008, 39.147907, 24.636049>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.184982, 39.758751, 24.277609> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.463757, 39.856575, 24.547268>,  <38.631020, 39.915268, 24.709063>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.463757, 39.856575, 24.547268>,  <38.184982, 39.758751, 24.277609>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.463757, 39.856575, 24.547268> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509055, 0.493426, -0.705261,
		-0.505121, 0.834698, 0.219390,
		0.696933, 0.244561, 0.674147,
		38.672836, 39.929943, 24.749512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.421341, 40.383564, 24.037380>,  <38.184982, 39.758751, 24.277609>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.421341, 40.383564, 24.037380> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.727360, 40.321014, 24.287258>,  <38.910973, 40.283485, 24.437185>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.727360, 40.321014, 24.287258>,  <38.421341, 40.383564, 24.037380>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.727360, 40.321014, 24.287258> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617651, 0.452683, -0.643106,
		-0.182221, 0.877852, 0.442913,
		0.765051, -0.156378, 0.624694,
		38.956875, 40.274101, 24.474667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.717808, 41.075344, 24.356003>,  <38.421341, 40.383564, 24.037380>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.717808, 41.075344, 24.356003> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.997875, 40.789761, 24.358023>,  <39.165916, 40.618408, 24.359236>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.997875, 40.789761, 24.358023>,  <38.717808, 41.075344, 24.356003>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.997875, 40.789761, 24.358023> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560835, 0.545592, -0.622730,
		0.441850, 0.438848, 0.782420,
		0.700166, -0.713962, 0.005052,
		39.207924, 40.575573, 24.359539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.425694, 41.438557, 24.473572>,  <38.717808, 41.075344, 24.356003>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.425694, 41.438557, 24.473572> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.474239, 41.086720, 24.289577>,  <39.503365, 40.875618, 24.179180>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.474239, 41.086720, 24.289577>,  <39.425694, 41.438557, 24.473572>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.474239, 41.086720, 24.289577> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643387, 0.422591, -0.638333,
		0.755860, -0.218479, 0.617206,
		0.121363, -0.879593, -0.459986,
		39.510647, 40.822842, 24.151581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.157661, 41.381451, 24.358765>,  <39.425694, 41.438557, 24.473572>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.157661, 41.381451, 24.358765> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.970062, 41.130833, 24.109772>,  <39.857502, 40.980461, 23.960377>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.970062, 41.130833, 24.109772>,  <40.157661, 41.381451, 24.358765>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.970062, 41.130833, 24.109772> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559131, 0.334952, -0.758406,
		0.683679, -0.703737, 0.193231,
		-0.468995, -0.626548, -0.622481,
		39.829365, 40.942867, 23.923027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.659950, 41.055023, 23.904833>,  <40.157661, 41.381451, 24.358765>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.659950, 41.055023, 23.904833> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.298264, 41.060581, 23.734091>,  <40.081253, 41.063915, 23.631645>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.298264, 41.060581, 23.734091>,  <40.659950, 41.055023, 23.904833>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.298264, 41.060581, 23.734091> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396678, 0.397679, -0.827344,
		0.158251, -0.917420, -0.365100,
		-0.904214, 0.013899, -0.426853,
		40.027000, 41.064751, 23.606035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<32.080479, 35.641846, 21.008326> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.299328, 35.927612, 21.182800>,  <32.430637, 36.099072, 21.287485>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.299328, 35.927612, 21.182800>,  <32.080479, 35.641846, 21.008326>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.299328, 35.927612, 21.182800> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117992, -0.450072, 0.885163,
		0.828695, -0.535759, -0.161949,
		0.547122, 0.714421, 0.436187,
		32.463463, 36.141937, 21.313656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.421921, 35.300419, 21.524044>,  <32.080479, 35.641846, 21.008326>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.421921, 35.300419, 21.524044> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.491032, 35.682373, 21.620657>,  <32.532497, 35.911545, 21.678625>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.491032, 35.682373, 21.620657>,  <32.421921, 35.300419, 21.524044>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.491032, 35.682373, 21.620657> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123129, -0.264234, 0.956567,
		0.977235, -0.135529, -0.163227,
		0.172773, 0.954889, 0.241532,
		32.542862, 35.968838, 21.693117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.908398, 35.270199, 22.123917>,  <32.421921, 35.300419, 21.524044>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.908398, 35.270199, 22.123917> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.729755, 35.628086, 22.125526>,  <32.622570, 35.842819, 22.126492>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.729755, 35.628086, 22.125526>,  <32.908398, 35.270199, 22.123917>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.729755, 35.628086, 22.125526> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094999, 0.042948, 0.994550,
		0.889672, 0.444558, -0.104179,
		-0.446609, 0.894720, 0.004023,
		32.595772, 35.896503, 22.126734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.298618, 35.779266, 22.442034>,  <32.908398, 35.270199, 22.123917>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.298618, 35.779266, 22.442034> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.916687, 35.890232, 22.484652>,  <32.687531, 35.956810, 22.510221>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.916687, 35.890232, 22.484652>,  <33.298618, 35.779266, 22.442034>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.916687, 35.890232, 22.484652> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106970, -0.013649, 0.994169,
		0.277247, 0.960654, -0.016642,
		-0.954825, 0.277411, 0.106545,
		32.630238, 35.973454, 22.516615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.327320, 36.359138, 22.983746>,  <33.298618, 35.779266, 22.442034>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.327320, 36.359138, 22.983746> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.939346, 36.261829, 22.980860>,  <32.706562, 36.203445, 22.979128>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.939346, 36.261829, 22.980860>,  <33.327320, 36.359138, 22.983746>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.939346, 36.261829, 22.980860> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005680, -0.007016, 0.999959,
		-0.243313, 0.969933, 0.005423,
		-0.969931, -0.243272, -0.007216,
		32.648369, 36.188847, 22.978695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.137211, 36.777412, 23.472351>,  <33.327320, 36.359138, 22.983746>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.137211, 36.777412, 23.472351> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.839588, 36.514675, 23.423470>,  <32.661015, 36.357033, 23.394140>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.839588, 36.514675, 23.423470>,  <33.137211, 36.777412, 23.472351>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.839588, 36.514675, 23.423470> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108035, -0.062217, 0.992198,
		-0.659323, 0.751455, -0.024670,
		-0.744058, -0.656844, -0.122205,
		32.616371, 36.317623, 23.386808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.709480, 36.954823, 24.011312>,  <33.137211, 36.777412, 23.472351>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.709480, 36.954823, 24.011312> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.583202, 36.587223, 23.916843>,  <32.507435, 36.366665, 23.860161>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.583202, 36.587223, 23.916843>,  <32.709480, 36.954823, 24.011312>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.583202, 36.587223, 23.916843> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169520, -0.190273, 0.966985,
		-0.933596, 0.345306, -0.095721,
		-0.315692, -0.918999, -0.236175,
		32.488495, 36.311523, 23.845991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.091225, 36.822609, 24.384222>,  <32.709480, 36.954823, 24.011312>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.091225, 36.822609, 24.384222> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.218853, 36.455986, 24.287798>,  <32.295429, 36.236012, 24.229944>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.218853, 36.455986, 24.287798>,  <32.091225, 36.822609, 24.384222>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.218853, 36.455986, 24.287798> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283413, -0.334994, 0.898585,
		-0.904361, -0.218397, -0.366654,
		0.319075, -0.916560, -0.241059,
		32.314575, 36.181019, 24.215481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.860544, 36.499966, 24.974712>,  <32.091225, 36.822609, 24.384222>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.860544, 36.499966, 24.974712> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.068638, 36.218864, 24.780603>,  <32.193493, 36.050201, 24.664137>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.068638, 36.218864, 24.780603>,  <31.860544, 36.499966, 24.974712>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.068638, 36.218864, 24.780603> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087218, -0.521531, 0.848763,
		-0.849559, -0.483880, -0.210025,
		0.520234, -0.702756, -0.485274,
		32.224709, 36.008038, 24.635021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.560301, 35.869549, 25.051147>,  <31.860544, 36.499966, 24.974712>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.560301, 35.869549, 25.051147> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.943941, 35.793205, 24.967533>,  <32.174126, 35.747398, 24.917364>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.943941, 35.793205, 24.967533>,  <31.560301, 35.869549, 25.051147>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.943941, 35.793205, 24.967533> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069976, -0.555695, 0.828436,
		-0.274276, -0.809182, -0.519613,
		0.959102, -0.190860, -0.209038,
		32.231670, 35.735947, 24.904821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.694202, 35.150375, 25.170046>,  <31.560301, 35.869549, 25.051147>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.694202, 35.150375, 25.170046> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.046074, 35.336555, 25.209076>,  <32.257198, 35.448265, 25.232494>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.046074, 35.336555, 25.209076>,  <31.694202, 35.150375, 25.170046>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.046074, 35.336555, 25.209076> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136615, -0.443850, 0.885626,
		0.455524, -0.765736, -0.454033,
		0.879678, 0.465452, 0.097574,
		32.309978, 35.476192, 25.238348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.264759, 34.713753, 25.271708>,  <31.694202, 35.150375, 25.170046>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.264759, 34.713753, 25.271708> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.391464, 35.055099, 25.437321>,  <32.467487, 35.259907, 25.536688>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.391464, 35.055099, 25.437321>,  <32.264759, 34.713753, 25.271708>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.391464, 35.055099, 25.437321> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064995, -0.455013, 0.888110,
		0.946274, -0.254414, -0.199598,
		0.316767, 0.853368, 0.414031,
		32.486496, 35.311111, 25.561529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.640236, 34.524673, 25.795946>,  <32.264759, 34.713753, 25.271708>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.640236, 34.524673, 25.795946> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.611893, 34.908386, 25.905310>,  <32.594887, 35.138615, 25.970928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.611893, 34.908386, 25.905310>,  <32.640236, 34.524673, 25.795946>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.611893, 34.908386, 25.905310> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053949, -0.277383, 0.959244,
		0.996027, 0.053220, 0.071408,
		-0.070858, 0.959285, 0.273409,
		32.590633, 35.196171, 25.987333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.149452, 34.492123, 26.334452>,  <32.640236, 34.524673, 25.795946>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.149452, 34.492123, 26.334452> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.925186, 34.822186, 26.362076>,  <32.790627, 35.020222, 26.378651>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.925186, 34.822186, 26.362076>,  <33.149452, 34.492123, 26.334452>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.925186, 34.822186, 26.362076> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328889, -0.298459, 0.895965,
		0.759924, 0.479625, 0.438721,
		-0.560668, 0.825156, 0.069063,
		32.756985, 35.069733, 26.382795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.723072, 34.355869, 26.713406>,  <33.149452, 34.492123, 26.334452>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.723072, 34.355869, 26.713406> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.961056, 34.035908, 26.744860>,  <34.103844, 33.843929, 26.763731>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.961056, 34.035908, 26.744860>,  <33.723072, 34.355869, 26.713406>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.961056, 34.035908, 26.744860> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156934, 0.019659, -0.987413,
		0.788289, 0.599808, 0.137228,
		0.594956, -0.799903, 0.078633,
		34.139542, 33.795937, 26.768450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.418579, 34.513653, 26.595367>,  <33.723072, 34.355869, 26.713406>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.418579, 34.513653, 26.595367> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.415592, 34.128635, 26.486958>,  <34.413799, 33.897625, 26.421911>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.415592, 34.128635, 26.486958>,  <34.418579, 34.513653, 26.595367>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.415592, 34.128635, 26.486958> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362480, 0.249994, -0.897837,
		0.931962, -0.104948, 0.347035,
		-0.007470, -0.962543, -0.271026,
		34.413353, 33.839874, 26.405649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.132664, 34.319622, 26.153742>,  <34.418579, 34.513653, 26.595367>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.132664, 34.319622, 26.153742> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.881199, 34.015762, 26.087147>,  <34.730320, 33.833447, 26.047190>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.881199, 34.015762, 26.087147>,  <35.132664, 34.319622, 26.153742>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.881199, 34.015762, 26.087147> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368000, -0.101989, -0.924216,
		0.685100, -0.642285, 0.343668,
		-0.628661, -0.759650, -0.166488,
		34.692600, 33.787868, 26.037201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.540630, 33.784969, 25.919693>,  <35.132664, 34.319622, 26.153742>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.540630, 33.784969, 25.919693> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.175755, 33.692154, 25.784594>,  <34.956829, 33.636463, 25.703533>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.175755, 33.692154, 25.784594>,  <35.540630, 33.784969, 25.919693>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.175755, 33.692154, 25.784594> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353803, -0.030142, -0.934834,
		0.206740, -0.972239, 0.109592,
		-0.912185, -0.232042, -0.337750,
		34.902100, 33.622543, 25.683270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.711517, 33.273407, 25.525623>,  <35.540630, 33.784969, 25.919693>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.711517, 33.273407, 25.525623> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.349869, 33.404732, 25.416245>,  <35.132881, 33.483528, 25.350618>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.349869, 33.404732, 25.416245>,  <35.711517, 33.273407, 25.525623>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.349869, 33.404732, 25.416245> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334322, 0.145067, -0.931227,
		-0.266069, -0.933362, -0.240922,
		-0.904122, 0.328316, -0.273446,
		35.078632, 33.503227, 25.334211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.643623, 33.042427, 24.827347>,  <35.711517, 33.273407, 25.525623>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.643623, 33.042427, 24.827347> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.349319, 33.309856, 24.870546>,  <35.172737, 33.470314, 24.896467>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.349319, 33.309856, 24.870546>,  <35.643623, 33.042427, 24.827347>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.349319, 33.309856, 24.870546> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136345, 0.302437, -0.943367,
		-0.663373, -0.679369, -0.313678,
		-0.735763, 0.668573, 0.108000,
		35.128590, 33.510429, 24.902946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.266811, 32.943199, 24.269989>,  <35.643623, 33.042427, 24.827347>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.266811, 32.943199, 24.269989> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.189362, 33.321133, 24.375669>,  <35.142891, 33.547894, 24.439077>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.189362, 33.321133, 24.375669>,  <35.266811, 32.943199, 24.269989>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.189362, 33.321133, 24.375669> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357696, 0.318746, -0.877755,
		-0.913544, -0.075452, -0.399680,
		-0.193625, 0.944832, 0.264200,
		35.131275, 33.604584, 24.454929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.912483, 33.237865, 23.715664>,  <35.266811, 32.943199, 24.269989>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.912483, 33.237865, 23.715664> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.041668, 33.554752, 23.922771>,  <35.119179, 33.744884, 24.047035>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.041668, 33.554752, 23.922771>,  <34.912483, 33.237865, 23.715664>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.041668, 33.554752, 23.922771> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065149, 0.527177, -0.847254,
		-0.944166, 0.307366, 0.118648,
		0.322966, 0.792219, 0.517767,
		35.138557, 33.792419, 24.078102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.579609, 33.917873, 23.396435>,  <34.912483, 33.237865, 23.715664>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.579609, 33.917873, 23.396435> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.906921, 34.052456, 23.582855>,  <35.103310, 34.133205, 23.694708>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.906921, 34.052456, 23.582855>,  <34.579609, 33.917873, 23.396435>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.906921, 34.052456, 23.582855> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154965, 0.651639, -0.742531,
		-0.553529, 0.679824, 0.481088,
		0.818286, 0.336460, 0.466050,
		35.152409, 34.153393, 23.722670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.520306, 34.611115, 23.279831>,  <34.579609, 33.917873, 23.396435>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.520306, 34.611115, 23.279831> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.897671, 34.548954, 23.397017>,  <35.124088, 34.511658, 23.467327>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.897671, 34.548954, 23.397017>,  <34.520306, 34.611115, 23.279831>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.897671, 34.548954, 23.397017> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329871, 0.530540, -0.780841,
		-0.034087, 0.833294, 0.551778,
		0.943410, -0.155399, 0.292964,
		35.180695, 34.502335, 23.484905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.809944, 35.253571, 23.254227>,  <34.520306, 34.611115, 23.279831>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.809944, 35.253571, 23.254227> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.135532, 35.021217, 23.251749>,  <35.330883, 34.881805, 23.250263>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.135532, 35.021217, 23.251749>,  <34.809944, 35.253571, 23.254227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.135532, 35.021217, 23.251749> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368759, 0.524910, -0.767128,
		0.448860, 0.622132, 0.641464,
		0.813966, -0.580879, -0.006195,
		35.379723, 34.846954, 23.249891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.348167, 35.732292, 23.343594>,  <34.809944, 35.253571, 23.254227>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.348167, 35.732292, 23.343594> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.457447, 35.394676, 23.159006>,  <35.523014, 35.192104, 23.048254>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.457447, 35.394676, 23.159006>,  <35.348167, 35.732292, 23.343594>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.457447, 35.394676, 23.159006> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237458, 0.524046, -0.817918,
		0.932189, 0.113876, 0.343594,
		0.273200, -0.844043, -0.461469,
		35.539406, 35.141464, 23.020565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.037357, 35.899826, 22.990261>,  <35.348167, 35.732292, 23.343594>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.037357, 35.899826, 22.990261> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.923000, 35.558369, 22.816103>,  <35.854385, 35.353497, 22.711609>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.923000, 35.558369, 22.816103>,  <36.037357, 35.899826, 22.990261>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.923000, 35.558369, 22.816103> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360018, 0.325391, -0.874362,
		0.888062, -0.406720, 0.214299,
		-0.285890, -0.853639, -0.435394,
		35.837234, 35.302277, 22.685484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.621666, 35.594006, 22.580692>,  <36.037357, 35.899826, 22.990261>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.621666, 35.594006, 22.580692> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.291363, 35.434177, 22.421459>,  <36.093182, 35.338280, 22.325920>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.291363, 35.434177, 22.421459>,  <36.621666, 35.594006, 22.580692>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.291363, 35.434177, 22.421459> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272385, 0.335521, -0.901794,
		0.493899, -0.853092, -0.168220,
		-0.825754, -0.399574, -0.398083,
		36.043636, 35.314304, 22.302034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.298828, 35.499981, 22.233938>,  <36.621666, 35.594006, 22.580692>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.298828, 35.499981, 22.233938> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.378845, 35.820793, 22.459053>,  <37.426853, 36.013283, 22.594122>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.378845, 35.820793, 22.459053>,  <37.298828, 35.499981, 22.233938>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.378845, 35.820793, 22.459053> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000938, -0.574238, 0.818688,
		0.979787, -0.164298, -0.114119,
		0.200040, 0.802033, 0.562785,
		37.438858, 36.061401, 22.627888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.774593, 35.257675, 22.684807>,  <37.298828, 35.499981, 22.233938>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.774593, 35.257675, 22.684807> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.679302, 35.605492, 22.857851>,  <37.622128, 35.814182, 22.961678>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.679302, 35.605492, 22.857851>,  <37.774593, 35.257675, 22.684807>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.679302, 35.605492, 22.857851> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042729, -0.435618, 0.899117,
		0.970270, 0.232677, 0.066621,
		-0.238225, 0.869539, 0.432609,
		37.607834, 35.866352, 22.987633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.294384, 35.350315, 23.275888>,  <37.774593, 35.257675, 22.684807>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.294384, 35.350315, 23.275888> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.004971, 35.610542, 23.368198>,  <37.831322, 35.766678, 23.423584>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.004971, 35.610542, 23.368198>,  <38.294384, 35.350315, 23.275888>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.004971, 35.610542, 23.368198> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103311, -0.228492, 0.968049,
		0.682516, 0.724256, 0.098110,
		-0.723532, 0.650573, 0.230773,
		37.787910, 35.805714, 23.437429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.554035, 35.824291, 23.811312>,  <38.294384, 35.350315, 23.275888>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.554035, 35.824291, 23.811312> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.155697, 35.833073, 23.846663>,  <37.916695, 35.838341, 23.867872>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.155697, 35.833073, 23.846663>,  <38.554035, 35.824291, 23.811312>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.155697, 35.833073, 23.846663> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074547, -0.360825, 0.929649,
		0.052296, 0.932375, 0.357689,
		-0.995845, 0.021953, 0.088375,
		37.856945, 35.839657, 23.873175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.375740, 36.145412, 24.458061>,  <38.554035, 35.824291, 23.811312>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.375740, 36.145412, 24.458061> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.048546, 35.938992, 24.356409>,  <37.852230, 35.815140, 24.295418>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.048546, 35.938992, 24.356409>,  <38.375740, 36.145412, 24.458061>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.048546, 35.938992, 24.356409> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159546, -0.220919, 0.962154,
		-0.552667, 0.827576, 0.098375,
		-0.817988, -0.516055, -0.254131,
		37.803150, 35.784176, 24.280170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.972588, 36.421875, 24.923584>,  <38.375740, 36.145412, 24.458061>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.972588, 36.421875, 24.923584> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.816315, 36.080605, 24.785334>,  <37.722553, 35.875843, 24.702383>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.816315, 36.080605, 24.785334>,  <37.972588, 36.421875, 24.923584>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.816315, 36.080605, 24.785334> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281447, -0.246774, 0.927302,
		-0.876446, 0.459552, -0.143715,
		-0.390679, -0.853179, -0.345624,
		37.699112, 35.824650, 24.681646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.385048, 36.506355, 25.168467>,  <37.972588, 36.421875, 24.923584>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.385048, 36.506355, 25.168467> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.443581, 36.116787, 25.099119>,  <37.478703, 35.883045, 25.057510>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.443581, 36.116787, 25.099119>,  <37.385048, 36.506355, 25.168467>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.443581, 36.116787, 25.099119> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262506, -0.207202, 0.942421,
		-0.953770, -0.092400, -0.285983,
		0.146336, -0.973925, -0.173368,
		37.487480, 35.824608, 25.047110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.806957, 36.163944, 25.397381>,  <37.385048, 36.506355, 25.168467>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.806957, 36.163944, 25.397381> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.070683, 35.863213, 25.400555>,  <37.228916, 35.682774, 25.402460>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.070683, 35.863213, 25.400555>,  <36.806957, 36.163944, 25.397381>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.070683, 35.863213, 25.400555> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196305, -0.161940, 0.967078,
		-0.725791, -0.639163, -0.254357,
		0.659311, -0.751829, 0.007936,
		37.268475, 35.637665, 25.402935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.333328, 35.720116, 25.738436>,  <36.806957, 36.163944, 25.397381>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.333328, 35.720116, 25.738436> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.715290, 35.605152, 25.768267>,  <36.944466, 35.536175, 25.786165>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.715290, 35.605152, 25.768267>,  <36.333328, 35.720116, 25.738436>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.715290, 35.605152, 25.768267> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102737, -0.084154, 0.991143,
		-0.278587, -0.954104, -0.109886,
		0.954900, -0.287408, 0.074577,
		37.001759, 35.518929, 25.790640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.280159, 35.057011, 25.896675>,  <36.333328, 35.720116, 25.738436>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.280159, 35.057011, 25.896675> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.625397, 35.207436, 26.031521>,  <36.832539, 35.297691, 26.112429>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.625397, 35.207436, 26.031521>,  <36.280159, 35.057011, 25.896675>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.625397, 35.207436, 26.031521> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220419, -0.320079, 0.921393,
		0.454407, -0.869554, -0.193366,
		0.863093, 0.376066, 0.337112,
		36.884323, 35.320255, 26.132654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.481709, 34.624016, 26.398600>,  <36.280159, 35.057011, 25.896675>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.481709, 34.624016, 26.398600> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.720089, 34.929993, 26.496336>,  <36.863117, 35.113579, 26.554977>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.720089, 34.929993, 26.496336>,  <36.481709, 34.624016, 26.398600>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.720089, 34.929993, 26.496336> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159199, -0.185692, 0.969626,
		0.787080, -0.616751, 0.011115,
		0.595953, 0.764943, 0.244341,
		36.898876, 35.159477, 26.569637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.859051, 34.344170, 26.875286>,  <36.481709, 34.624016, 26.398600>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.859051, 34.344170, 26.875286> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.913704, 34.736912, 26.927881>,  <36.946495, 34.972557, 26.959438>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.913704, 34.736912, 26.927881>,  <36.859051, 34.344170, 26.875286>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.913704, 34.736912, 26.927881> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023430, -0.129492, 0.991304,
		0.990344, -0.138529, 0.005311,
		0.136637, 0.981856, 0.131488,
		36.954697, 35.031467, 26.967327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.539318, 34.450981, 27.303686>,  <36.859051, 34.344170, 26.875286>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.539318, 34.450981, 27.303686> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.340553, 34.794468, 27.353779>,  <37.221294, 35.000561, 27.383835>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.340553, 34.794468, 27.353779>,  <37.539318, 34.450981, 27.303686>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.340553, 34.794468, 27.353779> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205187, -0.023957, 0.978429,
		0.843195, 0.511889, -0.164293,
		-0.496911, 0.858717, 0.125233,
		37.191479, 35.052082, 27.391350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.056084, 34.966560, 27.632051>,  <37.539318, 34.450981, 27.303686>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.056084, 34.966560, 27.632051> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.684616, 35.101181, 27.694407>,  <37.461735, 35.181953, 27.731819>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.684616, 35.101181, 27.694407>,  <38.056084, 34.966560, 27.632051>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.684616, 35.101181, 27.694407> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226022, 0.180259, 0.957299,
		0.294085, 0.924249, -0.243471,
		-0.928670, 0.336556, 0.155889,
		37.406013, 35.202148, 27.741173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<41.132492, 40.339695, 22.755571> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.756668, 40.457771, 22.824961>,  <40.531174, 40.528618, 22.866594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.756668, 40.457771, 22.824961>,  <41.132492, 40.339695, 22.755571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.756668, 40.457771, 22.824961> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119567, 0.191885, -0.974107,
		-0.320832, -0.935972, -0.144993,
		-0.939559, 0.295188, 0.173475,
		40.474800, 40.546329, 22.877003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.601959, 39.841412, 22.462130>,  <41.132492, 40.339695, 22.755571>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.601959, 39.841412, 22.462130> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.474518, 40.219742, 22.487123>,  <40.398052, 40.446739, 22.502119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.474518, 40.219742, 22.487123>,  <40.601959, 39.841412, 22.462130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.474518, 40.219742, 22.487123> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128775, 0.022119, -0.991427,
		-0.939100, -0.323917, 0.114752,
		-0.318602, 0.945827, 0.062484,
		40.378937, 40.503490, 22.505869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.006527, 39.938553, 22.026981>,  <40.601959, 39.841412, 22.462130>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.006527, 39.938553, 22.026981> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.150166, 40.311359, 22.046551>,  <40.236347, 40.535046, 22.058292>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.150166, 40.311359, 22.046551>,  <40.006527, 39.938553, 22.026981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.150166, 40.311359, 22.046551> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113089, 0.095484, -0.988986,
		-0.926424, 0.349607, 0.139689,
		0.359095, 0.932018, 0.048922,
		40.257893, 40.590965, 22.061228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.543915, 40.264164, 21.654692>,  <40.006527, 39.938553, 22.026981>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.543915, 40.264164, 21.654692> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.871544, 40.493568, 21.660370>,  <40.068123, 40.631210, 21.663776>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.871544, 40.493568, 21.660370>,  <39.543915, 40.264164, 21.654692>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.871544, 40.493568, 21.660370> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094821, 0.159737, -0.982595,
		-0.565799, 0.803471, 0.185218,
		0.819073, 0.573514, 0.014193,
		40.117268, 40.665623, 21.664627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.422279, 40.565372, 21.071962>,  <39.543915, 40.264164, 21.654692>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.422279, 40.565372, 21.071962> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.788521, 40.714703, 21.131701>,  <40.008266, 40.804298, 21.167543>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.788521, 40.714703, 21.131701>,  <39.422279, 40.565372, 21.071962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.788521, 40.714703, 21.131701> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099350, 0.149857, -0.983703,
		-0.389620, 0.915518, 0.100120,
		0.915601, 0.373324, 0.149344,
		40.063202, 40.826698, 21.176504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.331860, 41.186924, 20.833858>,  <39.422279, 40.565372, 21.071962>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.331860, 41.186924, 20.833858> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.724754, 41.114296, 20.814939>,  <39.960491, 41.070717, 20.803589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.724754, 41.114296, 20.814939>,  <39.331860, 41.186924, 20.833858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.724754, 41.114296, 20.814939> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048922, -0.004479, -0.998793,
		0.181143, 0.983367, -0.013282,
		0.982239, -0.181574, -0.047297,
		40.019424, 41.059822, 20.800751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.573235, 41.728596, 20.306190>,  <39.331860, 41.186924, 20.833858>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.573235, 41.728596, 20.306190> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.841042, 41.433918, 20.344170>,  <40.001728, 41.257111, 20.366957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.841042, 41.433918, 20.344170>,  <39.573235, 41.728596, 20.306190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.841042, 41.433918, 20.344170> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049735, -0.083077, -0.995301,
		0.741125, 0.671098, -0.018982,
		0.669522, -0.736699, 0.094948,
		40.041897, 41.212910, 20.372654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.102337, 41.952766, 19.878014>,  <39.573235, 41.728596, 20.306190>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.102337, 41.952766, 19.878014> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.118755, 41.557323, 19.935947>,  <40.128605, 41.320057, 19.970709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.118755, 41.557323, 19.935947>,  <40.102337, 41.952766, 19.878014>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.118755, 41.557323, 19.935947> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004299, -0.144782, -0.989454,
		0.999148, 0.041233, -0.001692,
		0.041043, -0.988604, 0.144836,
		40.131069, 41.260742, 19.979399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.537117, 41.749668, 19.464506>,  <40.102337, 41.952766, 19.878014>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.537117, 41.749668, 19.464506> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.344246, 41.404400, 19.524426>,  <40.228523, 41.197239, 19.560377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.344246, 41.404400, 19.524426>,  <40.537117, 41.749668, 19.464506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.344246, 41.404400, 19.524426> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011199, -0.164903, -0.986246,
		0.876001, -0.477225, 0.069846,
		-0.482179, -0.863171, 0.149800,
		40.199593, 41.145447, 19.569365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.881500, 41.281193, 19.143879>,  <40.537117, 41.749668, 19.464506>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.881500, 41.281193, 19.143879> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.513317, 41.127869, 19.174438>,  <40.292408, 41.035873, 19.192774>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.513317, 41.127869, 19.174438>,  <40.881500, 41.281193, 19.143879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.513317, 41.127869, 19.174438> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010622, -0.219925, -0.975459,
		0.390705, -0.897054, 0.206502,
		-0.920454, -0.383311, 0.076397,
		40.237179, 41.012875, 19.197357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.890095, 40.646770, 18.793501>,  <40.881500, 41.281193, 19.143879>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.890095, 40.646770, 18.793501> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.496796, 40.717201, 18.812342>,  <40.260815, 40.759460, 18.823647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.496796, 40.717201, 18.812342>,  <40.890095, 40.646770, 18.793501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.496796, 40.717201, 18.812342> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076709, -0.165340, -0.983249,
		-0.165340, -0.970391, 0.176078,
		0.983249, -0.176078, -0.047100,
		40.201820, 40.770023, 18.826471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.503696, 39.974838, 18.548105>,  <40.890095, 40.646770, 18.793501>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.503696, 39.974838, 18.548105> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.259766, 40.290424, 18.518040>,  <40.113407, 40.479774, 18.500000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.259766, 40.290424, 18.518040>,  <40.503696, 39.974838, 18.548105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.259766, 40.290424, 18.518040> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210657, -0.252792, -0.944309,
		-0.764024, -0.560033, 0.320360,
		-0.609829, 0.788961, -0.075164,
		40.076817, 40.527111, 18.495491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.797359, 39.779457, 18.429609>,  <40.503696, 39.974838, 18.548105>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.797359, 39.779457, 18.429609> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.912689, 40.126518, 18.267597>,  <39.981888, 40.334755, 18.170391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.912689, 40.126518, 18.267597>,  <39.797359, 39.779457, 18.429609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.912689, 40.126518, 18.267597> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200596, -0.358874, -0.911576,
		-0.936286, 0.344075, 0.070577,
		0.288322, 0.867653, -0.405029,
		39.999187, 40.386814, 18.146090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.259914, 40.012718, 18.062239>,  <39.797359, 39.779457, 18.429609>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.259914, 40.012718, 18.062239> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.599300, 40.152920, 17.903620>,  <39.802933, 40.237041, 17.808449>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.599300, 40.152920, 17.903620>,  <39.259914, 40.012718, 18.062239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.599300, 40.152920, 17.903620> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249521, -0.395848, -0.883766,
		-0.466735, 0.848795, -0.248407,
		0.848468, 0.350502, -0.396548,
		39.853840, 40.258072, 17.784655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.907097, 39.452023, 18.294474>,  <39.259914, 40.012718, 18.062239>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.907097, 39.452023, 18.294474> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.147621, 39.146076, 18.202038>,  <39.291935, 38.962509, 18.146576>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.147621, 39.146076, 18.202038>,  <38.907097, 39.452023, 18.294474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.147621, 39.146076, 18.202038> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462489, -0.569023, 0.679939,
		-0.651561, -0.301975, -0.695901,
		0.601308, -0.764868, -0.231093,
		39.328014, 38.916615, 18.132710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.461864, 38.980640, 18.078793>,  <38.907097, 39.452023, 18.294474>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.461864, 38.980640, 18.078793> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.783287, 38.781357, 18.209074>,  <38.976139, 38.661785, 18.287243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.783287, 38.781357, 18.209074>,  <38.461864, 38.980640, 18.078793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.783287, 38.781357, 18.209074> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563675, -0.461129, 0.685296,
		-0.191232, -0.734264, -0.651373,
		0.803555, -0.498213, 0.325704,
		39.024353, 38.631893, 18.306786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.223095, 38.353634, 18.331038>,  <38.461864, 38.980640, 18.078793>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.223095, 38.353634, 18.331038> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.580860, 38.343498, 18.509645>,  <38.795521, 38.337418, 18.616810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.580860, 38.343498, 18.509645>,  <38.223095, 38.353634, 18.331038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.580860, 38.343498, 18.509645> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389524, -0.534716, 0.749900,
		0.219757, -0.844652, -0.488130,
		0.894415, -0.025342, 0.446520,
		38.849186, 38.335896, 18.643600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.213757, 37.693008, 18.584711>,  <38.223095, 38.353634, 18.331038>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.213757, 37.693008, 18.584711> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.520115, 37.856709, 18.783072>,  <38.703930, 37.954929, 18.902088>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.520115, 37.856709, 18.783072>,  <38.213757, 37.693008, 18.584711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.520115, 37.856709, 18.783072> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353797, -0.375761, 0.856523,
		0.536872, -0.831456, -0.143003,
		0.765896, 0.409249, 0.495902,
		38.749886, 37.979485, 18.931843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.415825, 37.181023, 19.045424>,  <38.213757, 37.693008, 18.584711>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.415825, 37.181023, 19.045424> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.554600, 37.524868, 19.195465>,  <38.637867, 37.731174, 19.285490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.554600, 37.524868, 19.195465>,  <38.415825, 37.181023, 19.045424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.554600, 37.524868, 19.195465> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191368, -0.326648, 0.925570,
		0.918156, -0.392900, 0.051175,
		0.346940, 0.859611, 0.375102,
		38.658684, 37.782753, 19.307995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.983273, 36.934551, 19.512003>,  <38.415825, 37.181023, 19.045424>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.983273, 36.934551, 19.512003> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.858345, 37.288670, 19.649815>,  <38.783386, 37.501141, 19.732502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.858345, 37.288670, 19.649815>,  <38.983273, 36.934551, 19.512003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.858345, 37.288670, 19.649815> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113258, -0.394787, 0.911766,
		0.943201, 0.245744, 0.223568,
		-0.312322, 0.885299, 0.344531,
		38.764648, 37.554260, 19.753174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.261024, 36.943748, 20.266865>,  <38.983273, 36.934551, 19.512003>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.261024, 36.943748, 20.266865> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.988083, 37.233589, 20.228214>,  <38.824318, 37.407494, 20.205025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.988083, 37.233589, 20.228214>,  <39.261024, 36.943748, 20.266865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.988083, 37.233589, 20.228214> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409788, -0.269693, 0.871401,
		0.605363, 0.634202, 0.480961,
		-0.682356, 0.724606, -0.096627,
		38.783375, 37.450970, 20.199226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.280918, 37.314827, 20.921520>,  <39.261024, 36.943748, 20.266865>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.280918, 37.314827, 20.921520> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.928387, 37.395058, 20.750391>,  <38.716869, 37.443195, 20.647715>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.928387, 37.395058, 20.750391>,  <39.280918, 37.314827, 20.921520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.928387, 37.395058, 20.750391> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469981, -0.278673, 0.837531,
		0.048763, 0.939208, 0.339868,
		-0.881328, 0.200572, -0.427821,
		38.663990, 37.455231, 20.622046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.933884, 37.760944, 21.373871>,  <39.280918, 37.314827, 20.921520>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.933884, 37.760944, 21.373871> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.668800, 37.578495, 21.136293>,  <38.509750, 37.469025, 20.993748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.668800, 37.578495, 21.136293>,  <38.933884, 37.760944, 21.373871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.668800, 37.578495, 21.136293> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583441, -0.182746, 0.791329,
		-0.469488, 0.870949, -0.145017,
		-0.662705, -0.456128, -0.593944,
		38.469990, 37.441658, 20.958111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.286781, 37.974613, 21.520708>,  <38.933884, 37.760944, 21.373871>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.286781, 37.974613, 21.520708> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.181973, 37.655247, 21.303867>,  <38.119087, 37.463627, 21.173763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.181973, 37.655247, 21.303867>,  <38.286781, 37.974613, 21.520708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.181973, 37.655247, 21.303867> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686306, -0.240756, 0.686310,
		-0.678477, 0.551873, -0.484877,
		-0.262019, -0.798419, -0.542101,
		38.103367, 37.415722, 21.141237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.514206, 37.931854, 21.594772>,  <38.286781, 37.974613, 21.520708>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.514206, 37.931854, 21.594772> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.675964, 37.575596, 21.511629>,  <37.773018, 37.361839, 21.461742>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.675964, 37.575596, 21.511629>,  <37.514206, 37.931854, 21.594772>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.675964, 37.575596, 21.511629> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494931, -0.404232, 0.769181,
		-0.769095, -0.208178, -0.604281,
		0.404396, -0.890651, -0.207859,
		37.797283, 37.308399, 21.449272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.044350, 37.484478, 21.744999>,  <37.514206, 37.931854, 21.594772>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.044350, 37.484478, 21.744999> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.355766, 37.234158, 21.763971>,  <37.542614, 37.083965, 21.775354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.355766, 37.234158, 21.763971>,  <37.044350, 37.484478, 21.744999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.355766, 37.234158, 21.763971> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427429, -0.473375, 0.770208,
		-0.459536, -0.619918, -0.636026,
		0.778544, -0.625794, 0.047438,
		37.589329, 37.046417, 21.778200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.664566, 36.826588, 21.892500>,  <37.044350, 37.484478, 21.744999>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.664566, 36.826588, 21.892500> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.052830, 36.769619, 21.969999>,  <37.285789, 36.735435, 22.016499>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.052830, 36.769619, 21.969999>,  <36.664566, 36.826588, 21.892500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.052830, 36.769619, 21.969999> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240444, -0.585422, 0.774253,
		0.003151, -0.798120, -0.602490,
		0.970658, -0.142426, 0.193748,
		37.344028, 36.726891, 22.028124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.782784, 36.021870, 22.023211>,  <36.664566, 36.826588, 21.892500>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.782784, 36.021870, 22.023211> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.095955, 36.203072, 22.193769>,  <37.283855, 36.311790, 22.296104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.095955, 36.203072, 22.193769>,  <36.782784, 36.021870, 22.023211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.095955, 36.203072, 22.193769> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071076, -0.615780, 0.784705,
		0.618042, -0.644673, -0.449913,
		0.782926, 0.453002, 0.426399,
		37.330833, 36.338974, 22.321690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.778503, 35.324970, 21.767509>,  <36.782784, 36.021870, 22.023211>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.778503, 35.324970, 21.767509> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.379448, 35.334347, 21.793339>,  <36.140015, 35.339973, 21.808836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.379448, 35.334347, 21.793339>,  <36.778503, 35.324970, 21.767509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.379448, 35.334347, 21.793339> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053992, 0.313640, -0.948006,
		-0.042479, -0.949252, -0.311633,
		-0.997637, 0.023445, 0.064575,
		36.080158, 35.341381, 21.812712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.547436, 34.946644, 21.140869>,  <36.778503, 35.324970, 21.767509>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.547436, 34.946644, 21.140869> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.247967, 35.187328, 21.252172>,  <36.068287, 35.331741, 21.318954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.247967, 35.187328, 21.252172>,  <36.547436, 34.946644, 21.140869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.247967, 35.187328, 21.252172> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174915, 0.225571, -0.958396,
		-0.639448, -0.766196, -0.063630,
		-0.748673, 0.601714, 0.278260,
		36.023365, 35.367844, 21.335651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.143681, 34.954273, 20.606602>,  <36.547436, 34.946644, 21.140869>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.143681, 34.954273, 20.606602> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.991379, 35.270981, 20.797653>,  <35.899998, 35.461006, 20.912283>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.991379, 35.270981, 20.797653>,  <36.143681, 34.954273, 20.606602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.991379, 35.270981, 20.797653> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257739, 0.405189, -0.877150,
		-0.888029, -0.457084, 0.049792,
		-0.380756, 0.791768, 0.477627,
		35.877151, 35.508511, 20.940941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.494610, 35.076077, 20.296381>,  <36.143681, 34.954273, 20.606602>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.494610, 35.076077, 20.296381> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.630806, 35.409798, 20.469822>,  <35.712524, 35.610031, 20.573887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.630806, 35.409798, 20.469822>,  <35.494610, 35.076077, 20.296381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.630806, 35.409798, 20.469822> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163711, 0.506718, -0.846425,
		-0.925886, 0.217215, 0.309117,
		0.340491, 0.834299, 0.433603,
		35.732952, 35.660088, 20.599903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.047596, 35.581425, 20.014036>,  <35.494610, 35.076077, 20.296381>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.047596, 35.581425, 20.014036> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.349792, 35.795490, 20.165211>,  <35.531109, 35.923931, 20.255915>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.349792, 35.795490, 20.165211>,  <35.047596, 35.581425, 20.014036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.349792, 35.795490, 20.165211> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000065, 0.576918, -0.816802,
		-0.655163, 0.617059, 0.435889,
		0.755487, 0.535167, 0.377935,
		35.576439, 35.956039, 20.278591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.856796, 36.235649, 19.934593>,  <35.047596, 35.581425, 20.014036>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.856796, 36.235649, 19.934593> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.255173, 36.266151, 19.953690>,  <35.494198, 36.284454, 19.965147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.255173, 36.266151, 19.953690>,  <34.856796, 36.235649, 19.934593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.255173, 36.266151, 19.953690> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002364, 0.552642, -0.833416,
		-0.089936, 0.829923, 0.550581,
		0.995945, 0.076256, 0.047740,
		35.553955, 36.289028, 19.968012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.939781, 36.841702, 19.629581>,  <34.856796, 36.235649, 19.934593>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.939781, 36.841702, 19.629581> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.308975, 36.687885, 19.635702>,  <35.530491, 36.595596, 19.639374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.308975, 36.687885, 19.635702>,  <34.939781, 36.841702, 19.629581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.308975, 36.687885, 19.635702> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181338, 0.399498, -0.898620,
		0.339439, 0.832186, 0.438461,
		0.922983, -0.384536, 0.015302,
		35.585869, 36.572525, 19.640293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.767387, 37.519379, 19.776073>,  <34.939781, 36.841702, 19.629581>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.767387, 37.519379, 19.776073> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.424332, 37.658020, 19.624113>,  <34.218498, 37.741203, 19.532938>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.424332, 37.658020, 19.624113>,  <34.767387, 37.519379, 19.776073>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.424332, 37.658020, 19.624113> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512285, -0.640407, 0.572226,
		-0.044955, 0.685380, 0.726797,
		-0.857638, 0.346603, -0.379899,
		34.167042, 37.762001, 19.510143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.389748, 37.675423, 20.334446>,  <34.767387, 37.519379, 19.776073>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.389748, 37.675423, 20.334446> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.106766, 37.641277, 20.053814>,  <33.936977, 37.620789, 19.885435>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.106766, 37.641277, 20.053814>,  <34.389748, 37.675423, 20.334446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.106766, 37.641277, 20.053814> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525029, -0.601053, 0.602561,
		-0.473126, 0.794637, 0.380399,
		-0.707457, -0.085367, -0.701582,
		33.894527, 37.615665, 19.843340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.805595, 37.914825, 20.718483>,  <34.389748, 37.675423, 20.334446>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.805595, 37.914825, 20.718483> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.685429, 37.703007, 20.401163>,  <33.613327, 37.575916, 20.210772>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.685429, 37.703007, 20.401163>,  <33.805595, 37.914825, 20.718483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.685429, 37.703007, 20.401163> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557907, -0.577036, 0.596464,
		-0.773620, 0.621776, -0.122088,
		-0.300418, -0.529551, -0.793300,
		33.595303, 37.544140, 20.163174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.169212, 37.819862, 20.768076>,  <33.805595, 37.914825, 20.718483>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.169212, 37.819862, 20.768076> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.240608, 37.529057, 20.502869>,  <33.283447, 37.354572, 20.343744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.240608, 37.529057, 20.502869>,  <33.169212, 37.819862, 20.768076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.240608, 37.529057, 20.502869> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626677, -0.603489, 0.493028,
		-0.758563, 0.327498, -0.563319,
		0.178491, -0.727012, -0.663020,
		33.294155, 37.310951, 20.303963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.522026, 37.581860, 20.574335>,  <33.169212, 37.819862, 20.768076>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.522026, 37.581860, 20.574335> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.789803, 37.292576, 20.506432>,  <32.950470, 37.119007, 20.465691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.789803, 37.292576, 20.506432>,  <32.522026, 37.581860, 20.574335>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.789803, 37.292576, 20.506432> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498518, -0.606782, 0.619109,
		-0.550748, -0.329833, -0.766738,
		0.669445, -0.723206, -0.169757,
		32.990635, 37.075615, 20.455505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.103767, 37.066345, 20.605129>,  <32.522026, 37.581860, 20.574335>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.103767, 37.066345, 20.605129> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.457394, 36.884991, 20.650503>,  <32.669571, 36.776176, 20.677729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.457394, 36.884991, 20.650503>,  <32.103767, 37.066345, 20.605129>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.457394, 36.884991, 20.650503> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378949, -0.553328, 0.741772,
		-0.273541, -0.698762, -0.660989,
		0.884066, -0.453387, 0.113438,
		32.722614, 36.748974, 20.684534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.924118, 36.335648, 20.676504>,  <32.103767, 37.066345, 20.605129>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.924118, 36.335648, 20.676504> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.285938, 36.398884, 20.834894>,  <32.503029, 36.436825, 20.929928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.285938, 36.398884, 20.834894>,  <31.924118, 36.335648, 20.676504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.285938, 36.398884, 20.834894> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342653, -0.283123, 0.895785,
		0.253728, -0.945964, -0.201927,
		0.904550, 0.158094, 0.395973,
		32.557304, 36.446312, 20.953686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<37.891705, 42.654701, 18.274940> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.230675, 42.501789, 18.422312>,  <38.434055, 42.410042, 18.510735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.230675, 42.501789, 18.422312>,  <37.891705, 42.654701, 18.274940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.230675, 42.501789, 18.422312> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385692, 0.033623, 0.922015,
		-0.364853, -0.923436, -0.118949,
		0.847422, -0.382277, 0.368429,
		38.484901, 42.387108, 18.532841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.656345, 42.002525, 18.786449>,  <37.891705, 42.654701, 18.274940>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.656345, 42.002525, 18.786449> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.038944, 42.076725, 18.876516>,  <38.268505, 42.121246, 18.930557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.038944, 42.076725, 18.876516>,  <37.656345, 42.002525, 18.786449>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.038944, 42.076725, 18.876516> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231818, 0.014691, 0.972648,
		0.177118, -0.982534, 0.057054,
		0.956499, 0.185500, 0.225167,
		38.325893, 42.132374, 18.944067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.795616, 41.490822, 19.300097>,  <37.656345, 42.002525, 18.786449>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.795616, 41.490822, 19.300097> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.059597, 41.786327, 19.354786>,  <38.217987, 41.963631, 19.387600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.059597, 41.786327, 19.354786>,  <37.795616, 41.490822, 19.300097>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.059597, 41.786327, 19.354786> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228687, 0.024181, 0.973200,
		0.715656, -0.673534, 0.184903,
		0.659954, 0.738761, 0.136723,
		38.257584, 42.007957, 19.395803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.155445, 41.315166, 19.916571>,  <37.795616, 41.490822, 19.300097>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.155445, 41.315166, 19.916571> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.197441, 41.711521, 19.882833>,  <38.222641, 41.949333, 19.862591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.197441, 41.711521, 19.882833>,  <38.155445, 41.315166, 19.916571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.197441, 41.711521, 19.882833> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134321, 0.098164, 0.986064,
		0.985360, -0.092201, 0.143404,
		0.104993, 0.990890, -0.084342,
		38.228939, 42.008789, 19.857531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.633877, 41.568863, 20.454575>,  <38.155445, 41.315166, 19.916571>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.633877, 41.568863, 20.454575> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.446075, 41.907280, 20.353559>,  <38.333393, 42.110329, 20.292950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.446075, 41.907280, 20.353559>,  <38.633877, 41.568863, 20.454575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.446075, 41.907280, 20.353559> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039111, 0.265814, 0.963231,
		0.882064, 0.462118, -0.091711,
		-0.469504, 0.846044, -0.252539,
		38.305225, 42.161095, 20.277798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.820278, 41.914108, 20.965153>,  <38.633877, 41.568863, 20.454575>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.820278, 41.914108, 20.965153> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.509197, 42.110203, 20.807749>,  <38.322548, 42.227859, 20.713306>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.509197, 42.110203, 20.807749>,  <38.820278, 41.914108, 20.965153>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.509197, 42.110203, 20.807749> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248656, 0.335026, 0.908806,
		0.577366, 0.804627, -0.138649,
		-0.777701, 0.490238, -0.393508,
		38.275887, 42.257275, 20.689697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.646893, 42.389717, 21.426661>,  <38.820278, 41.914108, 20.965153>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.646893, 42.389717, 21.426661> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.297951, 42.420464, 21.233547>,  <38.088585, 42.438911, 21.117680>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.297951, 42.420464, 21.233547>,  <38.646893, 42.389717, 21.426661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.297951, 42.420464, 21.233547> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481450, 0.036277, 0.875723,
		0.084826, 0.996381, 0.005360,
		-0.872359, 0.076865, -0.482785,
		38.036243, 42.443523, 21.088711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.189453, 42.915985, 21.822622>,  <38.646893, 42.389717, 21.426661>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.189453, 42.915985, 21.822622> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.935410, 42.682381, 21.620405>,  <37.782986, 42.542217, 21.499075>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.935410, 42.682381, 21.620405>,  <38.189453, 42.915985, 21.822622>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.935410, 42.682381, 21.620405> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581802, -0.068820, 0.810413,
		-0.508081, 0.808824, -0.296070,
		-0.635106, -0.584010, -0.505542,
		37.744877, 42.507179, 21.468742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.504135, 43.209293, 21.943169>,  <38.189453, 42.915985, 21.822622>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.504135, 43.209293, 21.943169> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.447330, 42.823788, 21.852839>,  <37.413246, 42.592484, 21.798639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.447330, 42.823788, 21.852839>,  <37.504135, 43.209293, 21.943169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.447330, 42.823788, 21.852839> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672782, -0.073370, 0.736194,
		-0.726084, 0.256480, -0.637981,
		-0.142010, -0.963761, -0.225828,
		37.404728, 42.534660, 21.785089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.788891, 43.110535, 21.955652>,  <37.504135, 43.209293, 21.943169>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.788891, 43.110535, 21.955652> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.903763, 42.727577, 21.967867>,  <36.972687, 42.497803, 21.975197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.903763, 42.727577, 21.967867>,  <36.788891, 43.110535, 21.955652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.903763, 42.727577, 21.967867> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772274, -0.212553, 0.598677,
		-0.566677, -0.195509, -0.800408,
		0.287176, -0.957391, 0.030537,
		36.989914, 42.440361, 21.977028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.123585, 42.725697, 21.952209>,  <36.788891, 43.110535, 21.955652>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.123585, 42.725697, 21.952209> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.397797, 42.466019, 22.084023>,  <36.562325, 42.310211, 22.163111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.397797, 42.466019, 22.084023>,  <36.123585, 42.725697, 21.952209>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.397797, 42.466019, 22.084023> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623253, -0.289358, 0.726518,
		-0.376298, -0.703434, -0.602976,
		0.685534, -0.649194, 0.329533,
		36.603458, 42.271259, 22.182882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.731884, 42.155212, 22.006498>,  <36.123585, 42.725697, 21.952209>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.731884, 42.155212, 22.006498> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.059441, 42.116364, 22.232767>,  <36.255974, 42.093056, 22.368528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.059441, 42.116364, 22.232767>,  <35.731884, 42.155212, 22.006498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.059441, 42.116364, 22.232767> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564288, 0.043819, 0.824414,
		-0.104858, -0.994307, -0.018923,
		0.818891, -0.097124, 0.565671,
		36.305107, 42.087227, 22.402468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.009651, 41.895901, 22.130028>,  <35.731884, 42.155212, 22.006498>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.009651, 41.895901, 22.130028> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.787144, 42.226074, 22.091623>,  <34.653641, 42.424179, 22.068581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.787144, 42.226074, 22.091623>,  <35.009651, 41.895901, 22.130028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.787144, 42.226074, 22.091623> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338689, 0.119693, -0.933254,
		-0.758852, -0.551657, -0.346148,
		-0.556268, 0.825438, -0.096011,
		34.620262, 42.473705, 22.062820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.652561, 41.800480, 21.570160>,  <35.009651, 41.895901, 22.130028>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.652561, 41.800480, 21.570160> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.642929, 42.196095, 21.628447>,  <34.637150, 42.433464, 21.663418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.642929, 42.196095, 21.628447>,  <34.652561, 41.800480, 21.570160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.642929, 42.196095, 21.628447> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255670, 0.147004, -0.955522,
		-0.966464, 0.014245, -0.256407,
		-0.024082, 0.989033, 0.145716,
		34.635704, 42.492805, 21.672161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.228176, 41.992126, 21.048498>,  <34.652561, 41.800480, 21.570160>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.228176, 41.992126, 21.048498> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.439972, 42.310768, 21.165163>,  <34.567051, 42.501953, 21.235163>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.439972, 42.310768, 21.165163>,  <34.228176, 41.992126, 21.048498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.439972, 42.310768, 21.165163> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215537, 0.206203, -0.954476,
		-0.820478, 0.568250, -0.062514,
		0.529490, 0.796600, 0.291664,
		34.598820, 42.549747, 21.252663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.960663, 42.445671, 20.608335>,  <34.228176, 41.992126, 21.048498>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.960663, 42.445671, 20.608335> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.308426, 42.609047, 20.719549>,  <34.517086, 42.707073, 20.786278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.308426, 42.609047, 20.719549>,  <33.960663, 42.445671, 20.608335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.308426, 42.609047, 20.719549> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195751, 0.231934, -0.952832,
		-0.453659, 0.882828, 0.121694,
		0.869411, 0.408439, 0.278034,
		34.569248, 42.731579, 20.802959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.069572, 42.909370, 20.149672>,  <33.960663, 42.445671, 20.608335>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.069572, 42.909370, 20.149672> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.442848, 42.860588, 20.284891>,  <34.666813, 42.831318, 20.366022>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.442848, 42.860588, 20.284891>,  <34.069572, 42.909370, 20.149672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.442848, 42.860588, 20.284891> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348150, 0.073543, -0.934550,
		0.089114, 0.989807, 0.111089,
		0.933194, -0.121957, 0.338047,
		34.722805, 42.824001, 20.386305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.488392, 43.362309, 19.728502>,  <34.069572, 42.909370, 20.149672>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.488392, 43.362309, 19.728502> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.752552, 43.103184, 19.880400>,  <34.911049, 42.947708, 19.971539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.752552, 43.103184, 19.880400>,  <34.488392, 43.362309, 19.728502>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.752552, 43.103184, 19.880400> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425176, -0.094243, -0.900191,
		0.618944, 0.755947, 0.213196,
		0.660404, -0.647814, 0.379742,
		34.950672, 42.908840, 19.994322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.081379, 43.466480, 19.275339>,  <34.488392, 43.362309, 19.728502>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.081379, 43.466480, 19.275339> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.180710, 43.121765, 19.452272>,  <35.240307, 42.914936, 19.558432>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.180710, 43.121765, 19.452272>,  <35.081379, 43.466480, 19.275339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.180710, 43.121765, 19.452272> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478209, -0.288048, -0.829665,
		0.842406, 0.417558, 0.340583,
		0.248329, -0.861785, 0.442334,
		35.255207, 42.863228, 19.584972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.889141, 43.269539, 19.093519>,  <35.081379, 43.466480, 19.275339>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.889141, 43.269539, 19.093519> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.685764, 42.932961, 19.166687>,  <35.563740, 42.731014, 19.210587>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.685764, 42.932961, 19.166687>,  <35.889141, 43.269539, 19.093519>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.685764, 42.932961, 19.166687> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382008, -0.410787, -0.827843,
		0.771725, -0.351032, 0.530299,
		-0.508439, -0.841446, 0.182918,
		35.533234, 42.680527, 19.221561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.412880, 42.764183, 19.063940>,  <35.889141, 43.269539, 19.093519>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.412880, 42.764183, 19.063940> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.062908, 42.577774, 19.011305>,  <35.852924, 42.465927, 18.979723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.062908, 42.577774, 19.011305>,  <36.412880, 42.764183, 19.063940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.062908, 42.577774, 19.011305> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397239, -0.535314, -0.745413,
		0.276938, -0.704459, 0.653485,
		-0.874932, -0.466023, -0.131590,
		35.800430, 42.437965, 18.971828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.596306, 42.176056, 18.807699>,  <36.412880, 42.764183, 19.063940>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.596306, 42.176056, 18.807699> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.206039, 42.215229, 18.729221>,  <35.971882, 42.238731, 18.682135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.206039, 42.215229, 18.729221>,  <36.596306, 42.176056, 18.807699>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.206039, 42.215229, 18.729221> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136231, -0.430396, -0.892301,
		-0.171823, -0.897312, 0.406580,
		-0.975663, 0.097929, -0.196194,
		35.913342, 42.244606, 18.670362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.385269, 41.448734, 18.627855>,  <36.596306, 42.176056, 18.807699>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.385269, 41.448734, 18.627855> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.130257, 41.716156, 18.474705>,  <35.977249, 41.876610, 18.382814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.130257, 41.716156, 18.474705>,  <36.385269, 41.448734, 18.627855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.130257, 41.716156, 18.474705> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138638, -0.389300, -0.910618,
		-0.757849, -0.633628, 0.155504,
		-0.637531, 0.668551, -0.382875,
		35.938999, 41.916721, 18.359842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.934475, 41.091499, 18.181503>,  <36.385269, 41.448734, 18.627855>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.934475, 41.091499, 18.181503> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.921989, 41.470833, 18.055210>,  <35.914497, 41.698433, 17.979435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.921989, 41.470833, 18.055210>,  <35.934475, 41.091499, 18.181503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.921989, 41.470833, 18.055210> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010715, -0.316185, -0.948637,
		-0.999455, -0.026228, 0.020032,
		-0.031215, 0.948335, -0.315732,
		35.912624, 41.755333, 17.960491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.864544, 40.955013, 18.864786>,  <35.934475, 41.091499, 18.181503>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.864544, 40.955013, 18.864786> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.485703, 41.008263, 18.747976>,  <35.258400, 41.040215, 18.677891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.485703, 41.008263, 18.747976>,  <35.864544, 40.955013, 18.864786>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.485703, 41.008263, 18.747976> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156402, -0.986004, 0.057747,
		-0.280247, 0.100365, 0.954667,
		-0.947101, 0.133128, -0.292022,
		35.201572, 41.048203, 18.660370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.371830, 40.696907, 19.352062>,  <35.864544, 40.955013, 18.864786>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.371830, 40.696907, 19.352062> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.259953, 40.706867, 18.968155>,  <35.192825, 40.712845, 18.737810>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.259953, 40.706867, 18.968155>,  <35.371830, 40.696907, 19.352062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.259953, 40.706867, 18.968155> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209397, -0.977180, 0.035669,
		-0.936977, 0.210949, 0.278523,
		-0.279692, 0.024900, -0.959767,
		35.176044, 40.714336, 18.680225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.589024, 40.707355, 19.207285>,  <35.371830, 40.696907, 19.352062>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.589024, 40.707355, 19.207285> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.740753, 40.552288, 18.871231>,  <34.831791, 40.459248, 18.669600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.740753, 40.552288, 18.871231>,  <34.589024, 40.707355, 19.207285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.740753, 40.552288, 18.871231> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530728, -0.834935, 0.145645,
		-0.757920, 0.390636, -0.522457,
		0.379323, -0.387669, -0.840135,
		34.854549, 40.435986, 18.619190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.003407, 40.279858, 18.718452>,  <34.589024, 40.707355, 19.207285>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.003407, 40.279858, 18.718452> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.377258, 40.143841, 18.676826>,  <34.601570, 40.062229, 18.651852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.377258, 40.143841, 18.676826>,  <34.003407, 40.279858, 18.718452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.377258, 40.143841, 18.676826> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326646, -0.936604, 0.126787,
		-0.140581, -0.084507, -0.986456,
		0.934633, -0.340046, -0.104065,
		34.657650, 40.041828, 18.645607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.877953, 39.867802, 18.231535>,  <34.003407, 40.279858, 18.718452>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.877953, 39.867802, 18.231535> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.219173, 39.769646, 18.415745>,  <34.423904, 39.710751, 18.526272>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.219173, 39.769646, 18.415745>,  <33.877953, 39.867802, 18.231535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.219173, 39.769646, 18.415745> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261976, -0.964646, -0.028748,
		0.451300, -0.096124, -0.887180,
		0.853051, -0.245394, 0.460527,
		34.475090, 39.696026, 18.553904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.037533, 39.140965, 17.896477>,  <33.877953, 39.867802, 18.231535>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.037533, 39.140965, 17.896477> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.265167, 39.165592, 18.224464>,  <34.401749, 39.180367, 18.421257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.265167, 39.165592, 18.224464>,  <34.037533, 39.140965, 17.896477>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.265167, 39.165592, 18.224464> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097364, -0.985133, 0.141541,
		0.816490, -0.160385, -0.554635,
		0.569090, 0.061565, 0.819967,
		34.435894, 39.184063, 18.470455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.453911, 38.477894, 18.003695>,  <34.037533, 39.140965, 17.896477>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.453911, 38.477894, 18.003695> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.481056, 38.615711, 18.378220>,  <34.497345, 38.698402, 18.602934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.481056, 38.615711, 18.378220>,  <34.453911, 38.477894, 18.003695>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.481056, 38.615711, 18.378220> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148761, -0.924491, 0.350980,
		0.986541, -0.163107, -0.011488,
		0.067868, 0.344547, 0.936312,
		34.501415, 38.719074, 18.659113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.682228, 37.915291, 18.412094>,  <34.453911, 38.477894, 18.003695>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.682228, 37.915291, 18.412094> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.527164, 38.158638, 18.689110>,  <34.434124, 38.304646, 18.855320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.527164, 38.158638, 18.689110>,  <34.682228, 37.915291, 18.412094>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.527164, 38.158638, 18.689110> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249840, -0.792511, 0.556332,
		0.887298, 0.042645, 0.459221,
		-0.387662, 0.608364, 0.692539,
		34.410866, 38.341148, 18.896872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.917656, 37.633926, 19.075815>,  <34.682228, 37.915291, 18.412094>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.917656, 37.633926, 19.075815> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.589432, 37.852802, 19.141857>,  <34.392498, 37.984127, 19.181482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.589432, 37.852802, 19.141857>,  <34.917656, 37.633926, 19.075815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.589432, 37.852802, 19.141857> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335707, -0.695204, 0.635604,
		0.462578, 0.466125, 0.754154,
		-0.820562, 0.547191, 0.165105,
		34.343262, 38.016960, 19.191389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.506844, 37.423439, 19.440315>,  <34.917656, 37.633926, 19.075815>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.506844, 37.423439, 19.440315> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.714474, 37.086948, 19.379782>,  <35.839050, 36.885056, 19.343462>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.714474, 37.086948, 19.379782>,  <35.506844, 37.423439, 19.440315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.714474, 37.086948, 19.379782> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369487, 0.380501, -0.847761,
		0.770740, 0.384136, 0.508330,
		0.519076, -0.841224, -0.151334,
		35.870197, 36.834579, 19.334381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.183353, 37.599422, 19.420744>,  <35.506844, 37.423439, 19.440315>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.183353, 37.599422, 19.420744> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.123383, 37.270290, 19.201481>,  <36.087399, 37.072811, 19.069923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.123383, 37.270290, 19.201481>,  <36.183353, 37.599422, 19.420744>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.123383, 37.270290, 19.201481> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509871, 0.410666, -0.755900,
		0.847085, -0.392820, 0.357965,
		-0.149929, -0.822828, -0.548156,
		36.078403, 37.023441, 19.037033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.654388, 37.788124, 18.859335>,  <36.183353, 37.599422, 19.420744>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.654388, 37.788124, 18.859335> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.498276, 37.435890, 18.751822>,  <36.404610, 37.224548, 18.687313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.498276, 37.435890, 18.751822>,  <36.654388, 37.788124, 18.859335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.498276, 37.435890, 18.751822> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392490, 0.104952, -0.913749,
		0.832845, -0.462115, 0.304661,
		-0.390282, -0.880588, -0.268784,
		36.381191, 37.171715, 18.671186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.221909, 37.428265, 18.595119>,  <36.654388, 37.788124, 18.859335>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.221909, 37.428265, 18.595119> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.884537, 37.277191, 18.442287>,  <36.682114, 37.186546, 18.350588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.884537, 37.277191, 18.442287>,  <37.221909, 37.428265, 18.595119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.884537, 37.277191, 18.442287> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427334, -0.040613, -0.903181,
		0.325599, -0.925044, 0.195650,
		-0.843429, -0.377683, -0.382079,
		36.631508, 37.163887, 18.327663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.473221, 36.886478, 18.273188>,  <37.221909, 37.428265, 18.595119>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.473221, 36.886478, 18.273188> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.112934, 36.970795, 18.121254>,  <36.896763, 37.021385, 18.030094>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.112934, 36.970795, 18.121254>,  <37.473221, 36.886478, 18.273188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.112934, 36.970795, 18.121254> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396072, 0.039380, -0.917375,
		-0.178414, -0.976738, -0.118958,
		-0.900719, 0.210788, -0.379832,
		36.842720, 37.034031, 18.007305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.496380, 36.572697, 17.562618>,  <37.473221, 36.886478, 18.273188>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.496380, 36.572697, 17.562618> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.210350, 36.852314, 17.562002>,  <37.038731, 37.020084, 17.561632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.210350, 36.852314, 17.562002>,  <37.496380, 36.572697, 17.562618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.210350, 36.852314, 17.562002> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232976, 0.236241, -0.943352,
		-0.659085, -0.674924, -0.331791,
		-0.715073, 0.699048, -0.001538,
		36.995827, 37.062027, 17.561541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.204895, 36.509319, 16.878365>,  <37.496380, 36.572697, 17.562618>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.204895, 36.509319, 16.878365> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.111916, 36.879543, 16.997906>,  <37.056129, 37.101677, 17.069630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.111916, 36.879543, 16.997906>,  <37.204895, 36.509319, 16.878365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.111916, 36.879543, 16.997906> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130485, 0.334166, -0.933438,
		-0.963817, -0.177979, -0.198447,
		-0.232447, 0.925557, 0.298852,
		37.042183, 37.157211, 17.087561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.924187, 36.899578, 16.263031>,  <37.204895, 36.509319, 16.878365>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.924187, 36.899578, 16.263031> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.006542, 37.177082, 16.539093>,  <37.055954, 37.343582, 16.704729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.006542, 37.177082, 16.539093>,  <36.924187, 36.899578, 16.263031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.006542, 37.177082, 16.539093> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442923, 0.562821, -0.697891,
		-0.872600, 0.449372, -0.191404,
		0.205886, 0.693756, 0.690154,
		37.068310, 37.385208, 16.746140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.647186, 37.618420, 15.974777>,  <36.924187, 36.899578, 16.263031>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.647186, 37.618420, 15.974777> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.938171, 37.683212, 16.241480>,  <37.112762, 37.722088, 16.401501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.938171, 37.683212, 16.241480>,  <36.647186, 37.618420, 15.974777>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.938171, 37.683212, 16.241480> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578253, 0.378363, -0.722817,
		-0.369360, 0.911374, 0.181577,
		0.727459, 0.161982, 0.666757,
		37.156410, 37.731808, 16.441507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<34.145702, 34.058308, 31.856668> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.523247, 34.164242, 31.777681>,  <34.749771, 34.227802, 31.730289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.523247, 34.164242, 31.777681>,  <34.145702, 34.058308, 31.856668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.523247, 34.164242, 31.777681> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209507, 0.017721, -0.977647,
		-0.255419, 0.964130, 0.072212,
		0.943858, 0.264839, -0.197466,
		34.806404, 34.243694, 31.718441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.096745, 34.743359, 31.520700>,  <34.145702, 34.058308, 31.856668>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.096745, 34.743359, 31.520700> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.427502, 34.535686, 31.434254>,  <34.625957, 34.411083, 31.382385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.427502, 34.535686, 31.434254>,  <34.096745, 34.743359, 31.520700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.427502, 34.535686, 31.434254> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260336, -0.012755, -0.965434,
		0.498473, 0.854572, -0.145707,
		0.826892, -0.519176, -0.216118,
		34.675568, 34.379932, 31.369419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.299545, 35.053097, 30.880371>,  <34.096745, 34.743359, 31.520700>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.299545, 35.053097, 30.880371> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.492188, 34.703468, 30.905844>,  <34.607773, 34.493690, 30.921127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.492188, 34.703468, 30.905844>,  <34.299545, 35.053097, 30.880371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.492188, 34.703468, 30.905844> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011855, -0.079155, -0.996792,
		0.876310, 0.479301, -0.048483,
		0.481601, -0.874074, 0.063682,
		34.636669, 34.441246, 30.924948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.811481, 35.105087, 30.288488>,  <34.299545, 35.053097, 30.880371>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.811481, 35.105087, 30.288488> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.768322, 34.712841, 30.353920>,  <34.742424, 34.477493, 30.393179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.768322, 34.712841, 30.353920>,  <34.811481, 35.105087, 30.288488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.768322, 34.712841, 30.353920> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052418, -0.158697, -0.985935,
		0.992779, -0.114959, -0.034278,
		-0.107902, -0.980612, 0.163577,
		34.735950, 34.418659, 30.402992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.303116, 34.796547, 29.858259>,  <34.811481, 35.105087, 30.288488>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.303116, 34.796547, 29.858259> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.035717, 34.509922, 29.937912>,  <34.875278, 34.337948, 29.985704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.035717, 34.509922, 29.937912>,  <35.303116, 34.796547, 29.858259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.035717, 34.509922, 29.937912> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088083, -0.189585, -0.977905,
		0.738484, -0.671263, 0.063619,
		-0.668492, -0.716564, 0.199133,
		34.835171, 34.294952, 29.997652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.548809, 34.166325, 29.516699>,  <35.303116, 34.796547, 29.858259>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.548809, 34.166325, 29.516699> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.156525, 34.115299, 29.575933>,  <34.921154, 34.084686, 29.611475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.156525, 34.115299, 29.575933>,  <35.548809, 34.166325, 29.516699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.156525, 34.115299, 29.575933> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081061, -0.423986, -0.902034,
		0.177850, -0.896641, 0.405469,
		-0.980713, -0.127559, 0.148088,
		34.862312, 34.077030, 29.620359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.390717, 33.442680, 29.289267>,  <35.548809, 34.166325, 29.516699>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.390717, 33.442680, 29.289267> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.037388, 33.628937, 29.267651>,  <34.825390, 33.740692, 29.254681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.037388, 33.628937, 29.267651>,  <35.390717, 33.442680, 29.289267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.037388, 33.628937, 29.267651> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156183, -0.401036, -0.902650,
		-0.441990, -0.788887, 0.426969,
		-0.883319, 0.465648, -0.054043,
		34.772392, 33.768631, 29.251438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.855507, 32.821720, 28.978395>,  <35.390717, 33.442680, 29.289267>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.855507, 32.821720, 28.978395> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.680347, 33.180958, 28.962038>,  <34.575253, 33.396500, 28.952225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.680347, 33.180958, 28.962038>,  <34.855507, 32.821720, 28.978395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.680347, 33.180958, 28.962038> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190681, -0.137230, -0.972013,
		-0.878572, -0.417843, 0.231342,
		-0.437896, 0.898095, -0.040891,
		34.548977, 33.450386, 28.949770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.160072, 32.757267, 28.651777>,  <34.855507, 32.821720, 28.978395>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.160072, 32.757267, 28.651777> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.286419, 33.130527, 28.583124>,  <34.362228, 33.354485, 28.541933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.286419, 33.130527, 28.583124>,  <34.160072, 32.757267, 28.651777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.286419, 33.130527, 28.583124> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312930, -0.068312, -0.947316,
		-0.895714, 0.352933, 0.270434,
		0.315866, 0.933151, -0.171631,
		34.381180, 33.410473, 28.531635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.741371, 32.922443, 28.147518>,  <34.160072, 32.757267, 28.651777>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.741371, 32.922443, 28.147518> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.010300, 33.213398, 28.092533>,  <34.171658, 33.387970, 28.059542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.010300, 33.213398, 28.092533>,  <33.741371, 32.922443, 28.147518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.010300, 33.213398, 28.092533> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215135, 0.014310, -0.976479,
		-0.708308, 0.686082, 0.166107,
		0.672322, 0.727384, -0.137464,
		34.211998, 33.431614, 28.051294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.430683, 33.333076, 27.649881>,  <33.741371, 32.922443, 28.147518>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.430683, 33.333076, 27.649881> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.816467, 33.438763, 27.649385>,  <34.047939, 33.502174, 27.649088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.816467, 33.438763, 27.649385>,  <33.430683, 33.333076, 27.649881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.816467, 33.438763, 27.649385> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062481, 0.223512, -0.972697,
		-0.256723, 0.938208, 0.232077,
		0.964463, 0.264214, -0.001240,
		34.105804, 33.518028, 27.649014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.372547, 33.894234, 27.313023>,  <33.430683, 33.333076, 27.649881>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.372547, 33.894234, 27.313023> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.734035, 33.725021, 27.286686>,  <33.950928, 33.623493, 27.270884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.734035, 33.725021, 27.286686>,  <33.372547, 33.894234, 27.313023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.734035, 33.725021, 27.286686> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030462, 0.089868, -0.995488,
		0.427039, 0.901648, 0.068329,
		0.903720, -0.423031, -0.065844,
		34.005150, 33.598114, 27.266933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.123138, 34.655415, 27.043188>,  <33.372547, 33.894234, 27.313023>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.123138, 34.655415, 27.043188> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.816933, 34.876953, 26.912203>,  <32.633209, 35.009876, 26.833611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.816933, 34.876953, 26.912203>,  <33.123138, 34.655415, 27.043188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.816933, 34.876953, 26.912203> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445817, -0.089613, 0.890627,
		0.463929, 0.827780, 0.315516,
		-0.765518, 0.553850, -0.327464,
		32.587276, 35.043110, 26.813963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.197384, 35.159340, 27.439884>,  <33.123138, 34.655415, 27.043188>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.197384, 35.159340, 27.439884> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.814575, 35.183891, 27.326506>,  <32.584888, 35.198620, 27.258478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.814575, 35.183891, 27.326506>,  <33.197384, 35.159340, 27.439884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.814575, 35.183891, 27.326506> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283707, 0.004624, 0.958900,
		0.060165, 0.998104, 0.012988,
		-0.957022, 0.061377, -0.283447,
		32.527470, 35.202305, 27.241472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.843441, 35.635441, 27.856770>,  <33.197384, 35.159340, 27.439884>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.843441, 35.635441, 27.856770> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.529984, 35.430794, 27.715836>,  <32.341908, 35.308006, 27.631275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.529984, 35.430794, 27.715836>,  <32.843441, 35.635441, 27.856770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.529984, 35.430794, 27.715836> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519915, 0.229758, 0.822739,
		-0.339979, 0.827921, -0.446050,
		-0.783647, -0.511622, -0.352336,
		32.294891, 35.277306, 27.610134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.305943, 36.108505, 27.714338>,  <32.843441, 35.635441, 27.856770>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.305943, 36.108505, 27.714338> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.146816, 35.745415, 27.767681>,  <32.051342, 35.527561, 27.799686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.146816, 35.745415, 27.767681>,  <32.305943, 36.108505, 27.714338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.146816, 35.745415, 27.767681> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572253, 0.359108, 0.737271,
		-0.717126, 0.216984, -0.662305,
		-0.397815, -0.907722, 0.133356,
		32.027473, 35.473099, 27.807688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.766603, 36.290569, 28.020906>,  <32.305943, 36.108505, 27.714338>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.766603, 36.290569, 28.020906> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.755814, 35.892014, 28.053104>,  <31.749340, 35.652882, 28.072422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.755814, 35.892014, 28.053104>,  <31.766603, 36.290569, 28.020906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.755814, 35.892014, 28.053104> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642093, 0.078984, 0.762547,
		-0.766152, -0.031115, -0.641906,
		-0.026973, -0.996390, 0.080493,
		31.747721, 35.593098, 28.077251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.093899, 36.199730, 28.010710>,  <31.766603, 36.290569, 28.020906>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.093899, 36.199730, 28.010710> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.269241, 35.895798, 28.202749>,  <31.374447, 35.713436, 28.317972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.269241, 35.895798, 28.202749>,  <31.093899, 36.199730, 28.010710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.269241, 35.895798, 28.202749> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657637, 0.092956, 0.747578,
		-0.612663, -0.643437, -0.458947,
		0.438357, -0.759835, 0.480098,
		31.400749, 35.667847, 28.346779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.626135, 35.858311, 28.226923>,  <31.093899, 36.199730, 28.010710>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.626135, 35.858311, 28.226923> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.928360, 35.748508, 28.464838>,  <31.109695, 35.682629, 28.607588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.928360, 35.748508, 28.464838>,  <30.626135, 35.858311, 28.226923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.928360, 35.748508, 28.464838> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473927, 0.397766, 0.785605,
		-0.452236, -0.875461, 0.170443,
		0.755563, -0.274501, 0.594788,
		31.155029, 35.666157, 28.643274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.252069, 35.676903, 28.910057>,  <30.626135, 35.858311, 28.226923>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.252069, 35.676903, 28.910057> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.637625, 35.708427, 29.011808>,  <30.868958, 35.727341, 29.072859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.637625, 35.708427, 29.011808>,  <30.252069, 35.676903, 28.910057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.637625, 35.708427, 29.011808> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263221, 0.426956, 0.865115,
		-0.040432, -0.900832, 0.432282,
		0.963888, 0.078808, 0.254380,
		30.926790, 35.732071, 29.088121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.409681, 35.284824, 29.601215>,  <30.252069, 35.676903, 28.910057>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.409681, 35.284824, 29.601215> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.682606, 35.571850, 29.545279>,  <30.846361, 35.744064, 29.511717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.682606, 35.571850, 29.545279>,  <30.409681, 35.284824, 29.601215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.682606, 35.571850, 29.545279> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285589, 0.437707, 0.852556,
		0.672972, -0.541771, 0.503580,
		0.682311, 0.717563, -0.139841,
		30.887299, 35.787117, 29.503326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.696222, 35.265709, 30.234045>,  <30.409681, 35.284824, 29.601215>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.696222, 35.265709, 30.234045> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.791714, 35.619656, 30.074039>,  <30.849009, 35.832024, 29.978037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.791714, 35.619656, 30.074039>,  <30.696222, 35.265709, 30.234045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.791714, 35.619656, 30.074039> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237438, 0.452610, 0.859516,
		0.941611, -0.110212, 0.318153,
		0.238728, 0.884871, -0.400014,
		30.863333, 35.885117, 29.954035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.874720, 35.604958, 30.777777>,  <30.696222, 35.265709, 30.234045>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.874720, 35.604958, 30.777777> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.815989, 35.897274, 30.511126>,  <30.780750, 36.072662, 30.351135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.815989, 35.897274, 30.511126>,  <30.874720, 35.604958, 30.777777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.815989, 35.897274, 30.511126> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382446, 0.579581, 0.719598,
		0.912237, 0.360605, 0.194388,
		-0.146827, 0.730787, -0.666627,
		30.771940, 36.116508, 30.311138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.197721, 36.191284, 31.079594>,  <30.874720, 35.604958, 30.777777>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.197721, 36.191284, 31.079594> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.915081, 36.318718, 30.826859>,  <30.745497, 36.395176, 30.675217>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.915081, 36.318718, 30.826859>,  <31.197721, 36.191284, 31.079594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.915081, 36.318718, 30.826859> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511463, 0.387112, 0.767170,
		0.488998, 0.865246, -0.110592,
		-0.706602, 0.318581, -0.631839,
		30.703100, 36.414291, 30.637306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.986008, 36.796768, 31.350117>,  <31.197721, 36.191284, 31.079594>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.986008, 36.796768, 31.350117> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.676840, 36.730335, 31.105165>,  <30.491339, 36.690475, 30.958195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.676840, 36.730335, 31.105165>,  <30.986008, 36.796768, 31.350117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.676840, 36.730335, 31.105165> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605215, 0.482806, 0.632940,
		0.190541, 0.859835, -0.473686,
		-0.772922, -0.166081, -0.612380,
		30.444963, 36.680511, 30.921452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.677799, 37.511497, 31.192928>,  <30.986008, 36.796768, 31.350117>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.677799, 37.511497, 31.192928> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.424530, 37.204304, 31.154385>,  <30.272568, 37.019985, 31.131258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.424530, 37.204304, 31.154385>,  <30.677799, 37.511497, 31.192928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.424530, 37.204304, 31.154385> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536993, 0.346205, 0.769273,
		-0.557432, 0.538829, -0.631612,
		-0.633173, -0.767989, -0.096361,
		30.234577, 36.973907, 31.125477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.025433, 37.709347, 31.160387>,  <30.677799, 37.511497, 31.192928>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.025433, 37.709347, 31.160387> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.976582, 37.337463, 31.299368>,  <29.947271, 37.114334, 31.382755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.976582, 37.337463, 31.299368>,  <30.025433, 37.709347, 31.160387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.976582, 37.337463, 31.299368> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620817, 0.344690, 0.704113,
		-0.774384, -0.129711, -0.619277,
		-0.122127, -0.929711, 0.347450,
		29.939943, 37.058552, 31.403603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.114246, 37.597210, 30.486923>,  <30.025433, 37.709347, 31.160387>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.114246, 37.597210, 30.486923> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.511129, 37.631145, 30.523424>,  <30.749260, 37.651508, 30.545324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.511129, 37.631145, 30.523424>,  <30.114246, 37.597210, 30.486923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.511129, 37.631145, 30.523424> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007573, 0.689959, -0.723809,
		-0.124369, 0.718859, 0.683940,
		0.992207, 0.084840, 0.091253,
		30.808792, 37.656597, 30.550800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.314104, 38.300812, 30.627394>,  <30.114246, 37.597210, 30.486923>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.314104, 38.300812, 30.627394> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.646904, 38.127506, 30.488796>,  <30.846584, 38.023525, 30.405638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.646904, 38.127506, 30.488796>,  <30.314104, 38.300812, 30.627394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.646904, 38.127506, 30.488796> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113102, 0.743920, -0.658628,
		0.543122, 0.508791, 0.667945,
		0.832001, -0.433261, -0.346494,
		30.896505, 37.997528, 30.384848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.809052, 38.887039, 30.616764>,  <30.314104, 38.300812, 30.627394>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.809052, 38.887039, 30.616764> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.925234, 38.604729, 30.358305>,  <30.994944, 38.435341, 30.203230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.925234, 38.604729, 30.358305>,  <30.809052, 38.887039, 30.616764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.925234, 38.604729, 30.358305> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268357, 0.708244, -0.652974,
		0.918488, 0.016262, 0.395115,
		0.290457, -0.705780, -0.646149,
		31.012371, 38.392994, 30.164459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.472567, 39.204445, 30.363367>,  <30.809052, 38.887039, 30.616764>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.472567, 39.204445, 30.363367> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.368414, 38.917599, 30.104771>,  <31.305922, 38.745491, 29.949614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.368414, 38.917599, 30.104771>,  <31.472567, 39.204445, 30.363367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.368414, 38.917599, 30.104771> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222914, 0.606847, -0.762920,
		0.939420, -0.342762, 0.001842,
		-0.260382, -0.717113, -0.646491,
		31.290298, 38.702465, 29.910824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.975525, 39.176941, 29.952061>,  <31.472567, 39.204445, 30.363367>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.975525, 39.176941, 29.952061> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.685928, 38.979507, 29.759304>,  <31.512171, 38.861050, 29.643650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.685928, 38.979507, 29.759304>,  <31.975525, 39.176941, 29.952061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.685928, 38.979507, 29.759304> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299267, 0.404673, -0.864106,
		0.621514, -0.769817, -0.145267,
		-0.723989, -0.493580, -0.481891,
		31.468731, 38.831432, 29.614737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.265461, 39.102650, 29.300573>,  <31.975525, 39.176941, 29.952061>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.265461, 39.102650, 29.300573> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.879742, 39.038231, 29.216486>,  <31.648310, 38.999580, 29.166033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.879742, 39.038231, 29.216486>,  <32.265461, 39.102650, 29.300573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.879742, 39.038231, 29.216486> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114303, 0.462956, -0.878980,
		0.238877, -0.871629, -0.428021,
		-0.964299, -0.161044, -0.210219,
		31.590452, 38.989918, 29.153419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.281796, 38.808640, 28.680996>,  <32.265461, 39.102650, 29.300573>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.281796, 38.808640, 28.680996> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.915022, 38.961647, 28.726440>,  <31.694958, 39.053452, 28.753706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.915022, 38.961647, 28.726440>,  <32.281796, 38.808640, 28.680996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.915022, 38.961647, 28.726440> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056517, 0.406336, -0.911974,
		-0.395013, -0.829800, -0.394203,
		-0.916935, 0.382521, 0.113610,
		31.639942, 39.076405, 28.760523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.853516, 38.637218, 28.140701>,  <32.281796, 38.808640, 28.680996>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.853516, 38.637218, 28.140701> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.693125, 38.969879, 28.294363>,  <31.596889, 39.169476, 28.386560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.693125, 38.969879, 28.294363>,  <31.853516, 38.637218, 28.140701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.693125, 38.969879, 28.294363> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145362, 0.471793, -0.869644,
		-0.904482, -0.292866, -0.310068,
		-0.400977, 0.831649, 0.384157,
		31.572832, 39.219376, 28.409611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.429998, 38.991829, 27.610775>,  <31.853516, 38.637218, 28.140701>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.429998, 38.991829, 27.610775> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.509480, 39.280251, 27.876286>,  <31.557169, 39.453304, 28.035591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.509480, 39.280251, 27.876286>,  <31.429998, 38.991829, 27.610775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.509480, 39.280251, 27.876286> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106644, 0.657351, -0.746001,
		-0.974240, 0.219021, 0.053723,
		0.198705, 0.721054, 0.663775,
		31.569092, 39.496567, 28.075418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.080595, 39.576942, 27.327368>,  <31.429998, 38.991829, 27.610775>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.080595, 39.576942, 27.327368> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.359335, 39.735825, 27.566240>,  <31.526579, 39.831154, 27.709564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.359335, 39.735825, 27.566240>,  <31.080595, 39.576942, 27.327368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.359335, 39.735825, 27.566240> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108583, 0.764616, -0.635274,
		-0.708948, 0.507536, 0.489694,
		0.696852, 0.397203, 0.597182,
		31.568390, 39.854984, 27.745396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.949841, 40.246181, 27.161890>,  <31.080595, 39.576942, 27.327368>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.949841, 40.246181, 27.161890> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.294226, 40.237370, 27.365168>,  <31.500856, 40.232082, 27.487135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.294226, 40.237370, 27.365168>,  <30.949841, 40.246181, 27.161890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.294226, 40.237370, 27.365168> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360126, 0.731976, -0.578377,
		-0.359243, 0.680974, 0.638137,
		0.860961, -0.022032, 0.508194,
		31.552513, 40.230759, 27.517626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.069336, 40.907505, 27.407591>,  <30.949841, 40.246181, 27.161890>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.069336, 40.907505, 27.407591> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.429449, 40.736866, 27.372942>,  <31.645517, 40.634483, 27.352152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.429449, 40.736866, 27.372942>,  <31.069336, 40.907505, 27.407591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.429449, 40.736866, 27.372942> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307135, 0.763525, -0.568065,
		0.308472, 0.484816, 0.818413,
		0.900285, -0.426595, -0.086622,
		31.699535, 40.608887, 27.346956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.590271, 41.465042, 27.455362>,  <31.069336, 40.907505, 27.407591>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.590271, 41.465042, 27.455362> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.786076, 41.163059, 27.280811>,  <31.903559, 40.981869, 27.176081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.786076, 41.163059, 27.280811>,  <31.590271, 41.465042, 27.455362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.786076, 41.163059, 27.280811> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478473, 0.650916, -0.589382,
		0.729001, 0.079714, 0.679855,
		0.489511, -0.754953, -0.436377,
		31.932928, 40.936573, 27.149899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.303246, 41.684406, 27.310213>,  <31.590271, 41.465042, 27.455362>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.303246, 41.684406, 27.310213> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.269794, 41.356804, 27.083149>,  <32.249725, 41.160244, 26.946911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.269794, 41.356804, 27.083149>,  <32.303246, 41.684406, 27.310213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.269794, 41.356804, 27.083149> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662013, 0.380118, -0.645948,
		0.744812, -0.429815, 0.510405,
		-0.083624, -0.819005, -0.567660,
		32.244709, 41.111103, 26.912851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.980373, 41.677391, 26.913948>,  <32.303246, 41.684406, 27.310213>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.980373, 41.677391, 26.913948> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.731419, 41.433502, 26.717632>,  <32.582047, 41.287170, 26.599844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.731419, 41.433502, 26.717632>,  <32.980373, 41.677391, 26.913948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.731419, 41.433502, 26.717632> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551137, 0.103844, -0.827928,
		0.555770, -0.785785, 0.271408,
		-0.622389, -0.609720, -0.490788,
		32.544701, 41.250587, 26.570396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.382191, 41.208740, 26.525875>,  <32.980373, 41.677391, 26.913948>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.382191, 41.208740, 26.525875> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.015476, 41.211636, 26.366152>,  <32.795448, 41.213371, 26.270317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.015476, 41.211636, 26.366152>,  <33.382191, 41.208740, 26.525875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.015476, 41.211636, 26.366152> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393676, 0.184672, -0.900508,
		0.067225, -0.982774, -0.172153,
		-0.916788, 0.007236, -0.399310,
		32.740440, 41.213806, 26.246359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.369835, 40.733418, 25.869329>,  <33.382191, 41.208740, 26.525875>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.369835, 40.733418, 25.869329> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.085419, 41.010059, 25.818565>,  <32.914768, 41.176044, 25.788107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.085419, 41.010059, 25.818565>,  <33.369835, 40.733418, 25.869329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.085419, 41.010059, 25.818565> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382710, 0.229236, -0.894977,
		-0.589879, -0.684932, -0.427680,
		-0.711038, 0.691606, -0.126909,
		32.872108, 41.217541, 25.780493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.029179, 40.612938, 25.234655>,  <33.369835, 40.733418, 25.869329>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.029179, 40.612938, 25.234655> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.955902, 40.993542, 25.333509>,  <32.911934, 41.221905, 25.392822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.955902, 40.993542, 25.333509>,  <33.029179, 40.612938, 25.234655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.955902, 40.993542, 25.333509> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267712, 0.290174, -0.918765,
		-0.945923, -0.102150, -0.307888,
		-0.183193, 0.951506, 0.247135,
		32.900944, 41.278996, 25.407650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.705353, 40.892067, 24.703428>,  <33.029179, 40.612938, 25.234655>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.705353, 40.892067, 24.703428> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.756886, 41.260872, 24.849470>,  <32.787807, 41.482155, 24.937096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.756886, 41.260872, 24.849470>,  <32.705353, 40.892067, 24.703428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.756886, 41.260872, 24.849470> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224088, 0.331584, -0.916426,
		-0.966016, 0.199882, -0.163892,
		0.128834, 0.922008, 0.365106,
		32.795536, 41.537476, 24.959002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.470848, 41.381474, 24.182394>,  <32.705353, 40.892067, 24.703428>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.470848, 41.381474, 24.182394> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.700962, 41.619358, 24.407026>,  <32.839031, 41.762089, 24.541805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.700962, 41.619358, 24.407026>,  <32.470848, 41.381474, 24.182394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.700962, 41.619358, 24.407026> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354290, 0.437649, -0.826403,
		-0.737243, 0.674378, 0.041074,
		0.575284, 0.594708, 0.561579,
		32.873547, 41.797771, 24.575500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.261707, 42.164894, 24.156370>,  <32.470848, 41.381474, 24.182394>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.261707, 42.164894, 24.156370> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.645771, 42.073456, 24.220676>,  <32.876209, 42.018593, 24.259260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.645771, 42.073456, 24.220676>,  <32.261707, 42.164894, 24.156370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.645771, 42.073456, 24.220676> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258183, 0.505392, -0.823359,
		0.106967, 0.832059, 0.544275,
		0.960156, -0.228595, 0.160764,
		32.933819, 42.004879, 24.268906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.604099, 42.710648, 24.007912>,  <32.261707, 42.164894, 24.156370>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.604099, 42.710648, 24.007912> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.934883, 42.488995, 24.046001>,  <33.133354, 42.356003, 24.068855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.934883, 42.488995, 24.046001>,  <32.604099, 42.710648, 24.007912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.934883, 42.488995, 24.046001> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375592, 0.418408, -0.826962,
		0.418408, 0.719630, 0.554136,
		0.826962, -0.554136, 0.095222,
		33.182972, 42.322754, 24.074568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.146782, 43.235653, 23.813524>,  <32.604099, 42.710648, 24.007912>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.146782, 43.235653, 23.813524> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.319672, 42.875198, 23.800016>,  <33.423405, 42.658928, 23.791912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.319672, 42.875198, 23.800016>,  <33.146782, 43.235653, 23.813524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.319672, 42.875198, 23.800016> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533422, 0.285690, -0.796142,
		0.727076, 0.326102, 0.604167,
		0.432228, -0.901132, -0.033769,
		33.449341, 42.604858, 23.789886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.885712, 43.359104, 23.793047>,  <33.146782, 43.235653, 23.813524>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.885712, 43.359104, 23.793047> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.796635, 43.001266, 23.638069>,  <33.743187, 42.786564, 23.545082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.796635, 43.001266, 23.638069>,  <33.885712, 43.359104, 23.793047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.796635, 43.001266, 23.638069> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449211, 0.258558, -0.855194,
		0.865227, -0.364489, 0.344282,
		-0.222692, -0.894592, -0.387444,
		33.729828, 42.732887, 23.521835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.492283, 43.184326, 23.548782>,  <33.885712, 43.359104, 23.793047>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.492283, 43.184326, 23.548782> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.257015, 42.910641, 23.376310>,  <34.115856, 42.746429, 23.272827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.257015, 42.910641, 23.376310>,  <34.492283, 43.184326, 23.548782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.257015, 42.910641, 23.376310> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560131, 0.039937, -0.827441,
		0.583363, -0.728191, 0.359758,
		-0.588167, -0.684210, -0.431180,
		34.080566, 42.705379, 23.246956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.861603, 42.587261, 23.328854>,  <34.492283, 43.184326, 23.548782>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.861603, 42.587261, 23.328854> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.539902, 42.581398, 23.091209>,  <34.346882, 42.577881, 22.948624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.539902, 42.581398, 23.091209>,  <34.861603, 42.587261, 23.328854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.539902, 42.581398, 23.091209> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588662, 0.117609, -0.799778,
		0.081591, -0.992952, -0.085962,
		-0.804252, -0.014652, -0.594109,
		34.298626, 42.577000, 22.912977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.098637, 42.242477, 22.751131>,  <34.861603, 42.587261, 23.328854>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.098637, 42.242477, 22.751131> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.764275, 42.432217, 22.640680>,  <34.563656, 42.546062, 22.574409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.764275, 42.432217, 22.640680>,  <35.098637, 42.242477, 22.751131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.764275, 42.432217, 22.640680> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417181, 0.222176, -0.881248,
		-0.356673, -0.851838, -0.383609,
		-0.835909, 0.474351, -0.276127,
		34.513500, 42.574520, 22.557842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.532269, 41.720955, 22.710007>,  <35.098637, 42.242477, 22.751131>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.532269, 41.720955, 22.710007> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.895924, 41.869579, 22.785282>,  <36.114117, 41.958752, 22.830448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.895924, 41.869579, 22.785282>,  <35.532269, 41.720955, 22.710007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.895924, 41.869579, 22.785282> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182612, -0.050499, 0.981887,
		0.374331, -0.927035, 0.021941,
		0.909136, 0.371558, 0.188191,
		36.168663, 41.981045, 22.841740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.879089, 41.326698, 23.119349>,  <35.532269, 41.720955, 22.710007>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.879089, 41.326698, 23.119349> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.067680, 41.670364, 23.198891>,  <36.180836, 41.876564, 23.246616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.067680, 41.670364, 23.198891>,  <35.879089, 41.326698, 23.119349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.067680, 41.670364, 23.198891> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045970, -0.201240, 0.978463,
		0.880679, -0.470465, -0.055384,
		0.471478, 0.859165, 0.198855,
		36.209126, 41.928116, 23.258547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.342789, 41.216797, 23.570282>,  <35.879089, 41.326698, 23.119349>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.342789, 41.216797, 23.570282> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.314117, 41.611092, 23.631195>,  <36.296913, 41.847668, 23.667744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.314117, 41.611092, 23.631195>,  <36.342789, 41.216797, 23.570282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.314117, 41.611092, 23.631195> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108946, -0.144026, 0.983558,
		0.991460, 0.087093, -0.097068,
		-0.071680, 0.985734, 0.152285,
		36.292614, 41.906811, 23.676880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.876831, 41.375469, 24.010818>,  <36.342789, 41.216797, 23.570282>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.876831, 41.375469, 24.010818> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.612179, 41.673622, 24.043423>,  <36.453388, 41.852512, 24.062984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.612179, 41.673622, 24.043423>,  <36.876831, 41.375469, 24.010818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.612179, 41.673622, 24.043423> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035000, -0.139287, 0.989633,
		0.749009, 0.651923, 0.118246,
		-0.661634, 0.745383, 0.081510,
		36.413689, 41.897236, 24.067875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.180050, 41.845306, 24.433762>,  <36.876831, 41.375469, 24.010818>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.180050, 41.845306, 24.433762> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.790474, 41.932774, 24.457865>,  <36.556728, 41.985252, 24.472326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.790474, 41.932774, 24.457865>,  <37.180050, 41.845306, 24.433762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.790474, 41.932774, 24.457865> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025841, -0.156966, 0.987266,
		0.225343, 0.963092, 0.147225,
		-0.973937, 0.218668, 0.060259,
		36.498291, 41.998375, 24.475943>
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
