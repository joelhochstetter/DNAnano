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
	<3.350789, 1.639598, 0.383989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.373085, 2.022583, 0.497238>,  <3.386463, 2.252374, 0.565188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.373085, 2.022583, 0.497238>,  <3.350789, 1.639598, 0.383989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.373085, 2.022583, 0.497238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867926, -0.186638, 0.460294,
		0.493556, 0.220073, -0.841410,
		0.055741, 0.957462, 0.283123,
		3.389807, 2.309822, 0.582175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.033593, 1.934745, 0.063576>,  <3.350789, 1.639598, 0.383989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.033593, 1.934745, 0.063576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.896992, 2.073441, 0.413010>,  <3.815031, 2.156658, 0.622670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.896992, 2.073441, 0.413010>,  <4.033593, 1.934745, 0.063576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.896992, 2.073441, 0.413010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774077, -0.423414, 0.470664,
		0.533085, 0.836955, -0.123804,
		-0.341504, 0.346738, 0.873583,
		3.794540, 2.177462, 0.675085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.421849, 2.514203, 0.369529>,  <4.033593, 1.934745, 0.063576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.421849, 2.514203, 0.369529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.257458, 2.246185, 0.616798>,  <4.158823, 2.085375, 0.765160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.257458, 2.246185, 0.616798>,  <4.421849, 2.514203, 0.369529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.257458, 2.246185, 0.616798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887665, -0.139612, 0.438815,
		-0.207722, 0.729074, 0.652152,
		-0.410977, -0.670044, 0.618173,
		4.134165, 2.045172, 0.802250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.606506, 2.579401, 1.085506>,  <4.421849, 2.514203, 0.369529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.606506, 2.579401, 1.085506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.525154, 2.189743, 1.046150>,  <4.476343, 1.955949, 1.022537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.525154, 2.189743, 1.046150>,  <4.606506, 2.579401, 1.085506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.525154, 2.189743, 1.046150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699509, -0.214880, 0.681552,
		-0.685072, 0.069790, 0.725125,
		-0.203381, -0.974144, -0.098390,
		4.464140, 1.897500, 1.016633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.558222, 2.211166, 1.717926>,  <4.606506, 2.579401, 1.085506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.558222, 2.211166, 1.717926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.622005, 1.904587, 1.469048>,  <4.660275, 1.720639, 1.319720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.622005, 1.904587, 1.469048>,  <4.558222, 2.211166, 1.717926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.622005, 1.904587, 1.469048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635692, -0.402483, 0.658713,
		-0.755294, -0.500563, 0.423046,
		0.159459, -0.766449, -0.622196,
		4.669843, 1.674652, 1.282389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.423493, 1.611878, 2.119135>,  <4.558222, 2.211166, 1.717926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.423493, 1.611878, 2.119135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.666645, 1.518478, 1.815567>,  <4.812536, 1.462439, 1.633426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.666645, 1.518478, 1.815567>,  <4.423493, 1.611878, 2.119135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.666645, 1.518478, 1.815567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658045, -0.386742, 0.646071,
		-0.444364, -0.892137, -0.081439,
		0.607880, -0.233500, -0.758921,
		4.849009, 1.448429, 1.587891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.515779, 0.837515, 2.100080>,  <4.423493, 1.611878, 2.119135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.515779, 0.837515, 2.100080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.816097, 1.009125, 1.899185>,  <4.996289, 1.112091, 1.778649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.816097, 1.009125, 1.899185>,  <4.515779, 0.837515, 2.100080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.816097, 1.009125, 1.899185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660156, -0.513044, 0.548617,
		-0.022298, -0.743454, -0.668416,
		0.750797, 0.429025, -0.502236,
		5.041337, 1.137832, 1.748514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.892369, 0.299282, 1.975697>,  <4.515779, 0.837515, 2.100080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.892369, 0.299282, 1.975697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.125126, 0.620483, 1.924179>,  <5.264780, 0.813204, 1.893268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.125126, 0.620483, 1.924179>,  <4.892369, 0.299282, 1.975697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.125126, 0.620483, 1.924179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733075, -0.449323, 0.510597,
		0.352141, -0.391528, -0.850119,
		0.581891, 0.803004, -0.128794,
		5.299693, 0.861385, 1.885541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.303876, -0.144217, 2.777794> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.463766, 0.218994, 2.827927>,  <1.559699, 0.436921, 2.858006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.463766, 0.218994, 2.827927>,  <1.303876, -0.144217, 2.777794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.463766, 0.218994, 2.827927> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702905, 0.391402, -0.593911,
		-0.588342, 0.149304, 0.794709,
		0.399724, 0.908027, 0.125332,
		1.583683, 0.491402, 2.865526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.769533, 0.322902, 2.848945>,  <1.303876, -0.144217, 2.777794>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.769533, 0.322902, 2.848945> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.079381, 0.522018, 2.692909>,  <1.265290, 0.641488, 2.599288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.079381, 0.522018, 2.692909>,  <0.769533, 0.322902, 2.848945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.079381, 0.522018, 2.692909> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569700, 0.281415, -0.772170,
		-0.274602, 0.820372, 0.501581,
		0.774619, 0.497791, -0.390089,
		1.311767, 0.671356, 2.575882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.691307, 1.078832, 2.863706>,  <0.769533, 0.322902, 2.848945>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.691307, 1.078832, 2.863706> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.934485, 0.959549, 2.569366>,  <1.080393, 0.887979, 2.392763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.934485, 0.959549, 2.569366>,  <0.691307, 1.078832, 2.863706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.934485, 0.959549, 2.569366> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664930, 0.315256, -0.677113,
		0.433900, 0.900937, -0.006627,
		0.607947, -0.298206, -0.735849,
		1.116869, 0.870087, 2.348612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.814183, 1.692528, 2.352120>,  <0.691307, 1.078832, 2.863706>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.814183, 1.692528, 2.352120> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.832696, 1.325348, 2.194527>,  <0.843804, 1.105040, 2.099970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.832696, 1.325348, 2.194527>,  <0.814183, 1.692528, 2.352120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.832696, 1.325348, 2.194527> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606718, 0.287493, -0.741108,
		0.793568, 0.273338, -0.543632,
		0.046282, -0.917951, -0.393985,
		0.846581, 1.049963, 2.076331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.108881, 1.775887, 1.662660>,  <0.814183, 1.692528, 2.352120>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.108881, 1.775887, 1.662660> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.857176, 1.469147, 1.713203>,  <0.706152, 1.285102, 1.743529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.857176, 1.469147, 1.713203>,  <1.108881, 1.775887, 1.662660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.857176, 1.469147, 1.713203> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603033, 0.379195, -0.701827,
		0.490284, -0.517832, -0.701051,
		-0.629263, -0.766852, 0.126357,
		0.668397, 1.239092, 1.751111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.974974, 1.483722, 0.941655>,  <1.108881, 1.775887, 1.662660>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.974974, 1.483722, 0.941655> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.684659, 1.385391, 1.198654>,  <0.510470, 1.326393, 1.352853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.684659, 1.385391, 1.198654>,  <0.974974, 1.483722, 0.941655>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.684659, 1.385391, 1.198654> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687589, 0.288168, -0.666468,
		-0.021313, -0.925489, -0.378176,
		-0.725787, -0.245825, 0.642498,
		0.466923, 1.311643, 1.391403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.568757, 1.109920, 0.567255>,  <0.974974, 1.483722, 0.941655>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.568757, 1.109920, 0.567255> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.325274, 1.174118, 0.878052>,  <0.179185, 1.212637, 1.064530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.325274, 1.174118, 0.878052>,  <0.568757, 1.109920, 0.567255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.325274, 1.174118, 0.878052> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774013, 0.095019, -0.625999,
		-0.174299, -0.982452, 0.066387,
		-0.608706, 0.160495, 0.776992,
		0.142662, 1.222267, 1.111150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.046727, 0.768313, 0.418308>,  <0.568757, 1.109920, 0.567255>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.046727, 0.768313, 0.418308> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.143656, 1.041763, 0.693680>,  <-0.201814, 1.205833, 0.858903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.143656, 1.041763, 0.693680>,  <-0.046727, 0.768313, 0.418308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.143656, 1.041763, 0.693680> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749525, 0.318640, -0.580243,
		-0.616030, -0.656601, 0.435180,
		-0.242322, 0.683625, 0.688431,
		-0.216353, 1.246851, 0.900209>
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
