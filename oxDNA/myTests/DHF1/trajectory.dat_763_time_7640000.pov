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
	<2.599895, 0.896923, 5.164144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.678154, 0.537096, 5.007939>,  <2.725110, 0.321200, 4.914217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.678154, 0.537096, 5.007939>,  <2.599895, 0.896923, 5.164144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.678154, 0.537096, 5.007939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858160, 0.349777, -0.375790,
		0.474640, -0.261598, 0.840406,
		0.195649, -0.899568, -0.390511,
		2.736849, 0.267226, 4.890786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.317008, 0.652527, 5.365890>,  <2.599895, 0.896923, 5.164144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.317008, 0.652527, 5.365890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.203350, 0.518417, 5.006590>,  <3.135155, 0.437951, 4.791010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.203350, 0.518417, 5.006590>,  <3.317008, 0.652527, 5.365890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.203350, 0.518417, 5.006590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790649, 0.448008, -0.417327,
		0.542343, -0.828782, 0.137786,
		-0.284144, -0.335275, -0.898250,
		3.118107, 0.417835, 4.737115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.997550, 0.479773, 5.207062>,  <3.317008, 0.652527, 5.365890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.997550, 0.479773, 5.207062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.735886, 0.487066, 4.904608>,  <3.578887, 0.491442, 4.723135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.735886, 0.487066, 4.904608>,  <3.997550, 0.479773, 5.207062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.735886, 0.487066, 4.904608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727351, 0.289356, -0.622281,
		0.207446, -0.957048, -0.202547,
		-0.654161, 0.018233, -0.756136,
		3.539638, 0.492536, 4.677767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.354052, 0.159794, 4.693750>,  <3.997550, 0.479773, 5.207062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.354052, 0.159794, 4.693750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.060379, 0.382942, 4.538956>,  <3.884176, 0.516831, 4.446079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.060379, 0.382942, 4.538956>,  <4.354052, 0.159794, 4.693750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.060379, 0.382942, 4.538956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612015, 0.296993, -0.732962,
		-0.293966, -0.774968, -0.559472,
		-0.734181, 0.557871, -0.386986,
		3.840125, 0.550304, 4.422860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.341853, 0.010369, 3.941353>,  <4.354052, 0.159794, 4.693750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.341853, 0.010369, 3.941353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.192425, 0.364464, 4.052204>,  <4.102768, 0.576921, 4.118715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.192425, 0.364464, 4.052204>,  <4.341853, 0.010369, 3.941353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.192425, 0.364464, 4.052204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610436, 0.459560, -0.645115,
		-0.698437, -0.071826, -0.712058,
		-0.373569, 0.885238, 0.277128,
		4.080354, 0.630035, 4.135343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.159861, 0.303357, 3.295863>,  <4.341853, 0.010369, 3.941353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.159861, 0.303357, 3.295863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.207867, 0.596476, 3.563775>,  <4.236670, 0.772347, 3.724522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.207867, 0.596476, 3.563775>,  <4.159861, 0.303357, 3.295863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.207867, 0.596476, 3.563775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523429, 0.526559, -0.669894,
		-0.843575, 0.430980, -0.320372,
		0.120016, 0.732798, 0.669779,
		4.243871, 0.816315, 3.764709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.867207, 1.005082, 2.977567>,  <4.159861, 0.303357, 3.295863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.867207, 1.005082, 2.977567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.162342, 1.061533, 3.241590>,  <4.339423, 1.095404, 3.400005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.162342, 1.061533, 3.241590>,  <3.867207, 1.005082, 2.977567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.162342, 1.061533, 3.241590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490288, 0.560048, -0.667805,
		-0.463911, 0.816351, 0.344031,
		0.737838, 0.141128, 0.660059,
		4.383693, 1.103871, 3.439608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.433671, 0.307167, 2.840577>,  <3.867207, 1.005082, 2.977567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.433671, 0.307167, 2.840577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.125355, 0.469414, 3.037088>,  <2.940365, 0.566762, 3.154995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.125355, 0.469414, 3.037088>,  <3.433671, 0.307167, 2.840577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.125355, 0.469414, 3.037088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176192, 0.605336, -0.776225,
		-0.612239, -0.684867, -0.395121,
		-0.770792, 0.405618, 0.491279,
		2.894117, 0.591099, 3.184472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<5.386649, 0.605617, 1.868302> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.774338, 0.700001, 1.840212>,  <6.006951, 0.756631, 1.823358>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.774338, 0.700001, 1.840212>,  <5.386649, 0.605617, 1.868302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.774338, 0.700001, 1.840212> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237950, -0.824692, 0.513092,
		0.063154, -0.514010, -0.855456,
		0.969222, 0.235960, -0.070226,
		6.065104, 0.770789, 1.819144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.539717, 0.661497, 2.575149>,  <5.386649, 0.605617, 1.868302>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.539717, 0.661497, 2.575149> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.612236, 0.961773, 2.829266>,  <5.655748, 1.141938, 2.981736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.612236, 0.961773, 2.829266>,  <5.539717, 0.661497, 2.575149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.612236, 0.961773, 2.829266> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.876342, -0.169823, 0.450760,
		0.446268, -0.638455, 0.627072,
		0.181298, 0.750689, 0.635292,
		5.666625, 1.186980, 3.019853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.547070, 0.454208, 3.340637>,  <5.539717, 0.661497, 2.575149>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.547070, 0.454208, 3.340637> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.424240, 0.832874, 3.301594>,  <5.350542, 1.060074, 3.278168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.424240, 0.832874, 3.301594>,  <5.547070, 0.454208, 3.340637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.424240, 0.832874, 3.301594> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825075, -0.213703, 0.523051,
		0.474295, 0.241151, 0.846694,
		-0.307075, 0.946666, -0.097609,
		5.332118, 1.116874, 3.272311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.374031, 0.746858, 4.040031>,  <5.547070, 0.454208, 3.340637>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.374031, 0.746858, 4.040031> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.163071, 0.976685, 3.789680>,  <5.036495, 1.114581, 3.639470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.163071, 0.976685, 3.789680>,  <5.374031, 0.746858, 4.040031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.163071, 0.976685, 3.789680> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746006, 0.039372, 0.664774,
		0.406600, 0.817510, 0.407866,
		-0.527401, 0.574567, -0.625876,
		5.004850, 1.149055, 3.601918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.088167, 1.329470, 4.506097>,  <5.374031, 0.746858, 4.040031>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.088167, 1.329470, 4.506097> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.880890, 1.270527, 4.169107>,  <4.756524, 1.235161, 3.966914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.880890, 1.270527, 4.169107>,  <5.088167, 1.329470, 4.506097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.880890, 1.270527, 4.169107> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838125, -0.108720, 0.534535,
		-0.170362, 0.983090, -0.067166,
		-0.518193, -0.147358, -0.842474,
		4.725432, 1.226320, 3.916365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.502857, 1.815295, 4.525932>,  <5.088167, 1.329470, 4.506097>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.502857, 1.815295, 4.525932> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.428146, 1.483555, 4.315298>,  <4.383320, 1.284511, 4.188918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.428146, 1.483555, 4.315298>,  <4.502857, 1.815295, 4.525932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.428146, 1.483555, 4.315298> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.901307, -0.068589, 0.427715,
		-0.390844, 0.554502, -0.734689,
		-0.186778, -0.829351, -0.526584,
		4.372113, 1.234750, 4.157323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.820532, 1.904091, 4.301537>,  <4.502857, 1.815295, 4.525932>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.820532, 1.904091, 4.301537> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.890190, 1.511150, 4.274233>,  <3.931985, 1.275386, 4.257851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.890190, 1.511150, 4.274233>,  <3.820532, 1.904091, 4.301537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.890190, 1.511150, 4.274233> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.911985, -0.187040, 0.365100,
		-0.371424, -0.001329, -0.928462,
		0.174145, -0.982351, -0.068259,
		3.942434, 1.216445, 4.253755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.244977, 1.559238, 3.958593>,  <3.820532, 1.904091, 4.301537>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.244977, 1.559238, 3.958593> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.411148, 1.262966, 4.169804>,  <3.510851, 1.085203, 4.296530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.411148, 1.262966, 4.169804>,  <3.244977, 1.559238, 3.958593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.411148, 1.262966, 4.169804> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.893026, -0.221705, 0.391601,
		-0.172985, -0.634224, -0.753549,
		0.415428, -0.740680, 0.528027,
		3.535777, 1.040762, 4.328212>
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
