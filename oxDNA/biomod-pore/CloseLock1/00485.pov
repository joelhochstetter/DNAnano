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
	<24.463772, 35.376110, 35.111092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.382471, 35.048145, 34.897015>,  <24.333691, 34.851368, 34.768566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.382471, 35.048145, 34.897015>,  <24.463772, 35.376110, 35.111092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.382471, 35.048145, 34.897015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190954, -0.569305, 0.799643,
		-0.960325, 0.060332, 0.272278,
		-0.203254, -0.819910, -0.535197,
		24.321495, 34.802174, 34.736454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.105871, 35.098286, 35.244473>,  <24.463772, 35.376110, 35.111092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.105871, 35.098286, 35.244473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.225492, 34.868458, 35.549217>,  <25.297266, 34.730560, 35.732063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.225492, 34.868458, 35.549217>,  <25.105871, 35.098286, 35.244473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.225492, 34.868458, 35.549217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152127, -0.759479, -0.632494,
		0.942031, 0.305050, -0.139718,
		0.299055, -0.574574, 0.761860,
		25.315208, 34.696087, 35.777775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.763605, 34.632263, 35.144279>,  <25.105871, 35.098286, 35.244473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.763605, 34.632263, 35.144279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.483885, 34.481270, 35.387093>,  <25.316053, 34.390675, 35.532780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.483885, 34.481270, 35.387093>,  <25.763605, 34.632263, 35.144279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.483885, 34.481270, 35.387093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028785, -0.863382, -0.503729,
		0.714248, -0.334784, 0.614629,
		-0.699300, -0.377480, 0.607033,
		25.274096, 34.368027, 35.569202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.989197, 34.063564, 35.428574>,  <25.763605, 34.632263, 35.144279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.989197, 34.063564, 35.428574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.590399, 34.032673, 35.430908>,  <25.351120, 34.014137, 35.432308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.590399, 34.032673, 35.430908>,  <25.989197, 34.063564, 35.428574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.590399, 34.032673, 35.430908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059915, -0.816852, -0.573727,
		0.049075, -0.571654, 0.819026,
		-0.996997, -0.077227, 0.005837,
		25.291300, 34.009506, 35.432659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.517107, 33.383961, 35.676994>,  <25.989197, 34.063564, 35.428574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.517107, 33.383961, 35.676994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.315386, 33.561729, 35.380840>,  <25.194353, 33.668388, 35.203148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.315386, 33.561729, 35.380840>,  <25.517107, 33.383961, 35.676994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.315386, 33.561729, 35.380840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151073, -0.798768, -0.582363,
		-0.850209, -0.405540, 0.335683,
		-0.504304, 0.444417, -0.740385,
		25.164095, 33.695053, 35.158726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.137423, 32.797638, 35.302166>,  <25.517107, 33.383961, 35.676994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.137423, 32.797638, 35.302166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.130270, 33.121643, 35.067711>,  <25.125978, 33.316048, 34.927036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.130270, 33.121643, 35.067711>,  <25.137423, 32.797638, 35.302166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.130270, 33.121643, 35.067711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229113, -0.567313, -0.790989,
		-0.973236, -0.148436, -0.175441,
		-0.017881, 0.810014, -0.586138,
		25.124907, 33.364647, 34.891869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.814899, 32.705212, 34.670380>,  <25.137423, 32.797638, 35.302166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.814899, 32.705212, 34.670380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.072714, 32.995323, 34.573597>,  <25.227404, 33.169392, 34.515530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.072714, 32.995323, 34.573597>,  <24.814899, 32.705212, 34.670380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.072714, 32.995323, 34.573597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146681, -0.427874, -0.891857,
		-0.750371, 0.539345, -0.382165,
		0.644537, 0.725280, -0.241953,
		25.266075, 33.212906, 34.501011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.566311, 32.826733, 33.991341>,  <24.814899, 32.705212, 34.670380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.566311, 32.826733, 33.991341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.944321, 32.955612, 34.013657>,  <25.171127, 33.032940, 34.027046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.944321, 32.955612, 34.013657>,  <24.566311, 32.826733, 33.991341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.944321, 32.955612, 34.013657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198929, -0.431078, -0.880113,
		-0.259523, 0.842828, -0.471475,
		0.945026, 0.322200, 0.055788,
		25.227829, 33.052273, 34.030392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.662697, 33.048637, 33.356018>,  <24.566311, 32.826733, 33.991341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.662697, 33.048637, 33.356018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.038893, 33.014301, 33.487541>,  <25.264610, 32.993698, 33.566456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.038893, 33.014301, 33.487541>,  <24.662697, 33.048637, 33.356018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.038893, 33.014301, 33.487541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311339, -0.170126, -0.934946,
		0.136197, 0.981676, -0.133276,
		0.940488, -0.085843, 0.328805,
		25.321039, 32.988548, 33.586182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.074526, 33.469948, 32.959858>,  <24.662697, 33.048637, 33.356018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.074526, 33.469948, 32.959858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.332935, 33.203526, 33.109001>,  <25.487982, 33.043671, 33.198486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.332935, 33.203526, 33.109001>,  <25.074526, 33.469948, 32.959858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.332935, 33.203526, 33.109001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332805, -0.193820, -0.922862,
		0.686944, 0.720281, 0.096453,
		0.646026, -0.666054, 0.372856,
		25.526743, 33.003708, 33.220860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.791906, 33.510094, 32.623158>,  <25.074526, 33.469948, 32.959858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.791906, 33.510094, 32.623158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.772083, 33.143211, 32.781281>,  <25.760189, 32.923080, 32.876156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.772083, 33.143211, 32.781281>,  <25.791906, 33.510094, 32.623158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.772083, 33.143211, 32.781281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445994, -0.374465, -0.812936,
		0.893663, 0.136018, 0.427628,
		-0.049558, -0.917211, 0.395309,
		25.757215, 32.868050, 32.899872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.409882, 33.233330, 32.430748>,  <25.791906, 33.510094, 32.623158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.409882, 33.233330, 32.430748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.172390, 32.921703, 32.511295>,  <26.029896, 32.734730, 32.559624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.172390, 32.921703, 32.511295>,  <26.409882, 33.233330, 32.430748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.172390, 32.921703, 32.511295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462033, -0.534947, -0.707359,
		0.658797, -0.326941, 0.677566,
		-0.593727, -0.779064, 0.201364,
		25.994272, 32.687984, 32.571705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.871170, 32.761372, 32.554077>,  <26.409882, 33.233330, 32.430748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.871170, 32.761372, 32.554077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.522642, 32.587185, 32.463596>,  <26.313524, 32.482674, 32.409306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.522642, 32.587185, 32.463596>,  <26.871170, 32.761372, 32.554077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.522642, 32.587185, 32.463596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483103, -0.680369, -0.551099,
		0.086081, -0.589465, 0.803195,
		-0.871322, -0.435465, -0.226205,
		26.261246, 32.456547, 32.395737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.081190, 31.969782, 32.665356>,  <26.871170, 32.761372, 32.554077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.081190, 31.969782, 32.665356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.749018, 32.030693, 32.450993>,  <26.549715, 32.067238, 32.322376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.749018, 32.030693, 32.450993>,  <27.081190, 31.969782, 32.665356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.749018, 32.030693, 32.450993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245238, -0.763803, -0.597046,
		-0.500243, -0.627230, 0.596941,
		-0.830430, 0.152275, -0.535908,
		26.499889, 32.076374, 32.290218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.669329, 31.307840, 32.617493>,  <27.081190, 31.969782, 32.665356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.669329, 31.307840, 32.617493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.545799, 31.520712, 32.302174>,  <26.471682, 31.648436, 32.112984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.545799, 31.520712, 32.302174>,  <26.669329, 31.307840, 32.617493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.545799, 31.520712, 32.302174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168888, -0.784956, -0.596088,
		-0.936005, -0.317219, 0.152534,
		-0.308823, 0.532181, -0.788297,
		26.453152, 31.680367, 32.065685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.313229, 30.867441, 32.257919>,  <26.669329, 31.307840, 32.617493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.313229, 30.867441, 32.257919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.403561, 31.150671, 31.990297>,  <26.457760, 31.320610, 31.829725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.403561, 31.150671, 31.990297>,  <26.313229, 30.867441, 32.257919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.403561, 31.150671, 31.990297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012309, -0.688812, -0.724835,
		-0.974089, 0.155455, -0.164272,
		0.225832, 0.708076, -0.669051,
		26.471310, 31.363094, 31.789581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.055502, 30.603001, 31.624660>,  <26.313229, 30.867441, 32.257919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.055502, 30.603001, 31.624660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.262743, 30.913221, 31.480389>,  <26.387089, 31.099354, 31.393826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.262743, 30.913221, 31.480389>,  <26.055502, 30.603001, 31.624660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.262743, 30.913221, 31.480389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090809, -0.469182, -0.878420,
		-0.850484, 0.422360, -0.313512,
		0.518103, 0.775552, -0.360678,
		26.418175, 31.145887, 31.372185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.756100, 30.830597, 30.958162>,  <26.055502, 30.603001, 31.624660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.756100, 30.830597, 30.958162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.129509, 30.973869, 30.964409>,  <26.353554, 31.059834, 30.968157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.129509, 30.973869, 30.964409>,  <25.756100, 30.830597, 30.958162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.129509, 30.973869, 30.964409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204908, -0.497292, -0.843038,
		-0.294194, 0.790195, -0.537627,
		0.933522, 0.358181, 0.015617,
		26.409565, 31.081324, 30.969093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.984232, 30.870693, 30.219313>,  <25.756100, 30.830597, 30.958162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.984232, 30.870693, 30.219313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.322231, 30.914385, 30.428713>,  <26.525030, 30.940599, 30.554352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.322231, 30.914385, 30.428713>,  <25.984232, 30.870693, 30.219313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.322231, 30.914385, 30.428713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480675, -0.584168, -0.653987,
		0.234378, 0.804249, -0.546123,
		0.844996, 0.109228, 0.523499,
		26.575729, 30.947153, 30.585762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.416140, 31.002638, 29.762506>,  <25.984232, 30.870693, 30.219313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.416140, 31.002638, 29.762506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.588915, 30.838289, 30.083658>,  <26.692581, 30.739681, 30.276350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.588915, 30.838289, 30.083658>,  <26.416140, 31.002638, 29.762506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.588915, 30.838289, 30.083658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459888, -0.665443, -0.587953,
		0.775842, 0.623194, -0.098476,
		0.431939, -0.410871, 0.802879,
		26.718496, 30.715029, 30.324522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.120144, 30.948565, 29.495199>,  <26.416140, 31.002638, 29.762506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.120144, 30.948565, 29.495199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.103994, 30.733665, 29.832182>,  <27.094305, 30.604727, 30.034372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.103994, 30.733665, 29.832182>,  <27.120144, 30.948565, 29.495199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.103994, 30.733665, 29.832182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653186, -0.652231, -0.384632,
		0.756120, 0.534754, 0.377254,
		-0.040373, -0.537246, 0.842459,
		27.091883, 30.572493, 30.084919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.828108, 31.001694, 29.690550>,  <27.120144, 30.948565, 29.495199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.828108, 31.001694, 29.690550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.632010, 30.691385, 29.849466>,  <27.514351, 30.505201, 29.944817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.632010, 30.691385, 29.849466>,  <27.828108, 31.001694, 29.690550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.632010, 30.691385, 29.849466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706911, -0.620549, -0.339405,
		0.509839, 0.114456, 0.852622,
		-0.490247, -0.775770, 0.397290,
		27.484936, 30.458654, 29.968653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.348969, 30.520802, 30.053331>,  <27.828108, 31.001694, 29.690550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.348969, 30.520802, 30.053331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.032183, 30.280441, 30.010048>,  <27.842112, 30.136225, 29.984077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.032183, 30.280441, 30.010048>,  <28.348969, 30.520802, 30.053331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.032183, 30.280441, 30.010048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610517, -0.781631, -0.127756,
		-0.007809, -0.167241, 0.985885,
		-0.791965, -0.600902, -0.108207,
		27.794594, 30.100170, 29.977585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.513367, 29.932474, 30.421526>,  <28.348969, 30.520802, 30.053331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.513367, 29.932474, 30.421526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.233532, 29.820543, 30.158535>,  <28.065632, 29.753386, 30.000740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.233532, 29.820543, 30.158535>,  <28.513367, 29.932474, 30.421526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.233532, 29.820543, 30.158535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498795, -0.850096, -0.168936,
		-0.511646, -0.446132, 0.734292,
		-0.699587, -0.279825, -0.657477,
		28.023657, 29.736595, 29.961292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.468670, 29.269638, 30.548042>,  <28.513367, 29.932474, 30.421526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.468670, 29.269638, 30.548042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.310802, 29.303402, 30.182066>,  <28.216082, 29.323660, 29.962481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.310802, 29.303402, 30.182066>,  <28.468670, 29.269638, 30.548042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.310802, 29.303402, 30.182066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432618, -0.861417, -0.266085,
		-0.810604, -0.500835, 0.303456,
		-0.394667, 0.084409, -0.914939,
		28.192402, 29.328724, 29.907585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.146400, 28.569256, 30.317509>,  <28.468670, 29.269638, 30.548042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.146400, 28.569256, 30.317509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.257957, 28.790529, 30.003513>,  <28.324892, 28.923294, 29.815117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.257957, 28.790529, 30.003513>,  <28.146400, 28.569256, 30.317509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.257957, 28.790529, 30.003513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555967, -0.759510, -0.337705,
		-0.783019, -0.342244, -0.519374,
		0.278893, 0.553185, -0.784988,
		28.341625, 28.956484, 29.768017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.927597, 28.154692, 29.728067>,  <28.146400, 28.569256, 30.317509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.927597, 28.154692, 29.728067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.267124, 28.356476, 29.664789>,  <28.470840, 28.477547, 29.626822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.267124, 28.356476, 29.664789>,  <27.927597, 28.154692, 29.728067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.267124, 28.356476, 29.664789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465654, -0.855058, -0.228127,
		-0.250350, 0.119973, -0.960693,
		0.848818, 0.504462, -0.158198,
		28.521769, 28.507814, 29.617331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.184097, 28.051231, 29.037493>,  <27.927597, 28.154692, 29.728067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.184097, 28.051231, 29.037493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.442734, 28.081625, 29.341110>,  <28.597916, 28.099861, 29.523281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.442734, 28.081625, 29.341110>,  <28.184097, 28.051231, 29.037493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.442734, 28.081625, 29.341110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364911, -0.904606, -0.220293,
		0.669895, 0.419422, -0.612639,
		0.646592, 0.075985, 0.759042,
		28.636711, 28.104420, 29.568823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.842682, 27.730898, 28.842051>,  <28.184097, 28.051231, 29.037493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.842682, 27.730898, 28.842051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.878542, 27.749950, 29.239985>,  <28.900059, 27.761383, 29.478745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.878542, 27.749950, 29.239985>,  <28.842682, 27.730898, 28.842051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.878542, 27.749950, 29.239985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469124, -0.883132, 0.000008,
		0.878570, 0.466700, -0.101520,
		0.089652, 0.047633, 0.994833,
		28.905437, 27.764240, 29.538435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.489433, 27.347824, 29.122686>,  <28.842682, 27.730898, 28.842051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.489433, 27.347824, 29.122686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.235039, 27.375317, 29.430140>,  <29.082403, 27.391811, 29.614613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.235039, 27.375317, 29.430140>,  <29.489433, 27.347824, 29.122686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.235039, 27.375317, 29.430140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103392, -0.979457, 0.173132,
		0.764744, 0.189580, 0.615814,
		-0.635985, 0.068731, 0.768634,
		29.044243, 27.395935, 29.660730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.928795, 27.098774, 29.657692>,  <29.489433, 27.347824, 29.122686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.928795, 27.098774, 29.657692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.534657, 27.030548, 29.658497>,  <29.298174, 26.989613, 29.658979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.534657, 27.030548, 29.658497>,  <29.928795, 27.098774, 29.657692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.534657, 27.030548, 29.658497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169450, -0.977422, 0.126222,
		-0.019564, 0.124712, 0.992000,
		-0.985345, -0.170564, 0.002010,
		29.239054, 26.979380, 29.659100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.233372, 26.281803, 29.701563>,  <29.928795, 27.098774, 29.657692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.233372, 26.281803, 29.701563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.215294, 26.013094, 29.997314>,  <30.204447, 25.851870, 30.174765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.215294, 26.013094, 29.997314>,  <30.233372, 26.281803, 29.701563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.215294, 26.013094, 29.997314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354304, 0.702801, 0.616879,
		-0.934037, -0.234084, -0.269775,
		-0.045196, -0.671771, 0.739379,
		30.201735, 25.811563, 30.219128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.584938, 26.084042, 30.030130>,  <30.233372, 26.281803, 29.701563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.584938, 26.084042, 30.030130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.908442, 26.085018, 30.265385>,  <30.102545, 26.085604, 30.406536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.908442, 26.085018, 30.265385>,  <29.584938, 26.084042, 30.030130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.908442, 26.085018, 30.265385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408642, 0.721524, 0.558941,
		-0.422987, -0.692386, 0.584537,
		0.808760, 0.002442, 0.588133,
		30.151070, 26.085751, 30.441824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.448195, 26.010176, 30.760223>,  <29.584938, 26.084042, 30.030130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.448195, 26.010176, 30.760223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.793781, 26.210815, 30.742510>,  <30.001133, 26.331200, 30.731882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.793781, 26.210815, 30.742510>,  <29.448195, 26.010176, 30.760223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.793781, 26.210815, 30.742510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438291, 0.792380, 0.424305,
		0.247921, -0.347176, 0.904436,
		0.863965, 0.501600, -0.044284,
		30.052971, 26.361296, 30.729225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.438917, 26.455177, 31.405565>,  <29.448195, 26.010176, 30.760223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.438917, 26.455177, 31.405565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.660372, 26.605293, 31.108204>,  <29.793243, 26.695362, 30.929787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.660372, 26.605293, 31.108204>,  <29.438917, 26.455177, 31.405565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.660372, 26.605293, 31.108204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318075, 0.920311, 0.227718,
		0.769621, 0.110385, 0.628887,
		0.553635, 0.375290, -0.743402,
		29.826462, 26.717880, 30.885183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.023983, 26.906300, 31.615076>,  <29.438917, 26.455177, 31.405565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.023983, 26.906300, 31.615076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.865217, 26.991720, 31.258009>,  <29.769958, 27.042973, 31.043768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.865217, 26.991720, 31.258009>,  <30.023983, 26.906300, 31.615076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.865217, 26.991720, 31.258009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203284, 0.927951, 0.312381,
		0.895062, 0.305454, -0.324904,
		-0.396913, 0.213553, -0.892668,
		29.746143, 27.055786, 30.990210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.356524, 27.507956, 31.218760>,  <30.023983, 26.906300, 31.615076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.356524, 27.507956, 31.218760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.969458, 27.450804, 31.135607>,  <29.737219, 27.416513, 31.085714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.969458, 27.450804, 31.135607>,  <30.356524, 27.507956, 31.218760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.969458, 27.450804, 31.135607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183546, 0.964133, 0.191723,
		0.173033, 0.223679, -0.959181,
		-0.967662, -0.142879, -0.207882,
		29.679159, 27.407940, 31.073242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.100424, 28.119827, 30.948833>,  <30.356524, 27.507956, 31.218760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.100424, 28.119827, 30.948833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.757954, 27.932428, 31.035984>,  <29.552471, 27.819988, 31.088274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.757954, 27.932428, 31.035984>,  <30.100424, 28.119827, 30.948833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.757954, 27.932428, 31.035984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408454, 0.871962, 0.269903,
		-0.316429, 0.142093, -0.937914,
		-0.856177, -0.468500, 0.217875,
		29.501101, 27.791878, 31.101347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.484867, 28.310265, 30.647423>,  <30.100424, 28.119827, 30.948833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.484867, 28.310265, 30.647423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.359657, 28.141638, 30.987846>,  <29.284533, 28.040462, 31.192101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.359657, 28.141638, 30.987846>,  <29.484867, 28.310265, 30.647423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.359657, 28.141638, 30.987846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296925, 0.894610, 0.333931,
		-0.902138, -0.148172, -0.405207,
		-0.313022, -0.421567, 0.851057,
		29.265751, 28.015167, 31.243164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.091175, 28.877148, 30.894583>,  <29.484867, 28.310265, 30.647423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.091175, 28.877148, 30.894583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.105289, 28.615599, 31.196896>,  <29.113758, 28.458670, 31.378283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.105289, 28.615599, 31.196896>,  <29.091175, 28.877148, 30.894583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.105289, 28.615599, 31.196896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372704, 0.693083, 0.617031,
		-0.927279, -0.303455, -0.219246,
		0.035285, -0.653873, 0.755781,
		29.115875, 28.419437, 31.423630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.438328, 28.904350, 31.174484>,  <29.091175, 28.877148, 30.894583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.438328, 28.904350, 31.174484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.695354, 28.777636, 31.453556>,  <28.849571, 28.701607, 31.620998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.695354, 28.777636, 31.453556>,  <28.438328, 28.904350, 31.174484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.695354, 28.777636, 31.453556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410705, 0.626288, 0.662635,
		-0.646861, -0.712326, 0.272326,
		0.642567, -0.316787, 0.697677,
		28.888124, 28.682600, 31.662859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.970774, 28.960758, 31.746319>,  <28.438328, 28.904350, 31.174484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.970774, 28.960758, 31.746319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.343952, 28.919479, 31.884281>,  <28.567860, 28.894712, 31.967058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.343952, 28.919479, 31.884281>,  <27.970774, 28.960758, 31.746319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.343952, 28.919479, 31.884281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184313, 0.686044, 0.703826,
		-0.309253, -0.720203, 0.621023,
		0.932948, -0.103198, 0.344904,
		28.623837, 28.888519, 31.987753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.917221, 29.193396, 32.444237>,  <27.970774, 28.960758, 31.746319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.917221, 29.193396, 32.444237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.307970, 29.227568, 32.365826>,  <28.542419, 29.248072, 32.318779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.307970, 29.227568, 32.365826>,  <27.917221, 29.193396, 32.444237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.307970, 29.227568, 32.365826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069441, 0.740295, 0.668686,
		0.202244, -0.666831, 0.717240,
		0.976870, 0.085432, -0.196026,
		28.601030, 29.253197, 32.307018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.062500, 29.396799, 33.019257>,  <27.917221, 29.193396, 32.444237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.062500, 29.396799, 33.019257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.366774, 29.500317, 32.781136>,  <28.549337, 29.562428, 32.638264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.366774, 29.500317, 32.781136>,  <28.062500, 29.396799, 33.019257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.366774, 29.500317, 32.781136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215663, 0.764236, 0.607810,
		0.612247, -0.590736, 0.525532,
		0.760686, 0.258792, -0.595301,
		28.594978, 29.577955, 32.602547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.699495, 29.373070, 33.390995>,  <28.062500, 29.396799, 33.019257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.699495, 29.373070, 33.390995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.706955, 29.641081, 33.094154>,  <28.711432, 29.801888, 32.916050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.706955, 29.641081, 33.094154>,  <28.699495, 29.373070, 33.390995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.706955, 29.641081, 33.094154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181923, 0.727565, 0.661478,
		0.983136, -0.147341, -0.108325,
		0.018649, 0.670030, -0.742100,
		28.712549, 29.842091, 32.871525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.409466, 29.851582, 33.440784>,  <28.699495, 29.373070, 33.390995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.409466, 29.851582, 33.440784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.134836, 30.045656, 33.224190>,  <28.970058, 30.162102, 33.094234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.134836, 30.045656, 33.224190>,  <29.409466, 29.851582, 33.440784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.134836, 30.045656, 33.224190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194420, 0.840161, 0.506292,
		0.700581, 0.242332, -0.671164,
		-0.686576, 0.485186, -0.541487,
		28.928864, 30.191212, 33.061745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.625509, 30.578554, 33.500977>,  <29.409466, 29.851582, 33.440784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.625509, 30.578554, 33.500977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.274263, 30.612120, 33.312561>,  <29.063517, 30.632259, 33.199512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.274263, 30.612120, 33.312561>,  <29.625509, 30.578554, 33.500977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.274263, 30.612120, 33.312561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159541, 0.876801, 0.453616,
		0.451069, 0.473475, -0.756543,
		-0.878114, 0.083913, -0.471036,
		29.010830, 30.637293, 33.171249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.583439, 31.208452, 33.197506>,  <29.625509, 30.578554, 33.500977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.583439, 31.208452, 33.197506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.197006, 31.120245, 33.251251>,  <28.965147, 31.067320, 33.283497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.197006, 31.120245, 33.251251>,  <29.583439, 31.208452, 33.197506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.197006, 31.120245, 33.251251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147757, 0.898791, 0.412727,
		-0.211779, 0.378875, -0.900890,
		-0.966084, -0.220519, 0.134364,
		28.907181, 31.054089, 33.291561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.231575, 31.685776, 32.849197>,  <29.583439, 31.208452, 33.197506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.231575, 31.685776, 32.849197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.955000, 31.546848, 33.102585>,  <28.789055, 31.463491, 33.254616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.955000, 31.546848, 33.102585>,  <29.231575, 31.685776, 32.849197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.955000, 31.546848, 33.102585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164366, 0.929485, 0.330214,
		-0.703489, 0.124202, -0.699769,
		-0.691438, -0.347320, 0.633468,
		28.747568, 31.442652, 33.292625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.635347, 32.059139, 32.809082>,  <29.231575, 31.685776, 32.849197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.635347, 32.059139, 32.809082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.620373, 31.899210, 33.175411>,  <28.611387, 31.803251, 33.395210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.620373, 31.899210, 33.175411>,  <28.635347, 32.059139, 32.809082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.620373, 31.899210, 33.175411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274958, 0.885216, 0.375221,
		-0.960727, -0.237767, -0.143075,
		-0.037438, -0.399824, 0.915827,
		28.609142, 31.779263, 33.450161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.023188, 32.196632, 32.958904>,  <28.635347, 32.059139, 32.809082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.023188, 32.196632, 32.958904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.227613, 32.128082, 33.295818>,  <28.350269, 32.086952, 33.497967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.227613, 32.128082, 33.295818>,  <28.023188, 32.196632, 32.958904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.227613, 32.128082, 33.295818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359744, 0.847321, 0.390680,
		-0.780638, -0.502670, 0.371384,
		0.511065, -0.171377, 0.842284,
		28.380934, 32.076668, 33.548504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.597790, 32.462852, 33.406193>,  <28.023188, 32.196632, 32.958904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.597790, 32.462852, 33.406193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.960575, 32.441444, 33.573311>,  <28.178247, 32.428600, 33.673580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.960575, 32.441444, 33.573311>,  <27.597790, 32.462852, 33.406193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.960575, 32.441444, 33.573311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108190, 0.929016, 0.353869,
		-0.407075, -0.366148, 0.836795,
		0.906964, -0.053518, 0.417793,
		28.232664, 32.425388, 33.698650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.568537, 32.662331, 34.144039>,  <27.597790, 32.462852, 33.406193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.568537, 32.662331, 34.144039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.963743, 32.709698, 34.104439>,  <28.200867, 32.738117, 34.080677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.963743, 32.709698, 34.104439>,  <27.568537, 32.662331, 34.144039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.963743, 32.709698, 34.104439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071675, 0.920047, 0.385197,
		0.136699, -0.373485, 0.917509,
		0.988016, 0.118419, -0.099000,
		28.260149, 32.745224, 34.074738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.820814, 33.008842, 34.766560>,  <27.568537, 32.662331, 34.144039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.820814, 33.008842, 34.766560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.093845, 33.059772, 34.478706>,  <28.257664, 33.090328, 34.305992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.093845, 33.059772, 34.478706>,  <27.820814, 33.008842, 34.766560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.093845, 33.059772, 34.478706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097041, 0.960196, 0.261927,
		0.724339, -0.248620, 0.643056,
		0.682580, 0.127321, -0.719634,
		28.298620, 33.097969, 34.262817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.382399, 33.150749, 35.153614>,  <27.820814, 33.008842, 34.766560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.382399, 33.150749, 35.153614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.444349, 33.289703, 34.783676>,  <28.481520, 33.373077, 34.561714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.444349, 33.289703, 34.783676>,  <28.382399, 33.150749, 35.153614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.444349, 33.289703, 34.783676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123829, 0.921931, 0.367029,
		0.980143, -0.171367, 0.099770,
		0.154877, 0.347386, -0.924844,
		28.490812, 33.393921, 34.506222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.910866, 33.761173, 35.119209>,  <28.382399, 33.150749, 35.153614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.910866, 33.761173, 35.119209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.704508, 33.782330, 34.777203>,  <28.580692, 33.795021, 34.571999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.704508, 33.782330, 34.777203>,  <28.910866, 33.761173, 35.119209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.704508, 33.782330, 34.777203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060756, 0.993320, 0.098102,
		0.854494, 0.102558, -0.509237,
		-0.515897, 0.052889, -0.855017,
		28.549738, 33.798195, 34.520699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.298929, 34.203445, 34.806698>,  <28.910866, 33.761173, 35.119209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.298929, 34.203445, 34.806698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.941177, 34.240623, 34.631680>,  <28.726526, 34.262932, 34.526669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.941177, 34.240623, 34.631680>,  <29.298929, 34.203445, 34.806698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.941177, 34.240623, 34.631680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037733, 0.959009, 0.280853,
		0.445714, 0.267699, -0.854211,
		-0.894380, 0.092948, -0.437545,
		28.672863, 34.268509, 34.500416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.358192, 34.681541, 34.291561>,  <29.298929, 34.203445, 34.806698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.358192, 34.681541, 34.291561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.974348, 34.657177, 34.401424>,  <28.744041, 34.642559, 34.467342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.974348, 34.657177, 34.401424>,  <29.358192, 34.681541, 34.291561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.974348, 34.657177, 34.401424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024575, 0.990697, 0.133849,
		-0.280260, 0.121693, -0.952179,
		-0.959609, -0.060913, 0.274662,
		28.686464, 34.638905, 34.483822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.004091, 35.036316, 34.270489>,  <29.358192, 34.681541, 34.291561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.004091, 35.036316, 34.270489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.064125, 35.343563, 34.021503>,  <30.100145, 35.527912, 33.872112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.064125, 35.343563, 34.021503>,  <30.004091, 35.036316, 34.270489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.064125, 35.343563, 34.021503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521818, 0.473218, 0.709768,
		0.839750, -0.431339, -0.329798,
		0.150085, 0.768122, -0.622465,
		30.109150, 35.574001, 33.834763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.830843, 35.215542, 34.066868>,  <30.004091, 35.036316, 34.270489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.830843, 35.215542, 34.066868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.574743, 35.521481, 34.038326>,  <30.421083, 35.705044, 34.021202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.574743, 35.521481, 34.038326>,  <30.830843, 35.215542, 34.066868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.574743, 35.521481, 34.038326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586413, 0.546644, 0.597745,
		0.496187, 0.340864, -0.798505,
		-0.640248, 0.764847, -0.071351,
		30.382669, 35.750935, 34.016922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.246462, 35.880154, 33.976006>,  <30.830843, 35.215542, 34.066868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.246462, 35.880154, 33.976006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.879541, 35.928165, 34.127872>,  <30.659389, 35.956974, 34.218994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.879541, 35.928165, 34.127872>,  <31.246462, 35.880154, 33.976006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.879541, 35.928165, 34.127872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363294, 0.642631, 0.674569,
		-0.163020, 0.756715, -0.633093,
		-0.917301, 0.120031, 0.379672,
		30.604351, 35.964176, 34.241776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.216249, 36.594990, 33.928246>,  <31.246462, 35.880154, 33.976006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.216249, 36.594990, 33.928246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.017147, 36.409538, 34.221443>,  <30.897686, 36.298267, 34.397362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.017147, 36.409538, 34.221443>,  <31.216249, 36.594990, 33.928246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.017147, 36.409538, 34.221443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502852, 0.534324, 0.679440,
		-0.706668, 0.706784, -0.032825,
		-0.497756, -0.463632, 0.732997,
		30.867821, 36.270447, 34.441341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.070738, 37.138493, 34.453762>,  <31.216249, 36.594990, 33.928246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.070738, 37.138493, 34.453762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.075823, 36.769623, 34.608391>,  <31.078875, 36.548302, 34.701168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.075823, 36.769623, 34.608391>,  <31.070738, 37.138493, 34.453762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.075823, 36.769623, 34.608391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464296, 0.347842, 0.814515,
		-0.885589, 0.169127, 0.432584,
		0.012715, -0.922172, 0.386570,
		31.079638, 36.492970, 34.724361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.877035, 37.223732, 35.135979>,  <31.070738, 37.138493, 34.453762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.877035, 37.223732, 35.135979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.092272, 36.887196, 35.115547>,  <31.221413, 36.685276, 35.103287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.092272, 36.887196, 35.115547>,  <30.877035, 37.223732, 35.135979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.092272, 36.887196, 35.115547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385491, 0.191747, 0.902568,
		-0.749570, -0.505355, 0.427505,
		0.538090, -0.841338, -0.051082,
		31.253698, 36.634792, 35.100224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.822784, 37.022263, 35.830257>,  <30.877035, 37.223732, 35.135979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.822784, 37.022263, 35.830257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.127701, 36.817215, 35.672207>,  <31.310652, 36.694187, 35.577377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.127701, 36.817215, 35.672207>,  <30.822784, 37.022263, 35.830257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.127701, 36.817215, 35.672207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486883, 0.051937, 0.871922,
		-0.426446, -0.857041, 0.289179,
		0.762292, -0.512624, -0.395131,
		31.356388, 36.663429, 35.553669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.955124, 36.488789, 36.215359>,  <30.822784, 37.022263, 35.830257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.955124, 36.488789, 36.215359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.303694, 36.537827, 36.025375>,  <31.512836, 36.567249, 35.911385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.303694, 36.537827, 36.025375>,  <30.955124, 36.488789, 36.215359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.303694, 36.537827, 36.025375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466416, 0.092741, 0.879690,
		0.151896, -0.988114, 0.023635,
		0.871426, 0.122598, -0.474959,
		31.565121, 36.574604, 35.882889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.378807, 35.968689, 36.532188>,  <30.955124, 36.488789, 36.215359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.378807, 35.968689, 36.532188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.573662, 36.283321, 36.380402>,  <31.690575, 36.472099, 36.289330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.573662, 36.283321, 36.380402>,  <31.378807, 35.968689, 36.532188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.573662, 36.283321, 36.380402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380892, 0.199646, 0.902808,
		0.785887, -0.584328, -0.202345,
		0.487138, 0.786576, -0.379465,
		31.719803, 36.519295, 36.266563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.025951, 35.927914, 36.893856>,  <31.378807, 35.968689, 36.532188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.025951, 35.927914, 36.893856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.017700, 36.305012, 36.760708>,  <32.012749, 36.531269, 36.680820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.017700, 36.305012, 36.760708>,  <32.025951, 35.927914, 36.893856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.017700, 36.305012, 36.760708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547489, 0.289239, 0.785237,
		0.836559, -0.166043, -0.522110,
		-0.020632, 0.942747, -0.332872,
		32.011509, 36.587837, 36.660847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.731396, 36.136971, 36.976940>,  <32.025951, 35.927914, 36.893856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.731396, 36.136971, 36.976940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.533298, 36.482430, 36.939316>,  <32.414440, 36.689705, 36.916740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.533298, 36.482430, 36.939316>,  <32.731396, 36.136971, 36.976940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.533298, 36.482430, 36.939316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582594, 0.410478, 0.701493,
		0.644455, 0.292606, -0.706442,
		-0.495240, 0.863649, -0.094064,
		32.384727, 36.741524, 36.911098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.279442, 36.615509, 36.807137>,  <32.731396, 36.136971, 36.976940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.279442, 36.615509, 36.807137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.956982, 36.778469, 36.978786>,  <32.763504, 36.876244, 37.081776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.956982, 36.778469, 36.978786>,  <33.279442, 36.615509, 36.807137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.956982, 36.778469, 36.978786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572013, 0.351023, 0.741339,
		0.151389, 0.843095, -0.516015,
		-0.806153, 0.407398, 0.429120,
		32.715137, 36.900688, 37.107521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.523651, 37.025375, 37.283276>,  <33.279442, 36.615509, 36.807137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.523651, 37.025375, 37.283276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.147617, 37.042286, 37.418598>,  <32.921997, 37.052433, 37.499794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.147617, 37.042286, 37.418598>,  <33.523651, 37.025375, 37.283276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.147617, 37.042286, 37.418598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340900, 0.100976, 0.934661,
		0.005352, 0.993990, -0.109338,
		-0.940084, 0.042275, 0.338311,
		32.865593, 37.054970, 37.520092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.499184, 37.555531, 37.699429>,  <33.523651, 37.025375, 37.283276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.499184, 37.555531, 37.699429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.199989, 37.312035, 37.805218>,  <33.020473, 37.165936, 37.868690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.199989, 37.312035, 37.805218>,  <33.499184, 37.555531, 37.699429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.199989, 37.312035, 37.805218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300136, 0.045178, 0.952826,
		-0.591975, 0.792080, 0.148913,
		-0.747987, -0.608743, 0.264476,
		32.975594, 37.129410, 37.884560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.309883, 37.750996, 38.427551>,  <33.499184, 37.555531, 37.699429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.309883, 37.750996, 38.427551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.146553, 37.388214, 38.386158>,  <33.048553, 37.170547, 38.361320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.146553, 37.388214, 38.386158>,  <33.309883, 37.750996, 38.427551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.146553, 37.388214, 38.386158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200118, -0.199550, 0.959235,
		-0.890631, 0.370970, 0.262979,
		-0.408325, -0.906952, -0.103487,
		33.024055, 37.116127, 38.355110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.850899, 37.730370, 38.930676>,  <33.309883, 37.750996, 38.427551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.850899, 37.730370, 38.930676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.929565, 37.344959, 38.858074>,  <32.976765, 37.113712, 38.814514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.929565, 37.344959, 38.858074>,  <32.850899, 37.730370, 38.930676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.929565, 37.344959, 38.858074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164167, -0.150145, 0.974939,
		-0.966629, -0.221533, 0.128651,
		0.196665, -0.963524, -0.181503,
		32.988564, 37.055901, 38.803623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.403103, 37.357697, 39.294018>,  <32.850899, 37.730370, 38.930676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.403103, 37.357697, 39.294018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.706161, 37.105564, 39.226299>,  <32.887997, 36.954285, 39.185669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.706161, 37.105564, 39.226299>,  <32.403103, 37.357697, 39.294018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.706161, 37.105564, 39.226299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113715, -0.382905, 0.916762,
		-0.642685, -0.675329, -0.361783,
		0.757644, -0.630329, -0.169292,
		32.933456, 36.916466, 39.175510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.174191, 36.755173, 39.502346>,  <32.403103, 37.357697, 39.294018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.174191, 36.755173, 39.502346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.566265, 36.675957, 39.500690>,  <32.801510, 36.628426, 39.499699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.566265, 36.675957, 39.500690>,  <32.174191, 36.755173, 39.502346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.566265, 36.675957, 39.500690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083607, -0.432556, 0.897722,
		-0.179574, -0.879588, -0.440542,
		0.980185, -0.198040, -0.004136,
		32.860321, 36.616543, 39.499451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.211872, 36.119251, 39.557068>,  <32.174191, 36.755173, 39.502346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.211872, 36.119251, 39.557068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.570873, 36.244686, 39.681107>,  <32.786274, 36.319946, 39.755527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.570873, 36.244686, 39.681107>,  <32.211872, 36.119251, 39.557068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.570873, 36.244686, 39.681107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184753, -0.371114, 0.910022,
		0.400450, -0.874036, -0.275139,
		0.897500, 0.313585, 0.310093,
		32.840122, 36.338760, 39.774136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.494755, 35.629734, 40.040634>,  <32.211872, 36.119251, 39.557068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.494755, 35.629734, 40.040634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.716679, 35.955189, 40.110130>,  <32.849834, 36.150459, 40.151829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.716679, 35.955189, 40.110130>,  <32.494755, 35.629734, 40.040634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.716679, 35.955189, 40.110130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044791, -0.237740, 0.970295,
		0.830771, -0.530546, -0.168344,
		0.554808, 0.813634, 0.173744,
		32.883121, 36.199280, 40.162254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.154041, 35.442760, 40.379192>,  <32.494755, 35.629734, 40.040634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.154041, 35.442760, 40.379192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.087612, 35.825825, 40.473263>,  <33.047752, 36.055664, 40.529705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.087612, 35.825825, 40.473263>,  <33.154041, 35.442760, 40.379192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.087612, 35.825825, 40.473263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033249, -0.232913, 0.971929,
		0.985552, 0.169234, 0.006841,
		-0.166077, 0.957659, 0.235175,
		33.037788, 36.113121, 40.543816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.393364, 35.532806, 41.097160>,  <33.154041, 35.442760, 40.379192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.393364, 35.532806, 41.097160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.135216, 35.834995, 41.051987>,  <32.980328, 36.016308, 41.024883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.135216, 35.834995, 41.051987>,  <33.393364, 35.532806, 41.097160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.135216, 35.834995, 41.051987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209462, -0.032850, 0.977265,
		0.734591, 0.654352, 0.179444,
		-0.645370, 0.755476, -0.112930,
		32.941605, 36.061638, 41.018108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.445797, 35.935646, 41.661732>,  <33.393364, 35.532806, 41.097160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.445797, 35.935646, 41.661732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.080112, 35.987125, 41.508030>,  <32.860703, 36.018013, 41.415810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.080112, 35.987125, 41.508030>,  <33.445797, 35.935646, 41.661732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.080112, 35.987125, 41.508030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395659, -0.078629, 0.915025,
		0.087547, 0.988562, 0.122803,
		-0.914215, 0.128696, -0.384250,
		32.805847, 36.025734, 41.392754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.004688, 36.102135, 42.167271>,  <33.445797, 35.935646, 41.661732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.004688, 36.102135, 42.167271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.705387, 36.048744, 41.907333>,  <32.525806, 36.016712, 41.751369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.705387, 36.048744, 41.907333>,  <33.004688, 36.102135, 42.167271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.705387, 36.048744, 41.907333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663103, 0.120679, 0.738736,
		-0.020179, 0.983678, -0.178805,
		-0.748256, -0.133474, -0.649844,
		32.480911, 36.008701, 41.712379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.537094, 36.505714, 42.472866>,  <33.004688, 36.102135, 42.167271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.537094, 36.505714, 42.472866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.336304, 36.271858, 42.217930>,  <32.215828, 36.131542, 42.064968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.336304, 36.271858, 42.217930>,  <32.537094, 36.505714, 42.472866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.336304, 36.271858, 42.217930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732183, -0.104976, 0.672970,
		-0.460354, 0.804469, -0.375371,
		-0.501978, -0.584645, -0.637345,
		32.185711, 36.096466, 42.026726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.846939, 36.826984, 42.342888>,  <32.537094, 36.505714, 42.472866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.846939, 36.826984, 42.342888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.835415, 36.430779, 42.289150>,  <31.828501, 36.193054, 42.256908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.835415, 36.430779, 42.289150>,  <31.846939, 36.826984, 42.342888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.835415, 36.430779, 42.289150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773785, -0.062986, 0.630309,
		-0.632793, 0.122115, -0.764631,
		-0.028809, -0.990515, -0.134348,
		31.826773, 36.133625, 42.248844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.225431, 36.588814, 42.561356>,  <31.846939, 36.826984, 42.342888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.225431, 36.588814, 42.561356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.390432, 36.224903, 42.542816>,  <31.489433, 36.006557, 42.531693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.390432, 36.224903, 42.542816>,  <31.225431, 36.588814, 42.561356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.390432, 36.224903, 42.542816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763142, -0.372906, 0.527783,
		-0.497449, -0.182341, -0.848114,
		0.412504, -0.909776, -0.046350,
		31.514183, 35.951969, 42.528912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.712109, 36.210320, 42.368977>,  <31.225431, 36.588814, 42.561356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.712109, 36.210320, 42.368977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.965532, 35.936836, 42.513832>,  <31.117586, 35.772747, 42.600746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.965532, 35.936836, 42.513832>,  <30.712109, 36.210320, 42.368977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.965532, 35.936836, 42.513832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733571, -0.382060, 0.562054,
		-0.245919, -0.621753, -0.743604,
		0.633560, -0.683706, 0.362145,
		31.155600, 35.731724, 42.622475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.373455, 35.688358, 42.534588>,  <30.712109, 36.210320, 42.368977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.373455, 35.688358, 42.534588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.689886, 35.602039, 42.763542>,  <30.879745, 35.550247, 42.900913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.689886, 35.602039, 42.763542>,  <30.373455, 35.688358, 42.534588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.689886, 35.602039, 42.763542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574592, -0.583134, 0.574281,
		0.209853, -0.783191, -0.585298,
		0.791079, -0.215793, 0.572387,
		30.927210, 35.537300, 42.935257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.151279, 35.115189, 42.857586>,  <30.373455, 35.688358, 42.534588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.151279, 35.115189, 42.857586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.469572, 35.221661, 43.075191>,  <30.660547, 35.285545, 43.205757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.469572, 35.221661, 43.075191>,  <30.151279, 35.115189, 42.857586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.469572, 35.221661, 43.075191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452717, -0.335257, 0.826226,
		0.402313, -0.903742, -0.146270,
		0.795733, 0.266183, 0.544018,
		30.708292, 35.301514, 43.238396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.463032, 34.490349, 43.320518>,  <30.151279, 35.115189, 42.857586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.463032, 34.490349, 43.320518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.570345, 34.831772, 43.499168>,  <30.634733, 35.036625, 43.606358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.570345, 34.831772, 43.499168>,  <30.463032, 34.490349, 43.320518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.570345, 34.831772, 43.499168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422877, -0.312214, 0.850704,
		0.865563, -0.417096, 0.277186,
		0.268283, 0.853553, 0.446621,
		30.650829, 35.087837, 43.633156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.587271, 34.273155, 43.929485>,  <30.463032, 34.490349, 43.320518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.587271, 34.273155, 43.929485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.534557, 34.664867, 43.990997>,  <30.502930, 34.899895, 44.027905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.534557, 34.664867, 43.990997>,  <30.587271, 34.273155, 43.929485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.534557, 34.664867, 43.990997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610891, -0.202404, 0.765405,
		0.780670, 0.006922, 0.624906,
		-0.131782, 0.979277, 0.153782,
		30.495024, 34.958652, 44.037132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.768244, 34.445038, 44.710155>,  <30.587271, 34.273155, 43.929485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.768244, 34.445038, 44.710155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.508175, 34.720749, 44.582294>,  <30.352135, 34.886173, 44.505577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.508175, 34.720749, 44.582294>,  <30.768244, 34.445038, 44.710155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.508175, 34.720749, 44.582294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497751, -0.068550, 0.864607,
		0.574039, 0.721250, 0.387657,
		-0.650171, 0.689275, -0.319652,
		30.313124, 34.927532, 44.486401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.519573, 34.622742, 45.233158>,  <30.768244, 34.445038, 44.710155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.519573, 34.622742, 45.233158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.245346, 34.799187, 45.001495>,  <30.080811, 34.905052, 44.862499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.245346, 34.799187, 45.001495>,  <30.519573, 34.622742, 45.233158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.245346, 34.799187, 45.001495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662313, -0.047647, 0.747711,
		0.302227, 0.896188, 0.324817,
		-0.685566, 0.441109, -0.579157,
		30.039677, 34.931519, 44.827747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.266348, 35.235260, 45.568050>,  <30.519573, 34.622742, 45.233158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.266348, 35.235260, 45.568050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.987375, 35.077469, 45.328724>,  <29.819992, 34.982796, 45.185127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.987375, 35.077469, 45.328724>,  <30.266348, 35.235260, 45.568050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.987375, 35.077469, 45.328724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644383, -0.020182, 0.764437,
		-0.313628, 0.918684, -0.240120,
		-0.697430, -0.394478, -0.598314,
		29.778147, 34.959126, 45.149231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.717981, 35.642548, 45.852901>,  <30.266348, 35.235260, 45.568050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.717981, 35.642548, 45.852901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.574692, 35.334568, 45.641678>,  <29.488718, 35.149780, 45.514942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.574692, 35.334568, 45.641678>,  <29.717981, 35.642548, 45.852901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.574692, 35.334568, 45.641678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716616, -0.135789, 0.684122,
		-0.598446, 0.623487, -0.503117,
		-0.358224, -0.769951, -0.528063,
		29.467224, 35.103584, 45.483257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.094210, 35.751789, 45.937145>,  <29.717981, 35.642548, 45.852901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.094210, 35.751789, 45.937145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.106777, 35.369080, 45.821491>,  <29.114319, 35.139454, 45.752098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.106777, 35.369080, 45.821491>,  <29.094210, 35.751789, 45.937145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.106777, 35.369080, 45.821491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538923, -0.259838, 0.801278,
		-0.841769, 0.130643, -0.523791,
		0.031420, -0.956774, -0.289131,
		29.116203, 35.082047, 45.734753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.410934, 35.527206, 46.078037>,  <29.094210, 35.751789, 45.937145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.410934, 35.527206, 46.078037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.655966, 35.212463, 46.048115>,  <28.802984, 35.023617, 46.030159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.655966, 35.212463, 46.048115>,  <28.410934, 35.527206, 46.078037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.655966, 35.212463, 46.048115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496792, -0.456906, 0.737858,
		-0.614773, -0.414831, -0.670798,
		0.612578, -0.786862, -0.074809,
		28.839739, 34.976406, 46.025673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.025137, 34.936462, 46.193821>,  <28.410934, 35.527206, 46.078037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.025137, 34.936462, 46.193821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.390259, 34.789982, 46.266136>,  <28.609333, 34.702095, 46.309525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.390259, 34.789982, 46.266136>,  <28.025137, 34.936462, 46.193821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.390259, 34.789982, 46.266136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284525, -0.252678, 0.924770,
		-0.292968, -0.895574, -0.334838,
		0.912807, -0.366198, 0.180787,
		28.664101, 34.680122, 46.320374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.928831, 34.389984, 46.582664>,  <28.025137, 34.936462, 46.193821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.928831, 34.389984, 46.582664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.305464, 34.475883, 46.686440>,  <28.531443, 34.527424, 46.748707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.305464, 34.475883, 46.686440>,  <27.928831, 34.389984, 46.582664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.305464, 34.475883, 46.686440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165949, -0.374497, 0.912257,
		0.293066, -0.902017, -0.316982,
		0.941580, 0.214749, 0.259441,
		28.587938, 34.540310, 46.764271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.317869, 33.814896, 46.862774>,  <27.928831, 34.389984, 46.582664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.317869, 33.814896, 46.862774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.524054, 34.118015, 47.022797>,  <28.647764, 34.299885, 47.118809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.524054, 34.118015, 47.022797>,  <28.317869, 33.814896, 46.862774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.524054, 34.118015, 47.022797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019079, -0.456592, 0.889471,
		0.856701, -0.466120, -0.220897,
		0.515460, 0.757796, 0.400056,
		28.678692, 34.345356, 47.142815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.824560, 33.502350, 47.213531>,  <28.317869, 33.814896, 46.862774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.824560, 33.502350, 47.213531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.790878, 33.867699, 47.372860>,  <28.770670, 34.086906, 47.468456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.790878, 33.867699, 47.372860>,  <28.824560, 33.502350, 47.213531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.790878, 33.867699, 47.372860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048731, -0.395487, 0.917178,
		0.995256, 0.096639, -0.011208,
		-0.084203, 0.913373, 0.398320,
		28.765617, 34.141712, 47.492355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.089426, 33.405239, 47.717983>,  <28.824560, 33.502350, 47.213531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.089426, 33.405239, 47.717983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.936007, 33.760014, 47.820927>,  <28.843956, 33.972878, 47.882694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.936007, 33.760014, 47.820927>,  <29.089426, 33.405239, 47.717983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.936007, 33.760014, 47.820927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054794, -0.300034, 0.952353,
		0.921894, 0.351171, 0.163676,
		-0.383547, 0.886938, 0.257358,
		28.820942, 34.026096, 47.898132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.453257, 33.638428, 48.341682>,  <29.089426, 33.405239, 47.717983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.453257, 33.638428, 48.341682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.098110, 33.822147, 48.330837>,  <28.885023, 33.932381, 48.324329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.098110, 33.822147, 48.330837>,  <29.453257, 33.638428, 48.341682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.098110, 33.822147, 48.330837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156519, -0.246091, 0.956526,
		0.432660, 0.853512, 0.290385,
		-0.887867, 0.459301, -0.027117,
		28.831751, 33.959938, 48.322701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.469948, 33.851501, 48.962696>,  <29.453257, 33.638428, 48.341682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.469948, 33.851501, 48.962696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.082502, 33.882767, 48.868313>,  <28.850035, 33.901524, 48.811684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.082502, 33.882767, 48.868313>,  <29.469948, 33.851501, 48.962696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.082502, 33.882767, 48.868313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247049, -0.197878, 0.948584,
		0.027450, 0.977106, 0.210977,
		-0.968614, 0.078161, -0.235961,
		28.791918, 33.906216, 48.797523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.185410, 34.326317, 49.481606>,  <29.469948, 33.851501, 48.962696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.185410, 34.326317, 49.481606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.913567, 34.083179, 49.317333>,  <28.750462, 33.937298, 49.218769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.913567, 34.083179, 49.317333>,  <29.185410, 34.326317, 49.481606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.913567, 34.083179, 49.317333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440691, -0.109263, 0.890984,
		-0.586452, 0.786503, -0.193616,
		-0.679606, -0.607845, -0.410682,
		28.709684, 33.900826, 49.194130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.636656, 34.518677, 49.873302>,  <29.185410, 34.326317, 49.481606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.636656, 34.518677, 49.873302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.542351, 34.158894, 49.726120>,  <28.485767, 33.943024, 49.637810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.542351, 34.158894, 49.726120>,  <28.636656, 34.518677, 49.873302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.542351, 34.158894, 49.726120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624168, -0.150055, 0.766745,
		-0.744869, 0.410435, -0.526036,
		-0.235765, -0.899459, -0.367952,
		28.471621, 33.889057, 49.615734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.773050, 34.429478, 49.894779>,  <28.636656, 34.518677, 49.873302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.773050, 34.429478, 49.894779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.984682, 34.090050, 49.894794>,  <28.111660, 33.886391, 49.894806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.984682, 34.090050, 49.894794>,  <27.773050, 34.429478, 49.894779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.984682, 34.090050, 49.894794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525952, -0.327888, 0.784770,
		-0.665921, -0.415226, -0.619788,
		0.529077, -0.848574, 0.000041,
		28.143406, 33.835476, 49.894806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.286686, 33.908848, 49.997189>,  <27.773050, 34.429478, 49.894779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.286686, 33.908848, 49.997189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.635511, 33.755604, 50.118996>,  <27.844807, 33.663658, 50.192078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.635511, 33.755604, 50.118996>,  <27.286686, 33.908848, 49.997189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.635511, 33.755604, 50.118996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432134, -0.310758, 0.846575,
		-0.229699, -0.869861, -0.436556,
		0.872066, -0.383108, 0.304516,
		27.897131, 33.640671, 50.210350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.214491, 33.265701, 50.466232>,  <27.286686, 33.908848, 49.997189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.214491, 33.265701, 50.466232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.598864, 33.338917, 50.549282>,  <27.829487, 33.382847, 50.599113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.598864, 33.338917, 50.549282>,  <27.214491, 33.265701, 50.466232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.598864, 33.338917, 50.549282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127386, -0.373508, 0.918839,
		0.245735, -0.909389, -0.335598,
		0.960931, 0.183041, 0.207627,
		27.887142, 33.393829, 50.611568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.759663, 32.736732, 50.735622>,  <27.214491, 33.265701, 50.466232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.759663, 32.736732, 50.735622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.819969, 33.096024, 50.900768>,  <27.856153, 33.311600, 50.999855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.819969, 33.096024, 50.900768>,  <27.759663, 32.736732, 50.735622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.819969, 33.096024, 50.900768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230286, -0.374238, 0.898284,
		0.961373, -0.230509, 0.150426,
		0.150768, 0.898227, 0.412865,
		27.865200, 33.365490, 51.024628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.424763, 32.544662, 51.002151>,  <27.759663, 32.736732, 50.735622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.424763, 32.544662, 51.002151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.116869, 32.390606, 51.205788>,  <27.932133, 32.298172, 51.327969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.116869, 32.390606, 51.205788>,  <28.424763, 32.544662, 51.002151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.116869, 32.390606, 51.205788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104172, -0.862584, -0.495073,
		0.629806, -0.328043, 0.704083,
		-0.769736, -0.385145, 0.509087,
		27.885948, 32.275063, 51.358513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.555998, 31.878904, 51.249477>,  <28.424763, 32.544662, 51.002151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.555998, 31.878904, 51.249477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.156582, 31.880520, 51.271023>,  <27.916933, 31.881489, 51.283951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.156582, 31.880520, 51.271023>,  <28.555998, 31.878904, 51.249477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.156582, 31.880520, 51.271023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027441, -0.896834, -0.441515,
		0.046521, -0.442348, 0.895636,
		-0.998541, 0.004038, 0.053860,
		27.857019, 31.881731, 51.287182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.311832, 32.107361, 51.139927>,  <28.555998, 31.878904, 51.249477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.311832, 32.107361, 51.139927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.659508, 31.911221, 51.114422>,  <29.868113, 31.793535, 51.099117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.659508, 31.911221, 51.114422>,  <29.311832, 32.107361, 51.139927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.659508, 31.911221, 51.114422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418666, -0.661155, -0.622570,
		0.263120, 0.567827, -0.779962,
		0.869188, -0.490354, -0.063766,
		29.920263, 31.764114, 51.095291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.483936, 32.038406, 50.418407>,  <29.311832, 32.107361, 51.139927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.483936, 32.038406, 50.418407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.614836, 31.750877, 50.663750>,  <29.693375, 31.578360, 50.810955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.614836, 31.750877, 50.663750>,  <29.483936, 32.038406, 50.418407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.614836, 31.750877, 50.663750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543306, -0.674206, -0.500265,
		0.773129, -0.169528, -0.611173,
		0.327248, -0.718823, 0.613353,
		29.713011, 31.535231, 50.847755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.869068, 31.452766, 50.120537>,  <29.483936, 32.038406, 50.418407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.869068, 31.452766, 50.120537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.678963, 31.284424, 50.429600>,  <29.564899, 31.183418, 50.615040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.678963, 31.284424, 50.429600>,  <29.869068, 31.452766, 50.120537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.678963, 31.284424, 50.429600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425074, -0.659063, -0.620442,
		0.770348, -0.623312, 0.134334,
		-0.475263, -0.420855, 0.772662,
		29.536383, 31.158167, 50.661400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.933935, 30.700598, 50.225384>,  <29.869068, 31.452766, 50.120537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.933935, 30.700598, 50.225384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.571932, 30.796799, 50.365738>,  <29.354731, 30.854519, 50.449951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.571932, 30.796799, 50.365738>,  <29.933935, 30.700598, 50.225384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.571932, 30.796799, 50.365738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423790, -0.438116, -0.792752,
		-0.036928, -0.866149, 0.498420,
		-0.905007, 0.240501, 0.350887,
		29.300430, 30.868950, 50.471004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.526821, 30.440613, 49.676739>,  <29.933935, 30.700598, 50.225384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.526821, 30.440613, 49.676739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.241899, 30.648491, 49.865437>,  <29.070948, 30.773218, 49.978657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.241899, 30.648491, 49.865437>,  <29.526821, 30.440613, 49.676739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.241899, 30.648491, 49.865437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633903, -0.187797, -0.750266,
		-0.301320, -0.833454, 0.463206,
		-0.712301, 0.519698, 0.471742,
		29.028208, 30.804399, 50.006958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.933516, 30.030893, 49.792522>,  <29.526821, 30.440613, 49.676739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.933516, 30.030893, 49.792522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.831318, 30.416489, 49.763008>,  <28.769999, 30.647846, 49.745300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.831318, 30.416489, 49.763008>,  <28.933516, 30.030893, 49.792522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.831318, 30.416489, 49.763008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362731, -0.166325, -0.916931,
		-0.896186, -0.207505, 0.392164,
		-0.255495, 0.963990, -0.073790,
		28.754669, 30.705687, 49.740871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.373726, 30.029284, 49.277431>,  <28.933516, 30.030893, 49.792522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.373726, 30.029284, 49.277431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.486073, 30.411127, 49.317101>,  <28.553480, 30.640234, 49.340904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.486073, 30.411127, 49.317101>,  <28.373726, 30.029284, 49.277431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.486073, 30.411127, 49.317101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291098, 0.183201, -0.938988,
		-0.914535, 0.234863, 0.329340,
		0.280869, 0.954608, 0.099176,
		28.570333, 30.697510, 49.346855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.767248, 30.423012, 48.978420>,  <28.373726, 30.029284, 49.277431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.767248, 30.423012, 48.978420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.094887, 30.650869, 48.951328>,  <28.291470, 30.787584, 48.935074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.094887, 30.650869, 48.951328>,  <27.767248, 30.423012, 48.978420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.094887, 30.650869, 48.951328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186165, 0.152278, -0.970646,
		-0.542610, 0.807660, 0.230778,
		0.819095, 0.569646, -0.067730,
		28.340614, 30.821762, 48.931007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.660572, 30.989584, 48.602951>,  <27.767248, 30.423012, 48.978420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.660572, 30.989584, 48.602951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.060097, 30.977032, 48.588058>,  <28.299812, 30.969501, 48.579124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.060097, 30.977032, 48.588058>,  <27.660572, 30.989584, 48.602951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.060097, 30.977032, 48.588058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021045, 0.411272, -0.911270,
		0.043906, 0.910972, 0.410124,
		0.998814, -0.031379, -0.037228,
		28.359741, 30.967617, 48.576889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.917721, 31.583651, 48.255917>,  <27.660572, 30.989584, 48.602951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.917721, 31.583651, 48.255917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.225883, 31.329046, 48.241356>,  <28.410782, 31.176283, 48.232620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.225883, 31.329046, 48.241356>,  <27.917721, 31.583651, 48.255917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.225883, 31.329046, 48.241356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205171, 0.301578, -0.931105,
		0.603636, 0.709862, 0.362932,
		0.770408, -0.636511, -0.036400,
		28.457006, 31.138092, 48.230434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.586670, 31.949528, 48.063225>,  <27.917721, 31.583651, 48.255917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.586670, 31.949528, 48.063225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.615879, 31.558800, 47.982738>,  <28.633404, 31.324362, 47.934448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.615879, 31.558800, 47.982738>,  <28.586670, 31.949528, 48.063225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.615879, 31.558800, 47.982738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439110, 0.212637, -0.872908,
		0.895461, -0.024615, 0.444459,
		0.073022, -0.976821, -0.201216,
		28.637785, 31.265753, 47.922375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.214968, 32.016373, 47.629051>,  <28.586670, 31.949528, 48.063225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.214968, 32.016373, 47.629051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.023760, 31.670584, 47.566849>,  <28.909035, 31.463110, 47.529526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.023760, 31.670584, 47.566849>,  <29.214968, 32.016373, 47.629051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.023760, 31.670584, 47.566849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183889, 0.074629, -0.980110,
		0.858885, -0.497108, 0.123293,
		-0.478019, -0.864474, -0.155511,
		28.880354, 31.411242, 47.520195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.725037, 31.512445, 47.333591>,  <29.214968, 32.016373, 47.629051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.725037, 31.512445, 47.333591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.354687, 31.422577, 47.212082>,  <29.132477, 31.368656, 47.139175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.354687, 31.422577, 47.212082>,  <29.725037, 31.512445, 47.333591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.354687, 31.422577, 47.212082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328474, -0.081313, -0.941006,
		0.186717, -0.971036, 0.149084,
		-0.925874, -0.224672, -0.303778,
		29.076925, 31.355175, 47.120949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.820745, 30.961277, 46.965206>,  <29.725037, 31.512445, 47.333591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.820745, 30.961277, 46.965206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.473480, 31.123226, 46.850407>,  <29.265121, 31.220396, 46.781525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.473480, 31.123226, 46.850407>,  <29.820745, 30.961277, 46.965206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.473480, 31.123226, 46.850407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235332, -0.173300, -0.956340,
		-0.436934, -0.897800, 0.055173,
		-0.868163, 0.404873, -0.287001,
		29.213032, 31.244688, 46.764305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.682186, 30.677540, 46.269035>,  <29.820745, 30.961277, 46.965206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.682186, 30.677540, 46.269035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.407373, 30.968048, 46.278160>,  <29.242485, 31.142353, 46.283634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.407373, 30.968048, 46.278160>,  <29.682186, 30.677540, 46.269035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.407373, 30.968048, 46.278160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148800, 0.171348, -0.973909,
		-0.711228, -0.665712, -0.225791,
		-0.687032, 0.726269, 0.022809,
		29.201263, 31.185928, 46.285004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.339542, 30.487051, 45.731983>,  <29.682186, 30.677540, 46.269035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.339542, 30.487051, 45.731983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.246016, 30.873875, 45.772236>,  <29.189899, 31.105968, 45.796387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.246016, 30.873875, 45.772236>,  <29.339542, 30.487051, 45.731983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.246016, 30.873875, 45.772236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014654, 0.106991, -0.994152,
		-0.972170, -0.230977, -0.039187,
		-0.233819, 0.967059, 0.100629,
		29.175869, 31.163992, 45.802425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.826857, 30.531898, 45.281139>,  <29.339542, 30.487051, 45.731983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.826857, 30.531898, 45.281139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.966156, 30.895725, 45.371834>,  <29.049736, 31.114021, 45.426250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.966156, 30.895725, 45.371834>,  <28.826857, 30.531898, 45.281139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.966156, 30.895725, 45.371834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032362, 0.253400, -0.966820,
		-0.936843, 0.329357, 0.117682,
		0.348250, 0.909567, 0.226738,
		29.070631, 31.168596, 45.439854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.375826, 31.058540, 44.791786>,  <28.826857, 30.531898, 45.281139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.375826, 31.058540, 44.791786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.708094, 31.248808, 44.907524>,  <28.907455, 31.362968, 44.976967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.708094, 31.248808, 44.907524>,  <28.375826, 31.058540, 44.791786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.708094, 31.248808, 44.907524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115236, 0.361558, -0.925201,
		-0.544707, 0.801881, 0.245522,
		0.830672, 0.475670, 0.289349,
		28.957294, 31.391508, 44.994328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.337967, 31.645466, 44.398125>,  <28.375826, 31.058540, 44.791786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.337967, 31.645466, 44.398125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.716366, 31.638004, 44.527580>,  <28.943405, 31.633528, 44.605255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.716366, 31.638004, 44.527580>,  <28.337967, 31.645466, 44.398125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.716366, 31.638004, 44.527580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318565, 0.238475, -0.917413,
		-0.060069, 0.970969, 0.231539,
		0.945996, -0.018652, 0.323641,
		29.000164, 31.632408, 44.624672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.689140, 32.232384, 44.112652>,  <28.337967, 31.645466, 44.398125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.689140, 32.232384, 44.112652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.986582, 31.991615, 44.229099>,  <29.165047, 31.847155, 44.298969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.986582, 31.991615, 44.229099>,  <28.689140, 32.232384, 44.112652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.986582, 31.991615, 44.229099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467183, 0.156258, -0.870244,
		0.478327, 0.783120, 0.397400,
		0.743602, -0.601919, 0.291118,
		29.209661, 31.811039, 44.316433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.259493, 32.505768, 43.930119>,  <28.689140, 32.232384, 44.112652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.259493, 32.505768, 43.930119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.374273, 32.124287, 43.966145>,  <29.443142, 31.895397, 43.987762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.374273, 32.124287, 43.966145>,  <29.259493, 32.505768, 43.930119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.374273, 32.124287, 43.966145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452228, 0.051976, -0.890387,
		0.844483, 0.296227, 0.446205,
		0.286949, -0.953702, 0.090069,
		29.460358, 31.838177, 43.993164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.013014, 32.501656, 43.749638>,  <29.259493, 32.505768, 43.930119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.013014, 32.501656, 43.749638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.858606, 32.135448, 43.704357>,  <29.765963, 31.915724, 43.677189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.858606, 32.135448, 43.704357>,  <30.013014, 32.501656, 43.749638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.858606, 32.135448, 43.704357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461313, -0.085312, -0.883126,
		0.798862, -0.393124, 0.455272,
		-0.386019, -0.915519, -0.113201,
		29.742800, 31.860792, 43.670399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.563059, 32.006813, 43.567963>,  <30.013014, 32.501656, 43.749638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.563059, 32.006813, 43.567963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.222534, 31.843912, 43.435654>,  <30.018219, 31.746170, 43.356266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.222534, 31.843912, 43.435654>,  <30.563059, 32.006813, 43.567963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.222534, 31.843912, 43.435654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395034, -0.082638, -0.914942,
		0.345281, -0.909567, 0.231231,
		-0.851310, -0.407257, -0.330777,
		29.967140, 31.721735, 43.336422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.825903, 31.490080, 43.161522>,  <30.563059, 32.006813, 43.567963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.825903, 31.490080, 43.161522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.445711, 31.544252, 43.049633>,  <30.217596, 31.576756, 42.982498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.445711, 31.544252, 43.049633>,  <30.825903, 31.490080, 43.161522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.445711, 31.544252, 43.049633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269701, -0.087808, -0.958933,
		-0.154435, -0.986888, 0.046933,
		-0.950480, 0.135434, -0.279725,
		30.160566, 31.584881, 42.965717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.823818, 31.083887, 42.674873>,  <30.825903, 31.490080, 43.161522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.823818, 31.083887, 42.674873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.492802, 31.293745, 42.594952>,  <30.294191, 31.419661, 42.546997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.492802, 31.293745, 42.594952>,  <30.823818, 31.083887, 42.674873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.492802, 31.293745, 42.594952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108157, -0.200241, -0.973758,
		-0.550886, -0.827436, 0.108963,
		-0.827542, 0.524645, -0.199803,
		30.244539, 31.451138, 42.535011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.485231, 30.711424, 42.161800>,  <30.823818, 31.083887, 42.674873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.485231, 30.711424, 42.161800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.311586, 31.070179, 42.127995>,  <30.207399, 31.285431, 42.107712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.311586, 31.070179, 42.127995>,  <30.485231, 30.711424, 42.161800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.311586, 31.070179, 42.127995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145097, -0.022980, -0.989150,
		-0.889097, -0.441665, -0.120160,
		-0.434112, 0.896885, -0.084516,
		30.181353, 31.339245, 42.102638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.096766, 30.615322, 41.580406>,  <30.485231, 30.711424, 42.161800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.096766, 30.615322, 41.580406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.113096, 31.014259, 41.604542>,  <30.122894, 31.253622, 41.619022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.113096, 31.014259, 41.604542>,  <30.096766, 30.615322, 41.580406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.113096, 31.014259, 41.604542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191302, 0.051470, -0.980181,
		-0.980682, 0.051561, -0.188692,
		0.040827, 0.997343, 0.060339,
		30.125343, 31.313461, 41.622643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.767010, 30.870003, 41.023060>,  <30.096766, 30.615322, 41.580406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.767010, 30.870003, 41.023060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.956219, 31.211531, 41.110001>,  <30.069744, 31.416449, 41.162163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.956219, 31.211531, 41.110001>,  <29.767010, 30.870003, 41.023060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.956219, 31.211531, 41.110001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325252, 0.060042, -0.943719,
		-0.818818, 0.517092, -0.249306,
		0.473021, 0.853821, 0.217349,
		30.098125, 31.467676, 41.175205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.497231, 31.502884, 40.641613>,  <29.767010, 30.870003, 41.023060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.497231, 31.502884, 40.641613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.877470, 31.550972, 40.756092>,  <30.105614, 31.579824, 40.824780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.877470, 31.550972, 40.756092>,  <29.497231, 31.502884, 40.641613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.877470, 31.550972, 40.756092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257408, 0.210023, -0.943203,
		-0.173499, 0.970277, 0.168702,
		0.950599, 0.120220, 0.286196,
		30.162649, 31.587038, 40.841949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.732021, 32.135269, 40.331524>,  <29.497231, 31.502884, 40.641613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.732021, 32.135269, 40.331524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.069654, 31.959988, 40.455139>,  <30.272234, 31.854820, 40.529308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.069654, 31.959988, 40.455139>,  <29.732021, 32.135269, 40.331524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.069654, 31.959988, 40.455139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491150, 0.400554, -0.773517,
		0.215167, 0.804697, 0.553322,
		0.844082, -0.438200, 0.309041,
		30.322880, 31.828527, 40.547852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.114559, 32.609875, 40.207321>,  <29.732021, 32.135269, 40.331524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.114559, 32.609875, 40.207321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.349411, 32.286545, 40.224689>,  <30.490322, 32.092545, 40.235111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.349411, 32.286545, 40.224689>,  <30.114559, 32.609875, 40.207321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.349411, 32.286545, 40.224689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521168, 0.336418, -0.784351,
		0.619407, 0.483143, 0.618796,
		0.587128, -0.808329, 0.043419,
		30.525549, 32.044044, 40.237717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.876623, 32.820774, 40.145340>,  <30.114559, 32.609875, 40.207321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.876623, 32.820774, 40.145340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.824799, 32.445225, 40.017761>,  <30.793703, 32.219894, 39.941216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.824799, 32.445225, 40.017761>,  <30.876623, 32.820774, 40.145340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.824799, 32.445225, 40.017761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284255, 0.272988, -0.919063,
		0.949954, -0.209738, 0.231512,
		-0.129562, -0.938876, -0.318945,
		30.785931, 32.163563, 39.922077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.387590, 32.792740, 39.673248>,  <30.876623, 32.820774, 40.145340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.387590, 32.792740, 39.673248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.147259, 32.480263, 39.605434>,  <31.003059, 32.292778, 39.564747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.147259, 32.480263, 39.605434>,  <31.387590, 32.792740, 39.673248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.147259, 32.480263, 39.605434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350149, -0.066535, -0.934328,
		0.718609, -0.620736, 0.313509,
		-0.600831, -0.781191, -0.169537,
		30.967009, 32.245907, 39.554573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.851484, 32.246349, 39.539631>,  <31.387590, 32.792740, 39.673248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.851484, 32.246349, 39.539631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.489553, 32.228958, 39.370209>,  <31.272396, 32.218521, 39.268555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.489553, 32.228958, 39.370209>,  <31.851484, 32.246349, 39.539631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.489553, 32.228958, 39.370209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400105, 0.253402, -0.880740,
		0.145622, -0.966383, -0.211890,
		-0.904826, -0.043477, -0.423556,
		31.218105, 32.215916, 39.243141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.928316, 32.033291, 38.822582>,  <31.851484, 32.246349, 39.539631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.928316, 32.033291, 38.822582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.556562, 32.180542, 38.833393>,  <31.333511, 32.268890, 38.839878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.556562, 32.180542, 38.833393>,  <31.928316, 32.033291, 38.822582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.556562, 32.180542, 38.833393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142120, 0.424449, -0.894229,
		-0.340660, -0.827240, -0.446794,
		-0.929383, 0.368126, 0.027026,
		31.277748, 32.290981, 38.841499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.700045, 31.898041, 38.065933>,  <31.928316, 32.033291, 38.822582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.700045, 31.898041, 38.065933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.440386, 32.163792, 38.214100>,  <31.284590, 32.323242, 38.303001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.440386, 32.163792, 38.214100>,  <31.700045, 31.898041, 38.065933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.440386, 32.163792, 38.214100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111598, 0.398517, -0.910346,
		-0.752431, -0.632287, -0.184553,
		-0.649148, 0.664378, 0.370419,
		31.245642, 32.363106, 38.325226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.130322, 32.024101, 37.531700>,  <31.700045, 31.898041, 38.065933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.130322, 32.024101, 37.531700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.090370, 32.324619, 37.792648>,  <31.066399, 32.504929, 37.949215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.090370, 32.324619, 37.792648>,  <31.130322, 32.024101, 37.531700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.090370, 32.324619, 37.792648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248618, 0.616006, -0.747480,
		-0.963438, -0.236847, 0.125260,
		-0.099878, 0.751293, 0.652368,
		31.060408, 32.550007, 37.988358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.482483, 32.415211, 37.277748>,  <31.130322, 32.024101, 37.531700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.482483, 32.415211, 37.277748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.725262, 32.649029, 37.493126>,  <30.870930, 32.789318, 37.622353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.725262, 32.649029, 37.493126>,  <30.482483, 32.415211, 37.277748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.725262, 32.649029, 37.493126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013553, 0.685021, -0.728397,
		-0.794627, 0.434801, 0.423694,
		0.606947, 0.584546, 0.538443,
		30.907347, 32.824394, 37.654659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.190153, 33.165161, 37.167721>,  <30.482483, 32.415211, 37.277748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.190153, 33.165161, 37.167721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.565586, 33.192017, 37.303104>,  <30.790846, 33.208130, 37.384335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.565586, 33.192017, 37.303104>,  <30.190153, 33.165161, 37.167721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.565586, 33.192017, 37.303104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194618, 0.706972, -0.679937,
		-0.284934, 0.704048, 0.650484,
		0.938582, 0.067141, 0.338461,
		30.847160, 33.212158, 37.404644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.264366, 33.901047, 37.142616>,  <30.190153, 33.165161, 37.167721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.264366, 33.901047, 37.142616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.627285, 33.737526, 37.181999>,  <30.845037, 33.639416, 37.205627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.627285, 33.737526, 37.181999>,  <30.264366, 33.901047, 37.142616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.627285, 33.737526, 37.181999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371418, 0.669372, -0.643420,
		0.197124, 0.620342, 0.759156,
		0.907298, -0.408798, 0.098457,
		30.899475, 33.614887, 37.211536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.796564, 34.367878, 37.361622>,  <30.264366, 33.901047, 37.142616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.796564, 34.367878, 37.361622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.992992, 34.086433, 37.156185>,  <31.110849, 33.917564, 37.032925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.992992, 34.086433, 37.156185>,  <30.796564, 34.367878, 37.361622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.992992, 34.086433, 37.156185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207591, 0.667112, -0.715449,
		0.846022, 0.244721, 0.473664,
		0.491073, -0.703614, -0.513590,
		31.140314, 33.875351, 37.002110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.447330, 34.672993, 37.216358>,  <30.796564, 34.367878, 37.361622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.447330, 34.672993, 37.216358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.393896, 34.374523, 36.955475>,  <31.361835, 34.195442, 36.798943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.393896, 34.374523, 36.955475>,  <31.447330, 34.672993, 37.216358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.393896, 34.374523, 36.955475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302844, 0.595894, -0.743771,
		0.943631, -0.296876, 0.146371,
		-0.133586, -0.746173, -0.652212,
		31.353821, 34.150673, 36.759811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.047646, 34.688839, 36.778099>,  <31.447330, 34.672993, 37.216358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.047646, 34.688839, 36.778099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.761671, 34.487110, 36.584389>,  <31.590086, 34.366074, 36.468163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.761671, 34.487110, 36.584389>,  <32.047646, 34.688839, 36.778099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.761671, 34.487110, 36.584389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200168, 0.516004, -0.832870,
		0.669924, -0.692386, -0.267961,
		-0.714937, -0.504323, -0.484277,
		31.547190, 34.335812, 36.439106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.335979, 34.537117, 36.073723>,  <32.047646, 34.688839, 36.778099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.335979, 34.537117, 36.073723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.939220, 34.531826, 36.023170>,  <31.701166, 34.528652, 35.992840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.939220, 34.531826, 36.023170>,  <32.335979, 34.537117, 36.073723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.939220, 34.531826, 36.023170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110523, 0.400922, -0.909421,
		0.062700, -0.916017, -0.396210,
		-0.991894, -0.013231, -0.126378,
		31.641653, 34.527855, 35.985256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.717609, 34.096554, 36.535538>,  <32.335979, 34.537117, 36.073723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.717609, 34.096554, 36.535538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.048649, 33.897465, 36.431732>,  <33.247272, 33.778011, 36.369450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.048649, 33.897465, 36.431732>,  <32.717609, 34.096554, 36.535538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.048649, 33.897465, 36.431732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158838, -0.235776, 0.958739,
		-0.538377, -0.834672, -0.116070,
		0.827599, -0.497727, -0.259514,
		33.296928, 33.748146, 36.353878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.705242, 33.470955, 36.893253>,  <32.717609, 34.096554, 36.535538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.705242, 33.470955, 36.893253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.088264, 33.543995, 36.804043>,  <33.318077, 33.587818, 36.750515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.088264, 33.543995, 36.804043>,  <32.705242, 33.470955, 36.893253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.088264, 33.543995, 36.804043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250162, -0.142107, 0.957718,
		0.143183, -0.972864, -0.181755,
		0.957558, 0.182597, -0.223027,
		33.375530, 33.598774, 36.737133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.146416, 32.908279, 37.083889>,  <32.705242, 33.470955, 36.893253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.146416, 32.908279, 37.083889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.368866, 33.240574, 37.074078>,  <33.502338, 33.439949, 37.068192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.368866, 33.240574, 37.074078>,  <33.146416, 32.908279, 37.083889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.368866, 33.240574, 37.074078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368580, -0.220077, 0.903169,
		0.744896, -0.511319, -0.428583,
		0.556129, 0.830734, -0.024528,
		33.535706, 33.489796, 37.066719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.785221, 32.729790, 37.211937>,  <33.146416, 32.908279, 37.083889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.785221, 32.729790, 37.211937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.779316, 33.120010, 37.299652>,  <33.775772, 33.354141, 37.352283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.779316, 33.120010, 37.299652>,  <33.785221, 32.729790, 37.211937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.779316, 33.120010, 37.299652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308521, -0.204170, 0.929048,
		0.951103, 0.081368, -0.297963,
		-0.014760, 0.975548, 0.219290,
		33.774887, 33.412674, 37.365440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.394279, 32.837990, 37.510738>,  <33.785221, 32.729790, 37.211937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.394279, 32.837990, 37.510738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.155022, 33.129433, 37.644218>,  <34.011467, 33.304298, 37.724304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.155022, 33.129433, 37.644218>,  <34.394279, 32.837990, 37.510738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.155022, 33.129433, 37.644218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396979, -0.092327, 0.913172,
		0.696153, 0.678680, -0.234017,
		-0.598145, 0.728608, 0.333696,
		33.975578, 33.348015, 37.744328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.781658, 33.190643, 38.143185>,  <34.394279, 32.837990, 37.510738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.781658, 33.190643, 38.143185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.409996, 33.332008, 38.186573>,  <34.186996, 33.416828, 38.212605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.409996, 33.332008, 38.186573>,  <34.781658, 33.190643, 38.143185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.409996, 33.332008, 38.186573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013069, -0.261823, 0.965027,
		0.369454, 0.898080, 0.238656,
		-0.929157, 0.353414, 0.108469,
		34.131248, 33.438034, 38.219112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.810249, 33.717892, 38.758060>,  <34.781658, 33.190643, 38.143185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.810249, 33.717892, 38.758060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.439224, 33.589138, 38.682140>,  <34.216610, 33.511887, 38.636589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.439224, 33.589138, 38.682140>,  <34.810249, 33.717892, 38.758060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.439224, 33.589138, 38.682140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110949, -0.247780, 0.962442,
		-0.356827, 0.913780, 0.194118,
		-0.927559, -0.321888, -0.189798,
		34.160957, 33.492573, 38.625202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.231750, 34.203556, 39.245422>,  <34.810249, 33.717892, 38.758060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.231750, 34.203556, 39.245422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.136166, 33.832535, 39.130501>,  <34.078815, 33.609921, 39.061550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.136166, 33.832535, 39.130501>,  <34.231750, 34.203556, 39.245422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.136166, 33.832535, 39.130501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157531, -0.254923, 0.954043,
		-0.958164, 0.273244, -0.085200,
		-0.238967, -0.927552, -0.287302,
		34.064476, 33.554268, 39.044312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.667545, 34.086281, 39.760384>,  <34.231750, 34.203556, 39.245422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.667545, 34.086281, 39.760384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.761559, 33.733665, 39.596603>,  <33.817966, 33.522095, 39.498337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.761559, 33.733665, 39.596603>,  <33.667545, 34.086281, 39.760384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.761559, 33.733665, 39.596603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198380, -0.455886, 0.867648,
		-0.951527, -0.122702, -0.282029,
		0.235035, -0.881540, -0.409446,
		33.832069, 33.469204, 39.473770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.182667, 33.679955, 40.013355>,  <33.667545, 34.086281, 39.760384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.182667, 33.679955, 40.013355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.450115, 33.405174, 39.899487>,  <33.610584, 33.240307, 39.831165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.450115, 33.405174, 39.899487>,  <33.182667, 33.679955, 40.013355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.450115, 33.405174, 39.899487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208535, -0.540694, 0.814962,
		-0.713761, -0.485539, -0.504775,
		0.668624, -0.686951, -0.284674,
		33.650703, 33.199089, 39.814083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.822960, 33.148495, 40.082531>,  <33.182667, 33.679955, 40.013355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.822960, 33.148495, 40.082531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.202637, 33.023754, 40.065617>,  <33.430443, 32.948910, 40.055470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.202637, 33.023754, 40.065617>,  <32.822960, 33.148495, 40.082531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.202637, 33.023754, 40.065617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161863, -0.598993, 0.784225,
		-0.269893, -0.737532, -0.619034,
		0.949188, -0.311856, -0.042285,
		33.487392, 32.930199, 40.052933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.848942, 32.306747, 40.258377>,  <32.822960, 33.148495, 40.082531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.848942, 32.306747, 40.258377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.215637, 32.453487, 40.321629>,  <33.435654, 32.541531, 40.359581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.215637, 32.453487, 40.321629>,  <32.848942, 32.306747, 40.258377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.215637, 32.453487, 40.321629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025596, -0.448961, 0.893184,
		0.398661, -0.814772, -0.420971,
		0.916741, 0.366853, 0.158128,
		33.490658, 32.563541, 40.369068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.323246, 31.726151, 40.386055>,  <32.848942, 32.306747, 40.258377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.323246, 31.726151, 40.386055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.459824, 32.066875, 40.544968>,  <33.541771, 32.271313, 40.640316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.459824, 32.066875, 40.544968>,  <33.323246, 31.726151, 40.386055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.459824, 32.066875, 40.544968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003203, -0.421622, 0.906766,
		0.939898, -0.310881, -0.141231,
		0.341442, 0.851815, 0.397278,
		33.562256, 32.322418, 40.664150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.802555, 31.485929, 40.918903>,  <33.323246, 31.726151, 40.386055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.802555, 31.485929, 40.918903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.704201, 31.865345, 40.998718>,  <33.645187, 32.092995, 41.046608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.704201, 31.865345, 40.998718>,  <33.802555, 31.485929, 40.918903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.704201, 31.865345, 40.998718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181357, -0.247240, 0.951831,
		0.952182, 0.197852, 0.232817,
		-0.245883, 0.948539, 0.199535,
		33.630436, 32.149906, 41.058578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.282524, 31.794603, 41.440155>,  <33.802555, 31.485929, 40.918903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.282524, 31.794603, 41.440155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.982754, 32.057304, 41.473709>,  <33.802891, 32.214924, 41.493843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.982754, 32.057304, 41.473709>,  <34.282524, 31.794603, 41.440155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.982754, 32.057304, 41.473709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066214, -0.200414, 0.977471,
		0.658769, 0.726987, 0.193682,
		-0.749426, 0.656753, 0.083890,
		33.757927, 32.254330, 41.498875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.398308, 32.101372, 42.090961>,  <34.282524, 31.794603, 41.440155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.398308, 32.101372, 42.090961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.022865, 32.210110, 42.005989>,  <33.797600, 32.275352, 41.955006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.022865, 32.210110, 42.005989>,  <34.398308, 32.101372, 42.090961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.022865, 32.210110, 42.005989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235177, -0.053650, 0.970471,
		0.252418, 0.960845, 0.114287,
		-0.938604, 0.271842, -0.212427,
		33.741283, 32.291664, 41.942261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.154385, 32.636284, 42.609310>,  <34.398308, 32.101372, 42.090961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.154385, 32.636284, 42.609310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.831783, 32.463921, 42.447384>,  <33.638222, 32.360504, 42.350227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.831783, 32.463921, 42.447384>,  <34.154385, 32.636284, 42.609310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.831783, 32.463921, 42.447384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438283, -0.023821, 0.898522,
		-0.396819, 0.902084, -0.169646,
		-0.806500, -0.430903, -0.404820,
		33.589832, 32.334648, 42.325939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.601986, 32.948910, 42.789509>,  <34.154385, 32.636284, 42.609310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.601986, 32.948910, 42.789509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.412422, 32.611538, 42.688286>,  <33.298683, 32.409115, 42.627552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.412422, 32.611538, 42.688286>,  <33.601986, 32.948910, 42.789509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.412422, 32.611538, 42.688286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534992, 0.047515, 0.843520,
		-0.699425, 0.535136, -0.473745,
		-0.473907, -0.843429, -0.253061,
		33.270248, 32.358509, 42.612370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.785435, 33.013485, 42.979073>,  <33.601986, 32.948910, 42.789509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.785435, 33.013485, 42.979073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.865910, 32.621765, 42.970127>,  <32.914196, 32.386734, 42.964760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.865910, 32.621765, 42.970127>,  <32.785435, 33.013485, 42.979073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.865910, 32.621765, 42.970127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154460, -0.054259, 0.986508,
		-0.967299, -0.195017, -0.162178,
		0.201186, -0.979298, -0.022363,
		32.926266, 32.327976, 42.963417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.259212, 32.700638, 43.246391>,  <32.785435, 33.013485, 42.979073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.259212, 32.700638, 43.246391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.521770, 32.405182, 43.307793>,  <32.679306, 32.227909, 43.344635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.521770, 32.405182, 43.307793>,  <32.259212, 32.700638, 43.246391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.521770, 32.405182, 43.307793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337600, -0.105620, 0.935345,
		-0.674667, -0.665778, -0.318692,
		0.656392, -0.738637, 0.153508,
		32.718689, 32.183590, 43.353844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.865166, 32.026947, 43.350864>,  <32.259212, 32.700638, 43.246391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.865166, 32.026947, 43.350864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.235462, 31.979309, 43.494431>,  <32.457642, 31.950726, 43.580570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.235462, 31.979309, 43.494431>,  <31.865166, 32.026947, 43.350864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.235462, 31.979309, 43.494431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375799, -0.395614, 0.838012,
		0.042191, -0.910663, -0.410991,
		0.925740, -0.119094, 0.358918,
		32.513184, 31.943581, 43.602104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.869555, 31.395515, 43.579128>,  <31.865166, 32.026947, 43.350864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.869555, 31.395515, 43.579128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.167877, 31.545401, 43.799442>,  <32.346870, 31.635332, 43.931629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.167877, 31.545401, 43.799442>,  <31.869555, 31.395515, 43.579128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.167877, 31.545401, 43.799442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394992, -0.417036, 0.818574,
		0.536428, -0.828052, -0.163019,
		0.745806, 0.374715, 0.550783,
		32.391621, 31.657816, 43.964676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.052750, 30.833172, 44.140560>,  <31.869555, 31.395515, 43.579128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.052750, 30.833172, 44.140560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.184731, 31.192616, 44.256237>,  <32.263920, 31.408281, 44.325645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.184731, 31.192616, 44.256237>,  <32.052750, 30.833172, 44.140560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.184731, 31.192616, 44.256237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418767, -0.135227, 0.897969,
		0.846031, -0.417390, 0.331690,
		0.329949, 0.898610, 0.289196,
		32.283714, 31.462198, 44.342995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.149712, 30.673820, 44.825539>,  <32.052750, 30.833172, 44.140560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.149712, 30.673820, 44.825539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.169147, 31.073038, 44.809799>,  <32.180809, 31.312569, 44.800354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.169147, 31.073038, 44.809799>,  <32.149712, 30.673820, 44.825539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.169147, 31.073038, 44.809799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307600, 0.052433, 0.950070,
		0.950274, -0.034058, 0.309546,
		0.048588, 0.998044, -0.039349,
		32.183723, 31.372452, 44.797993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.418495, 30.871778, 45.512581>,  <32.149712, 30.673820, 44.825539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.418495, 30.871778, 45.512581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.271259, 31.210859, 45.359787>,  <32.182919, 31.414309, 45.268112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.271259, 31.210859, 45.359787>,  <32.418495, 30.871778, 45.512581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.271259, 31.210859, 45.359787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346631, 0.256100, 0.902363,
		0.862762, 0.464556, 0.199573,
		-0.368088, 0.847703, -0.381983,
		32.160831, 31.465170, 45.245193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.654297, 31.496593, 45.810932>,  <32.418495, 30.871778, 45.512581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.654297, 31.496593, 45.810932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.314911, 31.636513, 45.652061>,  <32.111279, 31.720465, 45.556740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.314911, 31.636513, 45.652061>,  <32.654297, 31.496593, 45.810932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.314911, 31.636513, 45.652061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197439, 0.487078, 0.850749,
		0.491049, 0.800247, -0.344203,
		-0.848463, 0.349800, -0.397179,
		32.060371, 31.741453, 45.532909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.626465, 32.039478, 46.218632>,  <32.654297, 31.496593, 45.810932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.626465, 32.039478, 46.218632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.258911, 31.969736, 46.077068>,  <32.038380, 31.927891, 45.992130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.258911, 31.969736, 46.077068>,  <32.626465, 32.039478, 46.218632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.258911, 31.969736, 46.077068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391188, 0.286234, 0.874667,
		-0.051202, 0.942163, -0.331221,
		-0.918885, -0.174354, -0.353907,
		31.983246, 31.917429, 45.970898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.328827, 32.572071, 46.448593>,  <32.626465, 32.039478, 46.218632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.328827, 32.572071, 46.448593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.023678, 32.326561, 46.367302>,  <31.840588, 32.179253, 46.318527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.023678, 32.326561, 46.367302>,  <32.328827, 32.572071, 46.448593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.023678, 32.326561, 46.367302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447160, 0.273841, 0.851504,
		-0.466982, 0.740465, -0.483363,
		-0.762873, -0.613778, -0.203228,
		31.794815, 32.142429, 46.306335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.721294, 32.955353, 46.532909>,  <32.328827, 32.572071, 46.448593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.721294, 32.955353, 46.532909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.604485, 32.575138, 46.575245>,  <31.534399, 32.347008, 46.600647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.604485, 32.575138, 46.575245>,  <31.721294, 32.955353, 46.532909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.604485, 32.575138, 46.575245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555135, 0.258573, 0.790548,
		-0.778811, 0.172105, -0.603185,
		-0.292024, -0.950536, 0.105838,
		31.516878, 32.289978, 46.606995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.038414, 32.953579, 46.590622>,  <31.721294, 32.955353, 46.532909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.038414, 32.953579, 46.590622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.140839, 32.607716, 46.763504>,  <31.202293, 32.400196, 46.867233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.140839, 32.607716, 46.763504>,  <31.038414, 32.953579, 46.590622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.140839, 32.607716, 46.763504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517256, 0.255153, 0.816911,
		-0.816627, -0.432737, -0.381915,
		0.256060, -0.864659, 0.432201,
		31.217657, 32.348316, 46.893166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.593853, 32.789806, 47.090408>,  <31.038414, 32.953579, 46.590622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.593853, 32.789806, 47.090408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.878286, 32.542263, 47.223896>,  <31.048946, 32.393738, 47.303989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.878286, 32.542263, 47.223896>,  <30.593853, 32.789806, 47.090408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.878286, 32.542263, 47.223896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362562, 0.083927, 0.928173,
		-0.602419, -0.781004, -0.164697,
		0.711084, -0.618862, 0.333721,
		31.091612, 32.356606, 47.324013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.202818, 32.447327, 47.644051>,  <30.593853, 32.789806, 47.090408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.202818, 32.447327, 47.644051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.590570, 32.386280, 47.721001>,  <30.823221, 32.349651, 47.767170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.590570, 32.386280, 47.721001>,  <30.202818, 32.447327, 47.644051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.590570, 32.386280, 47.721001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144047, 0.281045, 0.948822,
		-0.198870, -0.947482, 0.250456,
		0.969382, -0.152615, 0.192374,
		30.881386, 32.340496, 47.778713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.256430, 32.086964, 48.217419>,  <30.202818, 32.447327, 47.644051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.256430, 32.086964, 48.217419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.624474, 32.243580, 48.213520>,  <30.845301, 32.337547, 48.211182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.624474, 32.243580, 48.213520>,  <30.256430, 32.086964, 48.217419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.624474, 32.243580, 48.213520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148122, 0.370917, 0.916777,
		0.362560, -0.842096, 0.399280,
		0.920115, 0.391529, -0.009747,
		30.900507, 32.361042, 48.210594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.501970, 32.090633, 48.884792>,  <30.256430, 32.086964, 48.217419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.501970, 32.090633, 48.884792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.768791, 32.354195, 48.745716>,  <30.928885, 32.512333, 48.662270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.768791, 32.354195, 48.745716>,  <30.501970, 32.090633, 48.884792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.768791, 32.354195, 48.745716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042485, 0.499575, 0.865228,
		0.743799, -0.562380, 0.361235,
		0.667051, 0.658903, -0.347691,
		30.968906, 32.551865, 48.641411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.015755, 32.089680, 49.359371>,  <30.501970, 32.090633, 48.884792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.015755, 32.089680, 49.359371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.020218, 32.441273, 49.168682>,  <31.022896, 32.652229, 49.054268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.020218, 32.441273, 49.168682>,  <31.015755, 32.089680, 49.359371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.020218, 32.441273, 49.168682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022748, 0.476849, 0.878691,
		0.999679, 0.001040, 0.025316,
		0.011158, 0.878984, -0.476720,
		31.023565, 32.704967, 49.025665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.432205, 32.595760, 49.756981>,  <31.015755, 32.089680, 49.359371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.432205, 32.595760, 49.756981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.215271, 32.838303, 49.524361>,  <31.085110, 32.983829, 49.384789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.215271, 32.838303, 49.524361>,  <31.432205, 32.595760, 49.756981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.215271, 32.838303, 49.524361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128473, 0.624193, 0.770635,
		0.830280, 0.492657, -0.260623,
		-0.542338, 0.606359, -0.581548,
		31.052570, 33.020210, 49.349895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.712891, 33.290001, 49.887791>,  <31.432205, 32.595760, 49.756981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.712891, 33.290001, 49.887791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.337210, 33.324944, 49.754967>,  <31.111801, 33.345909, 49.675270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.337210, 33.324944, 49.754967>,  <31.712891, 33.290001, 49.887791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.337210, 33.324944, 49.754967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217374, 0.597342, 0.771965,
		0.265792, 0.797214, -0.542037,
		-0.939204, 0.087358, -0.332062,
		31.055449, 33.351151, 49.655350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.467974, 33.995678, 50.118229>,  <31.712891, 33.290001, 49.887791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.467974, 33.995678, 50.118229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.163715, 33.743687, 50.055561>,  <30.981159, 33.592491, 50.017960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.163715, 33.743687, 50.055561>,  <31.467974, 33.995678, 50.118229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.163715, 33.743687, 50.055561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346395, 0.189779, 0.918692,
		-0.549022, 0.753070, -0.362576,
		-0.760648, -0.629976, -0.156666,
		30.935520, 33.554695, 50.008560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.797514, 34.316628, 50.789124>,  <31.467974, 33.995678, 50.118229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.797514, 34.316628, 50.789124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.079140, 34.592609, 50.721882>,  <32.248116, 34.758198, 50.681538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.079140, 34.592609, 50.721882>,  <31.797514, 34.316628, 50.789124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.079140, 34.592609, 50.721882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205717, -0.028405, -0.978199,
		-0.679685, 0.723297, 0.121936,
		0.704065, 0.689952, -0.168101,
		32.290359, 34.799595, 50.671452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.501263, 34.852245, 50.374413>,  <31.797514, 34.316628, 50.789124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.501263, 34.852245, 50.374413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.894926, 34.861221, 50.304070>,  <32.131123, 34.866608, 50.261864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.894926, 34.861221, 50.304070>,  <31.501263, 34.852245, 50.374413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.894926, 34.861221, 50.304070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171602, -0.128575, -0.976740,
		-0.044533, 0.991446, -0.122687,
		0.984159, 0.022444, -0.175860,
		32.190174, 34.867954, 50.251312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.694712, 35.386539, 49.851719>,  <31.501263, 34.852245, 50.374413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.694712, 35.386539, 49.851719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.989706, 35.117165, 49.831303>,  <32.166702, 34.955540, 49.819054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.989706, 35.117165, 49.831303>,  <31.694712, 35.386539, 49.851719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.989706, 35.117165, 49.831303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023703, 0.049724, -0.998482,
		0.674948, 0.737575, 0.020709,
		0.737484, -0.673432, -0.051044,
		32.210953, 34.915134, 49.815990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.997837, 35.695992, 49.400150>,  <31.694712, 35.386539, 49.851719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.997837, 35.695992, 49.400150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.181732, 35.343777, 49.446274>,  <32.292068, 35.132450, 49.473949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.181732, 35.343777, 49.446274>,  <31.997837, 35.695992, 49.400150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.181732, 35.343777, 49.446274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101523, -0.076883, -0.991858,
		0.882231, 0.467703, 0.054048,
		0.459740, -0.880535, 0.115311,
		32.319653, 35.079617, 49.480865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.639202, 35.748375, 49.074879>,  <31.997837, 35.695992, 49.400150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.639202, 35.748375, 49.074879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.545429, 35.359562, 49.069347>,  <32.489166, 35.126274, 49.066029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.545429, 35.359562, 49.069347>,  <32.639202, 35.748375, 49.074879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.545429, 35.359562, 49.069347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206368, -0.035866, -0.977817,
		0.949975, -0.232087, 0.209005,
		-0.234434, -0.972034, -0.013824,
		32.475098, 35.067951, 49.065201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.237404, 35.338123, 48.823181>,  <32.639202, 35.748375, 49.074879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.237404, 35.338123, 48.823181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.892975, 35.146309, 48.755543>,  <32.686317, 35.031219, 48.714958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.892975, 35.146309, 48.755543>,  <33.237404, 35.338123, 48.823181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.892975, 35.146309, 48.755543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257761, -0.124995, -0.958090,
		0.438300, -0.868576, 0.231235,
		-0.861076, -0.479534, -0.169100,
		32.634651, 35.002449, 48.704811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.449928, 34.683014, 48.566692>,  <33.237404, 35.338123, 48.823181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.449928, 34.683014, 48.566692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.065350, 34.699108, 48.457882>,  <32.834602, 34.708763, 48.392597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.065350, 34.699108, 48.457882>,  <33.449928, 34.683014, 48.566692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.065350, 34.699108, 48.457882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234797, -0.394783, -0.888266,
		-0.143125, -0.917893, 0.370118,
		-0.961450, 0.040230, -0.272022,
		32.776917, 34.711178, 48.376274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.264416, 34.010685, 48.225315>,  <33.449928, 34.683014, 48.566692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.264416, 34.010685, 48.225315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.993816, 34.276836, 48.099068>,  <32.831455, 34.436527, 48.023319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.993816, 34.276836, 48.099068>,  <33.264416, 34.010685, 48.225315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.993816, 34.276836, 48.099068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152018, -0.293172, -0.943896,
		-0.720580, -0.686527, 0.097182,
		-0.676502, 0.665380, -0.315618,
		32.790867, 34.476452, 48.004383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.969612, 33.648132, 47.708714>,  <33.264416, 34.010685, 48.225315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.969612, 33.648132, 47.708714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.853287, 34.022312, 47.628361>,  <32.783493, 34.246822, 47.580147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.853287, 34.022312, 47.628361>,  <32.969612, 33.648132, 47.708714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.853287, 34.022312, 47.628361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217877, -0.139697, -0.965927,
		-0.931643, -0.324670, -0.163189,
		-0.290810, 0.935454, -0.200886,
		32.766045, 34.302948, 47.568096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.543056, 33.584141, 47.037159>,  <32.969612, 33.648132, 47.708714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.543056, 33.584141, 47.037159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.634388, 33.971916, 47.073059>,  <32.689186, 34.204582, 47.094597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.634388, 33.971916, 47.073059>,  <32.543056, 33.584141, 47.037159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.634388, 33.971916, 47.073059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094433, 0.069695, -0.993089,
		-0.968993, 0.235226, -0.075634,
		0.228329, 0.969438, 0.089747,
		32.702888, 34.262749, 47.099983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.132488, 34.025745, 46.600960>,  <32.543056, 33.584141, 47.037159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.132488, 34.025745, 46.600960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.442177, 34.263771, 46.687195>,  <32.627991, 34.406586, 46.738934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.442177, 34.263771, 46.687195>,  <32.132488, 34.025745, 46.600960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.442177, 34.263771, 46.687195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133664, 0.179210, -0.974688,
		-0.618635, 0.783444, 0.059210,
		0.774225, 0.595062, 0.215584,
		32.674446, 34.442291, 46.751869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.966314, 34.717056, 46.352520>,  <32.132488, 34.025745, 46.600960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.966314, 34.717056, 46.352520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.362850, 34.677586, 46.387188>,  <32.600773, 34.653904, 46.407990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.362850, 34.677586, 46.387188>,  <31.966314, 34.717056, 46.352520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.362850, 34.677586, 46.387188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120247, 0.416471, -0.901162,
		0.052830, 0.903778, 0.424729,
		0.991337, -0.098680, 0.086674,
		32.660252, 34.647980, 46.413189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.254406, 35.155880, 45.824520>,  <31.966314, 34.717056, 46.352520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.254406, 35.155880, 45.824520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.570496, 34.925972, 45.909546>,  <32.760151, 34.788029, 45.960560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.570496, 34.925972, 45.909546>,  <32.254406, 35.155880, 45.824520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.570496, 34.925972, 45.909546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369123, 0.169551, -0.913784,
		0.489176, 0.800557, 0.346145,
		0.790225, -0.574771, 0.212564,
		32.807564, 34.753540, 45.973316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.801052, 35.478577, 45.437592>,  <32.254406, 35.155880, 45.824520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.801052, 35.478577, 45.437592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.936005, 35.109371, 45.511578>,  <33.016975, 34.887848, 45.555969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.936005, 35.109371, 45.511578>,  <32.801052, 35.478577, 45.437592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.936005, 35.109371, 45.511578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477657, -0.001463, -0.878545,
		0.811182, 0.384759, 0.440391,
		0.337384, -0.923016, 0.184969,
		33.037220, 34.832466, 45.567070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.513470, 35.491657, 45.416607>,  <32.801052, 35.478577, 45.437592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.513470, 35.491657, 45.416607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.385975, 35.120106, 45.341148>,  <33.309479, 34.897175, 45.295872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.385975, 35.120106, 45.341148>,  <33.513470, 35.491657, 45.416607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.385975, 35.120106, 45.341148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620374, -0.053965, -0.782448,
		0.716621, -0.366425, 0.593454,
		-0.318734, -0.928881, -0.188647,
		33.290356, 34.841442, 45.284554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.072914, 35.141460, 45.162586>,  <33.513470, 35.491657, 45.416607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.072914, 35.141460, 45.162586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.760502, 34.911514, 45.065002>,  <33.573055, 34.773544, 45.006451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.760502, 34.911514, 45.065002>,  <34.072914, 35.141460, 45.162586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.760502, 34.911514, 45.065002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483644, -0.309672, -0.818653,
		0.395071, -0.757382, 0.519895,
		-0.781030, -0.574870, -0.243961,
		33.526192, 34.739052, 44.991814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.416656, 34.608578, 44.841370>,  <34.072914, 35.141460, 45.162586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.416656, 34.608578, 44.841370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.039249, 34.564724, 44.716309>,  <33.812805, 34.538410, 44.641273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.039249, 34.564724, 44.716309>,  <34.416656, 34.608578, 44.841370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.039249, 34.564724, 44.716309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329672, -0.216691, -0.918891,
		0.032994, -0.970064, 0.240596,
		-0.943519, -0.109636, -0.312653,
		33.756195, 34.531834, 44.622513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.493637, 33.972622, 44.411762>,  <34.416656, 34.608578, 44.841370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.493637, 33.972622, 44.411762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.158226, 34.167324, 44.313831>,  <33.956978, 34.284145, 44.255074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.158226, 34.167324, 44.313831>,  <34.493637, 33.972622, 44.411762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.158226, 34.167324, 44.313831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195977, -0.149823, -0.969096,
		-0.508393, -0.860594, 0.030238,
		-0.838528, 0.486755, -0.244825,
		33.906666, 34.313351, 44.240383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.268307, 33.601204, 43.833939>,  <34.493637, 33.972622, 44.411762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.268307, 33.601204, 43.833939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.062767, 33.943089, 43.804478>,  <33.939442, 34.148220, 43.786800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.062767, 33.943089, 43.804478>,  <34.268307, 33.601204, 43.833939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.062767, 33.943089, 43.804478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161294, 0.011935, -0.986834,
		-0.842580, -0.518965, -0.143993,
		-0.513851, 0.854712, -0.073649,
		33.908611, 34.199501, 43.782383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.757576, 33.539654, 43.223759>,  <34.268307, 33.601204, 43.833939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.757576, 33.539654, 43.223759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.840633, 33.925522, 43.288620>,  <33.890469, 34.157043, 43.327538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.840633, 33.925522, 43.288620>,  <33.757576, 33.539654, 43.223759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.840633, 33.925522, 43.288620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429381, 0.059061, -0.901190,
		-0.878929, 0.256751, -0.401948,
		0.207642, 0.964671, 0.162155,
		33.902927, 34.214924, 43.337265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.619022, 33.844013, 42.603729>,  <33.757576, 33.539654, 43.223759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.619022, 33.844013, 42.603729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.844372, 34.105427, 42.805920>,  <33.979580, 34.262276, 42.927235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.844372, 34.105427, 42.805920>,  <33.619022, 33.844013, 42.603729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.844372, 34.105427, 42.805920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607897, 0.086446, -0.789297,
		-0.559531, 0.751942, -0.348582,
		0.563371, 0.653537, 0.505472,
		34.013382, 34.301487, 42.957561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.695602, 34.496185, 42.163864>,  <33.619022, 33.844013, 42.603729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.695602, 34.496185, 42.163864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.987602, 34.508961, 42.436943>,  <34.162804, 34.516624, 42.600792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.987602, 34.508961, 42.436943>,  <33.695602, 34.496185, 42.163864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.987602, 34.508961, 42.436943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655249, 0.251256, -0.712404,
		-0.194283, 0.967394, 0.162491,
		0.730002, 0.031935, 0.682699,
		34.206604, 34.518539, 42.641754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.098549, 35.100742, 42.054680>,  <33.695602, 34.496185, 42.163864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.098549, 35.100742, 42.054680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.341072, 34.823811, 42.211178>,  <34.486584, 34.657650, 42.305077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.341072, 34.823811, 42.211178>,  <34.098549, 35.100742, 42.054680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.341072, 34.823811, 42.211178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629748, 0.117576, -0.767850,
		0.485606, 0.711936, 0.507281,
		0.606304, -0.692331, 0.391245,
		34.522964, 34.616112, 42.328552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.561333, 35.230335, 41.690594>,  <34.098549, 35.100742, 42.054680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.561333, 35.230335, 41.690594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.718304, 34.916672, 41.882885>,  <34.812485, 34.728474, 41.998260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.718304, 34.916672, 41.882885>,  <34.561333, 35.230335, 41.690594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.718304, 34.916672, 41.882885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751105, -0.028464, -0.659569,
		0.530889, 0.619910, 0.577814,
		0.392426, -0.784157, 0.480728,
		34.836033, 34.681423, 42.027103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.291161, 35.408394, 41.890003>,  <34.561333, 35.230335, 41.690594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.291161, 35.408394, 41.890003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.252731, 35.013351, 41.840366>,  <35.229675, 34.776325, 41.810585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.252731, 35.013351, 41.840366>,  <35.291161, 35.408394, 41.890003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.252731, 35.013351, 41.840366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627041, 0.036770, -0.778118,
		0.773039, -0.152567, 0.615739,
		-0.096075, -0.987609, -0.124090,
		35.223907, 34.717068, 41.803139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.848759, 35.137138, 41.595043>,  <35.291161, 35.408394, 41.890003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.848759, 35.137138, 41.595043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.641312, 34.800846, 41.532803>,  <35.516842, 34.599072, 41.495457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.641312, 34.800846, 41.532803>,  <35.848759, 35.137138, 41.595043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.641312, 34.800846, 41.532803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678215, -0.293693, -0.673624,
		0.520635, -0.454886, 0.722508,
		-0.518618, -0.840728, -0.155604,
		35.485725, 34.548630, 41.486122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.356445, 34.648247, 41.528584>,  <35.848759, 35.137138, 41.595043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.356445, 34.648247, 41.528584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.040604, 34.493374, 41.338169>,  <35.851097, 34.400452, 41.223919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.040604, 34.493374, 41.338169>,  <36.356445, 34.648247, 41.528584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.040604, 34.493374, 41.338169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587730, -0.254260, -0.768066,
		0.176343, -0.886252, 0.428323,
		-0.789605, -0.387182, -0.476039,
		35.803722, 34.377220, 41.195358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.529957, 33.958057, 41.372341>,  <36.356445, 34.648247, 41.528584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.529957, 33.958057, 41.372341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.255787, 34.050758, 41.096230>,  <36.091286, 34.106377, 40.930561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.255787, 34.050758, 41.096230>,  <36.529957, 33.958057, 41.372341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.255787, 34.050758, 41.096230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643863, -0.249834, -0.723204,
		-0.340059, -0.940146, 0.022025,
		-0.685420, 0.231750, -0.690284,
		36.050159, 34.120281, 40.889145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.443516, 33.336006, 40.973591>,  <36.529957, 33.958057, 41.372341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.443516, 33.336006, 40.973591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.311211, 33.626934, 40.733055>,  <36.231827, 33.801491, 40.588734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.311211, 33.626934, 40.733055>,  <36.443516, 33.336006, 40.973591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.311211, 33.626934, 40.733055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484806, -0.415733, -0.769500,
		-0.809665, -0.546055, -0.215097,
		-0.330766, 0.727317, -0.601335,
		36.211983, 33.845131, 40.552654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.486446, 33.020054, 40.213333>,  <36.443516, 33.336006, 40.973591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.486446, 33.020054, 40.213333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.495491, 33.418053, 40.174393>,  <36.500919, 33.656853, 40.151028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.495491, 33.418053, 40.174393>,  <36.486446, 33.020054, 40.213333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.495491, 33.418053, 40.174393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564050, -0.093097, -0.820476,
		-0.825431, -0.036359, -0.563331,
		0.022612, 0.994993, -0.097353,
		36.502274, 33.716549, 40.145187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.512173, 33.117744, 39.476498>,  <36.486446, 33.020054, 40.213333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.512173, 33.117744, 39.476498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.631973, 33.447269, 39.669014>,  <36.703854, 33.644985, 39.784523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.631973, 33.447269, 39.669014>,  <36.512173, 33.117744, 39.476498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.631973, 33.447269, 39.669014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636353, 0.203374, -0.744106,
		-0.710883, 0.529128, -0.463323,
		0.299499, 0.823810, 0.481287,
		36.721825, 33.694412, 39.813400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.449131, 33.671936, 39.002903>,  <36.512173, 33.117744, 39.476498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.449131, 33.671936, 39.002903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.707840, 33.797482, 39.280949>,  <36.863064, 33.872807, 39.447777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.707840, 33.797482, 39.280949>,  <36.449131, 33.671936, 39.002903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.707840, 33.797482, 39.280949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610022, 0.334153, -0.718481,
		-0.457776, 0.888726, 0.024659,
		0.646772, 0.313861, 0.695110,
		36.901871, 33.891640, 39.489483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.636936, 34.266773, 38.764786>,  <36.449131, 33.671936, 39.002903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.636936, 34.266773, 38.764786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.916302, 34.221275, 39.047424>,  <37.083920, 34.193977, 39.217007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.916302, 34.221275, 39.047424>,  <36.636936, 34.266773, 38.764786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.916302, 34.221275, 39.047424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682748, 0.401993, -0.610129,
		-0.214647, 0.908550, 0.358418,
		0.698414, -0.113747, 0.706597,
		37.125824, 34.187153, 39.259403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.941505, 34.939388, 38.868626>,  <36.636936, 34.266773, 38.764786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.941505, 34.939388, 38.868626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.227581, 34.682468, 38.978863>,  <37.399227, 34.528316, 39.045006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.227581, 34.682468, 38.978863>,  <36.941505, 34.939388, 38.868626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.227581, 34.682468, 38.978863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632547, 0.427101, -0.646119,
		0.297297, 0.636423, 0.711744,
		0.715191, -0.642301, 0.275591,
		37.442139, 34.489777, 39.061539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.453556, 35.353565, 39.037907>,  <36.941505, 34.939388, 38.868626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.453556, 35.353565, 39.037907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.618404, 34.995464, 38.970173>,  <37.717312, 34.780602, 38.929535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.618404, 34.995464, 38.970173>,  <37.453556, 35.353565, 39.037907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.618404, 34.995464, 38.970173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669870, 0.423690, -0.609722,
		0.617601, 0.137850, 0.774317,
		0.412120, -0.895257, -0.169330,
		37.742039, 34.726887, 38.919373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.168739, 35.477222, 39.090069>,  <37.453556, 35.353565, 39.037907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.168739, 35.477222, 39.090069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.129635, 35.141533, 38.876099>,  <38.106171, 34.940121, 38.747715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.129635, 35.141533, 38.876099>,  <38.168739, 35.477222, 39.090069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.129635, 35.141533, 38.876099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674307, 0.339461, -0.655803,
		0.731952, -0.424814, 0.532709,
		-0.097760, -0.839225, -0.534924,
		38.100307, 34.889767, 38.715622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.818813, 35.193699, 39.005074>,  <38.168739, 35.477222, 39.090069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.818813, 35.193699, 39.005074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.616875, 35.044258, 38.693806>,  <38.495712, 34.954594, 38.507046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.616875, 35.044258, 38.693806>,  <38.818813, 35.193699, 39.005074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.616875, 35.044258, 38.693806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809155, 0.109185, -0.577362,
		0.300669, -0.921141, 0.247180,
		-0.504844, -0.373602, -0.778174,
		38.465420, 34.932178, 38.460354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.356712, 34.832516, 38.585148>,  <38.818813, 35.193699, 39.005074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.356712, 34.832516, 38.585148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.031517, 34.841488, 38.352409>,  <38.836399, 34.846870, 38.212765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.031517, 34.841488, 38.352409>,  <39.356712, 34.832516, 38.585148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.031517, 34.841488, 38.352409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581390, 0.086440, -0.809020,
		0.032144, -0.996004, -0.083318,
		-0.812990, 0.022435, -0.581846,
		38.787621, 34.848217, 38.177856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.484051, 34.428833, 38.068047>,  <39.356712, 34.832516, 38.585148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.484051, 34.428833, 38.068047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.221363, 34.686108, 37.910557>,  <39.063751, 34.840473, 37.816063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.221363, 34.686108, 37.910557>,  <39.484051, 34.428833, 38.068047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.221363, 34.686108, 37.910557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621894, 0.166576, -0.765180,
		-0.426571, -0.747367, -0.509391,
		-0.656722, 0.643191, -0.393727,
		39.024345, 34.879066, 37.792439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.366287, 34.236031, 37.310535>,  <39.484051, 34.428833, 38.068047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.366287, 34.236031, 37.310535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.273605, 34.623627, 37.344868>,  <39.217999, 34.856186, 37.365467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.273605, 34.623627, 37.344868>,  <39.366287, 34.236031, 37.310535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.273605, 34.623627, 37.344868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624009, 0.215736, -0.751046,
		-0.746275, -0.120460, -0.654647,
		-0.231702, 0.968993, 0.085830,
		39.204094, 34.914326, 37.370617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.270275, 34.423443, 36.616089>,  <39.366287, 34.236031, 37.310535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.270275, 34.423443, 36.616089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.374058, 34.709408, 36.875805>,  <39.436329, 34.880989, 37.031635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.374058, 34.709408, 36.875805>,  <39.270275, 34.423443, 36.616089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.374058, 34.709408, 36.875805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561362, 0.435428, -0.703757,
		-0.785847, 0.547082, -0.288352,
		0.259456, 0.714915, 0.649291,
		39.451893, 34.923882, 37.070591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.108353, 35.008263, 36.258884>,  <39.270275, 34.423443, 36.616089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.108353, 35.008263, 36.258884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.396130, 35.027821, 36.536018>,  <39.568794, 35.039555, 36.702297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.396130, 35.027821, 36.536018>,  <39.108353, 35.008263, 36.258884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.396130, 35.027821, 36.536018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615501, 0.417302, -0.668594,
		-0.321813, 0.907451, 0.270126,
		0.719440, 0.048899, 0.692831,
		39.611961, 35.042492, 36.743866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.345310, 35.708500, 36.345596>,  <39.108353, 35.008263, 36.258884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.345310, 35.708500, 36.345596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.626537, 35.432751, 36.415405>,  <39.795273, 35.267300, 36.457291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.626537, 35.432751, 36.415405>,  <39.345310, 35.708500, 36.345596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.626537, 35.432751, 36.415405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618688, 0.471975, -0.628065,
		0.350602, 0.549547, 0.758338,
		0.703068, -0.689375, 0.174522,
		39.837456, 35.225937, 36.467762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.012825, 35.961273, 36.555477>,  <39.345310, 35.708500, 36.345596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.012825, 35.961273, 36.555477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.153469, 35.650803, 36.346127>,  <40.237858, 35.464520, 36.220516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.153469, 35.650803, 36.346127>,  <40.012825, 35.961273, 36.555477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.153469, 35.650803, 36.346127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797042, 0.541447, -0.267506,
		0.491011, -0.323094, 0.809023,
		0.351614, -0.776174, -0.523376,
		40.258953, 35.417950, 36.189114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.695808, 35.793419, 36.753105>,  <40.012825, 35.961273, 36.555477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.695808, 35.793419, 36.753105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.648846, 35.666664, 36.376637>,  <40.620670, 35.590611, 36.150757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.648846, 35.666664, 36.376637>,  <40.695808, 35.793419, 36.753105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.648846, 35.666664, 36.376637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790210, 0.544203, -0.281800,
		0.601485, -0.776807, 0.186513,
		-0.117403, -0.316883, -0.941170,
		40.613625, 35.571598, 36.094284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.345802, 35.484943, 36.545006>,  <40.695808, 35.793419, 36.753105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.345802, 35.484943, 36.545006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.157955, 35.626640, 36.221531>,  <41.045246, 35.711658, 36.027447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.157955, 35.626640, 36.221531>,  <41.345802, 35.484943, 36.545006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.157955, 35.626640, 36.221531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810674, 0.535799, -0.236065,
		0.349668, -0.766440, -0.538797,
		-0.469616, 0.354245, -0.808685,
		41.017071, 35.732914, 35.978924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.783955, 35.282307, 36.046642>,  <41.345802, 35.484943, 36.545006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.783955, 35.282307, 36.046642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.574863, 35.605076, 35.936638>,  <41.449409, 35.798737, 35.870636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.574863, 35.605076, 35.936638>,  <41.783955, 35.282307, 36.046642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.574863, 35.605076, 35.936638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846649, 0.453664, -0.278164,
		-0.099692, -0.378246, -0.920322,
		-0.522731, 0.806920, -0.275014,
		41.418045, 35.847153, 35.854134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.649910, 34.543484, 36.167343>,  <41.783955, 35.282307, 36.046642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.649910, 34.543484, 36.167343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.004074, 34.621944, 36.335896>,  <42.216572, 34.669022, 36.437027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.004074, 34.621944, 36.335896>,  <41.649910, 34.543484, 36.167343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.004074, 34.621944, 36.335896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383518, -0.203873, 0.900750,
		0.262594, -0.959145, -0.105283,
		0.885414, 0.196154, 0.421385,
		42.269699, 34.680790, 36.462311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.959785, 33.912483, 36.512207>,  <41.649910, 34.543484, 36.167343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.959785, 33.912483, 36.512207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.085018, 34.249264, 36.687977>,  <42.160160, 34.451332, 36.793438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.085018, 34.249264, 36.687977>,  <41.959785, 33.912483, 36.512207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.085018, 34.249264, 36.687977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248836, -0.373800, 0.893507,
		0.916547, -0.389088, 0.092477,
		0.313085, 0.841953, 0.439425,
		42.178944, 34.501850, 36.819805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.384392, 33.625881, 37.085289>,  <41.959785, 33.912483, 36.512207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.384392, 33.625881, 37.085289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.298985, 34.011280, 37.149895>,  <42.247738, 34.242519, 37.188656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.298985, 34.011280, 37.149895>,  <42.384392, 33.625881, 37.085289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.298985, 34.011280, 37.149895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259783, -0.215370, 0.941344,
		0.941765, 0.159040, 0.296286,
		-0.213522, 0.963495, 0.161512,
		42.234928, 34.300327, 37.198349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.636101, 33.778992, 37.672749>,  <42.384392, 33.625881, 37.085289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.636101, 33.778992, 37.672749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.359890, 34.066257, 37.638294>,  <42.194164, 34.238617, 37.617622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.359890, 34.066257, 37.638294>,  <42.636101, 33.778992, 37.672749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.359890, 34.066257, 37.638294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338985, -0.216121, 0.915631,
		0.638958, 0.661463, 0.392683,
		-0.690523, 0.718164, -0.086134,
		42.152733, 34.281708, 37.612453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.624325, 34.080044, 38.360813>,  <42.636101, 33.778992, 37.672749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.624325, 34.080044, 38.360813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.292385, 34.214767, 38.182865>,  <42.093220, 34.295601, 38.076096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.292385, 34.214767, 38.182865>,  <42.624325, 34.080044, 38.360813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.292385, 34.214767, 38.182865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497667, -0.086218, 0.863072,
		0.252335, 0.937617, 0.239168,
		-0.829852, 0.336810, -0.444865,
		42.043430, 34.315811, 38.049404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.382145, 34.615059, 38.804356>,  <42.624325, 34.080044, 38.360813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.382145, 34.615059, 38.804356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.057259, 34.496700, 38.603256>,  <41.862328, 34.425686, 38.482597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.057259, 34.496700, 38.603256>,  <42.382145, 34.615059, 38.804356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.057259, 34.496700, 38.603256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493172, -0.112045, 0.862686,
		-0.311596, 0.948626, -0.054923,
		-0.812213, -0.295896, -0.502748,
		41.813595, 34.407932, 38.452431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.859867, 34.989685, 39.119534>,  <42.382145, 34.615059, 38.804356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.859867, 34.989685, 39.119534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.655773, 34.705456, 38.925732>,  <41.533318, 34.534920, 38.809448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.655773, 34.705456, 38.925732>,  <41.859867, 34.989685, 39.119534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.655773, 34.705456, 38.925732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645076, -0.056394, 0.762035,
		-0.568805, 0.701360, -0.429599,
		-0.510234, -0.710573, -0.484508,
		41.502705, 34.492283, 38.780380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.213303, 35.155167, 39.330242>,  <41.859867, 34.989685, 39.119534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.213303, 35.155167, 39.330242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.211201, 34.776844, 39.200371>,  <41.209938, 34.549850, 39.122448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.211201, 34.776844, 39.200371>,  <41.213303, 35.155167, 39.330242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.211201, 34.776844, 39.200371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589334, -0.259374, 0.765121,
		-0.807873, 0.195368, -0.556033,
		-0.005260, -0.945810, -0.324678,
		41.209621, 34.493099, 39.102966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.563293, 34.924381, 39.429768>,  <41.213303, 35.155167, 39.330242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.563293, 34.924381, 39.429768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.772736, 34.584213, 39.409267>,  <40.898399, 34.380112, 39.396965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.772736, 34.584213, 39.409267>,  <40.563293, 34.924381, 39.429768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.772736, 34.584213, 39.409267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642816, -0.433832, 0.631330,
		-0.559131, -0.297619, -0.773818,
		0.523603, -0.850419, -0.051254,
		40.929817, 34.329086, 39.393890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.082733, 34.435863, 39.546078>,  <40.563293, 34.924381, 39.429768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.082733, 34.435863, 39.546078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.410110, 34.209007, 39.582947>,  <40.606537, 34.072891, 39.605068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.410110, 34.209007, 39.582947>,  <40.082733, 34.435863, 39.546078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.410110, 34.209007, 39.582947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466079, -0.561479, 0.683749,
		-0.336030, -0.602571, -0.723873,
		0.818447, -0.567142, 0.092172,
		40.655643, 34.038864, 39.610600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.859634, 33.841312, 39.436737>,  <40.082733, 34.435863, 39.546078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.859634, 33.841312, 39.436737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.187393, 33.810806, 39.663990>,  <40.384048, 33.792503, 39.800343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.187393, 33.810806, 39.663990>,  <39.859634, 33.841312, 39.436737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.187393, 33.810806, 39.663990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509927, -0.549706, 0.661663,
		0.261846, -0.831870, -0.489315,
		0.819397, -0.076261, 0.568131,
		40.433212, 33.787930, 39.834431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.967922, 33.103058, 39.549843>,  <39.859634, 33.841312, 39.436737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.967922, 33.103058, 39.549843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.136257, 33.304005, 39.851974>,  <40.237259, 33.424572, 40.033253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.136257, 33.304005, 39.851974>,  <39.967922, 33.103058, 39.549843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.136257, 33.304005, 39.851974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574583, -0.496707, 0.650489,
		0.701963, -0.707749, 0.079621,
		0.420835, 0.502368, 0.755331,
		40.262508, 33.454716, 40.078575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.883625, 32.598282, 40.011200>,  <39.967922, 33.103058, 39.549843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.883625, 32.598282, 40.011200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.947983, 32.925453, 40.232143>,  <39.986599, 33.121758, 40.364708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.947983, 32.925453, 40.232143>,  <39.883625, 32.598282, 40.011200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.947983, 32.925453, 40.232143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447769, -0.438245, 0.779388,
		0.879554, -0.372730, 0.295732,
		0.160898, 0.817933, 0.552357,
		39.996254, 33.170834, 40.397850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.219959, 32.376835, 40.582951>,  <39.883625, 32.598282, 40.011200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.219959, 32.376835, 40.582951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.065601, 32.734138, 40.675186>,  <39.972984, 32.948521, 40.730526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.065601, 32.734138, 40.675186>,  <40.219959, 32.376835, 40.582951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.065601, 32.734138, 40.675186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399568, -0.387119, 0.830954,
		0.831522, 0.228528, 0.506306,
		-0.385897, 0.893260, 0.230586,
		39.949833, 33.002117, 40.744362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.434635, 32.519203, 41.248905>,  <40.219959, 32.376835, 40.582951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.434635, 32.519203, 41.248905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.124725, 32.766846, 41.197617>,  <39.938782, 32.915432, 41.166843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.124725, 32.766846, 41.197617>,  <40.434635, 32.519203, 41.248905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.124725, 32.766846, 41.197617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423870, -0.358159, 0.831899,
		0.469108, 0.698880, 0.539911,
		-0.774772, 0.619103, -0.128219,
		39.892292, 32.952576, 41.159149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.381504, 32.958855, 41.729736>,  <40.434635, 32.519203, 41.248905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.381504, 32.958855, 41.729736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.006790, 32.940365, 41.591003>,  <39.781960, 32.929272, 41.507763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.006790, 32.940365, 41.591003>,  <40.381504, 32.958855, 41.729736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.006790, 32.940365, 41.591003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312349, -0.336272, 0.888459,
		-0.157696, 0.940630, 0.300578,
		-0.936787, -0.046221, -0.346834,
		39.725754, 32.926498, 41.486954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.080853, 33.169941, 42.327309>,  <40.381504, 32.958855, 41.729736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.080853, 33.169941, 42.327309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.790100, 33.021339, 42.096268>,  <39.615650, 32.932178, 41.957642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.790100, 33.021339, 42.096268>,  <40.080853, 33.169941, 42.327309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.790100, 33.021339, 42.096268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370323, -0.496271, 0.785224,
		-0.578363, 0.784665, 0.223153,
		-0.726882, -0.371505, -0.577604,
		39.572037, 32.909889, 41.922985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.664169, 33.183426, 42.821476>,  <40.080853, 33.169941, 42.327309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.664169, 33.183426, 42.821476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.507320, 32.941345, 42.544357>,  <39.413212, 32.796097, 42.378086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.507320, 32.941345, 42.544357>,  <39.664169, 33.183426, 42.821476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.507320, 32.941345, 42.544357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395498, -0.569045, 0.720950,
		-0.830555, 0.556701, -0.016221,
		-0.392123, -0.605204, -0.692797,
		39.389683, 32.759785, 42.336517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.957466, 32.947136, 43.069004>,  <39.664169, 33.183426, 42.821476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.957466, 32.947136, 43.069004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.074455, 32.682602, 42.792717>,  <39.144650, 32.523880, 42.626945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.074455, 32.682602, 42.792717>,  <38.957466, 32.947136, 43.069004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.074455, 32.682602, 42.792717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280204, -0.749865, 0.599322,
		-0.914301, 0.018257, -0.404625,
		0.292472, -0.661338, -0.690718,
		39.162197, 32.484200, 42.585503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.417088, 32.365238, 42.990559>,  <38.957466, 32.947136, 43.069004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.417088, 32.365238, 42.990559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.755241, 32.193043, 42.864067>,  <38.958134, 32.089725, 42.788174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.755241, 32.193043, 42.864067>,  <38.417088, 32.365238, 42.990559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.755241, 32.193043, 42.864067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211735, -0.813593, 0.541512,
		-0.490395, -0.390831, -0.778950,
		0.845388, -0.430486, -0.316230,
		39.008858, 32.063896, 42.769199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.160912, 31.695494, 42.947281>,  <38.417088, 32.365238, 42.990559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.160912, 31.695494, 42.947281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.558842, 31.661303, 42.925297>,  <38.797600, 31.640787, 42.912106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.558842, 31.661303, 42.925297>,  <38.160912, 31.695494, 42.947281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.558842, 31.661303, 42.925297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048677, -0.875576, 0.480622,
		-0.089208, -0.475459, -0.875204,
		0.994823, -0.085478, -0.054964,
		38.857288, 31.635660, 42.908806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.345402, 30.981346, 42.886688>,  <38.160912, 31.695494, 42.947281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.345402, 30.981346, 42.886688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.665291, 31.166344, 43.039814>,  <38.857224, 31.277342, 43.131691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.665291, 31.166344, 43.039814>,  <38.345402, 30.981346, 42.886688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.665291, 31.166344, 43.039814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104340, -0.734991, 0.670001,
		0.591238, -0.495870, -0.636043,
		0.799719, 0.462494, 0.382816,
		38.905205, 31.305092, 43.154659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.605186, 30.500813, 42.330421>,  <38.345402, 30.981346, 42.886688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.605186, 30.500813, 42.330421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.757706, 30.224747, 42.084404>,  <38.849216, 30.059107, 41.936794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.757706, 30.224747, 42.084404>,  <38.605186, 30.500813, 42.330421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.757706, 30.224747, 42.084404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823594, 0.555791, -0.113084,
		0.419883, -0.463428, 0.780342,
		0.381301, -0.690167, -0.615044,
		38.872097, 30.017696, 41.899891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.204304, 30.119858, 42.562031>,  <38.605186, 30.500813, 42.330421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.204304, 30.119858, 42.562031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.238049, 30.168100, 42.166386>,  <39.258297, 30.197046, 41.929001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.238049, 30.168100, 42.166386>,  <39.204304, 30.119858, 42.562031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.238049, 30.168100, 42.166386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854816, 0.501321, 0.134039,
		0.512027, -0.856814, -0.060805,
		0.084364, 0.120608, -0.989109,
		39.263359, 30.204283, 41.869652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.751541, 29.734440, 42.254635>,  <39.204304, 30.119858, 42.562031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.751541, 29.734440, 42.254635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.680363, 30.068600, 42.046619>,  <39.637657, 30.269096, 41.921810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.680363, 30.068600, 42.046619>,  <39.751541, 29.734440, 42.254635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.680363, 30.068600, 42.046619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821039, 0.417352, 0.389503,
		0.542432, -0.357666, -0.760160,
		-0.177942, 0.835400, -0.520042,
		39.626980, 30.319220, 41.890606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.275505, 29.852032, 41.693962>,  <39.751541, 29.734440, 42.254635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.275505, 29.852032, 41.693962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.132874, 30.193052, 41.846806>,  <40.047295, 30.397665, 41.938511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.132874, 30.193052, 41.846806>,  <40.275505, 29.852032, 41.693962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.132874, 30.193052, 41.846806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909719, 0.223711, 0.349807,
		0.212746, 0.472347, -0.855352,
		-0.356582, 0.852550, 0.382109,
		40.025898, 30.448818, 41.961437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.897705, 29.809320, 42.237843>,  <40.275505, 29.852032, 41.693962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.897705, 29.809320, 42.237843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.224342, 29.973825, 42.075840>,  <41.420326, 30.072529, 41.978638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.224342, 29.973825, 42.075840>,  <40.897705, 29.809320, 42.237843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.224342, 29.973825, 42.075840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325754, 0.250883, 0.911560,
		0.476501, -0.876310, 0.070900,
		0.816597, 0.411263, -0.405008,
		41.469322, 30.097204, 41.954338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.441044, 29.766211, 42.618435>,  <40.897705, 29.809320, 42.237843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.441044, 29.766211, 42.618435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.511017, 30.092991, 42.398621>,  <41.553001, 30.289059, 42.266731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.511017, 30.092991, 42.398621>,  <41.441044, 29.766211, 42.618435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.511017, 30.092991, 42.398621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398224, 0.451744, 0.798339,
		0.900453, -0.358495, -0.246304,
		0.174934, 0.816951, -0.549535,
		41.563496, 30.338076, 42.233761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.083313, 29.929237, 42.782368>,  <41.441044, 29.766211, 42.618435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.083313, 29.929237, 42.782368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.884201, 30.254568, 42.661892>,  <41.764732, 30.449766, 42.589607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.884201, 30.254568, 42.661892>,  <42.083313, 29.929237, 42.782368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.884201, 30.254568, 42.661892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091565, 0.394617, 0.914272,
		0.862457, 0.427526, -0.270903,
		-0.497778, 0.813326, -0.301194,
		41.734867, 30.498566, 42.571533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.727673, 29.884081, 42.397163>,  <42.083313, 29.929237, 42.782368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.727673, 29.884081, 42.397163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.729782, 29.525766, 42.219383>,  <42.731049, 29.310778, 42.112713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.729782, 29.525766, 42.219383>,  <42.727673, 29.884081, 42.397163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.729782, 29.525766, 42.219383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262239, 0.430144, -0.863833,
		0.964988, -0.111999, 0.237178,
		0.005272, -0.895786, -0.444454,
		42.731365, 29.257030, 42.086048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.363190, 29.733950, 42.030628>,  <42.727673, 29.884081, 42.397163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.363190, 29.733950, 42.030628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.053314, 29.552620, 41.854286>,  <42.867390, 29.443823, 41.748482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.053314, 29.552620, 41.854286>,  <43.363190, 29.733950, 42.030628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.053314, 29.552620, 41.854286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235831, 0.439756, -0.866601,
		0.586723, -0.775313, -0.233765,
		-0.774687, -0.453326, -0.440858,
		42.820908, 29.416622, 41.722031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.530094, 29.512848, 41.428898>,  <43.363190, 29.733950, 42.030628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.530094, 29.512848, 41.428898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.135628, 29.568890, 41.393478>,  <42.898949, 29.602514, 41.372227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.135628, 29.568890, 41.393478>,  <43.530094, 29.512848, 41.428898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.135628, 29.568890, 41.393478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153778, 0.574139, -0.804187,
		-0.061829, -0.806682, -0.587743,
		-0.986169, 0.140104, -0.088552,
		42.839775, 29.610920, 41.366913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.435547, 29.393784, 40.826630>,  <43.530094, 29.512848, 41.428898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.435547, 29.393784, 40.826630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.115562, 29.615271, 40.919113>,  <42.923573, 29.748163, 40.974602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.115562, 29.615271, 40.919113>,  <43.435547, 29.393784, 40.826630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.115562, 29.615271, 40.919113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156894, 0.564924, -0.810089,
		-0.579178, -0.611764, -0.538792,
		-0.799960, 0.553720, 0.231210,
		42.875576, 29.781387, 40.988476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.025875, 29.438843, 40.222618>,  <43.435547, 29.393784, 40.826630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.025875, 29.438843, 40.222618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.919434, 29.753359, 40.445663>,  <42.855568, 29.942068, 40.579491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.919434, 29.753359, 40.445663>,  <43.025875, 29.438843, 40.222618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.919434, 29.753359, 40.445663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108898, 0.599294, -0.793088,
		-0.957773, -0.150322, -0.245100,
		-0.266105, 0.786289, 0.557618,
		42.839603, 29.989246, 40.612949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.715603, 29.993305, 39.752457>,  <43.025875, 29.438843, 40.222618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.715603, 29.993305, 39.752457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.824863, 30.183292, 40.087070>,  <42.890419, 30.297285, 40.287838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.824863, 30.183292, 40.087070>,  <42.715603, 29.993305, 39.752457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.824863, 30.183292, 40.087070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322112, 0.774250, -0.544776,
		-0.906440, 0.418263, 0.058492,
		0.273148, 0.474966, 0.836539,
		42.906807, 30.325783, 40.338032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.429417, 30.671099, 39.706684>,  <42.715603, 29.993305, 39.752457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.429417, 30.671099, 39.706684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.724621, 30.679031, 39.976482>,  <42.901745, 30.683792, 40.138363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.724621, 30.679031, 39.976482>,  <42.429417, 30.671099, 39.706684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.724621, 30.679031, 39.976482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317489, 0.871812, -0.373021,
		-0.595433, 0.489439, 0.637110,
		0.738011, 0.019833, 0.674497,
		42.946026, 30.684982, 40.178833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.387718, 31.315596, 40.061802>,  <42.429417, 30.671099, 39.706684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.387718, 31.315596, 40.061802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.766853, 31.190687, 40.087364>,  <42.994335, 31.115742, 40.102703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.766853, 31.190687, 40.087364>,  <42.387718, 31.315596, 40.061802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.766853, 31.190687, 40.087364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316266, 0.896429, -0.310469,
		0.039662, 0.314487, 0.948433,
		0.947841, -0.312271, 0.063907,
		43.051205, 31.097006, 40.106537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.782433, 31.902691, 40.298500>,  <42.387718, 31.315596, 40.061802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.782433, 31.902691, 40.298500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.064342, 31.645277, 40.179062>,  <43.233486, 31.490829, 40.107399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.064342, 31.645277, 40.179062>,  <42.782433, 31.902691, 40.298500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.064342, 31.645277, 40.179062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509509, 0.752022, -0.418167,
		0.493655, 0.142575, 0.857891,
		0.704773, -0.643534, -0.298596,
		43.275776, 31.452217, 40.089481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.489723, 32.181583, 40.469574>,  <42.782433, 31.902691, 40.298500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.489723, 32.181583, 40.469574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.580662, 31.918325, 40.182472>,  <43.635223, 31.760372, 40.010212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.580662, 31.918325, 40.182472>,  <43.489723, 32.181583, 40.469574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.580662, 31.918325, 40.182472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470532, 0.719542, -0.510744,
		0.852593, -0.221609, 0.473260,
		0.227345, -0.658140, -0.717750,
		43.648865, 31.720882, 39.967148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.248569, 32.304287, 40.407696>,  <43.489723, 32.181583, 40.469574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.248569, 32.304287, 40.407696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.095360, 32.112869, 40.091648>,  <44.003433, 31.998020, 39.902020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.095360, 32.112869, 40.091648>,  <44.248569, 32.304287, 40.407696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.095360, 32.112869, 40.091648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510663, 0.603068, -0.612807,
		0.769749, -0.638207, 0.013382,
		-0.383028, -0.478541, -0.790119,
		43.980450, 31.969307, 39.854614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.857948, 32.120396, 39.995598>,  <44.248569, 32.304287, 40.407696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.857948, 32.120396, 39.995598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.530327, 32.113934, 39.766201>,  <44.333755, 32.110054, 39.628563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.530327, 32.113934, 39.766201>,  <44.857948, 32.120396, 39.995598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.530327, 32.113934, 39.766201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435533, 0.633158, -0.639861,
		0.373451, -0.773854, -0.511551,
		-0.819051, -0.016159, -0.573492,
		44.284611, 32.109085, 39.594154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.172440, 31.996765, 39.212841>,  <44.857948, 32.120396, 39.995598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.172440, 31.996765, 39.212841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.799816, 32.142197, 39.212383>,  <44.576241, 32.229454, 39.212109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.799816, 32.142197, 39.212383>,  <45.172440, 31.996765, 39.212841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.799816, 32.142197, 39.212383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232447, 0.593154, -0.770803,
		-0.279571, -0.718316, -0.637073,
		-0.931562, 0.363580, -0.001142,
		44.520348, 32.251270, 39.212040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.054615, 32.149773, 38.525539>,  <45.172440, 31.996765, 39.212841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.054615, 32.149773, 38.525539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.740383, 32.328465, 38.696796>,  <44.551846, 32.435680, 38.799549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.740383, 32.328465, 38.696796>,  <45.054615, 32.149773, 38.525539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.740383, 32.328465, 38.696796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041926, 0.728770, -0.683474,
		-0.617343, -0.518971, -0.591234,
		-0.785576, 0.446726, 0.428142,
		44.504711, 32.462482, 38.825237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.538937, 32.231503, 38.049423>,  <45.054615, 32.149773, 38.525539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.538937, 32.231503, 38.049423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.515171, 32.511272, 38.334316>,  <44.500912, 32.679134, 38.505253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.515171, 32.511272, 38.334316>,  <44.538937, 32.231503, 38.049423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.515171, 32.511272, 38.334316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060142, 0.714709, -0.696831,
		-0.996420, 0.001436, -0.084527,
		-0.059411, 0.699420, 0.712237,
		44.497349, 32.721100, 38.547989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.971767, 32.759609, 37.861629>,  <44.538937, 32.231503, 38.049423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.971767, 32.759609, 37.861629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.212204, 32.951664, 38.117180>,  <44.356464, 33.066895, 38.270508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.212204, 32.951664, 38.117180>,  <43.971767, 32.759609, 37.861629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.212204, 32.951664, 38.117180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094115, 0.751321, -0.653191,
		-0.793620, 0.452754, 0.406424,
		0.601091, 0.480135, 0.638874,
		44.392532, 33.095703, 38.308842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.845123, 33.313335, 37.634167>,  <43.971767, 32.759609, 37.861629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.845123, 33.313335, 37.634167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.171307, 33.374203, 37.857548>,  <44.367016, 33.410721, 37.991577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.171307, 33.374203, 37.857548>,  <43.845123, 33.313335, 37.634167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.171307, 33.374203, 37.857548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249956, 0.777643, -0.576883,
		-0.522056, 0.610014, 0.596104,
		0.815463, 0.152165, 0.558450,
		44.415947, 33.419853, 38.025082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.828716, 34.077106, 37.879642>,  <43.845123, 33.313335, 37.634167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.828716, 34.077106, 37.879642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.216106, 33.982498, 37.910919>,  <44.448540, 33.925732, 37.929688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.216106, 33.982498, 37.910919>,  <43.828716, 34.077106, 37.879642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.216106, 33.982498, 37.910919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246092, 0.859652, -0.447703,
		0.038672, 0.452832, 0.890757,
		0.968475, -0.236522, 0.078194,
		44.506649, 33.911541, 37.934376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.174179, 34.655949, 38.383888>,  <43.828716, 34.077106, 37.879642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.174179, 34.655949, 38.383888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.429829, 34.486679, 38.127003>,  <44.583218, 34.385117, 37.972874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.429829, 34.486679, 38.127003>,  <44.174179, 34.655949, 38.383888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.429829, 34.486679, 38.127003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115896, 0.878475, -0.463520,
		0.760318, 0.221819, 0.610502,
		0.639128, -0.423177, -0.642212,
		44.621567, 34.359726, 37.934338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.707474, 35.148712, 38.405449>,  <44.174179, 34.655949, 38.383888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.707474, 35.148712, 38.405449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.769936, 34.927559, 38.078053>,  <44.807415, 34.794868, 37.881615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.769936, 34.927559, 38.078053>,  <44.707474, 35.148712, 38.405449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.769936, 34.927559, 38.078053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017805, 0.830103, -0.557327,
		0.987572, 0.072458, 0.139471,
		0.156158, -0.552883, -0.818496,
		44.816784, 34.761692, 37.832504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.158161, 35.545525, 38.110928>,  <44.707474, 35.148712, 38.405449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.158161, 35.545525, 38.110928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.074158, 35.308178, 37.800106>,  <45.023754, 35.165768, 37.613613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.074158, 35.308178, 37.800106>,  <45.158161, 35.545525, 38.110928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.074158, 35.308178, 37.800106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111814, 0.774984, -0.622011,
		0.971284, -0.217514, -0.096407,
		-0.210010, -0.593370, -0.777051,
		45.011154, 35.130165, 37.566990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.714954, 35.478741, 37.513775>,  <45.158161, 35.545525, 38.110928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.714954, 35.478741, 37.513775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.349663, 35.414318, 37.364067>,  <45.130489, 35.375664, 37.274242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.349663, 35.414318, 37.364067>,  <45.714954, 35.478741, 37.513775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.349663, 35.414318, 37.364067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162964, 0.697511, -0.697797,
		0.373442, -0.698239, -0.610740,
		-0.913227, -0.161058, -0.374268,
		45.075695, 35.366001, 37.251785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.697872, 35.270782, 36.735340>,  <45.714954, 35.478741, 37.513775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.697872, 35.270782, 36.735340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.402073, 35.491447, 36.889641>,  <45.224594, 35.623848, 36.982224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.402073, 35.491447, 36.889641>,  <45.697872, 35.270782, 36.735340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.402073, 35.491447, 36.889641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127508, 0.677476, -0.724409,
		-0.660969, -0.486514, -0.571335,
		-0.739501, 0.551662, 0.385756,
		45.180222, 35.656944, 37.005367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.356705, 35.077457, 36.513218>,  <45.697872, 35.270782, 36.735340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.356705, 35.077457, 36.513218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.679699, 34.853401, 36.439224>,  <46.873493, 34.718967, 36.394829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.679699, 34.853401, 36.439224>,  <46.356705, 35.077457, 36.513218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.679699, 34.853401, 36.439224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183551, 0.536602, -0.823631,
		0.560609, 0.631113, 0.536110,
		0.807482, -0.560138, -0.184982,
		46.921944, 34.685360, 36.383728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.906509, 35.495739, 36.249779>,  <46.356705, 35.077457, 36.513218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.906509, 35.495739, 36.249779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.037006, 35.139069, 36.124256>,  <47.115303, 34.925064, 36.048943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.037006, 35.139069, 36.124256>,  <46.906509, 35.495739, 36.249779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.037006, 35.139069, 36.124256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554191, 0.449351, -0.700682,
		0.765793, 0.054683, 0.640758,
		0.326241, -0.891680, -0.313805,
		47.134880, 34.871563, 36.030113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.530693, 35.181915, 36.007877>,  <46.906509, 35.495739, 36.249779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.530693, 35.181915, 36.007877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.278797, 35.031666, 35.735897>,  <47.127659, 34.941517, 35.572708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.278797, 35.031666, 35.735897>,  <47.530693, 35.181915, 36.007877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.278797, 35.031666, 35.735897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722295, 0.605261, 0.334588,
		0.285869, 0.701829, -0.652469,
		-0.629737, -0.375627, -0.679953,
		47.089874, 34.918976, 35.531910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.967278, 35.059288, 35.271111>,  <47.530693, 35.181915, 36.007877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.967278, 35.059288, 35.271111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.690872, 35.012505, 34.985783>,  <47.525028, 34.984432, 34.814587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.690872, 35.012505, 34.985783>,  <47.967278, 35.059288, 35.271111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.690872, 35.012505, 34.985783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180833, 0.983415, 0.013929,
		0.699857, 0.138616, -0.700704,
		-0.691014, -0.116963, -0.713316,
		47.483566, 34.977417, 34.771790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<33.631557, 37.948009, 44.848160> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.340736, 37.834835, 44.597927>,  <33.166245, 37.766930, 44.447788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.340736, 37.834835, 44.597927>,  <33.631557, 37.948009, 44.848160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.340736, 37.834835, 44.597927> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545805, 0.314585, -0.776617,
		0.416530, -0.906082, -0.074291,
		-0.727049, -0.282935, -0.625578,
		33.122623, 37.749954, 44.410255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.959316, 37.640213, 44.316311>,  <33.631557, 37.948009, 44.848160>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.959316, 37.640213, 44.316311> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.608040, 37.715988, 44.140629>,  <33.397274, 37.761452, 44.035221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.608040, 37.715988, 44.140629>,  <33.959316, 37.640213, 44.316311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.608040, 37.715988, 44.140629> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469261, 0.163373, -0.867815,
		-0.092640, -0.968206, -0.232367,
		-0.878187, 0.189435, -0.439206,
		33.344585, 37.772820, 44.008865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.951984, 37.223949, 43.694271>,  <33.959316, 37.640213, 44.316311>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.951984, 37.223949, 43.694271> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.693203, 37.523632, 43.637508>,  <33.537933, 37.703442, 43.603451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.693203, 37.523632, 43.637508>,  <33.951984, 37.223949, 43.694271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.693203, 37.523632, 43.637508> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472113, 0.247413, -0.846106,
		-0.598802, -0.614387, -0.513776,
		-0.646951, 0.749210, -0.141909,
		33.499119, 37.748394, 43.594936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.535690, 36.999229, 43.041553>,  <33.951984, 37.223949, 43.694271>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.535690, 36.999229, 43.041553> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.528893, 37.394234, 43.104210>,  <33.524815, 37.631237, 43.141804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.528893, 37.394234, 43.104210>,  <33.535690, 36.999229, 43.041553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.528893, 37.394234, 43.104210> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263535, 0.155551, -0.952026,
		-0.964500, 0.025104, -0.262886,
		-0.016992, 0.987509, 0.156644,
		33.523796, 37.690487, 43.151203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.307446, 37.176834, 42.498398>,  <33.535690, 36.999229, 43.041553>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.307446, 37.176834, 42.498398> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.478802, 37.509098, 42.640656>,  <33.581615, 37.708458, 42.726009>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.478802, 37.509098, 42.640656>,  <33.307446, 37.176834, 42.498398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.478802, 37.509098, 42.640656> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269776, 0.258063, -0.927698,
		-0.862384, 0.493359, -0.113543,
		0.428387, 0.830663, 0.355646,
		33.607319, 37.758297, 42.747349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.270977, 37.628506, 41.985779>,  <33.307446, 37.176834, 42.498398>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.270977, 37.628506, 41.985779> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.559654, 37.830452, 42.175209>,  <33.732861, 37.951618, 42.288868>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.559654, 37.830452, 42.175209>,  <33.270977, 37.628506, 41.985779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.559654, 37.830452, 42.175209> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316130, 0.368247, -0.874332,
		-0.615809, 0.780711, 0.106159,
		0.721693, 0.504861, 0.473576,
		33.776161, 37.981911, 42.317284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.208935, 38.299091, 41.736481>,  <33.270977, 37.628506, 41.985779>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.208935, 38.299091, 41.736481> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.590023, 38.256573, 41.850334>,  <33.818676, 38.231060, 41.918648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.590023, 38.256573, 41.850334>,  <33.208935, 38.299091, 41.736481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.590023, 38.256573, 41.850334> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303811, 0.320843, -0.897083,
		0.004038, 0.941148, 0.337970,
		0.952724, -0.106301, 0.284636,
		33.875839, 38.224682, 41.935726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.644978, 38.909378, 41.430752>,  <33.208935, 38.299091, 41.736481>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.644978, 38.909378, 41.430752> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.922379, 38.651756, 41.559906>,  <34.088818, 38.497185, 41.637398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.922379, 38.651756, 41.559906>,  <33.644978, 38.909378, 41.430752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.922379, 38.651756, 41.559906> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452516, 0.040655, -0.890829,
		0.560616, 0.763898, 0.319639,
		0.693498, -0.644055, 0.322884,
		34.130428, 38.458538, 41.656773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.212505, 39.228081, 41.270992>,  <33.644978, 38.909378, 41.430752>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.212505, 39.228081, 41.270992> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.309090, 38.841671, 41.307861>,  <34.367043, 38.609825, 41.329983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.309090, 38.841671, 41.307861>,  <34.212505, 39.228081, 41.270992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.309090, 38.841671, 41.307861> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485617, 0.038055, -0.873343,
		0.840162, 0.255639, 0.478306,
		0.241462, -0.966023, 0.092170,
		34.381527, 38.551865, 41.335514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.865562, 39.275497, 40.904171>,  <34.212505, 39.228081, 41.270992>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.865562, 39.275497, 40.904171> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.767391, 38.888508, 40.928680>,  <34.708488, 38.656315, 40.943386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.767391, 38.888508, 40.928680>,  <34.865562, 39.275497, 40.904171>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.767391, 38.888508, 40.928680> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608582, -0.202966, -0.767094,
		0.754581, -0.150981, 0.638602,
		-0.245431, -0.967476, 0.061270,
		34.693764, 38.598267, 40.947060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.430832, 38.870113, 40.821163>,  <34.865562, 39.275497, 40.904171>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.430832, 38.870113, 40.821163> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.132484, 38.631168, 40.703289>,  <34.953476, 38.487801, 40.632565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.132484, 38.631168, 40.703289>,  <35.430832, 38.870113, 40.821163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.132484, 38.631168, 40.703289> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534362, -0.272485, -0.800131,
		0.397670, -0.754261, 0.522445,
		-0.745866, -0.597363, -0.294689,
		34.908726, 38.451962, 40.614883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.747967, 38.216354, 40.691273>,  <35.430832, 38.870113, 40.821163>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.747967, 38.216354, 40.691273> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.405670, 38.238579, 40.485508>,  <35.200291, 38.251915, 40.362049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.405670, 38.238579, 40.485508>,  <35.747967, 38.216354, 40.691273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.405670, 38.238579, 40.485508> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442036, -0.438215, -0.782669,
		-0.268909, -0.897151, 0.350439,
		-0.855740, 0.055560, -0.514414,
		35.148949, 38.255249, 40.331184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.774746, 37.588638, 40.312584>,  <35.747967, 38.216354, 40.691273>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.774746, 37.588638, 40.312584> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.519646, 37.806847, 40.095078>,  <35.366585, 37.937771, 39.964573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.519646, 37.806847, 40.095078>,  <35.774746, 37.588638, 40.312584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.519646, 37.806847, 40.095078> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266243, -0.506316, -0.820219,
		-0.722765, -0.667868, 0.177661,
		-0.637750, 0.545524, -0.543763,
		35.328320, 37.970505, 39.931950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.548820, 37.182686, 39.772713>,  <35.774746, 37.588638, 40.312584>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.548820, 37.182686, 39.772713> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.433144, 37.536362, 39.625973>,  <35.363739, 37.748566, 39.537930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.433144, 37.536362, 39.625973>,  <35.548820, 37.182686, 39.772713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.433144, 37.536362, 39.625973> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188270, -0.323202, -0.927413,
		-0.938574, -0.337267, -0.072999,
		-0.289193, 0.884190, -0.366846,
		35.346386, 37.801620, 39.515919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.099941, 37.061165, 39.174416>,  <35.548820, 37.182686, 39.772713>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.099941, 37.061165, 39.174416> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.255764, 37.427437, 39.134853>,  <35.349258, 37.647198, 39.111115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.255764, 37.427437, 39.134853>,  <35.099941, 37.061165, 39.174416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.255764, 37.427437, 39.134853> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426201, -0.274428, -0.861999,
		-0.816456, 0.293640, -0.497167,
		0.389554, 0.915677, -0.098909,
		35.372631, 37.702141, 39.105179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.085529, 37.223991, 38.434486>,  <35.099941, 37.061165, 39.174416>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.085529, 37.223991, 38.434486> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.361156, 37.484211, 38.562214>,  <35.526531, 37.640343, 38.638851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.361156, 37.484211, 38.562214>,  <35.085529, 37.223991, 38.434486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.361156, 37.484211, 38.562214> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480010, -0.079602, -0.873644,
		-0.542931, 0.755279, -0.367123,
		0.689069, 0.650551, 0.319323,
		35.567879, 37.679375, 38.658012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.235542, 37.772964, 37.948006>,  <35.085529, 37.223991, 38.434486>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.235542, 37.772964, 37.948006> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.554100, 37.819855, 38.185329>,  <35.745235, 37.847988, 38.327724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.554100, 37.819855, 38.185329>,  <35.235542, 37.772964, 37.948006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.554100, 37.819855, 38.185329> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588191, 0.078061, -0.804946,
		-0.140673, 0.990033, -0.006783,
		0.796394, 0.117223, 0.593309,
		35.793018, 37.855022, 38.363323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.624317, 38.360157, 37.777065>,  <35.235542, 37.772964, 37.948006>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.624317, 38.360157, 37.777065> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.907013, 38.142406, 37.957809>,  <36.076630, 38.011757, 38.066254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.907013, 38.142406, 37.957809>,  <35.624317, 38.360157, 37.777065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.907013, 38.142406, 37.957809> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479371, -0.101249, -0.871752,
		0.520311, 0.832708, 0.189402,
		0.706739, -0.544376, 0.451858,
		36.119034, 37.979095, 38.093369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.265430, 38.629353, 37.559307>,  <35.624317, 38.360157, 37.777065>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.265430, 38.629353, 37.559307> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.361221, 38.261627, 37.684219>,  <36.418697, 38.040993, 37.759167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.361221, 38.261627, 37.684219>,  <36.265430, 38.629353, 37.559307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.361221, 38.261627, 37.684219> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697132, -0.061055, -0.714338,
		0.675765, 0.388769, 0.626259,
		0.239476, -0.919310, 0.312282,
		36.433064, 37.985836, 37.777905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.029362, 38.586872, 37.640247>,  <36.265430, 38.629353, 37.559307>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.029362, 38.586872, 37.640247> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.875164, 38.222153, 37.583641>,  <36.782646, 38.003323, 37.549679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.875164, 38.222153, 37.583641>,  <37.029362, 38.586872, 37.640247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.875164, 38.222153, 37.583641> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548039, -0.102863, -0.830104,
		0.742328, -0.397554, 0.539352,
		-0.385491, -0.911795, -0.141517,
		36.759518, 37.948616, 37.541187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.521675, 38.300686, 37.350899>,  <37.029362, 38.586872, 37.640247>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.521675, 38.300686, 37.350899> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.241707, 38.020344, 37.295883>,  <37.073727, 37.852139, 37.262875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.241707, 38.020344, 37.295883>,  <37.521675, 38.300686, 37.350899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.241707, 38.020344, 37.295883> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386796, -0.210070, -0.897920,
		0.600416, -0.681672, 0.418119,
		-0.699921, -0.700852, -0.137538,
		37.031731, 37.810089, 37.254623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.739433, 37.597408, 37.273647>,  <37.521675, 38.300686, 37.350899>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.739433, 37.597408, 37.273647> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.412991, 37.697865, 37.065456>,  <37.217125, 37.758137, 36.940540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.412991, 37.697865, 37.065456>,  <37.739433, 37.597408, 37.273647>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.412991, 37.697865, 37.065456> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453636, -0.279572, -0.846200,
		-0.358023, -0.926698, 0.114236,
		-0.816109, 0.251137, -0.520477,
		37.168159, 37.773205, 36.909313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.797115, 36.879707, 37.489887>,  <37.739433, 37.597408, 37.273647>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.797115, 36.879707, 37.489887> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.150059, 37.038918, 37.590302>,  <38.361824, 37.134445, 37.650551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.150059, 37.038918, 37.590302>,  <37.797115, 36.879707, 37.489887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.150059, 37.038918, 37.590302> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166533, -0.234831, 0.957664,
		0.440129, -0.886808, -0.140920,
		0.882356, 0.398028, 0.251039,
		38.414764, 37.158325, 37.665611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.954727, 36.517883, 38.139629>,  <37.797115, 36.879707, 37.489887>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.954727, 36.517883, 38.139629> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.252239, 36.784901, 38.153378>,  <38.430748, 36.945110, 38.161625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.252239, 36.784901, 38.153378>,  <37.954727, 36.517883, 38.139629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.252239, 36.784901, 38.153378> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114795, -0.178226, 0.977270,
		0.658492, -0.722929, -0.209191,
		0.743781, 0.667539, 0.034372,
		38.475372, 36.985161, 38.163689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.533470, 36.196400, 38.520695>,  <37.954727, 36.517883, 38.139629>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.533470, 36.196400, 38.520695> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.543186, 36.595661, 38.542942>,  <38.549015, 36.835220, 38.556290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.543186, 36.595661, 38.542942>,  <38.533470, 36.196400, 38.520695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.543186, 36.595661, 38.542942> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027310, -0.054953, 0.998115,
		0.999332, -0.025759, 0.025925,
		0.024286, 0.998157, 0.055620,
		38.550472, 36.895107, 38.559628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.112644, 36.296852, 38.985703>,  <38.533470, 36.196400, 38.520695>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.112644, 36.296852, 38.985703> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.898930, 36.634804, 38.974998>,  <38.770702, 36.837574, 38.968578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.898930, 36.634804, 38.974998>,  <39.112644, 36.296852, 38.985703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.898930, 36.634804, 38.974998> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038061, 0.055668, 0.997724,
		0.844446, 0.532053, -0.061899,
		-0.534287, 0.844879, -0.026758,
		38.738644, 36.888268, 38.966972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.228115, 36.577122, 39.581917>,  <39.112644, 36.296852, 38.985703>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.228115, 36.577122, 39.581917> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.903278, 36.787563, 39.480946>,  <38.708378, 36.913830, 39.420364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.903278, 36.787563, 39.480946>,  <39.228115, 36.577122, 39.581917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.903278, 36.787563, 39.480946> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167969, 0.203517, 0.964556,
		0.558833, 0.825707, -0.076905,
		-0.812092, 0.526107, -0.252424,
		38.659653, 36.945396, 39.405220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.346924, 37.089203, 40.026829>,  <39.228115, 36.577122, 39.581917>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.346924, 37.089203, 40.026829> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.960850, 37.058651, 39.926765>,  <38.729206, 37.040321, 39.866726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.960850, 37.058651, 39.926765>,  <39.346924, 37.089203, 40.026829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.960850, 37.058651, 39.926765> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259403, 0.156919, 0.952935,
		-0.033526, 0.984654, -0.171269,
		-0.965187, -0.076375, -0.250162,
		38.671295, 37.035740, 39.851715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.914886, 37.621426, 40.423916>,  <39.346924, 37.089203, 40.026829>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.914886, 37.621426, 40.423916> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.633793, 37.371243, 40.288292>,  <38.465137, 37.221134, 40.206917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.633793, 37.371243, 40.288292>,  <38.914886, 37.621426, 40.423916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.633793, 37.371243, 40.288292> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328303, -0.137712, 0.934480,
		-0.631171, 0.768009, -0.108564,
		-0.702738, -0.625458, -0.339060,
		38.422970, 37.183605, 40.186573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.301941, 37.955406, 40.685421>,  <38.914886, 37.621426, 40.423916>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.301941, 37.955406, 40.685421> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.210449, 37.579327, 40.584465>,  <38.155552, 37.353680, 40.523891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.210449, 37.579327, 40.584465>,  <38.301941, 37.955406, 40.685421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.210449, 37.579327, 40.584465> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487398, -0.113823, 0.865729,
		-0.842689, 0.321034, -0.432218,
		-0.228732, -0.940203, -0.252389,
		38.141830, 37.297264, 40.508747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.507839, 37.920532, 40.682365>,  <38.301941, 37.955406, 40.685421>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.507839, 37.920532, 40.682365> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.713551, 37.588188, 40.767395>,  <37.836975, 37.388783, 40.818413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.713551, 37.588188, 40.767395>,  <37.507839, 37.920532, 40.682365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.713551, 37.588188, 40.767395> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424153, -0.030975, 0.905061,
		-0.745396, -0.555616, -0.368342,
		0.514276, -0.830862, 0.212578,
		37.867832, 37.338928, 40.831169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.026566, 37.481926, 41.074947>,  <37.507839, 37.920532, 40.682365>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.026566, 37.481926, 41.074947> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.353317, 37.272518, 41.171803>,  <37.549370, 37.146873, 41.229916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.353317, 37.272518, 41.171803>,  <37.026566, 37.481926, 41.074947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.353317, 37.272518, 41.171803> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440259, -0.294684, 0.848136,
		-0.372663, -0.799429, -0.471206,
		0.816881, -0.523522, 0.242138,
		37.598381, 37.115463, 41.244446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.779442, 36.885647, 41.178589>,  <37.026566, 37.481926, 41.074947>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.779442, 36.885647, 41.178589> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.126148, 36.912712, 41.376232>,  <37.334171, 36.928951, 41.494820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.126148, 36.912712, 41.376232>,  <36.779442, 36.885647, 41.178589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.126148, 36.912712, 41.376232> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448004, -0.329674, 0.831028,
		0.219128, -0.941667, -0.255434,
		0.866761, 0.067665, 0.494111,
		37.386177, 36.933010, 41.524464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.825245, 36.261292, 41.647236>,  <36.779442, 36.885647, 41.178589>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.825245, 36.261292, 41.647236> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.088860, 36.525402, 41.791294>,  <37.247028, 36.683868, 41.877728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.088860, 36.525402, 41.791294>,  <36.825245, 36.261292, 41.647236>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.088860, 36.525402, 41.791294> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347697, -0.157137, 0.924345,
		0.666917, -0.734398, 0.126018,
		0.659036, 0.660278, 0.360146,
		37.286572, 36.723484, 41.899338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.140072, 35.892666, 42.296062>,  <36.825245, 36.261292, 41.647236>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.140072, 35.892666, 42.296062> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.194141, 36.288166, 42.321659>,  <37.226582, 36.525467, 42.337017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.194141, 36.288166, 42.321659>,  <37.140072, 35.892666, 42.296062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.194141, 36.288166, 42.321659> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432972, 0.000852, 0.901407,
		0.891215, -0.149551, 0.428218,
		0.135171, 0.988754, 0.063992,
		37.234692, 36.584793, 42.340858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.472889, 36.010208, 43.043510>,  <37.140072, 35.892666, 42.296062>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.472889, 36.010208, 43.043510> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.307301, 36.342953, 42.895653>,  <37.207947, 36.542599, 42.806938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.307301, 36.342953, 42.895653>,  <37.472889, 36.010208, 43.043510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.307301, 36.342953, 42.895653> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552043, 0.093463, 0.828561,
		0.723794, 0.547060, 0.420532,
		-0.413969, 0.831860, -0.369649,
		37.183109, 36.592510, 42.784760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.622288, 36.496040, 43.528297>,  <37.472889, 36.010208, 43.043510>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.622288, 36.496040, 43.528297> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.310371, 36.645741, 43.327557>,  <37.123222, 36.735561, 43.207111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.310371, 36.645741, 43.327557>,  <37.622288, 36.496040, 43.528297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.310371, 36.645741, 43.327557> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443203, 0.236135, 0.864761,
		0.442145, 0.896758, -0.018267,
		-0.779794, 0.374254, -0.501851,
		37.076431, 36.758018, 43.177002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.377720, 36.955486, 44.020653>,  <37.622288, 36.496040, 43.528297>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.377720, 36.955486, 44.020653> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.079407, 36.959793, 43.754211>,  <36.900417, 36.962379, 43.594345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.079407, 36.959793, 43.754211>,  <37.377720, 36.955486, 44.020653>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.079407, 36.959793, 43.754211> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608156, 0.397151, 0.687326,
		0.271946, 0.917690, -0.289638,
		-0.745782, 0.010770, -0.666103,
		36.855671, 36.963024, 43.554382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.040573, 37.551727, 44.104816>,  <37.377720, 36.955486, 44.020653>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.040573, 37.551727, 44.104816> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.767647, 37.327538, 43.917068>,  <36.603889, 37.193024, 43.804420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.767647, 37.327538, 43.917068>,  <37.040573, 37.551727, 44.104816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.767647, 37.327538, 43.917068> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701594, 0.321606, 0.635874,
		-0.205439, 0.763177, -0.612663,
		-0.682320, -0.560474, -0.469369,
		36.562950, 37.159397, 43.776257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.471756, 38.019253, 43.901527>,  <37.040573, 37.551727, 44.104816>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.471756, 38.019253, 43.901527> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.344337, 37.640724, 43.923489>,  <36.267887, 37.413609, 43.936665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.344337, 37.640724, 43.923489>,  <36.471756, 38.019253, 43.901527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.344337, 37.640724, 43.923489> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806989, 0.301119, 0.508031,
		-0.497292, 0.117522, -0.859587,
		-0.318542, -0.946318, 0.054905,
		36.248775, 37.356831, 43.939960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<35.833580, 38.032619, 43.560276> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.828758, 37.693596, 43.772503>,  <35.825867, 37.490181, 43.899837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.828758, 37.693596, 43.772503>,  <35.833580, 38.032619, 43.560276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.828758, 37.693596, 43.772503> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.887759, 0.253244, 0.384384,
		-0.460151, -0.466382, -0.755480,
		-0.012051, -0.847558, 0.530565,
		35.825142, 37.439327, 43.931671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.095860, 37.849236, 43.595482>,  <35.833580, 38.032619, 43.560276>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.095860, 37.849236, 43.595482> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.268105, 37.671379, 43.909645>,  <35.371452, 37.564663, 44.098145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.268105, 37.671379, 43.909645>,  <35.095860, 37.849236, 43.595482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.268105, 37.671379, 43.909645> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805181, 0.203882, 0.556880,
		-0.407744, -0.872195, -0.270225,
		0.430613, -0.444644, 0.785407,
		35.397289, 37.537987, 44.145267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.613605, 37.521454, 43.952129>,  <35.095860, 37.849236, 43.595482>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.613605, 37.521454, 43.952129> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.893200, 37.526340, 44.238140>,  <35.060959, 37.529274, 44.409748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.893200, 37.526340, 44.238140>,  <34.613605, 37.521454, 43.952129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.893200, 37.526340, 44.238140> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705270, 0.177265, 0.686419,
		-0.118364, -0.984087, 0.132521,
		0.698988, 0.012216, 0.715029,
		35.102898, 37.530006, 44.452648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.489838, 36.901340, 44.461647>,  <34.613605, 37.521454, 43.952129>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.489838, 36.901340, 44.461647> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.708115, 37.163166, 44.670937>,  <34.839081, 37.320263, 44.796509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.708115, 37.163166, 44.670937>,  <34.489838, 36.901340, 44.461647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.708115, 37.163166, 44.670937> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382145, -0.361291, 0.850549,
		0.745776, -0.664086, 0.052985,
		0.545695, 0.654567, 0.523220,
		34.871822, 37.359535, 44.827904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.695164, 36.546734, 45.044556>,  <34.489838, 36.901340, 44.461647>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.695164, 36.546734, 45.044556> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.773106, 36.929676, 45.129890>,  <34.819870, 37.159439, 45.181091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.773106, 36.929676, 45.129890>,  <34.695164, 36.546734, 45.044556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.773106, 36.929676, 45.129890> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383693, -0.125772, 0.914856,
		0.902670, -0.260117, 0.342822,
		0.194852, 0.957351, 0.213336,
		34.831562, 37.216881, 45.193890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.966782, 36.514965, 45.674442>,  <34.695164, 36.546734, 45.044556>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.966782, 36.514965, 45.674442> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.843781, 36.894657, 45.647907>,  <34.769981, 37.122475, 45.631985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.843781, 36.894657, 45.647907>,  <34.966782, 36.514965, 45.674442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.843781, 36.894657, 45.647907> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402399, -0.066545, 0.913042,
		0.862275, 0.307455, 0.402433,
		-0.307500, 0.949233, -0.066340,
		34.751530, 37.179428, 45.628006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.132454, 36.867542, 46.326359>,  <34.966782, 36.514965, 45.674442>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.132454, 36.867542, 46.326359> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.840092, 37.098980, 46.181580>,  <34.664673, 37.237843, 46.094711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.840092, 37.098980, 46.181580>,  <35.132454, 36.867542, 46.326359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.840092, 37.098980, 46.181580> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272161, 0.239243, 0.932036,
		0.625862, 0.779739, -0.017394,
		-0.730907, 0.578592, -0.361947,
		34.620819, 37.272556, 46.072994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.198292, 37.572266, 46.675926>,  <35.132454, 36.867542, 46.326359>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.198292, 37.572266, 46.675926> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.820232, 37.527935, 46.553024>,  <34.593395, 37.501339, 46.479282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.820232, 37.527935, 46.553024>,  <35.198292, 37.572266, 46.675926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.820232, 37.527935, 46.553024> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320234, 0.129092, 0.938502,
		-0.064344, 0.985420, -0.157501,
		-0.945151, -0.110824, -0.307259,
		34.536686, 37.494686, 46.460846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.837410, 38.098167, 46.898312>,  <35.198292, 37.572266, 46.675926>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.837410, 38.098167, 46.898312> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.531029, 37.849964, 46.831036>,  <34.347202, 37.701042, 46.790668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.531029, 37.849964, 46.831036>,  <34.837410, 38.098167, 46.898312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.531029, 37.849964, 46.831036> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406550, 0.264829, 0.874404,
		-0.498032, 0.738130, -0.455114,
		-0.765951, -0.620508, -0.168194,
		34.301243, 37.663811, 46.780579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.316757, 38.537571, 46.983391>,  <34.837410, 38.098167, 46.898312>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.316757, 38.537571, 46.983391> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.186344, 38.160969, 47.017502>,  <34.108097, 37.935009, 47.037968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.186344, 38.160969, 47.017502>,  <34.316757, 38.537571, 46.983391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.186344, 38.160969, 47.017502> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529153, 0.256501, 0.808829,
		-0.783390, 0.218577, -0.581828,
		-0.326031, -0.941505, 0.085280,
		34.088535, 37.878517, 47.043087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.529022, 38.538425, 47.136429>,  <34.316757, 38.537571, 46.983391>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.529022, 38.538425, 47.136429> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.650669, 38.173763, 47.246998>,  <33.723656, 37.954967, 47.313339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.650669, 38.173763, 47.246998>,  <33.529022, 38.538425, 47.136429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.650669, 38.173763, 47.246998> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524810, 0.081831, 0.847277,
		-0.795040, -0.402736, -0.453558,
		0.304114, -0.911651, 0.276419,
		33.741905, 37.900269, 47.329922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.032696, 38.365959, 47.516953>,  <33.529022, 38.538425, 47.136429>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.032696, 38.365959, 47.516953> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.316727, 38.101212, 47.613052>,  <33.487144, 37.942364, 47.670712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.316727, 38.101212, 47.613052>,  <33.032696, 38.365959, 47.516953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.316727, 38.101212, 47.613052> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422409, -0.127427, 0.897403,
		-0.563350, -0.738709, -0.370063,
		0.710076, -0.661870, 0.240252,
		33.529751, 37.902653, 47.685127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.731678, 37.778313, 47.602898>,  <33.032696, 38.365959, 47.516953>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.731678, 37.778313, 47.602898> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.068970, 37.779808, 47.817913>,  <33.271347, 37.780704, 47.946922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.068970, 37.779808, 47.817913>,  <32.731678, 37.778313, 47.602898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.068970, 37.779808, 47.817913> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516317, -0.272637, 0.811841,
		0.149587, -0.962110, -0.227965,
		0.843232, 0.003739, 0.537537,
		33.321938, 37.780930, 47.979176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.653461, 37.253983, 48.028908>,  <32.731678, 37.778313, 47.602898>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.653461, 37.253983, 48.028908> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.977592, 37.407902, 48.205681>,  <33.172070, 37.500256, 48.311745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.977592, 37.407902, 48.205681>,  <32.653461, 37.253983, 48.028908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.977592, 37.407902, 48.205681> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322859, -0.336193, 0.884723,
		0.489018, -0.859594, -0.148189,
		0.810323, 0.384801, 0.441933,
		33.220688, 37.523342, 48.338261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.883736, 36.682796, 48.440903>,  <32.653461, 37.253983, 48.028908>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.883736, 36.682796, 48.440903> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.017708, 37.031254, 48.584530>,  <33.098091, 37.240330, 48.670704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.017708, 37.031254, 48.584530>,  <32.883736, 36.682796, 48.440903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.017708, 37.031254, 48.584530> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300667, -0.262341, 0.916938,
		0.892985, -0.415067, 0.174060,
		0.334928, 0.871146, 0.359064,
		33.118187, 37.292599, 48.692249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.115128, 36.475582, 49.076283>,  <32.883736, 36.682796, 48.440903>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.115128, 36.475582, 49.076283> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.071461, 36.872204, 49.104305>,  <33.045261, 37.110176, 49.121120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.071461, 36.872204, 49.104305>,  <33.115128, 36.475582, 49.076283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.071461, 36.872204, 49.104305> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348220, -0.104161, 0.931608,
		0.931035, 0.077302, 0.356649,
		-0.109164, 0.991552, 0.070060,
		33.038712, 37.169670, 49.125324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.444107, 36.669842, 49.622383>,  <33.115128, 36.475582, 49.076283>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.444107, 36.669842, 49.622383> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.166004, 36.953251, 49.574051>,  <32.999142, 37.123299, 49.545052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.166004, 36.953251, 49.574051>,  <33.444107, 36.669842, 49.622383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.166004, 36.953251, 49.574051> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285096, -0.117527, 0.951266,
		0.659797, 0.695828, 0.283710,
		-0.695261, 0.708527, -0.120834,
		32.957424, 37.165810, 49.537800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.545429, 37.125088, 50.140884>,  <33.444107, 36.669842, 49.622383>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.545429, 37.125088, 50.140884> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.163734, 37.157196, 50.025650>,  <32.934719, 37.176460, 49.956509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.163734, 37.157196, 50.025650>,  <33.545429, 37.125088, 50.140884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.163734, 37.157196, 50.025650> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287508, 0.018887, 0.957592,
		0.082312, 0.996594, 0.005057,
		-0.954235, 0.080275, -0.288084,
		32.877464, 37.181278, 49.939224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.204102, 37.503380, 50.688599>,  <33.545429, 37.125088, 50.140884>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.204102, 37.503380, 50.688599> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.886330, 37.392666, 50.472351>,  <32.695667, 37.326237, 50.342602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.886330, 37.392666, 50.472351>,  <33.204102, 37.503380, 50.688599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.886330, 37.392666, 50.472351> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553262, -0.037436, 0.832166,
		-0.250572, 0.960201, -0.123396,
		-0.794428, -0.276788, -0.540623,
		32.648003, 37.309631, 50.310165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.700172, 38.029903, 50.785248>,  <33.204102, 37.503380, 50.688599>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.700172, 38.029903, 50.785248> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.520237, 37.685230, 50.691303>,  <32.412277, 37.478428, 50.634937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.520237, 37.685230, 50.691303>,  <32.700172, 38.029903, 50.785248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.520237, 37.685230, 50.691303> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392591, -0.045420, 0.918591,
		-0.802198, 0.505417, -0.317855,
		-0.449835, -0.861679, -0.234858,
		32.385288, 37.426727, 50.620846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.018486, 38.193329, 51.144951>,  <32.700172, 38.029903, 50.785248>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.018486, 38.193329, 51.144951> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.970102, 37.816647, 51.019379>,  <31.941072, 37.590637, 50.944035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.970102, 37.816647, 51.019379>,  <32.018486, 38.193329, 51.144951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.970102, 37.816647, 51.019379> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664389, -0.158170, 0.730458,
		-0.737533, 0.296932, -0.606528,
		-0.120961, -0.941708, -0.313934,
		31.933813, 37.534134, 50.925198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.366209, 37.969231, 51.256161>,  <32.018486, 38.193329, 51.144951>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.366209, 37.969231, 51.256161> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.521721, 37.601868, 51.226822>,  <31.615028, 37.381451, 51.209217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.521721, 37.601868, 51.226822>,  <31.366209, 37.969231, 51.256161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.521721, 37.601868, 51.226822> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629501, -0.322918, 0.706720,
		-0.672742, -0.228585, -0.703681,
		0.388777, -0.918408, -0.073346,
		31.638353, 37.326344, 51.204819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.793787, 37.521202, 51.308094>,  <31.366209, 37.969231, 51.256161>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.793787, 37.521202, 51.308094> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.132307, 37.331768, 51.405663>,  <31.335419, 37.218109, 51.464203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.132307, 37.331768, 51.405663>,  <30.793787, 37.521202, 51.308094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.132307, 37.331768, 51.405663> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469041, -0.445376, 0.762654,
		-0.252545, -0.759842, -0.599051,
		0.846299, -0.473583, 0.243919,
		31.386196, 37.189693, 51.478840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.861700, 36.780804, 51.391228>,  <30.793787, 37.521202, 51.308094>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.861700, 36.780804, 51.391228> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.098917, 36.972908, 51.649731>,  <31.241247, 37.088173, 51.804832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.098917, 36.972908, 51.649731>,  <30.861700, 36.780804, 51.391228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.098917, 36.972908, 51.649731> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508996, -0.398291, 0.763077,
		0.623877, -0.781479, 0.008249,
		0.593044, 0.480265, 0.646255,
		31.276831, 37.116989, 51.843609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.462702, 36.451946, 50.930199>,  <30.861700, 36.780804, 51.391228>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.462702, 36.451946, 50.930199> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.075262, 36.421619, 50.835484>,  <29.842798, 36.403423, 50.778656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.075262, 36.421619, 50.835484>,  <30.462702, 36.451946, 50.930199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.075262, 36.421619, 50.835484> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221831, -0.693633, -0.685321,
		-0.112284, -0.716327, 0.688670,
		-0.968599, -0.075818, -0.236787,
		29.784683, 36.398872, 50.764446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.370810, 35.701744, 50.805229>,  <30.462702, 36.451946, 50.930199>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.370810, 35.701744, 50.805229> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.101574, 35.936981, 50.625851>,  <29.940033, 36.078121, 50.518223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.101574, 35.936981, 50.625851>,  <30.370810, 35.701744, 50.805229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.101574, 35.936981, 50.625851> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250789, -0.388942, -0.886470,
		-0.695743, -0.709137, 0.114306,
		-0.673087, 0.588089, -0.448447,
		29.899647, 36.113407, 50.491318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.139620, 35.323723, 50.153706>,  <30.370810, 35.701744, 50.805229>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.139620, 35.323723, 50.153706> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.973333, 35.681076, 50.085541>,  <29.873562, 35.895489, 50.044643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.973333, 35.681076, 50.085541>,  <30.139620, 35.323723, 50.153706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.973333, 35.681076, 50.085541> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118415, -0.132608, -0.984070,
		-0.901752, -0.429275, -0.050663,
		-0.415718, 0.893386, -0.170412,
		29.848618, 35.949093, 50.034416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.720642, 35.184258, 49.570847>,  <30.139620, 35.323723, 50.153706>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.720642, 35.184258, 49.570847> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.762033, 35.582111, 49.571388>,  <29.786867, 35.820824, 49.571712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.762033, 35.582111, 49.571388>,  <29.720642, 35.184258, 49.570847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.762033, 35.582111, 49.571388> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258494, -0.025579, -0.965674,
		-0.960455, 0.100275, -0.259753,
		0.103478, 0.994631, 0.001353,
		29.793077, 35.880501, 49.571793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.259178, 35.441669, 49.046570>,  <29.720642, 35.184258, 49.570847>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.259178, 35.441669, 49.046570> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.519814, 35.740555, 49.098881>,  <29.676195, 35.919888, 49.130268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.519814, 35.740555, 49.098881>,  <29.259178, 35.441669, 49.046570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.519814, 35.740555, 49.098881> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025614, 0.150625, -0.988259,
		-0.758141, 0.647287, 0.079006,
		0.651587, 0.747216, 0.130774,
		29.715290, 35.964718, 49.138111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.014629, 35.977314, 48.581081>,  <29.259178, 35.441669, 49.046570>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.014629, 35.977314, 48.581081> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.392294, 36.085934, 48.655720>,  <29.618893, 36.151108, 48.700500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.392294, 36.085934, 48.655720>,  <29.014629, 35.977314, 48.581081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.392294, 36.085934, 48.655720> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140265, 0.181167, -0.973398,
		-0.298133, 0.945218, 0.132961,
		0.944162, 0.271552, 0.186593,
		29.675543, 36.167400, 48.711697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.059486, 36.570549, 48.288647>,  <29.014629, 35.977314, 48.581081>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.059486, 36.570549, 48.288647> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.436548, 36.441322, 48.322182>,  <29.662786, 36.363785, 48.342300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.436548, 36.441322, 48.322182>,  <29.059486, 36.570549, 48.288647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.436548, 36.441322, 48.322182> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157097, 0.207846, -0.965464,
		0.294484, 0.923270, 0.246680,
		0.942656, -0.323066, 0.083835,
		29.719345, 36.344402, 48.347332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.359949, 36.969513, 47.896435>,  <29.059486, 36.570549, 48.288647>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.359949, 36.969513, 47.896435> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.634560, 36.680870, 47.932152>,  <29.799326, 36.507687, 47.953583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.634560, 36.680870, 47.932152>,  <29.359949, 36.969513, 47.896435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.634560, 36.680870, 47.932152> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332580, 0.202441, -0.921090,
		0.646586, 0.662047, 0.378972,
		0.686525, -0.721603, 0.089288,
		29.840517, 36.464390, 47.958939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.046240, 37.239258, 47.824131>,  <29.359949, 36.969513, 47.896435>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.046240, 37.239258, 47.824131> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.112829, 36.848671, 47.769295>,  <30.152782, 36.614319, 47.736393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.112829, 36.848671, 47.769295>,  <30.046240, 37.239258, 47.824131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.112829, 36.848671, 47.769295> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686760, 0.214582, -0.694489,
		0.707565, 0.021465, 0.706322,
		0.166471, -0.976470, -0.137089,
		30.162771, 36.555729, 47.728168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.852547, 37.085300, 47.831623>,  <30.046240, 37.239258, 47.824131>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.852547, 37.085300, 47.831623> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.659220, 36.808804, 47.616741>,  <30.543224, 36.642906, 47.487812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.659220, 36.808804, 47.616741>,  <30.852547, 37.085300, 47.831623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.659220, 36.808804, 47.616741> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747573, -0.006560, -0.664146,
		0.455564, -0.722591, 0.519927,
		-0.483317, -0.691245, -0.537201,
		30.514225, 36.601429, 47.455582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.380127, 36.583801, 47.677700>,  <30.852547, 37.085300, 47.831623>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.380127, 36.583801, 47.677700> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.077068, 36.547390, 47.419186>,  <30.895233, 36.525543, 47.264076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.077068, 36.547390, 47.419186>,  <31.380127, 36.583801, 47.677700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.077068, 36.547390, 47.419186> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645223, 0.044657, -0.762688,
		0.098290, -0.994846, 0.024901,
		-0.757645, -0.091031, -0.646287,
		30.849775, 36.520081, 47.225300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.608130, 36.004200, 47.261387>,  <31.380127, 36.583801, 47.677700>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.608130, 36.004200, 47.261387> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.338654, 36.192516, 47.033527>,  <31.176968, 36.305504, 46.896812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.338654, 36.192516, 47.033527>,  <31.608130, 36.004200, 47.261387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.338654, 36.192516, 47.033527> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648176, 0.006167, -0.761466,
		-0.354975, -0.882225, -0.309308,
		-0.673692, 0.470787, -0.569648,
		31.136545, 36.333752, 46.862633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.637295, 35.736988, 46.624466>,  <31.608130, 36.004200, 47.261387>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.637295, 35.736988, 46.624466> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.465752, 36.093670, 46.566578>,  <31.362825, 36.307678, 46.531845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.465752, 36.093670, 46.566578>,  <31.637295, 35.736988, 46.624466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.465752, 36.093670, 46.566578> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499061, 0.100326, -0.860740,
		-0.753007, -0.441357, -0.488041,
		-0.428856, 0.891706, -0.144718,
		31.337095, 36.361183, 46.523163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.654564, 35.759514, 45.889416>,  <31.637295, 35.736988, 46.624466>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.654564, 35.759514, 45.889416> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.529064, 36.126236, 45.988232>,  <31.453764, 36.346268, 46.047523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.529064, 36.126236, 45.988232>,  <31.654564, 35.759514, 45.889416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.529064, 36.126236, 45.988232> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483005, 0.378105, -0.789774,
		-0.817477, -0.128467, -0.561451,
		-0.313747, 0.916806, 0.247042,
		31.434940, 36.401279, 46.062344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.417223, 36.093784, 45.318062>,  <31.654564, 35.759514, 45.889416>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.417223, 36.093784, 45.318062> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.505718, 36.394157, 45.566948>,  <31.558815, 36.574383, 45.716278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.505718, 36.394157, 45.566948>,  <31.417223, 36.093784, 45.318062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.505718, 36.394157, 45.566948> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445294, 0.489841, -0.749513,
		-0.867621, 0.442888, -0.226017,
		0.221238, 0.750937, 0.622212,
		31.572090, 36.619438, 45.753613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.152760, 36.770699, 45.027821>,  <31.417223, 36.093784, 45.318062>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.152760, 36.770699, 45.027821> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.449417, 36.869213, 45.277397>,  <31.627411, 36.928322, 45.427143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.449417, 36.869213, 45.277397>,  <31.152760, 36.770699, 45.027821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.449417, 36.869213, 45.277397> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381955, 0.609588, -0.694631,
		-0.551430, 0.753488, 0.358025,
		0.741644, 0.246291, 0.623943,
		31.671909, 36.943100, 45.464581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.241867, 37.523430, 44.951931>,  <31.152760, 36.770699, 45.027821>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.241867, 37.523430, 44.951931> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.567663, 37.346119, 45.101658>,  <31.763142, 37.239731, 45.191494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.567663, 37.346119, 45.101658>,  <31.241867, 37.523430, 44.951931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.567663, 37.346119, 45.101658> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578563, 0.572504, -0.580951,
		0.043226, 0.689743, 0.722763,
		0.814491, -0.443277, 0.374313,
		31.812010, 37.213135, 45.213951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.668764, 38.057415, 45.300381>,  <31.241867, 37.523430, 44.951931>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.668764, 38.057415, 45.300381> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.914316, 37.754307, 45.211891>,  <32.061646, 37.572441, 45.158798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.914316, 37.754307, 45.211891>,  <31.668764, 38.057415, 45.300381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.914316, 37.754307, 45.211891> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521366, 0.599617, -0.607155,
		0.592730, 0.257384, 0.763167,
		0.613880, -0.757768, -0.221220,
		32.098480, 37.526978, 45.145527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.364918, 38.346680, 45.190830>,  <31.668764, 38.057415, 45.300381>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.364918, 38.346680, 45.190830> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.384956, 37.975639, 45.042747>,  <32.396980, 37.753017, 44.953899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.384956, 37.975639, 45.042747>,  <32.364918, 38.346680, 45.190830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.384956, 37.975639, 45.042747> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626293, 0.317915, -0.711819,
		0.777976, -0.196198, 0.596875,
		0.050098, -0.927597, -0.370208,
		32.399986, 37.697361, 44.931686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.040398, 38.276943, 45.098392>,  <32.364918, 38.346680, 45.190830>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.040398, 38.276943, 45.098392> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.867321, 37.999454, 44.868076>,  <32.763474, 37.832962, 44.729885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.867321, 37.999454, 44.868076>,  <33.040398, 38.276943, 45.098392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.867321, 37.999454, 44.868076> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512374, 0.336275, -0.790185,
		0.741789, -0.636926, 0.209940,
		-0.432692, -0.693718, -0.575789,
		32.737514, 37.791340, 44.695339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.129913, 31.523098, 43.030415> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.741421, 31.534113, 42.935791>,  <39.508327, 31.540722, 42.879017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.741421, 31.534113, 42.935791>,  <40.129913, 31.523098, 43.030415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.741421, 31.534113, 42.935791> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177939, 0.744093, -0.643943,
		0.158285, -0.667508, -0.727585,
		-0.971228, 0.027539, -0.236554,
		39.450054, 31.542376, 42.864826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.148701, 31.656893, 42.347385>,  <40.129913, 31.523098, 43.030415>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.148701, 31.656893, 42.347385> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.784340, 31.769661, 42.467907>,  <39.565723, 31.837322, 42.540222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.784340, 31.769661, 42.467907>,  <40.148701, 31.656893, 42.347385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.784340, 31.769661, 42.467907> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041919, 0.789655, -0.612118,
		-0.410498, -0.544946, -0.731113,
		-0.910898, 0.281921, 0.301308,
		39.511070, 31.854237, 42.558300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.676006, 31.683558, 41.728848>,  <40.148701, 31.656893, 42.347385>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.676006, 31.683558, 41.728848> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.498436, 31.922590, 41.995930>,  <39.391895, 32.066010, 42.156178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.498436, 31.922590, 41.995930>,  <39.676006, 31.683558, 41.728848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.498436, 31.922590, 41.995930> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023366, 0.752617, -0.658043,
		-0.895759, -0.276521, -0.348069,
		-0.443926, 0.597581, 0.667703,
		39.365257, 32.101864, 42.196239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.062939, 31.861656, 41.420681>,  <39.676006, 31.683558, 41.728848>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.062939, 31.861656, 41.420681> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.161774, 32.127811, 41.702450>,  <39.221073, 32.287506, 41.871510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.161774, 32.127811, 41.702450>,  <39.062939, 31.861656, 41.420681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.161774, 32.127811, 41.702450> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218898, 0.669838, -0.709507,
		-0.943946, 0.329504, 0.019854,
		0.247084, 0.665390, 0.704419,
		39.235897, 32.327427, 41.913776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.588902, 32.375614, 41.280998>,  <39.062939, 31.861656, 41.420681>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.588902, 32.375614, 41.280998> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.914684, 32.512684, 41.468285>,  <39.110153, 32.594925, 41.580658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.914684, 32.512684, 41.468285>,  <38.588902, 32.375614, 41.280998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.914684, 32.512684, 41.468285> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111581, 0.699407, -0.705960,
		-0.569388, 0.627221, 0.531405,
		0.814461, 0.342670, 0.468220,
		39.159023, 32.615486, 41.608749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.517563, 33.122700, 41.111786>,  <38.588902, 32.375614, 41.280998>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.517563, 33.122700, 41.111786> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.896275, 33.047031, 41.215954>,  <39.123501, 33.001629, 41.278454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.896275, 33.047031, 41.215954>,  <38.517563, 33.122700, 41.111786>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.896275, 33.047031, 41.215954> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321049, 0.613022, -0.721894,
		-0.023080, 0.767083, 0.641132,
		0.946781, -0.189174, 0.260420,
		39.180309, 32.990280, 41.294079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.844471, 33.660046, 40.759151>,  <38.517563, 33.122700, 41.111786>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.844471, 33.660046, 40.759151> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.139198, 33.442581, 40.919914>,  <39.316036, 33.312103, 41.016373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.139198, 33.442581, 40.919914>,  <38.844471, 33.660046, 40.759151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.139198, 33.442581, 40.919914> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674950, 0.556974, -0.483965,
		0.039261, 0.627862, 0.777333,
		0.736818, -0.543662, 0.401909,
		39.360245, 33.279484, 41.040485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.446922, 34.111271, 41.086769>,  <38.844471, 33.660046, 40.759151>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.446922, 34.111271, 41.086769> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.601582, 33.767784, 40.952240>,  <39.694378, 33.561691, 40.871521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.601582, 33.767784, 40.952240>,  <39.446922, 34.111271, 41.086769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.601582, 33.767784, 40.952240> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781049, 0.498821, -0.375687,
		0.490374, -0.117429, 0.863565,
		0.386648, -0.858713, -0.336327,
		39.717575, 33.510170, 40.851341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.140480, 34.247601, 41.114807>,  <39.446922, 34.111271, 41.086769>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.140480, 34.247601, 41.114807> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.107311, 33.921410, 40.885681>,  <40.087410, 33.725697, 40.748207>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.107311, 33.921410, 40.885681>,  <40.140480, 34.247601, 41.114807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.107311, 33.921410, 40.885681> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875743, 0.214689, -0.432416,
		0.475603, -0.537497, 0.696347,
		-0.082924, -0.815479, -0.572816,
		40.082436, 33.676765, 40.713837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.868614, 34.050034, 41.005478>,  <40.140480, 34.247601, 41.114807>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.868614, 34.050034, 41.005478> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.656254, 33.866276, 40.720634>,  <40.528839, 33.756020, 40.549728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.656254, 33.866276, 40.720634>,  <40.868614, 34.050034, 41.005478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.656254, 33.866276, 40.720634> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793361, 0.025933, -0.608199,
		0.297870, -0.887854, 0.350697,
		-0.530897, -0.459394, -0.712113,
		40.496986, 33.728458, 40.507000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.391815, 33.662418, 40.683254>,  <40.868614, 34.050034, 41.005478>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.391815, 33.662418, 40.683254> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.100338, 33.732922, 40.418545>,  <40.925453, 33.775223, 40.259720>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.100338, 33.732922, 40.418545>,  <41.391815, 33.662418, 40.683254>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.100338, 33.732922, 40.418545> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684551, 0.215804, -0.696289,
		0.020087, -0.960397, -0.277912,
		-0.728689, 0.176258, -0.661775,
		40.881733, 33.785797, 40.220013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.686295, 33.434017, 40.060558>,  <41.391815, 33.662418, 40.683254>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.686295, 33.434017, 40.060558> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.367138, 33.622459, 39.910133>,  <41.175644, 33.735523, 39.819878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.367138, 33.622459, 39.910133>,  <41.686295, 33.434017, 40.060558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.367138, 33.622459, 39.910133> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559586, 0.346927, -0.752666,
		-0.224118, -0.810988, -0.540435,
		-0.797894, 0.471106, -0.376064,
		41.127769, 33.763790, 39.797314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.599697, 33.220875, 39.258411>,  <41.686295, 33.434017, 40.060558>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.599697, 33.220875, 39.258411> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.391788, 33.559090, 39.307262>,  <41.267044, 33.762016, 39.336575>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.391788, 33.559090, 39.307262>,  <41.599697, 33.220875, 39.258411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.391788, 33.559090, 39.307262> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345274, 0.338670, -0.875265,
		-0.781427, -0.412767, -0.467970,
		-0.519767, 0.845533, 0.122128,
		41.235859, 33.812748, 39.343903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.149281, 33.283539, 38.693512>,  <41.599697, 33.220875, 39.258411>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.149281, 33.283539, 38.693512> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.192398, 33.661392, 38.817474>,  <41.218269, 33.888103, 38.891850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.192398, 33.661392, 38.817474>,  <41.149281, 33.283539, 38.693512>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.192398, 33.661392, 38.817474> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224694, 0.280504, -0.933183,
		-0.968448, 0.170228, -0.182016,
		0.107798, 0.944637, 0.309903,
		41.224739, 33.944782, 38.910446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.840408, 33.545811, 38.137535>,  <41.149281, 33.283539, 38.693512>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.840408, 33.545811, 38.137535> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.030571, 33.847820, 38.318165>,  <41.144669, 34.029026, 38.426544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.030571, 33.847820, 38.318165>,  <40.840408, 33.545811, 38.137535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.030571, 33.847820, 38.318165> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228293, 0.389833, -0.892139,
		-0.849627, 0.527224, 0.012964,
		0.475411, 0.755027, 0.451574,
		41.173195, 34.074329, 38.453636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.645370, 34.166904, 37.854340>,  <40.840408, 33.545811, 38.137535>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.645370, 34.166904, 37.854340> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.999023, 34.232914, 38.029190>,  <41.211216, 34.272518, 38.134102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.999023, 34.232914, 38.029190>,  <40.645370, 34.166904, 37.854340>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.999023, 34.232914, 38.029190> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385270, 0.271831, -0.881859,
		-0.264352, 0.948090, 0.176756,
		0.884130, 0.165023, 0.437130,
		41.264263, 34.282421, 38.160328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.930771, 34.695763, 37.475739>,  <40.645370, 34.166904, 37.854340>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.930771, 34.695763, 37.475739> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.262978, 34.598755, 37.676311>,  <41.462299, 34.540550, 37.796654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.262978, 34.598755, 37.676311>,  <40.930771, 34.695763, 37.475739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.262978, 34.598755, 37.676311> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554519, 0.444874, -0.703275,
		-0.052518, 0.862132, 0.503954,
		0.830513, -0.242518, 0.501432,
		41.512131, 34.526001, 37.826740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.284168, 35.262627, 37.473129>,  <40.930771, 34.695763, 37.475739>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.284168, 35.262627, 37.473129> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.557152, 34.971886, 37.503948>,  <41.720943, 34.797443, 37.522438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.557152, 34.971886, 37.503948>,  <41.284168, 35.262627, 37.473129>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.557152, 34.971886, 37.503948> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440090, 0.324460, -0.837285,
		0.583581, 0.605323, 0.541311,
		0.682462, -0.726849, 0.077049,
		41.761890, 34.753830, 37.527061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.953495, 35.574383, 37.393253>,  <41.284168, 35.262627, 37.473129>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.953495, 35.574383, 37.393253> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.028061, 35.186790, 37.328358>,  <42.072800, 34.954235, 37.289421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.028061, 35.186790, 37.328358>,  <41.953495, 35.574383, 37.393253>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.028061, 35.186790, 37.328358> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617681, 0.244003, -0.747618,
		0.764017, 0.039152, 0.644007,
		0.186410, -0.968984, -0.162239,
		42.083984, 34.896095, 37.279686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.740459, 35.556686, 37.322281>,  <41.953495, 35.574383, 37.393253>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.740459, 35.556686, 37.322281> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.552444, 35.235538, 37.175610>,  <42.439636, 35.042850, 37.087605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.552444, 35.235538, 37.175610>,  <42.740459, 35.556686, 37.322281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.552444, 35.235538, 37.175610> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571445, 0.039805, -0.819675,
		0.672692, -0.594818, 0.440088,
		-0.470039, -0.802874, -0.366682,
		42.411434, 34.994675, 37.065605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.264404, 35.062653, 37.172169>,  <42.740459, 35.556686, 37.322281>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.264404, 35.062653, 37.172169> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.937538, 34.997131, 36.951115>,  <42.741417, 34.957817, 36.818481>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.937538, 34.997131, 36.951115>,  <43.264404, 35.062653, 37.172169>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.937538, 34.997131, 36.951115> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501968, 0.269009, -0.821987,
		0.283321, -0.949103, -0.137593,
		-0.817164, -0.163819, -0.552636,
		42.692387, 34.947990, 36.785324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.877243, 35.455914, 37.236225>,  <43.264404, 35.062653, 37.172169>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.877243, 35.455914, 37.236225> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.181744, 35.447220, 36.976986>,  <44.364445, 35.442005, 36.821442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.181744, 35.447220, 36.976986>,  <43.877243, 35.455914, 37.236225>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.181744, 35.447220, 36.976986> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261230, -0.904478, 0.337163,
		-0.593516, -0.425967, -0.682855,
		0.761248, -0.021730, -0.648097,
		44.410118, 35.440701, 36.782558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.925079, 34.799854, 36.822773>,  <43.877243, 35.455914, 37.236225>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.925079, 34.799854, 36.822773> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.275043, 34.969196, 36.916847>,  <44.485020, 35.070801, 36.973293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.275043, 34.969196, 36.916847>,  <43.925079, 34.799854, 36.822773>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.275043, 34.969196, 36.916847> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336449, -0.880635, 0.333591,
		0.348338, -0.212733, -0.912910,
		0.874907, 0.423351, 0.235185,
		44.537514, 35.096203, 36.987404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.541824, 34.289200, 36.724934>,  <43.925079, 34.799854, 36.822773>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.541824, 34.289200, 36.724934> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.684013, 34.555832, 36.987019>,  <44.769329, 34.715813, 37.144272>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.684013, 34.555832, 36.987019>,  <44.541824, 34.289200, 36.724934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.684013, 34.555832, 36.987019> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361688, -0.744489, 0.561176,
		0.861869, 0.037498, -0.505743,
		0.355477, 0.666581, 0.655214,
		44.790657, 34.755806, 37.183582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.212284, 33.941261, 36.914219>,  <44.541824, 34.289200, 36.724934>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.212284, 33.941261, 36.914219> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.077972, 34.198521, 37.189499>,  <44.997387, 34.352875, 37.354668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.077972, 34.198521, 37.189499>,  <45.212284, 33.941261, 36.914219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.077972, 34.198521, 37.189499> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190262, -0.669247, 0.718268,
		0.922525, 0.372118, 0.102354,
		-0.335781, 0.643146, 0.688196,
		44.977238, 34.391464, 37.395958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.666336, 33.832027, 37.393887>,  <45.212284, 33.941261, 36.914219>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.666336, 33.832027, 37.393887> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.341560, 33.993977, 37.562092>,  <45.146694, 34.091148, 37.663017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.341560, 33.993977, 37.562092>,  <45.666336, 33.832027, 37.393887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.341560, 33.993977, 37.562092> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092755, -0.621741, 0.777711,
		0.576328, 0.670458, 0.467261,
		-0.811938, 0.404875, 0.420515,
		45.097980, 34.115440, 37.688248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.765862, 33.614288, 38.054409>,  <45.666336, 33.832027, 37.393887>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.765862, 33.614288, 38.054409> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.380306, 33.720688, 38.059654>,  <45.148975, 33.784527, 38.062801>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.380306, 33.720688, 38.059654>,  <45.765862, 33.614288, 38.054409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.380306, 33.720688, 38.059654> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170707, -0.654878, 0.736202,
		0.204417, 0.707375, 0.676635,
		-0.963884, 0.265998, 0.013114,
		45.091141, 33.800488, 38.063587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.511406, 33.645119, 38.760174>,  <45.765862, 33.614288, 38.054409>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.511406, 33.645119, 38.760174> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.183743, 33.584961, 38.538776>,  <44.987144, 33.548866, 38.405937>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.183743, 33.584961, 38.538776>,  <45.511406, 33.645119, 38.760174>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.183743, 33.584961, 38.538776> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375482, -0.588874, 0.715710,
		-0.433578, 0.794109, 0.425912,
		-0.819160, -0.150394, -0.553497,
		44.937996, 33.539845, 38.372726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.965343, 33.770763, 39.214657>,  <45.511406, 33.645119, 38.760174>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.965343, 33.770763, 39.214657> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.776413, 33.561436, 38.930954>,  <44.663055, 33.435841, 38.760731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.776413, 33.561436, 38.930954>,  <44.965343, 33.770763, 39.214657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.776413, 33.561436, 38.930954> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272257, -0.678702, 0.682085,
		-0.838322, 0.515267, 0.178091,
		-0.472327, -0.523320, -0.709256,
		44.634716, 33.404438, 38.718178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.314335, 33.499752, 39.564762>,  <44.965343, 33.770763, 39.214657>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.314335, 33.499752, 39.564762> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.360188, 33.276348, 39.236145>,  <44.387699, 33.142307, 39.038975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.360188, 33.276348, 39.236145>,  <44.314335, 33.499752, 39.564762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.360188, 33.276348, 39.236145> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398906, -0.783268, 0.476828,
		-0.909799, 0.273059, -0.312578,
		0.114630, -0.558506, -0.821542,
		44.394577, 33.108795, 38.989681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.620251, 33.130714, 39.446522>,  <44.314335, 33.499752, 39.564762>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.620251, 33.130714, 39.446522> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.918022, 32.932167, 39.267883>,  <44.096684, 32.813038, 39.160702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.918022, 32.932167, 39.267883>,  <43.620251, 33.130714, 39.446522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.918022, 32.932167, 39.267883> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267556, -0.834559, 0.481585,
		-0.611755, -0.239015, -0.754074,
		0.744425, -0.496370, -0.446596,
		44.141350, 32.783257, 39.133904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.305527, 32.676861, 38.879257>,  <43.620251, 33.130714, 39.446522>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.305527, 32.676861, 38.879257> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.662228, 32.557350, 39.015209>,  <43.876247, 32.485645, 39.096779>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.662228, 32.557350, 39.015209>,  <43.305527, 32.676861, 38.879257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.662228, 32.557350, 39.015209> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417666, -0.832480, 0.364049,
		0.174174, -0.466596, -0.867151,
		0.891750, -0.298772, 0.339878,
		43.929752, 32.467720, 39.117172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.250290, 31.958771, 38.731846>,  <43.305527, 32.676861, 38.879257>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.250290, 31.958771, 38.731846> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.552013, 32.003155, 38.990677>,  <43.733047, 32.029785, 39.145977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.552013, 32.003155, 38.990677>,  <43.250290, 31.958771, 38.731846>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.552013, 32.003155, 38.990677> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288642, -0.829200, 0.478657,
		0.589670, -0.547828, -0.593442,
		0.754304, 0.110958, 0.647081,
		43.778305, 32.036442, 39.184803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.584278, 31.315786, 38.777161>,  <43.250290, 31.958771, 38.731846>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.584278, 31.315786, 38.777161> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.708828, 31.510641, 39.103535>,  <43.783558, 31.627554, 39.299358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.708828, 31.510641, 39.103535>,  <43.584278, 31.315786, 38.777161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.708828, 31.510641, 39.103535> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198869, -0.806200, 0.557219,
		0.929245, -0.335769, -0.154156,
		0.311377, 0.487136, 0.815931,
		43.802242, 31.656782, 39.348312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.002254, 30.836182, 39.097111>,  <43.584278, 31.315786, 38.777161>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.002254, 30.836182, 39.097111> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.873547, 31.106945, 39.361916>,  <43.796322, 31.269403, 39.520798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.873547, 31.106945, 39.361916>,  <44.002254, 30.836182, 39.097111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.873547, 31.106945, 39.361916> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185208, -0.730689, 0.657108,
		0.928528, 0.088824, 0.360479,
		-0.321765, 0.676908, 0.662015,
		43.777016, 31.310017, 39.560520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.240822, 30.561720, 39.724285>,  <44.002254, 30.836182, 39.097111>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.240822, 30.561720, 39.724285> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.969585, 30.832571, 39.838608>,  <43.806843, 30.995083, 39.907204>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.969585, 30.832571, 39.838608>,  <44.240822, 30.561720, 39.724285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.969585, 30.832571, 39.838608> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371265, -0.651181, 0.661911,
		0.634314, 0.342725, 0.692954,
		-0.678092, 0.677129, 0.285811,
		43.766159, 31.035709, 39.924351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.280613, 30.781939, 40.512035>,  <44.240822, 30.561720, 39.724285>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.280613, 30.781939, 40.512035> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.908009, 30.853466, 40.385345>,  <43.684444, 30.896383, 40.309330>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.908009, 30.853466, 40.385345>,  <44.280613, 30.781939, 40.512035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.908009, 30.853466, 40.385345> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359115, -0.590250, 0.722939,
		-0.057671, 0.787165, 0.614040,
		-0.931510, 0.178819, -0.316723,
		43.628555, 30.907112, 40.290329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.842480, 30.844282, 41.088539>,  <44.280613, 30.781939, 40.512035>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.842480, 30.844282, 41.088539> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.580597, 30.773741, 40.794529>,  <43.423470, 30.731415, 40.618122>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.580597, 30.773741, 40.794529>,  <43.842480, 30.844282, 41.088539>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.580597, 30.773741, 40.794529> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445424, -0.695625, 0.563652,
		-0.610704, 0.696422, 0.376876,
		-0.654704, -0.176355, -0.735025,
		43.384186, 30.720835, 40.574020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.250881, 30.860043, 41.500591>,  <43.842480, 30.844282, 41.088539>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.250881, 30.860043, 41.500591> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.132660, 30.718048, 41.145821>,  <43.061729, 30.632851, 40.932961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.132660, 30.718048, 41.145821>,  <43.250881, 30.860043, 41.500591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.132660, 30.718048, 41.145821> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534361, -0.708149, 0.461500,
		-0.791901, 0.610334, 0.019602,
		-0.295551, -0.354988, -0.886924,
		43.043995, 30.611551, 40.879742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.475410, 30.915171, 41.407761>,  <43.250881, 30.860043, 41.500591>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.475410, 30.915171, 41.407761> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.598301, 30.617624, 41.170349>,  <42.672035, 30.439096, 41.027905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.598301, 30.617624, 41.170349>,  <42.475410, 30.915171, 41.407761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.598301, 30.617624, 41.170349> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602610, -0.634783, 0.483644,
		-0.736526, 0.209074, -0.643286,
		0.307229, -0.743867, -0.593525,
		42.690468, 30.394464, 40.992290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.861858, 30.486107, 41.308365>,  <42.475410, 30.915171, 41.407761>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.861858, 30.486107, 41.308365> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.175545, 30.258892, 41.208492>,  <42.363758, 30.122562, 41.148567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.175545, 30.258892, 41.208492>,  <41.861858, 30.486107, 41.308365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.175545, 30.258892, 41.208492> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331412, -0.723640, 0.605401,
		-0.524569, -0.392018, -0.755744,
		0.784215, -0.568038, -0.249680,
		42.410809, 30.088480, 41.133587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.618958, 29.779339, 41.084858>,  <41.861858, 30.486107, 41.308365>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.618958, 29.779339, 41.084858> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.002193, 29.742439, 41.193344>,  <42.232136, 29.720299, 41.258434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.002193, 29.742439, 41.193344>,  <41.618958, 29.779339, 41.084858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.002193, 29.742439, 41.193344> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250768, -0.727780, 0.638319,
		0.138499, -0.679578, -0.720411,
		0.958088, -0.092249, 0.271213,
		42.289619, 29.714764, 41.274708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.136417, 37.524685, 42.481182> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.867840, 37.286648, 42.304535>,  <37.706692, 37.143826, 42.198547>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.867840, 37.286648, 42.304535>,  <38.136417, 37.524685, 42.481182>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.867840, 37.286648, 42.304535> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560284, -0.017630, -0.828113,
		0.485021, -0.803462, 0.345260,
		-0.671444, -0.595095, -0.441616,
		37.666409, 37.108120, 42.172050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.497185, 36.950417, 42.145050>,  <38.136417, 37.524685, 42.481182>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.497185, 36.950417, 42.145050> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.145935, 36.968441, 41.954529>,  <37.935184, 36.979256, 41.840214>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.145935, 36.968441, 41.954529>,  <38.497185, 36.950417, 42.145050>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.145935, 36.968441, 41.954529> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478245, 0.054784, -0.876516,
		-0.013407, -0.997481, -0.069659,
		-0.878124, 0.045066, -0.476306,
		37.882500, 36.981960, 41.811638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.752548, 36.613285, 41.522892>,  <38.497185, 36.950417, 42.145050>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.752548, 36.613285, 41.522892> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.387592, 36.759953, 41.450108>,  <38.168621, 36.847954, 41.406437>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.387592, 36.759953, 41.450108>,  <38.752548, 36.613285, 41.522892>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.387592, 36.759953, 41.450108> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200213, 0.012019, -0.979679,
		-0.357027, -0.930276, -0.084378,
		-0.912385, 0.366665, -0.181962,
		38.113876, 36.869953, 41.395519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.439198, 36.174847, 40.972176>,  <38.752548, 36.613285, 41.522892>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.439198, 36.174847, 40.972176> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.248280, 36.524673, 40.937958>,  <38.133728, 36.734570, 40.917427>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.248280, 36.524673, 40.937958>,  <38.439198, 36.174847, 40.972176>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.248280, 36.524673, 40.937958> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102984, -0.041011, -0.993837,
		-0.872687, -0.483164, -0.070492,
		-0.477296, 0.874569, -0.085548,
		38.105091, 36.787045, 40.912292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.088146, 36.025051, 40.336479>,  <38.439198, 36.174847, 40.972176>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.088146, 36.025051, 40.336479> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.114021, 36.418709, 40.402534>,  <38.129547, 36.654903, 40.442169>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.114021, 36.418709, 40.402534>,  <38.088146, 36.025051, 40.336479>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.114021, 36.418709, 40.402534> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136077, 0.155241, -0.978459,
		-0.988584, 0.085763, -0.123878,
		0.064685, 0.984147, 0.165139,
		38.133427, 36.713951, 40.452076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.600090, 36.290527, 39.791752>,  <38.088146, 36.025051, 40.336479>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.600090, 36.290527, 39.791752> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.860176, 36.558815, 39.934505>,  <38.016228, 36.719788, 40.020157>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.860176, 36.558815, 39.934505>,  <37.600090, 36.290527, 39.791752>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.860176, 36.558815, 39.934505> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255064, 0.249765, -0.934109,
		-0.715659, 0.698395, -0.008676,
		0.650210, 0.670717, 0.356882,
		38.055241, 36.760029, 40.041569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.408215, 36.968987, 39.508472>,  <37.600090, 36.290527, 39.791752>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.408215, 36.968987, 39.508472> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.799706, 36.999966, 39.584461>,  <38.034599, 37.018555, 39.630054>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.799706, 36.999966, 39.584461>,  <37.408215, 36.968987, 39.508472>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.799706, 36.999966, 39.584461> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163339, 0.266085, -0.950010,
		-0.124128, 0.960833, 0.247775,
		0.978730, 0.077452, 0.189971,
		38.093323, 37.023201, 39.641453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.552998, 37.561256, 39.226887>,  <37.408215, 36.968987, 39.508472>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.552998, 37.561256, 39.226887> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.906605, 37.378963, 39.268475>,  <38.118771, 37.269588, 39.293427>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.906605, 37.378963, 39.268475>,  <37.552998, 37.561256, 39.226887>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.906605, 37.378963, 39.268475> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217215, 0.203550, -0.954665,
		0.413911, 0.866529, 0.278935,
		0.884022, -0.455735, 0.103972,
		38.171810, 37.242245, 39.299667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.033798, 38.028454, 38.963032>,  <37.552998, 37.561256, 39.226887>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.033798, 38.028454, 38.963032> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.216499, 37.673466, 38.938450>,  <38.326118, 37.460472, 38.923702>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.216499, 37.673466, 38.938450>,  <38.033798, 38.028454, 38.963032>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.216499, 37.673466, 38.938450> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247980, 0.193359, -0.949272,
		0.854334, 0.418340, 0.308392,
		0.456749, -0.887470, -0.061453,
		38.353523, 37.407223, 38.920013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.673168, 38.153095, 38.704556>,  <38.033798, 38.028454, 38.963032>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.673168, 38.153095, 38.704556> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.614983, 37.763878, 38.632973>,  <38.580070, 37.530346, 38.590023>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.614983, 37.763878, 38.632973>,  <38.673168, 38.153095, 38.704556>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.614983, 37.763878, 38.632973> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271529, 0.134675, -0.952961,
		0.951374, -0.187213, 0.244620,
		-0.145462, -0.973044, -0.178960,
		38.571342, 37.471966, 38.579285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.232430, 37.999851, 38.227406>,  <38.673168, 38.153095, 38.704556>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.232430, 37.999851, 38.227406> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.980354, 37.690617, 38.198570>,  <38.829109, 37.505074, 38.181271>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.980354, 37.690617, 38.198570>,  <39.232430, 37.999851, 38.227406>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.980354, 37.690617, 38.198570> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093674, 0.016461, -0.995467,
		0.770772, -0.634082, 0.062045,
		-0.630187, -0.773090, -0.072084,
		38.791298, 37.458691, 38.176945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.593216, 37.496658, 37.929665>,  <39.232430, 37.999851, 38.227406>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.593216, 37.496658, 37.929665> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.208714, 37.431664, 37.840603>,  <38.978012, 37.392666, 37.787167>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.208714, 37.431664, 37.840603>,  <39.593216, 37.496658, 37.929665>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.208714, 37.431664, 37.840603> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221444, 0.025778, -0.974832,
		0.164138, -0.986374, 0.011203,
		-0.961260, -0.162488, -0.222658,
		38.920334, 37.382919, 37.773804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.434589, 36.877361, 37.447216>,  <39.593216, 37.496658, 37.929665>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.434589, 36.877361, 37.447216> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.137970, 37.144386, 37.420502>,  <38.959999, 37.304604, 37.404472>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.137970, 37.144386, 37.420502>,  <39.434589, 36.877361, 37.447216>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.137970, 37.144386, 37.420502> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018198, -0.119525, -0.992664,
		-0.670653, -0.734893, 0.100782,
		-0.741548, 0.667567, -0.066786,
		38.915504, 37.344658, 37.400467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.324791, 36.111748, 37.582218>,  <39.434589, 36.877361, 37.447216>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.324791, 36.111748, 37.582218> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.193432, 35.841263, 37.318436>,  <39.114616, 35.678970, 37.160164>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.193432, 35.841263, 37.318436>,  <39.324791, 36.111748, 37.582218>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.193432, 35.841263, 37.318436> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476894, -0.483952, 0.733732,
		-0.815308, 0.555448, -0.163554,
		-0.328398, -0.676216, -0.659460,
		39.094913, 35.638397, 37.120598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.580894, 36.077351, 37.456509>,  <39.324791, 36.111748, 37.582218>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.580894, 36.077351, 37.456509> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.735294, 35.715660, 37.383427>,  <38.827934, 35.498646, 37.339577>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.735294, 35.715660, 37.383427>,  <38.580894, 36.077351, 37.456509>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.735294, 35.715660, 37.383427> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512721, -0.374932, 0.772362,
		-0.766892, -0.204453, -0.608339,
		0.385997, -0.904226, -0.182705,
		38.851093, 35.444393, 37.328613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.076420, 35.580429, 37.298031>,  <38.580894, 36.077351, 37.456509>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.076420, 35.580429, 37.298031> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.377617, 35.352249, 37.429234>,  <38.558334, 35.215340, 37.507954>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.377617, 35.352249, 37.429234>,  <38.076420, 35.580429, 37.298031>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.377617, 35.352249, 37.429234> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653948, -0.593281, 0.469436,
		-0.073191, -0.567980, -0.819782,
		0.752991, -0.570453, 0.328006,
		38.603516, 35.181114, 37.527634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.882263, 34.840343, 37.235088>,  <38.076420, 35.580429, 37.298031>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.882263, 34.840343, 37.235088> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.145798, 34.850117, 37.535847>,  <38.303917, 34.855980, 37.716301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.145798, 34.850117, 37.535847>,  <37.882263, 34.840343, 37.235088>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.145798, 34.850117, 37.535847> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646302, -0.493129, 0.582338,
		0.385009, -0.869613, -0.309098,
		0.658834, 0.024435, 0.751892,
		38.343449, 34.857449, 37.761414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.768463, 34.254555, 37.602489>,  <37.882263, 34.840343, 37.235088>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.768463, 34.254555, 37.602489> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.000507, 34.449432, 37.863598>,  <38.139732, 34.566360, 38.020264>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.000507, 34.449432, 37.863598>,  <37.768463, 34.254555, 37.602489>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.000507, 34.449432, 37.863598> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367420, -0.558722, 0.743527,
		0.726961, -0.671170, -0.145115,
		0.580112, 0.487197, 0.652771,
		38.174541, 34.595592, 38.059429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.935276, 33.754585, 38.052876>,  <37.768463, 34.254555, 37.602489>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.935276, 33.754585, 38.052876> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.001469, 34.092537, 38.256363>,  <38.041183, 34.295307, 38.378456>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.001469, 34.092537, 38.256363>,  <37.935276, 33.754585, 38.052876>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.001469, 34.092537, 38.256363> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390349, -0.417594, 0.820514,
		0.905673, -0.334357, 0.260695,
		0.165480, 0.844879, 0.508719,
		38.051113, 34.346001, 38.408978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.195671, 33.544708, 38.728867>,  <37.935276, 33.754585, 38.052876>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.195671, 33.544708, 38.728867> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.081532, 33.921276, 38.800758>,  <38.013046, 34.147217, 38.843895>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.081532, 33.921276, 38.800758>,  <38.195671, 33.544708, 38.728867>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.081532, 33.921276, 38.800758> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452235, -0.297595, 0.840786,
		0.845019, 0.158639, 0.510662,
		-0.285352, 0.941419, 0.179731,
		37.995926, 34.203701, 38.854679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.351479, 33.710228, 39.518124>,  <38.195671, 33.544708, 38.728867>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.351479, 33.710228, 39.518124> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.075188, 33.959526, 39.371449>,  <37.909412, 34.109104, 39.283443>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.075188, 33.959526, 39.371449>,  <38.351479, 33.710228, 39.518124>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.075188, 33.959526, 39.371449> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632102, -0.274106, 0.724785,
		0.351207, 0.732414, 0.583287,
		-0.690725, 0.623246, -0.366692,
		37.867970, 34.146500, 39.261440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.133472, 34.039364, 40.075756>,  <38.351479, 33.710228, 39.518124>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.133472, 34.039364, 40.075756> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.822552, 34.075592, 39.826725>,  <37.636002, 34.097328, 39.677307>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.822552, 34.075592, 39.826725>,  <38.133472, 34.039364, 40.075756>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.822552, 34.075592, 39.826725> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628358, -0.160851, 0.761113,
		-0.031212, 0.982815, 0.181937,
		-0.777298, 0.090566, -0.622580,
		37.589363, 34.102760, 39.639950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.652382, 34.397465, 40.447315>,  <38.133472, 34.039364, 40.075756>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.652382, 34.397465, 40.447315> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.416641, 34.267921, 40.151268>,  <37.275196, 34.190197, 39.973640>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.416641, 34.267921, 40.151268>,  <37.652382, 34.397465, 40.447315>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.416641, 34.267921, 40.151268> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766119, -0.066672, 0.639231,
		-0.256365, 0.943754, -0.208819,
		-0.589354, -0.323857, -0.740120,
		37.239834, 34.170765, 39.929234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.077213, 34.856804, 40.336727>,  <37.652382, 34.397465, 40.447315>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.077213, 34.856804, 40.336727> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.972290, 34.508362, 40.170658>,  <36.909336, 34.299297, 40.071018>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.972290, 34.508362, 40.170658>,  <37.077213, 34.856804, 40.336727>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.972290, 34.508362, 40.170658> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.919774, 0.095549, 0.380639,
		-0.291909, 0.481707, -0.826285,
		-0.262307, -0.871108, -0.415170,
		36.893597, 34.247028, 40.046108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.444901, 34.990044, 39.983063>,  <37.077213, 34.856804, 40.336727>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.444901, 34.990044, 39.983063> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.463200, 34.596817, 40.054050>,  <36.474178, 34.360882, 40.096642>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.463200, 34.596817, 40.054050>,  <36.444901, 34.990044, 39.983063>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.463200, 34.596817, 40.054050> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.925754, 0.025030, 0.377298,
		-0.375349, -0.181555, -0.908928,
		0.045750, -0.983062, 0.177471,
		36.476925, 34.301899, 40.107292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.734581, 34.784409, 39.784378>,  <36.444901, 34.990044, 39.983063>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.734581, 34.784409, 39.784378> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.894478, 34.484440, 39.995216>,  <35.990417, 34.304459, 40.121719>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.894478, 34.484440, 39.995216>,  <35.734581, 34.784409, 39.784378>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.894478, 34.484440, 39.995216> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841261, -0.071813, 0.535838,
		-0.363984, -0.657619, -0.659586,
		0.399744, -0.749920, 0.527091,
		36.014400, 34.259464, 40.153343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.215809, 34.353527, 39.993092>,  <35.734581, 34.784409, 39.784378>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.215809, 34.353527, 39.993092> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.475163, 34.283012, 40.289341>,  <35.630775, 34.240704, 40.467091>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.475163, 34.283012, 40.289341>,  <35.215809, 34.353527, 39.993092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.475163, 34.283012, 40.289341> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724530, 0.155868, 0.671387,
		-0.233794, -0.971921, -0.026661,
		0.648380, -0.176283, 0.740627,
		35.669678, 34.230129, 40.511528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.882626, 33.772457, 40.521145>,  <35.215809, 34.353527, 39.993092>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.882626, 33.772457, 40.521145> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.146465, 33.975559, 40.742821>,  <35.304768, 34.097420, 40.875824>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.146465, 33.975559, 40.742821>,  <34.882626, 33.772457, 40.521145>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.146465, 33.975559, 40.742821> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618794, -0.051691, 0.783850,
		0.426648, -0.859951, 0.280098,
		0.659595, 0.507751, 0.554187,
		35.344345, 34.127884, 40.909077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.690548, 33.066307, 40.622932>,  <34.882626, 33.772457, 40.521145>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.690548, 33.066307, 40.622932> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.328968, 32.916683, 40.540039>,  <34.112019, 32.826908, 40.490303>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.328968, 32.916683, 40.540039>,  <34.690548, 33.066307, 40.622932>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.328968, 32.916683, 40.540039> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163785, 0.144818, -0.975808,
		0.395025, -0.916026, -0.069643,
		-0.903952, -0.374063, -0.207238,
		34.057781, 32.804466, 40.477867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.725388, 32.475128, 40.086773>,  <34.690548, 33.066307, 40.622932>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.725388, 32.475128, 40.086773> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.362656, 32.643372, 40.075817>,  <34.145016, 32.744320, 40.069244>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.362656, 32.643372, 40.075817>,  <34.725388, 32.475128, 40.086773>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.362656, 32.643372, 40.075817> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162340, 0.288553, -0.943601,
		-0.388986, -0.860130, -0.329950,
		-0.906827, 0.420612, -0.027391,
		34.090607, 32.769554, 40.067600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.638794, 32.454590, 39.402554>,  <34.725388, 32.475128, 40.086773>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.638794, 32.454590, 39.402554> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.308380, 32.645626, 39.522266>,  <34.110130, 32.760250, 39.594093>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.308380, 32.645626, 39.522266>,  <34.638794, 32.454590, 39.402554>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.308380, 32.645626, 39.522266> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122794, 0.365754, -0.922575,
		-0.550081, -0.798830, -0.243480,
		-0.826034, 0.477593, 0.299286,
		34.060570, 32.788902, 39.612053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.081589, 32.216686, 39.094307>,  <34.638794, 32.454590, 39.402554>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.081589, 32.216686, 39.094307> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.996231, 32.597691, 39.181198>,  <33.945015, 32.826294, 39.233334>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.996231, 32.597691, 39.181198>,  <34.081589, 32.216686, 39.094307>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.996231, 32.597691, 39.181198> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062389, 0.208610, -0.976007,
		-0.974972, -0.221825, 0.014910,
		-0.213393, 0.952510, 0.217229,
		33.932213, 32.883442, 39.246368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.472343, 32.436527, 38.715599>,  <34.081589, 32.216686, 39.094307>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.472343, 32.436527, 38.715599> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.628746, 32.789467, 38.820347>,  <33.722588, 33.001228, 38.883194>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.628746, 32.789467, 38.820347>,  <33.472343, 32.436527, 38.715599>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.628746, 32.789467, 38.820347> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205545, 0.361046, -0.909613,
		-0.897141, 0.301843, 0.322535,
		0.391011, 0.882347, 0.261867,
		33.746048, 33.054173, 38.898907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.953182, 32.976727, 38.485085>,  <33.472343, 32.436527, 38.715599>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.953182, 32.976727, 38.485085> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.322720, 33.124348, 38.525692>,  <33.544441, 33.212921, 38.550056>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.322720, 33.124348, 38.525692>,  <32.953182, 32.976727, 38.485085>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.322720, 33.124348, 38.525692> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141654, 0.576042, -0.805052,
		-0.355586, 0.729365, 0.584453,
		0.923847, 0.369055, 0.101515,
		33.599873, 33.235065, 38.556145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.873203, 33.674416, 38.304825>,  <32.953182, 32.976727, 38.485085>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.873203, 33.674416, 38.304825> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.267044, 33.612537, 38.272263>,  <33.503349, 33.575409, 38.252728>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.267044, 33.612537, 38.272263>,  <32.873203, 33.674416, 38.304825>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.267044, 33.612537, 38.272263> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000379, 0.467570, -0.883956,
		0.174805, 0.870315, 0.460429,
		0.984603, -0.154695, -0.081404,
		33.562424, 33.566128, 38.247841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.139446, 34.306061, 38.090286>,  <32.873203, 33.674416, 38.304825>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.139446, 34.306061, 38.090286> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.403656, 34.023113, 37.989613>,  <33.562180, 33.853344, 37.929211>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.403656, 34.023113, 37.989613>,  <33.139446, 34.306061, 38.090286>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.403656, 34.023113, 37.989613> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011656, 0.344833, -0.938591,
		0.750716, 0.617027, 0.236015,
		0.660522, -0.707367, -0.251680,
		33.601814, 33.810902, 37.914108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.638577, 34.662613, 37.682423>,  <33.139446, 34.306061, 38.090286>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.638577, 34.662613, 37.682423> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.699661, 34.277836, 37.591785>,  <33.736313, 34.046970, 37.537403>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.699661, 34.277836, 37.591785>,  <33.638577, 34.662613, 37.682423>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.699661, 34.277836, 37.591785> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005696, 0.228427, -0.973544,
		0.988254, 0.149961, 0.029404,
		0.152711, -0.961942, -0.226598,
		33.745476, 33.989254, 37.523808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.076679, 34.656376, 37.048588>,  <33.638577, 34.662613, 37.682423>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.076679, 34.656376, 37.048588> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.934196, 34.283367, 37.024834>,  <33.848709, 34.059563, 37.010582>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.934196, 34.283367, 37.024834>,  <34.076679, 34.656376, 37.048588>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.934196, 34.283367, 37.024834> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150100, 0.119834, -0.981381,
		0.922274, -0.340657, -0.182657,
		-0.356203, -0.932519, -0.059387,
		33.827335, 34.003613, 37.007019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.525726, 34.327198, 36.525177>,  <34.076679, 34.656376, 37.048588>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.525726, 34.327198, 36.525177> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.170715, 34.151409, 36.580536>,  <33.957706, 34.045937, 36.613750>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.170715, 34.151409, 36.580536>,  <34.525726, 34.327198, 36.525177>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.170715, 34.151409, 36.580536> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152292, -0.003683, -0.988329,
		0.434852, -0.898249, -0.063659,
		-0.887531, -0.439472, 0.138398,
		33.904457, 34.019569, 36.622055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.427551, 33.672741, 36.079708>,  <34.525726, 34.327198, 36.525177>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.427551, 33.672741, 36.079708> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.084190, 33.866688, 36.146690>,  <33.878174, 33.983055, 36.186878>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.084190, 33.866688, 36.146690>,  <34.427551, 33.672741, 36.079708>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.084190, 33.866688, 36.146690> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221920, -0.056712, -0.973414,
		-0.462483, -0.872746, 0.156284,
		-0.858406, 0.484870, 0.167451,
		33.826668, 34.012150, 36.196926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<33.760902, 31.671265, 44.004951> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.389641, 31.765665, 43.889824>,  <33.166885, 31.822306, 43.820747>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.389641, 31.765665, 43.889824>,  <33.760902, 31.671265, 44.004951>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.389641, 31.765665, 43.889824> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252472, -0.168975, -0.952736,
		-0.273483, -0.956948, 0.097250,
		-0.928151, 0.236004, -0.287815,
		33.111195, 31.836466, 43.803478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.585655, 31.182076, 43.499424>,  <33.760902, 31.671265, 44.004951>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.585655, 31.182076, 43.499424> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.344425, 31.495333, 43.438782>,  <33.199688, 31.683287, 43.402397>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.344425, 31.495333, 43.438782>,  <33.585655, 31.182076, 43.499424>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.344425, 31.495333, 43.438782> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253430, 0.007896, -0.967321,
		-0.756356, -0.621789, -0.203234,
		-0.603075, 0.783145, -0.151607,
		33.163502, 31.730276, 43.393299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.186401, 31.065136, 42.875416>,  <33.585655, 31.182076, 43.499424>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.186401, 31.065136, 42.875416> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.123623, 31.458775, 42.908703>,  <33.085957, 31.694958, 42.928673>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.123623, 31.458775, 42.908703>,  <33.186401, 31.065136, 42.875416>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.123623, 31.458775, 42.908703> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171314, 0.110107, -0.979044,
		-0.972636, -0.139397, -0.185870,
		-0.156942, 0.984096, 0.083213,
		33.076542, 31.754004, 42.933666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.843502, 31.196836, 42.277626>,  <33.186401, 31.065136, 42.875416>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.843502, 31.196836, 42.277626> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.959534, 31.558712, 42.402458>,  <33.029152, 31.775837, 42.477360>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.959534, 31.558712, 42.402458>,  <32.843502, 31.196836, 42.277626>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.959534, 31.558712, 42.402458> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284276, 0.229930, -0.930763,
		-0.913807, 0.358708, -0.190484,
		0.290074, 0.904688, 0.312084,
		33.046555, 31.830118, 42.496082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.538654, 31.764874, 41.742363>,  <32.843502, 31.196836, 42.277626>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.538654, 31.764874, 41.742363> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.857258, 31.920458, 41.927525>,  <33.048420, 32.013809, 42.038624>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.857258, 31.920458, 41.927525>,  <32.538654, 31.764874, 41.742363>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.857258, 31.920458, 41.927525> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169349, 0.591447, -0.788360,
		-0.580426, 0.706329, 0.405223,
		0.796509, 0.388960, 0.462907,
		33.096210, 32.037148, 42.066399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.459164, 32.467690, 41.591763>,  <32.538654, 31.764874, 41.742363>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.459164, 32.467690, 41.591763> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.842392, 32.413200, 41.692589>,  <33.072330, 32.380505, 41.753086>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.842392, 32.413200, 41.692589>,  <32.459164, 32.467690, 41.591763>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.842392, 32.413200, 41.692589> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286232, 0.494843, -0.820489,
		-0.012963, 0.858238, 0.513088,
		0.958073, -0.136226, 0.252069,
		33.129814, 32.372334, 41.768211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.794628, 33.087814, 41.516506>,  <32.459164, 32.467690, 41.591763>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.794628, 33.087814, 41.516506> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.103230, 32.833344, 41.513401>,  <33.288391, 32.680660, 41.511539>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.103230, 32.833344, 41.513401>,  <32.794628, 33.087814, 41.516506>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.103230, 32.833344, 41.513401> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327161, 0.407162, -0.852751,
		0.545658, 0.655365, 0.522260,
		0.771508, -0.636173, -0.007762,
		33.334682, 32.642490, 41.511074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.435463, 33.450321, 41.381184>,  <32.794628, 33.087814, 41.516506>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.435463, 33.450321, 41.381184> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.506512, 33.068794, 41.284279>,  <33.549141, 32.839878, 41.226135>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.506512, 33.068794, 41.284279>,  <33.435463, 33.450321, 41.381184>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.506512, 33.068794, 41.284279> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422757, 0.296259, -0.856450,
		0.888666, 0.049705, 0.455853,
		0.177620, -0.953813, -0.242262,
		33.559799, 32.782650, 41.211601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.172562, 33.345997, 41.156292>,  <33.435463, 33.450321, 41.381184>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.172562, 33.345997, 41.156292> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.976837, 33.028267, 41.012283>,  <33.859402, 32.837627, 40.925877>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.976837, 33.028267, 41.012283>,  <34.172562, 33.345997, 41.156292>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.976837, 33.028267, 41.012283> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337059, 0.208497, -0.918107,
		0.804343, -0.570588, 0.165716,
		-0.489310, -0.794329, -0.360025,
		33.830044, 32.789967, 40.904278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.850842, 33.477604, 41.224266>,  <34.172562, 33.345997, 41.156292>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.850842, 33.477604, 41.224266> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.073811, 33.796017, 41.318588>,  <35.207592, 33.987064, 41.375183>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.073811, 33.796017, 41.318588>,  <34.850842, 33.477604, 41.224266>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.073811, 33.796017, 41.318588> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489249, 0.085490, 0.867944,
		0.670755, -0.599182, 0.437114,
		0.557425, 0.796035, 0.235806,
		35.241039, 34.034828, 41.389332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.130219, 33.354477, 41.872776>,  <34.850842, 33.477604, 41.224266>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.130219, 33.354477, 41.872776> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.119774, 33.753323, 41.844276>,  <35.113506, 33.992630, 41.827175>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.119774, 33.753323, 41.844276>,  <35.130219, 33.354477, 41.872776>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.119774, 33.753323, 41.844276> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294781, 0.060425, 0.953652,
		0.955208, 0.045904, 0.292353,
		-0.026111, 0.997117, -0.071250,
		35.111942, 34.052456, 41.822903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.402378, 33.583271, 42.435467>,  <35.130219, 33.354477, 41.872776>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.402378, 33.583271, 42.435467> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.190681, 33.901161, 42.316597>,  <35.063663, 34.091896, 42.245277>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.190681, 33.901161, 42.316597>,  <35.402378, 33.583271, 42.435467>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.190681, 33.901161, 42.316597> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281628, 0.165846, 0.945082,
		0.800369, 0.583867, 0.136046,
		-0.529240, 0.794729, -0.297172,
		35.031910, 34.139580, 42.227444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.502735, 34.049244, 42.932354>,  <35.402378, 33.583271, 42.435467>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.502735, 34.049244, 42.932354> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.187347, 34.213291, 42.749001>,  <34.998116, 34.311722, 42.638988>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.187347, 34.213291, 42.749001>,  <35.502735, 34.049244, 42.932354>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.187347, 34.213291, 42.749001> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424857, 0.175748, 0.888037,
		0.444764, 0.894937, 0.035672,
		-0.788468, 0.410123, -0.458387,
		34.950806, 34.336327, 42.611485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.306713, 34.770679, 43.233479>,  <35.502735, 34.049244, 42.932354>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.306713, 34.770679, 43.233479> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.960171, 34.645382, 43.077888>,  <34.752247, 34.570202, 42.984535>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.960171, 34.645382, 43.077888>,  <35.306713, 34.770679, 43.233479>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.960171, 34.645382, 43.077888> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454974, 0.173815, 0.873377,
		-0.205971, 0.933630, -0.293105,
		-0.866357, -0.313246, -0.388977,
		34.700264, 34.551407, 42.961197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.812790, 35.103474, 43.576302>,  <35.306713, 34.770679, 43.233479>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.812790, 35.103474, 43.576302> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.552944, 34.873478, 43.377350>,  <34.397038, 34.735481, 43.257980>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.552944, 34.873478, 43.377350>,  <34.812790, 35.103474, 43.576302>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.552944, 34.873478, 43.377350> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649280, 0.079239, 0.756411,
		-0.395520, 0.814312, -0.424806,
		-0.649615, -0.574993, -0.497376,
		34.358059, 34.700981, 43.228138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.213978, 35.436131, 43.584595>,  <34.812790, 35.103474, 43.576302>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.213978, 35.436131, 43.584595> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.094643, 35.061630, 43.510368>,  <34.023041, 34.836929, 43.465832>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.094643, 35.061630, 43.510368>,  <34.213978, 35.436131, 43.584595>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.094643, 35.061630, 43.510368> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513996, -0.006223, 0.857770,
		-0.804241, 0.351282, -0.479371,
		-0.298337, -0.936249, -0.185562,
		34.005142, 34.780754, 43.454700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.477722, 35.400593, 43.706936>,  <34.213978, 35.436131, 43.584595>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.477722, 35.400593, 43.706936> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.607327, 35.022934, 43.730907>,  <33.685089, 34.796337, 43.745289>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.607327, 35.022934, 43.730907>,  <33.477722, 35.400593, 43.706936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.607327, 35.022934, 43.730907> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410726, -0.083322, 0.907944,
		-0.852243, -0.318802, -0.414785,
		0.324015, -0.944152, 0.059930,
		33.704533, 34.739689, 43.748886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.870129, 35.038872, 43.883934>,  <33.477722, 35.400593, 43.706936>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.870129, 35.038872, 43.883934> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.179104, 34.808891, 43.991840>,  <33.364491, 34.670902, 44.056583>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.179104, 34.808891, 43.991840>,  <32.870129, 35.038872, 43.883934>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.179104, 34.808891, 43.991840> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485942, -0.261585, 0.833926,
		-0.408904, -0.775243, -0.481452,
		0.772436, -0.574953, 0.269761,
		33.410835, 34.636406, 44.072769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.634502, 34.274799, 44.098431>,  <32.870129, 35.038872, 43.883934>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.634502, 34.274799, 44.098431> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.973148, 34.395687, 44.273663>,  <33.176334, 34.468220, 44.378799>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.973148, 34.395687, 44.273663>,  <32.634502, 34.274799, 44.098431>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.973148, 34.395687, 44.273663> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400725, -0.179700, 0.898403,
		0.350239, -0.936146, -0.031029,
		0.846612, 0.302221, 0.438076,
		33.227131, 34.486355, 44.405087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.565643, 33.931873, 44.670933>,  <32.634502, 34.274799, 44.098431>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.565643, 33.931873, 44.670933> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.888454, 34.147457, 44.767456>,  <33.082142, 34.276810, 44.825371>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.888454, 34.147457, 44.767456>,  <32.565643, 33.931873, 44.670933>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.888454, 34.147457, 44.767456> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207522, -0.123734, 0.970374,
		0.552854, -0.833192, 0.011990,
		0.807024, 0.538963, 0.241312,
		33.130562, 34.309147, 44.839851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.838852, 33.602329, 45.312927>,  <32.565643, 33.931873, 44.670933>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.838852, 33.602329, 45.312927> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.986965, 33.972652, 45.282539>,  <33.075832, 34.194847, 45.264305>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.986965, 33.972652, 45.282539>,  <32.838852, 33.602329, 45.312927>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.986965, 33.972652, 45.282539> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014592, 0.075980, 0.997003,
		0.928803, -0.370286, 0.014625,
		0.370287, 0.925806, -0.075974,
		33.098053, 34.250393, 45.259747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.539730, 33.670292, 45.656750>,  <32.838852, 33.602329, 45.312927>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.539730, 33.670292, 45.656750> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.383446, 34.037968, 45.636971>,  <33.289677, 34.258572, 45.625103>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.383446, 34.037968, 45.636971>,  <33.539730, 33.670292, 45.656750>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.383446, 34.037968, 45.636971> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036543, 0.069162, 0.996936,
		0.919789, 0.387704, -0.060612,
		-0.390708, 0.919186, -0.049446,
		33.266232, 34.313725, 45.622135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.854267, 34.027775, 46.172619>,  <33.539730, 33.670292, 45.656750>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.854267, 34.027775, 46.172619> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.524403, 34.244911, 46.109058>,  <33.326485, 34.375195, 46.070923>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.524403, 34.244911, 46.109058>,  <33.854267, 34.027775, 46.172619>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.524403, 34.244911, 46.109058> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076830, 0.170828, 0.982301,
		0.560383, 0.822275, -0.099169,
		-0.824663, 0.542845, -0.158904,
		33.277004, 34.407764, 46.061386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<29.564201, 35.896896, 44.022366> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.797106, 35.598831, 44.152416>,  <29.936848, 35.419991, 44.230446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.797106, 35.598831, 44.152416>,  <29.564201, 35.896896, 44.022366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.797106, 35.598831, 44.152416> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788810, 0.420966, -0.447846,
		0.196851, 0.517224, 0.832904,
		0.582261, -0.745162, 0.325124,
		29.971785, 35.375282, 44.249954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.255899, 36.248127, 44.129421>,  <29.564201, 35.896896, 44.022366>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.255899, 36.248127, 44.129421> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.353931, 35.860687, 44.112694>,  <30.412750, 35.628223, 44.102657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.353931, 35.860687, 44.112694>,  <30.255899, 36.248127, 44.129421>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.353931, 35.860687, 44.112694> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735744, 0.213904, -0.642593,
		0.631362, 0.126717, 0.765065,
		0.245078, -0.968601, -0.041820,
		30.427454, 35.570107, 44.100147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.988287, 36.188702, 44.315815>,  <30.255899, 36.248127, 44.129421>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.988287, 36.188702, 44.315815> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.890411, 35.849358, 44.128021>,  <30.831686, 35.645752, 44.015343>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.890411, 35.849358, 44.128021>,  <30.988287, 36.188702, 44.315815>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.890411, 35.849358, 44.128021> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805007, 0.092148, -0.586066,
		0.540455, -0.521345, 0.660385,
		-0.244689, -0.848356, -0.469487,
		30.817005, 35.594852, 43.987175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.554192, 35.778526, 44.156731>,  <30.988287, 36.188702, 44.315815>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.554192, 35.778526, 44.156731> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.292900, 35.633366, 43.890919>,  <31.136126, 35.546268, 43.731434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.292900, 35.633366, 43.890919>,  <31.554192, 35.778526, 44.156731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.292900, 35.633366, 43.890919> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674729, 0.119234, -0.728371,
		0.343564, -0.924166, 0.166976,
		-0.653226, -0.362905, -0.664526,
		31.096931, 35.524494, 43.691563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.928637, 35.281147, 43.738228>,  <31.554192, 35.778526, 44.156731>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.928637, 35.281147, 43.738228> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.632847, 35.346752, 43.477070>,  <31.455372, 35.386116, 43.320374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.632847, 35.346752, 43.477070>,  <31.928637, 35.281147, 43.738228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.632847, 35.346752, 43.477070> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669689, 0.080544, -0.738262,
		-0.068499, -0.983164, -0.169398,
		-0.739477, 0.164014, -0.652897,
		31.411003, 35.395958, 43.281200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.039322, 34.834805, 43.089664>,  <31.928637, 35.281147, 43.738228>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.039322, 34.834805, 43.089664> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.791298, 35.135113, 42.998562>,  <31.642485, 35.315296, 42.943901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.791298, 35.135113, 42.998562>,  <32.039322, 34.834805, 43.089664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.791298, 35.135113, 42.998562> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485402, 0.139034, -0.863165,
		-0.616371, -0.645767, -0.450634,
		-0.620058, 0.750769, -0.227760,
		31.605280, 35.360344, 42.930233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.031509, 34.706192, 42.473988>,  <32.039322, 34.834805, 43.089664>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.031509, 34.706192, 42.473988> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.900742, 35.082680, 42.508011>,  <31.822281, 35.308571, 42.528423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.900742, 35.082680, 42.508011>,  <32.031509, 34.706192, 42.473988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.900742, 35.082680, 42.508011> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462877, 0.237940, -0.853891,
		-0.823935, -0.239782, -0.513455,
		-0.326920, 0.941217, 0.085058,
		31.802666, 35.365044, 42.533527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.807552, 34.884670, 41.799404>,  <32.031509, 34.706192, 42.473988>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.807552, 34.884670, 41.799404> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.791155, 35.255161, 41.949291>,  <31.781317, 35.477455, 42.039223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.791155, 35.255161, 41.949291>,  <31.807552, 34.884670, 41.799404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.791155, 35.255161, 41.949291> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490635, 0.345366, -0.800000,
		-0.870400, 0.151055, -0.468600,
		-0.040995, 0.926232, 0.374719,
		31.778856, 35.533031, 42.061707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.679577, 35.173908, 41.239208>,  <31.807552, 34.884670, 41.799404>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.679577, 35.173908, 41.239208> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.794800, 35.473251, 41.478203>,  <31.863934, 35.652855, 41.621597>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.794800, 35.473251, 41.478203>,  <31.679577, 35.173908, 41.239208>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.794800, 35.473251, 41.478203> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407574, 0.468788, -0.783659,
		-0.866549, 0.469258, -0.169972,
		0.288057, 0.748355, 0.597485,
		31.881216, 35.697758, 41.657448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.552931, 35.797668, 40.913757>,  <31.679577, 35.173908, 41.239208>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.552931, 35.797668, 40.913757> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.852701, 35.872875, 41.167690>,  <32.032562, 35.917999, 41.320049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.852701, 35.872875, 41.167690>,  <31.552931, 35.797668, 40.913757>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.852701, 35.872875, 41.167690> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482260, 0.501939, -0.717971,
		-0.453640, 0.844219, 0.285491,
		0.749424, 0.188020, 0.634832,
		32.077530, 35.929279, 41.358139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.749485, 36.562149, 40.918686>,  <31.552931, 35.797668, 40.913757>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.749485, 36.562149, 40.918686> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.070202, 36.371376, 41.062717>,  <32.262634, 36.256912, 41.149136>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.070202, 36.371376, 41.062717>,  <31.749485, 36.562149, 40.918686>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.070202, 36.371376, 41.062717> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583712, 0.495882, -0.642947,
		0.128088, 0.725694, 0.675989,
		0.801794, -0.476937, 0.360080,
		32.310741, 36.228294, 41.170742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.206223, 37.087860, 41.128277>,  <31.749485, 36.562149, 40.918686>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.206223, 37.087860, 41.128277> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.429218, 36.762856, 41.060123>,  <32.563015, 36.567852, 41.019234>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.429218, 36.762856, 41.060123>,  <32.206223, 37.087860, 41.128277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.429218, 36.762856, 41.060123> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539936, 0.510760, -0.669024,
		0.630613, 0.280980, 0.723448,
		0.557491, -0.812511, -0.170381,
		32.596466, 36.519104, 41.009010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.889992, 37.359200, 40.867344>,  <32.206223, 37.087860, 41.128277>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.889992, 37.359200, 40.867344> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.915363, 36.971043, 40.774124>,  <32.930588, 36.738148, 40.718193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.915363, 36.971043, 40.774124>,  <32.889992, 37.359200, 40.867344>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.915363, 36.971043, 40.774124> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398974, 0.238706, -0.885347,
		0.914766, -0.036827, 0.402303,
		0.063428, -0.970393, -0.233053,
		32.934391, 36.679924, 40.704208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.609478, 37.195541, 40.637424>,  <32.889992, 37.359200, 40.867344>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.609478, 37.195541, 40.637424> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.347263, 36.934219, 40.485912>,  <33.189934, 36.777428, 40.395004>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.347263, 36.934219, 40.485912>,  <33.609478, 37.195541, 40.637424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.347263, 36.934219, 40.485912> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314948, 0.219358, -0.923412,
		0.686353, -0.724624, 0.061959,
		-0.655536, -0.653301, -0.378776,
		33.150604, 36.738228, 40.372280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.227837, 37.366207, 40.939739>,  <33.609478, 37.195541, 40.637424>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.227837, 37.366207, 40.939739> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.390045, 37.731297, 40.959709>,  <34.487370, 37.950352, 40.971691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.390045, 37.731297, 40.959709>,  <34.227837, 37.366207, 40.939739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.390045, 37.731297, 40.959709> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420101, 0.137580, 0.896988,
		0.811832, -0.384719, 0.439227,
		0.405517, 0.912723, 0.049929,
		34.511700, 38.005112, 40.974689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.692379, 37.315346, 41.488846>,  <34.227837, 37.366207, 40.939739>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.692379, 37.315346, 41.488846> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.569363, 37.691143, 41.428478>,  <34.495552, 37.916622, 41.392258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.569363, 37.691143, 41.428478>,  <34.692379, 37.315346, 41.488846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.569363, 37.691143, 41.428478> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160254, 0.105197, 0.981454,
		0.937943, 0.326024, 0.118205,
		-0.307543, 0.939490, -0.150916,
		34.477100, 37.972992, 41.383205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.126797, 37.676163, 41.981968>,  <34.692379, 37.315346, 41.488846>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.126797, 37.676163, 41.981968> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.823936, 37.917473, 41.881744>,  <34.642220, 38.062260, 41.821609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.823936, 37.917473, 41.881744>,  <35.126797, 37.676163, 41.981968>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.823936, 37.917473, 41.881744> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283104, 0.042633, 0.958141,
		0.588707, 0.796391, 0.138510,
		-0.757150, 0.603277, -0.250560,
		34.596790, 38.098457, 41.806576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.085945, 38.178215, 42.439209>,  <35.126797, 37.676163, 41.981968>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.085945, 38.178215, 42.439209> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.723312, 38.181030, 42.270416>,  <34.505733, 38.182720, 42.169140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.723312, 38.181030, 42.270416>,  <35.085945, 38.178215, 42.439209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.723312, 38.181030, 42.270416> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416084, 0.152441, 0.896457,
		0.070635, 0.988288, -0.135272,
		-0.906579, 0.007037, -0.421979,
		34.451340, 38.183140, 42.143822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.745365, 38.757938, 42.799469>,  <35.085945, 38.178215, 42.439209>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.745365, 38.757938, 42.799469> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.470562, 38.503101, 42.659676>,  <34.305679, 38.350201, 42.575798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.470562, 38.503101, 42.659676>,  <34.745365, 38.757938, 42.799469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.470562, 38.503101, 42.659676> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417832, -0.047141, 0.907301,
		-0.594507, 0.769347, -0.233810,
		-0.687006, -0.637090, -0.349483,
		34.264462, 38.311974, 42.554832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.131897, 38.904633, 43.098156>,  <34.745365, 38.757938, 42.799469>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.131897, 38.904633, 43.098156> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.981339, 38.543365, 43.015579>,  <33.891003, 38.326607, 42.966034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.981339, 38.543365, 43.015579>,  <34.131897, 38.904633, 43.098156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.981339, 38.543365, 43.015579> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404626, -0.040192, 0.913598,
		-0.833427, 0.427409, -0.350316,
		-0.376400, -0.903165, -0.206438,
		33.868420, 38.272415, 42.953648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.390598, 38.960072, 43.394012>,  <34.131897, 38.904633, 43.098156>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.390598, 38.960072, 43.394012> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.426357, 38.567921, 43.323727>,  <33.447811, 38.332630, 43.281555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.426357, 38.567921, 43.323727>,  <33.390598, 38.960072, 43.394012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.426357, 38.567921, 43.323727> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673302, -0.189490, 0.714673,
		-0.733943, 0.054423, -0.677027,
		0.089396, -0.980373, -0.175718,
		33.453175, 38.273808, 43.271011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.700241, 38.677364, 43.301933>,  <33.390598, 38.960072, 43.394012>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.700241, 38.677364, 43.301933> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.959049, 38.391083, 43.407108>,  <33.114334, 38.219315, 43.470211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.959049, 38.391083, 43.407108>,  <32.700241, 38.677364, 43.301933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.959049, 38.391083, 43.407108> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549514, -0.198642, 0.811527,
		-0.528582, -0.669560, -0.521814,
		0.647020, -0.715703, 0.262935,
		33.153156, 38.176373, 43.485989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.205505, 38.196972, 43.486824>,  <32.700241, 38.677364, 43.301933>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.205505, 38.196972, 43.486824> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.550144, 38.058468, 43.635284>,  <32.756927, 37.975365, 43.724361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.550144, 38.058468, 43.635284>,  <32.205505, 38.196972, 43.486824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.550144, 38.058468, 43.635284> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506001, -0.528087, 0.681973,
		-0.040142, -0.775389, -0.630207,
		0.861598, -0.346261, 0.371149,
		32.808624, 37.954590, 43.746628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.171333, 37.387360, 43.597469>,  <32.205505, 38.196972, 43.486824>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.171333, 37.387360, 43.597469> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.452297, 37.516289, 43.851311>,  <32.620876, 37.593647, 44.003616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.452297, 37.516289, 43.851311>,  <32.171333, 37.387360, 43.597469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.452297, 37.516289, 43.851311> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419243, -0.533151, 0.734837,
		0.575197, -0.782212, -0.239358,
		0.702412, 0.322327, 0.634604,
		32.663021, 37.612988, 44.041691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.211288, 36.846657, 43.976048>,  <32.171333, 37.387360, 43.597469>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.211288, 36.846657, 43.976048> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.386383, 37.131851, 44.195148>,  <32.491440, 37.302967, 44.326611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.386383, 37.131851, 44.195148>,  <32.211288, 36.846657, 43.976048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.386383, 37.131851, 44.195148> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279594, -0.471073, 0.836611,
		0.854526, -0.519364, -0.006858,
		0.437736, 0.712988, 0.547755,
		32.517704, 37.345749, 44.359474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.591644, 36.463394, 44.537170>,  <32.211288, 36.846657, 43.976048>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.591644, 36.463394, 44.537170> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.536346, 36.846798, 44.636894>,  <32.503170, 37.076839, 44.696728>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.536346, 36.846798, 44.636894>,  <32.591644, 36.463394, 44.537170>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.536346, 36.846798, 44.636894> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248467, -0.277243, 0.928117,
		0.958725, 0.066358, 0.276483,
		-0.138241, 0.958505, 0.249312,
		32.494873, 37.134350, 44.711689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.832642, 36.503300, 45.153149>,  <32.591644, 36.463394, 44.537170>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.832642, 36.503300, 45.153149> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.614677, 36.837742, 45.127831>,  <32.483898, 37.038406, 45.112640>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.614677, 36.837742, 45.127831>,  <32.832642, 36.503300, 45.153149>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.614677, 36.837742, 45.127831> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311723, -0.131917, 0.940971,
		0.778400, 0.532473, 0.332515,
		-0.544906, 0.836104, -0.063300,
		32.451206, 37.088573, 45.108841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.943001, 36.899445, 45.716606>,  <32.832642, 36.503300, 45.153149>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.943001, 36.899445, 45.716606> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.582760, 37.000095, 45.574844>,  <32.366615, 37.060486, 45.489788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.582760, 37.000095, 45.574844>,  <32.943001, 36.899445, 45.716606>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.582760, 37.000095, 45.574844> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414559, -0.252289, 0.874352,
		0.130595, 0.934364, 0.331525,
		-0.900603, 0.251623, -0.354401,
		32.312580, 37.075581, 45.468525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.368626, 37.435944, 45.923740>,  <32.943001, 36.899445, 45.716606>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.368626, 37.435944, 45.923740> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.728745, 37.448353, 46.097408>,  <33.944817, 37.455799, 46.201607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.728745, 37.448353, 46.097408>,  <33.368626, 37.435944, 45.923740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.728745, 37.448353, 46.097408> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428405, 0.113364, -0.896448,
		-0.077025, 0.993069, 0.088773,
		0.900298, 0.031018, 0.434167,
		33.998833, 37.457657, 46.227657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.705944, 38.017319, 45.568935>,  <33.368626, 37.435944, 45.923740>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.705944, 38.017319, 45.568935> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.989746, 37.782814, 45.725349>,  <34.160027, 37.642113, 45.819199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.989746, 37.782814, 45.725349>,  <33.705944, 38.017319, 45.568935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.989746, 37.782814, 45.725349> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619295, 0.253928, -0.742963,
		0.336273, 0.769300, 0.543229,
		0.709503, -0.586257, 0.391035,
		34.202599, 37.606937, 45.842659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.310722, 38.371269, 45.422718>,  <33.705944, 38.017319, 45.568935>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.310722, 38.371269, 45.422718> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.440968, 38.000057, 45.495083>,  <34.519115, 37.777328, 45.538502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.440968, 38.000057, 45.495083>,  <34.310722, 38.371269, 45.422718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.440968, 38.000057, 45.495083> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577296, 0.043604, -0.815370,
		0.748803, 0.369934, 0.549949,
		0.325613, -0.928034, 0.180910,
		34.538651, 37.721645, 45.549355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.038284, 38.475903, 45.456738>,  <34.310722, 38.371269, 45.422718>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.038284, 38.475903, 45.456738> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.946999, 38.094807, 45.376541>,  <34.892227, 37.866150, 45.328423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.946999, 38.094807, 45.376541>,  <35.038284, 38.475903, 45.456738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.946999, 38.094807, 45.376541> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670716, -0.004575, -0.741700,
		0.705733, -0.303740, 0.640065,
		-0.228212, -0.952744, -0.200494,
		34.878536, 37.808983, 45.316395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.696655, 38.216156, 45.249943>,  <35.038284, 38.475903, 45.456738>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.696655, 38.216156, 45.249943> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.427254, 37.941235, 45.141125>,  <35.265614, 37.776279, 45.075836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.427254, 37.941235, 45.141125>,  <35.696655, 38.216156, 45.249943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.427254, 37.941235, 45.141125> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589027, -0.276666, -0.759278,
		0.446591, -0.671615, 0.591176,
		-0.673501, -0.687306, -0.272043,
		35.225204, 37.735043, 45.059513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.985828, 37.541065, 45.315857>,  <35.696655, 38.216156, 45.249943>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.985828, 37.541065, 45.315857> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.691593, 37.552536, 45.045128>,  <35.515053, 37.559418, 44.882690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.691593, 37.552536, 45.045128>,  <35.985828, 37.541065, 45.315857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.691593, 37.552536, 45.045128> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643360, -0.283285, -0.711222,
		-0.212130, -0.958606, 0.189932,
		-0.735587, 0.028677, -0.676823,
		35.470917, 37.561138, 44.842079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.043053, 36.854187, 45.093773>,  <35.985828, 37.541065, 45.315857>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.043053, 36.854187, 45.093773> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.851093, 37.052589, 44.804310>,  <35.735920, 37.171631, 44.630630>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.851093, 37.052589, 44.804310>,  <36.043053, 36.854187, 45.093773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.851093, 37.052589, 44.804310> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571853, -0.448698, -0.686770,
		-0.665346, -0.743403, -0.068315,
		-0.479894, 0.496006, -0.723657,
		35.707127, 37.201393, 44.587212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.873013, 36.335571, 44.632172>,  <36.043053, 36.854187, 45.093773>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.873013, 36.335571, 44.632172> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.862907, 36.678143, 44.425911>,  <35.856846, 36.883686, 44.302155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.862907, 36.678143, 44.425911>,  <35.873013, 36.335571, 44.632172>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.862907, 36.678143, 44.425911> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667227, -0.369666, -0.646649,
		-0.744426, -0.360391, -0.562093,
		-0.025260, 0.856426, -0.515652,
		35.855328, 36.935070, 44.271214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.905983, 36.041809, 43.881058>,  <35.873013, 36.335571, 44.632172>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.905983, 36.041809, 43.881058> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.998116, 36.429283, 43.918140>,  <36.053394, 36.661766, 43.940392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.998116, 36.429283, 43.918140>,  <35.905983, 36.041809, 43.881058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.998116, 36.429283, 43.918140> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628157, -0.075244, -0.774440,
		-0.743213, 0.236616, -0.625818,
		0.230334, 0.968685, 0.092710,
		36.067215, 36.719891, 43.945953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.762119, 36.280437, 43.270348>,  <35.905983, 36.041809, 43.881058>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.762119, 36.280437, 43.270348> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.011806, 36.551559, 43.425747>,  <36.161621, 36.714233, 43.518986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.011806, 36.551559, 43.425747>,  <35.762119, 36.280437, 43.270348>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.011806, 36.551559, 43.425747> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571078, -0.056532, -0.818947,
		-0.533123, 0.733067, -0.422366,
		0.624220, 0.677803, 0.388500,
		36.199074, 36.754902, 43.542297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.956928, 36.608368, 42.667747>,  <35.762119, 36.280437, 43.270348>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.956928, 36.608368, 42.667747> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.218842, 36.728130, 42.945343>,  <36.375988, 36.799988, 43.111900>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.218842, 36.728130, 42.945343>,  <35.956928, 36.608368, 42.667747>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.218842, 36.728130, 42.945343> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678826, 0.170789, -0.714161,
		-0.332348, 0.938716, -0.091414,
		0.654783, 0.299404, 0.693986,
		36.415276, 36.817951, 43.153538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.102978, 37.303852, 42.494766>,  <35.956928, 36.608368, 42.667747>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.102978, 37.303852, 42.494766> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.404736, 37.118694, 42.680935>,  <36.585789, 37.007599, 42.792637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.404736, 37.118694, 42.680935>,  <36.102978, 37.303852, 42.494766>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.404736, 37.118694, 42.680935> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611639, 0.238300, -0.754395,
		0.238300, 0.853779, 0.462899,
		0.754395, -0.462899, 0.465418,
		36.631054, 36.979824, 42.820560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.641315, 37.758667, 42.390060>,  <36.102978, 37.303852, 42.494766>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.641315, 37.758667, 42.390060> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.807636, 37.413708, 42.505558>,  <36.907429, 37.206730, 42.574856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.807636, 37.413708, 42.505558>,  <36.641315, 37.758667, 42.390060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.807636, 37.413708, 42.505558> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653582, 0.062583, -0.754264,
		0.632409, 0.502340, 0.589673,
		0.415800, -0.862403, 0.288742,
		36.932377, 37.154987, 42.592182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.393120, 37.814125, 42.583218>,  <36.641315, 37.758667, 42.390060>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.393120, 37.814125, 42.583218> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.365318, 37.427109, 42.486031>,  <37.348637, 37.194901, 42.427719>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.365318, 37.427109, 42.486031>,  <37.393120, 37.814125, 42.583218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.365318, 37.427109, 42.486031> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756955, 0.107492, -0.644565,
		0.649761, -0.228715, 0.724914,
		-0.069499, -0.967541, -0.242971,
		37.344467, 37.136848, 42.413139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<27.677069, 29.253887, 28.714327> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.828857, 29.290434, 29.082600>,  <27.919930, 29.312363, 29.303564>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.828857, 29.290434, 29.082600>,  <27.677069, 29.253887, 28.714327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.828857, 29.290434, 29.082600> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780834, 0.565412, 0.265720,
		-0.496286, -0.819733, 0.285899,
		0.379470, 0.091367, 0.920681,
		27.942699, 29.317844, 29.358805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.086102, 29.424417, 29.144152>,  <27.677069, 29.253887, 28.714327>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.086102, 29.424417, 29.144152> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.374849, 29.506226, 29.408598>,  <27.548098, 29.555311, 29.567266>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.374849, 29.506226, 29.408598>,  <27.086102, 29.424417, 29.144152>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.374849, 29.506226, 29.408598> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620547, 0.614156, 0.487581,
		-0.306307, -0.762223, 0.570256,
		0.721871, 0.204521, 0.661115,
		27.591412, 29.567581, 29.606932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.779474, 29.293190, 29.792704>,  <27.086102, 29.424417, 29.144152>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.779474, 29.293190, 29.792704> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.088007, 29.541098, 29.850582>,  <27.273127, 29.689842, 29.885309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.088007, 29.541098, 29.850582>,  <26.779474, 29.293190, 29.792704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.088007, 29.541098, 29.850582> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568147, 0.568080, 0.595395,
		0.286809, -0.541453, 0.790297,
		0.771330, 0.619769, 0.144694,
		27.319407, 29.727028, 29.893990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.727951, 29.554193, 30.515432>,  <26.779474, 29.293190, 29.792704>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.727951, 29.554193, 30.515432> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.997555, 29.801626, 30.353907>,  <27.159317, 29.950087, 30.256990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.997555, 29.801626, 30.353907>,  <26.727951, 29.554193, 30.515432>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.997555, 29.801626, 30.353907> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364242, 0.753858, 0.546833,
		0.642680, -0.221484, 0.733422,
		0.674010, 0.618581, -0.403815,
		27.199759, 29.987200, 30.232761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.274826, 29.714439, 30.970457>,  <26.727951, 29.554193, 30.515432>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.274826, 29.714439, 30.970457> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.250069, 30.024532, 30.719004>,  <27.235214, 30.210588, 30.568132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.250069, 30.024532, 30.719004>,  <27.274826, 29.714439, 30.970457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.250069, 30.024532, 30.719004> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403360, 0.556687, 0.726223,
		0.912946, 0.298515, 0.278243,
		-0.061895, 0.775234, -0.628634,
		27.231501, 30.257103, 30.530413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.494850, 30.246210, 31.314283>,  <27.274826, 29.714439, 30.970457>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.494850, 30.246210, 31.314283> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.262020, 30.384960, 31.020109>,  <27.122322, 30.468210, 30.843605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.262020, 30.384960, 31.020109>,  <27.494850, 30.246210, 31.314283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.262020, 30.384960, 31.020109> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230358, 0.797048, 0.558255,
		0.779824, 0.494360, -0.384035,
		-0.582074, 0.346875, -0.735437,
		27.087399, 30.489023, 30.799479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.756464, 30.935312, 31.180555>,  <27.494850, 30.246210, 31.314283>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.756464, 30.935312, 31.180555> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.383852, 30.942736, 31.035282>,  <27.160284, 30.947189, 30.948118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.383852, 30.942736, 31.035282>,  <27.756464, 30.935312, 31.180555>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.383852, 30.942736, 31.035282> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197705, 0.812367, 0.548609,
		0.305222, 0.582850, -0.753077,
		-0.931532, 0.018560, -0.363184,
		27.104393, 30.948303, 30.926327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.641100, 31.567451, 31.149130>,  <27.756464, 30.935312, 31.180555>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.641100, 31.567451, 31.149130> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.271732, 31.419350, 31.108706>,  <27.050112, 31.330488, 31.084452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.271732, 31.419350, 31.108706>,  <27.641100, 31.567451, 31.149130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.271732, 31.419350, 31.108706> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377556, 0.829047, 0.412472,
		-0.068935, 0.419040, -0.905347,
		-0.923417, -0.370253, -0.101061,
		26.994707, 31.308273, 31.078386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.231915, 32.097424, 30.923342>,  <27.641100, 31.567451, 31.149130>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.231915, 32.097424, 30.923342> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.961061, 31.834148, 31.054966>,  <26.798550, 31.676184, 31.133940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.961061, 31.834148, 31.054966>,  <27.231915, 32.097424, 30.923342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.961061, 31.834148, 31.054966> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405532, 0.706921, 0.579488,
		-0.614031, 0.258946, -0.745596,
		-0.677133, -0.658187, 0.329060,
		26.757921, 31.636692, 31.153685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.574919, 32.345737, 30.966507>,  <27.231915, 32.097424, 30.923342>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.574919, 32.345737, 30.966507> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.522633, 32.032375, 31.209553>,  <26.491261, 31.844358, 31.355381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.522633, 32.032375, 31.209553>,  <26.574919, 32.345737, 30.966507>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.522633, 32.032375, 31.209553> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440436, 0.594962, 0.672337,
		-0.888218, -0.179732, -0.422807,
		-0.130714, -0.783401, 0.607616,
		26.483419, 31.797356, 31.391838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.858551, 32.352730, 31.093170>,  <26.574919, 32.345737, 30.966507>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.858551, 32.352730, 31.093170> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.052931, 32.151306, 31.378906>,  <26.169559, 32.030453, 31.550348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.052931, 32.151306, 31.378906>,  <25.858551, 32.352730, 31.093170>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.052931, 32.151306, 31.378906> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515084, 0.495299, 0.699548,
		-0.706073, -0.707892, -0.018682,
		0.485951, -0.503555, 0.714342,
		26.198717, 32.000240, 31.593208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.408169, 32.132732, 31.542248>,  <25.858551, 32.352730, 31.093170>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.408169, 32.132732, 31.542248> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.742195, 32.125076, 31.762175>,  <25.942612, 32.120483, 31.894131>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.742195, 32.125076, 31.762175>,  <25.408169, 32.132732, 31.542248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.742195, 32.125076, 31.762175> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512529, 0.336143, 0.790140,
		-0.199942, -0.941617, 0.270890,
		0.835067, -0.019143, 0.549815,
		25.992716, 32.119335, 31.927118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.206512, 31.845097, 32.158329>,  <25.408169, 32.132732, 31.542248>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.206512, 31.845097, 32.158329> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.540985, 32.051594, 32.232403>,  <25.741669, 32.175491, 32.276848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.540985, 32.051594, 32.232403>,  <25.206512, 31.845097, 32.158329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.540985, 32.051594, 32.232403> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362383, 0.266617, 0.893081,
		0.411674, -0.813885, 0.410018,
		0.836183, 0.516242, 0.185180,
		25.791840, 32.206467, 32.287956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.337446, 31.628700, 32.740620>,  <25.206512, 31.845097, 32.158329>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.337446, 31.628700, 32.740620> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.546774, 31.967415, 32.702492>,  <25.672371, 32.170643, 32.679615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.546774, 31.967415, 32.702492>,  <25.337446, 31.628700, 32.740620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.546774, 31.967415, 32.702492> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183466, 0.221197, 0.957817,
		0.832151, -0.483758, 0.271114,
		0.523320, 0.846788, -0.095316,
		25.703770, 32.221451, 32.673897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.675356, 31.710411, 33.401268>,  <25.337446, 31.628700, 32.740620>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.675356, 31.710411, 33.401268> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.714685, 32.067764, 33.225906>,  <25.738283, 32.282177, 33.120689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.714685, 32.067764, 33.225906>,  <25.675356, 31.710411, 33.401268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.714685, 32.067764, 33.225906> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153493, 0.448880, 0.880311,
		0.983246, -0.019265, 0.181265,
		0.098325, 0.893385, -0.438402,
		25.744183, 32.335781, 33.094387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.211969, 32.084473, 33.780636>,  <25.675356, 31.710411, 33.401268>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.211969, 32.084473, 33.780636> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.988777, 32.361736, 33.598122>,  <25.854862, 32.528095, 33.488613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.988777, 32.361736, 33.598122>,  <26.211969, 32.084473, 33.780636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.988777, 32.361736, 33.598122> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124427, 0.473736, 0.871832,
		0.820473, 0.543239, -0.178088,
		-0.557980, 0.693156, -0.456281,
		25.821383, 32.569683, 33.461239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.568644, 32.735058, 33.950569>,  <26.211969, 32.084473, 33.780636>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.568644, 32.735058, 33.950569> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.196768, 32.835701, 33.842964>,  <25.973642, 32.896088, 33.778400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.196768, 32.835701, 33.842964>,  <26.568644, 32.735058, 33.950569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.196768, 32.835701, 33.842964> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096230, 0.539068, 0.836747,
		0.355547, 0.803804, -0.476955,
		-0.929691, 0.251605, -0.269014,
		25.917860, 32.911182, 33.762260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.498234, 33.408546, 34.058399>,  <26.568644, 32.735058, 33.950569>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.498234, 33.408546, 34.058399> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.110460, 33.311596, 34.043133>,  <25.877796, 33.253426, 34.033974>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.110460, 33.311596, 34.043133>,  <26.498234, 33.408546, 34.058399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.110460, 33.311596, 34.043133> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196283, 0.672745, 0.713363,
		-0.147223, 0.699049, -0.699754,
		-0.969432, -0.242373, -0.038167,
		25.819632, 33.238884, 34.031681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.107779, 34.047523, 34.017830>,  <26.498234, 33.408546, 34.058399>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.107779, 34.047523, 34.017830> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.883776, 33.768185, 34.196133>,  <25.749374, 33.600582, 34.303116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.883776, 33.768185, 34.196133>,  <26.107779, 34.047523, 34.017830>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.883776, 33.768185, 34.196133> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049056, 0.509146, 0.859281,
		-0.827034, 0.503071, -0.250867,
		-0.560007, -0.698349, 0.445760,
		25.715775, 33.558681, 34.329861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.806536, 34.431656, 34.055950>,  <26.107779, 34.047523, 34.017830>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.806536, 34.431656, 34.055950> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.912006, 34.099998, 33.858768>,  <26.975288, 33.901005, 33.740459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.912006, 34.099998, 33.858768>,  <26.806536, 34.431656, 34.055950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.912006, 34.099998, 33.858768> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874099, -0.010748, 0.485628,
		-0.407952, -0.558936, 0.721918,
		0.263676, -0.829141, -0.492950,
		26.991110, 33.851257, 33.710884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.513979, 34.318527, 33.875275>,  <26.806536, 34.431656, 34.055950>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.513979, 34.318527, 33.875275> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.858448, 34.302422, 34.077961>,  <28.065128, 34.292759, 34.199574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.858448, 34.302422, 34.077961>,  <27.513979, 34.318527, 33.875275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.858448, 34.302422, 34.077961> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143401, -0.937126, -0.318169,
		0.487668, 0.346662, -0.801253,
		0.861171, -0.040260, 0.506717,
		28.116800, 34.290344, 34.229977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.981327, 33.964649, 33.398930>,  <27.513979, 34.318527, 33.875275>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.981327, 33.964649, 33.398930> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.170918, 33.920055, 33.748310>,  <28.284672, 33.893299, 33.957939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.170918, 33.920055, 33.748310>,  <27.981327, 33.964649, 33.398930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.170918, 33.920055, 33.748310> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457537, -0.816345, -0.352479,
		0.752335, 0.566702, -0.335916,
		0.473974, -0.111488, 0.873452,
		28.313110, 33.886608, 34.010345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.667500, 33.861794, 33.276146>,  <27.981327, 33.964649, 33.398930>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.667500, 33.861794, 33.276146> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.609972, 33.717739, 33.644844>,  <28.575457, 33.631306, 33.866062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.609972, 33.717739, 33.644844>,  <28.667500, 33.861794, 33.276146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.609972, 33.717739, 33.644844> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260311, -0.912394, -0.315871,
		0.954754, 0.194513, 0.224967,
		-0.143817, -0.360141, 0.921746,
		28.566826, 33.609695, 33.921368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.174776, 33.468857, 33.413902>,  <28.667500, 33.861794, 33.276146>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.174776, 33.468857, 33.413902> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.923412, 33.341488, 33.697792>,  <28.772594, 33.265064, 33.868126>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.923412, 33.341488, 33.697792>,  <29.174776, 33.468857, 33.413902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.923412, 33.341488, 33.697792> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205170, -0.947919, -0.243629,
		0.750339, -0.007484, 0.661011,
		-0.628408, -0.318424, 0.709725,
		28.734890, 33.245960, 33.910709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.465485, 32.856617, 33.753464>,  <29.174776, 33.468857, 33.413902>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.465485, 32.856617, 33.753464> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.075657, 32.828228, 33.838486>,  <28.841761, 32.811195, 33.889500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.075657, 32.828228, 33.838486>,  <29.465485, 32.856617, 33.753464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.075657, 32.828228, 33.838486> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060719, -0.996671, -0.054401,
		0.215712, -0.040111, 0.975633,
		-0.974567, -0.070975, 0.212559,
		28.783287, 32.806934, 33.902252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.420164, 32.366295, 34.186844>,  <29.465485, 32.856617, 33.753464>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.420164, 32.366295, 34.186844> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.040867, 32.388348, 34.061756>,  <28.813288, 32.401577, 33.986702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.040867, 32.388348, 34.061756>,  <29.420164, 32.366295, 34.186844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.040867, 32.388348, 34.061756> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050550, -0.998463, -0.022731,
		-0.313493, -0.005747, 0.949573,
		-0.948244, 0.055127, -0.312721,
		28.756393, 32.404884, 33.967941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.931658, 31.962378, 34.696442>,  <29.420164, 32.366295, 34.186844>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.931658, 31.962378, 34.696442> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.785416, 31.997095, 34.325756>,  <28.697670, 32.017925, 34.103344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.785416, 31.997095, 34.325756>,  <28.931658, 31.962378, 34.696442>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.785416, 31.997095, 34.325756> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108205, -0.992855, -0.050301,
		-0.924459, 0.081885, 0.372385,
		-0.365606, 0.086795, -0.926714,
		28.675734, 32.023132, 34.047741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.364004, 31.444342, 34.646629>,  <28.931658, 31.962378, 34.696442>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.364004, 31.444342, 34.646629> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.467880, 31.529137, 34.269775>,  <28.530205, 31.580013, 34.043663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.467880, 31.529137, 34.269775>,  <28.364004, 31.444342, 34.646629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.467880, 31.529137, 34.269775> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100822, -0.964324, -0.244772,
		-0.960415, 0.158553, -0.229051,
		0.259689, 0.211990, -0.942137,
		28.545788, 31.592733, 33.987133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.909231, 30.942381, 34.221077>,  <28.364004, 31.444342, 34.646629>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.909231, 30.942381, 34.221077> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.148293, 31.101797, 33.942802>,  <28.291729, 31.197447, 33.775837>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.148293, 31.101797, 33.942802>,  <27.909231, 30.942381, 34.221077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.148293, 31.101797, 33.942802> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089458, -0.895431, -0.436120,
		-0.796747, 0.198415, -0.570811,
		0.597655, 0.398541, -0.695682,
		28.327589, 31.221359, 33.734097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.667717, 30.745138, 33.566872>,  <27.909231, 30.942381, 34.221077>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.667717, 30.745138, 33.566872> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.049545, 30.837328, 33.491318>,  <28.278643, 30.892641, 33.445984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.049545, 30.837328, 33.491318>,  <27.667717, 30.745138, 33.566872>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.049545, 30.837328, 33.491318> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065781, -0.781219, -0.620781,
		-0.290634, 0.580154, -0.760889,
		0.954570, 0.230472, -0.188886,
		28.335917, 30.906469, 33.434650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.771175, 30.845350, 32.825813>,  <27.667717, 30.745138, 33.566872>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.771175, 30.845350, 32.825813> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.149652, 30.770519, 32.931435>,  <28.376738, 30.725620, 32.994808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.149652, 30.770519, 32.931435>,  <27.771175, 30.845350, 32.825813>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.149652, 30.770519, 32.931435> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048170, -0.725451, -0.686586,
		0.320003, 0.662361, -0.677404,
		0.946191, -0.187079, 0.264053,
		28.433510, 30.714396, 33.010651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.097940, 30.680195, 32.159355>,  <27.771175, 30.845350, 32.825813>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.097940, 30.680195, 32.159355> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.364195, 30.559263, 32.432274>,  <28.523947, 30.486704, 32.596024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.364195, 30.559263, 32.432274>,  <28.097940, 30.680195, 32.159355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.364195, 30.559263, 32.432274> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356522, -0.674359, -0.646631,
		0.655608, 0.673674, -0.341090,
		0.665635, -0.302330, 0.682295,
		28.563885, 30.468565, 32.636963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.719664, 30.632202, 31.836697>,  <28.097940, 30.680195, 32.159355>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.719664, 30.632202, 31.836697> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.768774, 30.407558, 32.163994>,  <28.798241, 30.272772, 32.360371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.768774, 30.407558, 32.163994>,  <28.719664, 30.632202, 31.836697>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.768774, 30.407558, 32.163994> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311685, -0.760942, -0.569052,
		0.942220, 0.324901, 0.081619,
		0.122778, -0.561611, 0.818241,
		28.805607, 30.239075, 32.409466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.354496, 30.150503, 31.688250>,  <28.719664, 30.632202, 31.836697>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.354496, 30.150503, 31.688250> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.169905, 29.947609, 31.979385>,  <29.059151, 29.825872, 32.154068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.169905, 29.947609, 31.979385>,  <29.354496, 30.150503, 31.688250>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.169905, 29.947609, 31.979385> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251148, -0.861557, -0.441184,
		0.850861, -0.020801, 0.524979,
		-0.461477, -0.507234, 0.727841,
		29.031462, 29.795439, 32.197739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.774590, 29.483952, 31.828764>,  <29.354496, 30.150503, 31.688250>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.774590, 29.483952, 31.828764> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.429552, 29.397079, 32.011528>,  <29.222530, 29.344955, 32.121185>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.429552, 29.397079, 32.011528>,  <29.774590, 29.483952, 31.828764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.429552, 29.397079, 32.011528> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226575, -0.973367, -0.034920,
		0.452326, 0.073403, 0.888827,
		-0.862592, -0.217182, 0.456911,
		29.170774, 29.331924, 32.148602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.941513, 29.013857, 32.479198>,  <29.774590, 29.483952, 31.828764>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.941513, 29.013857, 32.479198> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.575977, 28.960451, 32.325798>,  <29.356655, 28.928408, 32.233757>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.575977, 28.960451, 32.325798>,  <29.941513, 29.013857, 32.479198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.575977, 28.960451, 32.325798> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235137, -0.943946, -0.231683,
		-0.331068, -0.301895, 0.894010,
		-0.913841, -0.133512, -0.383497,
		29.301825, 28.920397, 32.210751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.737307, 28.280947, 32.540985>,  <29.941513, 29.013857, 32.479198>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.737307, 28.280947, 32.540985> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.473740, 28.411917, 32.270100>,  <29.315599, 28.490499, 32.107567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.473740, 28.411917, 32.270100>,  <29.737307, 28.280947, 32.540985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.473740, 28.411917, 32.270100> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175758, -0.942390, -0.284624,
		-0.731394, -0.068518, 0.678505,
		-0.658918, 0.327424, -0.677215,
		29.276064, 28.510143, 32.066936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.245594, 27.772806, 32.539852>,  <29.737307, 28.280947, 32.540985>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.245594, 27.772806, 32.539852> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.188910, 27.957045, 32.189362>,  <29.154900, 28.067587, 31.979067>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.188910, 27.957045, 32.189362>,  <29.245594, 27.772806, 32.539852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.188910, 27.957045, 32.189362> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098587, -0.887324, -0.450485,
		-0.984987, 0.022546, 0.171152,
		-0.141710, 0.460595, -0.876225,
		29.146397, 28.095222, 31.926495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.763861, 27.370783, 32.216496>,  <29.245594, 27.772806, 32.539852>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.763861, 27.370783, 32.216496> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.937403, 27.582638, 31.924946>,  <29.041527, 27.709751, 31.750017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.937403, 27.582638, 31.924946>,  <28.763861, 27.370783, 32.216496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.937403, 27.582638, 31.924946> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075382, -0.827477, -0.556417,
		-0.897824, 0.186460, -0.398929,
		0.433854, 0.529637, -0.728873,
		29.067558, 27.741529, 31.706284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.373447, 27.206539, 31.574997>,  <28.763861, 27.370783, 32.216496>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.373447, 27.206539, 31.574997> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.721249, 27.364100, 31.455793>,  <28.929930, 27.458635, 31.384272>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.721249, 27.364100, 31.455793>,  <28.373447, 27.206539, 31.574997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.721249, 27.364100, 31.455793> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129375, -0.763901, -0.632232,
		-0.476685, 0.511172, -0.715174,
		0.869502, 0.393901, -0.298007,
		28.982100, 27.482269, 31.366392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.411486, 27.224833, 30.775673>,  <28.373447, 27.206539, 31.574997>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.411486, 27.224833, 30.775673> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.787935, 27.250750, 30.908390>,  <29.013805, 27.266300, 30.988020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.787935, 27.250750, 30.908390>,  <28.411486, 27.224833, 30.775673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.787935, 27.250750, 30.908390> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260205, -0.765410, -0.588593,
		0.215822, 0.640274, -0.737205,
		0.941124, 0.064794, 0.331795,
		29.070272, 27.270187, 31.007929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.910561, 27.139725, 30.253551>,  <28.411486, 27.224833, 30.775673>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.910561, 27.139725, 30.253551> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.089985, 27.031357, 30.594233>,  <29.197639, 26.966335, 30.798641>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.089985, 27.031357, 30.594233>,  <28.910561, 27.139725, 30.253551>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.089985, 27.031357, 30.594233> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450157, -0.754764, -0.477168,
		0.772108, 0.597439, -0.216602,
		0.448563, -0.270921, 0.851700,
		29.224554, 26.950081, 30.849743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<33.965534, 34.682529, 46.472225> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.566910, 34.661232, 46.446857>,  <33.327736, 34.648453, 46.431637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.566910, 34.661232, 46.446857>,  <33.965534, 34.682529, 46.472225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.566910, 34.661232, 46.446857> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071587, 0.168924, 0.983026,
		-0.041626, 0.984190, -0.172156,
		-0.996565, -0.053244, -0.063423,
		33.267941, 34.645260, 46.427830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.767841, 34.980721, 47.119507>,  <33.965534, 34.682529, 46.472225>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.767841, 34.980721, 47.119507> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.425457, 34.840118, 46.967838>,  <33.220024, 34.755756, 46.876839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.425457, 34.840118, 46.967838>,  <33.767841, 34.980721, 47.119507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.425457, 34.840118, 46.967838> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446063, 0.131221, 0.885329,
		-0.261445, 0.926943, -0.269115,
		-0.855964, -0.351507, -0.379168,
		33.168667, 34.734665, 46.854088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.195667, 35.431217, 47.318554>,  <33.767841, 34.980721, 47.119507>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.195667, 35.431217, 47.318554> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.029636, 35.078686, 47.228245>,  <32.930016, 34.867168, 47.174057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.029636, 35.078686, 47.228245>,  <33.195667, 35.431217, 47.318554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.029636, 35.078686, 47.228245> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617655, 0.090774, 0.781193,
		-0.667990, 0.463710, -0.582033,
		-0.415080, -0.881325, -0.225776,
		32.905113, 34.814289, 47.160511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.399117, 35.523975, 47.332340>,  <33.195667, 35.431217, 47.318554>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.399117, 35.523975, 47.332340> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.500408, 35.140949, 47.387405>,  <32.561184, 34.911133, 47.420444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.500408, 35.140949, 47.387405>,  <32.399117, 35.523975, 47.332340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.500408, 35.140949, 47.387405> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416765, 0.020431, 0.908785,
		-0.873029, -0.287506, -0.393904,
		0.253233, -0.957561, 0.137659,
		32.576378, 34.853680, 47.428703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.806515, 35.228642, 47.622189>,  <32.399117, 35.523975, 47.332340>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.806515, 35.228642, 47.622189> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.115227, 34.997959, 47.729347>,  <32.300453, 34.859550, 47.793644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.115227, 34.997959, 47.729347>,  <31.806515, 35.228642, 47.622189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.115227, 34.997959, 47.729347> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290663, 0.054762, 0.955257,
		-0.565569, -0.815117, -0.125361,
		0.771781, -0.576702, 0.267896,
		32.346760, 34.824947, 47.809715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.502363, 34.821980, 48.191174>,  <31.806515, 35.228642, 47.622189>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.502363, 34.821980, 48.191174> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.898209, 34.774017, 48.222893>,  <32.135715, 34.745239, 48.241924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.898209, 34.774017, 48.222893>,  <31.502363, 34.821980, 48.191174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.898209, 34.774017, 48.222893> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062601, 0.137107, 0.988576,
		-0.129407, -0.983272, 0.128177,
		0.989614, -0.119905, 0.079296,
		32.195091, 34.738045, 48.246681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.653206, 34.161655, 48.580292>,  <31.502363, 34.821980, 48.191174>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.653206, 34.161655, 48.580292> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.944298, 34.433456, 48.617569>,  <32.118954, 34.596539, 48.639935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.944298, 34.433456, 48.617569>,  <31.653206, 34.161655, 48.580292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.944298, 34.433456, 48.617569> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029613, -0.104627, 0.994071,
		0.685226, -0.726173, -0.056019,
		0.727729, 0.679504, 0.093197,
		32.162617, 34.637306, 48.645527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.074421, 33.845406, 48.979843>,  <31.653206, 34.161655, 48.580292>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.074421, 33.845406, 48.979843> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.187443, 34.227200, 49.018028>,  <32.255257, 34.456276, 49.040939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.187443, 34.227200, 49.018028>,  <32.074421, 33.845406, 48.979843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.187443, 34.227200, 49.018028> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108130, -0.130573, 0.985524,
		0.953137, -0.268142, -0.140103,
		0.282554, 0.954489, 0.095460,
		32.272209, 34.513546, 49.046665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.775372, 33.840286, 49.416397>,  <32.074421, 33.845406, 48.979843>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.775372, 33.840286, 49.416397> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.592499, 34.195953, 49.424114>,  <32.482777, 34.409351, 49.428745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.592499, 34.195953, 49.424114>,  <32.775372, 33.840286, 49.416397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.592499, 34.195953, 49.424114> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205208, 0.084357, 0.975076,
		0.865376, 0.449745, -0.221030,
		-0.457181, 0.889165, 0.019290,
		32.455345, 34.462704, 49.429901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.315060, 34.219028, 49.644226>,  <32.775372, 33.840286, 49.416397>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.315060, 34.219028, 49.644226> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.988518, 34.441830, 49.705311>,  <32.792595, 34.575512, 49.741962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.988518, 34.441830, 49.705311>,  <33.315060, 34.219028, 49.644226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.988518, 34.441830, 49.705311> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359285, 0.282746, 0.889365,
		0.452200, 0.780899, -0.430942,
		-0.816351, 0.557002, 0.152708,
		32.743614, 34.608929, 49.751122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.484512, 34.830574, 49.994976>,  <33.315060, 34.219028, 49.644226>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.484512, 34.830574, 49.994976> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.095390, 34.811314, 50.085594>,  <32.861916, 34.799759, 50.139965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.095390, 34.811314, 50.085594>,  <33.484512, 34.830574, 49.994976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.095390, 34.811314, 50.085594> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216995, 0.152447, 0.964195,
		-0.080964, 0.987138, -0.137853,
		-0.972809, -0.048152, 0.226547,
		32.803547, 34.796867, 50.153557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.261860, 35.525898, 50.279430>,  <33.484512, 34.830574, 49.994976>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.261860, 35.525898, 50.279430> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.051517, 35.221401, 50.431210>,  <32.925312, 35.038704, 50.522278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.051517, 35.221401, 50.431210>,  <33.261860, 35.525898, 50.279430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.051517, 35.221401, 50.431210> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242450, 0.293453, 0.924718,
		-0.815285, 0.578269, 0.030248,
		-0.525859, -0.761242, 0.379450,
		32.893761, 34.993027, 50.545044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.750584, 35.866577, 50.681305>,  <33.261860, 35.525898, 50.279430>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.750584, 35.866577, 50.681305> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.836288, 35.497013, 50.808098>,  <32.887711, 35.275272, 50.884174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.836288, 35.497013, 50.808098>,  <32.750584, 35.866577, 50.681305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.836288, 35.497013, 50.808098> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267198, 0.367582, 0.890780,
		-0.939520, -0.106160, 0.325626,
		0.214259, -0.923912, 0.316985,
		32.900566, 35.219841, 50.903194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.563816, 35.601231, 51.430946>,  <32.750584, 35.866577, 50.681305>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.563816, 35.601231, 51.430946> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.892109, 35.375168, 51.397503>,  <33.089085, 35.239529, 51.377438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.892109, 35.375168, 51.397503>,  <32.563816, 35.601231, 51.430946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.892109, 35.375168, 51.397503> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387074, 0.442429, 0.808969,
		-0.420205, -0.696311, 0.581875,
		0.820732, -0.565161, -0.083613,
		33.138329, 35.205620, 51.372417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.296814, 36.264915, 51.183426>,  <32.563816, 35.601231, 51.430946>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.296814, 36.264915, 51.183426> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.056980, 36.584980, 51.189621>,  <31.913080, 36.777020, 51.193336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.056980, 36.584980, 51.189621>,  <32.296814, 36.264915, 51.183426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.056980, 36.584980, 51.189621> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397067, 0.314222, -0.862323,
		-0.694867, -0.510883, -0.506121,
		-0.599581, 0.800164, 0.015487,
		31.877106, 36.825027, 51.194267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.912886, 36.268822, 50.614525>,  <32.296814, 36.264915, 51.183426>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.912886, 36.268822, 50.614525> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.927956, 36.656494, 50.711903>,  <31.936998, 36.889099, 50.770329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.927956, 36.656494, 50.711903>,  <31.912886, 36.268822, 50.614525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.927956, 36.656494, 50.711903> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318308, 0.219288, -0.922276,
		-0.947238, 0.112239, -0.300237,
		0.037677, 0.969183, 0.243444,
		31.939259, 36.947250, 50.784935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.590029, 36.564041, 50.075382>,  <31.912886, 36.268822, 50.614525>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.590029, 36.564041, 50.075382> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.829868, 36.830029, 50.253506>,  <31.973772, 36.989620, 50.360378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.829868, 36.830029, 50.253506>,  <31.590029, 36.564041, 50.075382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.829868, 36.830029, 50.253506> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354065, 0.278598, -0.892761,
		-0.717717, 0.692969, -0.068393,
		0.599601, 0.664965, 0.445310,
		32.009750, 37.029518, 50.387100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.496534, 37.129429, 49.719818>,  <31.590029, 36.564041, 50.075382>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.496534, 37.129429, 49.719818> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.853441, 37.181042, 49.892891>,  <32.067585, 37.212009, 49.996735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.853441, 37.181042, 49.892891>,  <31.496534, 37.129429, 49.719818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.853441, 37.181042, 49.892891> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366630, 0.352247, -0.861107,
		-0.263524, 0.926969, 0.266989,
		0.892265, 0.129037, 0.432680,
		32.121120, 37.219753, 50.022694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.715496, 37.878170, 49.690029>,  <31.496534, 37.129429, 49.719818>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.715496, 37.878170, 49.690029> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.059422, 37.682194, 49.747551>,  <32.265778, 37.564610, 49.782066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.059422, 37.682194, 49.747551>,  <31.715496, 37.878170, 49.690029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.059422, 37.682194, 49.747551> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402431, 0.476880, -0.781431,
		0.314273, 0.729759, 0.607194,
		0.859815, -0.489936, 0.143806,
		32.317368, 37.535213, 49.790691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.157238, 38.127510, 49.249744>,  <31.715496, 37.878170, 49.690029>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.157238, 38.127510, 49.249744> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.420620, 37.851421, 49.369762>,  <32.578648, 37.685768, 49.441772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.420620, 37.851421, 49.369762>,  <32.157238, 38.127510, 49.249744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.420620, 37.851421, 49.369762> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627030, 0.282605, -0.725925,
		0.416258, 0.666125, 0.618875,
		0.658454, -0.690226, 0.300044,
		32.618156, 37.644352, 49.459774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.806061, 38.392300, 49.389027>,  <32.157238, 38.127510, 49.249744>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.806061, 38.392300, 49.389027> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.881622, 38.013340, 49.285683>,  <32.926960, 37.785965, 49.223679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.881622, 38.013340, 49.285683>,  <32.806061, 38.392300, 49.389027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.881622, 38.013340, 49.285683> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674352, 0.316401, -0.667188,
		0.713839, -0.048192, 0.698650,
		0.188901, -0.947401, -0.258357,
		32.938293, 37.729118, 49.208176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.524647, 38.370625, 49.227566>,  <32.806061, 38.392300, 49.389027>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.524647, 38.370625, 49.227566> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.403076, 38.027473, 49.061832>,  <33.330135, 37.821583, 48.962391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.403076, 38.027473, 49.061832>,  <33.524647, 38.370625, 49.227566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.403076, 38.027473, 49.061832> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769439, 0.035421, -0.637737,
		0.561777, -0.512629, 0.649321,
		-0.303923, -0.857879, -0.414336,
		33.311901, 37.770111, 48.937531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.148418, 38.097279, 49.014622>,  <33.524647, 38.370625, 49.227566>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.148418, 38.097279, 49.014622> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.866356, 37.916946, 48.795715>,  <33.697117, 37.808746, 48.664371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.866356, 37.916946, 48.795715>,  <34.148418, 38.097279, 49.014622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.866356, 37.916946, 48.795715> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679598, -0.209606, -0.703002,
		0.202228, -0.867648, 0.454192,
		-0.705160, -0.450834, -0.547264,
		33.654808, 37.781696, 48.631535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.481941, 37.532898, 48.639126>,  <34.148418, 38.097279, 49.014622>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.481941, 37.532898, 48.639126> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.138111, 37.584042, 48.441223>,  <33.931812, 37.614727, 48.322479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.138111, 37.584042, 48.441223>,  <34.481941, 37.532898, 48.639126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.138111, 37.584042, 48.441223> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479613, -0.132312, -0.867447,
		-0.176380, -0.982926, 0.052405,
		-0.859570, 0.127866, -0.494762,
		33.880241, 37.622398, 48.292793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.517200, 37.121914, 48.090836>,  <34.481941, 37.532898, 48.639126>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.517200, 37.121914, 48.090836> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.210567, 37.353340, 47.979401>,  <34.026588, 37.492195, 47.912540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.210567, 37.353340, 47.979401>,  <34.517200, 37.121914, 48.090836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.210567, 37.353340, 47.979401> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167273, -0.238952, -0.956515,
		-0.619975, -0.779850, 0.086398,
		-0.766583, 0.578564, -0.278592,
		33.980591, 37.526909, 47.895824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.110916, 36.733418, 47.696220>,  <34.517200, 37.121914, 48.090836>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.110916, 36.733418, 47.696220> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.021633, 37.107819, 47.587353>,  <33.968063, 37.332458, 47.522034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.021633, 37.107819, 47.587353>,  <34.110916, 36.733418, 47.696220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.021633, 37.107819, 47.587353> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051033, -0.267610, -0.962175,
		-0.973434, -0.228657, 0.011966,
		-0.223210, 0.936003, -0.272169,
		33.954670, 37.388618, 47.505703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.691074, 36.673847, 47.056950>,  <34.110916, 36.733418, 47.696220>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.691074, 36.673847, 47.056950> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.823223, 37.051167, 47.069859>,  <33.902512, 37.277557, 47.077606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.823223, 37.051167, 47.069859>,  <33.691074, 36.673847, 47.056950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.823223, 37.051167, 47.069859> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191835, -0.033627, -0.980851,
		-0.924149, 0.330240, -0.192067,
		0.330375, 0.943298, 0.032275,
		33.922337, 37.334156, 47.079540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.393829, 36.853264, 46.403107>,  <33.691074, 36.673847, 47.056950>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.393829, 36.853264, 46.403107> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.680611, 37.104031, 46.525063>,  <33.852680, 37.254490, 46.598236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.680611, 37.104031, 46.525063>,  <33.393829, 36.853264, 46.403107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.680611, 37.104031, 46.525063> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311077, 0.103692, -0.944711,
		-0.623868, 0.772157, -0.120676,
		0.716952, 0.626915, 0.304890,
		33.895695, 37.292107, 46.616531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.666210, 37.231403, 46.352200>,  <33.393829, 36.853264, 46.403107>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.666210, 37.231403, 46.352200> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.366379, 37.150917, 46.099964>,  <32.186481, 37.102627, 45.948624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.366379, 37.150917, 46.099964>,  <32.666210, 37.231403, 46.352200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.366379, 37.150917, 46.099964> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496138, -0.459831, 0.736480,
		-0.438159, 0.864908, 0.244847,
		-0.749576, -0.201217, -0.630593,
		32.141506, 37.090553, 45.910786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.023087, 37.436157, 46.658962>,  <32.666210, 37.231403, 46.352200>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.023087, 37.436157, 46.658962> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.891260, 37.204273, 46.360882>,  <31.812164, 37.065144, 46.182034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.891260, 37.204273, 46.360882>,  <32.023087, 37.436157, 46.658962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.891260, 37.204273, 46.360882> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666048, -0.416663, 0.618685,
		-0.669155, 0.700238, -0.248795,
		-0.329563, -0.579706, -0.745204,
		31.792391, 37.030361, 46.137321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.318338, 37.633163, 46.459976>,  <32.023087, 37.436157, 46.658962>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.318338, 37.633163, 46.459976> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.352995, 37.252319, 46.342693>,  <31.373789, 37.023811, 46.272324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.352995, 37.252319, 46.342693>,  <31.318338, 37.633163, 46.459976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.352995, 37.252319, 46.342693> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776967, -0.248794, 0.578294,
		-0.623550, 0.177711, -0.761317,
		0.086642, -0.952113, -0.293211,
		31.378988, 36.966686, 46.254730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.639593, 37.424271, 46.288387>,  <31.318338, 37.633163, 46.459976>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.639593, 37.424271, 46.288387> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.853195, 37.093624, 46.359428>,  <30.981356, 36.895237, 46.402054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.853195, 37.093624, 46.359428>,  <30.639593, 37.424271, 46.288387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.853195, 37.093624, 46.359428> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750615, -0.366828, 0.549558,
		-0.389127, -0.426775, -0.816360,
		0.534001, -0.826620, 0.177601,
		31.013397, 36.845638, 46.412708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.209654, 36.918907, 46.195621>,  <30.639593, 37.424271, 46.288387>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.209654, 36.918907, 46.195621> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.502104, 36.724209, 46.386841>,  <30.677574, 36.607388, 46.501572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.502104, 36.724209, 46.386841>,  <30.209654, 36.918907, 46.195621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.502104, 36.724209, 46.386841> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668841, -0.373173, 0.642957,
		-0.134564, -0.789821, -0.598394,
		0.731126, -0.486749, 0.478049,
		30.721441, 36.578186, 46.530254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.905735, 36.251568, 46.397652>,  <30.209654, 36.918907, 46.195621>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.905735, 36.251568, 46.397652> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.191877, 36.349533, 46.659424>,  <30.363564, 36.408314, 46.816486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.191877, 36.349533, 46.659424>,  <29.905735, 36.251568, 46.397652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.191877, 36.349533, 46.659424> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616139, -0.220695, 0.756086,
		0.329605, -0.944093, -0.006975,
		0.715355, 0.244913, 0.654435,
		30.406485, 36.423008, 46.855755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.954098, 35.632885, 46.802879>,  <29.905735, 36.251568, 46.397652>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.954098, 35.632885, 46.802879> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.110777, 35.942783, 47.001408>,  <30.204784, 36.128723, 47.120525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.110777, 35.942783, 47.001408>,  <29.954098, 35.632885, 46.802879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.110777, 35.942783, 47.001408> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345868, -0.375879, 0.859703,
		0.852612, -0.508406, 0.120731,
		0.391698, 0.774751, 0.496321,
		30.228287, 36.175209, 47.150303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.838951, 34.847221, 46.967525>,  <29.954098, 35.632885, 46.802879>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.838951, 34.847221, 46.967525> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.461128, 34.730965, 46.906414>,  <29.234434, 34.661213, 46.869747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.461128, 34.730965, 46.906414>,  <29.838951, 34.847221, 46.967525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.461128, 34.730965, 46.906414> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159778, -0.000373, -0.987153,
		0.286847, -0.956833, 0.046790,
		-0.944558, -0.290638, -0.152774,
		29.177761, 34.643772, 46.860580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.862583, 34.182545, 46.640182>,  <29.838951, 34.847221, 46.967525>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.862583, 34.182545, 46.640182> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.517515, 34.369030, 46.561749>,  <29.310474, 34.480923, 46.514690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.517515, 34.369030, 46.561749>,  <29.862583, 34.182545, 46.640182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.517515, 34.369030, 46.561749> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251915, 0.059897, -0.965894,
		-0.438567, -0.882643, -0.169117,
		-0.862669, 0.466213, -0.196082,
		29.258715, 34.508892, 46.502922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.609606, 33.909763, 46.061939>,  <29.862583, 34.182545, 46.640182>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.609606, 33.909763, 46.061939> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.393930, 34.246502, 46.052399>,  <29.264524, 34.448544, 46.046673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.393930, 34.246502, 46.052399>,  <29.609606, 33.909763, 46.061939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.393930, 34.246502, 46.052399> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348185, 0.197040, -0.916484,
		-0.766839, -0.502463, -0.399360,
		-0.539189, 0.841847, -0.023852,
		29.232174, 34.499058, 46.045242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.187357, 33.834270, 45.421345>,  <29.609606, 33.909763, 46.061939>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.187357, 33.834270, 45.421345> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.162609, 34.221127, 45.519989>,  <29.147760, 34.453239, 45.579178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.162609, 34.221127, 45.519989>,  <29.187357, 33.834270, 45.421345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.162609, 34.221127, 45.519989> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398434, 0.250479, -0.882333,
		-0.915108, 0.043669, -0.400837,
		-0.061871, 0.967137, 0.246614,
		29.144049, 34.511269, 45.593975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.068010, 34.087132, 44.813953>,  <29.187357, 33.834270, 45.421345>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.068010, 34.087132, 44.813953> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.198862, 34.398083, 45.028866>,  <29.277372, 34.584656, 45.157814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.198862, 34.398083, 45.028866>,  <29.068010, 34.087132, 44.813953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.198862, 34.398083, 45.028866> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351046, 0.427902, -0.832866,
		-0.877356, 0.461063, -0.132918,
		0.327128, 0.777381, 0.537277,
		29.297001, 34.631298, 45.190048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.878342, 34.584156, 44.293110>,  <29.068010, 34.087132, 44.813953>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.878342, 34.584156, 44.293110> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.160357, 34.676952, 44.561172>,  <29.329565, 34.732628, 44.722008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.160357, 34.676952, 44.561172>,  <28.878342, 34.584156, 44.293110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.160357, 34.676952, 44.561172> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522454, 0.469090, -0.712037,
		-0.479545, 0.852136, 0.209524,
		0.705038, 0.231988, 0.670152,
		29.371868, 34.746548, 44.762218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.077660, 35.287189, 43.926449>,  <28.878342, 34.584156, 44.293110>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.077660, 35.287189, 43.926449> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.334665, 35.145733, 44.198364>,  <29.488869, 35.060860, 44.361515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.334665, 35.145733, 44.198364>,  <29.077660, 35.287189, 43.926449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.334665, 35.145733, 44.198364> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757699, 0.425554, -0.494768,
		-0.114319, 0.832973, 0.541375,
		0.642513, -0.353638, 0.679792,
		29.527420, 35.039642, 44.402302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<29.879953, 33.437801, 49.918797> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.258270, 33.557594, 49.868538>,  <30.485260, 33.629471, 49.838383>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.258270, 33.557594, 49.868538>,  <29.879953, 33.437801, 49.918797>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.258270, 33.557594, 49.868538> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141569, -0.728347, -0.670424,
		-0.292297, 0.616293, -0.731262,
		0.945791, 0.299487, -0.125646,
		30.542007, 33.647442, 49.830845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.907099, 33.352871, 49.217087>,  <29.879953, 33.437801, 49.918797>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.907099, 33.352871, 49.217087> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.280441, 33.410503, 49.348595>,  <30.504446, 33.445084, 49.427498>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.280441, 33.410503, 49.348595>,  <29.907099, 33.352871, 49.217087>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.280441, 33.410503, 49.348595> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348422, -0.583888, -0.733265,
		0.086314, 0.798947, -0.595176,
		0.933355, 0.144081, 0.328769,
		30.560448, 33.453728, 49.447224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.286749, 33.711876, 48.614872>,  <29.907099, 33.352871, 49.217087>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.286749, 33.711876, 48.614872> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.527035, 33.489555, 48.844734>,  <30.671206, 33.356163, 48.982651>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.527035, 33.489555, 48.844734>,  <30.286749, 33.711876, 48.614872>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.527035, 33.489555, 48.844734> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373764, -0.440164, -0.816429,
		0.706714, 0.705226, -0.056675,
		0.600713, -0.555798, 0.574658,
		30.707249, 33.322815, 49.017132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.024216, 33.827072, 48.267227>,  <30.286749, 33.711876, 48.614872>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.024216, 33.827072, 48.267227> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.056168, 33.503521, 48.500237>,  <31.075338, 33.309391, 48.640041>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.056168, 33.503521, 48.500237>,  <31.024216, 33.827072, 48.267227>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.056168, 33.503521, 48.500237> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179322, -0.563200, -0.806629,
		0.980542, 0.168893, 0.100061,
		0.079879, -0.808877, 0.582527,
		31.080132, 33.260857, 48.674995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.774944, 33.529083, 48.288952>,  <31.024216, 33.827072, 48.267227>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.774944, 33.529083, 48.288952> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.520922, 33.236168, 48.387302>,  <31.368507, 33.060417, 48.446312>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.520922, 33.236168, 48.387302>,  <31.774944, 33.529083, 48.288952>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.520922, 33.236168, 48.387302> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209678, -0.469763, -0.857530,
		0.743463, -0.493026, 0.451872,
		-0.635058, -0.732290, 0.245874,
		31.330404, 33.016479, 48.461063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.108757, 32.878693, 48.079807>,  <31.774944, 33.529083, 48.288952>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.108757, 32.878693, 48.079807> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.735638, 32.740574, 48.121109>,  <31.511766, 32.657703, 48.145889>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.735638, 32.740574, 48.121109>,  <32.108757, 32.878693, 48.079807>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.735638, 32.740574, 48.121109> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126779, -0.582558, -0.802840,
		0.337365, -0.735798, 0.587185,
		-0.932798, -0.345293, 0.103251,
		31.455799, 32.636986, 48.152084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.171242, 32.154823, 47.944210>,  <32.108757, 32.878693, 48.079807>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.171242, 32.154823, 47.944210> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.774565, 32.191982, 47.908607>,  <31.536560, 32.214279, 47.887245>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.774565, 32.191982, 47.908607>,  <32.171242, 32.154823, 47.944210>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.774565, 32.191982, 47.908607> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038992, -0.442262, -0.896038,
		-0.122604, -0.892062, 0.434964,
		-0.991689, 0.092898, -0.089006,
		31.477058, 32.219852, 47.881905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.937490, 31.499048, 47.775871>,  <32.171242, 32.154823, 47.944210>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.937490, 31.499048, 47.775871> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.685528, 31.770966, 47.625614>,  <31.534351, 31.934116, 47.535461>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.685528, 31.770966, 47.625614>,  <31.937490, 31.499048, 47.775871>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.685528, 31.770966, 47.625614> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043455, -0.452047, -0.890935,
		-0.775456, -0.577527, 0.255206,
		-0.629904, 0.679791, -0.375639,
		31.496557, 31.974903, 47.512924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.385031, 31.221815, 47.429932>,  <31.937490, 31.499048, 47.775871>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.385031, 31.221815, 47.429932> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.408041, 31.577436, 47.248260>,  <31.421846, 31.790810, 47.139259>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.408041, 31.577436, 47.248260>,  <31.385031, 31.221815, 47.429932>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.408041, 31.577436, 47.248260> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056063, -0.451335, -0.890592,
		-0.996769, 0.076692, 0.023880,
		0.057524, 0.889053, -0.454176,
		31.425299, 31.844152, 47.112007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.227230, 31.016178, 46.689022>,  <31.385031, 31.221815, 47.429932>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.227230, 31.016178, 46.689022> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.318943, 31.404825, 46.665745>,  <31.373970, 31.638014, 46.651779>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.318943, 31.404825, 46.665745>,  <31.227230, 31.016178, 46.689022>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.318943, 31.404825, 46.665745> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145348, -0.093292, -0.984972,
		-0.962447, 0.217379, -0.162613,
		0.229282, 0.971619, -0.058193,
		31.387728, 31.696310, 46.648285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.856987, 31.227190, 46.212269>,  <31.227230, 31.016178, 46.689022>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.856987, 31.227190, 46.212269> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.155346, 31.493242, 46.226372>,  <31.334360, 31.652874, 46.234833>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.155346, 31.493242, 46.226372>,  <30.856987, 31.227190, 46.212269>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.155346, 31.493242, 46.226372> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221195, -0.197430, -0.955036,
		-0.628262, 0.720156, -0.294386,
		0.745896, 0.665129, 0.035257,
		31.379114, 31.692781, 46.236950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.734770, 31.605782, 45.652737>,  <30.856987, 31.227190, 46.212269>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.734770, 31.605782, 45.652737> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.114708, 31.691879, 45.743477>,  <31.342670, 31.743538, 45.797920>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.114708, 31.691879, 45.743477>,  <30.734770, 31.605782, 45.652737>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.114708, 31.691879, 45.743477> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233299, -0.004678, -0.972394,
		-0.208239, 0.976549, -0.054659,
		0.949846, 0.215243, 0.226854,
		31.399662, 31.756453, 45.811535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.017803, 32.024826, 45.399918>,  <30.734770, 31.605782, 45.652737>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.017803, 32.024826, 45.399918> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.675043, 31.850048, 45.290516>,  <29.469387, 31.745182, 45.224876>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.675043, 31.850048, 45.290516>,  <30.017803, 32.024826, 45.399918>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.675043, 31.850048, 45.290516> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293358, -0.022923, 0.955728,
		-0.423868, 0.899197, -0.108538,
		-0.856899, -0.436943, -0.273503,
		29.417973, 31.718966, 45.208466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.529163, 32.355541, 45.850430>,  <30.017803, 32.024826, 45.399918>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.529163, 32.355541, 45.850430> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.386578, 32.009327, 45.709698>,  <29.301025, 31.801600, 45.625259>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.386578, 32.009327, 45.709698>,  <29.529163, 32.355541, 45.850430>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.386578, 32.009327, 45.709698> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430548, -0.182025, 0.884022,
		-0.829192, 0.466603, -0.307768,
		-0.356466, -0.865533, -0.351829,
		29.279638, 31.749666, 45.604149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.914101, 32.375248, 46.044498>,  <29.529163, 32.355541, 45.850430>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.914101, 32.375248, 46.044498> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.989004, 31.990458, 45.964962>,  <29.033947, 31.759584, 45.917240>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.989004, 31.990458, 45.964962>,  <28.914101, 32.375248, 46.044498>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.989004, 31.990458, 45.964962> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484557, -0.266542, 0.833163,
		-0.854481, -0.059668, -0.516044,
		0.187261, -0.961975, -0.198843,
		29.045183, 31.701866, 45.905308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.364435, 32.098667, 46.166451>,  <28.914101, 32.375248, 46.044498>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.364435, 32.098667, 46.166451> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.629631, 31.804089, 46.220249>,  <28.788750, 31.627342, 46.252529>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.629631, 31.804089, 46.220249>,  <28.364435, 32.098667, 46.166451>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.629631, 31.804089, 46.220249> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375150, -0.171353, 0.910989,
		-0.647847, -0.654435, -0.389883,
		0.662990, -0.736446, 0.134501,
		28.828527, 31.583155, 46.260601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.975019, 31.534067, 46.477406>,  <28.364435, 32.098667, 46.166451>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.975019, 31.534067, 46.477406> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.361965, 31.480305, 46.563328>,  <28.594133, 31.448048, 46.614880>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.361965, 31.480305, 46.563328>,  <27.975019, 31.534067, 46.477406>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.361965, 31.480305, 46.563328> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252593, -0.444521, 0.859417,
		-0.020025, -0.885628, -0.463964,
		0.967366, -0.134404, 0.214801,
		28.652174, 31.439983, 46.627769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.954306, 30.807472, 46.805111>,  <27.975019, 31.534067, 46.477406>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.954306, 30.807472, 46.805111> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.291986, 30.996967, 46.905426>,  <28.494595, 31.110664, 46.965614>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.291986, 30.996967, 46.905426>,  <27.954306, 30.807472, 46.805111>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.291986, 30.996967, 46.905426> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026408, -0.430539, 0.902185,
		0.535372, -0.768251, -0.350952,
		0.844203, 0.473737, 0.250786,
		28.545248, 31.139088, 46.980663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.309387, 30.289619, 47.168053>,  <27.954306, 30.807472, 46.805111>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.309387, 30.289619, 47.168053> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.504126, 30.622721, 47.273502>,  <28.620970, 30.822582, 47.336773>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.504126, 30.622721, 47.273502>,  <28.309387, 30.289619, 47.168053>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.504126, 30.622721, 47.273502> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013807, -0.309107, 0.950927,
		0.873378, -0.459316, -0.161986,
		0.486847, 0.832755, 0.263626,
		28.650179, 30.872547, 47.352589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.862844, 30.052645, 47.560448>,  <28.309387, 30.289619, 47.168053>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.862844, 30.052645, 47.560448> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.784014, 30.433289, 47.654770>,  <28.736715, 30.661674, 47.711365>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.784014, 30.433289, 47.654770>,  <28.862844, 30.052645, 47.560448>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.784014, 30.433289, 47.654770> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035920, -0.233354, 0.971728,
		0.979730, 0.199973, 0.011806,
		-0.197075, 0.951607, 0.235807,
		28.724892, 30.718771, 47.725513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.349100, 30.261374, 48.080280>,  <28.862844, 30.052645, 47.560448>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.349100, 30.261374, 48.080280> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.055504, 30.528046, 48.132122>,  <28.879347, 30.688049, 48.163227>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.055504, 30.528046, 48.132122>,  <29.349100, 30.261374, 48.080280>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.055504, 30.528046, 48.132122> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140792, -0.037327, 0.989335,
		0.664408, 0.744408, -0.066466,
		-0.733989, 0.666680, 0.129607,
		28.835308, 30.728050, 48.171005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.601183, 30.814919, 48.407196>,  <29.349100, 30.261374, 48.080280>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.601183, 30.814919, 48.407196> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.209808, 30.860620, 48.476025>,  <28.974983, 30.888042, 48.517323>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.209808, 30.860620, 48.476025>,  <29.601183, 30.814919, 48.407196>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.209808, 30.860620, 48.476025> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186944, 0.135584, 0.972969,
		0.087837, 0.984156, -0.154019,
		-0.978436, 0.114255, 0.172073,
		28.916277, 30.894897, 48.527645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.555229, 31.347946, 48.927250>,  <29.601183, 30.814919, 48.407196>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.555229, 31.347946, 48.927250> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.193663, 31.177069, 48.935608>,  <28.976723, 31.074541, 48.940620>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.193663, 31.177069, 48.935608>,  <29.555229, 31.347946, 48.927250>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.193663, 31.177069, 48.935608> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020039, 0.006493, 0.999778,
		-0.427236, 0.904136, 0.002692,
		-0.903918, -0.427195, 0.020892,
		28.922487, 31.048910, 48.941875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.211361, 31.841274, 49.277317>,  <29.555229, 31.347946, 48.927250>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.211361, 31.841274, 49.277317> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.004175, 31.499311, 49.288967>,  <28.879864, 31.294134, 49.295956>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.004175, 31.499311, 49.288967>,  <29.211361, 31.841274, 49.277317>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.004175, 31.499311, 49.288967> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139439, 0.117979, 0.983178,
		-0.843961, 0.505189, -0.180316,
		-0.517964, -0.854907, 0.029127,
		28.848785, 31.242840, 49.297707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.587646, 32.013786, 49.662926>,  <29.211361, 31.841274, 49.277317>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.587646, 32.013786, 49.662926> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.651863, 31.619286, 49.678600>,  <28.690393, 31.382586, 49.688004>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.651863, 31.619286, 49.678600>,  <28.587646, 32.013786, 49.662926>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.651863, 31.619286, 49.678600> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225715, 0.001961, 0.974191,
		-0.960874, -0.165242, -0.222297,
		0.160542, -0.986251, 0.039182,
		28.700026, 31.323410, 49.690353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.698208, 32.726784, 49.725872>,  <28.587646, 32.013786, 49.662926>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.698208, 32.726784, 49.725872> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.541300, 33.092548, 49.765831>,  <28.447155, 33.312008, 49.789806>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.541300, 33.092548, 49.765831>,  <28.698208, 32.726784, 49.725872>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.541300, 33.092548, 49.765831> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032559, 0.094730, -0.994970,
		-0.919273, -0.393552, -0.007387,
		-0.392272, 0.914409, 0.099896,
		28.423618, 33.366871, 49.795799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.221365, 32.684196, 49.177200>,  <28.698208, 32.726784, 49.725872>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.221365, 32.684196, 49.177200> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.310349, 33.053009, 49.303928>,  <28.363739, 33.274296, 49.379967>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.310349, 33.053009, 49.303928>,  <28.221365, 32.684196, 49.177200>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.310349, 33.053009, 49.303928> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026483, 0.330562, -0.943413,
		-0.974583, 0.201478, 0.097953,
		0.222457, 0.922028, 0.316824,
		28.377085, 33.329617, 49.398975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.684835, 33.165501, 48.930351>,  <28.221365, 32.684196, 49.177200>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.684835, 33.165501, 48.930351> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.007050, 33.399296, 48.969311>,  <28.200378, 33.539574, 48.992687>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.007050, 33.399296, 48.969311>,  <27.684835, 33.165501, 48.930351>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.007050, 33.399296, 48.969311> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163636, 0.377403, -0.911477,
		-0.569508, 0.718288, 0.399655,
		0.805534, 0.584491, 0.097396,
		28.248709, 33.574642, 48.998531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.546949, 33.861115, 48.492878>,  <27.684835, 33.165501, 48.930351>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.546949, 33.861115, 48.492878> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.937262, 33.892010, 48.574745>,  <28.171448, 33.910549, 48.623867>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.937262, 33.892010, 48.574745>,  <27.546949, 33.861115, 48.492878>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.937262, 33.892010, 48.574745> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144164, 0.476639, -0.867198,
		-0.164535, 0.875699, 0.453959,
		0.975779, 0.077240, 0.204669,
		28.229996, 33.915180, 48.636147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.671127, 34.466187, 48.303856>,  <27.546949, 33.861115, 48.492878>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.671127, 34.466187, 48.303856> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.032515, 34.294739, 48.305954>,  <28.249348, 34.191868, 48.307213>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.032515, 34.294739, 48.305954>,  <27.671127, 34.466187, 48.303856>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.032515, 34.294739, 48.305954> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294033, 0.610781, -0.735181,
		0.311911, 0.665755, 0.677851,
		0.903469, -0.428622, 0.005245,
		28.303555, 34.166153, 48.307526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.140331, 35.127792, 48.157108>,  <27.671127, 34.466187, 48.303856>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.140331, 35.127792, 48.157108> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.371405, 34.807907, 48.091690>,  <28.510048, 34.615978, 48.052441>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.371405, 34.807907, 48.091690>,  <28.140331, 35.127792, 48.157108>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.371405, 34.807907, 48.091690> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300891, 0.394874, -0.868066,
		0.758780, 0.452259, 0.468738,
		0.577683, -0.799710, -0.163542,
		28.544710, 34.567993, 48.042629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.794111, 35.351959, 47.910618>,  <28.140331, 35.127792, 48.157108>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.794111, 35.351959, 47.910618> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.761267, 34.971741, 47.790802>,  <28.741560, 34.743610, 47.718914>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.761267, 34.971741, 47.790802>,  <28.794111, 35.351959, 47.910618>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.761267, 34.971741, 47.790802> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310826, 0.261135, -0.913891,
		0.946914, -0.168143, 0.274012,
		-0.082110, -0.950545, -0.299535,
		28.736633, 34.686577, 47.700943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.436605, 35.350121, 47.543343>,  <28.794111, 35.351959, 47.910618>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.436605, 35.350121, 47.543343> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.197748, 35.046185, 47.440529>,  <29.054434, 34.863823, 47.378841>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.197748, 35.046185, 47.440529>,  <29.436605, 35.350121, 47.543343>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.197748, 35.046185, 47.440529> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109750, 0.240025, -0.964543,
		0.794592, -0.604178, -0.059936,
		-0.597142, -0.759840, -0.257030,
		29.018606, 34.818233, 47.363419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.213821, 35.266739, 47.470165>,  <29.436605, 35.350121, 47.543343>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.213821, 35.266739, 47.470165> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.213713, 35.661533, 47.534485>,  <30.213648, 35.898411, 47.573074>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.213713, 35.661533, 47.534485>,  <30.213821, 35.266739, 47.470165>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.213713, 35.661533, 47.534485> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551347, -0.134295, 0.823396,
		0.834276, -0.088433, 0.544209,
		-0.000269, 0.986987, 0.160797,
		30.213633, 35.957630, 47.582726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.752810, 35.543343, 48.006260>,  <30.213821, 35.266739, 47.470165>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.752810, 35.543343, 48.006260> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.439674, 35.792229, 48.004803>,  <30.251793, 35.941559, 48.003929>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.439674, 35.792229, 48.004803>,  <30.752810, 35.543343, 48.006260>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.439674, 35.792229, 48.004803> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090807, -0.108459, 0.989945,
		0.615563, 0.775298, 0.141407,
		-0.782839, 0.622214, -0.003639,
		30.204823, 35.978893, 48.003712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.954041, 35.884987, 48.574471>,  <30.752810, 35.543343, 48.006260>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.954041, 35.884987, 48.574471> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.588692, 36.031311, 48.502987>,  <30.369482, 36.119106, 48.460098>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.588692, 36.031311, 48.502987>,  <30.954041, 35.884987, 48.574471>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.588692, 36.031311, 48.502987> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107109, 0.207569, 0.972339,
		0.392788, 0.907246, -0.150406,
		-0.913370, 0.365813, -0.178705,
		30.314680, 36.141056, 48.449375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.881971, 36.472095, 48.915607>,  <30.954041, 35.884987, 48.574471>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.881971, 36.472095, 48.915607> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.497000, 36.388618, 48.846123>,  <30.266016, 36.338531, 48.804432>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.497000, 36.388618, 48.846123>,  <30.881971, 36.472095, 48.915607>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.497000, 36.388618, 48.846123> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175537, -0.009905, 0.984423,
		-0.207158, 0.977932, -0.027100,
		-0.962430, -0.208688, -0.173715,
		30.208271, 36.326012, 48.794006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.588612, 36.950111, 49.219051>,  <30.881971, 36.472095, 48.915607>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.588612, 36.950111, 49.219051> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.327789, 36.647793, 49.195076>,  <30.171297, 36.466400, 49.180691>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.327789, 36.647793, 49.195076>,  <30.588612, 36.950111, 49.219051>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.327789, 36.647793, 49.195076> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323137, 0.205521, 0.923766,
		-0.685863, 0.621714, -0.378237,
		-0.652054, -0.755799, -0.059939,
		30.132174, 36.421055, 49.177094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.024988, 37.165459, 49.566898>,  <30.588612, 36.950111, 49.219051>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.024988, 37.165459, 49.566898> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.940302, 36.774586, 49.573689>,  <29.889490, 36.540062, 49.577763>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.940302, 36.774586, 49.573689>,  <30.024988, 37.165459, 49.566898>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.940302, 36.774586, 49.573689> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389965, 0.100390, 0.915341,
		-0.896160, 0.187174, -0.402322,
		-0.211717, -0.977184, 0.016974,
		29.876787, 36.481430, 49.578781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.402063, 37.127621, 49.824032>,  <30.024988, 37.165459, 49.566898>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.402063, 37.127621, 49.824032> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.529297, 36.754299, 49.890682>,  <29.605637, 36.530308, 49.930672>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.529297, 36.754299, 49.890682>,  <29.402063, 37.127621, 49.824032>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.529297, 36.754299, 49.890682> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254633, 0.085199, 0.963277,
		-0.913228, -0.348832, -0.210550,
		0.318084, -0.933304, 0.166631,
		29.624722, 36.474308, 49.940670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.817764, 36.698826, 50.002132>,  <29.402063, 37.127621, 49.824032>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.817764, 36.698826, 50.002132> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.147572, 36.523056, 50.144722>,  <29.345457, 36.417595, 50.230278>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.147572, 36.523056, 50.144722>,  <28.817764, 36.698826, 50.002132>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.147572, 36.523056, 50.144722> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373707, 0.050148, 0.926190,
		-0.424867, -0.896879, -0.122868,
		0.824519, -0.439424, 0.356476,
		29.394928, 36.391228, 50.251663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.562294, 36.176922, 50.475388>,  <28.817764, 36.698826, 50.002132>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.562294, 36.176922, 50.475388> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.945227, 36.263603, 50.551868>,  <29.174986, 36.315613, 50.597755>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.945227, 36.263603, 50.551868>,  <28.562294, 36.176922, 50.475388>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.945227, 36.263603, 50.551868> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218118, 0.107782, 0.969952,
		0.189585, -0.970269, 0.150450,
		0.957331, 0.216704, 0.191199,
		29.232426, 36.328613, 50.609230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<36.075401, 37.490677, 36.394344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.431740, 37.455933, 36.572712>,  <36.645542, 37.435085, 36.679733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.431740, 37.455933, 36.572712>,  <36.075401, 37.490677, 36.394344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.431740, 37.455933, 36.572712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403051, 0.301794, 0.863985,
		-0.209626, -0.949408, 0.233842,
		0.890846, -0.086863, 0.445924,
		36.698994, 37.429874, 36.706490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.123238, 36.929996, 36.941563>,  <36.075401, 37.490677, 36.394344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.123238, 36.929996, 36.941563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.410412, 37.184837, 37.053761>,  <36.582714, 37.337742, 37.121078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.410412, 37.184837, 37.053761>,  <36.123238, 36.929996, 36.941563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.410412, 37.184837, 37.053761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398902, 0.046298, 0.915824,
		0.570485, -0.769390, 0.287379,
		0.717930, 0.637100, 0.280499,
		36.625790, 37.375969, 37.137909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.278957, 36.766197, 37.607296>,  <36.123238, 36.929996, 36.941563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.278957, 36.766197, 37.607296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.461407, 37.121506, 37.585621>,  <36.570877, 37.334690, 37.572617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.461407, 37.121506, 37.585621>,  <36.278957, 36.766197, 37.607296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.461407, 37.121506, 37.585621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215486, 0.169316, 0.961716,
		0.863435, -0.426983, 0.268638,
		0.456121, 0.888267, -0.054185,
		36.598244, 37.387985, 37.569366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.801704, 36.809547, 38.131062>,  <36.278957, 36.766197, 37.607296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.801704, 36.809547, 38.131062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.693897, 37.184715, 38.043728>,  <36.629215, 37.409817, 37.991325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.693897, 37.184715, 38.043728>,  <36.801704, 36.809547, 38.131062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.693897, 37.184715, 38.043728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450053, 0.077768, 0.889609,
		0.851360, 0.338028, 0.401153,
		-0.269516, 0.937918, -0.218338,
		36.613041, 37.466091, 37.978226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.904488, 37.157288, 38.746391>,  <36.801704, 36.809547, 38.131062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.904488, 37.157288, 38.746391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.652222, 37.389969, 38.540913>,  <36.500862, 37.529579, 38.417625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.652222, 37.389969, 38.540913>,  <36.904488, 37.157288, 38.746391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.652222, 37.389969, 38.540913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537148, 0.150556, 0.829943,
		0.560119, 0.799347, 0.217510,
		-0.630665, 0.581702, -0.513697,
		36.463020, 37.564480, 38.386803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.763687, 37.821758, 39.235172>,  <36.904488, 37.157288, 38.746391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.763687, 37.821758, 39.235172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.464672, 37.812023, 38.969666>,  <36.285263, 37.806183, 38.810360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.464672, 37.812023, 38.969666>,  <36.763687, 37.821758, 39.235172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.464672, 37.812023, 38.969666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646382, 0.256667, 0.718548,
		0.152879, 0.966193, -0.207602,
		-0.747541, -0.024339, -0.663769,
		36.240410, 37.804722, 38.770535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.382568, 38.459381, 39.230671>,  <36.763687, 37.821758, 39.235172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.382568, 38.459381, 39.230671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.131145, 38.210934, 39.043430>,  <35.980289, 38.061867, 38.931084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.131145, 38.210934, 39.043430>,  <36.382568, 38.459381, 39.230671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.131145, 38.210934, 39.043430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756248, 0.347508, 0.554372,
		-0.181661, 0.702460, -0.688150,
		-0.628561, -0.621119, -0.468105,
		35.942577, 38.024597, 38.903000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.792999, 38.865692, 38.910534>,  <36.382568, 38.459381, 39.230671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.792999, 38.865692, 38.910534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.662025, 38.493874, 38.978344>,  <35.583443, 38.270782, 39.019032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.662025, 38.493874, 38.978344>,  <35.792999, 38.865692, 38.910534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.662025, 38.493874, 38.978344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697334, 0.358797, 0.620475,
		-0.637582, 0.084950, -0.765684,
		-0.327435, -0.929542, 0.169524,
		35.563797, 38.215012, 39.029202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.069412, 38.942036, 38.999905>,  <35.792999, 38.865692, 38.910534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.069412, 38.942036, 38.999905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.162334, 38.579918, 39.142162>,  <35.218086, 38.362648, 39.227516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.162334, 38.579918, 39.142162>,  <35.069412, 38.942036, 38.999905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.162334, 38.579918, 39.142162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482653, 0.210159, 0.850223,
		-0.844442, -0.369160, -0.388122,
		0.232301, -0.905292, 0.355643,
		35.232025, 38.308331, 39.248856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.391071, 38.658497, 39.284870>,  <35.069412, 38.942036, 38.999905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.391071, 38.658497, 39.284870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.664406, 38.438656, 39.477112>,  <34.828407, 38.306751, 39.592457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.664406, 38.438656, 39.477112>,  <34.391071, 38.658497, 39.284870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.664406, 38.438656, 39.477112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351244, 0.329619, 0.876344,
		-0.640061, -0.767649, 0.032195,
		0.683337, -0.549606, 0.480609,
		34.869408, 38.273773, 39.621296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.031158, 38.137409, 39.639210>,  <34.391071, 38.658497, 39.284870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.031158, 38.137409, 39.639210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.367744, 38.171127, 39.852692>,  <34.569695, 38.191357, 39.980782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.367744, 38.171127, 39.852692>,  <34.031158, 38.137409, 39.639210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.367744, 38.171127, 39.852692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538895, 0.059339, 0.840280,
		0.039147, -0.994674, 0.095348,
		0.841463, 0.084277, 0.533702,
		34.620182, 38.196415, 40.012802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.075367, 37.586857, 40.187199>,  <34.031158, 38.137409, 39.639210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.075367, 37.586857, 40.187199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.323551, 37.870140, 40.321945>,  <34.472462, 38.040108, 40.402794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.323551, 37.870140, 40.321945>,  <34.075367, 37.586857, 40.187199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.323551, 37.870140, 40.321945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586796, 0.134262, 0.798527,
		0.520291, -0.693124, 0.498875,
		0.620458, 0.708204, 0.336867,
		34.509689, 38.082600, 40.423004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.994640, 36.814156, 40.056866>,  <34.075367, 37.586857, 40.187199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.994640, 36.814156, 40.056866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.650227, 36.641861, 39.948723>,  <33.443581, 36.538486, 39.883835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.650227, 36.641861, 39.948723>,  <33.994640, 36.814156, 40.056866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.650227, 36.641861, 39.948723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087515, 0.398196, -0.913116,
		0.500966, -0.809882, -0.305163,
		-0.861031, -0.430734, -0.270360,
		33.391918, 36.512642, 39.867615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.118690, 36.356236, 39.448181>,  <33.994640, 36.814156, 40.056866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.118690, 36.356236, 39.448181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.731293, 36.455097, 39.460438>,  <33.498856, 36.514416, 39.467793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.731293, 36.455097, 39.460438>,  <34.118690, 36.356236, 39.448181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.731293, 36.455097, 39.460438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027724, 0.229249, -0.972973,
		-0.247502, -0.941466, -0.228878,
		-0.968490, 0.247158, 0.030639,
		33.440746, 36.529243, 39.469631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.819977, 36.016533, 38.804638>,  <34.118690, 36.356236, 39.448181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.819977, 36.016533, 38.804638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.568066, 36.299660, 38.932621>,  <33.416920, 36.469536, 39.009411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.568066, 36.299660, 38.932621>,  <33.819977, 36.016533, 38.804638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.568066, 36.299660, 38.932621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255995, 0.199763, -0.945813,
		-0.733380, -0.677559, 0.055392,
		-0.629778, 0.707820, 0.319954,
		33.379131, 36.512005, 39.028606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.251011, 35.778542, 38.492470>,  <33.819977, 36.016533, 38.804638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.251011, 35.778542, 38.492470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.197250, 36.163586, 38.586552>,  <33.164993, 36.394611, 38.643002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.197250, 36.163586, 38.586552>,  <33.251011, 35.778542, 38.492470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.197250, 36.163586, 38.586552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186797, 0.208494, -0.960019,
		-0.973161, -0.172965, 0.151790,
		-0.134402, 0.962608, 0.235208,
		33.156929, 36.452370, 38.657116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.549767, 35.913475, 38.196915>,  <33.251011, 35.778542, 38.492470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.549767, 35.913475, 38.196915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.723137, 36.269379, 38.254139>,  <32.827160, 36.482922, 38.288475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.723137, 36.269379, 38.254139>,  <32.549767, 35.913475, 38.196915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.723137, 36.269379, 38.254139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309246, 0.295956, -0.903757,
		-0.846470, 0.347468, 0.403430,
		0.433424, 0.889762, 0.143064,
		32.853165, 36.536308, 38.297058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.019165, 36.315273, 38.217587>,  <32.549767, 35.913475, 38.196915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.019165, 36.315273, 38.217587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.317635, 36.552132, 38.095875>,  <32.496716, 36.694248, 38.022850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.317635, 36.552132, 38.095875>,  <32.019165, 36.315273, 38.217587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.317635, 36.552132, 38.095875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588683, 0.373397, -0.716957,
		-0.310928, 0.714098, 0.627207,
		0.746174, 0.592148, -0.304277,
		32.541489, 36.729774, 38.004593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.694490, 36.987408, 38.041962>,  <32.019165, 36.315273, 38.217587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.694490, 36.987408, 38.041962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.056622, 37.007107, 37.873222>,  <32.273899, 37.018929, 37.771976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.056622, 37.007107, 37.873222>,  <31.694490, 36.987408, 38.041962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.056622, 37.007107, 37.873222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408872, 0.369833, -0.834294,
		0.114926, 0.927792, 0.354956,
		0.905326, 0.049250, -0.421852,
		32.328220, 37.021881, 37.746666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.565823, 37.411011, 37.504631>,  <31.694490, 36.987408, 38.041962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.565823, 37.411011, 37.504631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.904686, 37.226322, 37.399456>,  <32.108006, 37.115509, 37.336349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.904686, 37.226322, 37.399456>,  <31.565823, 37.411011, 37.504631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.904686, 37.226322, 37.399456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283603, 0.025544, -0.958602,
		0.449321, 0.886659, -0.109305,
		0.847160, -0.461719, -0.262936,
		32.158833, 37.087807, 37.320576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.706253, 37.839813, 36.897064>,  <31.565823, 37.411011, 37.504631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.706253, 37.839813, 36.897064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.904116, 37.492535, 36.881313>,  <32.022835, 37.284168, 36.871864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.904116, 37.492535, 36.881313>,  <31.706253, 37.839813, 36.897064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.904116, 37.492535, 36.881313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178681, -0.057256, -0.982240,
		0.850521, 0.492909, -0.183452,
		0.494659, -0.868195, -0.039376,
		32.052513, 37.232075, 36.869499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.892408, 37.758587, 36.246593>,  <31.706253, 37.839813, 36.897064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.892408, 37.758587, 36.246593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.939287, 37.382614, 36.374836>,  <31.967415, 37.157028, 36.451782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.939287, 37.382614, 36.374836>,  <31.892408, 37.758587, 36.246593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.939287, 37.382614, 36.374836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262473, -0.340670, -0.902802,
		0.957796, 0.021653, -0.286632,
		0.117195, -0.939933, 0.320609,
		31.974445, 37.100636, 36.471020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.379730, 37.509941, 35.743240>,  <31.892408, 37.758587, 36.246593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.379730, 37.509941, 35.743240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.188969, 37.194153, 35.897800>,  <32.074512, 37.004681, 35.990536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.188969, 37.194153, 35.897800>,  <32.379730, 37.509941, 35.743240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.188969, 37.194153, 35.897800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168142, -0.349552, -0.921706,
		0.862724, -0.504533, 0.033959,
		-0.476902, -0.789468, 0.386400,
		32.045898, 36.957314, 36.013721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.631863, 36.892696, 35.271671>,  <32.379730, 37.509941, 35.743240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.631863, 36.892696, 35.271671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.308369, 36.744125, 35.454098>,  <32.114273, 36.654984, 35.563553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.308369, 36.744125, 35.454098>,  <32.631863, 36.892696, 35.271671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.308369, 36.744125, 35.454098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340698, -0.336238, -0.877991,
		0.479453, -0.865441, 0.145384,
		-0.808733, -0.371423, 0.456065,
		32.065750, 36.632698, 35.590916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.446541, 36.251816, 35.086231>,  <32.631863, 36.892696, 35.271671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.446541, 36.251816, 35.086231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.089249, 36.332966, 35.246719>,  <31.874872, 36.381657, 35.343014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.089249, 36.332966, 35.246719>,  <32.446541, 36.251816, 35.086231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.089249, 36.332966, 35.246719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448857, -0.453556, -0.769944,
		0.025773, -0.867830, 0.496193,
		-0.893232, 0.202875, 0.401221,
		31.821280, 36.393829, 35.367085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.055077, 35.590637, 35.012589>,  <32.446541, 36.251816, 35.086231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.055077, 35.590637, 35.012589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.813656, 35.907230, 35.051113>,  <31.668804, 36.097187, 35.074226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.813656, 35.907230, 35.051113>,  <32.055077, 35.590637, 35.012589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.813656, 35.907230, 35.051113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514701, -0.294508, -0.805200,
		-0.608941, -0.535551, 0.585130,
		-0.603551, 0.791486, 0.096311,
		31.632591, 36.144676, 35.080006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.318361, 35.384052, 35.091640>,  <32.055077, 35.590637, 35.012589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.318361, 35.384052, 35.091640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.355175, 35.754494, 34.945297>,  <31.377262, 35.976761, 34.857491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.355175, 35.754494, 34.945297>,  <31.318361, 35.384052, 35.091640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.355175, 35.754494, 34.945297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444855, -0.290476, -0.847188,
		-0.890862, 0.240725, 0.385250,
		0.092033, 0.926108, -0.365862,
		31.382786, 36.032326, 34.835537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.019753, 35.039494, 35.718353>,  <31.318361, 35.384052, 35.091640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.019753, 35.039494, 35.718353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.240816, 34.719158, 35.626068>,  <31.373453, 34.526958, 35.570698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.240816, 34.719158, 35.626068>,  <31.019753, 35.039494, 35.718353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.240816, 34.719158, 35.626068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137685, -0.360762, 0.922439,
		-0.821957, -0.478026, -0.309641,
		0.552657, -0.800838, -0.230714,
		31.406612, 34.478909, 35.556854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.541540, 34.368240, 35.805733>,  <31.019753, 35.039494, 35.718353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.541540, 34.368240, 35.805733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.933216, 34.308964, 35.861202>,  <31.168221, 34.273399, 35.894485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.933216, 34.308964, 35.861202>,  <30.541540, 34.368240, 35.805733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.933216, 34.308964, 35.861202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197227, -0.533614, 0.822409,
		-0.047871, -0.832644, -0.551735,
		0.979188, -0.148187, 0.138675,
		31.226973, 34.264507, 35.902805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.630054, 33.700283, 35.846783>,  <30.541540, 34.368240, 35.805733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.630054, 33.700283, 35.846783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.950541, 33.872150, 36.013371>,  <31.142832, 33.975269, 36.113323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.950541, 33.872150, 36.013371>,  <30.630054, 33.700283, 35.846783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.950541, 33.872150, 36.013371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096700, -0.593868, 0.798730,
		0.590514, -0.680225, -0.434266,
		0.801213, 0.429667, 0.416465,
		31.190905, 34.001049, 36.138309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.192623, 33.106346, 35.988949>,  <30.630054, 33.700283, 35.846783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.192623, 33.106346, 35.988949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.242025, 33.409519, 36.245159>,  <31.271667, 33.591423, 36.398888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.242025, 33.409519, 36.245159>,  <31.192623, 33.106346, 35.988949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.242025, 33.409519, 36.245159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113965, -0.652034, 0.749576,
		0.985778, -0.019580, -0.166908,
		0.123506, 0.757937, 0.640530,
		31.279078, 33.636902, 36.437317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.740210, 32.890423, 36.383511>,  <31.192623, 33.106346, 35.988949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.740210, 32.890423, 36.383511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.572607, 33.199272, 36.574615>,  <31.472046, 33.384583, 36.689278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.572607, 33.199272, 36.574615>,  <31.740210, 32.890423, 36.383511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.572607, 33.199272, 36.574615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100444, -0.483535, 0.869543,
		0.902411, 0.412332, 0.125048,
		-0.419005, 0.772125, 0.477763,
		31.446905, 33.430908, 36.717945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.093552, 33.110401, 37.105495>,  <31.740210, 32.890423, 36.383511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.093552, 33.110401, 37.105495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.719799, 33.249664, 37.135750>,  <31.495548, 33.333221, 37.153904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.719799, 33.249664, 37.135750>,  <32.093552, 33.110401, 37.105495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.719799, 33.249664, 37.135750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058145, -0.358464, 0.931731,
		0.351500, 0.866194, 0.355185,
		-0.934381, 0.348155, 0.075635,
		31.439486, 33.354111, 37.158440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.116600, 33.387184, 37.752518>,  <32.093552, 33.110401, 37.105495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.116600, 33.387184, 37.752518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.738405, 33.312752, 37.645607>,  <31.511490, 33.268093, 37.581463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.738405, 33.312752, 37.645607>,  <32.116600, 33.387184, 37.752518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.738405, 33.312752, 37.645607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148984, -0.482638, 0.863055,
		-0.289597, 0.855823, 0.428603,
		-0.945483, -0.186083, -0.267274,
		31.454760, 33.256927, 37.565426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.703577, 33.627998, 38.274998>,  <32.116600, 33.387184, 37.752518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.703577, 33.627998, 38.274998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.464970, 33.365570, 38.090069>,  <31.321806, 33.208115, 37.979111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.464970, 33.365570, 38.090069>,  <31.703577, 33.627998, 38.274998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.464970, 33.365570, 38.090069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302371, -0.349884, 0.886653,
		-0.743464, 0.668697, 0.010336,
		-0.596518, -0.656068, -0.462321,
		31.286015, 33.168751, 37.951374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.115618, 33.619778, 38.646854>,  <31.703577, 33.627998, 38.274998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.115618, 33.619778, 38.646854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.103615, 33.275745, 38.443146>,  <31.096413, 33.069324, 38.320923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.103615, 33.275745, 38.443146>,  <31.115618, 33.619778, 38.646854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.103615, 33.275745, 38.443146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340538, -0.470220, 0.814204,
		-0.939752, 0.197857, -0.278782,
		-0.030007, -0.860085, -0.509267,
		31.094612, 33.017719, 38.290367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.434675, 33.262348, 38.719105>,  <31.115618, 33.619778, 38.646854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.434675, 33.262348, 38.719105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.689598, 32.973728, 38.610882>,  <30.842552, 32.800556, 38.545948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.689598, 32.973728, 38.610882>,  <30.434675, 33.262348, 38.719105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.689598, 32.973728, 38.610882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297977, -0.554528, 0.776987,
		-0.710671, -0.414557, -0.568410,
		0.637304, -0.721555, -0.270558,
		30.880789, 32.757263, 38.529713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.033319, 32.674660, 38.780563>,  <30.434675, 33.262348, 38.719105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.033319, 32.674660, 38.780563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.417618, 32.564484, 38.793823>,  <30.648197, 32.498379, 38.801781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.417618, 32.564484, 38.793823>,  <30.033319, 32.674660, 38.780563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.417618, 32.564484, 38.793823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203784, -0.619553, 0.758041,
		-0.188257, -0.735040, -0.651364,
		0.960745, -0.275444, 0.033154,
		30.705841, 32.481850, 38.803768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.952206, 32.006657, 38.790787>,  <30.033319, 32.674660, 38.780563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.952206, 32.006657, 38.790787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.323093, 32.056778, 38.931961>,  <30.545626, 32.086849, 39.016666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.323093, 32.056778, 38.931961>,  <29.952206, 32.006657, 38.790787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.323093, 32.056778, 38.931961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172299, -0.694009, 0.699045,
		0.332533, -0.708979, -0.621909,
		0.927218, 0.125301, 0.352937,
		30.601259, 32.094368, 39.037842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.096022, 31.314474, 39.223671>,  <29.952206, 32.006657, 38.790787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.096022, 31.314474, 39.223671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.386206, 31.574308, 39.314663>,  <30.560316, 31.730209, 39.369259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.386206, 31.574308, 39.314663>,  <30.096022, 31.314474, 39.223671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.386206, 31.574308, 39.314663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031880, -0.361871, 0.931683,
		0.687527, -0.668645, -0.283231,
		0.725459, 0.649587, 0.227480,
		30.603844, 31.769184, 39.382908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.605938, 30.897781, 39.617130>,  <30.096022, 31.314474, 39.223671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.605938, 30.897781, 39.617130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.664640, 31.281752, 39.712635>,  <30.699862, 31.512133, 39.769939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.664640, 31.281752, 39.712635>,  <30.605938, 30.897781, 39.617130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.664640, 31.281752, 39.712635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020839, -0.244326, 0.969469,
		0.988953, -0.137302, -0.055861,
		0.146758, 0.959923, 0.238766,
		30.708668, 31.569729, 39.784264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.222679, 30.986652, 40.105881>,  <30.605938, 30.897781, 39.617130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.222679, 30.986652, 40.105881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.988653, 31.306694, 40.158844>,  <30.848238, 31.498720, 40.190620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.988653, 31.306694, 40.158844>,  <31.222679, 30.986652, 40.105881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.988653, 31.306694, 40.158844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018525, -0.176408, 0.984143,
		0.810776, 0.573334, 0.118032,
		-0.585064, 0.800106, 0.132406,
		30.813133, 31.546726, 40.198566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.489511, 31.181156, 40.790989>,  <31.222679, 30.986652, 40.105881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.489511, 31.181156, 40.790989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.144201, 31.367224, 40.712627>,  <30.937016, 31.478865, 40.665611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.144201, 31.367224, 40.712627>,  <31.489511, 31.181156, 40.790989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.144201, 31.367224, 40.712627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303011, -0.167225, 0.938201,
		0.403662, 0.869284, 0.285312,
		-0.863274, 0.465169, -0.195900,
		30.885220, 31.506775, 40.653858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.400248, 31.694433, 41.308567>,  <31.489511, 31.181156, 40.790989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.400248, 31.694433, 41.308567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.023235, 31.682810, 41.175426>,  <30.797028, 31.675837, 41.095543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.023235, 31.682810, 41.175426>,  <31.400248, 31.694433, 41.308567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.023235, 31.682810, 41.175426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327545, -0.116247, 0.937657,
		-0.065940, 0.992795, 0.100048,
		-0.942532, -0.029058, -0.332851,
		30.740477, 31.674093, 41.075573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.944750, 32.317837, 41.579815>,  <31.400248, 31.694433, 41.308567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.944750, 32.317837, 41.579815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.679163, 32.050175, 41.446320>,  <30.519810, 31.889578, 41.366222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.679163, 32.050175, 41.446320>,  <30.944750, 32.317837, 41.579815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.679163, 32.050175, 41.446320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437369, -0.014474, 0.899166,
		-0.606509, 0.742984, -0.283056,
		-0.663969, -0.669152, -0.333737,
		30.479973, 31.849428, 41.346199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.385971, 32.651493, 41.636810>,  <30.944750, 32.317837, 41.579815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.385971, 32.651493, 41.636810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.305872, 32.259647, 41.643276>,  <30.257812, 32.024540, 41.647156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.305872, 32.259647, 41.643276>,  <30.385971, 32.651493, 41.636810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.305872, 32.259647, 41.643276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445005, 0.105639, 0.889275,
		-0.872852, 0.170884, -0.457087,
		-0.200249, -0.979612, 0.016163,
		30.245798, 31.965763, 41.648125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.731182, 32.562252, 41.926636>,  <30.385971, 32.651493, 41.636810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.731182, 32.562252, 41.926636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.882492, 32.195084, 41.974525>,  <29.973278, 31.974783, 42.003258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.882492, 32.195084, 41.974525>,  <29.731182, 32.562252, 41.926636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.882492, 32.195084, 41.974525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453872, -0.071189, 0.888219,
		-0.806790, -0.390329, -0.443547,
		0.378273, -0.917919, 0.119724,
		29.995974, 31.919708, 42.010445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.259483, 32.290100, 42.265411>,  <29.731182, 32.562252, 41.926636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.259483, 32.290100, 42.265411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.556189, 32.037842, 42.356686>,  <29.734213, 31.886486, 42.411449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.556189, 32.037842, 42.356686>,  <29.259483, 32.290100, 42.265411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.556189, 32.037842, 42.356686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492337, -0.281011, 0.823794,
		-0.455401, -0.723406, -0.518935,
		0.741764, -0.630648, 0.228187,
		29.778719, 31.848648, 42.425140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.980421, 31.719898, 42.550865>,  <29.259483, 32.290100, 42.265411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.980421, 31.719898, 42.550865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.355967, 31.647366, 42.667931>,  <29.581293, 31.603846, 42.738171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.355967, 31.647366, 42.667931>,  <28.980421, 31.719898, 42.550865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.355967, 31.647366, 42.667931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327228, -0.205710, 0.922283,
		-0.107035, -0.961667, -0.252470,
		0.938864, -0.181332, 0.292666,
		29.637627, 31.592966, 42.755730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.024998, 31.019421, 42.871418>,  <28.980421, 31.719898, 42.550865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.024998, 31.019421, 42.871418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.316116, 31.246462, 43.025375>,  <29.490788, 31.382687, 43.117748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.316116, 31.246462, 43.025375>,  <29.024998, 31.019421, 42.871418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.316116, 31.246462, 43.025375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243907, -0.310303, 0.918815,
		0.640955, -0.762587, -0.087395,
		0.727795, 0.567603, 0.384891,
		29.534454, 31.416742, 43.140842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.177311, 30.680944, 43.480335>,  <29.024998, 31.019421, 42.871418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.177311, 30.680944, 43.480335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.365664, 31.029463, 43.535637>,  <29.478676, 31.238573, 43.568817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.365664, 31.029463, 43.535637>,  <29.177311, 30.680944, 43.480335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.365664, 31.029463, 43.535637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150598, -0.075025, 0.985744,
		0.869248, -0.484989, 0.095887,
		0.470881, 0.871296, 0.138253,
		29.506927, 31.290852, 43.577114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.722256, 30.598944, 43.978058>,  <29.177311, 30.680944, 43.480335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.722256, 30.598944, 43.978058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.592232, 30.977148, 43.985458>,  <29.514217, 31.204071, 43.989899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.592232, 30.977148, 43.985458>,  <29.722256, 30.598944, 43.978058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.592232, 30.977148, 43.985458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050929, -0.037042, 0.998015,
		0.944321, 0.323471, 0.060195,
		-0.325059, 0.945513, 0.018506,
		29.494715, 31.260801, 43.991009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.129873, 30.858919, 44.453506>,  <29.722256, 30.598944, 43.978058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.129873, 30.858919, 44.453506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.859434, 31.153290, 44.439049>,  <29.697170, 31.329912, 44.430374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.859434, 31.153290, 44.439049>,  <30.129873, 30.858919, 44.453506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.859434, 31.153290, 44.439049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029017, 0.075613, 0.996715,
		0.736241, 0.672827, -0.072476,
		-0.676097, 0.735926, -0.036146,
		29.656605, 31.374067, 44.428204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.254347, 31.470400, 44.892445>,  <30.129873, 30.858919, 44.453506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.254347, 31.470400, 44.892445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.860704, 31.516172, 44.838120>,  <29.624519, 31.543636, 44.805523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.860704, 31.516172, 44.838120>,  <30.254347, 31.470400, 44.892445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.860704, 31.516172, 44.838120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112260, 0.191743, 0.975004,
		0.137610, 0.974751, -0.175850,
		-0.984104, 0.114429, -0.135811,
		29.565474, 31.550501, 44.797375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.897795, 31.941959, 45.044182>,  <30.254347, 31.470400, 44.892445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.897795, 31.941959, 45.044182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.252834, 31.895014, 45.222347>,  <31.465858, 31.866846, 45.329247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.252834, 31.895014, 45.222347>,  <30.897795, 31.941959, 45.044182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.252834, 31.895014, 45.222347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453013, 0.047489, -0.890238,
		0.083331, 0.991953, 0.095319,
		0.887601, -0.117366, 0.445410,
		31.519115, 31.859804, 45.355968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.434359, 32.435837, 44.794617>,  <30.897795, 31.941959, 45.044182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.434359, 32.435837, 44.794617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.652788, 32.135906, 44.944046>,  <31.783846, 31.955948, 45.033703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.652788, 32.135906, 44.944046>,  <31.434359, 32.435837, 44.794617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.652788, 32.135906, 44.944046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543960, -0.021767, -0.838829,
		0.637111, 0.661272, 0.395992,
		0.546075, -0.749830, 0.373573,
		31.816610, 31.910957, 45.056118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.135403, 32.646553, 44.661263>,  <31.434359, 32.435837, 44.794617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.135403, 32.646553, 44.661263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.153160, 32.253197, 44.731667>,  <32.163815, 32.017185, 44.773911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.153160, 32.253197, 44.731667>,  <32.135403, 32.646553, 44.661263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.153160, 32.253197, 44.731667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812009, -0.067118, -0.579772,
		0.581954, 0.168659, 0.795540,
		0.044389, -0.983387, 0.176012,
		32.166477, 31.958181, 44.784470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.871162, 32.572578, 44.725655>,  <32.135403, 32.646553, 44.661263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.871162, 32.572578, 44.725655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.702488, 32.223030, 44.628887>,  <32.601284, 32.013302, 44.570827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.702488, 32.223030, 44.628887>,  <32.871162, 32.572578, 44.725655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.702488, 32.223030, 44.628887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691357, -0.137240, -0.709359,
		0.586688, -0.466383, 0.662030,
		-0.421690, -0.873872, -0.241920,
		32.575981, 31.960869, 44.556313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.371292, 31.963295, 44.750546>,  <32.871162, 32.572578, 44.725655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.371292, 31.963295, 44.750546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.074787, 31.885914, 44.493450>,  <32.896885, 31.839485, 44.339195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.074787, 31.885914, 44.493450>,  <33.371292, 31.963295, 44.750546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.074787, 31.885914, 44.493450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670936, -0.185741, -0.717875,
		0.019495, -0.963367, 0.267479,
		-0.741259, -0.193456, -0.642736,
		32.852409, 31.827877, 44.300629>
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
