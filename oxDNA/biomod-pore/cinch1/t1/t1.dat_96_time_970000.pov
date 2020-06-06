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
	right 1.6 * <0.581683, 0, 0.813415>
	location <-54.4937, 30, 90.4225>
	look_at <30, 30, 30>
	direction <84.4937, 0, -60.4225>
	angle 67.0682
}


# declare cpy_camera_pos = <-54.4937, 30, 90.4225>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 48
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <0.231732, -1, 1.3951>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <-0.231732, 1, -1.3951>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<43.154510, 32.466373, 23.104729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.935333, 32.795094, 23.167206>,  <42.803825, 32.992325, 23.204693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.935333, 32.795094, 23.167206>,  <43.154510, 32.466373, 23.104729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.935333, 32.795094, 23.167206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768842, -0.421186, -0.481129,
		-0.329605, -0.383722, 0.862623,
		-0.547945, 0.821803, 0.156196,
		42.770950, 33.041634, 23.214064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.553989, 32.253929, 23.335863>,  <43.154510, 32.466373, 23.104729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.553989, 32.253929, 23.335863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.505898, 32.605770, 23.151760>,  <42.477043, 32.816875, 23.041298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.505898, 32.605770, 23.151760>,  <42.553989, 32.253929, 23.335863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.505898, 32.605770, 23.151760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628171, -0.426413, -0.650824,
		-0.768729, 0.210871, 0.603812,
		-0.120234, 0.879605, -0.460260,
		42.469826, 32.869652, 23.013681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.818348, 32.547276, 23.320133>,  <42.553989, 32.253929, 23.335863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.818348, 32.547276, 23.320133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.029510, 32.642010, 22.993889>,  <42.156208, 32.698849, 22.798141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.029510, 32.642010, 22.993889>,  <41.818348, 32.547276, 23.320133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.029510, 32.642010, 22.993889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601339, -0.573930, -0.555874,
		-0.599753, 0.783910, -0.160567,
		0.527909, 0.236832, -0.815612,
		42.187881, 32.713058, 22.749205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.355923, 32.954445, 22.919327>,  <41.818348, 32.547276, 23.320133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.355923, 32.954445, 22.919327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.630047, 32.726360, 22.738125>,  <41.794521, 32.589512, 22.629404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.630047, 32.726360, 22.738125>,  <41.355923, 32.954445, 22.919327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.630047, 32.726360, 22.738125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727957, -0.518660, -0.448409,
		0.020731, 0.637067, -0.770529,
		0.685309, -0.570208, -0.453006,
		41.835640, 32.555298, 22.602222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.290878, 32.913162, 22.182373>,  <41.355923, 32.954445, 22.919327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.290878, 32.913162, 22.182373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.458176, 32.568886, 22.298504>,  <41.558556, 32.362320, 22.368183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.458176, 32.568886, 22.298504>,  <41.290878, 32.913162, 22.182373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.458176, 32.568886, 22.298504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678536, -0.508536, -0.530076,
		0.603871, 0.024703, -0.796699,
		0.418244, -0.860686, 0.290328,
		41.583649, 32.310680, 22.385603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.971489, 33.085629, 21.527567>,  <41.290878, 32.913162, 22.182373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.971489, 33.085629, 21.527567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.619759, 33.268894, 21.579517>,  <40.408718, 33.378853, 21.610687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.619759, 33.268894, 21.579517>,  <40.971489, 33.085629, 21.527567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.619759, 33.268894, 21.579517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448605, 0.888461, -0.096902,
		-0.159788, -0.026946, -0.986784,
		-0.879330, 0.458160, 0.129878,
		40.355961, 33.406342, 21.618481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.953823, 33.555767, 21.040361>,  <40.971489, 33.085629, 21.527567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.953823, 33.555767, 21.040361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.705177, 33.678555, 21.328629>,  <40.555988, 33.752228, 21.501589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.705177, 33.678555, 21.328629>,  <40.953823, 33.555767, 21.040361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.705177, 33.678555, 21.328629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402000, 0.914637, -0.042839,
		-0.672300, 0.263079, -0.691955,
		-0.621618, 0.306966, 0.720668,
		40.518692, 33.770645, 21.544828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.642982, 34.237324, 20.778467>,  <40.953823, 33.555767, 21.040361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.642982, 34.237324, 20.778467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.574249, 34.235992, 21.172516>,  <40.533009, 34.235191, 21.408945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.574249, 34.235992, 21.172516>,  <40.642982, 34.237324, 20.778467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.574249, 34.235992, 21.172516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228400, 0.972612, 0.043129,
		-0.958284, 0.232412, -0.166364,
		-0.171831, -0.003332, 0.985121,
		40.522701, 34.234993, 21.468052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.277218, 34.839283, 20.825712>,  <40.642982, 34.237324, 20.778467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.277218, 34.839283, 20.825712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.393471, 34.724285, 21.190762>,  <40.463223, 34.655289, 21.409792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.393471, 34.724285, 21.190762>,  <40.277218, 34.839283, 20.825712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.393471, 34.724285, 21.190762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254782, 0.942611, 0.215801,
		-0.922291, 0.169802, 0.347199,
		0.290631, -0.287491, 0.912624,
		40.480659, 34.638039, 21.464548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.986073, 35.270943, 21.215816>,  <40.277218, 34.839283, 20.825712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.986073, 35.270943, 21.215816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.273739, 35.120136, 21.449280>,  <40.446339, 35.029652, 21.589357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.273739, 35.120136, 21.449280>,  <39.986073, 35.270943, 21.215816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.273739, 35.120136, 21.449280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303302, 0.926075, 0.224484,
		-0.625145, 0.015583, 0.780353,
		0.719167, -0.377018, 0.583658,
		40.489491, 35.007030, 21.624376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.970497, 35.660675, 21.781506>,  <39.986073, 35.270943, 21.215816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.970497, 35.660675, 21.781506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.336357, 35.500134, 21.800846>,  <40.555874, 35.403809, 21.812450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.336357, 35.500134, 21.800846>,  <39.970497, 35.660675, 21.781506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.336357, 35.500134, 21.800846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354396, 0.853624, 0.381744,
		-0.194487, -0.332026, 0.923002,
		0.914647, -0.401352, 0.048350,
		40.610752, 35.379726, 21.815351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.151440, 35.963821, 22.385330>,  <39.970497, 35.660675, 21.781506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.151440, 35.963821, 22.385330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.487900, 35.860615, 22.195217>,  <40.689777, 35.798691, 22.081148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.487900, 35.860615, 22.195217>,  <40.151440, 35.963821, 22.385330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.487900, 35.860615, 22.195217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444617, 0.830248, 0.336161,
		0.307869, -0.494081, 0.813081,
		0.841149, -0.258016, -0.475285,
		40.740246, 35.783211, 22.052631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.677868, 36.084625, 22.913677>,  <40.151440, 35.963821, 22.385330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.677868, 36.084625, 22.913677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.857582, 36.093903, 22.556442>,  <40.965412, 36.099468, 22.342102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.857582, 36.093903, 22.556442>,  <40.677868, 36.084625, 22.913677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.857582, 36.093903, 22.556442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640616, 0.688409, 0.340152,
		0.622696, -0.724952, 0.294440,
		0.449289, 0.023188, -0.893085,
		40.992371, 36.100861, 22.288517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.310463, 36.258377, 23.167322>,  <40.677868, 36.084625, 22.913677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.310463, 36.258377, 23.167322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.303715, 36.300465, 22.769600>,  <41.299664, 36.325718, 22.530966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.303715, 36.300465, 22.769600>,  <41.310463, 36.258377, 23.167322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.303715, 36.300465, 22.769600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644405, 0.761506, 0.069644,
		0.764498, -0.639561, -0.080651,
		-0.016875, 0.105214, -0.994306,
		41.298653, 36.332027, 22.471308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.033905, 36.416199, 22.966290>,  <41.310463, 36.258377, 23.167322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.033905, 36.416199, 22.966290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.795448, 36.529324, 22.665722>,  <41.652374, 36.597198, 22.485382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.795448, 36.529324, 22.665722>,  <42.033905, 36.416199, 22.966290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.795448, 36.529324, 22.665722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443730, 0.896038, -0.014789,
		0.669117, -0.342243, -0.659660,
		-0.596142, 0.282816, -0.751419,
		41.616608, 36.614170, 22.440296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.447475, 36.749405, 22.430170>,  <42.033905, 36.416199, 22.966290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.447475, 36.749405, 22.430170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.077400, 36.892262, 22.378822>,  <41.855354, 36.977974, 22.348015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.077400, 36.892262, 22.378822>,  <42.447475, 36.749405, 22.430170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.077400, 36.892262, 22.378822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367292, 0.927758, -0.066040,
		0.095509, -0.108248, -0.989525,
		-0.925189, 0.357138, -0.128368,
		41.799843, 36.999401, 22.340311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.489605, 37.247459, 21.873070>,  <42.447475, 36.749405, 22.430170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.489605, 37.247459, 21.873070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.163498, 37.330601, 22.089268>,  <41.967834, 37.380486, 22.218987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.163498, 37.330601, 22.089268>,  <42.489605, 37.247459, 21.873070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.163498, 37.330601, 22.089268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141575, 0.976580, -0.162013,
		-0.561510, -0.055564, -0.825602,
		-0.815269, 0.207856, 0.540493,
		41.918919, 37.392956, 22.251415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.161659, 37.779076, 21.586308>,  <42.489605, 37.247459, 21.873070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.161659, 37.779076, 21.586308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.971066, 37.833019, 21.933819>,  <41.856709, 37.865383, 22.142324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.971066, 37.833019, 21.933819>,  <42.161659, 37.779076, 21.586308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.971066, 37.833019, 21.933819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219273, 0.975167, -0.031110,
		-0.851398, 0.175676, -0.494226,
		-0.476488, 0.134857, 0.868777,
		41.828117, 37.873478, 22.194452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.738941, 38.402672, 21.577663>,  <42.161659, 37.779076, 21.586308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.738941, 38.402672, 21.577663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.735615, 38.324596, 21.969955>,  <41.733620, 38.277752, 22.205330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.735615, 38.324596, 21.969955>,  <41.738941, 38.402672, 21.577663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.735615, 38.324596, 21.969955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015588, 0.980670, 0.195045,
		-0.999844, -0.013666, -0.011197,
		-0.008315, -0.195189, 0.980731,
		41.733120, 38.266041, 22.264175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.203671, 38.764942, 21.901762>,  <41.738941, 38.402672, 21.577663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.203671, 38.764942, 21.901762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.454060, 38.681412, 22.202309>,  <41.604294, 38.631294, 22.382637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.454060, 38.681412, 22.202309>,  <41.203671, 38.764942, 21.901762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.454060, 38.681412, 22.202309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049818, 0.972221, 0.228703,
		-0.778253, -0.105730, 0.618985,
		0.625971, -0.208826, 0.751367,
		41.641850, 38.618763, 22.427719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.952599, 39.009243, 22.485178>,  <41.203671, 38.764942, 21.901762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.952599, 39.009243, 22.485178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.330143, 38.978226, 22.613621>,  <41.556671, 38.959614, 22.690687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.330143, 38.978226, 22.613621>,  <40.952599, 39.009243, 22.485178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.330143, 38.978226, 22.613621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039843, 0.938238, 0.343688,
		-0.327928, -0.337188, 0.882478,
		0.943862, -0.077544, 0.321109,
		41.613300, 38.954964, 22.709953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.962418, 39.312431, 23.167782>,  <40.952599, 39.009243, 22.485178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.962418, 39.312431, 23.167782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.342941, 39.328499, 23.045544>,  <41.571259, 39.338139, 22.972200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.342941, 39.328499, 23.045544>,  <40.962418, 39.312431, 23.167782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.342941, 39.328499, 23.045544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102294, 0.894126, 0.435975,
		0.290754, -0.446009, 0.846486,
		0.951314, 0.040171, -0.305594,
		41.628334, 39.340549, 22.953865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.351616, 39.386055, 23.716320>,  <40.962418, 39.312431, 23.167782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.351616, 39.386055, 23.716320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.597729, 39.518616, 23.430214>,  <41.745396, 39.598152, 23.258551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.597729, 39.518616, 23.430214>,  <41.351616, 39.386055, 23.716320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.597729, 39.518616, 23.430214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250320, 0.778247, 0.575910,
		0.747505, -0.533393, 0.395888,
		0.615285, 0.331397, -0.715263,
		41.782314, 39.618034, 23.215635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.842915, 39.743889, 24.063660>,  <41.351616, 39.386055, 23.716320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.842915, 39.743889, 24.063660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.866917, 39.874603, 23.686382>,  <41.881317, 39.953033, 23.460016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.866917, 39.874603, 23.686382>,  <41.842915, 39.743889, 24.063660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.866917, 39.874603, 23.686382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244225, 0.911371, 0.331297,
		0.967860, -0.250231, -0.025122,
		0.060006, 0.326785, -0.943192,
		41.884918, 39.972637, 23.403425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.517258, 40.014034, 24.172565>,  <41.842915, 39.743889, 24.063660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.517258, 40.014034, 24.172565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.369381, 40.152729, 23.827751>,  <42.280655, 40.235947, 23.620863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.369381, 40.152729, 23.827751>,  <42.517258, 40.014034, 24.172565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.369381, 40.152729, 23.827751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074779, 0.935856, 0.344358,
		0.926139, 0.062845, -0.371909,
		-0.369694, 0.346734, -0.862033,
		42.258472, 40.256748, 23.569141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.858540, 40.681263, 23.951057>,  <42.517258, 40.014034, 24.172565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.858540, 40.681263, 23.951057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.496204, 40.707752, 23.783695>,  <42.278801, 40.723644, 23.683277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.496204, 40.707752, 23.783695>,  <42.858540, 40.681263, 23.951057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.496204, 40.707752, 23.783695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047435, 0.965636, 0.255531,
		0.420952, 0.251318, -0.871573,
		-0.905842, 0.066223, -0.418408,
		42.224453, 40.727619, 23.658173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.796543, 41.353611, 23.534803>,  <42.858540, 40.681263, 23.951057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.796543, 41.353611, 23.534803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.430454, 41.274334, 23.675137>,  <42.210800, 41.226768, 23.759336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.430454, 41.274334, 23.675137>,  <42.796543, 41.353611, 23.534803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.430454, 41.274334, 23.675137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186265, 0.980157, 0.067800,
		-0.357309, -0.003295, -0.933981,
		-0.915225, -0.198194, 0.350832,
		42.155888, 41.214874, 23.780386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.577019, 41.963661, 23.304760>,  <42.796543, 41.353611, 23.534803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.577019, 41.963661, 23.304760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.335094, 41.786522, 23.569515>,  <42.189941, 41.680241, 23.728369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.335094, 41.786522, 23.569515>,  <42.577019, 41.963661, 23.304760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.335094, 41.786522, 23.569515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299499, 0.896598, 0.326210,
		-0.737907, -0.000941, -0.674901,
		-0.604808, -0.442845, 0.661888,
		42.153652, 41.653667, 23.768082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.935314, 42.358860, 23.357569>,  <42.577019, 41.963661, 23.304760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.935314, 42.358860, 23.357569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.941578, 42.155186, 23.701775>,  <41.945335, 42.032982, 23.908298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.941578, 42.155186, 23.701775>,  <41.935314, 42.358860, 23.357569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.941578, 42.155186, 23.701775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441025, 0.768862, 0.462977,
		-0.897358, -0.386759, -0.212523,
		0.015659, -0.509184, 0.860515,
		41.946274, 42.002430, 23.959929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.269585, 42.405224, 23.575203>,  <41.935314, 42.358860, 23.357569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.269585, 42.405224, 23.575203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.501122, 42.362541, 23.898575>,  <41.640041, 42.336933, 24.092598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.501122, 42.362541, 23.898575>,  <41.269585, 42.405224, 23.575203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.501122, 42.362541, 23.898575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496040, 0.740798, 0.452949,
		-0.647216, -0.663198, 0.375872,
		0.578840, -0.106708, 0.808429,
		41.674774, 42.330528, 24.141104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.864216, 42.307438, 24.150179>,  <41.269585, 42.405224, 23.575203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.864216, 42.307438, 24.150179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.213692, 42.474174, 24.250511>,  <41.423378, 42.574215, 24.310711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.213692, 42.474174, 24.250511>,  <40.864216, 42.307438, 24.150179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.213692, 42.474174, 24.250511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486257, 0.764118, 0.423884,
		-0.014974, -0.492311, 0.870291,
		0.873688, 0.416838, 0.250832,
		41.475800, 42.599224, 24.325760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.299843, 42.389984, 24.452217>,  <40.864216, 42.307438, 24.150179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.299843, 42.389984, 24.452217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.153873, 42.653915, 24.714958>,  <40.066292, 42.812275, 24.872602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.153873, 42.653915, 24.714958>,  <40.299843, 42.389984, 24.452217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.153873, 42.653915, 24.714958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816755, -0.565542, 0.114345,
		0.446925, -0.494759, 0.745300,
		-0.364925, 0.659831, 0.656850,
		40.044395, 42.851864, 24.912014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.087212, 41.996201, 25.087994>,  <40.299843, 42.389984, 24.452217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.087212, 41.996201, 25.087994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.865295, 42.317669, 25.001907>,  <39.732147, 42.510551, 24.950256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.865295, 42.317669, 25.001907>,  <40.087212, 41.996201, 25.087994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.865295, 42.317669, 25.001907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830539, -0.550247, 0.086219,
		-0.049129, 0.226577, 0.972753,
		-0.554790, 0.803674, -0.215214,
		39.698860, 42.558769, 24.937344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.588512, 42.189178, 25.626493>,  <40.087212, 41.996201, 25.087994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.588512, 42.189178, 25.626493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.473568, 42.280701, 25.254456>,  <39.404602, 42.335613, 25.031233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.473568, 42.280701, 25.254456>,  <39.588512, 42.189178, 25.626493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.473568, 42.280701, 25.254456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789922, -0.605800, 0.095020,
		-0.541709, 0.762006, 0.354822,
		-0.287357, 0.228808, -0.930093,
		39.387360, 42.349342, 24.975428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.842640, 42.379986, 25.487648>,  <39.588512, 42.189178, 25.626493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.842640, 42.379986, 25.487648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.013153, 42.222046, 25.162102>,  <39.115463, 42.127281, 24.966774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.013153, 42.222046, 25.162102>,  <38.842640, 42.379986, 25.487648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.013153, 42.222046, 25.162102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727383, -0.684486, -0.048912,
		-0.537767, 0.612842, -0.578992,
		0.426287, -0.394846, -0.813865,
		39.141041, 42.103592, 24.917942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.364685, 42.169529, 24.915823>,  <38.842640, 42.379986, 25.487648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.364685, 42.169529, 24.915823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.691601, 41.948074, 24.851925>,  <38.887753, 41.815201, 24.813585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.691601, 41.948074, 24.851925>,  <38.364685, 42.169529, 24.915823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.691601, 41.948074, 24.851925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576223, -0.784525, -0.229100,
		0.001514, 0.279292, -0.960205,
		0.817291, -0.553639, -0.159747,
		38.936787, 41.781982, 24.804001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.252338, 41.651054, 24.235161>,  <38.364685, 42.169529, 24.915823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.252338, 41.651054, 24.235161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.523338, 41.535175, 24.505589>,  <38.685940, 41.465649, 24.667845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.523338, 41.535175, 24.505589>,  <38.252338, 41.651054, 24.235161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.523338, 41.535175, 24.505589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266525, -0.953393, -0.141441,
		0.685536, -0.084363, -0.723135,
		0.677499, -0.289696, 0.676070,
		38.726589, 41.448265, 24.708410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.790131, 41.076153, 23.928526>,  <38.252338, 41.651054, 24.235161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.790131, 41.076153, 23.928526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.752735, 41.062027, 24.326523>,  <38.730297, 41.053551, 24.565321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.752735, 41.062027, 24.326523>,  <38.790131, 41.076153, 23.928526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.752735, 41.062027, 24.326523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091072, -0.994878, -0.043870,
		0.991447, -0.094717, 0.089792,
		-0.093488, -0.035317, 0.994994,
		38.724689, 41.051434, 24.625021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.194126, 40.521679, 24.019938>,  <38.790131, 41.076153, 23.928526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.194126, 40.521679, 24.019938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.994354, 40.549858, 24.365330>,  <38.874489, 40.566765, 24.572565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.994354, 40.549858, 24.365330>,  <39.194126, 40.521679, 24.019938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.994354, 40.549858, 24.365330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119395, -0.992775, 0.011942,
		0.858085, -0.097131, 0.504237,
		-0.499434, 0.070450, 0.863483,
		38.844524, 40.570992, 24.624374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.401432, 39.968822, 24.377012>,  <39.194126, 40.521679, 24.019938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.401432, 39.968822, 24.377012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.056507, 40.061974, 24.556870>,  <38.849552, 40.117863, 24.664783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.056507, 40.061974, 24.556870>,  <39.401432, 39.968822, 24.377012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.056507, 40.061974, 24.556870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302890, -0.948817, -0.089465,
		0.405796, -0.213340, 0.888716,
		-0.862316, 0.232878, 0.449644,
		38.797813, 40.131836, 24.691763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.352093, 39.463604, 24.790178>,  <39.401432, 39.968822, 24.377012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.352093, 39.463604, 24.790178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.982571, 39.616577, 24.782898>,  <38.760857, 39.708363, 24.778530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.982571, 39.616577, 24.782898>,  <39.352093, 39.463604, 24.790178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.982571, 39.616577, 24.782898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382247, -0.923967, -0.013089,
		-0.021823, -0.005134, 0.999749,
		-0.923802, 0.382437, -0.018201,
		38.705429, 39.731308, 24.777437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.969032, 39.074852, 25.241877>,  <39.352093, 39.463604, 24.790178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.969032, 39.074852, 25.241877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.672440, 39.217197, 25.014347>,  <38.494484, 39.302605, 24.877829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.672440, 39.217197, 25.014347>,  <38.969032, 39.074852, 25.241877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.672440, 39.217197, 25.014347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479420, -0.874104, 0.078088,
		-0.469423, 0.330607, 0.818743,
		-0.741484, 0.355866, -0.568825,
		38.449993, 39.323956, 24.843700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.386322, 38.819550, 25.560284>,  <38.969032, 39.074852, 25.241877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.386322, 38.819550, 25.560284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.282623, 38.922161, 25.187836>,  <38.220406, 38.983730, 24.964367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.282623, 38.922161, 25.187836>,  <38.386322, 38.819550, 25.560284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.282623, 38.922161, 25.187836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422316, -0.897138, -0.129590,
		-0.868586, 0.359631, 0.340916,
		-0.259244, 0.256534, -0.931119,
		38.204849, 38.999123, 24.908501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.644073, 38.527096, 25.457598>,  <38.386322, 38.819550, 25.560284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.644073, 38.527096, 25.457598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.789551, 38.598064, 25.091812>,  <37.876839, 38.640644, 24.872341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.789551, 38.598064, 25.091812>,  <37.644073, 38.527096, 25.457598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.789551, 38.598064, 25.091812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485569, -0.801663, -0.348654,
		-0.794951, 0.570840, -0.205412,
		0.363697, 0.177422, -0.914465,
		37.898659, 38.651291, 24.817472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.161457, 38.296093, 24.959295>,  <37.644073, 38.527096, 25.457598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.161457, 38.296093, 24.959295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.484459, 38.301311, 24.723408>,  <37.678261, 38.304443, 24.581875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.484459, 38.301311, 24.723408>,  <37.161457, 38.296093, 24.959295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.484459, 38.301311, 24.723408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331857, -0.816479, -0.472475,
		-0.487658, 0.577227, -0.654979,
		0.807502, 0.013046, -0.589720,
		37.726711, 38.305225, 24.546492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.936687, 38.265991, 24.284683>,  <37.161457, 38.296093, 24.959295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.936687, 38.265991, 24.284683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.308971, 38.120247, 24.271862>,  <37.532341, 38.032799, 24.264170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.308971, 38.120247, 24.271862>,  <36.936687, 38.265991, 24.284683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.308971, 38.120247, 24.271862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328322, -0.793587, -0.512274,
		0.161215, 0.487301, -0.858224,
		0.930706, -0.364360, -0.032053,
		37.588184, 38.010941, 24.262245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.011772, 37.929497, 23.683331>,  <36.936687, 38.265991, 24.284683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.011772, 37.929497, 23.683331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.347755, 37.790001, 23.849628>,  <37.549347, 37.706303, 23.949408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.347755, 37.790001, 23.849628>,  <37.011772, 37.929497, 23.683331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.347755, 37.790001, 23.849628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050576, -0.813121, -0.579894,
		0.540284, 0.466062, -0.700628,
		0.839962, -0.348742, 0.415744,
		37.599743, 37.685379, 23.974352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.610306, 37.787075, 23.141888>,  <37.011772, 37.929497, 23.683331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.610306, 37.787075, 23.141888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.680294, 37.554214, 23.459499>,  <37.722286, 37.414497, 23.650066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.680294, 37.554214, 23.459499>,  <37.610306, 37.787075, 23.141888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.680294, 37.554214, 23.459499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027021, -0.809005, -0.587181,
		0.984203, 0.081282, -0.157280,
		0.174968, -0.582155, 0.794029,
		37.732784, 37.379566, 23.697708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.014942, 37.343998, 22.892447>,  <37.610306, 37.787075, 23.141888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.014942, 37.343998, 22.892447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.891663, 37.179420, 23.235546>,  <37.817696, 37.080673, 23.441406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.891663, 37.179420, 23.235546>,  <38.014942, 37.343998, 22.892447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.891663, 37.179420, 23.235546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096229, -0.883530, -0.458382,
		0.946444, -0.223811, 0.232707,
		-0.308195, -0.411440, 0.857749,
		37.799206, 37.055988, 23.492870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.539459, 36.924652, 23.155985>,  <38.014942, 37.343998, 22.892447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.539459, 36.924652, 23.155985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.218086, 36.767086, 23.334568>,  <38.025261, 36.672546, 23.441717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.218086, 36.767086, 23.334568>,  <38.539459, 36.924652, 23.155985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.218086, 36.767086, 23.334568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088366, -0.820440, -0.564863,
		0.588798, -0.414380, 0.693979,
		-0.803436, -0.393914, 0.446456,
		37.977055, 36.648911, 23.468504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.738785, 36.324486, 23.342112>,  <38.539459, 36.924652, 23.155985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.738785, 36.324486, 23.342112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.342754, 36.271595, 23.361179>,  <38.105137, 36.239861, 23.372620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.342754, 36.271595, 23.361179>,  <38.738785, 36.324486, 23.342112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.342754, 36.271595, 23.361179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098793, -0.895882, -0.433169,
		0.099985, -0.424159, 0.900051,
		-0.990072, -0.132229, 0.047671,
		38.045734, 36.231926, 23.375481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.538677, 35.621670, 23.612154>,  <38.738785, 36.324486, 23.342112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.538677, 35.621670, 23.612154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.232811, 35.746376, 23.386555>,  <38.049294, 35.821201, 23.251196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.232811, 35.746376, 23.386555>,  <38.538677, 35.621670, 23.612154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.232811, 35.746376, 23.386555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051762, -0.902074, -0.428467,
		-0.642347, -0.298440, 0.705921,
		-0.764664, 0.311764, -0.563997,
		38.003410, 35.839905, 23.217356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.205101, 35.031006, 23.544182>,  <38.538677, 35.621670, 23.612154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.205101, 35.031006, 23.544182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.042511, 35.277676, 23.274521>,  <37.944958, 35.425678, 23.112724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.042511, 35.277676, 23.274521>,  <38.205101, 35.031006, 23.544182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.042511, 35.277676, 23.274521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098033, -0.763038, -0.638877,
		-0.908387, -0.193599, 0.370612,
		-0.406477, 0.616679, -0.674154,
		37.920567, 35.462681, 23.072275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.735428, 34.634472, 23.106142>,  <38.205101, 35.031006, 23.544182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.735428, 34.634472, 23.106142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.805588, 34.958374, 22.882164>,  <37.847683, 35.152714, 22.747778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.805588, 34.958374, 22.882164>,  <37.735428, 34.634472, 23.106142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.805588, 34.958374, 22.882164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063640, -0.558246, -0.827231,
		-0.982439, 0.180728, -0.046382,
		0.175396, 0.809753, -0.559944,
		37.858208, 35.201302, 22.714180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.160080, 34.799137, 22.771517>,  <37.735428, 34.634472, 23.106142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.160080, 34.799137, 22.771517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.457867, 34.960835, 22.558968>,  <37.636539, 35.057854, 22.431438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.457867, 34.960835, 22.558968>,  <37.160080, 34.799137, 22.771517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.457867, 34.960835, 22.558968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306868, -0.499659, -0.810045,
		-0.592958, 0.766114, -0.247931,
		0.744468, 0.404241, -0.531373,
		37.681206, 35.082108, 22.399555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.891518, 34.877285, 22.119495>,  <37.160080, 34.799137, 22.771517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.891518, 34.877285, 22.119495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.282665, 34.914661, 22.044617>,  <37.517353, 34.937088, 21.999689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.282665, 34.914661, 22.044617>,  <36.891518, 34.877285, 22.119495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.282665, 34.914661, 22.044617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110217, -0.530445, -0.840524,
		-0.177839, 0.842554, -0.508406,
		0.977868, 0.093443, -0.187198,
		37.576027, 34.942696, 21.988457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.927708, 34.973263, 21.425203>,  <36.891518, 34.877285, 22.119495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.927708, 34.973263, 21.425203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.307087, 34.870758, 21.499805>,  <37.534714, 34.809258, 21.544567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.307087, 34.870758, 21.499805>,  <36.927708, 34.973263, 21.425203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.307087, 34.870758, 21.499805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012380, -0.617954, -0.786117,
		0.316700, 0.743280, -0.589267,
		0.948445, -0.256259, 0.186505,
		37.591621, 34.793880, 21.555758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.128510, 35.119202, 20.826921>,  <36.927708, 34.973263, 21.425203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.128510, 35.119202, 20.826921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.330368, 34.856075, 21.050568>,  <37.451485, 34.698200, 21.184755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.330368, 34.856075, 21.050568>,  <37.128510, 35.119202, 20.826921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.330368, 34.856075, 21.050568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047825, -0.667936, -0.742680,
		0.861998, 0.348054, -0.368534,
		0.504650, -0.657814, 0.559114,
		37.481762, 34.658730, 21.218302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.397377, 35.416351, 20.862425>,  <37.128510, 35.119202, 20.826921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.397377, 35.416351, 20.862425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.053535, 35.550743, 20.708435>,  <35.847233, 35.631378, 20.616041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.053535, 35.550743, 20.708435>,  <36.397377, 35.416351, 20.862425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.053535, 35.550743, 20.708435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499314, -0.392333, 0.772502,
		0.108505, 0.856267, 0.505009,
		-0.859600, 0.335979, -0.384976,
		35.795654, 35.651535, 20.592943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.972683, 35.749527, 21.414244>,  <36.397377, 35.416351, 20.862425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.972683, 35.749527, 21.414244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.751259, 35.609623, 21.111923>,  <35.618404, 35.525681, 20.930531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.751259, 35.609623, 21.111923>,  <35.972683, 35.749527, 21.414244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.751259, 35.609623, 21.111923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594948, -0.468965, 0.652770,
		-0.582760, 0.811010, 0.051509,
		-0.553559, -0.349763, -0.755803,
		35.585190, 35.504696, 20.885181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.322521, 35.986500, 21.357464>,  <35.972683, 35.749527, 21.414244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.322521, 35.986500, 21.357464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.369122, 35.589775, 21.336536>,  <35.397083, 35.351742, 21.323980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.369122, 35.589775, 21.336536>,  <35.322521, 35.986500, 21.357464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.369122, 35.589775, 21.336536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483261, -0.102629, 0.869440,
		-0.867690, -0.076007, -0.491260,
		0.116501, -0.991812, -0.052319,
		35.404072, 35.292233, 21.320841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.757511, 36.023067, 21.935259>,  <35.322521, 35.986500, 21.357464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.757511, 36.023067, 21.935259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.849976, 35.852234, 22.284924>,  <34.905457, 35.749733, 22.494722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.849976, 35.852234, 22.284924>,  <34.757511, 36.023067, 21.935259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.849976, 35.852234, 22.284924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.938533, -0.334639, 0.084695,
		0.256357, -0.840010, -0.478188,
		0.231165, -0.427083, 0.874164,
		34.919327, 35.724110, 22.547173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.983021, 35.368397, 21.633629>,  <34.757511, 36.023067, 21.935259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.983021, 35.368397, 21.633629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.284733, 35.112667, 21.693390>,  <35.465759, 34.959229, 21.729246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.284733, 35.112667, 21.693390>,  <34.983021, 35.368397, 21.633629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.284733, 35.112667, 21.693390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592524, -0.564850, 0.574334,
		-0.282795, -0.521736, -0.804872,
		0.754283, -0.639325, 0.149404,
		35.511017, 34.920868, 21.738211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.771610, 34.884361, 22.208263>,  <34.983021, 35.368397, 21.633629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.771610, 34.884361, 22.208263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.701809, 34.629025, 22.508148>,  <34.659927, 34.475822, 22.688080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.701809, 34.629025, 22.508148>,  <34.771610, 34.884361, 22.208263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.701809, 34.629025, 22.508148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418732, -0.641007, -0.643252,
		0.891186, -0.426179, -0.155435,
		-0.174505, -0.638343, 0.749711,
		34.649456, 34.437523, 22.733061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.053997, 34.203320, 22.073244>,  <34.771610, 34.884361, 22.208263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.053997, 34.203320, 22.073244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.722256, 34.197525, 22.296658>,  <34.523209, 34.194050, 22.430706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.722256, 34.197525, 22.296658>,  <35.053997, 34.203320, 22.073244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.722256, 34.197525, 22.296658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406786, -0.669618, -0.621398,
		0.383005, -0.742564, 0.549460,
		-0.829357, -0.014486, 0.558532,
		34.473450, 34.193180, 22.464216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.922432, 33.512951, 22.166998>,  <35.053997, 34.203320, 22.073244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.922432, 33.512951, 22.166998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.559063, 33.666325, 22.233624>,  <34.341042, 33.758347, 22.273600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.559063, 33.666325, 22.233624>,  <34.922432, 33.512951, 22.166998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.559063, 33.666325, 22.233624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408729, -0.730973, -0.546461,
		-0.087776, -0.564499, 0.820754,
		-0.908425, 0.383432, 0.166565,
		34.286537, 33.781353, 22.283592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.409229, 32.964478, 22.306293>,  <34.922432, 33.512951, 22.166998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.409229, 32.964478, 22.306293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.191269, 33.283276, 22.202076>,  <34.060493, 33.474556, 22.139545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.191269, 33.283276, 22.202076>,  <34.409229, 32.964478, 22.306293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.191269, 33.283276, 22.202076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545582, -0.572951, -0.611611,
		-0.636730, -0.191118, 0.747026,
		-0.544899, 0.796995, -0.260544,
		34.027798, 33.522373, 22.123913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.709339, 32.740059, 22.388552>,  <34.409229, 32.964478, 22.306293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.709339, 32.740059, 22.388552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.677689, 33.041180, 22.127163>,  <33.658699, 33.221851, 21.970329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.677689, 33.041180, 22.127163>,  <33.709339, 32.740059, 22.388552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.677689, 33.041180, 22.127163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637780, -0.542037, -0.547205,
		-0.766144, 0.373473, 0.523012,
		-0.079125, 0.752804, -0.653472,
		33.653950, 33.267021, 21.931122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.128891, 32.663536, 22.183712>,  <33.709339, 32.740059, 22.388552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.128891, 32.663536, 22.183712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.253143, 32.903763, 21.889004>,  <33.327694, 33.047901, 21.712179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.253143, 32.903763, 21.889004>,  <33.128891, 32.663536, 22.183712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.253143, 32.903763, 21.889004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456630, -0.585531, -0.669808,
		-0.833666, 0.544491, 0.092355,
		0.310628, 0.600569, -0.736768,
		33.346333, 33.083935, 21.667973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.511131, 32.824917, 21.791471>,  <33.128891, 32.663536, 22.183712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.511131, 32.824917, 21.791471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.846138, 32.849865, 21.574337>,  <33.047142, 32.864834, 21.444056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.846138, 32.849865, 21.574337>,  <32.511131, 32.824917, 21.791471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.846138, 32.849865, 21.574337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464253, -0.442677, -0.767141,
		-0.288151, 0.894509, -0.341793,
		0.837519, 0.062374, -0.542836,
		33.097393, 32.868576, 21.411486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.177559, 32.899521, 21.205887>,  <32.511131, 32.824917, 21.791471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.177559, 32.899521, 21.205887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.554653, 32.797245, 21.120216>,  <32.780910, 32.735878, 21.068815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.554653, 32.797245, 21.120216>,  <32.177559, 32.899521, 21.205887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.554653, 32.797245, 21.120216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332066, -0.659186, -0.674689,
		0.031333, 0.707173, -0.706345,
		0.942736, -0.255693, -0.214174,
		32.837475, 32.720535, 21.055964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.292645, 32.922733, 20.440512>,  <32.177559, 32.899521, 21.205887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.292645, 32.922733, 20.440512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.568348, 32.680752, 20.599983>,  <32.733772, 32.535561, 20.695665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.568348, 32.680752, 20.599983>,  <32.292645, 32.922733, 20.440512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.568348, 32.680752, 20.599983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225932, -0.702304, -0.675074,
		0.688384, 0.375229, -0.620750,
		0.689262, -0.604957, 0.398679,
		32.775127, 32.499264, 20.719587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.518734, 32.651779, 19.794567>,  <32.292645, 32.922733, 20.440512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.518734, 32.651779, 19.794567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.672890, 32.445217, 20.100456>,  <32.765385, 32.321281, 20.283991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.672890, 32.445217, 20.100456>,  <32.518734, 32.651779, 19.794567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.672890, 32.445217, 20.100456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117846, -0.849499, -0.514261,
		0.915198, 0.108071, -0.388244,
		0.385390, -0.516403, 0.764724,
		32.788506, 32.290295, 20.329874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.082520, 32.196869, 19.582867>,  <32.518734, 32.651779, 19.794567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.082520, 32.196869, 19.582867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.944557, 32.030701, 19.919548>,  <32.861778, 31.931000, 20.121557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.944557, 32.030701, 19.919548>,  <33.082520, 32.196869, 19.582867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.944557, 32.030701, 19.919548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088858, -0.907152, -0.411314,
		0.934421, -0.067073, 0.349797,
		-0.344907, -0.415423, 0.841702,
		32.841084, 31.906075, 20.172058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.421822, 31.515867, 19.515862>,  <33.082520, 32.196869, 19.582867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.421822, 31.515867, 19.515862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.126827, 31.460506, 19.780273>,  <32.949833, 31.427290, 19.938921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.126827, 31.460506, 19.780273>,  <33.421822, 31.515867, 19.515862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.126827, 31.460506, 19.780273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211936, -0.881909, -0.421094,
		0.641250, -0.450646, 0.621061,
		-0.737484, -0.138402, 0.661032,
		32.905582, 31.418985, 19.978582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.490215, 30.788937, 19.703981>,  <33.421822, 31.515867, 19.515862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.490215, 30.788937, 19.703981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.111572, 30.869461, 19.804707>,  <32.884388, 30.917776, 19.865143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.111572, 30.869461, 19.804707>,  <33.490215, 30.788937, 19.703981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.111572, 30.869461, 19.804707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257130, -0.942606, -0.213023,
		0.194477, -0.266398, 0.944040,
		-0.946606, 0.201312, 0.251814,
		32.827591, 30.929855, 19.880251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.240715, 30.324657, 20.238827>,  <33.490215, 30.788937, 19.703981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.240715, 30.324657, 20.238827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.899734, 30.492561, 20.114170>,  <32.695145, 30.593304, 20.039375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.899734, 30.492561, 20.114170>,  <33.240715, 30.324657, 20.238827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.899734, 30.492561, 20.114170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421457, -0.904484, -0.065445,
		-0.309346, 0.075554, 0.947944,
		-0.852455, 0.419762, -0.311641,
		32.643997, 30.618490, 20.020678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.685455, 30.138376, 20.712776>,  <33.240715, 30.324657, 20.238827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.685455, 30.138376, 20.712776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.523312, 30.240185, 20.361572>,  <32.426025, 30.301270, 20.150850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.523312, 30.240185, 20.361572>,  <32.685455, 30.138376, 20.712776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.523312, 30.240185, 20.361572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359351, -0.927505, -0.102965,
		-0.840566, 0.273777, 0.467434,
		-0.405358, 0.254522, -0.878011,
		32.401703, 30.316542, 20.098169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.021095, 29.924419, 20.777750>,  <32.685455, 30.138376, 20.712776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.021095, 29.924419, 20.777750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.098595, 29.924881, 20.385330>,  <32.145096, 29.925158, 20.149878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.098595, 29.924881, 20.385330>,  <32.021095, 29.924419, 20.777750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.098595, 29.924881, 20.385330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534259, -0.838585, -0.106499,
		-0.822817, 0.544770, -0.161861,
		0.193751, 0.001154, -0.981050,
		32.156719, 29.925228, 20.091015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.431725, 29.718449, 20.494146>,  <32.021095, 29.924419, 20.777750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.431725, 29.718449, 20.494146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.696667, 29.673401, 20.197876>,  <31.855631, 29.646372, 20.020113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.696667, 29.673401, 20.197876>,  <31.431725, 29.718449, 20.494146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.696667, 29.673401, 20.197876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344123, -0.923908, -0.167252,
		-0.665482, 0.365664, -0.650710,
		0.662354, -0.112621, -0.740678,
		31.895372, 29.639614, 19.975672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.100719, 29.327414, 20.022091>,  <31.431725, 29.718449, 20.494146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.100719, 29.327414, 20.022091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.485178, 29.287716, 19.919060>,  <31.715853, 29.263897, 19.857241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.485178, 29.287716, 19.919060>,  <31.100719, 29.327414, 20.022091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.485178, 29.287716, 19.919060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142992, -0.977181, -0.157068,
		-0.236113, 0.187797, -0.953406,
		0.961147, -0.099244, -0.257578,
		31.773521, 29.257942, 19.841785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.136284, 28.811434, 19.370867>,  <31.100719, 29.327414, 20.022091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.136284, 28.811434, 19.370867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.471136, 28.825615, 19.589207>,  <31.672049, 28.834124, 19.720211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.471136, 28.825615, 19.589207>,  <31.136284, 28.811434, 19.370867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.471136, 28.825615, 19.589207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165584, -0.967502, -0.191106,
		0.521338, 0.250365, -0.815797,
		0.837132, 0.035452, 0.545852,
		31.722275, 28.836250, 19.752962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.512089, 28.289160, 19.111061>,  <31.136284, 28.811434, 19.370867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.512089, 28.289160, 19.111061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.695423, 28.355125, 19.460400>,  <31.805424, 28.394705, 19.670002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.695423, 28.355125, 19.460400>,  <31.512089, 28.289160, 19.111061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.695423, 28.355125, 19.460400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307866, -0.951258, 0.018055,
		0.833754, 0.260598, -0.486768,
		0.458337, 0.164913, 0.873345,
		31.832924, 28.404600, 19.722403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.998173, 27.794361, 19.078808>,  <31.512089, 28.289160, 19.111061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.998173, 27.794361, 19.078808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.008556, 27.908554, 19.462021>,  <32.014786, 27.977070, 19.691948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.008556, 27.908554, 19.462021>,  <31.998173, 27.794361, 19.078808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.008556, 27.908554, 19.462021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324293, -0.908932, 0.262062,
		0.945601, 0.303881, -0.116173,
		0.025958, 0.285480, 0.958033,
		32.016342, 27.994198, 19.749432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.656235, 27.781702, 19.251951>,  <31.998173, 27.794361, 19.078808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.656235, 27.781702, 19.251951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.443874, 27.745110, 19.588943>,  <32.316456, 27.723154, 19.791140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.443874, 27.745110, 19.588943>,  <32.656235, 27.781702, 19.251951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.443874, 27.745110, 19.588943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419416, -0.892223, 0.167418,
		0.736364, 0.442232, 0.512053,
		-0.530903, -0.091482, 0.842480,
		32.284603, 27.717665, 19.841688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.089249, 27.329479, 19.627653>,  <32.656235, 27.781702, 19.251951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.089249, 27.329479, 19.627653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.744846, 27.311447, 19.830288>,  <32.538204, 27.300629, 19.951868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.744846, 27.311447, 19.830288>,  <33.089249, 27.329479, 19.627653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.744846, 27.311447, 19.830288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181186, -0.957900, 0.222711,
		0.475220, 0.283543, 0.832928,
		-0.861010, -0.045078, 0.506587,
		32.486542, 27.297924, 19.982264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.167912, 27.036985, 20.363167>,  <33.089249, 27.329479, 19.627653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.167912, 27.036985, 20.363167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.791325, 26.952000, 20.258480>,  <32.565372, 26.901009, 20.195667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.791325, 26.952000, 20.258480>,  <33.167912, 27.036985, 20.363167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.791325, 26.952000, 20.258480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119110, -0.935960, 0.331348,
		-0.315357, 0.280780, 0.906484,
		-0.941468, -0.212464, -0.261718,
		32.508884, 26.888260, 20.179964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.996101, 26.493773, 20.824562>,  <33.167912, 27.036985, 20.363167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.996101, 26.493773, 20.824562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.699848, 26.493191, 20.555798>,  <32.522099, 26.492842, 20.394539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.699848, 26.493191, 20.555798>,  <32.996101, 26.493773, 20.824562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.699848, 26.493191, 20.555798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009045, -0.999929, -0.007808,
		-0.671853, -0.011861, 0.740590,
		-0.740630, -0.001453, -0.671912,
		32.477661, 26.492754, 20.354223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.586731, 25.957811, 21.088974>,  <32.996101, 26.493773, 20.824562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.586731, 25.957811, 21.088974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.514088, 26.032402, 20.702763>,  <32.470501, 26.077156, 20.471035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.514088, 26.032402, 20.702763>,  <32.586731, 25.957811, 21.088974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.514088, 26.032402, 20.702763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016245, -0.981152, -0.192552,
		-0.983238, -0.050653, 0.175151,
		-0.181603, 0.186479, -0.965529,
		32.459606, 26.088346, 20.413103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.062946, 25.525354, 20.917973>,  <32.586731, 25.957811, 21.088974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.062946, 25.525354, 20.917973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.226479, 25.588562, 20.558441>,  <32.324596, 25.626486, 20.342722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.226479, 25.588562, 20.558441>,  <32.062946, 25.525354, 20.917973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.226479, 25.588562, 20.558441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118250, -0.967420, -0.223865,
		-0.904917, 0.197809, -0.376824,
		0.408829, 0.158020, -0.898826,
		32.349129, 25.635967, 20.288794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.728807, 25.127731, 20.324957>,  <32.062946, 25.525354, 20.917973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.728807, 25.127731, 20.324957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.073421, 25.195011, 20.133347>,  <32.280190, 25.235378, 20.018381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.073421, 25.195011, 20.133347>,  <31.728807, 25.127731, 20.324957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.073421, 25.195011, 20.133347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014132, -0.951106, -0.308540,
		-0.507501, 0.259049, -0.821788,
		0.861535, 0.168198, -0.479026,
		32.331882, 25.245470, 19.989639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.664026, 24.612150, 19.874481>,  <31.728807, 25.127731, 20.324957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.664026, 24.612150, 19.874481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.036209, 24.754822, 19.840942>,  <32.259518, 24.840425, 19.820820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.036209, 24.754822, 19.840942>,  <31.664026, 24.612150, 19.874481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.036209, 24.754822, 19.840942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304673, -0.880286, -0.363692,
		-0.203529, 0.312854, -0.927738,
		0.930457, 0.356678, -0.083845,
		32.315346, 24.861826, 19.815788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.953138, 24.516088, 19.196043>,  <31.664026, 24.612150, 19.874481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.953138, 24.516088, 19.196043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.265072, 24.521450, 19.446381>,  <32.452232, 24.524666, 19.596582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.265072, 24.521450, 19.446381>,  <31.953138, 24.516088, 19.196043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.265072, 24.521450, 19.446381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275284, -0.905252, -0.323633,
		0.562208, 0.424664, -0.709635,
		0.779834, 0.013402, 0.625843,
		32.499023, 24.525471, 19.634134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.610374, 24.205971, 18.758480>,  <31.953138, 24.516088, 19.196043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.610374, 24.205971, 18.758480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.657822, 24.191490, 19.155392>,  <32.686291, 24.182802, 19.393539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.657822, 24.191490, 19.155392>,  <32.610374, 24.205971, 18.758480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.657822, 24.191490, 19.155392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312914, -0.947051, -0.071958,
		0.942345, 0.319034, -0.101011,
		0.118620, -0.036202, 0.992280,
		32.693409, 24.180630, 19.453075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.287312, 24.044512, 18.841328>,  <32.610374, 24.205971, 18.758480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.287312, 24.044512, 18.841328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.149323, 23.914242, 19.193447>,  <33.066528, 23.836079, 19.404718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.149323, 23.914242, 19.193447>,  <33.287312, 24.044512, 18.841328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.149323, 23.914242, 19.193447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490333, -0.862255, -0.126847,
		0.800353, 0.387880, 0.457148,
		-0.344977, -0.325677, 0.880299,
		33.045830, 23.816538, 19.457537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.914295, 23.738630, 19.186405>,  <33.287312, 24.044512, 18.841328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.914295, 23.738630, 19.186405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.590641, 23.588573, 19.367325>,  <33.396450, 23.498539, 19.475876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.590641, 23.588573, 19.367325>,  <33.914295, 23.738630, 19.186405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.590641, 23.588573, 19.367325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419412, -0.907792, -0.002639,
		0.411583, 0.187564, 0.891863,
		-0.809131, -0.375144, 0.452299,
		33.347900, 23.476030, 19.503014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.153461, 23.329086, 19.731386>,  <33.914295, 23.738630, 19.186405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.153461, 23.329086, 19.731386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.780525, 23.193916, 19.679935>,  <33.556763, 23.112814, 19.649065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.780525, 23.193916, 19.679935>,  <34.153461, 23.329086, 19.731386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.780525, 23.193916, 19.679935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319438, -0.936469, 0.144861,
		-0.169406, 0.093972, 0.981056,
		-0.932342, -0.337927, -0.128625,
		33.500824, 23.092539, 19.641348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.034481, 22.834084, 20.295414>,  <34.153461, 23.329086, 19.731386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.034481, 22.834084, 20.295414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.757656, 22.721550, 20.029510>,  <33.591560, 22.654030, 19.869968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.757656, 22.721550, 20.029510>,  <34.034481, 22.834084, 20.295414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.757656, 22.721550, 20.029510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339053, -0.939704, 0.044715,
		-0.637255, -0.194443, 0.745720,
		-0.692061, -0.281333, -0.664758,
		33.550037, 22.637150, 19.830084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.662796, 22.263811, 20.567425>,  <34.034481, 22.834084, 20.295414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.662796, 22.263811, 20.567425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.607204, 22.238201, 20.172134>,  <33.573849, 22.222836, 19.934961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.607204, 22.238201, 20.172134>,  <33.662796, 22.263811, 20.567425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.607204, 22.238201, 20.172134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336409, -0.941616, 0.013693,
		-0.931405, -0.330544, 0.152400,
		-0.138976, -0.064023, -0.988224,
		33.565510, 22.218994, 19.875668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.296669, 21.661541, 20.497173>,  <33.662796, 22.263811, 20.567425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.296669, 21.661541, 20.497173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.392941, 21.684517, 20.109612>,  <33.450703, 21.698301, 19.877075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.392941, 21.684517, 20.109612>,  <33.296669, 21.661541, 20.497173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.392941, 21.684517, 20.109612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241233, -0.970464, 0.002393,
		-0.940149, -0.234308, -0.247427,
		0.240679, 0.057438, -0.968904,
		33.465145, 21.701748, 19.818941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.930473, 21.052309, 20.247623>,  <33.296669, 21.661541, 20.497173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.930473, 21.052309, 20.247623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.215240, 21.158844, 19.987705>,  <33.386101, 21.222765, 19.831755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.215240, 21.158844, 19.987705>,  <32.930473, 21.052309, 20.247623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.215240, 21.158844, 19.987705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269226, -0.958105, -0.097737,
		-0.648602, -0.105360, -0.753800,
		0.711922, 0.266335, -0.649795,
		33.428818, 21.238745, 19.792767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.924625, 20.533779, 19.618481>,  <32.930473, 21.052309, 20.247623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.924625, 20.533779, 19.618481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.289986, 20.693455, 19.650349>,  <33.509201, 20.789259, 19.669470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.289986, 20.693455, 19.650349>,  <32.924625, 20.533779, 19.618481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.289986, 20.693455, 19.650349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406276, -0.906151, -0.117606,
		0.025245, 0.139789, -0.989859,
		0.913402, 0.399187, 0.079669,
		33.564007, 20.813211, 19.674250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.352711, 20.033903, 19.264071>,  <32.924625, 20.533779, 19.618481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.352711, 20.033903, 19.264071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.600639, 20.240688, 19.500229>,  <33.749397, 20.364759, 19.641924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.600639, 20.240688, 19.500229>,  <33.352711, 20.033903, 19.264071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.600639, 20.240688, 19.500229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589079, -0.803573, 0.085183,
		0.518463, 0.294991, -0.802606,
		0.619824, 0.516962, 0.590396,
		33.786587, 20.395777, 19.677347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.005505, 19.830564, 19.008282>,  <33.352711, 20.033903, 19.264071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.005505, 19.830564, 19.008282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.070091, 19.960625, 19.380993>,  <34.108841, 20.038662, 19.604620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.070091, 19.960625, 19.380993>,  <34.005505, 19.830564, 19.008282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.070091, 19.960625, 19.380993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653081, -0.743056, 0.146128,
		0.739875, 0.584930, -0.332326,
		0.161463, 0.325152, 0.931776,
		34.118530, 20.058170, 19.660526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.695679, 19.876221, 19.021271>,  <34.005505, 19.830564, 19.008282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.695679, 19.876221, 19.021271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.586224, 19.878811, 19.405994>,  <34.520550, 19.880365, 19.636829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.586224, 19.878811, 19.405994>,  <34.695679, 19.876221, 19.021271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.586224, 19.878811, 19.405994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712665, -0.670186, 0.207266,
		0.645934, 0.742165, 0.178774,
		-0.273638, 0.006474, 0.961811,
		34.504131, 19.880753, 19.694538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.344505, 19.870056, 19.443460>,  <34.695679, 19.876221, 19.021271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.344505, 19.870056, 19.443460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.067726, 19.752735, 19.707333>,  <34.901657, 19.682343, 19.865656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.067726, 19.752735, 19.707333>,  <35.344505, 19.870056, 19.443460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.067726, 19.752735, 19.707333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649569, -0.651703, 0.391591,
		0.315062, 0.699470, 0.641466,
		-0.691951, -0.293301, 0.659680,
		34.860142, 19.664745, 19.905237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.598965, 19.984653, 20.106573>,  <35.344505, 19.870056, 19.443460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.598965, 19.984653, 20.106573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.355782, 19.670193, 20.151024>,  <35.209869, 19.481516, 20.177694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.355782, 19.670193, 20.151024>,  <35.598965, 19.984653, 20.106573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.355782, 19.670193, 20.151024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667350, -0.430148, 0.607962,
		-0.430148, 0.443779, 0.786151,
		-0.607962, -0.786151, 0.111129,
		35.173393, 19.434347, 20.184362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.475639, 19.798428, 20.885843>,  <35.598965, 19.984653, 20.106573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.475639, 19.798428, 20.885843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.452892, 19.502991, 20.617142>,  <35.439243, 19.325729, 20.455921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.452892, 19.502991, 20.617142>,  <35.475639, 19.798428, 20.885843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.452892, 19.502991, 20.617142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683534, -0.519220, 0.513022,
		-0.727700, -0.429993, 0.534377,
		-0.056863, -0.738591, -0.671752,
		35.435833, 19.281414, 20.415617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.230572, 19.201857, 21.199947>,  <35.475639, 19.798428, 20.885843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.230572, 19.201857, 21.199947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.418850, 19.062073, 20.875893>,  <35.531818, 18.978203, 20.681459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.418850, 19.062073, 20.875893>,  <35.230572, 19.201857, 21.199947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.418850, 19.062073, 20.875893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505500, -0.645754, 0.572252,
		-0.723127, -0.678882, -0.127304,
		0.470699, -0.349459, -0.810137,
		35.560059, 18.957235, 20.632853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.859097, 18.674646, 20.926712>,  <35.230572, 19.201857, 21.199947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.859097, 18.674646, 20.926712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.255856, 18.675812, 20.875896>,  <35.493912, 18.676512, 20.845407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.255856, 18.675812, 20.875896>,  <34.859097, 18.674646, 20.926712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.255856, 18.675812, 20.875896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079316, -0.795277, 0.601035,
		-0.099281, -0.606239, -0.789061,
		0.991893, 0.002914, -0.127040,
		35.553425, 18.676685, 20.837784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.959938, 18.076605, 21.230906>,  <34.859097, 18.674646, 20.926712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.959938, 18.076605, 21.230906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.324322, 18.228420, 21.166275>,  <35.542950, 18.319510, 21.127497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.324322, 18.228420, 21.166275>,  <34.959938, 18.076605, 21.230906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.324322, 18.228420, 21.166275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356459, -0.527167, 0.771383,
		0.207593, -0.760292, -0.615517,
		0.910957, 0.379540, -0.161577,
		35.597610, 18.342281, 21.117802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.926037, 17.831188, 21.891226>,  <34.959938, 18.076605, 21.230906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.926037, 17.831188, 21.891226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.590569, 18.027824, 21.797440>,  <34.389290, 18.145807, 21.741167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.590569, 18.027824, 21.797440>,  <34.926037, 17.831188, 21.891226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.590569, 18.027824, 21.797440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264683, -0.744110, -0.613386,
		-0.476003, -0.452368, 0.754178,
		-0.838668, 0.491592, -0.234465,
		34.338966, 18.175303, 21.727100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.511723, 17.364332, 21.841257>,  <34.926037, 17.831188, 21.891226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.511723, 17.364332, 21.841257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.300987, 17.632782, 21.632629>,  <34.174545, 17.793852, 21.507454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.300987, 17.632782, 21.632629>,  <34.511723, 17.364332, 21.841257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.300987, 17.632782, 21.632629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374327, -0.734123, -0.566517,
		-0.763101, -0.103222, 0.637982,
		-0.526835, 0.671124, -0.521572,
		34.142937, 17.834120, 21.476160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.768078, 17.186312, 21.809301>,  <34.511723, 17.364332, 21.841257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.768078, 17.186312, 21.809301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.908909, 17.393509, 21.497475>,  <33.993408, 17.517828, 21.310379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.908909, 17.393509, 21.497475>,  <33.768078, 17.186312, 21.809301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.908909, 17.393509, 21.497475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129563, -0.797906, -0.588693,
		-0.926961, 0.308267, -0.213810,
		0.352076, 0.517993, -0.779568,
		34.014530, 17.548906, 21.263605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.199718, 17.188299, 21.302130>,  <33.768078, 17.186312, 21.809301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.199718, 17.188299, 21.302130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.576241, 17.193932, 21.167225>,  <33.802155, 17.197311, 21.086283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.576241, 17.193932, 21.167225>,  <33.199718, 17.188299, 21.302130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.576241, 17.193932, 21.167225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170108, -0.843196, -0.509984,
		-0.291559, 0.537421, -0.791310,
		0.941306, 0.014082, -0.337261,
		33.858631, 17.198156, 21.066046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.703381, 17.836239, 21.391111>,  <33.199718, 17.188299, 21.302130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.703381, 17.836239, 21.391111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.045265, 17.902817, 21.194435>,  <33.250397, 17.942764, 21.076429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.045265, 17.902817, 21.194435>,  <32.703381, 17.836239, 21.391111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.045265, 17.902817, 21.194435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062652, 0.907198, 0.416012,
		0.515301, -0.386377, 0.764969,
		0.854716, 0.166444, -0.491688,
		33.301682, 17.952749, 21.046928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.275101, 18.102642, 21.910507>,  <32.703381, 17.836239, 21.391111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.275101, 18.102642, 21.910507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.282589, 18.238319, 21.534294>,  <33.287083, 18.319725, 21.308567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.282589, 18.238319, 21.534294>,  <33.275101, 18.102642, 21.910507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.282589, 18.238319, 21.534294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146517, 0.929610, 0.338169,
		0.989031, -0.144133, -0.032298,
		0.018717, 0.339191, -0.940531,
		33.288204, 18.340076, 21.252134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.834782, 18.579300, 21.988441>,  <33.275101, 18.102642, 21.910507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.834782, 18.579300, 21.988441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.582481, 18.657082, 21.687950>,  <33.431103, 18.703751, 21.507656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.582481, 18.657082, 21.687950>,  <33.834782, 18.579300, 21.988441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.582481, 18.657082, 21.687950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080176, 0.946582, 0.312337,
		0.771834, 0.257237, -0.581464,
		-0.630748, 0.194453, -0.751229,
		33.393257, 18.715418, 21.462582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.817921, 19.285583, 21.935314>,  <33.834782, 18.579300, 21.988441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.817921, 19.285583, 21.935314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.502514, 19.224812, 21.696934>,  <33.313271, 19.188349, 21.553905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.502514, 19.224812, 21.696934>,  <33.817921, 19.285583, 21.935314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.502514, 19.224812, 21.696934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292738, 0.944913, 0.146436,
		0.540873, 0.289924, -0.789557,
		-0.788518, -0.151930, -0.595950,
		33.265957, 19.179232, 21.518148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.750412, 19.909250, 21.603899>,  <33.817921, 19.285583, 21.935314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.750412, 19.909250, 21.603899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.394718, 19.734962, 21.548164>,  <33.181301, 19.630390, 21.514725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.394718, 19.734962, 21.548164>,  <33.750412, 19.909250, 21.603899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.394718, 19.734962, 21.548164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457228, 0.836910, 0.300871,
		-0.014485, 0.331252, -0.943431,
		-0.889232, -0.435721, -0.139335,
		33.127949, 19.604246, 21.506363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.452309, 20.300774, 21.119816>,  <33.750412, 19.909250, 21.603899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.452309, 20.300774, 21.119816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.144203, 20.126553, 21.306141>,  <32.959339, 20.022020, 21.417936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.144203, 20.126553, 21.306141>,  <33.452309, 20.300774, 21.119816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.144203, 20.126553, 21.306141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414338, 0.897061, 0.153642,
		-0.484781, -0.074658, -0.871443,
		-0.770267, -0.435554, 0.465812,
		32.913124, 19.995886, 21.445885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.959759, 20.810972, 21.004286>,  <33.452309, 20.300774, 21.119816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.959759, 20.810972, 21.004286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.797001, 20.569202, 21.278252>,  <32.699348, 20.424141, 21.442631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.797001, 20.569202, 21.278252>,  <32.959759, 20.810972, 21.004286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.797001, 20.569202, 21.278252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618098, 0.734252, 0.280765,
		-0.672602, -0.309105, -0.672355,
		-0.406892, -0.604424, 0.684916,
		32.674934, 20.387875, 21.483727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.218231, 20.730610, 20.868483>,  <32.959759, 20.810972, 21.004286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.218231, 20.730610, 20.868483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.270744, 20.644615, 21.255585>,  <32.302250, 20.593019, 21.487846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.270744, 20.644615, 21.255585>,  <32.218231, 20.730610, 20.868483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.270744, 20.644615, 21.255585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728879, 0.640743, 0.241215,
		-0.671939, -0.737041, -0.072583,
		0.131278, -0.214986, 0.967754,
		32.310127, 20.580120, 21.545910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.600395, 20.566027, 21.254053>,  <32.218231, 20.730610, 20.868483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.600395, 20.566027, 21.254053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.840307, 20.686420, 21.550613>,  <31.984255, 20.758656, 21.728550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.840307, 20.686420, 21.550613>,  <31.600395, 20.566027, 21.254053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.840307, 20.686420, 21.550613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734306, 0.575149, 0.360554,
		-0.317894, -0.760667, 0.565977,
		0.599782, 0.300982, 0.741399,
		32.020241, 20.776714, 21.773033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.184511, 20.665524, 21.812178>,  <31.600395, 20.566027, 21.254053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.184511, 20.665524, 21.812178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.511312, 20.878830, 21.899933>,  <31.707394, 21.006813, 21.952585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.511312, 20.878830, 21.899933>,  <31.184511, 20.665524, 21.812178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.511312, 20.878830, 21.899933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576529, 0.762550, 0.293483,
		-0.010789, -0.366259, 0.930450,
		0.817005, 0.533266, 0.219386,
		31.756414, 21.038809, 21.965748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.952133, 21.080379, 22.377132>,  <31.184511, 20.665524, 21.812178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.952133, 21.080379, 22.377132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.295221, 21.256897, 22.271626>,  <31.501074, 21.362808, 22.208323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.295221, 21.256897, 22.271626>,  <30.952133, 21.080379, 22.377132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.295221, 21.256897, 22.271626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316565, 0.857588, 0.405375,
		0.405091, -0.264201, 0.875271,
		0.857723, 0.441294, -0.263765,
		31.552538, 21.389286, 22.192495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.145691, 21.598171, 22.928949>,  <30.952133, 21.080379, 22.377132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.145691, 21.598171, 22.928949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.343878, 21.713493, 22.601196>,  <31.462790, 21.782686, 22.404545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.343878, 21.713493, 22.601196>,  <31.145691, 21.598171, 22.928949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.343878, 21.713493, 22.601196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194279, 0.956195, 0.218968,
		0.846621, 0.050697, 0.529776,
		0.495468, 0.288307, -0.819384,
		31.492517, 21.799986, 22.355381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.653812, 21.940872, 23.121780>,  <31.145691, 21.598171, 22.928949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.653812, 21.940872, 23.121780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.608543, 22.059910, 22.742596>,  <31.581383, 22.131332, 22.515085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.608543, 22.059910, 22.742596>,  <31.653812, 21.940872, 23.121780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.608543, 22.059910, 22.742596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122488, 0.942633, 0.310547,
		0.985996, 0.151259, -0.070227,
		-0.113172, 0.297596, -0.947960,
		31.574593, 22.149189, 22.458208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.016994, 22.540667, 23.116798>,  <31.653812, 21.940872, 23.121780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.016994, 22.540667, 23.116798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.776770, 22.574776, 22.798790>,  <31.632635, 22.595242, 22.607985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.776770, 22.574776, 22.798790>,  <32.016994, 22.540667, 23.116798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.776770, 22.574776, 22.798790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096548, 0.979288, 0.177969,
		0.793729, 0.183639, -0.579889,
		-0.600560, 0.085272, -0.795019,
		31.596601, 22.600357, 22.560284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.276814, 23.016466, 22.642031>,  <32.016994, 22.540667, 23.116798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.276814, 23.016466, 22.642031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.887312, 23.009960, 22.551224>,  <31.653610, 23.006056, 22.496740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.887312, 23.009960, 22.551224>,  <32.276814, 23.016466, 22.642031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.887312, 23.009960, 22.551224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050201, 0.988226, 0.144529,
		0.221994, 0.152132, -0.963107,
		-0.973755, -0.016264, -0.227018,
		31.595186, 23.005081, 22.483118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.196098, 23.487700, 22.047045>,  <32.276814, 23.016466, 22.642031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.196098, 23.487700, 22.047045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.842592, 23.433628, 22.226234>,  <31.630487, 23.401184, 22.333748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.842592, 23.433628, 22.226234>,  <32.196098, 23.487700, 22.047045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.842592, 23.433628, 22.226234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049248, 0.978916, 0.198239,
		-0.465329, 0.153135, -0.871790,
		-0.883767, -0.135180, 0.447976,
		31.577463, 23.393074, 22.360628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.757357, 23.998875, 21.856157>,  <32.196098, 23.487700, 22.047045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.757357, 23.998875, 21.856157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.558987, 23.893883, 22.187256>,  <31.439964, 23.830887, 22.385914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.558987, 23.893883, 22.187256>,  <31.757357, 23.998875, 21.856157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.558987, 23.893883, 22.187256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106959, 0.964428, 0.241742,
		-0.861753, 0.031352, -0.506359,
		-0.495925, -0.262482, 0.827745,
		31.410210, 23.815138, 22.435579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.117037, 24.406591, 21.837965>,  <31.757357, 23.998875, 21.856157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.117037, 24.406591, 21.837965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.151321, 24.301174, 22.222298>,  <31.171892, 24.237925, 22.452898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.151321, 24.301174, 22.222298>,  <31.117037, 24.406591, 21.837965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.151321, 24.301174, 22.222298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012868, 0.964593, 0.263428,
		-0.996237, -0.010214, 0.086067,
		0.085710, -0.263544, 0.960832,
		31.177034, 24.222111, 22.510548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.651220, 24.943823, 22.113373>,  <31.117037, 24.406591, 21.837965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.651220, 24.943823, 22.113373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.881901, 24.794186, 22.403881>,  <31.020309, 24.704403, 22.578186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.881901, 24.794186, 22.403881>,  <30.651220, 24.943823, 22.113373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.881901, 24.794186, 22.403881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219720, 0.927265, 0.303154,
		-0.786855, -0.015252, 0.616950,
		0.576699, -0.374095, 0.726272,
		31.054911, 24.681957, 22.621763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.376257, 25.246294, 22.690189>,  <30.651220, 24.943823, 22.113373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.376257, 25.246294, 22.690189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.749121, 25.122284, 22.764980>,  <30.972839, 25.047878, 22.809855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.749121, 25.122284, 22.764980>,  <30.376257, 25.246294, 22.690189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.749121, 25.122284, 22.764980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201407, 0.873215, 0.443769,
		-0.300851, -0.376006, 0.876418,
		0.932161, -0.310025, 0.186978,
		31.028769, 25.029276, 22.821074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.393368, 25.339071, 23.315607>,  <30.376257, 25.246294, 22.690189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.393368, 25.339071, 23.315607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.776539, 25.340237, 23.200809>,  <31.006441, 25.340937, 23.131931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.776539, 25.340237, 23.200809>,  <30.393368, 25.339071, 23.315607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.776539, 25.340237, 23.200809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145393, 0.857217, 0.494004,
		0.247454, -0.514947, 0.820728,
		0.957929, 0.002915, -0.286992,
		31.063917, 25.341112, 23.114712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.903257, 25.475666, 23.829966>,  <30.393368, 25.339071, 23.315607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.903257, 25.475666, 23.829966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.123745, 25.588829, 23.515991>,  <31.256037, 25.656727, 23.327606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.123745, 25.588829, 23.515991>,  <30.903257, 25.475666, 23.829966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.123745, 25.588829, 23.515991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213527, 0.861601, 0.460489,
		0.806576, -0.421435, 0.414521,
		0.551218, 0.282908, -0.784934,
		31.289110, 25.673702, 23.280512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.480368, 25.815866, 24.137928>,  <30.903257, 25.475666, 23.829966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.480368, 25.815866, 24.137928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.528290, 25.939987, 23.760704>,  <31.557043, 26.014460, 23.534370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.528290, 25.939987, 23.760704>,  <31.480368, 25.815866, 24.137928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.528290, 25.939987, 23.760704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400674, 0.853994, 0.331897,
		0.908354, -0.417622, -0.022017,
		0.119805, 0.310301, -0.943059,
		31.564232, 26.033077, 23.477787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.139790, 25.961077, 24.044788>,  <31.480368, 25.815866, 24.137928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.139790, 25.961077, 24.044788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.936598, 26.161919, 23.764832>,  <31.814684, 26.282425, 23.596857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.936598, 26.161919, 23.764832>,  <32.139790, 25.961077, 24.044788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.936598, 26.161919, 23.764832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458550, 0.845461, 0.273727,
		0.729172, -0.181889, -0.659715,
		-0.507976, 0.502107, -0.699892,
		31.784204, 26.312551, 23.554863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.592323, 26.402760, 23.775854>,  <32.139790, 25.961077, 24.044788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.592323, 26.402760, 23.775854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.260712, 26.575024, 23.633167>,  <32.061745, 26.678381, 23.547556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.260712, 26.575024, 23.633167>,  <32.592323, 26.402760, 23.775854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.260712, 26.575024, 23.633167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329549, 0.891608, 0.310535,
		0.451787, 0.139886, -0.881090,
		-0.829027, 0.430659, -0.356717,
		32.012005, 26.704222, 23.526152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.820278, 26.896944, 23.399799>,  <32.592323, 26.402760, 23.775854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.820278, 26.896944, 23.399799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.438084, 27.005089, 23.447048>,  <32.208767, 27.069975, 23.475397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.438084, 27.005089, 23.447048>,  <32.820278, 26.896944, 23.399799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.438084, 27.005089, 23.447048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291739, 0.925487, 0.241583,
		-0.044006, 0.265289, -0.963164,
		-0.955485, 0.270361, 0.118122,
		32.151440, 27.086197, 23.482485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.868702, 27.499132, 23.137739>,  <32.820278, 26.896944, 23.399799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.868702, 27.499132, 23.137739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.541107, 27.504257, 23.367207>,  <32.344551, 27.507332, 23.504887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.541107, 27.504257, 23.367207>,  <32.868702, 27.499132, 23.137739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.541107, 27.504257, 23.367207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173497, 0.958485, 0.226284,
		-0.546956, 0.284854, -0.787209,
		-0.818986, 0.012811, 0.573670,
		32.295410, 27.508101, 23.539309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.375793, 28.028791, 22.830627>,  <32.868702, 27.499132, 23.137739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.375793, 28.028791, 22.830627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.295788, 27.970913, 23.218246>,  <32.247784, 27.936186, 23.450819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.295788, 27.970913, 23.218246>,  <32.375793, 28.028791, 22.830627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.295788, 27.970913, 23.218246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300180, 0.932425, 0.201187,
		-0.932677, 0.331129, -0.143062,
		-0.200013, -0.144698, 0.969049,
		32.235783, 27.927504, 23.508961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.958416, 28.540512, 22.998369>,  <32.375793, 28.028791, 22.830627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.958416, 28.540512, 22.998369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.080986, 28.402401, 23.353195>,  <32.154530, 28.319534, 23.566092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.080986, 28.402401, 23.353195>,  <31.958416, 28.540512, 22.998369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.080986, 28.402401, 23.353195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109485, 0.938495, 0.327475,
		-0.945577, -0.003227, 0.325382,
		0.306427, -0.345278, 0.887066,
		32.172913, 28.298819, 23.619314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.566547, 28.940620, 23.459700>,  <31.958416, 28.540512, 22.998369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.566547, 28.940620, 23.459700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.868151, 28.798782, 23.680874>,  <32.049110, 28.713680, 23.813580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.868151, 28.798782, 23.680874>,  <31.566547, 28.940620, 23.459700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.868151, 28.798782, 23.680874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171072, 0.918734, 0.355895,
		-0.634200, -0.173755, 0.753392,
		0.754006, -0.354593, 0.552936,
		32.094353, 28.692404, 23.846754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.445930, 29.126274, 24.152872>,  <31.566547, 28.940620, 23.459700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.445930, 29.126274, 24.152872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.835848, 29.069019, 24.084419>,  <32.069798, 29.034666, 24.043348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.835848, 29.069019, 24.084419>,  <31.445930, 29.126274, 24.152872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.835848, 29.069019, 24.084419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176236, 0.964381, 0.197259,
		0.136801, -0.222447, 0.965299,
		0.974796, -0.143135, -0.171131,
		32.128288, 29.026079, 24.033079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.786503, 29.502962, 24.659626>,  <31.445930, 29.126274, 24.152872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.786503, 29.502962, 24.659626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.087597, 29.439274, 24.404114>,  <32.268253, 29.401060, 24.250807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.087597, 29.439274, 24.404114>,  <31.786503, 29.502962, 24.659626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.087597, 29.439274, 24.404114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398495, 0.882554, 0.249601,
		0.524016, -0.442434, 0.727777,
		0.752735, -0.159220, -0.638780,
		32.313416, 29.391508, 24.212481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.377209, 29.648882, 24.977411>,  <31.786503, 29.502962, 24.659626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.377209, 29.648882, 24.977411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.461590, 29.696667, 24.589344>,  <32.512218, 29.725338, 24.356504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.461590, 29.696667, 24.589344>,  <32.377209, 29.648882, 24.977411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.461590, 29.696667, 24.589344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405684, 0.892291, 0.198084,
		0.889335, -0.435369, 0.139772,
		0.210957, 0.119460, -0.970168,
		32.524876, 29.732506, 24.298294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.061291, 29.992706, 24.952436>,  <32.377209, 29.648882, 24.977411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.061291, 29.992706, 24.952436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.871166, 30.053307, 24.605766>,  <32.757092, 30.089666, 24.397764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.871166, 30.053307, 24.605766>,  <33.061291, 29.992706, 24.952436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.871166, 30.053307, 24.605766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191424, 0.979272, 0.066200,
		0.858740, -0.134437, -0.494463,
		-0.475314, 0.151500, -0.866674,
		32.728573, 30.098757, 24.345764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.487259, 30.394346, 24.656345>,  <33.061291, 29.992706, 24.952436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.487259, 30.394346, 24.656345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.141720, 30.425266, 24.457233>,  <32.934395, 30.443817, 24.337767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.141720, 30.425266, 24.457233>,  <33.487259, 30.394346, 24.656345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.141720, 30.425266, 24.457233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074378, 0.996898, 0.025729,
		0.498225, -0.014798, -0.866922,
		-0.863852, 0.077298, -0.497780,
		32.882565, 30.448456, 24.307899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.600758, 30.928019, 24.318710>,  <33.487259, 30.394346, 24.656345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.600758, 30.928019, 24.318710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.201164, 30.921017, 24.302105>,  <32.961407, 30.916817, 24.292141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.201164, 30.921017, 24.302105>,  <33.600758, 30.928019, 24.318710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.201164, 30.921017, 24.302105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013288, 0.994928, -0.099705,
		0.043048, -0.099052, -0.994151,
		-0.998985, -0.017503, -0.041514,
		32.901470, 30.915766, 24.289650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.480434, 31.493774, 23.871969>,  <33.600758, 30.928019, 24.318710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.480434, 31.493774, 23.871969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.136635, 31.420998, 24.063034>,  <32.930355, 31.377331, 24.177673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.136635, 31.420998, 24.063034>,  <33.480434, 31.493774, 23.871969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.136635, 31.420998, 24.063034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205664, 0.978619, 0.002692,
		-0.467941, -0.095924, -0.878538,
		-0.859496, -0.181944, 0.477664,
		32.878784, 31.366415, 24.206333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.895710, 31.763607, 23.446777>,  <33.480434, 31.493774, 23.871969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.895710, 31.763607, 23.446777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.749496, 31.727806, 23.817371>,  <32.661766, 31.706326, 24.039728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.749496, 31.727806, 23.817371>,  <32.895710, 31.763607, 23.446777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.749496, 31.727806, 23.817371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258104, 0.966080, -0.008503,
		-0.894296, -0.242237, -0.376239,
		-0.365537, -0.089504, 0.926484,
		32.639835, 31.700954, 24.095316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.235020, 32.102982, 23.473679>,  <32.895710, 31.763607, 23.446777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.235020, 32.102982, 23.473679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.355347, 32.098637, 23.855125>,  <32.427544, 32.096031, 24.083994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.355347, 32.098637, 23.855125>,  <32.235020, 32.102982, 23.473679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.355347, 32.098637, 23.855125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165561, 0.984157, 0.063436,
		-0.939200, -0.176965, 0.294258,
		0.300822, -0.010862, 0.953619,
		32.445595, 32.095379, 24.141211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.667957, 32.326618, 23.853518>,  <32.235020, 32.102982, 23.473679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.667957, 32.326618, 23.853518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.974970, 32.388161, 24.102428>,  <32.159176, 32.425087, 24.251774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.974970, 32.388161, 24.102428>,  <31.667957, 32.326618, 23.853518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.974970, 32.388161, 24.102428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172027, 0.984596, -0.031253,
		-0.617498, -0.083061, 0.782174,
		0.767530, 0.153854, 0.622275,
		32.205231, 32.434319, 24.289110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.428082, 32.820286, 24.326233>,  <31.667957, 32.326618, 23.853518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.428082, 32.820286, 24.326233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.826704, 32.844501, 24.348888>,  <32.065876, 32.859032, 24.362482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.826704, 32.844501, 24.348888>,  <31.428082, 32.820286, 24.326233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.826704, 32.844501, 24.348888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068465, 0.986243, 0.150457,
		-0.046749, -0.153817, 0.986993,
		0.996558, 0.060541, 0.056637,
		32.125671, 32.862663, 24.365879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.955481, 32.499088, 24.782360>,  <31.428082, 32.820286, 24.326233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.955481, 32.499088, 24.782360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.557064, 32.476219, 24.809593>,  <30.318014, 32.462498, 24.825933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.557064, 32.476219, 24.809593>,  <30.955481, 32.499088, 24.782360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.557064, 32.476219, 24.809593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038714, -0.968295, -0.246791,
		0.080037, -0.243178, 0.966674,
		-0.996040, -0.057176, 0.068085,
		30.258251, 32.459064, 24.830019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.813612, 31.868927, 25.074400>,  <30.955481, 32.499088, 24.782360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.813612, 31.868927, 25.074400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.458452, 31.962227, 24.915794>,  <30.245356, 32.018208, 24.820631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.458452, 31.962227, 24.915794>,  <30.813612, 31.868927, 25.074400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.458452, 31.962227, 24.915794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163972, -0.965782, -0.200945,
		-0.429818, -0.113402, 0.895766,
		-0.887902, 0.233250, -0.396516,
		30.192081, 32.032204, 24.796839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.488642, 31.337387, 25.176878>,  <30.813612, 31.868927, 25.074400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.488642, 31.337387, 25.176878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.237921, 31.505413, 24.914379>,  <30.087488, 31.606230, 24.756880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.237921, 31.505413, 24.914379>,  <30.488642, 31.337387, 25.176878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.237921, 31.505413, 24.914379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365862, -0.902282, -0.228107,
		-0.687940, 0.097118, 0.719240,
		-0.626804, 0.420066, -0.656248,
		30.049879, 31.631433, 24.717505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.755291, 30.997618, 25.318382>,  <30.488642, 31.337387, 25.176878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.755291, 30.997618, 25.318382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.798595, 31.145782, 24.949368>,  <29.824579, 31.234682, 24.727959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.798595, 31.145782, 24.949368>,  <29.755291, 30.997618, 25.318382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.798595, 31.145782, 24.949368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284465, -0.877644, -0.385772,
		-0.952554, 0.304194, 0.010354,
		0.108262, 0.370414, -0.922536,
		29.831074, 31.256907, 24.672607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.209146, 30.680243, 25.021091>,  <29.755291, 30.997618, 25.318382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.209146, 30.680243, 25.021091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.442087, 30.787006, 24.713943>,  <29.581852, 30.851065, 24.529655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.442087, 30.787006, 24.713943>,  <29.209146, 30.680243, 25.021091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.442087, 30.787006, 24.713943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074077, -0.923211, -0.377086,
		-0.809554, 0.276478, -0.517862,
		0.582352, 0.266910, -0.767870,
		29.616793, 30.867079, 24.483582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.721649, 30.555729, 24.518589>,  <29.209146, 30.680243, 25.021091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.721649, 30.555729, 24.518589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.089188, 30.554337, 24.360748>,  <29.309711, 30.553501, 24.266045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.089188, 30.554337, 24.360748>,  <28.721649, 30.555729, 24.518589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.089188, 30.554337, 24.360748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150443, -0.927531, -0.342129,
		-0.364813, 0.373729, -0.852783,
		0.918846, -0.003482, -0.394600,
		29.364841, 30.553291, 24.242369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.615438, 30.414774, 23.866417>,  <28.721649, 30.555729, 24.518589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.615438, 30.414774, 23.866417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.000677, 30.329300, 23.931881>,  <29.231821, 30.278015, 23.971159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.000677, 30.329300, 23.931881>,  <28.615438, 30.414774, 23.866417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.000677, 30.329300, 23.931881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155327, -0.937820, -0.310432,
		0.219818, 0.273555, -0.936401,
		0.963096, -0.213687, 0.163659,
		29.289606, 30.265194, 23.980978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.863445, 30.124598, 23.180811>,  <28.615438, 30.414774, 23.866417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.863445, 30.124598, 23.180811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.095657, 30.017025, 23.488228>,  <29.234985, 29.952482, 23.672678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.095657, 30.017025, 23.488228>,  <28.863445, 30.124598, 23.180811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.095657, 30.017025, 23.488228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046978, -0.953371, -0.298122,
		0.812883, 0.136964, -0.566094,
		0.580530, -0.268932, 0.768544,
		29.269815, 29.936346, 23.718792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.301123, 29.619268, 22.954042>,  <28.863445, 30.124598, 23.180811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.301123, 29.619268, 22.954042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.289946, 29.545216, 23.346970>,  <29.283239, 29.500784, 23.582726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.289946, 29.545216, 23.346970>,  <29.301123, 29.619268, 22.954042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.289946, 29.545216, 23.346970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038144, -0.981787, -0.186119,
		0.998881, -0.042671, 0.020371,
		-0.027942, -0.185134, 0.982316,
		29.281563, 29.489676, 23.641665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.708172, 29.028337, 23.077400>,  <29.301123, 29.619268, 22.954042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.708172, 29.028337, 23.077400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.510160, 29.037262, 23.424835>,  <29.391354, 29.042616, 23.633297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.510160, 29.037262, 23.424835>,  <29.708172, 29.028337, 23.077400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.510160, 29.037262, 23.424835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193213, -0.977467, -0.085008,
		0.847121, -0.209904, 0.488186,
		-0.495029, 0.022311, 0.868590,
		29.361652, 29.043955, 23.685411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.979763, 28.450182, 23.422001>,  <29.708172, 29.028337, 23.077400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.979763, 28.450182, 23.422001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.653370, 28.534096, 23.637466>,  <29.457533, 28.584444, 23.766747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.653370, 28.534096, 23.637466>,  <29.979763, 28.450182, 23.422001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.653370, 28.534096, 23.637466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161983, -0.977473, 0.135303,
		0.554916, 0.023150, 0.831584,
		-0.815984, 0.209785, 0.538666,
		29.408575, 28.597031, 23.799067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.016872, 28.145311, 24.135498>,  <29.979763, 28.450182, 23.422001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.016872, 28.145311, 24.135498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.638113, 28.193459, 24.016239>,  <29.410856, 28.222347, 23.944683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.638113, 28.193459, 24.016239>,  <30.016872, 28.145311, 24.135498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.638113, 28.193459, 24.016239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142023, -0.988498, 0.051981,
		-0.288463, 0.091565, 0.953103,
		-0.946900, 0.120368, -0.298149,
		29.354044, 28.229568, 23.926794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.681326, 27.624525, 24.602280>,  <30.016872, 28.145311, 24.135498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.681326, 27.624525, 24.602280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.397541, 27.719727, 24.336945>,  <29.227270, 27.776848, 24.177744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.397541, 27.719727, 24.336945>,  <29.681326, 27.624525, 24.602280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.397541, 27.719727, 24.336945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341034, -0.939646, 0.027605,
		-0.616734, 0.245806, 0.747809,
		-0.709461, 0.238003, -0.663340,
		29.184702, 27.791128, 24.137943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.068985, 27.367903, 24.880049>,  <29.681326, 27.624525, 24.602280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.068985, 27.367903, 24.880049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.015017, 27.402702, 24.485237>,  <28.982635, 27.423582, 24.248350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.015017, 27.402702, 24.485237>,  <29.068985, 27.367903, 24.880049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.015017, 27.402702, 24.485237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121899, -0.990029, -0.070598,
		-0.983329, 0.110793, 0.144182,
		-0.134922, 0.086997, -0.987029,
		28.974541, 27.428801, 24.189129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.503063, 26.973331, 24.757027>,  <29.068985, 27.367903, 24.880049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.503063, 26.973331, 24.757027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.677860, 27.007236, 24.398842>,  <28.782738, 27.027580, 24.183931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.677860, 27.007236, 24.398842>,  <28.503063, 26.973331, 24.757027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.677860, 27.007236, 24.398842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150596, -0.974602, -0.165748,
		-0.886768, 0.207283, -0.413129,
		0.436993, 0.084764, -0.895462,
		28.808958, 27.032665, 24.130203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.097019, 26.640217, 24.247103>,  <28.503063, 26.973331, 24.757027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.097019, 26.640217, 24.247103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.441109, 26.683239, 24.047726>,  <28.647562, 26.709053, 23.928099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.441109, 26.683239, 24.047726>,  <28.097019, 26.640217, 24.247103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.441109, 26.683239, 24.047726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019143, -0.970001, -0.242346,
		-0.509556, 0.218014, -0.832360,
		0.860225, 0.107555, -0.498443,
		28.699177, 26.715506, 23.898193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.910408, 26.411377, 23.611710>,  <28.097019, 26.640217, 24.247103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.910408, 26.411377, 23.611710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.305946, 26.365696, 23.649956>,  <28.543270, 26.338287, 23.672903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.305946, 26.365696, 23.649956>,  <27.910408, 26.411377, 23.611710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.305946, 26.365696, 23.649956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080957, -0.950950, -0.298564,
		0.125021, 0.287493, -0.949588,
		0.988846, -0.114202, 0.095614,
		28.602600, 26.331436, 23.678640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.195135, 26.163755, 22.975082>,  <27.910408, 26.411377, 23.611710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.195135, 26.163755, 22.975082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.438444, 26.027489, 23.261845>,  <28.584429, 25.945728, 23.433903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.438444, 26.027489, 23.261845>,  <28.195135, 26.163755, 22.975082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.438444, 26.027489, 23.261845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011401, -0.906867, -0.421262,
		0.793648, 0.248068, -0.555505,
		0.608271, -0.340667, 0.716905,
		28.620926, 25.925289, 23.476915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.604719, 25.801813, 22.536352>,  <28.195135, 26.163755, 22.975082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.604719, 25.801813, 22.536352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.622036, 25.685520, 22.918682>,  <28.632425, 25.615744, 23.148081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.622036, 25.685520, 22.918682>,  <28.604719, 25.801813, 22.536352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.622036, 25.685520, 22.918682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108816, -0.949657, -0.293786,
		0.993119, 0.116727, -0.009475,
		0.043291, -0.290733, 0.955824,
		28.635023, 25.598301, 23.205429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.922398, 25.184193, 22.598429>,  <28.604719, 25.801813, 22.536352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.922398, 25.184193, 22.598429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.883354, 25.152348, 22.995243>,  <28.859928, 25.133240, 23.233332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.883354, 25.152348, 22.995243>,  <28.922398, 25.184193, 22.598429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.883354, 25.152348, 22.995243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180234, -0.981727, -0.061052,
		0.978769, 0.172839, 0.110173,
		-0.097608, -0.079613, 0.992035,
		28.854073, 25.128464, 23.292854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.533443, 24.961676, 22.841684>,  <28.922398, 25.184193, 22.598429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.533443, 24.961676, 22.841684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.272966, 24.837959, 23.118896>,  <29.116680, 24.763729, 23.285223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.272966, 24.837959, 23.118896>,  <29.533443, 24.961676, 22.841684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.272966, 24.837959, 23.118896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328476, -0.938084, -0.110012,
		0.684145, 0.156005, 0.712466,
		-0.651191, -0.309292, 0.693029,
		29.077610, 24.745173, 23.326805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.869583, 24.510969, 23.288145>,  <29.533443, 24.961676, 22.841684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.869583, 24.510969, 23.288145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.484818, 24.418354, 23.346260>,  <29.253958, 24.362785, 23.381128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.484818, 24.418354, 23.346260>,  <29.869583, 24.510969, 23.288145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.484818, 24.418354, 23.346260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205640, -0.963140, -0.173416,
		0.180084, -0.136935, 0.974073,
		-0.961916, -0.231538, 0.145287,
		29.196243, 24.348892, 23.389847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.895861, 23.844830, 23.660116>,  <29.869583, 24.510969, 23.288145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.895861, 23.844830, 23.660116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.524199, 23.871994, 23.514759>,  <29.301201, 23.888292, 23.427546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.524199, 23.871994, 23.514759>,  <29.895861, 23.844830, 23.660116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.524199, 23.871994, 23.514759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021217, -0.971566, -0.235817,
		-0.369074, -0.226821, 0.901297,
		-0.929158, 0.067911, -0.363392,
		29.245451, 23.892366, 23.405741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.519632, 23.308935, 24.006145>,  <29.895861, 23.844830, 23.660116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.519632, 23.308935, 24.006145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.324099, 23.387333, 23.666115>,  <29.206779, 23.434372, 23.462097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.324099, 23.387333, 23.666115>,  <29.519632, 23.308935, 24.006145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.324099, 23.387333, 23.666115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155193, -0.978430, -0.136347,
		-0.858462, 0.065275, 0.508707,
		-0.488834, 0.195996, -0.850075,
		29.177448, 23.446133, 23.411093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.819227, 22.861053, 24.040092>,  <29.519632, 23.308935, 24.006145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.819227, 22.861053, 24.040092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.897085, 22.971813, 23.663700>,  <28.943800, 23.038269, 23.437864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.897085, 22.971813, 23.663700>,  <28.819227, 22.861053, 24.040092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.897085, 22.971813, 23.663700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086923, -0.950683, -0.297735,
		-0.977015, 0.139745, -0.160976,
		0.194644, 0.276899, -0.940979,
		28.955479, 23.054882, 23.381407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.373466, 22.502895, 23.634672>,  <28.819227, 22.861053, 24.040092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.373466, 22.502895, 23.634672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.660463, 22.615990, 23.380032>,  <28.832661, 22.683847, 23.227247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.660463, 22.615990, 23.380032>,  <28.373466, 22.502895, 23.634672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.660463, 22.615990, 23.380032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011012, -0.909198, -0.416217,
		-0.696479, 0.305643, -0.649230,
		0.717492, 0.282737, -0.636604,
		28.875711, 22.700811, 23.189051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.174393, 22.321175, 23.049879>,  <28.373466, 22.502895, 23.634672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.174393, 22.321175, 23.049879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.560928, 22.366131, 22.957314>,  <28.792850, 22.393105, 22.901773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.560928, 22.366131, 22.957314>,  <28.174393, 22.321175, 23.049879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.560928, 22.366131, 22.957314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024013, -0.856194, -0.516095,
		-0.256141, 0.504281, -0.824677,
		0.966341, 0.112390, -0.231416,
		28.850830, 22.399847, 22.887888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.166458, 22.239922, 22.266724>,  <28.174393, 22.321175, 23.049879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.166458, 22.239922, 22.266724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.524754, 22.160797, 22.425983>,  <28.739731, 22.113323, 22.521540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.524754, 22.160797, 22.425983>,  <28.166458, 22.239922, 22.266724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.524754, 22.160797, 22.425983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139234, -0.725692, -0.673784,
		0.422214, 0.658971, -0.622489,
		0.895740, -0.197809, 0.398148,
		28.793476, 22.101454, 22.545427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.631477, 22.221735, 21.701235>,  <28.166458, 22.239922, 22.266724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.631477, 22.221735, 21.701235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.817005, 22.029213, 21.998749>,  <28.928322, 21.913700, 22.177258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.817005, 22.029213, 21.998749>,  <28.631477, 22.221735, 21.701235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.817005, 22.029213, 21.998749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343269, -0.676332, -0.651721,
		0.816723, 0.557600, -0.148479,
		0.463821, -0.481307, 0.743783,
		28.956152, 21.884821, 22.221884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.339272, 21.949162, 21.465727>,  <28.631477, 22.221735, 21.701235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.339272, 21.949162, 21.465727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.239389, 21.729282, 21.784595>,  <29.179461, 21.597355, 21.975916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.239389, 21.729282, 21.784595>,  <29.339272, 21.949162, 21.465727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.239389, 21.729282, 21.784595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330827, -0.822141, -0.463291,
		0.910056, 0.148040, 0.387146,
		-0.249703, -0.549699, 0.797170,
		29.164478, 21.564373, 22.023746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.864950, 21.547468, 21.546556>,  <29.339272, 21.949162, 21.465727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.864950, 21.547468, 21.546556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.590136, 21.338081, 21.748135>,  <29.425247, 21.212448, 21.869081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.590136, 21.338081, 21.748135>,  <29.864950, 21.547468, 21.546556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.590136, 21.338081, 21.748135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317308, -0.840061, -0.440015,
		0.653678, -0.142401, 0.743254,
		-0.687037, -0.523469, 0.503945,
		29.384024, 21.181040, 21.899319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.222645, 20.910671, 21.849134>,  <29.864950, 21.547468, 21.546556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.222645, 20.910671, 21.849134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.831976, 20.839516, 21.801029>,  <29.597574, 20.796822, 21.772165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.831976, 20.839516, 21.801029>,  <30.222645, 20.910671, 21.849134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.831976, 20.839516, 21.801029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196537, -0.966177, -0.166958,
		-0.086496, -0.186699, 0.978602,
		-0.976674, -0.177890, -0.120264,
		29.538973, 20.786148, 21.764950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.185530, 20.244719, 22.030170>,  <30.222645, 20.910671, 21.849134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.185530, 20.244719, 22.030170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.828844, 20.237648, 21.849270>,  <29.614832, 20.233406, 21.740730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.828844, 20.237648, 21.849270>,  <30.185530, 20.244719, 22.030170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.828844, 20.237648, 21.849270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111647, -0.976949, -0.181950,
		-0.438610, -0.212740, 0.873134,
		-0.891715, -0.017678, -0.452252,
		29.561329, 20.232346, 21.713594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.831438, 19.675528, 22.248560>,  <30.185530, 20.244719, 22.030170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.831438, 19.675528, 22.248560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.659201, 19.768646, 21.899757>,  <29.555859, 19.824516, 21.690475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.659201, 19.768646, 21.899757>,  <29.831438, 19.675528, 22.248560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.659201, 19.768646, 21.899757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039063, -0.970065, -0.239684,
		-0.901701, -0.069143, 0.426795,
		-0.430591, 0.232795, -0.872008,
		29.530024, 19.838486, 21.638155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.297768, 19.179396, 22.182695>,  <29.831438, 19.675528, 22.248560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.297768, 19.179396, 22.182695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.380596, 19.319103, 21.817154>,  <29.430294, 19.402927, 21.597828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.380596, 19.319103, 21.817154>,  <29.297768, 19.179396, 22.182695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.380596, 19.319103, 21.817154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143349, -0.934851, -0.324814,
		-0.967767, -0.063740, -0.243650,
		0.207073, 0.349271, -0.913855,
		29.442719, 19.423885, 21.542997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.824652, 18.898338, 21.668116>,  <29.297768, 19.179396, 22.182695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.824652, 18.898338, 21.668116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.153233, 19.006176, 21.467106>,  <29.350382, 19.070879, 21.346500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.153233, 19.006176, 21.467106>,  <28.824652, 18.898338, 21.668116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.153233, 19.006176, 21.467106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029835, -0.900308, -0.434229,
		-0.569495, 0.341706, -0.747605,
		0.821453, 0.269596, -0.502526,
		29.399668, 19.087055, 21.316347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.608654, 18.683407, 20.974712>,  <28.824652, 18.898338, 21.668116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.608654, 18.683407, 20.974712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.004435, 18.736526, 20.997860>,  <29.241903, 18.768398, 21.011749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.004435, 18.736526, 20.997860>,  <28.608654, 18.683407, 20.974712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.004435, 18.736526, 20.997860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144851, -0.902691, -0.405175,
		-0.001568, 0.409283, -0.912406,
		0.989452, 0.132799, 0.057870,
		29.301270, 18.776365, 21.015221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.791723, 18.612864, 20.278782>,  <28.608654, 18.683407, 20.974712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.791723, 18.612864, 20.278782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.127342, 18.568050, 20.491741>,  <29.328712, 18.541162, 20.619516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.127342, 18.568050, 20.491741>,  <28.791723, 18.612864, 20.278782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.127342, 18.568050, 20.491741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227060, -0.817168, -0.529793,
		0.494413, 0.565407, -0.660204,
		0.839046, -0.112031, 0.532400,
		29.379057, 18.534441, 20.651461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.920624, 19.371073, 20.445532>,  <28.791723, 18.612864, 20.278782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.920624, 19.371073, 20.445532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.730419, 19.358315, 20.093880>,  <28.616297, 19.350660, 19.882889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.730419, 19.358315, 20.093880>,  <28.920624, 19.371073, 20.445532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.730419, 19.358315, 20.093880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115593, 0.992943, 0.026500,
		0.872082, 0.114222, -0.475842,
		-0.475511, -0.031894, -0.879131,
		28.587767, 19.348747, 19.830141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.320002, 19.648296, 19.823839>,  <28.920624, 19.371073, 20.445532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.320002, 19.648296, 19.823839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.939451, 19.678051, 19.704273>,  <28.711121, 19.695904, 19.632534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.939451, 19.678051, 19.704273>,  <29.320002, 19.648296, 19.823839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.939451, 19.678051, 19.704273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099576, 0.992570, -0.069922,
		0.291491, -0.096287, -0.951715,
		-0.951377, 0.074387, -0.298914,
		28.654037, 19.700367, 19.614599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.351782, 20.072258, 19.248878>,  <29.320002, 19.648296, 19.823839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.351782, 20.072258, 19.248878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.960321, 20.058670, 19.329956>,  <28.725445, 20.050518, 19.378603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.960321, 20.058670, 19.329956>,  <29.351782, 20.072258, 19.248878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.960321, 20.058670, 19.329956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101533, 0.937397, -0.333134,
		-0.178688, -0.346603, -0.920835,
		-0.978653, -0.033968, 0.202693,
		28.666725, 20.048479, 19.390764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.119085, 20.468924, 18.763783>,  <29.351782, 20.072258, 19.248878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.119085, 20.468924, 18.763783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.833649, 20.454533, 19.043636>,  <28.662386, 20.445898, 19.211550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.833649, 20.454533, 19.043636>,  <29.119085, 20.468924, 18.763783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.833649, 20.454533, 19.043636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205004, 0.965688, -0.159436,
		-0.669895, -0.257201, -0.696483,
		-0.713592, -0.035977, 0.699637,
		28.619572, 20.443739, 19.253527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.528786, 20.895697, 18.531399>,  <29.119085, 20.468924, 18.763783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.528786, 20.895697, 18.531399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.463913, 20.866085, 18.924992>,  <28.424990, 20.848318, 19.161146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.463913, 20.866085, 18.924992>,  <28.528786, 20.895697, 18.531399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.463913, 20.866085, 18.924992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178695, 0.982898, 0.044494,
		-0.970446, -0.168616, -0.172638,
		-0.162183, -0.074028, 0.983980,
		28.415258, 20.843876, 19.220186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.028189, 21.367859, 18.562931>,  <28.528786, 20.895697, 18.531399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.028189, 21.367859, 18.562931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.175440, 21.334003, 18.933296>,  <28.263790, 21.313690, 19.155516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.175440, 21.334003, 18.933296>,  <28.028189, 21.367859, 18.562931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.175440, 21.334003, 18.933296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094222, 0.987325, 0.127716,
		-0.924988, -0.134257, 0.355489,
		0.368130, -0.084641, 0.925914,
		28.285879, 21.308611, 19.211071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.565855, 21.666021, 18.872000>,  <28.028189, 21.367859, 18.562931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.565855, 21.666021, 18.872000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.881474, 21.665794, 19.117733>,  <28.070845, 21.665659, 19.265173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.881474, 21.665794, 19.117733>,  <27.565855, 21.666021, 18.872000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.881474, 21.665794, 19.117733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175304, 0.958213, 0.226044,
		-0.588788, -0.286054, 0.755977,
		0.789048, -0.000566, 0.614331,
		28.118189, 21.665625, 19.302032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.333918, 21.816374, 19.545740>,  <27.565855, 21.666021, 18.872000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.333918, 21.816374, 19.545740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.722279, 21.910732, 19.529221>,  <27.955296, 21.967346, 19.519308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.722279, 21.910732, 19.529221>,  <27.333918, 21.816374, 19.545740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.722279, 21.910732, 19.529221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226166, 0.959882, 0.165759,
		0.078744, -0.151595, 0.985301,
		0.970901, 0.235894, -0.041300,
		28.013550, 21.981501, 19.516830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.569319, 22.251232, 20.187304>,  <27.333918, 21.816374, 19.545740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.569319, 22.251232, 20.187304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.856188, 22.356110, 19.929028>,  <28.028309, 22.419037, 19.774063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.856188, 22.356110, 19.929028>,  <27.569319, 22.251232, 20.187304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.856188, 22.356110, 19.929028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049246, 0.943275, 0.328339,
		0.695151, -0.203679, 0.689406,
		0.717175, 0.262196, -0.645688,
		28.071341, 22.434769, 19.735321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.964630, 22.716373, 20.506178>,  <27.569319, 22.251232, 20.187304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.964630, 22.716373, 20.506178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.093088, 22.794064, 20.135418>,  <28.170164, 22.840677, 19.912962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.093088, 22.794064, 20.135418>,  <27.964630, 22.716373, 20.506178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.093088, 22.794064, 20.135418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174683, 0.949801, 0.259545,
		0.930779, -0.245266, 0.271098,
		0.321147, 0.194223, -0.926899,
		28.189432, 22.852331, 19.857347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.372211, 23.171486, 20.589993>,  <27.964630, 22.716373, 20.506178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.372211, 23.171486, 20.589993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.352089, 23.236244, 20.195782>,  <28.340015, 23.275099, 19.959255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.352089, 23.236244, 20.195782>,  <28.372211, 23.171486, 20.589993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.352089, 23.236244, 20.195782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040457, 0.986295, 0.159955,
		0.997914, -0.031825, -0.056167,
		-0.050307, 0.161894, -0.985525,
		28.336996, 23.284813, 19.900124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.900991, 23.733200, 20.437639>,  <28.372211, 23.171486, 20.589993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.900991, 23.733200, 20.437639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.621716, 23.729137, 20.151302>,  <28.454151, 23.726700, 19.979500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.621716, 23.729137, 20.151302>,  <28.900991, 23.733200, 20.437639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.621716, 23.729137, 20.151302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136451, 0.983457, 0.119134,
		0.702790, 0.180855, -0.688024,
		-0.698188, -0.010155, -0.715842,
		28.412258, 23.726091, 19.936550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.085850, 24.246181, 19.898043>,  <28.900991, 23.733200, 20.437639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.085850, 24.246181, 19.898043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.691103, 24.181671, 19.894447>,  <28.454254, 24.142965, 19.892290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.691103, 24.181671, 19.894447>,  <29.085850, 24.246181, 19.898043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.691103, 24.181671, 19.894447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160315, 0.971140, 0.176595,
		-0.019754, 0.175716, -0.984243,
		-0.986868, -0.161277, -0.008986,
		28.395042, 24.133287, 19.891752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.828278, 24.791677, 19.512871>,  <29.085850, 24.246181, 19.898043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.828278, 24.791677, 19.512871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.519165, 24.631992, 19.710228>,  <28.333696, 24.536180, 19.828642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.519165, 24.631992, 19.710228>,  <28.828278, 24.791677, 19.512871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.519165, 24.631992, 19.710228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314953, 0.916141, 0.247971,
		-0.551010, 0.036232, -0.833712,
		-0.772783, -0.399215, 0.493391,
		28.287331, 24.512228, 19.858246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.190325, 25.162794, 19.298662>,  <28.828278, 24.791677, 19.512871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.190325, 25.162794, 19.298662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.125284, 24.998890, 19.657696>,  <28.086260, 24.900547, 19.873116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.125284, 24.998890, 19.657696>,  <28.190325, 25.162794, 19.298662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.125284, 24.998890, 19.657696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264905, 0.894421, 0.360328,
		-0.950466, -0.179184, -0.253983,
		-0.162602, -0.409761, 0.897584,
		28.076504, 24.875961, 19.926971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.693996, 25.592461, 19.535095>,  <28.190325, 25.162794, 19.298662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.693996, 25.592461, 19.535095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.797472, 25.414242, 19.877922>,  <27.859558, 25.307310, 20.083618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.797472, 25.414242, 19.877922>,  <27.693996, 25.592461, 19.535095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.797472, 25.414242, 19.877922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280945, 0.814211, 0.508065,
		-0.924202, -0.372220, 0.085454,
		0.258690, -0.445547, 0.857070,
		27.875078, 25.280579, 20.135042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.134834, 25.726124, 19.981733>,  <27.693996, 25.592461, 19.535095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.134834, 25.726124, 19.981733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.421257, 25.616768, 20.238644>,  <27.593111, 25.551155, 20.392790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.421257, 25.616768, 20.238644>,  <27.134834, 25.726124, 19.981733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.421257, 25.616768, 20.238644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355083, 0.649516, 0.672342,
		-0.600980, -0.709498, 0.368016,
		0.716058, -0.273388, 0.642277,
		27.636074, 25.534752, 20.431328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.773790, 25.628176, 20.617382>,  <27.134834, 25.726124, 19.981733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.773790, 25.628176, 20.617382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.163660, 25.689766, 20.682259>,  <27.397581, 25.726721, 20.721184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.163660, 25.689766, 20.682259>,  <26.773790, 25.628176, 20.617382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.163660, 25.689766, 20.682259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223451, 0.700306, 0.677968,
		-0.009191, -0.697038, 0.716975,
		0.974672, 0.153977, 0.162190,
		27.456062, 25.735960, 20.730915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.853210, 25.626060, 21.425898>,  <26.773790, 25.628176, 20.617382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.853210, 25.626060, 21.425898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.178827, 25.817318, 21.294010>,  <27.374197, 25.932074, 21.214878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.178827, 25.817318, 21.294010>,  <26.853210, 25.626060, 21.425898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.178827, 25.817318, 21.294010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161596, 0.731727, 0.662165,
		0.557873, -0.485749, 0.672923,
		0.814042, 0.478145, -0.329716,
		27.423040, 25.960762, 21.195095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.217384, 25.879145, 22.092537>,  <26.853210, 25.626060, 21.425898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.217384, 25.879145, 22.092537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.326447, 26.079113, 21.763725>,  <27.391884, 26.199095, 21.566439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.326447, 26.079113, 21.763725>,  <27.217384, 25.879145, 22.092537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.326447, 26.079113, 21.763725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010431, 0.855890, 0.517054,
		0.962054, -0.132404, 0.238580,
		0.272658, 0.499923, -0.822031,
		27.408243, 26.229090, 21.517117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.676476, 26.325546, 22.388580>,  <27.217384, 25.879145, 22.092537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.676476, 26.325546, 22.388580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.598408, 26.482929, 22.029224>,  <27.551567, 26.577358, 21.813612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.598408, 26.482929, 22.029224>,  <27.676476, 26.325546, 22.388580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.598408, 26.482929, 22.029224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085901, 0.919341, 0.383970,
		0.977000, -0.002233, -0.213227,
		-0.195171, 0.393455, -0.898388,
		27.539856, 26.600965, 21.759708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.162563, 26.983538, 22.275066>,  <27.676476, 26.325546, 22.388580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.162563, 26.983538, 22.275066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.853481, 27.041843, 22.027946>,  <27.668032, 27.076828, 21.879675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.853481, 27.041843, 22.027946>,  <28.162563, 26.983538, 22.275066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.853481, 27.041843, 22.027946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056334, 0.985183, 0.161989,
		0.632258, 0.090367, -0.769470,
		-0.772707, 0.145766, -0.617799,
		27.621670, 27.085573, 21.842607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.378052, 27.474642, 21.785070>,  <28.162563, 26.983538, 22.275066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.378052, 27.474642, 21.785070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.978582, 27.494888, 21.781361>,  <27.738901, 27.507036, 21.779135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.978582, 27.494888, 21.781361>,  <28.378052, 27.474642, 21.785070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.978582, 27.494888, 21.781361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049784, 0.995948, 0.074900,
		0.013029, 0.074339, -0.997148,
		-0.998675, 0.050618, -0.009276,
		27.678980, 27.510073, 21.778578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.176098, 28.118952, 21.404724>,  <28.378052, 27.474642, 21.785070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.176098, 28.118952, 21.404724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.841005, 28.021641, 21.600285>,  <27.639950, 27.963253, 21.717621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.841005, 28.021641, 21.600285>,  <28.176098, 28.118952, 21.404724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.841005, 28.021641, 21.600285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186741, 0.968933, 0.162165,
		-0.513162, 0.044553, -0.857135,
		-0.837731, -0.243279, 0.488899,
		27.589685, 27.948658, 21.746954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.669086, 28.649416, 21.204885>,  <28.176098, 28.118952, 21.404724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.669086, 28.649416, 21.204885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.583609, 28.470486, 21.552273>,  <27.532322, 28.363127, 21.760704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.583609, 28.470486, 21.552273>,  <27.669086, 28.649416, 21.204885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.583609, 28.470486, 21.552273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373177, 0.858961, 0.350607,
		-0.902815, -0.249169, -0.350485,
		-0.213693, -0.447326, 0.868467,
		27.519501, 28.336288, 21.812813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.925781, 28.836452, 21.384892>,  <27.669086, 28.649416, 21.204885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.925781, 28.836452, 21.384892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.080864, 28.731186, 21.738258>,  <27.173914, 28.668026, 21.950279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.080864, 28.731186, 21.738258>,  <26.925781, 28.836452, 21.384892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.080864, 28.731186, 21.738258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393223, 0.819583, 0.416724,
		-0.833703, -0.508946, 0.214273,
		0.387705, -0.263167, 0.883418,
		27.197176, 28.652235, 22.003284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.401892, 29.004656, 21.842527>,  <26.925781, 28.836452, 21.384892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.401892, 29.004656, 21.842527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.715881, 28.956108, 22.085537>,  <26.904276, 28.926979, 22.231342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.715881, 28.956108, 22.085537>,  <26.401892, 29.004656, 21.842527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.715881, 28.956108, 22.085537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234196, 0.849725, 0.472356,
		-0.573556, -0.513067, 0.638588,
		0.784975, -0.121368, 0.607524,
		26.951374, 28.919699, 22.267794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.200739, 29.024916, 22.601963>,  <26.401892, 29.004656, 21.842527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.200739, 29.024916, 22.601963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.587914, 29.124172, 22.617584>,  <26.820219, 29.183725, 22.626957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.587914, 29.124172, 22.617584>,  <26.200739, 29.024916, 22.601963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.587914, 29.124172, 22.617584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228958, 0.807560, 0.543530,
		0.103333, -0.535044, 0.838481,
		0.967936, 0.248141, 0.039055,
		26.878294, 29.198614, 22.629301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.217991, 29.311768, 23.236065>,  <26.200739, 29.024916, 22.601963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.217991, 29.311768, 23.236065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.559139, 29.427116, 23.061958>,  <26.763828, 29.496326, 22.957495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.559139, 29.427116, 23.061958>,  <26.217991, 29.311768, 23.236065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.559139, 29.427116, 23.061958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117937, 0.918496, 0.377434,
		0.508630, -0.270568, 0.817367,
		0.852870, 0.288372, -0.435264,
		26.815001, 29.513628, 22.931379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.646435, 29.713139, 23.715767>,  <26.217991, 29.311768, 23.236065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.646435, 29.713139, 23.715767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.749222, 29.842339, 23.351429>,  <26.810894, 29.919859, 23.132826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.749222, 29.842339, 23.351429>,  <26.646435, 29.713139, 23.715767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.749222, 29.842339, 23.351429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235529, 0.935006, 0.265122,
		0.937283, 0.146406, 0.316332,
		0.256957, 0.322999, -0.910848,
		26.826311, 29.939240, 23.078175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.943279, 30.319546, 23.829607>,  <26.646435, 29.713139, 23.715767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.943279, 30.319546, 23.829607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.849712, 30.332554, 23.440922>,  <26.793571, 30.340359, 23.207710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.849712, 30.332554, 23.440922>,  <26.943279, 30.319546, 23.829607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.849712, 30.332554, 23.440922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180583, 0.980597, 0.076288,
		0.955339, 0.193319, -0.223506,
		-0.233917, 0.032519, -0.971713,
		26.779537, 30.342310, 23.149408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.377600, 30.874771, 23.498312>,  <26.943279, 30.319546, 23.829607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.377600, 30.874771, 23.498312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.065855, 30.815346, 23.254829>,  <26.878807, 30.779692, 23.108740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.065855, 30.815346, 23.254829>,  <27.377600, 30.874771, 23.498312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.065855, 30.815346, 23.254829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173977, 0.984593, -0.017547,
		0.601934, 0.092225, -0.793202,
		-0.779363, -0.148561, -0.608705,
		26.832047, 30.770777, 23.072218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.265707, 31.441795, 23.127895>,  <27.377600, 30.874771, 23.498312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.265707, 31.441795, 23.127895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.902527, 31.316788, 23.016212>,  <26.684618, 31.241783, 22.949203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.902527, 31.316788, 23.016212>,  <27.265707, 31.441795, 23.127895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.902527, 31.316788, 23.016212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290335, 0.949535, -0.118695,
		0.302212, -0.026706, -0.952867,
		-0.907950, -0.312521, -0.279207,
		26.630142, 31.223032, 22.932451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.968328, 31.993832, 22.689087>,  <27.265707, 31.441795, 23.127895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.968328, 31.993832, 22.689087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.647707, 31.779144, 22.794495>,  <26.455334, 31.650331, 22.857740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.647707, 31.779144, 22.794495>,  <26.968328, 31.993832, 22.689087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.647707, 31.779144, 22.794495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575056, 0.812706, -0.093908,
		-0.163764, -0.226812, -0.960072,
		-0.801556, -0.536716, 0.263522,
		26.407240, 31.618130, 22.873550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.609770, 31.962458, 22.065090>,  <26.968328, 31.993832, 22.689087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.609770, 31.962458, 22.065090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.391687, 31.958118, 22.400383>,  <26.260838, 31.955515, 22.601559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.391687, 31.958118, 22.400383>,  <26.609770, 31.962458, 22.065090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.391687, 31.958118, 22.400383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606662, 0.695186, -0.385588,
		-0.578544, -0.718748, -0.385600,
		-0.545204, -0.010849, 0.838233,
		26.228127, 31.954865, 22.651854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.066061, 32.251682, 21.827019>,  <26.609770, 31.962458, 22.065090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.066061, 32.251682, 21.827019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.985470, 32.247379, 22.218792>,  <25.937115, 32.244797, 22.453856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.985470, 32.247379, 22.218792>,  <26.066061, 32.251682, 21.827019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.985470, 32.247379, 22.218792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579649, 0.807357, -0.110373,
		-0.789566, -0.589965, -0.168896,
		-0.201476, -0.010753, 0.979434,
		25.925028, 32.244152, 22.512623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.386515, 32.186672, 21.855194>,  <26.066061, 32.251682, 21.827019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.386515, 32.186672, 21.855194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.534449, 32.358437, 22.184757>,  <25.623209, 32.461494, 22.382496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.534449, 32.358437, 22.184757>,  <25.386515, 32.186672, 21.855194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.534449, 32.358437, 22.184757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615866, 0.777275, -0.128661,
		-0.695653, -0.459835, 0.551923,
		0.369833, 0.429414, 0.823910,
		25.645399, 32.487259, 22.431931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.846983, 32.588566, 22.110168>,  <25.386515, 32.186672, 21.855194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.846983, 32.588566, 22.110168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.156357, 32.758045, 22.298756>,  <25.341980, 32.859734, 22.411909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.156357, 32.758045, 22.298756>,  <24.846983, 32.588566, 22.110168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.156357, 32.758045, 22.298756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432519, 0.896488, -0.096108,
		-0.463387, -0.129586, 0.876630,
		0.773434, 0.423694, 0.471469,
		25.388388, 32.885155, 22.440197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.455540, 33.192280, 22.405321>,  <24.846983, 32.588566, 22.110168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.455540, 33.192280, 22.405321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.849701, 33.260349, 22.403316>,  <25.086197, 33.301193, 22.402113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.849701, 33.260349, 22.403316>,  <24.455540, 33.192280, 22.405321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.849701, 33.260349, 22.403316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170149, 0.983367, -0.063544,
		-0.005885, 0.063469, 0.997966,
		0.985401, 0.170177, -0.005012,
		25.145321, 33.311401, 22.401814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.540714, 33.985687, 22.699524>,  <24.455540, 33.192280, 22.405321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.540714, 33.985687, 22.699524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.902142, 33.935722, 22.535591>,  <25.118998, 33.905743, 22.437231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.902142, 33.935722, 22.535591>,  <24.540714, 33.985687, 22.699524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.902142, 33.935722, 22.535591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046613, 0.979541, -0.195775,
		0.425902, 0.157792, 0.890904,
		0.903568, -0.124908, -0.409833,
		25.173212, 33.898251, 22.412642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.971029, 34.436028, 23.018471>,  <24.540714, 33.985687, 22.699524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.971029, 34.436028, 23.018471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.090805, 34.370819, 22.642437>,  <25.162670, 34.331692, 22.416817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.090805, 34.370819, 22.642437>,  <24.971029, 34.436028, 23.018471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.090805, 34.370819, 22.642437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030103, 0.986418, -0.161471,
		0.953641, 0.020052, 0.300279,
		0.299438, -0.163025, -0.940085,
		25.180637, 34.321911, 22.360411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.557516, 34.986649, 22.980913>,  <24.971029, 34.436028, 23.018471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.557516, 34.986649, 22.980913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.734098, 35.097916, 22.639683>,  <24.840048, 35.164677, 22.434944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.734098, 35.097916, 22.639683>,  <24.557516, 34.986649, 22.980913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.734098, 35.097916, 22.639683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692466, -0.710228, 0.126754,
		-0.570620, -0.646682, -0.506157,
		0.441457, 0.278169, -0.853076,
		24.866535, 35.181366, 22.383760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.170109, 35.580807, 22.644850>,  <24.557516, 34.986649, 22.980913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.170109, 35.580807, 22.644850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.115786, 35.920601, 22.440914>,  <24.083191, 36.124477, 22.318552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.115786, 35.920601, 22.440914>,  <24.170109, 35.580807, 22.644850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.115786, 35.920601, 22.440914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468619, -0.508480, -0.722388,
		-0.872899, 0.140814, 0.467139,
		-0.135808, 0.849482, -0.509840,
		24.075043, 36.175446, 22.287962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.526779, 35.610489, 22.425705>,  <24.170109, 35.580807, 22.644850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.526779, 35.610489, 22.425705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.647238, 35.929829, 22.217113>,  <23.719513, 36.121433, 22.091959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.647238, 35.929829, 22.217113>,  <23.526779, 35.610489, 22.425705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.647238, 35.929829, 22.217113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537987, -0.309280, -0.784166,
		-0.787325, 0.516698, 0.336366,
		0.301146, 0.798354, -0.521481,
		23.737581, 36.169334, 22.060669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.914110, 36.066948, 22.429186>,  <23.526779, 35.610489, 22.425705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.914110, 36.066948, 22.429186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.165390, 36.119930, 22.122509>,  <23.316158, 36.151722, 21.938503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.165390, 36.119930, 22.122509>,  <22.914110, 36.066948, 22.429186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.165390, 36.119930, 22.122509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759615, -0.108831, -0.641203,
		-0.168373, 0.985196, 0.032250,
		0.628200, 0.132459, -0.766694,
		23.353849, 36.159668, 21.892502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.211517, 36.381275, 22.580681>,  <22.914110, 36.066948, 22.429186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.211517, 36.381275, 22.580681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.110233, 36.187431, 22.245770>,  <22.049463, 36.071125, 22.044823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.110233, 36.187431, 22.245770>,  <22.211517, 36.381275, 22.580681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.110233, 36.187431, 22.245770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440879, -0.828188, 0.346020,
		-0.861109, -0.281522, 0.423363,
		-0.253212, -0.484613, -0.837278,
		22.034269, 36.042046, 21.994587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.660912, 36.578896, 22.035776>,  <22.211517, 36.381275, 22.580681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.660912, 36.578896, 22.035776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.283981, 36.607075, 21.904896>,  <21.057823, 36.623981, 21.826368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.283981, 36.607075, 21.904896>,  <21.660912, 36.578896, 22.035776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.283981, 36.607075, 21.904896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297526, -0.271435, -0.915315,
		-0.153299, -0.959875, 0.234819,
		-0.942326, 0.070452, -0.327199,
		21.001284, 36.628212, 21.806736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.521605, 36.125092, 21.493166>,  <21.660912, 36.578896, 22.035776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.521605, 36.125092, 21.493166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.225870, 36.383846, 21.418415>,  <21.048429, 36.539097, 21.373564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.225870, 36.383846, 21.418415>,  <21.521605, 36.125092, 21.493166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.225870, 36.383846, 21.418415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151728, -0.110346, -0.982244,
		-0.656019, -0.754562, -0.016568,
		-0.739336, 0.646884, -0.186878,
		21.004070, 36.577911, 21.362352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.961777, 35.812744, 21.090769>,  <21.521605, 36.125092, 21.493166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.961777, 35.812744, 21.090769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.925762, 36.205811, 21.025955>,  <20.904154, 36.441650, 20.987066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.925762, 36.205811, 21.025955>,  <20.961777, 35.812744, 21.090769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.925762, 36.205811, 21.025955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095588, -0.153419, -0.983527,
		-0.991341, -0.104040, -0.080118,
		-0.090035, 0.982669, -0.162036,
		20.898752, 36.500610, 20.977345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.431608, 35.889503, 20.532125>,  <20.961777, 35.812744, 21.090769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.431608, 35.889503, 20.532125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.611752, 36.246269, 20.515762>,  <20.719837, 36.460327, 20.505943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.611752, 36.246269, 20.515762>,  <20.431608, 35.889503, 20.532125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.611752, 36.246269, 20.515762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021129, -0.056453, -0.998182,
		-0.892598, 0.448674, -0.044269,
		0.450357, 0.891911, -0.040910,
		20.746859, 36.513844, 20.503489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.150532, 36.196095, 19.951410>,  <20.431608, 35.889503, 20.532125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.150532, 36.196095, 19.951410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.479671, 36.413708, 20.017075>,  <20.677155, 36.544277, 20.056473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.479671, 36.413708, 20.017075>,  <20.150532, 36.196095, 19.951410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.479671, 36.413708, 20.017075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257634, -0.099662, -0.961089,
		-0.506505, 0.833123, -0.222169,
		0.822847, 0.544034, 0.164162,
		20.726526, 36.576920, 20.066322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.160776, 36.507000, 19.377844>,  <20.150532, 36.196095, 19.951410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.160776, 36.507000, 19.377844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.536455, 36.544533, 19.509968>,  <20.761862, 36.567051, 19.589241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.536455, 36.544533, 19.509968>,  <20.160776, 36.507000, 19.377844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.536455, 36.544533, 19.509968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335798, -0.049999, -0.940606,
		-0.071742, 0.994332, -0.078467,
		0.939198, 0.093830, 0.330308,
		20.818214, 36.572681, 19.609060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.489182, 37.055283, 19.067322>,  <20.160776, 36.507000, 19.377844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.489182, 37.055283, 19.067322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.812838, 36.843472, 19.169220>,  <21.007030, 36.716385, 19.230358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.812838, 36.843472, 19.169220>,  <20.489182, 37.055283, 19.067322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.812838, 36.843472, 19.169220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375647, 0.132756, -0.917205,
		0.451863, 0.837843, 0.306333,
		0.809141, -0.529524, 0.254745,
		21.055580, 36.684616, 19.245644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.024849, 37.541645, 18.823725>,  <20.489182, 37.055283, 19.067322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.024849, 37.541645, 18.823725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.204672, 37.189888, 18.886421>,  <21.312565, 36.978832, 18.924040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.204672, 37.189888, 18.886421>,  <21.024849, 37.541645, 18.823725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.204672, 37.189888, 18.886421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517224, 0.113206, -0.848330,
		0.728270, 0.462444, 0.505735,
		0.449558, -0.879392, 0.156742,
		21.339539, 36.926071, 18.933443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.733213, 37.596889, 18.597044>,  <21.024849, 37.541645, 18.823725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.733213, 37.596889, 18.597044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.661810, 37.203930, 18.575024>,  <21.618967, 36.968155, 18.561811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.661810, 37.203930, 18.575024>,  <21.733213, 37.596889, 18.597044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.661810, 37.203930, 18.575024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446803, -0.031085, -0.894092,
		0.876642, -0.184202, 0.444486,
		-0.178510, -0.982397, -0.055052,
		21.608257, 36.909210, 18.558508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.408445, 37.249630, 18.561378>,  <21.733213, 37.596889, 18.597044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.408445, 37.249630, 18.561378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.128363, 37.000690, 18.421440>,  <21.960312, 36.851326, 18.337477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.128363, 37.000690, 18.421440>,  <22.408445, 37.249630, 18.561378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.128363, 37.000690, 18.421440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466173, -0.027413, -0.884269,
		0.540732, -0.782261, 0.309316,
		-0.700208, -0.622347, -0.349846,
		21.918301, 36.813988, 18.316486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.782106, 36.783081, 18.170675>,  <22.408445, 37.249630, 18.561378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.782106, 36.783081, 18.170675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.403685, 36.753033, 18.044605>,  <22.176632, 36.735004, 17.968964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.403685, 36.753033, 18.044605>,  <22.782106, 36.783081, 18.170675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.403685, 36.753033, 18.044605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323932, -0.198573, -0.925006,
		0.006901, -0.977203, 0.212195,
		-0.946055, -0.075120, -0.315177,
		22.119867, 36.730495, 17.950052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.825508, 36.176483, 17.743456>,  <22.782106, 36.783081, 18.170675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.825508, 36.176483, 17.743456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.501274, 36.391628, 17.650799>,  <22.306734, 36.520714, 17.595205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.501274, 36.391628, 17.650799>,  <22.825508, 36.176483, 17.743456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.501274, 36.391628, 17.650799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229198, -0.072627, -0.970667,
		-0.538908, -0.839899, -0.064407,
		-0.810584, 0.537862, -0.231642,
		22.258099, 36.552986, 17.581306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.387951, 35.862556, 17.226786>,  <22.825508, 36.176483, 17.743456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.387951, 35.862556, 17.226786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.301893, 36.251144, 17.186878>,  <22.250259, 36.484299, 17.162933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.301893, 36.251144, 17.186878>,  <22.387951, 35.862556, 17.226786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.301893, 36.251144, 17.186878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178963, -0.061211, -0.981950,
		-0.960044, -0.229116, -0.160689,
		-0.215145, 0.971472, -0.099769,
		22.237350, 36.542587, 17.156948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.960739, 35.884853, 16.549868>,  <22.387951, 35.862556, 17.226786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.960739, 35.884853, 16.549868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.066517, 36.264736, 16.616947>,  <22.129984, 36.492668, 16.657194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.066517, 36.264736, 16.616947>,  <21.960739, 35.884853, 16.549868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.066517, 36.264736, 16.616947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012837, 0.170405, -0.985290,
		-0.964316, 0.262706, 0.032871,
		0.264443, 0.949709, 0.167697,
		22.145849, 36.549648, 16.667255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.634949, 36.317936, 15.945932>,  <21.960739, 35.884853, 16.549868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.634949, 36.317936, 15.945932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.873777, 36.601074, 16.096909>,  <22.017075, 36.770958, 16.187494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.873777, 36.601074, 16.096909>,  <21.634949, 36.317936, 15.945932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.873777, 36.601074, 16.096909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027554, 0.452139, -0.891522,
		-0.801715, 0.542702, 0.250455,
		0.597071, 0.707846, 0.377440,
		22.052898, 36.813427, 16.210140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.354095, 36.932209, 15.633102>,  <21.634949, 36.317936, 15.945932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.354095, 36.932209, 15.633102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.724745, 37.016434, 15.757705>,  <21.947134, 37.066967, 15.832466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.724745, 37.016434, 15.757705>,  <21.354095, 36.932209, 15.633102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.724745, 37.016434, 15.757705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109743, 0.640948, -0.759699,
		-0.359624, 0.738139, 0.570809,
		0.926621, 0.210563, 0.311506,
		22.002731, 37.079601, 15.851156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.372293, 37.685246, 15.704188>,  <21.354095, 36.932209, 15.633102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.372293, 37.685246, 15.704188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.726624, 37.514713, 15.630918>,  <21.939222, 37.412392, 15.586955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.726624, 37.514713, 15.630918>,  <21.372293, 37.685246, 15.704188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.726624, 37.514713, 15.630918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145481, 0.630027, -0.762824,
		0.440625, 0.649080, 0.620117,
		0.885824, -0.426335, -0.183177,
		21.992371, 37.386814, 15.575964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.835756, 38.261879, 15.721646>,  <21.372293, 37.685246, 15.704188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.835756, 38.261879, 15.721646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.990423, 37.950817, 15.523358>,  <22.083223, 37.764179, 15.404386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.990423, 37.950817, 15.523358>,  <21.835756, 38.261879, 15.721646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.990423, 37.950817, 15.523358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284083, 0.611830, -0.738215,
		0.877374, 0.144619, 0.457494,
		0.386668, -0.777657, -0.495720,
		22.106424, 37.717522, 15.374642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.515539, 38.389267, 15.671241>,  <21.835756, 38.261879, 15.721646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.515539, 38.389267, 15.671241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.440214, 38.140667, 15.367063>,  <22.395020, 37.991508, 15.184556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.440214, 38.140667, 15.367063>,  <22.515539, 38.389267, 15.671241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.440214, 38.140667, 15.367063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550372, 0.574511, -0.605828,
		0.813406, -0.532612, 0.233869,
		-0.188311, -0.621499, -0.760446,
		22.383720, 37.954216, 15.138928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.099714, 38.318672, 15.339787>,  <22.515539, 38.389267, 15.671241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.099714, 38.318672, 15.339787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.869232, 38.170067, 15.048593>,  <22.730942, 38.080906, 14.873876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.869232, 38.170067, 15.048593>,  <23.099714, 38.318672, 15.339787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.869232, 38.170067, 15.048593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571538, 0.453556, -0.683836,
		0.584235, -0.810103, -0.049010,
		-0.576207, -0.371509, -0.727988,
		22.696369, 38.058613, 14.830196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.554419, 38.059647, 14.871119>,  <23.099714, 38.318672, 15.339787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.554419, 38.059647, 14.871119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.207710, 38.094822, 14.674764>,  <22.999685, 38.115929, 14.556951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.207710, 38.094822, 14.674764>,  <23.554419, 38.059647, 14.871119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.207710, 38.094822, 14.674764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494027, 0.285904, -0.821094,
		0.068137, -0.954214, -0.291260,
		-0.866772, 0.087943, -0.490889,
		22.947680, 38.121204, 14.527497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.587353, 37.717278, 14.154790>,  <23.554419, 38.059647, 14.871119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.587353, 37.717278, 14.154790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.294609, 37.989048, 14.133784>,  <23.118963, 38.152111, 14.121181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.294609, 37.989048, 14.133784>,  <23.587353, 37.717278, 14.154790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.294609, 37.989048, 14.133784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385496, 0.349234, -0.854066,
		-0.561936, -0.645301, -0.517508,
		-0.731861, 0.679428, -0.052513,
		23.075050, 38.192875, 14.118031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.408241, 37.734383, 13.379604>,  <23.587353, 37.717278, 14.154790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.408241, 37.734383, 13.379604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.311972, 38.058750, 13.592954>,  <23.254210, 38.253372, 13.720963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.311972, 38.058750, 13.592954>,  <23.408241, 37.734383, 13.379604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.311972, 38.058750, 13.592954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411102, 0.582967, -0.700817,
		-0.879245, 0.050604, -0.473675,
		-0.240672, 0.810918, 0.533374,
		23.239769, 38.302025, 13.752966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.014463, 38.174522, 12.971133>,  <23.408241, 37.734383, 13.379604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.014463, 38.174522, 12.971133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.166927, 38.399918, 13.264310>,  <23.258406, 38.535152, 13.440216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.166927, 38.399918, 13.264310>,  <23.014463, 38.174522, 12.971133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.166927, 38.399918, 13.264310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123939, 0.754488, -0.644505,
		-0.916165, 0.336498, 0.217741,
		0.381158, 0.563486, 0.732941,
		23.281275, 38.568962, 13.484192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.670864, 38.877277, 13.147429>,  <23.014463, 38.174522, 12.971133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.670864, 38.877277, 13.147429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.068506, 38.837078, 13.163701>,  <23.307091, 38.812958, 13.173464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.068506, 38.837078, 13.163701>,  <22.670864, 38.877277, 13.147429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.068506, 38.837078, 13.163701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101101, 0.723788, -0.682575,
		0.039155, 0.682664, 0.729682,
		0.994105, -0.100498, 0.040679,
		23.366737, 38.806931, 13.175904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.931601, 39.686302, 13.189927>,  <22.670864, 38.877277, 13.147429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.931601, 39.686302, 13.189927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.216885, 39.429630, 13.077090>,  <23.388056, 39.275627, 13.009388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.216885, 39.429630, 13.077090>,  <22.931601, 39.686302, 13.189927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.216885, 39.429630, 13.077090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361101, 0.681282, -0.636758,
		0.600780, 0.352278, 0.717609,
		0.713210, -0.641681, -0.282093,
		23.430847, 39.237125, 12.992462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.572882, 40.103535, 13.068710>,  <22.931601, 39.686302, 13.189927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.572882, 40.103535, 13.068710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.603081, 39.772800, 12.845767>,  <23.621201, 39.574360, 12.712001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.603081, 39.772800, 12.845767>,  <23.572882, 40.103535, 13.068710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.603081, 39.772800, 12.845767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460748, 0.524631, -0.715872,
		0.884314, -0.202754, 0.420570,
		0.075499, -0.826833, -0.557357,
		23.625731, 39.524750, 12.678560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.927176, 40.061756, 12.552632>,  <23.572882, 40.103535, 13.068710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.927176, 40.061756, 12.552632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.009718, 40.195423, 12.920491>,  <23.059244, 40.275623, 13.141207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.009718, 40.195423, 12.920491>,  <22.927176, 40.061756, 12.552632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.009718, 40.195423, 12.920491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536916, -0.824409, 0.179082,
		0.818008, 0.456819, -0.349540,
		0.206356, 0.334165, 0.919647,
		23.071625, 40.295673, 13.196385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.269463, 40.151169, 12.998257>,  <22.927176, 40.061756, 12.552632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.269463, 40.151169, 12.998257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.874863, 40.201782, 12.956679>,  <21.638102, 40.232151, 12.931733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.874863, 40.201782, 12.956679>,  <22.269463, 40.151169, 12.998257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.874863, 40.201782, 12.956679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133049, -0.249313, 0.959240,
		0.095463, 0.960121, 0.262783,
		-0.986501, 0.126535, -0.103943,
		21.578913, 40.239742, 12.925496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.845592, 40.729553, 13.250547>,  <22.269463, 40.151169, 12.998257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.845592, 40.729553, 13.250547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.614851, 40.402893, 13.243350>,  <21.476406, 40.206898, 13.239032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.614851, 40.402893, 13.243350>,  <21.845592, 40.729553, 13.250547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.614851, 40.402893, 13.243350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109726, 0.055641, 0.992403,
		-0.809443, 0.574448, -0.121704,
		-0.576856, -0.816648, -0.017993,
		21.441793, 40.157898, 13.237952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.390026, 40.968365, 13.687126>,  <21.845592, 40.729553, 13.250547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.390026, 40.968365, 13.687126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.340302, 40.574783, 13.635924>,  <21.310467, 40.338634, 13.605204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.340302, 40.574783, 13.635924>,  <21.390026, 40.968365, 13.687126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.340302, 40.574783, 13.635924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236043, -0.095976, 0.966991,
		-0.963758, 0.150424, -0.220324,
		-0.124313, -0.983952, -0.128004,
		21.303007, 40.279598, 13.597523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.648289, 40.658295, 13.855614>,  <21.390026, 40.968365, 13.687126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.648289, 40.658295, 13.855614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.956831, 40.415325, 13.931552>,  <21.141956, 40.269543, 13.977115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.956831, 40.415325, 13.931552>,  <20.648289, 40.658295, 13.855614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.956831, 40.415325, 13.931552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406877, -0.241327, 0.881029,
		-0.489346, -0.756832, -0.433297,
		0.771357, -0.607427, 0.189845,
		21.188238, 40.233097, 13.988505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.373714, 40.063766, 14.279041>,  <20.648289, 40.658295, 13.855614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.373714, 40.063766, 14.279041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.768248, 40.056923, 14.344588>,  <21.004969, 40.052818, 14.383917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.768248, 40.056923, 14.344588>,  <20.373714, 40.063766, 14.279041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.768248, 40.056923, 14.344588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156615, -0.406175, 0.900274,
		0.051160, -0.913635, -0.403304,
		0.986334, -0.017105, 0.163869,
		21.064148, 40.051792, 14.393749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.610262, 39.429432, 14.247502>,  <20.373714, 40.063766, 14.279041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.610262, 39.429432, 14.247502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.852709, 39.632713, 14.492238>,  <20.998177, 39.754681, 14.639079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.852709, 39.632713, 14.492238>,  <20.610262, 39.429432, 14.247502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.852709, 39.632713, 14.492238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270688, -0.591526, 0.759490,
		0.747896, -0.625959, -0.220970,
		0.606119, 0.508205, 0.611840,
		21.034544, 39.785175, 14.675790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.744120, 38.987049, 14.721750>,  <20.610262, 39.429432, 14.247502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.744120, 38.987049, 14.721750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.878159, 39.320110, 14.898114>,  <20.958582, 39.519947, 15.003933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.878159, 39.320110, 14.898114>,  <20.744120, 38.987049, 14.721750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.878159, 39.320110, 14.898114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147277, -0.415923, 0.897395,
		0.930602, -0.365649, -0.016743,
		0.335096, 0.832651, 0.440910,
		20.978687, 39.569904, 15.030387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.132320, 38.772915, 15.272965>,  <20.744120, 38.987049, 14.721750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.132320, 38.772915, 15.272965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.078140, 39.159245, 15.361360>,  <21.045631, 39.391041, 15.414396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.078140, 39.159245, 15.361360>,  <21.132320, 38.772915, 15.272965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.078140, 39.159245, 15.361360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080146, -0.232992, 0.969170,
		0.987537, 0.113566, 0.108966,
		-0.135453, 0.965825, 0.220986,
		21.037504, 39.448994, 15.427655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.419466, 38.827850, 15.964454>,  <21.132320, 38.772915, 15.272965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.419466, 38.827850, 15.964454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.198122, 39.159382, 15.931399>,  <21.065315, 39.358303, 15.911567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.198122, 39.159382, 15.931399>,  <21.419466, 38.827850, 15.964454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.198122, 39.159382, 15.931399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321979, -0.121353, 0.938937,
		0.768193, 0.546179, 0.334018,
		-0.553362, 0.828832, -0.082635,
		21.032114, 39.408031, 15.906609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.550783, 39.200184, 16.642166>,  <21.419466, 38.827850, 15.964454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.550783, 39.200184, 16.642166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.208347, 39.334305, 16.484844>,  <21.002886, 39.414776, 16.390451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.208347, 39.334305, 16.484844>,  <21.550783, 39.200184, 16.642166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.208347, 39.334305, 16.484844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418453, -0.003047, 0.908233,
		0.303334, 0.942106, 0.142916,
		-0.856088, 0.335301, -0.393303,
		20.951521, 39.434895, 16.366854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.327309, 39.701534, 17.247566>,  <21.550783, 39.200184, 16.642166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.327309, 39.701534, 17.247566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.012266, 39.616276, 17.016312>,  <20.823240, 39.565121, 16.877558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.012266, 39.616276, 17.016312>,  <21.327309, 39.701534, 17.247566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.012266, 39.616276, 17.016312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593586, 0.010719, 0.804699,
		-0.165323, 0.976961, -0.134965,
		-0.787606, -0.213149, -0.578139,
		20.775984, 39.552330, 16.842871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.900032, 40.029633, 17.554043>,  <21.327309, 39.701534, 17.247566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.900032, 40.029633, 17.554043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.657471, 39.787659, 17.347614>,  <20.511934, 39.642475, 17.223757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.657471, 39.787659, 17.347614>,  <20.900032, 40.029633, 17.554043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.657471, 39.787659, 17.347614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545023, -0.156363, 0.823711,
		-0.578985, 0.780772, -0.234885,
		-0.606404, -0.604934, -0.516071,
		20.475550, 39.606178, 17.192793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.239090, 40.244759, 17.751646>,  <20.900032, 40.029633, 17.554043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.239090, 40.244759, 17.751646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.189999, 39.875771, 17.605228>,  <20.160543, 39.654377, 17.517378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.189999, 39.875771, 17.605228>,  <20.239090, 40.244759, 17.751646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.189999, 39.875771, 17.605228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593283, -0.227478, 0.772184,
		-0.795583, 0.311938, -0.519367,
		-0.122729, -0.922468, -0.366046,
		20.153179, 39.599030, 17.495415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.518251, 40.139732, 17.841990>,  <20.239090, 40.244759, 17.751646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.518251, 40.139732, 17.841990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.711525, 39.792187, 17.798889>,  <19.827490, 39.583660, 17.773029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.711525, 39.792187, 17.798889>,  <19.518251, 40.139732, 17.841990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.711525, 39.792187, 17.798889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421569, -0.338752, 0.841146,
		-0.767341, -0.361006, -0.529965,
		0.483185, -0.868863, -0.107749,
		19.856480, 39.531528, 17.766565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.013227, 39.628963, 18.003922>,  <19.518251, 40.139732, 17.841990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.013227, 39.628963, 18.003922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.363466, 39.440201, 18.045181>,  <19.573608, 39.326942, 18.069937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.363466, 39.440201, 18.045181>,  <19.013227, 39.628963, 18.003922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.363466, 39.440201, 18.045181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368035, -0.513425, 0.775207,
		-0.312861, -0.716731, -0.623229,
		0.875596, -0.471902, 0.103151,
		19.626144, 39.298630, 18.076126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.850906, 38.949047, 18.022243>,  <19.013227, 39.628963, 18.003922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.850906, 38.949047, 18.022243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.211973, 38.975163, 18.192387>,  <19.428614, 38.990829, 18.294472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.211973, 38.975163, 18.192387>,  <18.850906, 38.949047, 18.022243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.211973, 38.975163, 18.192387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322121, -0.552926, 0.768447,
		0.285361, -0.830669, -0.478078,
		0.902667, 0.065286, 0.425359,
		19.482773, 38.994747, 18.319994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.028313, 38.275375, 18.170332>,  <18.850906, 38.949047, 18.022243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.028313, 38.275375, 18.170332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.261374, 38.494740, 18.410252>,  <19.401211, 38.626358, 18.554203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.261374, 38.494740, 18.410252>,  <19.028313, 38.275375, 18.170332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.261374, 38.494740, 18.410252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384394, -0.464292, 0.797919,
		0.716070, -0.695470, -0.059715,
		0.582653, 0.548411, 0.599800,
		19.436169, 38.659264, 18.590191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.249487, 37.764759, 18.721464>,  <19.028313, 38.275375, 18.170332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.249487, 37.764759, 18.721464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.339092, 38.128986, 18.860428>,  <19.392855, 38.347523, 18.943806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.339092, 38.128986, 18.860428>,  <19.249487, 37.764759, 18.721464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.339092, 38.128986, 18.860428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138647, -0.323065, 0.936165,
		0.964674, -0.257881, 0.053876,
		0.224013, 0.910564, 0.347407,
		19.406296, 38.402157, 18.964649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.879009, 37.730125, 19.262407>,  <19.249487, 37.764759, 18.721464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.879009, 37.730125, 19.262407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.675089, 38.063591, 19.347363>,  <19.552736, 38.263672, 19.398336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.675089, 38.063591, 19.347363>,  <19.879009, 37.730125, 19.262407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.675089, 38.063591, 19.347363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055446, -0.278205, 0.958920,
		0.858505, 0.477080, 0.188052,
		-0.509799, 0.833664, 0.212388,
		19.522150, 38.313690, 19.411079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.234419, 38.056927, 19.898159>,  <19.879009, 37.730125, 19.262407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.234419, 38.056927, 19.898159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.865807, 38.209396, 19.868530>,  <19.644638, 38.300877, 19.850754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.865807, 38.209396, 19.868530>,  <20.234419, 38.056927, 19.898159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.865807, 38.209396, 19.868530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076360, 0.009139, 0.997038,
		0.380721, 0.924459, 0.020685,
		-0.921532, 0.381173, -0.074071,
		19.589348, 38.323750, 19.846310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.224792, 38.572731, 20.448406>,  <20.234419, 38.056927, 19.898159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.224792, 38.572731, 20.448406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.832659, 38.573048, 20.369465>,  <19.597380, 38.573238, 20.322100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.832659, 38.573048, 20.369465>,  <20.224792, 38.572731, 20.448406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.832659, 38.573048, 20.369465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197018, 0.054289, 0.978896,
		0.011492, 0.998525, -0.053065,
		-0.980332, 0.000795, -0.197351,
		19.538559, 38.573284, 20.310259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.879957, 39.136791, 20.766729>,  <20.224792, 38.572731, 20.448406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.879957, 39.136791, 20.766729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.628359, 38.827999, 20.730061>,  <19.477400, 38.642723, 20.708059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.628359, 38.827999, 20.730061>,  <19.879957, 39.136791, 20.766729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.628359, 38.827999, 20.730061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175498, 0.026129, 0.984133,
		-0.757339, 0.635106, -0.151916,
		-0.628998, -0.771983, -0.091671,
		19.439659, 38.596405, 20.702559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.346558, 39.306141, 21.280777>,  <19.879957, 39.136791, 20.766729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.346558, 39.306141, 21.280777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.265959, 38.925438, 21.188206>,  <19.217600, 38.697018, 21.132664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.265959, 38.925438, 21.188206>,  <19.346558, 39.306141, 21.280777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.265959, 38.925438, 21.188206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175933, -0.197264, 0.964435,
		-0.963559, 0.235046, -0.127698,
		-0.201496, -0.951756, -0.231428,
		19.205509, 38.639912, 21.118778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.619116, 39.134651, 21.536516>,  <19.346558, 39.306141, 21.280777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.619116, 39.134651, 21.536516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.806919, 38.783249, 21.501225>,  <18.919601, 38.572407, 21.480049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.806919, 38.783249, 21.501225>,  <18.619116, 39.134651, 21.536516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.806919, 38.783249, 21.501225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086425, -0.145177, 0.985624,
		-0.878688, -0.455133, -0.144087,
		0.469508, -0.878509, -0.088231,
		18.947771, 38.519695, 21.474756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.196419, 38.658627, 21.888292>,  <18.619116, 39.134651, 21.536516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.196419, 38.658627, 21.888292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.560066, 38.492138, 21.881798>,  <18.778254, 38.392242, 21.877901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.560066, 38.492138, 21.881798>,  <18.196419, 38.658627, 21.888292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.560066, 38.492138, 21.881798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110531, -0.278634, 0.954016,
		-0.401608, -0.865518, -0.299317,
		0.909117, -0.416224, -0.016235,
		18.832802, 38.367271, 21.876926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.062435, 37.985809, 22.267117>,  <18.196419, 38.658627, 21.888292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.062435, 37.985809, 22.267117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.441397, 38.113438, 22.257130>,  <18.668774, 38.190014, 22.251137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.441397, 38.113438, 22.257130>,  <18.062435, 37.985809, 22.267117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.441397, 38.113438, 22.257130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018454, 0.023421, 0.999555,
		0.319513, -0.947442, 0.016301,
		0.947402, 0.319070, -0.024968,
		18.725618, 38.209160, 22.249640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.578331, 37.558578, 22.531134>,  <18.062435, 37.985809, 22.267117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.578331, 37.558578, 22.531134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.703302, 37.936020, 22.574959>,  <18.778286, 38.162483, 22.601254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.703302, 37.936020, 22.574959>,  <18.578331, 37.558578, 22.531134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.703302, 37.936020, 22.574959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066602, -0.093296, 0.993408,
		0.947604, -0.317666, 0.033698,
		0.312428, 0.943602, 0.109564,
		18.797031, 38.219101, 22.607828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.124340, 37.523212, 23.094866>,  <18.578331, 37.558578, 22.531134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.124340, 37.523212, 23.094866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.980595, 37.895561, 23.068516>,  <18.894348, 38.118969, 23.052706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.980595, 37.895561, 23.068516>,  <19.124340, 37.523212, 23.094866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.980595, 37.895561, 23.068516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141046, 0.015600, 0.989880,
		0.922477, 0.365018, 0.125690,
		-0.359363, 0.930870, -0.065875,
		18.872786, 38.174824, 23.048754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.712978, 37.471691, 23.713816>,  <19.124340, 37.523212, 23.094866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.712978, 37.471691, 23.713816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.315702, 37.440456, 23.679222>,  <18.077337, 37.421715, 23.658466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.315702, 37.440456, 23.679222>,  <18.712978, 37.471691, 23.713816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.315702, 37.440456, 23.679222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091388, -0.061588, -0.993909,
		0.072282, -0.995043, 0.068305,
		-0.993189, -0.078084, -0.086483,
		18.017746, 37.417030, 23.653276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.626757, 36.953732, 23.174023>,  <18.712978, 37.471691, 23.713816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.626757, 36.953732, 23.174023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.330776, 37.222191, 23.192085>,  <18.153189, 37.383266, 23.202923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.330776, 37.222191, 23.192085>,  <18.626757, 36.953732, 23.174023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.330776, 37.222191, 23.192085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155905, 0.236417, -0.959062,
		-0.654346, -0.702617, -0.279572,
		-0.739949, 0.671145, 0.045157,
		18.108791, 37.423534, 23.205633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<31.765947, 26.645620, 16.603689> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.115101, 26.655575, 16.798607>,  <32.324593, 26.661547, 16.915558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.115101, 26.655575, 16.798607>,  <31.765947, 26.645620, 16.603689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.115101, 26.655575, 16.798607> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203237, 0.926482, 0.316742,
		-0.443586, -0.375515, 0.813769,
		0.872883, 0.024886, 0.487294,
		32.376965, 26.663040, 16.944796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.582193, 26.982733, 17.258039>,  <31.765947, 26.645620, 16.603689>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.582193, 26.982733, 17.258039> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.980532, 27.018398, 17.250618>,  <32.219536, 27.039797, 17.246164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.980532, 27.018398, 17.250618>,  <31.582193, 26.982733, 17.258039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.980532, 27.018398, 17.250618> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080845, 0.959265, 0.270692,
		0.041934, -0.268067, 0.962487,
		0.995844, 0.089163, -0.018554,
		32.279285, 27.045147, 17.245052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.713167, 27.370131, 17.795225>,  <31.582193, 26.982733, 17.258039>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.713167, 27.370131, 17.795225> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.031326, 27.413837, 17.556763>,  <32.222221, 27.440062, 17.413685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.031326, 27.413837, 17.556763>,  <31.713167, 27.370131, 17.795225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.031326, 27.413837, 17.556763> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009570, 0.985757, 0.167904,
		0.606010, -0.127845, 0.785117,
		0.795400, 0.109265, -0.596155,
		32.269947, 27.446617, 17.377916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.105507, 27.797146, 18.182940>,  <31.713167, 27.370131, 17.795225>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.105507, 27.797146, 18.182940> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.223614, 27.855900, 17.805317>,  <32.294479, 27.891153, 17.578743>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.223614, 27.855900, 17.805317>,  <32.105507, 27.797146, 18.182940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.223614, 27.855900, 17.805317> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116588, 0.986266, 0.116990,
		0.948274, 0.075523, 0.308339,
		0.295269, 0.146887, -0.944055,
		32.312195, 27.899965, 17.522100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.464890, 28.376535, 18.277817>,  <32.105507, 27.797146, 18.182940>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.464890, 28.376535, 18.277817> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.374317, 28.356365, 17.888729>,  <32.319973, 28.344263, 17.655275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.374317, 28.356365, 17.888729>,  <32.464890, 28.376535, 18.277817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.374317, 28.356365, 17.888729> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181143, 0.983417, -0.008814,
		0.957035, 0.174205, -0.231812,
		-0.226433, -0.050426, -0.972721,
		32.306389, 28.341238, 17.596912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.713242, 29.003790, 18.019081>,  <32.464890, 28.376535, 18.277817>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.713242, 29.003790, 18.019081> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.429413, 28.876541, 17.767586>,  <32.259117, 28.800192, 17.616688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.429413, 28.876541, 17.767586>,  <32.713242, 29.003790, 18.019081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.429413, 28.876541, 17.767586> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355111, 0.932135, -0.070865,
		0.608612, 0.172988, -0.774382,
		-0.709569, -0.318120, -0.628738,
		32.216541, 28.781105, 17.578964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.678036, 29.438629, 17.491636>,  <32.713242, 29.003790, 18.019081>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.678036, 29.438629, 17.491636> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.320274, 29.261162, 17.469002>,  <32.105618, 29.154682, 17.455421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.320274, 29.261162, 17.469002>,  <32.678036, 29.438629, 17.491636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.320274, 29.261162, 17.469002> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436631, 0.893547, -0.104531,
		0.096938, -0.068786, -0.992911,
		-0.894403, -0.443669, -0.056584,
		32.051952, 29.128061, 17.452026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.276455, 29.900822, 17.059700>,  <32.678036, 29.438629, 17.491636>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.276455, 29.900822, 17.059700> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.992781, 29.701595, 17.259293>,  <31.822575, 29.582060, 17.379047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.992781, 29.701595, 17.259293>,  <32.276455, 29.900822, 17.059700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.992781, 29.701595, 17.259293> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518167, 0.848157, 0.110148,
		-0.478074, -0.180439, -0.859585,
		-0.709188, -0.498068, 0.498980,
		31.780024, 29.552176, 17.408987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.679817, 30.248161, 16.892616>,  <32.276455, 29.900822, 17.059700>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.679817, 30.248161, 16.892616> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.573174, 30.053871, 17.225601>,  <31.509188, 29.937298, 17.425392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.573174, 30.053871, 17.225601>,  <31.679817, 30.248161, 16.892616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.573174, 30.053871, 17.225601> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499841, 0.808173, 0.311472,
		-0.824062, -0.333056, -0.458252,
		-0.266609, -0.485726, 0.832460,
		31.493191, 29.908154, 17.475340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.944187, 30.334698, 16.856382>,  <31.679817, 30.248161, 16.892616>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.944187, 30.334698, 16.856382> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.131489, 30.298363, 17.207947>,  <31.243870, 30.276562, 17.418886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.131489, 30.298363, 17.207947>,  <30.944187, 30.334698, 16.856382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.131489, 30.298363, 17.207947> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468642, 0.817735, 0.334191,
		-0.749075, -0.568382, 0.340336,
		0.468252, -0.090838, 0.878913,
		31.271965, 30.271111, 17.471621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.423988, 30.607977, 17.245668>,  <30.944187, 30.334698, 16.856382>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.423988, 30.607977, 17.245668> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.759602, 30.643463, 17.460388>,  <30.960970, 30.664755, 17.589220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.759602, 30.643463, 17.460388>,  <30.423988, 30.607977, 17.245668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.759602, 30.643463, 17.460388> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375239, 0.808781, 0.452845,
		-0.393981, -0.581380, 0.711882,
		0.839032, 0.088713, 0.536801,
		31.011311, 30.670076, 17.621429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.261326, 30.549784, 17.953341>,  <30.423988, 30.607977, 17.245668>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.261326, 30.549784, 17.953341> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.614733, 30.736435, 17.937061>,  <30.826777, 30.848425, 17.927294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.614733, 30.736435, 17.937061>,  <30.261326, 30.549784, 17.953341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.614733, 30.736435, 17.937061> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350207, 0.715778, 0.604166,
		0.311053, -0.519538, 0.795818,
		0.883517, 0.466628, -0.040699,
		30.879787, 30.876423, 17.924852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.208481, 30.736877, 18.611929>,  <30.261326, 30.549784, 17.953341>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.208481, 30.736877, 18.611929> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.492641, 30.958138, 18.437870>,  <30.663137, 31.090893, 18.333435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.492641, 30.958138, 18.437870>,  <30.208481, 30.736877, 18.611929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.492641, 30.958138, 18.437870> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431273, 0.830745, 0.351946,
		0.556176, -0.062356, 0.828722,
		0.710403, 0.553149, -0.435148,
		30.705763, 31.124083, 18.307325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.571304, 31.154095, 19.048792>,  <30.208481, 30.736877, 18.611929>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.571304, 31.154095, 19.048792> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.624193, 31.336243, 18.696621>,  <30.655926, 31.445532, 18.485317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.624193, 31.336243, 18.696621>,  <30.571304, 31.154095, 19.048792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.624193, 31.336243, 18.696621> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465028, 0.812909, 0.350611,
		0.875366, 0.363065, 0.319245,
		0.132223, 0.455371, -0.880429,
		30.663860, 31.472855, 18.432493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.740929, 31.819113, 19.205900>,  <30.571304, 31.154095, 19.048792>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.740929, 31.819113, 19.205900> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.627287, 31.836224, 18.822765>,  <30.559103, 31.846491, 18.592884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.627287, 31.836224, 18.822765>,  <30.740929, 31.819113, 19.205900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.627287, 31.836224, 18.822765> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603990, 0.767879, 0.213441,
		0.744635, 0.639165, -0.192320,
		-0.284103, 0.042776, -0.957839,
		30.542055, 31.849056, 18.535414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.853745, 32.563732, 19.066235>,  <30.740929, 31.819113, 19.205900>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.853745, 32.563732, 19.066235> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.601845, 32.420593, 18.790447>,  <30.450705, 32.334709, 18.624975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.601845, 32.420593, 18.790447>,  <30.853745, 32.563732, 19.066235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.601845, 32.420593, 18.790447> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599176, 0.788641, 0.137959,
		0.494375, 0.499992, -0.711056,
		-0.629747, -0.357844, -0.689468,
		30.412920, 32.313240, 18.583607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.707640, 33.184284, 18.768667>,  <30.853745, 32.563732, 19.066235>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.707640, 33.184284, 18.768667> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.429932, 32.915638, 18.665192>,  <30.263308, 32.754448, 18.603107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.429932, 32.915638, 18.665192>,  <30.707640, 33.184284, 18.768667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.429932, 32.915638, 18.665192> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719685, 0.644556, 0.258070,
		-0.006586, 0.365343, -0.930850,
		-0.694269, -0.671618, -0.258687,
		30.221651, 32.714153, 18.587585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.192488, 33.507881, 18.341326>,  <30.707640, 33.184284, 18.768667>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.192488, 33.507881, 18.341326> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.977457, 33.211056, 18.501503>,  <29.848438, 33.032959, 18.597609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.977457, 33.211056, 18.501503>,  <30.192488, 33.507881, 18.341326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.977457, 33.211056, 18.501503> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713913, 0.653256, 0.252162,
		-0.448711, -0.150324, -0.880943,
		-0.537575, -0.742065, 0.400441,
		29.816185, 32.988438, 18.621635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.600830, 33.684742, 18.168184>,  <30.192488, 33.507881, 18.341326>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.600830, 33.684742, 18.168184> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.519140, 33.423336, 18.459721>,  <29.470125, 33.266491, 18.634642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.519140, 33.423336, 18.459721>,  <29.600830, 33.684742, 18.168184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.519140, 33.423336, 18.459721> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.913540, 0.394769, 0.097991,
		-0.351762, -0.645811, -0.677637,
		-0.204226, -0.653518, 0.728839,
		29.457872, 33.227280, 18.678371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.926470, 33.470016, 18.049675>,  <29.600830, 33.684742, 18.168184>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.926470, 33.470016, 18.049675> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.990784, 33.371719, 18.432037>,  <29.029371, 33.312740, 18.661455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.990784, 33.371719, 18.432037>,  <28.926470, 33.470016, 18.049675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.990784, 33.371719, 18.432037> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.910729, 0.336359, 0.239656,
		-0.380421, -0.909106, -0.169723,
		0.160785, -0.245742, 0.955907,
		29.039019, 33.297997, 18.718809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.314459, 33.076008, 18.249632>,  <28.926470, 33.470016, 18.049675>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.314459, 33.076008, 18.249632> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.480345, 33.189926, 18.595325>,  <28.579876, 33.258278, 18.802742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.480345, 33.189926, 18.595325>,  <28.314459, 33.076008, 18.249632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.480345, 33.189926, 18.595325> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.899083, 0.274595, 0.340950,
		-0.140214, -0.918417, 0.369933,
		0.414716, 0.284794, 0.864235,
		28.604759, 33.275364, 18.854595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.921431, 32.754288, 18.812260>,  <28.314459, 33.076008, 18.249632>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.921431, 32.754288, 18.812260> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.102634, 33.072838, 18.972542>,  <28.211357, 33.263969, 19.068712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.102634, 33.072838, 18.972542>,  <27.921431, 32.754288, 18.812260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.102634, 33.072838, 18.972542> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.874612, 0.309921, 0.372831,
		0.172726, -0.519362, 0.836917,
		0.453012, 0.796375, 0.400709,
		28.238539, 33.311752, 19.092754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.537962, 32.809608, 19.452497>,  <27.921431, 32.754288, 18.812260>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.537962, 32.809608, 19.452497> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.706631, 33.154003, 19.338726>,  <27.807831, 33.360638, 19.270462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.706631, 33.154003, 19.338726>,  <27.537962, 32.809608, 19.452497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.706631, 33.154003, 19.338726> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730091, 0.508407, 0.456607,
		0.537739, 0.015125, 0.842976,
		0.421669, 0.860984, -0.284433,
		27.833132, 33.412300, 19.253397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.285933, 32.509277, 20.041759>,  <27.537962, 32.809608, 19.452497>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.285933, 32.509277, 20.041759> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.919619, 32.369373, 19.962765>,  <26.699829, 32.285431, 19.915367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.919619, 32.369373, 19.962765>,  <27.285933, 32.509277, 20.041759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.919619, 32.369373, 19.962765> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401319, -0.817144, -0.413785,
		-0.016651, -0.458196, 0.888695,
		-0.915787, -0.349761, -0.197489,
		26.644882, 32.264446, 19.903519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.315317, 31.844912, 20.310345>,  <27.285933, 32.509277, 20.041759>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.315317, 31.844912, 20.310345> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.025673, 31.875523, 20.036175>,  <26.851887, 31.893888, 19.871672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.025673, 31.875523, 20.036175>,  <27.315317, 31.844912, 20.310345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.025673, 31.875523, 20.036175> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393821, -0.769991, -0.502015,
		-0.566189, -0.633450, 0.527420,
		-0.724110, 0.076526, -0.685426,
		26.808439, 31.898479, 19.830547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.887108, 31.204195, 20.351583>,  <27.315317, 31.844912, 20.310345>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.887108, 31.204195, 20.351583> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.846804, 31.365093, 19.987595>,  <26.822622, 31.461632, 19.769201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.846804, 31.365093, 19.987595>,  <26.887108, 31.204195, 20.351583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.846804, 31.365093, 19.987595> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274791, -0.867796, -0.414028,
		-0.956210, -0.291769, -0.023095,
		-0.100759, 0.402244, -0.909971,
		26.816576, 31.485765, 19.714603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.557966, 30.656397, 19.974926>,  <26.887108, 31.204195, 20.351583>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.557966, 30.656397, 19.974926> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.687742, 30.903114, 19.688065>,  <26.765608, 31.051144, 19.515947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.687742, 30.903114, 19.688065>,  <26.557966, 30.656397, 19.974926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.687742, 30.903114, 19.688065> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257502, -0.787121, -0.560477,
		-0.910183, -0.002828, -0.414197,
		0.324439, 0.616793, -0.717152,
		26.785074, 31.088152, 19.472919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.285070, 30.423931, 19.411350>,  <26.557966, 30.656397, 19.974926>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.285070, 30.423931, 19.411350> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.593861, 30.623611, 19.253948>,  <26.779135, 30.743420, 19.159506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.593861, 30.623611, 19.253948>,  <26.285070, 30.423931, 19.411350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.593861, 30.623611, 19.253948> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282435, -0.823975, -0.491218,
		-0.569457, 0.268070, -0.777083,
		0.771978, 0.499203, -0.393506,
		26.825455, 30.773373, 19.135897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.386166, 30.235579, 18.663940>,  <26.285070, 30.423931, 19.411350>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.386166, 30.235579, 18.663940> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.736755, 30.383499, 18.787254>,  <26.947109, 30.472252, 18.861242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.736755, 30.383499, 18.787254>,  <26.386166, 30.235579, 18.663940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.736755, 30.383499, 18.787254> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471093, -0.790836, -0.390704,
		0.099317, 0.487672, -0.867359,
		0.876474, 0.369803, 0.308283,
		26.999699, 30.494440, 18.879740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.775934, 29.974869, 18.230814>,  <26.386166, 30.235579, 18.663940>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.775934, 29.974869, 18.230814> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.050766, 30.141491, 18.468941>,  <27.215666, 30.241465, 18.611816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.050766, 30.141491, 18.468941>,  <26.775934, 29.974869, 18.230814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.050766, 30.141491, 18.468941> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587608, -0.800485, -0.118067,
		0.427363, 0.430936, -0.794768,
		0.687079, 0.416554, 0.595319,
		27.256889, 30.266457, 18.647537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.407347, 30.130348, 17.862930>,  <26.775934, 29.974869, 18.230814>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.407347, 30.130348, 17.862930> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.531754, 30.103596, 18.242149>,  <27.606398, 30.087543, 18.469681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.531754, 30.103596, 18.242149>,  <27.407347, 30.130348, 17.862930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.531754, 30.103596, 18.242149> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578265, -0.778314, -0.244615,
		0.754240, 0.624303, -0.203393,
		0.311017, -0.066883, 0.948048,
		27.625059, 30.083530, 18.526564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.090853, 30.008999, 17.836880>,  <27.407347, 30.130348, 17.862930>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.090853, 30.008999, 17.836880> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.002708, 29.893700, 18.209621>,  <27.949821, 29.824520, 18.433266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.002708, 29.893700, 18.209621>,  <28.090853, 30.008999, 17.836880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.002708, 29.893700, 18.209621> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685336, -0.725552, -0.062370,
		0.694087, 0.624889, 0.357430,
		-0.220360, -0.288250, 0.931855,
		27.936600, 29.807224, 18.489178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.758299, 30.088902, 18.214937>,  <28.090853, 30.008999, 17.836880>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.758299, 30.088902, 18.214937> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.515131, 29.829807, 18.398621>,  <28.369230, 29.674351, 18.508831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.515131, 29.829807, 18.398621>,  <28.758299, 30.088902, 18.214937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.515131, 29.829807, 18.398621> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644721, -0.740260, -0.190659,
		0.463429, 0.180155, 0.867628,
		-0.607921, -0.647734, 0.459207,
		28.332754, 29.635487, 18.536383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.114697, 29.753906, 18.788874>,  <28.758299, 30.088902, 18.214937>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.114697, 29.753906, 18.788874> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.822401, 29.495834, 18.699642>,  <28.647024, 29.340992, 18.646103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.822401, 29.495834, 18.699642>,  <29.114697, 29.753906, 18.788874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.822401, 29.495834, 18.699642> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672915, -0.735776, -0.076281,
		-0.114921, -0.205854, 0.971811,
		-0.730738, -0.645181, -0.223079,
		28.603180, 29.302280, 18.632719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.240299, 29.177414, 19.186136>,  <29.114697, 29.753906, 18.788874>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.240299, 29.177414, 19.186136> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.003733, 29.059814, 18.885792>,  <28.861794, 28.989254, 18.705585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.003733, 29.059814, 18.885792>,  <29.240299, 29.177414, 19.186136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.003733, 29.059814, 18.885792> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533384, -0.840982, -0.090834,
		-0.604754, -0.454217, 0.654186,
		-0.591417, -0.294000, -0.750859,
		28.826307, 28.971615, 18.660534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.215042, 28.522001, 19.298872>,  <29.240299, 29.177414, 19.186136>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.215042, 28.522001, 19.298872> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.071070, 28.539787, 18.926105>,  <28.984686, 28.550459, 18.702446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.071070, 28.539787, 18.926105>,  <29.215042, 28.522001, 19.298872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.071070, 28.539787, 18.926105> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251023, -0.957415, -0.142635,
		-0.898575, -0.285272, 0.333443,
		-0.359933, 0.044467, -0.931918,
		28.963089, 28.553127, 18.646530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.785128, 27.997082, 19.216402>,  <29.215042, 28.522001, 19.298872>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.785128, 27.997082, 19.216402> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.879139, 28.072903, 18.835072>,  <28.935545, 28.118395, 18.606274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.879139, 28.072903, 18.835072>,  <28.785128, 27.997082, 19.216402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.879139, 28.072903, 18.835072> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326595, -0.939176, -0.106224,
		-0.915477, -0.286386, -0.282639,
		0.235027, 0.189555, -0.953327,
		28.949646, 28.129768, 18.549074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.541473, 27.478510, 18.899162>,  <28.785128, 27.997082, 19.216402>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.541473, 27.478510, 18.899162> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.814512, 27.627899, 18.647900>,  <28.978334, 27.717533, 18.497143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.814512, 27.627899, 18.647900>,  <28.541473, 27.478510, 18.899162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.814512, 27.627899, 18.647900> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363787, -0.919135, -0.151160,
		-0.633816, -0.125334, -0.763262,
		0.682596, 0.373472, -0.628157,
		29.019291, 27.739941, 18.459452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.385302, 27.097452, 18.353317>,  <28.541473, 27.478510, 18.899162>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.385302, 27.097452, 18.353317> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.753464, 27.248001, 18.310982>,  <28.974361, 27.338329, 18.285580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.753464, 27.248001, 18.310982>,  <28.385302, 27.097452, 18.353317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.753464, 27.248001, 18.310982> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356670, -0.919185, -0.166989,
		-0.160137, 0.115947, -0.980262,
		0.920404, 0.376371, -0.105840,
		29.029585, 27.360912, 18.279230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.688602, 26.657429, 17.895067>,  <28.385302, 27.097452, 18.353317>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.688602, 26.657429, 17.895067> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.017904, 26.847084, 18.019936>,  <29.215485, 26.960876, 18.094856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.017904, 26.847084, 18.019936>,  <28.688602, 26.657429, 17.895067>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.017904, 26.847084, 18.019936> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530763, -0.837949, -0.127012,
		0.201362, 0.270252, -0.941497,
		0.823252, 0.474136, 0.312171,
		29.264879, 26.989325, 18.113586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<29.300375, 26.788740, 17.332439> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.473921, 26.787582, 17.692829>,  <29.578049, 26.786888, 17.909063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.473921, 26.787582, 17.692829>,  <29.300375, 26.788740, 17.332439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.473921, 26.787582, 17.692829> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633688, -0.709877, -0.307433,
		0.640471, 0.704320, -0.306153,
		0.433863, -0.002897, 0.900974,
		29.604080, 26.786713, 17.963121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.986393, 26.947977, 17.267517>,  <29.300375, 26.788740, 17.332439>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.986393, 26.947977, 17.267517> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.965670, 26.761791, 17.620937>,  <29.953236, 26.650080, 17.832989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.965670, 26.761791, 17.620937>,  <29.986393, 26.947977, 17.267517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.965670, 26.761791, 17.620937> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560194, -0.745977, -0.360141,
		0.826740, 0.476301, 0.299397,
		-0.051808, -0.465463, 0.883550,
		29.950127, 26.622152, 17.886002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.587847, 26.721891, 17.333635>,  <29.986393, 26.947977, 17.267517>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.587847, 26.721891, 17.333635> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.369902, 26.525116, 17.605259>,  <30.239134, 26.407051, 17.768234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.369902, 26.525116, 17.605259>,  <30.587847, 26.721891, 17.333635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.369902, 26.525116, 17.605259> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512340, -0.836392, -0.194824,
		0.663802, 0.241758, 0.707757,
		-0.544862, -0.491937, 0.679061,
		30.206444, 26.377535, 17.808977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.033665, 26.236450, 17.606661>,  <30.587847, 26.721891, 17.333635>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.033665, 26.236450, 17.606661> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.694534, 26.066628, 17.733746>,  <30.491056, 25.964733, 17.809996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.694534, 26.066628, 17.733746>,  <31.033665, 26.236450, 17.606661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.694534, 26.066628, 17.733746> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394367, -0.905364, -0.157448,
		0.354490, -0.008194, 0.935024,
		-0.847827, -0.424557, 0.317712,
		30.440186, 25.939260, 17.829060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.234167, 25.753660, 18.161587>,  <31.033665, 26.236450, 17.606661>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.234167, 25.753660, 18.161587> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.877441, 25.628975, 18.030437>,  <30.663406, 25.554163, 17.951748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.877441, 25.628975, 18.030437>,  <31.234167, 25.753660, 18.161587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.877441, 25.628975, 18.030437> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387842, -0.899904, -0.199377,
		-0.232908, -0.304971, 0.923443,
		-0.891814, -0.311713, -0.327875,
		30.609898, 25.535461, 17.932076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.125044, 25.090227, 18.520628>,  <31.234167, 25.753660, 18.161587>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.125044, 25.090227, 18.520628> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.890720, 25.116665, 18.197529>,  <30.750126, 25.132526, 18.003670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.890720, 25.116665, 18.197529>,  <31.125044, 25.090227, 18.520628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.890720, 25.116665, 18.197529> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178813, -0.961567, -0.208361,
		-0.790476, -0.266496, 0.551478,
		-0.585810, 0.066093, -0.807749,
		30.714977, 25.136494, 17.955204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.016130, 24.395973, 18.456234>,  <31.125044, 25.090227, 18.520628>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.016130, 24.395973, 18.456234> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.875835, 24.568619, 18.123802>,  <30.791658, 24.672205, 17.924343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.875835, 24.568619, 18.123802>,  <31.016130, 24.395973, 18.456234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.875835, 24.568619, 18.123802> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024339, -0.891358, -0.452645,
		-0.936158, -0.138531, 0.323137,
		-0.350737, 0.431612, -0.831080,
		30.770615, 24.698103, 17.874477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.295628, 24.190222, 18.339489>,  <31.016130, 24.395973, 18.456234>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.295628, 24.190222, 18.339489> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.504339, 24.275845, 18.009174>,  <30.629566, 24.327217, 17.810986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.504339, 24.275845, 18.009174>,  <30.295628, 24.190222, 18.339489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.504339, 24.275845, 18.009174> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333739, -0.839636, -0.428521,
		-0.785088, 0.499191, -0.366666,
		0.521780, 0.214056, -0.825788,
		30.660873, 24.340061, 17.761438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.965811, 24.027521, 17.675858>,  <30.295628, 24.190222, 18.339489>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.965811, 24.027521, 17.675858> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.353514, 24.011627, 17.578732>,  <30.586136, 24.002090, 17.520456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.353514, 24.011627, 17.578732>,  <29.965811, 24.027521, 17.675858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.353514, 24.011627, 17.578732> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141792, -0.896732, -0.419245,
		-0.201082, 0.440786, -0.874799,
		0.969258, -0.039737, -0.242816,
		30.644291, 23.999706, 17.505886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.036516, 23.675053, 16.992710>,  <29.965811, 24.027521, 17.675858>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.036516, 23.675053, 16.992710> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.395842, 23.644436, 17.165764>,  <30.611437, 23.626066, 17.269596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.395842, 23.644436, 17.165764>,  <30.036516, 23.675053, 16.992710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.395842, 23.644436, 17.165764> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056262, -0.956559, -0.286059,
		0.435735, 0.281312, -0.854985,
		0.898315, -0.076543, 0.432633,
		30.665337, 23.621473, 17.295553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.404947, 23.265570, 16.537724>,  <30.036516, 23.675053, 16.992710>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.404947, 23.265570, 16.537724> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.596764, 23.254646, 16.888561>,  <30.711853, 23.248093, 17.099064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.596764, 23.254646, 16.888561>,  <30.404947, 23.265570, 16.537724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.596764, 23.254646, 16.888561> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031018, -0.998363, -0.048045,
		0.876970, 0.050245, -0.477911,
		0.479543, -0.027310, 0.877093,
		30.740627, 23.246452, 17.151690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.934437, 22.843893, 16.476904>,  <30.404947, 23.265570, 16.537724>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.934437, 22.843893, 16.476904> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.866135, 22.836674, 16.870964>,  <30.825153, 22.832342, 17.107399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.866135, 22.836674, 16.870964>,  <30.934437, 22.843893, 16.476904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.866135, 22.836674, 16.870964> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227745, -0.972035, -0.057283,
		0.958632, -0.234144, 0.161871,
		-0.170756, -0.018048, 0.985148,
		30.814907, 22.831259, 17.166508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.134897, 22.223158, 16.723629>,  <30.934437, 22.843893, 16.476904>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.134897, 22.223158, 16.723629> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.954548, 22.320713, 17.067078>,  <30.846338, 22.379246, 17.273148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.954548, 22.320713, 17.067078>,  <31.134897, 22.223158, 16.723629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.954548, 22.320713, 17.067078> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204454, -0.964590, 0.166626,
		0.868856, -0.100421, 0.484773,
		-0.450875, 0.243888, 0.858622,
		30.819286, 22.393879, 17.324663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.425682, 21.833002, 17.289778>,  <31.134897, 22.223158, 16.723629>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.425682, 21.833002, 17.289778> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.057053, 21.931160, 17.410099>,  <30.835875, 21.990055, 17.482292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.057053, 21.931160, 17.410099>,  <31.425682, 21.833002, 17.289778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.057053, 21.931160, 17.410099> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167217, -0.950224, 0.262894,
		0.350342, 0.191977, 0.916736,
		-0.921574, 0.245397, 0.300802,
		30.780581, 22.004780, 17.500340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.392347, 21.528767, 17.929525>,  <31.425682, 21.833002, 17.289778>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.392347, 21.528767, 17.929525> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.020094, 21.570156, 17.789120>,  <30.796741, 21.594990, 17.704876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.020094, 21.570156, 17.789120>,  <31.392347, 21.528767, 17.929525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.020094, 21.570156, 17.789120> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221314, -0.923041, 0.314669,
		-0.291441, 0.370526, 0.881914,
		-0.930636, 0.103473, -0.351014,
		30.740904, 21.601198, 17.683815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.067465, 21.089424, 18.406603>,  <31.392347, 21.528767, 17.929525>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.067465, 21.089424, 18.406603> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.824335, 21.165920, 18.098324>,  <30.678457, 21.211819, 17.913357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.824335, 21.165920, 18.098324>,  <31.067465, 21.089424, 18.406603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.824335, 21.165920, 18.098324> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406624, -0.908619, 0.095225,
		-0.682061, 0.371265, 0.630044,
		-0.607824, 0.191241, -0.770699,
		30.641989, 21.223293, 17.867115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.374664, 20.898161, 18.590431>,  <31.067465, 21.089424, 18.406603>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.374664, 20.898161, 18.590431> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.395819, 20.872753, 18.191799>,  <30.408512, 20.857508, 17.952620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.395819, 20.872753, 18.191799>,  <30.374664, 20.898161, 18.590431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.395819, 20.872753, 18.191799> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329253, -0.943278, 0.042650,
		-0.942760, 0.325871, -0.070792,
		0.052878, -0.063518, -0.996579,
		30.411684, 20.853697, 17.892826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.722651, 20.629509, 18.443443>,  <30.374664, 20.898161, 18.590431>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.722651, 20.629509, 18.443443> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.955481, 20.576866, 18.122478>,  <30.095179, 20.545280, 17.929899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.955481, 20.576866, 18.122478>,  <29.722651, 20.629509, 18.443443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.955481, 20.576866, 18.122478> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333588, -0.938599, -0.088041,
		-0.741558, 0.318922, -0.590238,
		0.582075, -0.131609, -0.802414,
		30.130102, 20.537384, 17.881754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.270668, 20.461058, 17.993196>,  <29.722651, 20.629509, 18.443443>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.270668, 20.461058, 17.993196> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.615042, 20.310604, 17.856194>,  <29.821667, 20.220331, 17.773991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.615042, 20.310604, 17.856194>,  <29.270668, 20.461058, 17.993196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.615042, 20.310604, 17.856194> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474814, -0.835808, -0.275638,
		-0.182594, 0.399935, -0.898171,
		0.860936, -0.376135, -0.342508,
		29.873323, 20.197763, 17.753441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.106115, 19.949738, 17.637257>,  <29.270668, 20.461058, 17.993196>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.106115, 19.949738, 17.637257> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.491615, 19.845306, 17.659241>,  <29.722916, 19.782648, 17.672432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.491615, 19.845306, 17.659241>,  <29.106115, 19.949738, 17.637257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.491615, 19.845306, 17.659241> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195965, -0.832486, -0.518233,
		0.181053, 0.488677, -0.853472,
		0.963752, -0.261078, 0.054961,
		29.780741, 19.766983, 17.675730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.226328, 19.618580, 17.017860>,  <29.106115, 19.949738, 17.637257>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.226328, 19.618580, 17.017860> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.512815, 19.484673, 17.262798>,  <29.684708, 19.404329, 17.409761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.512815, 19.484673, 17.262798>,  <29.226328, 19.618580, 17.017860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.512815, 19.484673, 17.262798> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197372, -0.938780, -0.282377,
		0.669386, 0.081384, -0.738443,
		0.716217, -0.334767, 0.612343,
		29.727680, 19.384243, 17.446501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.506699, 19.043196, 16.722128>,  <29.226328, 19.618580, 17.017860>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.506699, 19.043196, 16.722128> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.671631, 18.953434, 17.075314>,  <29.770590, 18.899576, 17.287226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.671631, 18.953434, 17.075314>,  <29.506699, 19.043196, 16.722128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.671631, 18.953434, 17.075314> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153270, -0.972462, -0.175575,
		0.898049, -0.062937, -0.435371,
		0.412331, -0.224404, 0.882964,
		29.795330, 18.886112, 17.340202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.128546, 18.599066, 16.621229>,  <29.506699, 19.043196, 16.722128>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.128546, 18.599066, 16.621229> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.957272, 18.560555, 16.980648>,  <29.854507, 18.537449, 17.196299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.957272, 18.560555, 16.980648>,  <30.128546, 18.599066, 16.621229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.957272, 18.560555, 16.980648> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096021, -0.983833, -0.151171,
		0.898575, -0.151008, 0.412019,
		-0.428186, -0.096276, 0.898548,
		29.828815, 18.531672, 17.250212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.789211, 18.546322, 16.326578>,  <30.128546, 18.599066, 16.621229>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.789211, 18.546322, 16.326578> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.982056, 18.357613, 16.621876>,  <31.097761, 18.244387, 16.799053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.982056, 18.357613, 16.621876>,  <30.789211, 18.546322, 16.326578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.982056, 18.357613, 16.621876> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669987, -0.344425, -0.657638,
		0.564524, 0.811667, 0.150030,
		0.482109, -0.471771, 0.738243,
		31.126688, 18.216082, 16.843349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.398054, 18.927475, 16.487890>,  <30.789211, 18.546322, 16.326578>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.398054, 18.927475, 16.487890> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.782476, 18.873619, 16.584427>,  <32.013130, 18.841305, 16.642349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.782476, 18.873619, 16.584427>,  <31.398054, 18.927475, 16.487890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.782476, 18.873619, 16.584427> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065987, 0.959832, 0.272704,
		-0.268365, -0.246158, 0.931336,
		0.961055, -0.134641, 0.241342,
		32.070793, 18.833227, 16.656830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.491819, 19.218798, 17.065660>,  <31.398054, 18.927475, 16.487890>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.491819, 19.218798, 17.065660> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.871988, 19.191658, 16.944275>,  <32.100090, 19.175375, 16.871443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.871988, 19.191658, 16.944275>,  <31.491819, 19.218798, 17.065660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.871988, 19.191658, 16.944275> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143335, 0.961635, 0.233907,
		0.275952, -0.265808, 0.923686,
		0.950424, -0.067849, -0.303465,
		32.157116, 19.171303, 16.853235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.009502, 19.563610, 17.579531>,  <31.491819, 19.218798, 17.065660>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.009502, 19.563610, 17.579531> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.233589, 19.558491, 17.248234>,  <32.368042, 19.555420, 17.049456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.233589, 19.558491, 17.248234>,  <32.009502, 19.563610, 17.579531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.233589, 19.558491, 17.248234> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202115, 0.971772, 0.121693,
		0.803307, -0.235575, 0.546994,
		0.560221, -0.012799, -0.828244,
		32.401657, 19.554651, 16.999760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.575153, 19.914804, 17.790462>,  <32.009502, 19.563610, 17.579531>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.575153, 19.914804, 17.790462> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.594585, 19.895550, 17.391399>,  <32.606243, 19.883997, 17.151960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.594585, 19.895550, 17.391399>,  <32.575153, 19.914804, 17.790462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.594585, 19.895550, 17.391399> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445829, 0.894861, -0.021467,
		0.893799, -0.443743, 0.064933,
		0.048580, -0.048136, -0.997659,
		32.609158, 19.881109, 17.092102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.310463, 20.028021, 17.587366>,  <32.575153, 19.914804, 17.790462>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.310463, 20.028021, 17.587366> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.079437, 20.151337, 17.285007>,  <32.940823, 20.225327, 17.103592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.079437, 20.151337, 17.285007>,  <33.310463, 20.028021, 17.587366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.079437, 20.151337, 17.285007> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535230, 0.842164, -0.065484,
		0.616401, -0.442399, -0.651408,
		-0.577563, 0.308289, -0.755896,
		32.906170, 20.243824, 17.058239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.768238, 20.354164, 16.945099>,  <33.310463, 20.028021, 17.587366>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.768238, 20.354164, 16.945099> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.409019, 20.518559, 16.882355>,  <33.193489, 20.617195, 16.844707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.409019, 20.518559, 16.882355>,  <33.768238, 20.354164, 16.945099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.409019, 20.518559, 16.882355> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412871, 0.910526, 0.021894,
		0.151823, -0.045101, -0.987378,
		-0.898046, 0.410984, -0.156860,
		33.139606, 20.641853, 16.835297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.984406, 20.898098, 16.587112>,  <33.768238, 20.354164, 16.945099>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.984406, 20.898098, 16.587112> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.604996, 20.983402, 16.680767>,  <33.377350, 21.034586, 16.736959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.604996, 20.983402, 16.680767>,  <33.984406, 20.898098, 16.587112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.604996, 20.983402, 16.680767> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223096, 0.974665, 0.016033,
		-0.224787, 0.067443, -0.972071,
		-0.948525, 0.213262, 0.234138,
		33.320438, 21.047380, 16.751009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.757301, 21.467216, 16.235579>,  <33.984406, 20.898098, 16.587112>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.757301, 21.467216, 16.235579> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.511887, 21.460476, 16.551373>,  <33.364635, 21.456432, 16.740849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.511887, 21.460476, 16.551373>,  <33.757301, 21.467216, 16.235579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.511887, 21.460476, 16.551373> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202844, 0.962862, 0.178188,
		-0.763167, 0.269468, -0.587336,
		-0.613540, -0.016850, 0.789484,
		33.327824, 21.455421, 16.788218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.168114, 21.885708, 16.081467>,  <33.757301, 21.467216, 16.235579>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.168114, 21.885708, 16.081467> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.147427, 21.842926, 16.478634>,  <33.135014, 21.817257, 16.716934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.147427, 21.842926, 16.478634>,  <33.168114, 21.885708, 16.081467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.147427, 21.842926, 16.478634> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062963, 0.992620, 0.103643,
		-0.996675, -0.057157, -0.058068,
		-0.051715, -0.106955, 0.992918,
		33.131912, 21.810839, 16.776508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.547134, 22.221998, 16.276079>,  <33.168114, 21.885708, 16.081467>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.547134, 22.221998, 16.276079> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.795135, 22.220676, 16.589916>,  <32.943935, 22.219883, 16.778217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.795135, 22.220676, 16.589916>,  <32.547134, 22.221998, 16.276079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.795135, 22.220676, 16.589916> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226945, 0.956489, 0.183369,
		-0.751059, -0.291748, 0.592278,
		0.620005, -0.003307, 0.784591,
		32.981136, 22.219685, 16.825294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.128490, 22.553011, 16.871954>,  <32.547134, 22.221998, 16.276079>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.128490, 22.553011, 16.871954> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.511631, 22.565750, 16.986149>,  <32.741516, 22.573393, 17.054667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.511631, 22.565750, 16.986149>,  <32.128490, 22.553011, 16.871954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.511631, 22.565750, 16.986149> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101576, 0.967178, 0.232913,
		-0.268702, -0.252095, 0.929649,
		0.957853, 0.031846, 0.285490,
		32.798988, 22.575304, 17.071796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.151215, 22.916550, 17.525747>,  <32.128490, 22.553011, 16.871954>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.151215, 22.916550, 17.525747> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.523308, 22.943100, 17.381378>,  <32.746563, 22.959030, 17.294756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.523308, 22.943100, 17.381378>,  <32.151215, 22.916550, 17.525747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.523308, 22.943100, 17.381378> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018621, 0.990777, 0.134220,
		0.366504, -0.118135, 0.922886,
		0.930230, 0.066377, -0.360924,
		32.802376, 22.963013, 17.273102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.590759, 23.289129, 17.931473>,  <32.151215, 22.916550, 17.525747>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.590759, 23.289129, 17.931473> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.740593, 23.331158, 17.562984>,  <32.830494, 23.356375, 17.341892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.740593, 23.331158, 17.562984>,  <32.590759, 23.289129, 17.931473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.740593, 23.331158, 17.562984> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057601, 0.989003, 0.136221,
		0.925403, -0.104089, 0.364411,
		0.374583, 0.105069, -0.921221,
		32.852966, 23.362679, 17.286617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.961761, 23.816040, 18.022844>,  <32.590759, 23.289129, 17.931473>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.961761, 23.816040, 18.022844> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.992584, 23.801605, 17.624294>,  <33.011078, 23.792944, 17.385164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.992584, 23.801605, 17.624294>,  <32.961761, 23.816040, 18.022844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.992584, 23.801605, 17.624294> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082579, 0.996142, -0.029692,
		0.993601, -0.079991, 0.079741,
		0.077058, -0.036087, -0.996373,
		33.015701, 23.790779, 17.325382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.468174, 24.274914, 17.930450>,  <32.961761, 23.816040, 18.022844>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.468174, 24.274914, 17.930450> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.260391, 24.230064, 17.591606>,  <33.135723, 24.203154, 17.388300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.260391, 24.230064, 17.591606>,  <33.468174, 24.274914, 17.930450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.260391, 24.230064, 17.591606> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107858, 0.992028, -0.065167,
		0.847664, 0.057517, -0.527407,
		-0.519454, -0.112125, -0.847110,
		33.104553, 24.196426, 17.337473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.673309, 24.905703, 17.500484>,  <33.468174, 24.274914, 17.930450>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.673309, 24.905703, 17.500484> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.367298, 24.767155, 17.283318>,  <33.183693, 24.684027, 17.153017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.367298, 24.767155, 17.283318>,  <33.673309, 24.905703, 17.500484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.367298, 24.767155, 17.283318> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257795, 0.937263, -0.234692,
		0.590146, -0.039584, -0.806325,
		-0.765028, -0.346370, -0.542918,
		33.137791, 24.663244, 17.120441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.729958, 25.149157, 16.738979>,  <33.673309, 24.905703, 17.500484>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.729958, 25.149157, 16.738979> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.351887, 25.080391, 16.850044>,  <33.125046, 25.039131, 16.916683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.351887, 25.080391, 16.850044>,  <33.729958, 25.149157, 16.738979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.351887, 25.080391, 16.850044> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236924, 0.946125, -0.220712,
		-0.224758, -0.274395, -0.934982,
		-0.945172, -0.171912, 0.277660,
		33.068336, 25.028818, 16.933342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.410103, 25.453369, 16.236897>,  <33.729958, 25.149157, 16.738979>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.410103, 25.453369, 16.236897> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.145206, 25.441319, 16.536369>,  <32.986267, 25.434088, 16.716053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.145206, 25.441319, 16.536369>,  <33.410103, 25.453369, 16.236897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.145206, 25.441319, 16.536369> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190546, 0.973114, -0.129388,
		-0.724654, -0.228345, -0.650181,
		-0.662246, -0.030128, 0.748681,
		32.946533, 25.432280, 16.760973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.884834, 25.979780, 16.083382>,  <33.410103, 25.453369, 16.236897>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.884834, 25.979780, 16.083382> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.810333, 25.922974, 16.472256>,  <32.765633, 25.888889, 16.705580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.810333, 25.922974, 16.472256>,  <32.884834, 25.979780, 16.083382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.810333, 25.922974, 16.472256> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348734, 0.934625, 0.069720,
		-0.918529, -0.326048, -0.223601,
		-0.186251, -0.142017, 0.972184,
		32.754459, 25.880369, 16.763910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.328709, 26.381586, 16.172510>,  <32.884834, 25.979780, 16.083382>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.328709, 26.381586, 16.172510> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.481014, 26.315197, 16.536373>,  <32.572399, 26.275364, 16.754690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.481014, 26.315197, 16.536373>,  <32.328709, 26.381586, 16.172510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.481014, 26.315197, 16.536373> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098821, 0.970821, 0.218496,
		-0.919377, -0.173088, 0.353251,
		0.380763, -0.165972, 0.909655,
		32.595242, 26.265406, 16.809269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<22.096037, 38.962418, 13.982201> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.392498, 38.694023, 13.990870>,  <22.570375, 38.532986, 13.996072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.392498, 38.694023, 13.990870>,  <22.096037, 38.962418, 13.982201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.392498, 38.694023, 13.990870> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619801, -0.671500, 0.406120,
		-0.257946, -0.314432, -0.913563,
		0.741154, -0.670985, 0.021674,
		22.614845, 38.492729, 13.997373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.861797, 38.250645, 13.748772>,  <22.096037, 38.962418, 13.982201>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.861797, 38.250645, 13.748772> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.174198, 38.188488, 13.990727>,  <22.361639, 38.151196, 14.135901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.174198, 38.188488, 13.990727>,  <21.861797, 38.250645, 13.748772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.174198, 38.188488, 13.990727> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525494, -0.686887, 0.502038,
		0.337481, -0.709958, -0.618115,
		0.781001, -0.155387, 0.604890,
		22.408499, 38.141872, 14.172194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.758427, 37.580490, 14.073747>,  <21.861797, 38.250645, 13.748772>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.758427, 37.580490, 14.073747> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.061693, 37.707401, 14.301612>,  <22.243654, 37.783546, 14.438331>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.061693, 37.707401, 14.301612>,  <21.758427, 37.580490, 14.073747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.061693, 37.707401, 14.301612> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227446, -0.690085, 0.687059,
		0.611105, -0.650474, -0.451037,
		0.758168, 0.317279, 0.569662,
		22.289145, 37.802586, 14.472510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.270857, 36.930397, 14.400897>,  <21.758427, 37.580490, 14.073747>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.270857, 36.930397, 14.400897> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.319544, 37.263016, 14.617681>,  <22.348757, 37.462585, 14.747750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.319544, 37.263016, 14.617681>,  <22.270857, 36.930397, 14.400897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.319544, 37.263016, 14.617681> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127929, -0.528322, 0.839351,
		0.984286, -0.171496, 0.042073,
		0.121717, 0.831544, 0.541959,
		22.356058, 37.512478, 14.780269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.773056, 36.781551, 14.807349>,  <22.270857, 36.930397, 14.400897>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.773056, 36.781551, 14.807349> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.622311, 37.089138, 15.013906>,  <22.531864, 37.273689, 15.137839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.622311, 37.089138, 15.013906>,  <22.773056, 36.781551, 14.807349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.622311, 37.089138, 15.013906> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025679, -0.548607, 0.835686,
		0.925912, 0.328200, 0.187004,
		-0.376864, 0.768970, 0.516390,
		22.509251, 37.319828, 15.168822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.225729, 36.921131, 15.409691>,  <22.773056, 36.781551, 14.807349>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.225729, 36.921131, 15.409691> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.860250, 37.068035, 15.479300>,  <22.640965, 37.156178, 15.521066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.860250, 37.068035, 15.479300>,  <23.225729, 36.921131, 15.409691>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.860250, 37.068035, 15.479300> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036319, -0.500284, 0.865099,
		0.404774, 0.784117, 0.470445,
		-0.913695, 0.367256, 0.174023,
		22.586142, 37.178211, 15.531507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.281742, 37.330666, 16.023773>,  <23.225729, 36.921131, 15.409691>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.281742, 37.330666, 16.023773> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.900219, 37.219913, 15.977151>,  <22.671305, 37.153461, 15.949177>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.900219, 37.219913, 15.977151>,  <23.281742, 37.330666, 16.023773>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.900219, 37.219913, 15.977151> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021962, -0.322684, 0.946252,
		-0.299609, 0.905104, 0.301699,
		-0.953809, -0.276880, -0.116557,
		22.614077, 37.136848, 15.942183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.057863, 37.488869, 16.608301>,  <23.281742, 37.330666, 16.023773>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.057863, 37.488869, 16.608301> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.722729, 37.298801, 16.500786>,  <22.521648, 37.184761, 16.436277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.722729, 37.298801, 16.500786>,  <23.057863, 37.488869, 16.608301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.722729, 37.298801, 16.500786> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204857, -0.182725, 0.961585,
		-0.506031, 0.860712, 0.055751,
		-0.837834, -0.475170, -0.268787,
		22.471378, 37.156250, 16.420149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.321289, 37.821953, 16.863903>,  <23.057863, 37.488869, 16.608301>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.321289, 37.821953, 16.863903> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.275589, 37.428490, 16.808239>,  <22.248169, 37.192413, 16.774839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.275589, 37.428490, 16.808239>,  <22.321289, 37.821953, 16.863903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.275589, 37.428490, 16.808239> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295094, -0.100155, 0.950204,
		-0.948613, 0.149626, -0.278829,
		-0.114250, -0.983657, -0.139162,
		22.241314, 37.133392, 16.766491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.696712, 37.699196, 17.131777>,  <22.321289, 37.821953, 16.863903>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.696712, 37.699196, 17.131777> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.878050, 37.342663, 17.132702>,  <21.986853, 37.128742, 17.133257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.878050, 37.342663, 17.132702>,  <21.696712, 37.699196, 17.131777>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.878050, 37.342663, 17.132702> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335914, -0.168444, 0.926709,
		-0.825617, -0.420893, -0.375774,
		0.453342, -0.891334, 0.002314,
		22.014051, 37.075264, 17.133396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.214525, 37.177383, 17.192032>,  <21.696712, 37.699196, 17.131777>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.214525, 37.177383, 17.192032> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.547377, 36.989613, 17.310154>,  <21.747087, 36.876949, 17.381027>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.547377, 36.989613, 17.310154>,  <21.214525, 37.177383, 17.192032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.547377, 36.989613, 17.310154> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487008, -0.363798, 0.794024,
		-0.265301, -0.804546, -0.531339,
		0.832129, -0.469422, 0.295305,
		21.797014, 36.848785, 17.398745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.955112, 36.483917, 17.519857>,  <21.214525, 37.177383, 17.192032>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.955112, 36.483917, 17.519857> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.331656, 36.549465, 17.637833>,  <21.557581, 36.588795, 17.708618>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.331656, 36.549465, 17.637833>,  <20.955112, 36.483917, 17.519857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.331656, 36.549465, 17.637833> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203903, -0.420162, 0.884244,
		0.268824, -0.892530, -0.362109,
		0.941359, 0.163871, 0.294939,
		21.614063, 36.598625, 17.726315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.188890, 35.821682, 17.930563>,  <20.955112, 36.483917, 17.519857>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.188890, 35.821682, 17.930563> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.429918, 36.114876, 18.056824>,  <21.574535, 36.290794, 18.132580>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.429918, 36.114876, 18.056824>,  <21.188890, 35.821682, 17.930563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.429918, 36.114876, 18.056824> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151885, -0.282965, 0.947028,
		0.783479, -0.618595, -0.059176,
		0.602571, 0.732988, 0.315653,
		21.610689, 36.334774, 18.151520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.370459, 35.624359, 18.491245>,  <21.188890, 35.821682, 17.930563>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.370459, 35.624359, 18.491245> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.466118, 36.008514, 18.548458>,  <21.523514, 36.239010, 18.582785>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.466118, 36.008514, 18.548458>,  <21.370459, 35.624359, 18.491245>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.466118, 36.008514, 18.548458> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235397, -0.085567, 0.968125,
		0.942018, -0.265192, 0.205610,
		0.239146, 0.960391, 0.143031,
		21.537861, 36.296631, 18.591368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.772402, 35.670589, 19.045605>,  <21.370459, 35.624359, 18.491245>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.772402, 35.670589, 19.045605> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.645737, 36.048359, 19.010311>,  <21.569738, 36.275021, 18.989134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.645737, 36.048359, 19.010311>,  <21.772402, 35.670589, 19.045605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.645737, 36.048359, 19.010311> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257568, 0.003914, 0.966252,
		0.912898, 0.328703, 0.242015,
		-0.316663, 0.944425, -0.088236,
		21.550737, 36.331688, 18.983841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.983780, 35.949409, 19.653128>,  <21.772402, 35.670589, 19.045605>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.983780, 35.949409, 19.653128> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.711510, 36.205765, 19.511173>,  <21.548147, 36.359577, 19.426001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.711510, 36.205765, 19.511173>,  <21.983780, 35.949409, 19.653128>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.711510, 36.205765, 19.511173> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248079, 0.254161, 0.934804,
		0.689300, 0.724340, -0.014012,
		-0.680678, 0.640885, -0.354887,
		21.507307, 36.398029, 19.404707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.088623, 36.637257, 19.979027>,  <21.983780, 35.949409, 19.653128>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.088623, 36.637257, 19.979027> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.709400, 36.609154, 19.854927>,  <21.481867, 36.592293, 19.780466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.709400, 36.609154, 19.854927>,  <22.088623, 36.637257, 19.979027>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.709400, 36.609154, 19.854927> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317074, 0.130199, 0.939421,
		-0.025607, 0.988996, -0.145713,
		-0.948055, -0.070257, -0.310251,
		21.424984, 36.588078, 19.761852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.810499, 37.256100, 20.229294>,  <22.088623, 36.637257, 19.979027>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.810499, 37.256100, 20.229294> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.473284, 37.048786, 20.171783>,  <21.270954, 36.924400, 20.137278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.473284, 37.048786, 20.171783>,  <21.810499, 37.256100, 20.229294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.473284, 37.048786, 20.171783> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366887, 0.358670, 0.858341,
		-0.393294, 0.776363, -0.492524,
		-0.843038, -0.518281, -0.143775,
		21.220373, 36.893303, 20.128651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.340122, 37.676155, 20.497269>,  <21.810499, 37.256100, 20.229294>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.340122, 37.676155, 20.497269> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.161909, 37.318100, 20.491272>,  <21.054981, 37.103268, 20.487673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.161909, 37.318100, 20.491272>,  <21.340122, 37.676155, 20.497269>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.161909, 37.318100, 20.491272> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360574, 0.164088, 0.918184,
		-0.819442, 0.414490, -0.395871,
		-0.445535, -0.895139, -0.014994,
		21.028248, 37.049557, 20.486774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.729464, 37.814606, 20.697096>,  <21.340122, 37.676155, 20.497269>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.729464, 37.814606, 20.697096> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.759481, 37.423363, 20.774742>,  <20.777493, 37.188618, 20.821331>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.759481, 37.423363, 20.774742>,  <20.729464, 37.814606, 20.697096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.759481, 37.423363, 20.774742> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323685, 0.160232, 0.932499,
		-0.943184, -0.132812, -0.304573,
		0.075045, -0.978104, 0.194118,
		20.781996, 37.129932, 20.832977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.180037, 37.621517, 21.228502>,  <20.729464, 37.814606, 20.697096>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.180037, 37.621517, 21.228502> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.410116, 37.298672, 21.281731>,  <20.548164, 37.104965, 21.313667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.410116, 37.298672, 21.281731>,  <20.180037, 37.621517, 21.228502>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.410116, 37.298672, 21.281731> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088535, 0.100294, 0.991011,
		-0.813209, -0.581809, -0.013769,
		0.575198, -0.807118, 0.133070,
		20.582676, 37.056538, 21.321651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.943262, 37.794369, 21.907835>,  <20.180037, 37.621517, 21.228502>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.943262, 37.794369, 21.907835> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.574621, 37.947144, 21.880207>,  <19.353436, 38.038807, 21.863630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.574621, 37.947144, 21.880207>,  <19.943262, 37.794369, 21.907835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.574621, 37.947144, 21.880207> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112913, 0.093573, -0.989189,
		-0.371344, -0.919439, -0.129363,
		-0.921604, 0.381936, -0.069068,
		19.298140, 38.061726, 21.859486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.511543, 37.344822, 21.348610>,  <19.943262, 37.794369, 21.907835>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.511543, 37.344822, 21.348610> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.362036, 37.710732, 21.409901>,  <19.272331, 37.930279, 21.446674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.362036, 37.710732, 21.409901>,  <19.511543, 37.344822, 21.348610>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.362036, 37.710732, 21.409901> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060220, 0.140918, -0.988188,
		-0.925564, -0.378583, 0.002417,
		-0.373771, 0.914777, 0.153227,
		19.249905, 37.985165, 21.455870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.830065, 37.403927, 20.928871>,  <19.511543, 37.344822, 21.348610>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.830065, 37.403927, 20.928871> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.958521, 37.777699, 20.990456>,  <19.035595, 38.001961, 21.027407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.958521, 37.777699, 20.990456>,  <18.830065, 37.403927, 20.928871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.958521, 37.777699, 20.990456> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080907, 0.189047, -0.978629,
		-0.943570, 0.301820, 0.136312,
		0.321139, 0.934433, 0.153960,
		19.054863, 38.058029, 21.036644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.420729, 37.780048, 20.608568>,  <18.830065, 37.403927, 20.928871>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.420729, 37.780048, 20.608568> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.734581, 38.026882, 20.632442>,  <18.922892, 38.174984, 20.646767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.734581, 38.026882, 20.632442>,  <18.420729, 37.780048, 20.608568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.734581, 38.026882, 20.632442> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024120, 0.126580, -0.991663,
		-0.619496, 0.776648, 0.114203,
		0.784629, 0.617086, 0.059683,
		18.969969, 38.212009, 20.650347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.268106, 38.294296, 20.113874>,  <18.420729, 37.780048, 20.608568>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.268106, 38.294296, 20.113874> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.659491, 38.363457, 20.158985>,  <18.894321, 38.404953, 20.186050>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.659491, 38.363457, 20.158985>,  <18.268106, 38.294296, 20.113874>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.659491, 38.363457, 20.158985> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065337, 0.258833, -0.963710,
		-0.195821, 0.950320, 0.241961,
		0.978461, 0.172906, 0.112776,
		18.953030, 38.415329, 20.192818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.400244, 38.933033, 19.774870>,  <18.268106, 38.294296, 20.113874>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.400244, 38.933033, 19.774870> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.739616, 38.725201, 19.815273>,  <18.943239, 38.600502, 19.839516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.739616, 38.725201, 19.815273>,  <18.400244, 38.933033, 19.774870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.739616, 38.725201, 19.815273> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271299, 0.263021, -0.925860,
		0.454489, 0.812932, 0.364116,
		0.848432, -0.519578, 0.101008,
		18.994146, 38.569328, 19.845575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.908192, 39.422783, 19.668039>,  <18.400244, 38.933033, 19.774870>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.908192, 39.422783, 19.668039> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.087437, 39.073906, 19.589588>,  <19.194984, 38.864578, 19.542517>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.087437, 39.073906, 19.589588>,  <18.908192, 39.422783, 19.668039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.087437, 39.073906, 19.589588> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365900, 0.379112, -0.849936,
		0.815666, 0.309106, 0.489022,
		0.448115, -0.872197, -0.196127,
		19.221870, 38.812248, 19.530750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.529127, 39.608204, 19.529594>,  <18.908192, 39.422783, 19.668039>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.529127, 39.608204, 19.529594> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.507137, 39.246719, 19.359753>,  <19.493944, 39.029831, 19.257847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.507137, 39.246719, 19.359753>,  <19.529127, 39.608204, 19.529594>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.507137, 39.246719, 19.359753> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452496, 0.356528, -0.817396,
		0.890071, -0.237067, 0.389324,
		-0.054973, -0.903707, -0.424607,
		19.490646, 38.975609, 19.232370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.150486, 39.501083, 19.225153>,  <19.529127, 39.608204, 19.529594>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.150486, 39.501083, 19.225153> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.912621, 39.246098, 19.029186>,  <19.769901, 39.093105, 18.911606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.912621, 39.246098, 19.029186>,  <20.150486, 39.501083, 19.225153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.912621, 39.246098, 19.029186> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511451, 0.170222, -0.842284,
		0.620319, -0.751443, 0.224806,
		-0.594661, -0.637462, -0.489918,
		19.734222, 39.054859, 18.882212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.662380, 39.160614, 18.807484>,  <20.150486, 39.501083, 19.225153>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.662380, 39.160614, 18.807484> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.290804, 39.109951, 18.668327>,  <20.067858, 39.079552, 18.584833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.290804, 39.109951, 18.668327>,  <20.662380, 39.160614, 18.807484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.290804, 39.109951, 18.668327> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342197, 0.064950, -0.937381,
		0.141328, -0.989817, -0.016990,
		-0.928939, -0.126664, -0.347891,
		20.012121, 39.071953, 18.563959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.762165, 38.688644, 18.326448>,  <20.662380, 39.160614, 18.807484>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.762165, 38.688644, 18.326448> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.405687, 38.850594, 18.244614>,  <20.191801, 38.947762, 18.195513>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.405687, 38.850594, 18.244614>,  <20.762165, 38.688644, 18.326448>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.405687, 38.850594, 18.244614> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282297, 0.141966, -0.948764,
		-0.355083, -0.903286, -0.240813,
		-0.891193, 0.404871, -0.204585,
		20.138329, 38.972054, 18.183239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.441059, 38.342751, 17.705076>,  <20.762165, 38.688644, 18.326448>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.441059, 38.342751, 17.705076> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.254265, 38.695564, 17.730194>,  <20.142189, 38.907253, 17.745264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.254265, 38.695564, 17.730194>,  <20.441059, 38.342751, 17.705076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.254265, 38.695564, 17.730194> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069703, 0.107510, -0.991758,
		-0.881515, -0.458757, -0.111686,
		-0.466983, 0.882034, 0.062795,
		20.114170, 38.960175, 17.749033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.072403, 38.376797, 17.139769>,  <20.441059, 38.342751, 17.705076>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.072403, 38.376797, 17.139769> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.061682, 38.764946, 17.235809>,  <20.055250, 38.997837, 17.293434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.061682, 38.764946, 17.235809>,  <20.072403, 38.376797, 17.139769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.061682, 38.764946, 17.235809> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194650, 0.240657, -0.950892,
		-0.980507, 0.021250, -0.195334,
		-0.026802, 0.970378, 0.240102,
		20.053640, 39.056061, 17.307840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.671984, 38.726498, 16.725893>,  <20.072403, 38.376797, 17.139769>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.671984, 38.726498, 16.725893> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.913483, 39.014359, 16.863056>,  <20.058382, 39.187077, 16.945354>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.913483, 39.014359, 16.863056>,  <19.671984, 38.726498, 16.725893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.913483, 39.014359, 16.863056> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236853, 0.248791, -0.939151,
		-0.761177, 0.648228, -0.020245,
		0.603747, 0.719655, 0.342908,
		20.094606, 39.230255, 16.965929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.658487, 39.178459, 16.197031>,  <19.671984, 38.726498, 16.725893>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.658487, 39.178459, 16.197031> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.995686, 39.307659, 16.369091>,  <20.198004, 39.385181, 16.472326>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.995686, 39.307659, 16.369091>,  <19.658487, 39.178459, 16.197031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.995686, 39.307659, 16.369091> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360222, 0.254908, -0.897364,
		-0.399500, 0.911422, 0.098533,
		0.842994, 0.323003, 0.430150,
		20.248585, 39.404560, 16.498137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.812321, 39.853676, 15.945046>,  <19.658487, 39.178459, 16.197031>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.812321, 39.853676, 15.945046> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.166676, 39.717960, 16.071594>,  <20.379288, 39.636532, 16.147522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.166676, 39.717960, 16.071594>,  <19.812321, 39.853676, 15.945046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.166676, 39.717960, 16.071594> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445720, 0.433470, -0.783222,
		0.128600, 0.834858, 0.535232,
		0.885887, -0.339286, 0.316369,
		20.432442, 39.616173, 16.166506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.242922, 40.414810, 16.015280>,  <19.812321, 39.853676, 15.945046>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.242922, 40.414810, 16.015280> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.471155, 40.095551, 15.937926>,  <20.608095, 39.903996, 15.891514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.471155, 40.095551, 15.937926>,  <20.242922, 40.414810, 16.015280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.471155, 40.095551, 15.937926> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504328, 0.526389, -0.684520,
		0.648144, 0.293045, 0.702876,
		0.570581, -0.798147, -0.193385,
		20.642330, 39.856106, 15.879910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.943613, 40.634422, 15.880279>,  <20.242922, 40.414810, 16.015280>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.943613, 40.634422, 15.880279> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.970800, 40.265442, 15.728246>,  <20.987112, 40.044052, 15.637026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.970800, 40.265442, 15.728246>,  <20.943613, 40.634422, 15.880279>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.970800, 40.265442, 15.728246> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549256, 0.352631, -0.757607,
		0.832885, -0.157268, 0.530630,
		0.067969, -0.922452, -0.380082,
		20.991192, 39.988705, 15.614221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.532795, 40.650349, 15.634701>,  <20.943613, 40.634422, 15.880279>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.532795, 40.650349, 15.634701> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.365921, 40.339439, 15.446319>,  <21.265797, 40.152893, 15.333289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.365921, 40.339439, 15.446319>,  <21.532795, 40.650349, 15.634701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.365921, 40.339439, 15.446319> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486244, 0.246901, -0.838216,
		0.767805, -0.578689, 0.274943,
		-0.417183, -0.777277, -0.470956,
		21.240767, 40.106255, 15.305032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.048132, 40.385918, 15.215877>,  <21.532795, 40.650349, 15.634701>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.048132, 40.385918, 15.215877> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.747557, 40.175522, 15.056537>,  <21.567211, 40.049286, 14.960933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.747557, 40.175522, 15.056537>,  <22.048132, 40.385918, 15.215877>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.747557, 40.175522, 15.056537> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298057, 0.268024, -0.916147,
		0.588647, -0.807157, -0.044629,
		-0.751436, -0.525985, -0.398351,
		21.522125, 40.017727, 14.937032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.352507, 39.952156, 14.591921>,  <22.048132, 40.385918, 15.215877>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.352507, 39.952156, 14.591921> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.959486, 39.999336, 14.534398>,  <21.723673, 40.027645, 14.499885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.959486, 39.999336, 14.534398>,  <22.352507, 39.952156, 14.591921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.959486, 39.999336, 14.534398> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170826, 0.266504, -0.948575,
		-0.073560, -0.956589, -0.282002,
		-0.982551, 0.117951, -0.143806,
		21.664721, 40.034721, 14.491256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<27.687305, 28.491083, 18.545506> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.966230, 28.777771, 18.542290>,  <28.133585, 28.949783, 18.540359>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.966230, 28.777771, 18.542290>,  <27.687305, 28.491083, 18.545506>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.966230, 28.777771, 18.542290> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595329, 0.585383, 0.550373,
		0.399170, -0.378996, 0.834880,
		0.697313, 0.716721, -0.008040,
		28.175425, 28.992788, 18.539877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.556704, 28.744398, 19.074858>,  <27.687305, 28.491083, 18.545506>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.556704, 28.744398, 19.074858> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.788321, 29.016453, 18.895027>,  <27.927292, 29.179686, 18.787128>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.788321, 29.016453, 18.895027>,  <27.556704, 28.744398, 19.074858>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.788321, 29.016453, 18.895027> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621591, 0.725109, 0.296380,
		0.527572, 0.107835, 0.842638,
		0.579045, 0.680138, -0.449577,
		27.962034, 29.220493, 18.760155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.498434, 29.268023, 19.595030>,  <27.556704, 28.744398, 19.074858>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.498434, 29.268023, 19.595030> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.641804, 29.443798, 19.265564>,  <27.727825, 29.549263, 19.067884>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.641804, 29.443798, 19.265564>,  <27.498434, 29.268023, 19.595030>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.641804, 29.443798, 19.265564> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302330, 0.889377, 0.342937,
		0.883245, 0.126097, 0.451639,
		0.358434, 0.439441, -0.823661,
		27.749332, 29.575630, 19.018465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.857016, 29.827776, 19.804573>,  <27.498434, 29.268023, 19.595030>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.857016, 29.827776, 19.804573> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.784588, 29.894592, 19.416901>,  <27.741131, 29.934681, 19.184298>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.784588, 29.894592, 19.416901>,  <27.857016, 29.827776, 19.804573>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.784588, 29.894592, 19.416901> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308071, 0.926239, 0.217195,
		0.933973, 0.337904, -0.116255,
		-0.181071, 0.167040, -0.969180,
		27.730267, 29.944704, 19.126146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.133049, 30.429346, 19.673254>,  <27.857016, 29.827776, 19.804573>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.133049, 30.429346, 19.673254> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.851841, 30.367699, 19.395546>,  <27.683115, 30.330711, 19.228922>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.851841, 30.367699, 19.395546>,  <28.133049, 30.429346, 19.673254>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.851841, 30.367699, 19.395546> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222766, 0.974829, 0.009178,
		0.675378, 0.161111, -0.719658,
		-0.703022, -0.154116, -0.694268,
		27.640934, 30.321465, 19.187265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.113623, 31.077314, 19.293028>,  <28.133049, 30.429346, 19.673254>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.113623, 31.077314, 19.293028> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.772751, 30.909752, 19.167614>,  <27.568228, 30.809214, 19.092365>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.772751, 30.909752, 19.167614>,  <28.113623, 31.077314, 19.293028>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.772751, 30.909752, 19.167614> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419343, 0.905157, -0.069595,
		0.312952, 0.072171, -0.947023,
		-0.852181, -0.418907, -0.313535,
		27.517096, 30.784081, 19.073553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.869740, 31.580355, 18.913523>,  <28.113623, 31.077314, 19.293028>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.869740, 31.580355, 18.913523> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.575075, 31.320782, 18.989647>,  <27.398277, 31.165037, 19.035322>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.575075, 31.320782, 18.989647>,  <27.869740, 31.580355, 18.913523>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.575075, 31.320782, 18.989647> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632175, 0.760751, 0.147012,
		-0.240180, -0.012012, -0.970654,
		-0.736660, -0.648933, 0.190311,
		27.354076, 31.126102, 19.046740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.303514, 31.938042, 18.656656>,  <27.869740, 31.580355, 18.913523>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.303514, 31.938042, 18.656656> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.148111, 31.664619, 18.903820>,  <27.054869, 31.500566, 19.052118>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.148111, 31.664619, 18.903820>,  <27.303514, 31.938042, 18.656656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.148111, 31.664619, 18.903820> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677367, 0.666486, 0.311401,
		-0.624689, -0.297571, -0.721953,
		-0.388507, -0.683555, 0.617911,
		27.031559, 31.459553, 19.089193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.570356, 31.996048, 18.554394>,  <27.303514, 31.938042, 18.656656>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.570356, 31.996048, 18.554394> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.639868, 31.826035, 18.909729>,  <26.681574, 31.724028, 19.122931>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.639868, 31.826035, 18.909729>,  <26.570356, 31.996048, 18.554394>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.639868, 31.826035, 18.909729> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594828, 0.673616, 0.438658,
		-0.784844, -0.604639, -0.135760,
		0.173779, -0.425032, 0.888340,
		26.692001, 31.698524, 19.176231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.870695, 31.884802, 18.902870>,  <26.570356, 31.996048, 18.554394>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.870695, 31.884802, 18.902870> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.146568, 31.885765, 19.192513>,  <26.312092, 31.886343, 19.366299>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.146568, 31.885765, 19.192513>,  <25.870695, 31.884802, 18.902870>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.146568, 31.885765, 19.192513> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570369, 0.617885, 0.541199,
		-0.446111, -0.786264, 0.427519,
		0.689684, 0.002409, 0.724107,
		26.353474, 31.886488, 19.409744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.513767, 31.825571, 19.605646>,  <25.870695, 31.884802, 18.902870>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.513767, 31.825571, 19.605646> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.872753, 31.989620, 19.670589>,  <26.088144, 32.088051, 19.709555>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.872753, 31.989620, 19.670589>,  <25.513767, 31.825571, 19.605646>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.872753, 31.989620, 19.670589> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399816, 0.600907, 0.692140,
		0.186300, -0.686084, 0.703265,
		0.897463, 0.410122, 0.162359,
		26.141993, 32.112656, 19.719297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.595005, 31.887064, 20.323954>,  <25.513767, 31.825571, 19.605646>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.595005, 31.887064, 20.323954> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.808813, 32.180431, 20.155960>,  <25.937098, 32.356453, 20.055164>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.808813, 32.180431, 20.155960>,  <25.595005, 31.887064, 20.323954>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.808813, 32.180431, 20.155960> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424007, 0.662577, 0.617422,
		0.731100, -0.151948, 0.665135,
		0.534519, 0.733419, -0.419983,
		25.969170, 32.400455, 20.029964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.991005, 32.302036, 20.835209>,  <25.595005, 31.887064, 20.323954>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.991005, 32.302036, 20.835209> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.943281, 32.545219, 20.521229>,  <25.914648, 32.691132, 20.332840>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.943281, 32.545219, 20.521229>,  <25.991005, 32.302036, 20.835209>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.943281, 32.545219, 20.521229> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210475, 0.757142, 0.618415,
		0.970292, 0.238994, 0.037628,
		-0.119307, 0.607962, -0.784950,
		25.907490, 32.727608, 20.285744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.767756, 33.020832, 21.116652>,  <25.991005, 32.302036, 20.835209>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.767756, 33.020832, 21.116652> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.739201, 33.056412, 20.719261>,  <25.722067, 33.077759, 20.480827>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.739201, 33.056412, 20.719261>,  <25.767756, 33.020832, 21.116652>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.739201, 33.056412, 20.719261> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355090, 0.928497, 0.108651,
		0.932102, 0.360529, -0.034697,
		-0.071388, 0.088953, -0.993474,
		25.717785, 33.083099, 20.421219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.068684, 33.597946, 21.582150>,  <25.767756, 33.020832, 21.116652>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.068684, 33.597946, 21.582150> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.813244, 33.701469, 21.872036>,  <25.659981, 33.763584, 22.045967>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.813244, 33.701469, 21.872036>,  <26.068684, 33.597946, 21.582150>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.813244, 33.701469, 21.872036> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321304, -0.766063, 0.556697,
		0.699252, 0.588360, 0.406052,
		-0.638600, 0.258805, 0.724714,
		25.621664, 33.779110, 22.089451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.416649, 33.628410, 22.315138>,  <26.068684, 33.597946, 21.582150>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.416649, 33.628410, 22.315138> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.030081, 33.537476, 22.363052>,  <25.798140, 33.482914, 22.391800>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.030081, 33.537476, 22.363052>,  <26.416649, 33.628410, 22.315138>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.030081, 33.537476, 22.363052> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256853, -0.841138, 0.475934,
		-0.007440, 0.490720, 0.871286,
		-0.966422, -0.227333, 0.119785,
		25.740154, 33.469276, 22.398989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.451843, 33.388470, 22.920916>,  <26.416649, 33.628410, 22.315138>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.451843, 33.388470, 22.920916> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.099073, 33.242504, 22.801552>,  <25.887411, 33.154926, 22.729933>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.099073, 33.242504, 22.801552>,  <26.451843, 33.388470, 22.920916>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.099073, 33.242504, 22.801552> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192130, -0.856332, 0.479355,
		-0.430462, 0.365421, 0.825330,
		-0.881923, -0.364915, -0.298410,
		25.834496, 33.133030, 22.712029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.205954, 33.027557, 23.469740>,  <26.451843, 33.388470, 22.920916>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.205954, 33.027557, 23.469740> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.012291, 32.870049, 23.157192>,  <25.896093, 32.775543, 22.969664>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.012291, 32.870049, 23.157192>,  <26.205954, 33.027557, 23.469740>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.012291, 32.870049, 23.157192> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194672, -0.919107, 0.342556,
		-0.853050, 0.013741, 0.521649,
		-0.484158, -0.393767, -0.781369,
		25.867043, 32.751919, 22.922781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.814583, 32.463757, 23.764193>,  <26.205954, 33.027557, 23.469740>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.814583, 32.463757, 23.764193> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.814079, 32.368755, 23.375637>,  <25.813778, 32.311756, 23.142504>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.814079, 32.368755, 23.375637>,  <25.814583, 32.463757, 23.764193>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.814079, 32.368755, 23.375637> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220113, -0.947630, 0.231405,
		-0.975474, -0.213524, 0.053468,
		-0.001258, -0.237499, -0.971387,
		25.813702, 32.297504, 23.084221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.447788, 31.695364, 23.628483>,  <25.814583, 32.463757, 23.764193>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.447788, 31.695364, 23.628483> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.678782, 31.791603, 23.316425>,  <25.817379, 31.849346, 23.129190>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.678782, 31.791603, 23.316425>,  <25.447788, 31.695364, 23.628483>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.678782, 31.791603, 23.316425> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166372, -0.970217, -0.176064,
		-0.799269, -0.028120, -0.600315,
		0.577486, 0.240598, -0.780143,
		25.852028, 31.863783, 23.082382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.287642, 31.120384, 23.227324>,  <25.447788, 31.695364, 23.628483>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.287642, 31.120384, 23.227324> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.656338, 31.247971, 23.139091>,  <25.877556, 31.324522, 23.086153>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.656338, 31.247971, 23.139091>,  <25.287642, 31.120384, 23.227324>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.656338, 31.247971, 23.139091> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207938, -0.886607, -0.413146,
		-0.327346, 0.334947, -0.883547,
		0.921741, 0.318964, -0.220579,
		25.932859, 31.343660, 23.072918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.428926, 30.834883, 22.622265>,  <25.287642, 31.120384, 23.227324>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.428926, 30.834883, 22.622265> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.798386, 30.939106, 22.734680>,  <26.020061, 31.001640, 22.802130>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.798386, 30.939106, 22.734680>,  <25.428926, 30.834883, 22.622265>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.798386, 30.939106, 22.734680> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337706, -0.900055, -0.275420,
		0.181189, 0.349300, -0.919326,
		0.923648, 0.260559, 0.281040,
		26.075480, 31.017273, 22.818993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.949102, 30.572643, 22.095325>,  <25.428926, 30.834883, 22.622265>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.949102, 30.572643, 22.095325> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.215897, 30.619728, 22.389610>,  <26.375973, 30.647980, 22.566181>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.215897, 30.619728, 22.389610>,  <25.949102, 30.572643, 22.095325>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.215897, 30.619728, 22.389610> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421449, -0.873895, -0.242259,
		0.614417, 0.471648, -0.632487,
		0.666988, 0.117713, 0.735711,
		26.415993, 30.655043, 22.610323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.623596, 30.316063, 21.813086>,  <25.949102, 30.572643, 22.095325>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.623596, 30.316063, 21.813086> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.657305, 30.332504, 22.211323>,  <26.677530, 30.342369, 22.450266>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.657305, 30.332504, 22.211323>,  <26.623596, 30.316063, 21.813086>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.657305, 30.332504, 22.211323> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504147, -0.863589, -0.007017,
		0.859496, 0.502518, -0.093497,
		0.084269, 0.041106, 0.995595,
		26.682585, 30.344835, 22.510002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.170681, 30.092106, 21.879103>,  <26.623596, 30.316063, 21.813086>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.170681, 30.092106, 21.879103> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.046272, 30.065769, 22.258350>,  <26.971626, 30.049967, 22.485899>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.046272, 30.065769, 22.258350>,  <27.170681, 30.092106, 21.879103>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.046272, 30.065769, 22.258350> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362427, -0.930430, 0.054280,
		0.878585, 0.360506, 0.313248,
		-0.311024, -0.065840, 0.948119,
		26.952965, 30.046017, 22.542786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.776268, 30.014032, 22.284172>,  <27.170681, 30.092106, 21.879103>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.776268, 30.014032, 22.284172> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.468321, 29.836357, 22.467476>,  <27.283552, 29.729752, 22.577459>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.468321, 29.836357, 22.467476>,  <27.776268, 30.014032, 22.284172>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.468321, 29.836357, 22.467476> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439442, -0.889659, -0.124088,
		0.462815, 0.105848, 0.880113,
		-0.769866, -0.444188, 0.458262,
		27.237362, 29.703100, 22.604954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.128361, 29.476288, 22.748861>,  <27.776268, 30.014032, 22.284172>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.128361, 29.476288, 22.748861> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.737497, 29.394268, 22.726532>,  <27.502979, 29.345057, 22.713135>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.737497, 29.394268, 22.726532>,  <28.128361, 29.476288, 22.748861>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.737497, 29.394268, 22.726532> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211913, -0.920437, -0.328465,
		0.015970, -0.332791, 0.942865,
		-0.977158, -0.205051, -0.055823,
		27.444349, 29.332752, 22.709785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.011251, 28.856649, 23.048727>,  <28.128361, 29.476288, 22.748861>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.011251, 28.856649, 23.048727> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.697477, 28.857567, 22.800644>,  <27.509212, 28.858116, 22.651794>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.697477, 28.857567, 22.800644>,  <28.011251, 28.856649, 23.048727>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.697477, 28.857567, 22.800644> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299152, -0.874580, -0.381599,
		-0.543293, -0.484875, 0.685367,
		-0.784436, 0.002291, -0.620205,
		27.462147, 28.858253, 22.614582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.116671, 28.450558, 23.641312>,  <28.011251, 28.856649, 23.048727>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.116671, 28.450558, 23.641312> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.500589, 28.363800, 23.712578>,  <28.730942, 28.311745, 23.755339>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.500589, 28.363800, 23.712578>,  <28.116671, 28.450558, 23.641312>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.500589, 28.363800, 23.712578> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147892, 0.930262, 0.335768,
		-0.238568, -0.295920, 0.924942,
		0.959799, -0.216894, 0.178167,
		28.788528, 28.298731, 23.766027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.267170, 28.883730, 24.223980>,  <28.116671, 28.450558, 23.641312>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.267170, 28.883730, 24.223980> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.622011, 28.776814, 24.073460>,  <28.834917, 28.712664, 23.983147>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.622011, 28.776814, 24.073460>,  <28.267170, 28.883730, 24.223980>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.622011, 28.776814, 24.073460> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359414, 0.911532, 0.199825,
		0.289599, -0.312513, 0.904692,
		0.887104, -0.267290, -0.376301,
		28.888142, 28.696627, 23.960569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.748911, 29.035719, 24.786459>,  <28.267170, 28.883730, 24.223980>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.748911, 29.035719, 24.786459> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.938549, 29.032860, 24.434280>,  <29.052332, 29.031145, 24.222973>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.938549, 29.032860, 24.434280>,  <28.748911, 29.035719, 24.786459>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.938549, 29.032860, 24.434280> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345063, 0.921483, 0.178326,
		0.810041, -0.388352, 0.439336,
		0.474094, -0.007147, -0.880445,
		29.080776, 29.030716, 24.170147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.547577, 29.172382, 24.924427>,  <28.748911, 29.035719, 24.786459>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.547577, 29.172382, 24.924427> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.486256, 29.274017, 24.542446>,  <29.449463, 29.334999, 24.313257>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.486256, 29.274017, 24.542446>,  <29.547577, 29.172382, 24.924427>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.486256, 29.274017, 24.542446> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517561, 0.843874, 0.141448,
		0.841801, -0.472562, -0.260876,
		-0.153303, 0.254090, -0.954954,
		29.440264, 29.350245, 24.255960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.106493, 29.553595, 24.755875>,  <29.547577, 29.172382, 24.924427>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.106493, 29.553595, 24.755875> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.866053, 29.656620, 24.453262>,  <29.721788, 29.718435, 24.271694>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.866053, 29.656620, 24.453262>,  <30.106493, 29.553595, 24.755875>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.866053, 29.656620, 24.453262> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092970, 0.962752, 0.253901,
		0.793748, 0.082284, -0.602655,
		-0.601099, 0.257563, -0.756532,
		29.685722, 29.733889, 24.226303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.528997, 30.003103, 24.295040>,  <30.106493, 29.553595, 24.755875>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.528997, 30.003103, 24.295040> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.156147, 30.099899, 24.187279>,  <29.932436, 30.157976, 24.122622>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.156147, 30.099899, 24.187279>,  <30.528997, 30.003103, 24.295040>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.156147, 30.099899, 24.187279> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214162, 0.968275, 0.128752,
		0.292012, 0.062317, -0.954382,
		-0.932128, 0.241990, -0.269402,
		29.876509, 30.172497, 24.106459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.673319, 30.611483, 23.807673>,  <30.528997, 30.003103, 24.295040>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.673319, 30.611483, 23.807673> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.299294, 30.599220, 23.948933>,  <30.074879, 30.591864, 24.033689>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.299294, 30.599220, 23.948933>,  <30.673319, 30.611483, 23.807673>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.299294, 30.599220, 23.948933> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026595, 0.999513, 0.016345,
		-0.353481, 0.005892, -0.935423,
		-0.935064, -0.030655, 0.353152,
		30.018774, 30.590023, 24.054878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.397020, 31.209396, 23.564724>,  <30.673319, 30.611483, 23.807673>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.397020, 31.209396, 23.564724> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.125580, 31.122677, 23.845436>,  <29.962715, 31.070646, 24.013865>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.125580, 31.122677, 23.845436>,  <30.397020, 31.209396, 23.564724>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.125580, 31.122677, 23.845436> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174576, 0.975674, 0.132599,
		-0.713457, -0.032532, -0.699943,
		-0.678603, -0.216797, 0.701781,
		29.921999, 31.057638, 24.055971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.825695, 31.663834, 23.440035>,  <30.397020, 31.209396, 23.564724>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.825695, 31.663834, 23.440035> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.839388, 31.545151, 23.821777>,  <29.847603, 31.473942, 24.050823>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.839388, 31.545151, 23.821777>,  <29.825695, 31.663834, 23.440035>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.839388, 31.545151, 23.821777> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101592, 0.948935, 0.298666,
		-0.994237, -0.107179, 0.002340,
		0.034231, -0.296707, 0.954355,
		29.849657, 31.456139, 24.108084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.512680, 32.296070, 23.752781>,  <29.825695, 31.663834, 23.440035>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.512680, 32.296070, 23.752781> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.653231, 32.060047, 24.043537>,  <29.737562, 31.918434, 24.217991>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.653231, 32.060047, 24.043537>,  <29.512680, 32.296070, 23.752781>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.653231, 32.060047, 24.043537> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097421, 0.795227, 0.598434,
		-0.931151, -0.139462, 0.336909,
		0.351378, -0.590054, 0.726890,
		29.758644, 31.883030, 24.261604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.030655, 32.347317, 24.263779>,  <29.512680, 32.296070, 23.752781>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.030655, 32.347317, 24.263779> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.389957, 32.258545, 24.415504>,  <29.605539, 32.205280, 24.506540>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.389957, 32.258545, 24.415504>,  <29.030655, 32.347317, 24.263779>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.389957, 32.258545, 24.415504> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043522, 0.813956, 0.579293,
		-0.437310, -0.536863, 0.721483,
		0.898257, -0.221930, 0.379317,
		29.659435, 32.191967, 24.529299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.926361, 32.373951, 24.933502>,  <29.030655, 32.347317, 24.263779>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.926361, 32.373951, 24.933502> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.323851, 32.402508, 24.899048>,  <29.562344, 32.419640, 24.878376>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.323851, 32.402508, 24.899048>,  <28.926361, 32.373951, 24.933502>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.323851, 32.402508, 24.899048> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012440, 0.694642, 0.719248,
		0.111180, -0.715805, 0.689393,
		0.993722, 0.071390, -0.086135,
		29.621967, 32.423923, 24.873207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<28.149433, 24.436487, 24.182312> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.450270, 24.532032, 23.936611>,  <28.630772, 24.589359, 23.789190>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.450270, 24.532032, 23.936611>,  <28.149433, 24.436487, 24.182312>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.450270, 24.532032, 23.936611> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086257, 0.888319, 0.451053,
		0.653390, -0.392216, 0.647493,
		0.752091, 0.238863, -0.614250,
		28.675898, 24.603691, 23.752337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.562296, 24.943523, 24.543509>,  <28.149433, 24.436487, 24.182312>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.562296, 24.943523, 24.543509> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.661360, 24.968410, 24.156769>,  <28.720798, 24.983343, 23.924725>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.661360, 24.968410, 24.156769>,  <28.562296, 24.943523, 24.543509>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.661360, 24.968410, 24.156769> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270305, 0.953873, 0.130621,
		0.930377, -0.293693, 0.219416,
		0.247657, 0.062217, -0.966848,
		28.735657, 24.987076, 23.866714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.233526, 25.198755, 24.514458>,  <28.562296, 24.943523, 24.543509>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.233526, 25.198755, 24.514458> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.086473, 25.270916, 24.149536>,  <28.998241, 25.314213, 23.930582>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.086473, 25.270916, 24.149536>,  <29.233526, 25.198755, 24.514458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.086473, 25.270916, 24.149536> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052119, 0.983459, 0.173472,
		0.928510, 0.016225, -0.370953,
		-0.367632, 0.180404, -0.912305,
		28.976183, 25.325037, 23.875845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.658035, 25.474253, 24.024572>,  <29.233526, 25.198755, 24.514458>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.658035, 25.474253, 24.024572> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.330502, 25.621098, 23.848057>,  <29.133982, 25.709206, 23.742147>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.330502, 25.621098, 23.848057>,  <29.658035, 25.474253, 24.024572>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.330502, 25.621098, 23.848057> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440076, 0.895073, -0.071960,
		0.368569, -0.253124, -0.894475,
		-0.818835, 0.367114, -0.441289,
		29.084850, 25.731232, 23.715670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.838577, 26.058748, 23.789427>,  <29.658035, 25.474253, 24.024572>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.838577, 26.058748, 23.789427> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.451981, 26.153500, 23.749855>,  <29.220022, 26.210350, 23.726112>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.451981, 26.153500, 23.749855>,  <29.838577, 26.058748, 23.789427>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.451981, 26.153500, 23.749855> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234348, 0.971463, 0.036615,
		0.104782, 0.012204, -0.994420,
		-0.966489, 0.236877, -0.098931,
		29.162033, 26.224562, 23.720175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.862127, 26.810766, 23.497805>,  <29.838577, 26.058748, 23.789427>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.862127, 26.810766, 23.497805> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.478498, 26.771187, 23.603928>,  <29.248322, 26.747438, 23.667603>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.478498, 26.771187, 23.603928>,  <29.862127, 26.810766, 23.497805>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.478498, 26.771187, 23.603928> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079622, 0.993392, 0.082664,
		-0.271735, 0.058156, -0.960613,
		-0.959073, -0.098949, 0.265309,
		29.190777, 26.741503, 23.683519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.476046, 27.183573, 23.019121>,  <29.862127, 26.810766, 23.497805>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.476046, 27.183573, 23.019121> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.261286, 27.141655, 23.353966>,  <29.132429, 27.116505, 23.554873>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.261286, 27.141655, 23.353966>,  <29.476046, 27.183573, 23.019121>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.261286, 27.141655, 23.353966> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042299, 0.994351, 0.097349,
		-0.842586, 0.016858, -0.538298,
		-0.536899, -0.104794, 0.837113,
		29.100216, 27.110216, 23.605099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.929770, 27.678902, 22.940147>,  <29.476046, 27.183573, 23.019121>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.929770, 27.678902, 22.940147> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.934214, 27.573860, 23.326084>,  <28.936880, 27.510836, 23.557646>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.934214, 27.573860, 23.326084>,  <28.929770, 27.678902, 22.940147>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.934214, 27.573860, 23.326084> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114770, 0.958187, 0.262116,
		-0.993330, -0.113647, -0.019492,
		0.011112, -0.262605, 0.964839,
		28.937548, 27.495079, 23.615536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.289135, 27.942186, 23.174265>,  <28.929770, 27.678902, 22.940147>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.289135, 27.942186, 23.174265> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.574535, 27.905006, 23.452049>,  <28.745775, 27.882698, 23.618719>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.574535, 27.905006, 23.452049>,  <28.289135, 27.942186, 23.174265>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.574535, 27.905006, 23.452049> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010507, 0.989631, 0.143250,
		-0.700575, -0.109506, 0.705127,
		0.713502, -0.092949, 0.694461,
		28.788586, 27.877121, 23.660387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.636827, 28.203114, 23.093550>,  <28.289135, 27.942186, 23.174265>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.636827, 28.203114, 23.093550> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.514763, 28.355511, 22.744442>,  <27.441525, 28.446949, 22.534977>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.514763, 28.355511, 22.744442>,  <27.636827, 28.203114, 23.093550>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.514763, 28.355511, 22.744442> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040945, -0.910386, -0.411728,
		-0.951420, -0.161378, 0.262214,
		-0.305160, 0.380991, -0.872768,
		27.423214, 28.469809, 22.482613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.021635, 27.832973, 22.909725>,  <27.636827, 28.203114, 23.093550>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.021635, 27.832973, 22.909725> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.178547, 27.979652, 22.572289>,  <27.272694, 28.067659, 22.369827>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.178547, 27.979652, 22.572289>,  <27.021635, 27.832973, 22.909725>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.178547, 27.979652, 22.572289> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051256, -0.924392, -0.377985,
		-0.918416, 0.105038, -0.381418,
		0.392282, 0.366697, -0.843592,
		27.296232, 28.089663, 22.319210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.534328, 27.670759, 22.409042>,  <27.021635, 27.832973, 22.909725>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.534328, 27.670759, 22.409042> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.874472, 27.748974, 22.213631>,  <27.078558, 27.795902, 22.096384>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.874472, 27.748974, 22.213631>,  <26.534328, 27.670759, 22.409042>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.874472, 27.748974, 22.213631> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019701, -0.915914, -0.400891,
		-0.525839, 0.350524, -0.775001,
		0.850356, 0.195536, -0.488529,
		27.129578, 27.807634, 22.067072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.407942, 27.533051, 21.691242>,  <26.534328, 27.670759, 22.409042>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.407942, 27.533051, 21.691242> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.802729, 27.519798, 21.754234>,  <27.039600, 27.511847, 21.792028>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.802729, 27.519798, 21.754234>,  <26.407942, 27.533051, 21.691242>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.802729, 27.519798, 21.754234> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066787, -0.806005, -0.588129,
		0.146413, 0.590981, -0.793288,
		0.986967, -0.033128, 0.157479,
		27.098818, 27.509859, 21.801477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.650223, 27.347454, 21.050797>,  <26.407942, 27.533051, 21.691242>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.650223, 27.347454, 21.050797> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.961229, 27.262367, 21.287514>,  <27.147833, 27.211315, 21.429544>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.961229, 27.262367, 21.287514>,  <26.650223, 27.347454, 21.050797>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.961229, 27.262367, 21.287514> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037007, -0.923945, -0.380730,
		0.627771, 0.317925, -0.710512,
		0.777518, -0.212717, 0.591792,
		27.194485, 27.198551, 21.465052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.161461, 27.123869, 20.631609>,  <26.650223, 27.347454, 21.050797>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.161461, 27.123869, 20.631609> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.253578, 26.963329, 20.986210>,  <27.308849, 26.867006, 21.198971>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.253578, 26.963329, 20.986210>,  <27.161461, 27.123869, 20.631609>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.253578, 26.963329, 20.986210> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434415, -0.772774, -0.462714,
		0.870774, 0.491670, -0.003614,
		0.230295, -0.401350, 0.886500,
		27.322666, 26.842924, 21.252159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.865267, 26.898884, 20.442535>,  <27.161461, 27.123869, 20.631609>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.865267, 26.898884, 20.442535> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.755207, 26.710583, 20.777840>,  <27.689171, 26.597601, 20.979023>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.755207, 26.710583, 20.777840>,  <27.865267, 26.898884, 20.442535>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.755207, 26.710583, 20.777840> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448912, -0.833938, -0.320976,
		0.850160, 0.287990, 0.440783,
		-0.275148, -0.470754, 0.838263,
		27.672663, 26.569357, 21.029318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.434324, 26.553982, 20.704695>,  <27.865267, 26.898884, 20.442535>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.434324, 26.553982, 20.704695> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.101728, 26.375477, 20.837044>,  <27.902172, 26.268373, 20.916452>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.101728, 26.375477, 20.837044>,  <28.434324, 26.553982, 20.704695>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.101728, 26.375477, 20.837044> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401775, -0.894380, -0.196623,
		0.383672, -0.030554, 0.922964,
		-0.831488, -0.446263, 0.330873,
		27.852282, 26.241598, 20.936306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.668257, 25.924572, 21.032467>,  <28.434324, 26.553982, 20.704695>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.668257, 25.924572, 21.032467> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.283939, 25.865433, 20.938641>,  <28.053349, 25.829950, 20.882345>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.283939, 25.865433, 20.938641>,  <28.668257, 25.924572, 21.032467>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.283939, 25.865433, 20.938641> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222190, -0.916604, -0.332369,
		-0.165865, -0.371455, 0.913515,
		-0.960791, -0.147846, -0.234566,
		27.995703, 25.821079, 20.868271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.567114, 25.185324, 21.231916>,  <28.668257, 25.924572, 21.032467>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.567114, 25.185324, 21.231916> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.275578, 25.284813, 20.976753>,  <28.100657, 25.344507, 20.823654>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.275578, 25.284813, 20.976753>,  <28.567114, 25.185324, 21.231916>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.275578, 25.284813, 20.976753> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097552, -0.884457, -0.456311,
		-0.677697, -0.394808, 0.620366,
		-0.728842, 0.248722, -0.637908,
		28.056925, 25.359430, 20.785381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.224125, 24.614456, 21.194010>,  <28.567114, 25.185324, 21.231916>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.224125, 24.614456, 21.194010> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.123447, 24.825932, 20.869755>,  <28.063040, 24.952818, 20.675201>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.123447, 24.825932, 20.869755>,  <28.224125, 24.614456, 21.194010>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.123447, 24.825932, 20.869755> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014249, -0.839538, -0.543113,
		-0.967702, -0.125148, 0.218840,
		-0.251694, 0.528690, -0.810640,
		28.047939, 24.984539, 20.626562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.519979, 24.432253, 21.018888>,  <28.224125, 24.614456, 21.194010>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.519979, 24.432253, 21.018888> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.715450, 24.559071, 20.693760>,  <27.832733, 24.635162, 20.498682>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.715450, 24.559071, 20.693760>,  <27.519979, 24.432253, 21.018888>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.715450, 24.559071, 20.693760> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131065, -0.894388, -0.427659,
		-0.862565, 0.315519, -0.395511,
		0.488675, 0.317046, -0.812821,
		27.862053, 24.654184, 20.449913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.212122, 24.021343, 20.455765>,  <27.519979, 24.432253, 21.018888>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.212122, 24.021343, 20.455765> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.543371, 24.168022, 20.286179>,  <27.742121, 24.256029, 20.184427>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.543371, 24.168022, 20.286179>,  <27.212122, 24.021343, 20.455765>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.543371, 24.168022, 20.286179> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016359, -0.740211, -0.672175,
		-0.560310, 0.563579, -0.606986,
		0.828121, 0.366697, -0.423968,
		27.791807, 24.278030, 20.158989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.072933, 23.979200, 19.768549>,  <27.212122, 24.021343, 20.455765>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.072933, 23.979200, 19.768549> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.470604, 23.981712, 19.811577>,  <27.709206, 23.983219, 19.837395>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.470604, 23.981712, 19.811577>,  <27.072933, 23.979200, 19.768549>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.470604, 23.981712, 19.811577> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072650, -0.776354, -0.626096,
		0.079581, 0.630265, -0.772290,
		0.994177, 0.006281, 0.107572,
		27.768858, 23.983597, 19.843849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.636192, 25.193016, 19.970629> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.254955, 25.094402, 19.900398>,  <33.026211, 25.035234, 19.858259>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.254955, 25.094402, 19.900398>,  <33.636192, 25.193016, 19.970629>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.254955, 25.094402, 19.900398> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231556, 0.967507, -0.101553,
		0.194908, -0.056134, -0.979214,
		-0.953097, -0.246536, -0.175577,
		32.969025, 25.020441, 19.847725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.480103, 25.612225, 19.527983>,  <33.636192, 25.193016, 19.970629>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.480103, 25.612225, 19.527983> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.125736, 25.506367, 19.680359>,  <32.913116, 25.442852, 19.771784>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.125736, 25.506367, 19.680359>,  <33.480103, 25.612225, 19.527983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.125736, 25.506367, 19.680359> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271006, 0.961830, 0.037942,
		-0.376439, -0.069624, -0.923821,
		-0.885917, -0.264644, 0.380939,
		32.859962, 25.426973, 19.794641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.997944, 26.072994, 19.180117>,  <33.480103, 25.612225, 19.527983>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.997944, 26.072994, 19.180117> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.803585, 25.945042, 19.505466>,  <32.686970, 25.868271, 19.700676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.803585, 25.945042, 19.505466>,  <32.997944, 26.072994, 19.180117>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.803585, 25.945042, 19.505466> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447368, 0.890494, 0.082959,
		-0.750842, -0.323568, -0.575795,
		-0.485899, -0.319881, 0.813374,
		32.657814, 25.849077, 19.749479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.349510, 26.259001, 19.117899>,  <32.997944, 26.072994, 19.180117>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.349510, 26.259001, 19.117899> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.360195, 26.213047, 19.515106>,  <32.366604, 26.185474, 19.753431>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.360195, 26.213047, 19.515106>,  <32.349510, 26.259001, 19.117899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.360195, 26.213047, 19.515106> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455434, 0.882889, 0.114395,
		-0.889869, -0.455311, -0.028740,
		0.026711, -0.114886, 0.993020,
		32.368210, 26.178581, 19.813011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.651470, 26.332243, 19.388227>,  <32.349510, 26.259001, 19.117899>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.651470, 26.332243, 19.388227> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.902063, 26.419422, 19.687565>,  <32.052418, 26.471729, 19.867167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.902063, 26.419422, 19.687565>,  <31.651470, 26.332243, 19.388227>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.902063, 26.419422, 19.687565> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452962, 0.883144, 0.121995,
		-0.634306, -0.415398, 0.651997,
		0.626483, 0.217948, 0.748343,
		32.090008, 26.484806, 19.912067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.267582, 26.799486, 19.908783>,  <31.651470, 26.332243, 19.388227>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.267582, 26.799486, 19.908783> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.658724, 26.826962, 19.987862>,  <31.893408, 26.843447, 20.035309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.658724, 26.826962, 19.987862>,  <31.267582, 26.799486, 19.908783>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.658724, 26.826962, 19.987862> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092933, 0.988881, 0.116096,
		-0.187526, -0.131898, 0.973364,
		0.977854, 0.068686, 0.197699,
		31.952080, 26.847567, 20.047171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.375593, 27.160582, 20.595284>,  <31.267582, 26.799486, 19.908783>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.375593, 27.160582, 20.595284> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.709602, 27.207027, 20.380154>,  <31.910007, 27.234896, 20.251076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.709602, 27.207027, 20.380154>,  <31.375593, 27.160582, 20.595284>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.709602, 27.207027, 20.380154> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057292, 0.990514, 0.124902,
		0.547227, -0.073483, 0.833753,
		0.835021, 0.116117, -0.537825,
		31.960110, 27.241863, 20.218805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.712423, 27.525858, 20.974197>,  <31.375593, 27.160582, 20.595284>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.712423, 27.525858, 20.974197> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.875383, 27.601582, 20.616833>,  <31.973160, 27.647017, 20.402414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.875383, 27.601582, 20.616833>,  <31.712423, 27.525858, 20.974197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.875383, 27.601582, 20.616833> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067248, 0.981842, 0.177381,
		0.910770, -0.012185, 0.412735,
		0.407402, 0.189309, -0.893413,
		31.997604, 27.658375, 20.348808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.945450, 28.173550, 21.050896>,  <31.712423, 27.525858, 20.974197>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.945450, 28.173550, 21.050896> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.984201, 28.136238, 20.654530>,  <32.007454, 28.113852, 20.416710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.984201, 28.136238, 20.654530>,  <31.945450, 28.173550, 21.050896>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.984201, 28.136238, 20.654530> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037872, 0.994532, -0.097324,
		0.994575, 0.046956, 0.092817,
		0.096879, -0.093281, -0.990915,
		32.013264, 28.108253, 20.357254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.550247, 28.551020, 20.769726>,  <31.945450, 28.173550, 21.050896>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.550247, 28.551020, 20.769726> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.306812, 28.514908, 20.454391>,  <32.160751, 28.493240, 20.265192>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.306812, 28.514908, 20.454391>,  <32.550247, 28.551020, 20.769726>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.306812, 28.514908, 20.454391> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116448, 0.972588, -0.201275,
		0.784895, -0.214294, -0.581393,
		-0.608589, -0.090278, -0.788333,
		32.124237, 28.487825, 20.217892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.924316, 28.806616, 20.238565>,  <32.550247, 28.551020, 20.769726>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.924316, 28.806616, 20.238565> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.557270, 28.806446, 20.079578>,  <32.337044, 28.806345, 19.984186>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.557270, 28.806446, 20.079578>,  <32.924316, 28.806616, 20.238565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.557270, 28.806446, 20.079578> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114578, 0.957266, -0.265543,
		0.380597, -0.289207, -0.878354,
		-0.917615, -0.000425, -0.397469,
		32.281986, 28.806318, 19.960337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.051941, 29.126909, 19.616571>,  <32.924316, 28.806616, 20.238565>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.051941, 29.126909, 19.616571> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.663666, 29.171040, 19.701988>,  <32.430702, 29.197517, 19.753239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.663666, 29.171040, 19.701988>,  <33.051941, 29.126909, 19.616571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.663666, 29.171040, 19.701988> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074816, 0.982985, -0.167762,
		-0.228415, -0.146867, -0.962422,
		-0.970685, 0.110323, 0.213541,
		32.372459, 29.204136, 19.766050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.795578, 29.429180, 19.067322>,  <33.051941, 29.126909, 19.616571>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.795578, 29.429180, 19.067322> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.525852, 29.495972, 19.355049>,  <32.364017, 29.536047, 19.527685>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.525852, 29.495972, 19.355049>,  <32.795578, 29.429180, 19.067322>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.525852, 29.495972, 19.355049> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098761, 0.985741, -0.136241,
		-0.731810, -0.020829, -0.681190,
		-0.674315, 0.166977, 0.719318,
		32.323559, 29.546064, 19.570845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.313488, 30.046410, 18.803514>,  <32.795578, 29.429180, 19.067322>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.313488, 30.046410, 18.803514> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.285904, 29.998596, 19.199688>,  <32.269356, 29.969908, 19.437391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.285904, 29.998596, 19.199688>,  <32.313488, 30.046410, 18.803514>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.285904, 29.998596, 19.199688> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191611, 0.972725, 0.130736,
		-0.979045, 0.198794, -0.044173,
		-0.068958, -0.119532, 0.990433,
		32.265217, 29.962736, 19.496819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.607132, 29.828360, 18.528387>,  <32.313488, 30.046410, 18.803514>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.607132, 29.828360, 18.528387> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.331995, 29.889290, 18.244507>,  <31.166914, 29.925848, 18.074179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.331995, 29.889290, 18.244507>,  <31.607132, 29.828360, 18.528387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.331995, 29.889290, 18.244507> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278227, -0.847725, -0.451611,
		-0.670422, -0.508093, 0.540718,
		-0.687841, 0.152327, -0.709698,
		31.125643, 29.934988, 18.031597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.106110, 29.292133, 18.547651>,  <31.607132, 29.828360, 18.528387>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.106110, 29.292133, 18.547651> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.184763, 29.464119, 18.195183>,  <31.231955, 29.567310, 17.983702>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.184763, 29.464119, 18.195183>,  <31.106110, 29.292133, 18.547651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.184763, 29.464119, 18.195183> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153375, -0.901143, -0.405483,
		-0.968407, -0.055418, -0.243141,
		0.196634, 0.429964, -0.881173,
		31.243753, 29.593109, 17.930830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.730055, 28.913694, 17.895996>,  <31.106110, 29.292133, 18.547651>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.730055, 28.913694, 17.895996> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.061958, 29.096096, 17.767273>,  <31.261101, 29.205538, 17.690039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.061958, 29.096096, 17.767273>,  <30.730055, 28.913694, 17.895996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.061958, 29.096096, 17.767273> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301192, -0.851278, -0.429663,
		-0.469876, 0.259590, -0.843700,
		0.829759, 0.456004, -0.321808,
		31.310886, 29.232897, 17.670731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.958492, 28.539265, 17.322571>,  <30.730055, 28.913694, 17.895996>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.958492, 28.539265, 17.322571> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.290190, 28.756603, 17.374928>,  <31.489208, 28.887007, 17.406342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.290190, 28.756603, 17.374928>,  <30.958492, 28.539265, 17.322571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.290190, 28.756603, 17.374928> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551712, -0.758412, -0.347023,
		-0.089282, 0.359981, -0.928677,
		0.829242, 0.543346, 0.130894,
		31.538961, 28.919607, 17.414196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.348328, 28.468821, 16.693287>,  <30.958492, 28.539265, 17.322571>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.348328, 28.468821, 16.693287> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.614483, 28.538200, 16.983715>,  <31.774176, 28.579828, 17.157972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.614483, 28.538200, 16.983715>,  <31.348328, 28.468821, 16.693287>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.614483, 28.538200, 16.983715> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476965, -0.846988, -0.234767,
		0.574252, 0.502520, -0.646304,
		0.665387, 0.173449, 0.726069,
		31.814098, 28.590235, 17.201536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.043888, 28.344021, 16.358362>,  <31.348328, 28.468821, 16.693287>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.043888, 28.344021, 16.358362> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.114578, 28.339977, 16.752045>,  <32.156994, 28.337551, 16.988255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.114578, 28.339977, 16.752045>,  <32.043888, 28.344021, 16.358362>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.114578, 28.339977, 16.752045> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472804, -0.876150, -0.093898,
		0.863263, 0.481932, -0.150061,
		0.176729, -0.010110, 0.984208,
		32.167599, 28.336945, 17.047306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.716206, 28.041412, 16.346447>,  <32.043888, 28.344021, 16.358362>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.716206, 28.041412, 16.346447> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.556416, 27.997192, 16.710468>,  <32.460541, 27.970661, 16.928881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.556416, 27.997192, 16.710468>,  <32.716206, 28.041412, 16.346447>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.556416, 27.997192, 16.710468> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365142, -0.929747, 0.047340,
		0.840888, 0.351210, 0.411775,
		-0.399473, -0.110549, 0.910055,
		32.436573, 27.964027, 16.983484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.278095, 27.728745, 16.666693>,  <32.716206, 28.041412, 16.346447>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.278095, 27.728745, 16.666693> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.974438, 27.626720, 16.906239>,  <32.792244, 27.565506, 17.049967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.974438, 27.626720, 16.906239>,  <33.278095, 27.728745, 16.666693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.974438, 27.626720, 16.906239> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278156, -0.958914, -0.055806,
		0.588494, 0.124213, 0.798903,
		-0.759147, -0.255061, 0.598865,
		32.746693, 27.550201, 17.085897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.574387, 27.202435, 17.066206>,  <33.278095, 27.728745, 16.666693>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.574387, 27.202435, 17.066206> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.180504, 27.162479, 17.123295>,  <32.944172, 27.138506, 17.157547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.180504, 27.162479, 17.123295>,  <33.574387, 27.202435, 17.066206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.180504, 27.162479, 17.123295> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119262, -0.983728, 0.134375,
		0.126976, 0.149342, 0.980599,
		-0.984710, -0.099886, 0.142721,
		32.885090, 27.132513, 17.166111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.420017, 26.747458, 17.719893>,  <33.574387, 27.202435, 17.066206>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.420017, 26.747458, 17.719893> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.111774, 26.721371, 17.466309>,  <32.926826, 26.705719, 17.314157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.111774, 26.721371, 17.466309>,  <33.420017, 26.747458, 17.719893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.111774, 26.721371, 17.466309> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038391, -0.997694, 0.055969,
		-0.636150, 0.018792, 0.771336,
		-0.770609, -0.065217, -0.633962,
		32.880592, 26.701805, 17.276119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.074909, 26.209385, 17.988754>,  <33.420017, 26.747458, 17.719893>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.074909, 26.209385, 17.988754> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.905205, 26.228222, 17.627029>,  <32.803383, 26.239523, 17.409994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.905205, 26.228222, 17.627029>,  <33.074909, 26.209385, 17.988754>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.905205, 26.228222, 17.627029> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010334, -0.998834, -0.047164,
		-0.905481, -0.010664, 0.424253,
		-0.424262, 0.047090, -0.904314,
		32.777927, 26.242350, 17.355736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.578362, 25.686546, 18.008755>,  <33.074909, 26.209385, 17.988754>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.578362, 25.686546, 18.008755> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.610371, 25.744537, 17.614277>,  <32.629574, 25.779333, 17.377590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.610371, 25.744537, 17.614277>,  <32.578362, 25.686546, 18.008755>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.610371, 25.744537, 17.614277> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051017, -0.987474, -0.149306,
		-0.995487, 0.062260, -0.071621,
		0.080020, 0.144979, -0.986194,
		32.634377, 25.788031, 17.318419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.122089, 25.254663, 17.770472>,  <32.578362, 25.686546, 18.008755>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.122089, 25.254663, 17.770472> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.368240, 25.321743, 17.462399>,  <32.515930, 25.361990, 17.277554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.368240, 25.321743, 17.462399>,  <32.122089, 25.254663, 17.770472>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.368240, 25.321743, 17.462399> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006773, -0.978195, -0.207578,
		-0.788201, 0.122523, -0.603098,
		0.615381, 0.167698, -0.770185,
		32.552856, 25.372053, 17.231342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.842592, 24.778177, 17.226500>,  <32.122089, 25.254663, 17.770472>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.842592, 24.778177, 17.226500> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.218388, 24.864559, 17.120121>,  <32.443863, 24.916388, 17.056293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.218388, 24.864559, 17.120121>,  <31.842592, 24.778177, 17.226500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.218388, 24.864559, 17.120121> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191423, -0.974716, -0.115264,
		-0.284116, 0.057380, -0.957071,
		0.939487, 0.215954, -0.265948,
		32.500233, 24.929346, 17.040337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.265884, 24.791920, 16.699917>,  <31.842592, 24.778177, 17.226500>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.265884, 24.791920, 16.699917> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.023890, 24.638683, 16.979126>,  <30.878693, 24.546741, 17.146650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.023890, 24.638683, 16.979126>,  <31.265884, 24.791920, 16.699917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.023890, 24.638683, 16.979126> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218096, 0.922853, 0.317453,
		-0.765783, 0.039820, -0.641865,
		-0.604988, -0.383089, 0.698021,
		30.842394, 24.523756, 17.188532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.570404, 25.089584, 16.673582>,  <31.265884, 24.791920, 16.699917>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.570404, 25.089584, 16.673582> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.591316, 24.960152, 17.051483>,  <30.603865, 24.882492, 17.278225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.591316, 24.960152, 17.051483>,  <30.570404, 25.089584, 16.673582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.591316, 24.960152, 17.051483> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420465, 0.850973, 0.314728,
		-0.905801, -0.413691, -0.091565,
		0.052281, -0.323581, 0.944755,
		30.607000, 24.863077, 17.334909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.846968, 25.211088, 16.964594>,  <30.570404, 25.089584, 16.673582>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.846968, 25.211088, 16.964594> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.104187, 25.181709, 17.269512>,  <30.258518, 25.164082, 17.452463>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.104187, 25.181709, 17.269512>,  <29.846968, 25.211088, 16.964594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.104187, 25.181709, 17.269512> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454531, 0.764506, 0.457090,
		-0.616352, -0.640418, 0.458230,
		0.643049, -0.073449, 0.762295,
		30.297102, 25.159674, 17.498201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.427483, 25.232376, 17.512342>,  <29.846968, 25.211088, 16.964594>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.427483, 25.232376, 17.512342> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.792202, 25.312424, 17.655773>,  <30.011034, 25.360453, 17.741833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.792202, 25.312424, 17.655773>,  <29.427483, 25.232376, 17.512342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.792202, 25.312424, 17.655773> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389870, 0.696079, 0.602889,
		-0.128949, -0.689511, 0.712703,
		0.911797, 0.200120, 0.358579,
		30.065741, 25.372459, 17.763348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.397152, 25.352390, 18.250404>,  <29.427483, 25.232376, 17.512342>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.397152, 25.352390, 18.250404> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.728420, 25.534679, 18.119900>,  <29.927181, 25.644053, 18.041597>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.728420, 25.534679, 18.119900>,  <29.397152, 25.352390, 18.250404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.728420, 25.534679, 18.119900> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246286, 0.818809, 0.518551,
		0.503463, -0.349095, 0.790353,
		0.828171, 0.455724, -0.326263,
		29.976871, 25.671396, 18.022020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.634386, 25.684822, 18.789341>,  <29.397152, 25.352390, 18.250404>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.634386, 25.684822, 18.789341> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.786263, 25.892025, 18.482746>,  <29.877388, 26.016346, 18.298790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.786263, 25.892025, 18.482746>,  <29.634386, 25.684822, 18.789341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.786263, 25.892025, 18.482746> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289767, 0.853433, 0.433228,
		0.878562, 0.057611, 0.474141,
		0.379689, 0.518008, -0.766488,
		29.900169, 26.047428, 18.252800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.838495, 26.249020, 19.110800>,  <29.634386, 25.684822, 18.789341>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.838495, 26.249020, 19.110800> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.874660, 26.353600, 18.726410>,  <29.896358, 26.416348, 18.495777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.874660, 26.353600, 18.726410>,  <29.838495, 26.249020, 19.110800>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.874660, 26.353600, 18.726410> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258552, 0.938001, 0.230876,
		0.961757, 0.227588, 0.152405,
		0.090412, 0.261452, -0.960973,
		29.901785, 26.432035, 18.438118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.191027, 26.948936, 19.107975>,  <29.838495, 26.249020, 19.110800>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.191027, 26.948936, 19.107975> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.009811, 26.906044, 18.753967>,  <29.901081, 26.880308, 18.541563>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.009811, 26.906044, 18.753967>,  <30.191027, 26.948936, 19.107975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.009811, 26.906044, 18.753967> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270499, 0.962472, 0.021854,
		0.849462, 0.249297, -0.465044,
		-0.453040, -0.107230, -0.885018,
		29.873899, 26.873875, 18.488462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.276299, 27.563036, 18.721117>,  <30.191027, 26.948936, 19.107975>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.276299, 27.563036, 18.721117> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.959509, 27.388767, 18.550018>,  <29.769436, 27.284206, 18.447359>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.959509, 27.388767, 18.550018>,  <30.276299, 27.563036, 18.721117>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.959509, 27.388767, 18.550018> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373293, 0.899907, -0.225432,
		0.483148, -0.018860, -0.875336,
		-0.791972, -0.435674, -0.427748,
		29.721918, 27.258064, 18.421694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.169537, 27.921480, 18.085966>,  <30.276299, 27.563036, 18.721117>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.169537, 27.921480, 18.085966> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.822886, 27.731148, 18.146019>,  <29.614895, 27.616949, 18.182051>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.822886, 27.731148, 18.146019>,  <30.169537, 27.921480, 18.085966>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.822886, 27.731148, 18.146019> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498157, 0.808140, -0.314243,
		0.028198, -0.347123, -0.937396,
		-0.866628, -0.475832, 0.150134,
		29.562897, 27.588398, 18.191059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.790468, 28.231821, 17.582357>,  <30.169537, 27.921480, 18.085966>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.790468, 28.231821, 17.582357> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.536865, 28.075508, 17.849289>,  <29.384705, 27.981720, 18.009447>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.536865, 28.075508, 17.849289>,  <29.790468, 28.231821, 17.582357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.536865, 28.075508, 17.849289> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491020, 0.870086, 0.043011,
		-0.597441, -0.300402, -0.743521,
		-0.634006, -0.390780, 0.667328,
		29.346663, 27.958275, 18.049488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.164885, 28.306551, 17.334146>,  <29.790468, 28.231821, 17.582357>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.164885, 28.306551, 17.334146> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.094322, 28.279839, 17.726967>,  <29.051985, 28.263811, 17.962658>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.094322, 28.279839, 17.726967>,  <29.164885, 28.306551, 17.334146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.094322, 28.279839, 17.726967> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622205, 0.780652, -0.058684,
		-0.762720, -0.621389, -0.179262,
		-0.176407, -0.066778, 0.982049,
		29.041399, 28.259806, 18.021582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.564293, 28.664085, 17.493853>,  <29.164885, 28.306551, 17.334146>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.564293, 28.664085, 17.493853> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.637478, 28.563198, 17.873940>,  <28.681389, 28.502666, 18.101992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.637478, 28.563198, 17.873940>,  <28.564293, 28.664085, 17.493853>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.637478, 28.563198, 17.873940> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557173, 0.769720, 0.311591,
		-0.809990, -0.586444, 0.000301,
		0.182962, -0.252218, 0.950216,
		28.692366, 28.487534, 18.159004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.917570, 28.596241, 17.790075>,  <28.564293, 28.664085, 17.493853>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.917570, 28.596241, 17.790075> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.206675, 28.692142, 18.049347>,  <28.380136, 28.749683, 18.204910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.206675, 28.692142, 18.049347>,  <27.917570, 28.596241, 17.790075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.206675, 28.692142, 18.049347> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543438, 0.776592, 0.318717,
		-0.426956, -0.582601, 0.691582,
		0.722762, 0.239753, 0.648177,
		28.423504, 28.764069, 18.243799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<41.185635, 40.753647, 23.219690> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.575245, 40.842602, 23.236706>,  <41.809013, 40.895973, 23.246916>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.575245, 40.842602, 23.236706>,  <41.185635, 40.753647, 23.219690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.575245, 40.842602, 23.236706> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224030, -0.919381, -0.323341,
		-0.032797, 0.324474, -0.945326,
		0.974030, 0.222385, 0.042539,
		41.867455, 40.909317, 23.249468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.561031, 40.857037, 22.509142>,  <41.185635, 40.753647, 23.219690>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.561031, 40.857037, 22.509142> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.781021, 40.683712, 22.794735>,  <41.913013, 40.579716, 22.966091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.781021, 40.683712, 22.794735>,  <41.561031, 40.857037, 22.509142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.781021, 40.683712, 22.794735> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125677, -0.888084, -0.442167,
		0.825671, 0.153450, -0.542881,
		0.549975, -0.433312, 0.713981,
		41.946014, 40.553719, 23.008928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.203499, 40.441692, 22.220169>,  <41.561031, 40.857037, 22.509142>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.203499, 40.441692, 22.220169> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.079830, 40.300346, 22.573338>,  <42.005630, 40.215538, 22.785238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.079830, 40.300346, 22.573338>,  <42.203499, 40.441692, 22.220169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.079830, 40.300346, 22.573338> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008847, -0.927296, -0.374224,
		0.950966, -0.123509, 0.283565,
		-0.309169, -0.353365, 0.882920,
		41.987080, 40.194336, 22.838213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.644043, 39.926598, 22.328217>,  <42.203499, 40.441692, 22.220169>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.644043, 39.926598, 22.328217> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.365444, 39.864151, 22.608364>,  <42.198284, 39.826683, 22.776453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.365444, 39.864151, 22.608364>,  <42.644043, 39.926598, 22.328217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.365444, 39.864151, 22.608364> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106791, -0.987728, -0.113974,
		0.709569, -0.004589, 0.704621,
		-0.696496, -0.156119, 0.700371,
		42.156494, 39.817314, 22.818476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.909298, 39.475128, 22.610739>,  <42.644043, 39.926598, 22.328217>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.909298, 39.475128, 22.610739> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.525448, 39.432850, 22.715000>,  <42.295135, 39.407482, 22.777557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.525448, 39.432850, 22.715000>,  <42.909298, 39.475128, 22.610739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.525448, 39.432850, 22.715000> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096125, -0.994151, -0.049236,
		0.264331, -0.022194, 0.964177,
		-0.959630, -0.105696, 0.260651,
		42.237560, 39.401142, 22.793196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.828526, 38.843040, 23.088791>,  <42.909298, 39.475128, 22.610739>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.828526, 38.843040, 23.088791> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.442936, 38.872936, 22.986679>,  <42.211582, 38.890873, 22.925411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.442936, 38.872936, 22.986679>,  <42.828526, 38.843040, 23.088791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.442936, 38.872936, 22.986679> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039172, -0.989136, -0.141689,
		-0.263096, -0.126585, 0.956429,
		-0.963974, 0.074743, -0.255279,
		42.153744, 38.895359, 22.910095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.418262, 38.375561, 23.478569>,  <42.828526, 38.843040, 23.088791>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.418262, 38.375561, 23.478569> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.172867, 38.428326, 23.167126>,  <42.025631, 38.459984, 22.980259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.172867, 38.428326, 23.167126>,  <42.418262, 38.375561, 23.478569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.172867, 38.428326, 23.167126> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136000, -0.988867, -0.060375,
		-0.777905, 0.068851, 0.624599,
		-0.613488, 0.131912, -0.778609,
		41.988819, 38.467899, 22.933542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.834480, 37.910786, 23.529020>,  <42.418262, 38.375561, 23.478569>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.834480, 37.910786, 23.529020> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.799316, 38.021381, 23.146225>,  <41.778217, 38.087738, 22.916548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.799316, 38.021381, 23.146225>,  <41.834480, 37.910786, 23.529020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.799316, 38.021381, 23.146225> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449235, -0.868468, -0.209645,
		-0.889078, 0.411482, 0.200557,
		-0.087912, 0.276488, -0.956988,
		41.772942, 38.104328, 22.859129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.169880, 37.797756, 23.333092>,  <41.834480, 37.910786, 23.529020>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.169880, 37.797756, 23.333092> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.377262, 37.820972, 22.991840>,  <41.501694, 37.834904, 22.787088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.377262, 37.820972, 22.991840>,  <41.169880, 37.797756, 23.333092>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.377262, 37.820972, 22.991840> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455555, -0.825573, -0.333014,
		-0.723649, 0.561302, -0.401586,
		0.518460, 0.058041, -0.853130,
		41.532799, 37.838387, 22.735901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.717606, 37.638664, 22.822807>,  <41.169880, 37.797756, 23.333092>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.717606, 37.638664, 22.822807> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.075520, 37.573921, 22.656353>,  <41.290268, 37.535076, 22.556480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.075520, 37.573921, 22.656353>,  <40.717606, 37.638664, 22.822807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.075520, 37.573921, 22.656353> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303448, -0.904113, -0.300829,
		-0.327543, 0.395452, -0.858099,
		0.894782, -0.161854, -0.416135,
		41.343956, 37.525364, 22.531513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.522549, 37.253597, 22.257675>,  <40.717606, 37.638664, 22.822807>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.522549, 37.253597, 22.257675> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.920231, 37.211887, 22.247227>,  <41.158840, 37.186863, 22.240957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.920231, 37.211887, 22.247227>,  <40.522549, 37.253597, 22.257675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.920231, 37.211887, 22.247227> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107024, -0.937437, -0.331297,
		0.010060, 0.332173, -0.943165,
		0.994205, -0.104274, -0.026119,
		41.218494, 37.180607, 22.239391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.728050, 36.992321, 21.629234>,  <40.522549, 37.253597, 22.257675>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.728050, 36.992321, 21.629234> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.026356, 36.883335, 21.872414>,  <41.205338, 36.817944, 22.018320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.026356, 36.883335, 21.872414>,  <40.728050, 36.992321, 21.629234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.026356, 36.883335, 21.872414> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009447, -0.908130, -0.418581,
		0.666142, 0.317907, -0.674678,
		0.745765, -0.272461, 0.607947,
		41.250084, 36.801598, 22.054798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.238098, 36.673523, 21.195198>,  <40.728050, 36.992321, 21.629234>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.238098, 36.673523, 21.195198> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.264923, 36.555202, 21.576355>,  <41.281017, 36.484211, 21.805050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.264923, 36.555202, 21.576355>,  <41.238098, 36.673523, 21.195198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.264923, 36.555202, 21.576355> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158043, -0.946134, -0.282582,
		0.985152, -0.131646, -0.110201,
		0.067064, -0.295803, 0.952892,
		41.285042, 36.466461, 21.862223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.596699, 36.026703, 21.162315>,  <41.238098, 36.673523, 21.195198>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.596699, 36.026703, 21.162315> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.403755, 36.045284, 21.512211>,  <41.287987, 36.056435, 21.722149>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.403755, 36.045284, 21.512211>,  <41.596699, 36.026703, 21.162315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.403755, 36.045284, 21.512211> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339392, -0.930507, -0.137734,
		0.807552, -0.363317, 0.464608,
		-0.482362, 0.046457, 0.874739,
		41.259045, 36.059223, 21.774633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.822987, 35.437038, 21.477184>,  <41.596699, 36.026703, 21.162315>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.822987, 35.437038, 21.477184> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.469135, 35.531193, 21.638191>,  <41.256824, 35.587685, 21.734797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.469135, 35.531193, 21.638191>,  <41.822987, 35.437038, 21.477184>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.469135, 35.531193, 21.638191> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303804, -0.945819, -0.114587,
		0.353739, -0.223654, 0.908211,
		-0.884631, 0.235384, 0.402520,
		41.203747, 35.601807, 21.758947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.840672, 34.971771, 22.052832>,  <41.822987, 35.437038, 21.477184>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.840672, 34.971771, 22.052832> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.467236, 35.087788, 21.968662>,  <41.243172, 35.157398, 21.918159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.467236, 35.087788, 21.968662>,  <41.840672, 34.971771, 22.052832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.467236, 35.087788, 21.968662> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324550, -0.933339, 0.153443,
		-0.151893, 0.211547, 0.965493,
		-0.933593, 0.290044, -0.210426,
		41.187157, 35.174801, 21.905535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.432514, 34.540726, 22.391823>,  <41.840672, 34.971771, 22.052832>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.432514, 34.540726, 22.391823> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.134365, 34.691692, 22.172012>,  <40.955475, 34.782272, 22.040125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.134365, 34.691692, 22.172012>,  <41.432514, 34.540726, 22.391823>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.134365, 34.691692, 22.172012> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519504, -0.845422, 0.124007,
		-0.417780, 0.377913, 0.826221,
		-0.745370, 0.377418, -0.549528,
		40.910755, 34.804916, 22.007154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.941635, 34.298820, 22.678202>,  <41.432514, 34.540726, 22.391823>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.941635, 34.298820, 22.678202> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.770035, 34.408012, 22.333775>,  <40.667072, 34.473526, 22.127119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.770035, 34.408012, 22.333775>,  <40.941635, 34.298820, 22.678202>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.770035, 34.408012, 22.333775> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552292, -0.833580, 0.010898,
		-0.714794, 0.480236, 0.508374,
		-0.429003, 0.272981, -0.861068,
		40.641335, 34.489906, 22.075455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.245945, 34.109879, 22.732286>,  <40.941635, 34.298820, 22.678202>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.245945, 34.109879, 22.732286> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.311954, 34.154957, 22.340355>,  <40.351562, 34.182003, 22.105196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.311954, 34.154957, 22.340355>,  <40.245945, 34.109879, 22.732286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.311954, 34.154957, 22.340355> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544775, -0.817738, -0.185807,
		-0.822184, 0.564449, -0.073554,
		0.165026, 0.112697, -0.979829,
		40.361462, 34.188766, 22.046406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.651543, 34.050304, 22.448591>,  <40.245945, 34.109879, 22.732286>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.651543, 34.050304, 22.448591> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.905296, 33.992878, 22.144764>,  <40.057549, 33.958420, 21.962467>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.905296, 33.992878, 22.144764>,  <39.651543, 34.050304, 22.448591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.905296, 33.992878, 22.144764> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437735, -0.876599, -0.199903,
		-0.637135, 0.459305, -0.618949,
		0.634387, -0.143570, -0.759566,
		40.095612, 33.949806, 21.916895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.224693, 33.722218, 22.092640>,  <39.651543, 34.050304, 22.448591>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.224693, 33.722218, 22.092640> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.578056, 33.649403, 21.919918>,  <39.790073, 33.605713, 21.816286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.578056, 33.649403, 21.919918>,  <39.224693, 33.722218, 22.092640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.578056, 33.649403, 21.919918> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383579, -0.810227, -0.443169,
		-0.269184, 0.557129, -0.785587,
		0.883407, -0.182041, -0.431803,
		39.843079, 33.594791, 21.790377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.640995, 34.270542, 21.985283>,  <39.224693, 33.722218, 22.092640>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.640995, 34.270542, 21.985283> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.378448, 34.504932, 21.795204>,  <38.220921, 34.645569, 21.681158>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.378448, 34.504932, 21.795204>,  <38.640995, 34.270542, 21.985283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.378448, 34.504932, 21.795204> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033602, 0.651945, 0.757521,
		0.753693, 0.481245, -0.447605,
		-0.656367, 0.585979, -0.475195,
		38.181538, 34.680725, 21.652645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.824871, 35.048676, 21.770985>,  <38.640995, 34.270542, 21.985283>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.824871, 35.048676, 21.770985> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.430462, 35.017433, 21.829861>,  <38.193817, 34.998688, 21.865187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.430462, 35.017433, 21.829861>,  <38.824871, 35.048676, 21.770985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.430462, 35.017433, 21.829861> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062999, 0.643026, 0.763249,
		-0.154258, 0.761851, -0.629116,
		-0.986020, -0.078103, 0.147188,
		38.134655, 34.994003, 21.874018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.647564, 35.746761, 21.822979>,  <38.824871, 35.048676, 21.770985>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.647564, 35.746761, 21.822979> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.346066, 35.532089, 21.974686>,  <38.165165, 35.403286, 22.065710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.346066, 35.532089, 21.974686>,  <38.647564, 35.746761, 21.822979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.346066, 35.532089, 21.974686> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146709, 0.699978, 0.698933,
		-0.640580, 0.471176, -0.606341,
		-0.753746, -0.536679, 0.379266,
		38.119942, 35.371086, 22.088465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.092484, 36.134937, 21.851513>,  <38.647564, 35.746761, 21.822979>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.092484, 36.134937, 21.851513> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.025631, 35.858387, 22.132671>,  <37.985519, 35.692455, 22.301367>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.025631, 35.858387, 22.132671>,  <38.092484, 36.134937, 21.851513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.025631, 35.858387, 22.132671> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189584, 0.722157, 0.665242,
		-0.967535, -0.022073, -0.251772,
		-0.167135, -0.691377, 0.702897,
		37.975491, 35.650974, 22.343540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.368946, 36.251423, 22.201763>,  <38.092484, 36.134937, 21.851513>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.368946, 36.251423, 22.201763> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.554218, 36.023140, 22.472984>,  <37.665382, 35.886169, 22.635717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.554218, 36.023140, 22.472984>,  <37.368946, 36.251423, 22.201763>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.554218, 36.023140, 22.472984> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314923, 0.609153, 0.727843,
		-0.828422, -0.550660, 0.102422,
		0.463185, -0.570706, 0.678051,
		37.693172, 35.851929, 22.676399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.858276, 36.145927, 22.701237>,  <37.368946, 36.251423, 22.201763>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.858276, 36.145927, 22.701237> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.220341, 36.085361, 22.860111>,  <37.437580, 36.049023, 22.955437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.220341, 36.085361, 22.860111>,  <36.858276, 36.145927, 22.701237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.220341, 36.085361, 22.860111> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238990, 0.591443, 0.770116,
		-0.351522, -0.792002, 0.499164,
		0.905161, -0.151417, 0.397186,
		37.491890, 36.039936, 22.979267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.715763, 36.161613, 23.336781>,  <36.858276, 36.145927, 22.701237>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.715763, 36.161613, 23.336781> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.113163, 36.179726, 23.378548>,  <37.351604, 36.190594, 23.403608>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.113163, 36.179726, 23.378548>,  <36.715763, 36.161613, 23.336781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.113163, 36.179726, 23.378548> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107838, 0.667806, 0.736482,
		-0.036383, -0.742957, 0.668350,
		0.993503, 0.045278, 0.104416,
		37.411213, 36.193310, 23.409872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.887157, 36.268860, 24.057697>,  <36.715763, 36.161613, 23.336781>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.887157, 36.268860, 24.057697> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.226681, 36.387974, 23.882954>,  <37.430397, 36.459442, 23.778107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.226681, 36.387974, 23.882954>,  <36.887157, 36.268860, 24.057697>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.226681, 36.387974, 23.882954> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056684, 0.770273, 0.635191,
		0.525650, -0.563919, 0.636936,
		0.848811, 0.297784, -0.436859,
		37.481323, 36.477310, 23.751896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.395836, 36.418304, 24.604002>,  <36.887157, 36.268860, 24.057697>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.395836, 36.418304, 24.604002> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.536797, 36.603458, 24.278660>,  <37.621372, 36.714550, 24.083454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.536797, 36.603458, 24.278660>,  <37.395836, 36.418304, 24.604002>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.536797, 36.603458, 24.278660> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350816, 0.740395, 0.573361,
		0.867608, -0.487391, 0.098526,
		0.352399, 0.462887, -0.813357,
		37.642517, 36.742325, 24.034653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.935581, 36.804310, 24.829727>,  <37.395836, 36.418304, 24.604002>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.935581, 36.804310, 24.829727> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.863762, 36.968399, 24.472073>,  <37.820671, 37.066853, 24.257479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.863762, 36.968399, 24.472073>,  <37.935581, 36.804310, 24.829727>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.863762, 36.968399, 24.472073> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285735, 0.891470, 0.351620,
		0.941339, -0.192355, -0.277275,
		-0.179547, 0.410220, -0.894138,
		37.809898, 37.091465, 24.203831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.606686, 37.152218, 24.639099>,  <37.935581, 36.804310, 24.829727>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.606686, 37.152218, 24.639099> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.311310, 37.318417, 24.426659>,  <38.134083, 37.418137, 24.299194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.311310, 37.318417, 24.426659>,  <38.606686, 37.152218, 24.639099>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.311310, 37.318417, 24.426659> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394104, 0.905021, 0.160057,
		0.547160, -0.091116, -0.832054,
		-0.738443, 0.415493, -0.531100,
		38.089775, 37.443066, 24.267328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.891857, 37.700855, 24.240665>,  <38.606686, 37.152218, 24.639099>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.891857, 37.700855, 24.240665> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.506565, 37.807968, 24.231842>,  <38.275391, 37.872234, 24.226547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.506565, 37.807968, 24.231842>,  <38.891857, 37.700855, 24.240665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.506565, 37.807968, 24.231842> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265544, 0.961266, 0.073849,
		0.040981, 0.065276, -0.997025,
		-0.963227, 0.267780, -0.022060,
		38.217598, 37.888302, 24.225224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.754166, 38.348328, 23.770945>,  <38.891857, 37.700855, 24.240665>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.754166, 38.348328, 23.770945> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.438293, 38.345634, 24.016335>,  <38.248768, 38.344017, 24.163568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.438293, 38.345634, 24.016335>,  <38.754166, 38.348328, 23.770945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.438293, 38.345634, 24.016335> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090326, 0.987767, 0.127112,
		-0.606827, 0.155791, -0.779416,
		-0.789684, -0.006733, 0.613476,
		38.201389, 38.343613, 24.200377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.326576, 38.889927, 23.603920>,  <38.754166, 38.348328, 23.770945>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.326576, 38.889927, 23.603920> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.235504, 38.815044, 23.986149>,  <38.180859, 38.770115, 24.215487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.235504, 38.815044, 23.986149>,  <38.326576, 38.889927, 23.603920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.235504, 38.815044, 23.986149> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000938, 0.981302, 0.192471,
		-0.973735, 0.044719, -0.223250,
		-0.227683, -0.187206, 0.955570,
		38.167198, 38.758884, 24.272820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.037231, 39.436211, 23.699953>,  <38.326576, 38.889927, 23.603920>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.037231, 39.436211, 23.699953> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.104725, 39.290306, 24.066227>,  <38.145222, 39.202763, 24.285992>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.104725, 39.290306, 24.066227>,  <38.037231, 39.436211, 23.699953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.104725, 39.290306, 24.066227> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086022, 0.930909, 0.354978,
		-0.981901, 0.018873, 0.188453,
		0.168734, -0.364764, 0.915683,
		38.155346, 39.180878, 24.340933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.634377, 39.846039, 24.023554>,  <38.037231, 39.436211, 23.699953>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.634377, 39.846039, 24.023554> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.877628, 39.667702, 24.286278>,  <38.023579, 39.560699, 24.443913>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.877628, 39.667702, 24.286278>,  <37.634377, 39.846039, 24.023554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.877628, 39.667702, 24.286278> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215309, 0.889008, 0.404112,
		-0.764079, -0.104337, 0.636629,
		0.608132, -0.445846, 0.656808,
		38.060066, 39.533947, 24.483320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.486732, 40.173092, 24.715536>,  <37.634377, 39.846039, 24.023554>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.486732, 40.173092, 24.715536> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.855957, 40.020424, 24.734692>,  <38.077492, 39.928825, 24.746185>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.855957, 40.020424, 24.734692>,  <37.486732, 40.173092, 24.715536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.855957, 40.020424, 24.734692> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295455, 0.783201, 0.547086,
		-0.246309, -0.490844, 0.835705,
		0.923059, -0.381665, 0.047887,
		38.132874, 39.905926, 24.749058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.735348, 40.149307, 25.409302>,  <37.486732, 40.173092, 24.715536>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.735348, 40.149307, 25.409302> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.055305, 40.172817, 25.170399>,  <38.247280, 40.186924, 25.027058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.055305, 40.172817, 25.170399>,  <37.735348, 40.149307, 25.409302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.055305, 40.172817, 25.170399> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336632, 0.779949, 0.527596,
		0.496838, -0.623077, 0.604092,
		0.799894, 0.058773, -0.597257,
		38.295273, 40.190449, 24.991222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.122551, 40.676907, 25.721296>,  <37.735348, 40.149307, 25.409302>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.122551, 40.676907, 25.721296> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.368248, 40.632454, 25.408794>,  <38.515667, 40.605782, 25.221294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.368248, 40.632454, 25.408794>,  <38.122551, 40.676907, 25.721296>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.368248, 40.632454, 25.408794> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515608, 0.805992, 0.290732,
		0.597374, -0.581401, 0.552375,
		0.614241, -0.111133, -0.781254,
		38.552521, 40.599113, 25.174417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.822136, 40.837364, 25.885303>,  <38.122551, 40.676907, 25.721296>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.822136, 40.837364, 25.885303> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.809765, 40.906273, 25.491478>,  <38.802341, 40.947617, 25.255182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.809765, 40.906273, 25.491478>,  <38.822136, 40.837364, 25.885303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.809765, 40.906273, 25.491478> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545574, 0.828264, 0.127784,
		0.837492, -0.533201, -0.119598,
		-0.030924, 0.172267, -0.984565,
		38.800488, 40.957954, 25.196108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.477390, 40.948311, 25.668779>,  <38.822136, 40.837364, 25.885303>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.477390, 40.948311, 25.668779> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.256462, 41.125847, 25.386517>,  <39.123905, 41.232368, 25.217159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.256462, 41.125847, 25.386517>,  <39.477390, 40.948311, 25.668779>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.256462, 41.125847, 25.386517> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609251, 0.792680, 0.021707,
		0.568993, -0.417932, -0.708222,
		-0.552322, 0.443836, -0.705656,
		39.090767, 41.258999, 25.174820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<27.568268, 23.792501, 18.921766> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.814503, 23.771042, 19.236263>,  <27.962244, 23.758167, 19.424961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.814503, 23.771042, 19.236263>,  <27.568268, 23.792501, 18.921766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.814503, 23.771042, 19.236263> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283512, -0.915806, -0.284464,
		0.735306, 0.398021, -0.548548,
		0.615586, -0.053648, 0.786241,
		27.999178, 23.754948, 19.472136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.168501, 23.488985, 18.655602>,  <27.568268, 23.792501, 18.921766>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.168501, 23.488985, 18.655602> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.200453, 23.423721, 19.048946>,  <28.219624, 23.384563, 19.284952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.200453, 23.423721, 19.048946>,  <28.168501, 23.488985, 18.655602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.200453, 23.423721, 19.048946> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309318, -0.933757, -0.180055,
		0.947598, 0.318554, -0.024118,
		0.079878, -0.163160, 0.983361,
		28.224417, 23.374773, 19.343954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.585279, 22.995394, 18.635996>,  <28.168501, 23.488985, 18.655602>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.585279, 22.995394, 18.635996> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.454193, 22.961025, 19.012341>,  <28.375542, 22.940405, 19.238148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.454193, 22.961025, 19.012341>,  <28.585279, 22.995394, 18.635996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.454193, 22.961025, 19.012341> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292371, -0.956195, 0.014518,
		0.898399, 0.279839, 0.338483,
		-0.327718, -0.085920, 0.940861,
		28.355877, 22.935249, 19.294600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.075642, 22.531511, 18.939075>,  <28.585279, 22.995394, 18.635996>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.075642, 22.531511, 18.939075> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.762184, 22.511837, 19.186779>,  <28.574110, 22.500032, 19.335402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.762184, 22.511837, 19.186779>,  <29.075642, 22.531511, 18.939075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.762184, 22.511837, 19.186779> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208448, -0.959885, 0.187539,
		0.585195, 0.276047, 0.762460,
		-0.783643, -0.049186, 0.619261,
		28.527092, 22.497082, 19.372557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.269524, 22.249542, 19.536358>,  <29.075642, 22.531511, 18.939075>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.269524, 22.249542, 19.536358> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.880281, 22.163059, 19.504566>,  <28.646736, 22.111170, 19.485491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.880281, 22.163059, 19.504566>,  <29.269524, 22.249542, 19.536358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.880281, 22.163059, 19.504566> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209445, -0.974082, 0.085426,
		-0.095887, 0.066482, 0.993169,
		-0.973108, -0.216205, -0.079477,
		28.588348, 22.098198, 19.480722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.217772, 21.691278, 20.041880>,  <29.269524, 22.249542, 19.536358>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.217772, 21.691278, 20.041880> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.881563, 21.669804, 19.826233>,  <28.679838, 21.656919, 19.696846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.881563, 21.669804, 19.826233>,  <29.217772, 21.691278, 20.041880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.881563, 21.669804, 19.826233> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030614, -0.998195, 0.051669,
		-0.540917, 0.026924, 0.840645,
		-0.840519, -0.053685, -0.539116,
		28.629408, 21.653698, 19.664497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.759525, 21.168671, 20.379570>,  <29.217772, 21.691278, 20.041880>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.759525, 21.168671, 20.379570> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.623343, 21.199192, 20.004707>,  <28.541632, 21.217505, 19.779789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.623343, 21.199192, 20.004707>,  <28.759525, 21.168671, 20.379570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.623343, 21.199192, 20.004707> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058594, -0.996486, -0.059846,
		-0.938432, 0.034537, 0.343734,
		-0.340459, 0.076302, -0.937158,
		28.521204, 21.222082, 19.723560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.135921, 20.888699, 20.431841>,  <28.759525, 21.168671, 20.379570>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.135921, 20.888699, 20.431841> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.202497, 20.871132, 20.037811>,  <28.242443, 20.860592, 19.801394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.202497, 20.871132, 20.037811>,  <28.135921, 20.888699, 20.431841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.202497, 20.871132, 20.037811> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181148, -0.983367, 0.013235,
		-0.969269, 0.176241, -0.171628,
		0.166441, -0.043918, -0.985073,
		28.252430, 20.857956, 19.742289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.720034, 20.408031, 20.242594>,  <28.135921, 20.888699, 20.431841>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.720034, 20.408031, 20.242594> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.960079, 20.425686, 19.923115>,  <28.104107, 20.436279, 19.731428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.960079, 20.425686, 19.923115>,  <27.720034, 20.408031, 20.242594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.960079, 20.425686, 19.923115> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023804, -0.997049, -0.072985,
		-0.799560, 0.062812, -0.597293,
		0.600115, 0.044138, -0.798695,
		28.140114, 20.438927, 19.683506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.403759, 19.996660, 19.596474>,  <27.720034, 20.408031, 20.242594>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.403759, 19.996660, 19.596474> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.801178, 20.010353, 19.553230>,  <28.039629, 20.018568, 19.527285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.801178, 20.010353, 19.553230>,  <27.403759, 19.996660, 19.596474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.801178, 20.010353, 19.553230> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016966, -0.987490, -0.156764,
		-0.112124, 0.153919, -0.981701,
		0.993549, 0.034232, -0.108110,
		28.099243, 20.020622, 19.520798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.529781, 19.515337, 18.979582>,  <27.403759, 19.996660, 19.596474>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.529781, 19.515337, 18.979582> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.866302, 19.578541, 19.186363>,  <28.068216, 19.616463, 19.310432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.866302, 19.578541, 19.186363>,  <27.529781, 19.515337, 18.979582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.866302, 19.578541, 19.186363> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228682, -0.970569, -0.075503,
		0.489808, 0.181739, -0.852677,
		0.841304, 0.158011, 0.516953,
		28.118694, 19.625944, 19.341450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.002459, 19.122643, 18.662191>,  <27.529781, 19.515337, 18.979582>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.002459, 19.122643, 18.662191> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.140047, 19.200047, 19.029720>,  <28.222601, 19.246489, 19.250238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.140047, 19.200047, 19.029720>,  <28.002459, 19.122643, 18.662191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.140047, 19.200047, 19.029720> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335909, -0.939136, 0.072035,
		0.876840, 0.283863, -0.388038,
		0.343973, 0.193508, 0.918824,
		28.243238, 19.258099, 19.305367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.639116, 18.727144, 18.629992>,  <28.002459, 19.122643, 18.662191>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.639116, 18.727144, 18.629992> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.514542, 18.806595, 19.001701>,  <28.439796, 18.854265, 19.224728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.514542, 18.806595, 19.001701>,  <28.639116, 18.727144, 18.629992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.514542, 18.806595, 19.001701> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216068, -0.937495, 0.272797,
		0.925377, 0.285745, 0.249052,
		-0.311436, 0.198628, 0.929276,
		28.421110, 18.866182, 19.280485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.413031, 18.508289, 18.378960>,  <28.639116, 18.727144, 18.629992>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.413031, 18.508289, 18.378960> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.638035, 18.477589, 18.049671>,  <29.773037, 18.459167, 17.852098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.638035, 18.477589, 18.049671>,  <29.413031, 18.508289, 18.378960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.638035, 18.477589, 18.049671> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505230, 0.820064, 0.268770,
		0.654464, -0.567101, 0.500073,
		0.562512, -0.076751, -0.823219,
		29.806787, 18.454563, 17.802706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.029831, 18.797470, 18.567713>,  <29.413031, 18.508289, 18.378960>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.029831, 18.797470, 18.567713> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.010201, 18.809528, 18.168377>,  <29.998423, 18.816763, 17.928776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.010201, 18.809528, 18.168377>,  <30.029831, 18.797470, 18.567713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.010201, 18.809528, 18.168377> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495474, 0.868621, 0.001873,
		0.867235, -0.494559, -0.057566,
		-0.049077, 0.030147, -0.998340,
		29.995478, 18.818573, 17.868876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.648895, 19.036501, 18.337381>,  <30.029831, 18.797470, 18.567713>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.648895, 19.036501, 18.337381> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.376165, 19.139759, 18.063599>,  <30.212528, 19.201714, 17.899330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.376165, 19.139759, 18.063599>,  <30.648895, 19.036501, 18.337381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.376165, 19.139759, 18.063599> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417480, 0.905643, -0.074308,
		0.600690, -0.336411, -0.725258,
		-0.681822, 0.258145, -0.684456,
		30.171619, 19.217203, 17.858261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.017498, 19.446978, 17.902069>,  <30.648895, 19.036501, 18.337381>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.017498, 19.446978, 17.902069> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.641846, 19.531456, 17.793678>,  <30.416454, 19.582142, 17.728643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.641846, 19.531456, 17.793678>,  <31.017498, 19.446978, 17.902069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.641846, 19.531456, 17.793678> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257446, 0.954889, -0.148013,
		0.227495, -0.208766, -0.951137,
		-0.939131, 0.211194, -0.270979,
		30.360106, 19.594814, 17.712385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.066050, 19.853603, 17.298061>,  <31.017498, 19.446978, 17.902069>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.066050, 19.853603, 17.298061> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.706480, 19.960823, 17.436676>,  <30.490738, 20.025154, 17.519846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.706480, 19.960823, 17.436676>,  <31.066050, 19.853603, 17.298061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.706480, 19.960823, 17.436676> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178525, 0.946453, -0.268990,
		-0.400084, -0.179936, -0.898641,
		-0.898922, 0.268049, 0.346538,
		30.436804, 20.041237, 17.540638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.795895, 20.365183, 16.783634>,  <31.066050, 19.853603, 17.298061>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.795895, 20.365183, 16.783634> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.591969, 20.413113, 17.124393>,  <30.469612, 20.441870, 17.328850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.591969, 20.413113, 17.124393>,  <30.795895, 20.365183, 16.783634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.591969, 20.413113, 17.124393> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100720, 0.991756, -0.079219,
		-0.854367, 0.045416, -0.517682,
		-0.509817, 0.119823, 0.851898,
		30.439024, 20.449060, 17.379963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.343689, 20.973625, 16.598896>,  <30.795895, 20.365183, 16.783634>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.343689, 20.973625, 16.598896> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.338623, 20.936840, 16.997169>,  <30.335583, 20.914770, 17.236134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.338623, 20.936840, 16.997169>,  <30.343689, 20.973625, 16.598896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.338623, 20.936840, 16.997169> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009806, 0.995725, 0.091841,
		-0.999872, -0.008600, -0.013512,
		-0.012665, -0.091962, 0.995682,
		30.334824, 20.909252, 17.295874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.907688, 21.468363, 16.766146>,  <30.343689, 20.973625, 16.598896>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.907688, 21.468363, 16.766146> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.104717, 21.398064, 17.107082>,  <30.222935, 21.355885, 17.311644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.104717, 21.398064, 17.107082>,  <29.907688, 21.468363, 16.766146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.104717, 21.398064, 17.107082> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011752, 0.977964, 0.208442,
		-0.870192, -0.112690, 0.479654,
		0.492573, -0.175748, 0.852341,
		30.252489, 21.345339, 17.362785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.508310, 21.749910, 17.340822>,  <29.907688, 21.468363, 16.766146>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.508310, 21.749910, 17.340822> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.887457, 21.710667, 17.462097>,  <30.114944, 21.687120, 17.534863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.887457, 21.710667, 17.462097>,  <29.508310, 21.749910, 17.340822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.887457, 21.710667, 17.462097> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107828, 0.994050, -0.015437,
		-0.299871, 0.047325, 0.952805,
		0.947866, -0.098110, 0.303190,
		30.171816, 21.681234, 17.553055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.608591, 22.351007, 17.694092>,  <29.508310, 21.749910, 17.340822>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.608591, 22.351007, 17.694092> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.986612, 22.232494, 17.638828>,  <30.213425, 22.161386, 17.605671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.986612, 22.232494, 17.638828>,  <29.608591, 22.351007, 17.694092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.986612, 22.232494, 17.638828> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282875, 0.952977, -0.108703,
		0.163868, 0.063649, 0.984427,
		0.945055, -0.296282, -0.138158,
		30.270128, 22.143610, 17.597382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.978838, 22.813284, 18.213531>,  <29.608591, 22.351007, 17.694092>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.978838, 22.813284, 18.213531> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.223196, 22.647602, 17.943645>,  <30.369810, 22.548193, 17.781713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.223196, 22.647602, 17.943645>,  <29.978838, 22.813284, 18.213531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.223196, 22.647602, 17.943645> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529892, 0.847108, -0.040269,
		0.588238, -0.332927, 0.736977,
		0.610893, -0.414206, -0.674717,
		30.406464, 22.523340, 17.741230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.655525, 22.830008, 18.459204>,  <29.978838, 22.813284, 18.213531>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.655525, 22.830008, 18.459204> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.720465, 22.826126, 18.064529>,  <30.759428, 22.823797, 17.827724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.720465, 22.826126, 18.064529>,  <30.655525, 22.830008, 18.459204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.720465, 22.826126, 18.064529> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499108, 0.863406, 0.073631,
		0.851195, -0.504416, 0.145019,
		0.162351, -0.009706, -0.986685,
		30.769171, 22.823214, 17.768524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.337303, 23.114410, 18.373133>,  <30.655525, 22.830008, 18.459204>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.337303, 23.114410, 18.373133> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.129305, 23.154137, 18.033783>,  <31.004505, 23.177973, 17.830173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.129305, 23.154137, 18.033783>,  <31.337303, 23.114410, 18.373133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.129305, 23.154137, 18.033783> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243359, 0.969279, -0.035694,
		0.818769, -0.225020, -0.528190,
		-0.519996, 0.099315, -0.848376,
		30.973307, 23.183931, 17.779270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.742771, 23.556061, 18.032026>,  <31.337303, 23.114410, 18.373133>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.742771, 23.556061, 18.032026> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.398542, 23.567249, 17.828602>,  <31.192005, 23.573963, 17.706547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.398542, 23.567249, 17.828602>,  <31.742771, 23.556061, 18.032026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.398542, 23.567249, 17.828602> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088767, 0.991447, -0.095674,
		0.501536, -0.127478, -0.855693,
		-0.860571, 0.027973, -0.508562,
		31.140371, 23.575642, 17.676033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.922544, 23.752508, 17.368856>,  <31.742771, 23.556061, 18.032026>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.922544, 23.752508, 17.368856> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.539753, 23.844021, 17.440239>,  <31.310078, 23.898928, 17.483068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.539753, 23.844021, 17.440239>,  <31.922544, 23.752508, 17.368856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.539753, 23.844021, 17.440239> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210075, 0.970570, -0.117737,
		-0.200140, -0.075183, -0.976878,
		-0.956981, 0.228782, 0.178456,
		31.252659, 23.912655, 17.493776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.976885, 24.224213, 16.803938>,  <31.922544, 23.752508, 17.368856>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.976885, 24.224213, 16.803938> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.346066, 24.363392, 16.869778>,  <32.567574, 24.446899, 16.909281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.346066, 24.363392, 16.869778>,  <31.976885, 24.224213, 16.803938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.346066, 24.363392, 16.869778> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338421, -0.937266, 0.083692,
		0.183394, -0.021539, -0.982804,
		0.922951, 0.347950, 0.164599,
		32.622952, 24.467777, 16.919157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.392799, 24.087791, 16.209410>,  <31.976885, 24.224213, 16.803938>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.392799, 24.087791, 16.209410> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.615833, 24.114971, 16.540344>,  <32.749653, 24.131279, 16.738905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.615833, 24.114971, 16.540344>,  <32.392799, 24.087791, 16.209410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.615833, 24.114971, 16.540344> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177373, -0.983380, -0.038776,
		0.810952, 0.168368, -0.560365,
		0.557580, 0.067948, 0.827338,
		32.783108, 24.135355, 16.788546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.974487, 23.687695, 16.014511>,  <32.392799, 24.087791, 16.209410>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.974487, 23.687695, 16.014511> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.001495, 23.730022, 16.411346>,  <33.017700, 23.755419, 16.649448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.001495, 23.730022, 16.411346>,  <32.974487, 23.687695, 16.014511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.001495, 23.730022, 16.411346> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119318, -0.988080, 0.097271,
		0.990558, 0.111806, -0.079340,
		0.067519, 0.105819, 0.992090,
		33.021751, 23.761768, 16.708973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.600174, 23.309305, 16.276484>,  <32.974487, 23.687695, 16.014511>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.600174, 23.309305, 16.276484> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.355644, 23.346786, 16.590809>,  <33.208927, 23.369274, 16.779404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.355644, 23.346786, 16.590809>,  <33.600174, 23.309305, 16.276484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.355644, 23.346786, 16.590809> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095540, -0.976964, 0.190821,
		0.785590, 0.191730, 0.588292,
		-0.611327, 0.093702, 0.785811,
		33.172245, 23.374897, 16.826551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.053524, 23.045021, 16.791231>,  <33.600174, 23.309305, 16.276484>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.053524, 23.045021, 16.791231> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.678307, 23.009453, 16.925201>,  <33.453178, 22.988111, 17.005583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.678307, 23.009453, 16.925201>,  <34.053524, 23.045021, 16.791231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.678307, 23.009453, 16.925201> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165169, -0.964391, 0.206563,
		0.304632, 0.249084, 0.919324,
		-0.938040, -0.088919, 0.334925,
		33.396896, 22.982777, 17.025679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.047222, 22.687988, 17.439514>,  <34.053524, 23.045021, 16.791231>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.047222, 22.687988, 17.439514> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.672058, 22.648869, 17.306389>,  <33.446960, 22.625397, 17.226513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.672058, 22.648869, 17.306389>,  <34.047222, 22.687988, 17.439514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.672058, 22.648869, 17.306389> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026070, -0.976593, 0.213509,
		-0.345905, 0.191575, 0.918503,
		-0.937907, -0.097799, -0.332815,
		33.390686, 22.619530, 17.206545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.603348, 22.334808, 17.990982>,  <34.047222, 22.687988, 17.439514>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.603348, 22.334808, 17.990982> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.425976, 22.294174, 17.634769>,  <33.319553, 22.269793, 17.421041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.425976, 22.294174, 17.634769>,  <33.603348, 22.334808, 17.990982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.425976, 22.294174, 17.634769> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030481, -0.991273, 0.128257,
		-0.895790, 0.084017, 0.436464,
		-0.443430, -0.101587, -0.890533,
		33.292946, 22.263699, 17.367609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.326344, 22.178276, 18.628580>,  <33.603348, 22.334808, 17.990982>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.326344, 22.178276, 18.628580> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.381290, 22.152317, 19.023937>,  <33.414257, 22.136742, 19.261150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.381290, 22.152317, 19.023937>,  <33.326344, 22.178276, 18.628580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.381290, 22.152317, 19.023937> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372748, 0.921114, 0.112286,
		-0.917709, -0.383845, 0.102338,
		0.137366, -0.064900, 0.988392,
		33.422501, 22.132847, 19.320456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.642735, 22.385004, 18.943882>,  <33.326344, 22.178276, 18.628580>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.642735, 22.385004, 18.943882> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.925091, 22.461048, 19.216816>,  <33.094505, 22.506674, 19.380575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.925091, 22.461048, 19.216816>,  <32.642735, 22.385004, 18.943882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.925091, 22.461048, 19.216816> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309404, 0.949304, 0.055592,
		-0.637173, -0.250358, 0.728925,
		0.705889, 0.190110, 0.682333,
		33.136856, 22.518082, 19.421516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.286343, 22.685812, 19.540310>,  <32.642735, 22.385004, 18.943882>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.286343, 22.685812, 19.540310> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.668903, 22.797974, 19.572987>,  <32.898438, 22.865271, 19.592592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.668903, 22.797974, 19.572987>,  <32.286343, 22.685812, 19.540310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.668903, 22.797974, 19.572987> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291189, 0.937071, 0.192632,
		-0.022537, -0.208022, 0.977865,
		0.956400, 0.280402, 0.081693,
		32.955822, 22.882093, 19.597494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.242462, 23.018854, 20.124332>,  <32.286343, 22.685812, 19.540310>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.242462, 23.018854, 20.124332> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.576447, 23.147369, 19.945621>,  <32.776836, 23.224480, 19.838394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.576447, 23.147369, 19.945621>,  <32.242462, 23.018854, 20.124332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.576447, 23.147369, 19.945621> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192792, 0.931200, 0.309350,
		0.515431, -0.172161, 0.839459,
		0.834963, 0.321289, -0.446778,
		32.826935, 23.243755, 19.811588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.486462, 23.545216, 20.583321>,  <32.242462, 23.018854, 20.124332>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.486462, 23.545216, 20.583321> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.671616, 23.609390, 20.234608>,  <32.782707, 23.647896, 20.025381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.671616, 23.609390, 20.234608>,  <32.486462, 23.545216, 20.583321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.671616, 23.609390, 20.234608> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041703, 0.978454, 0.202211,
		0.885439, -0.129956, 0.446217,
		0.462881, 0.160436, -0.871780,
		32.810478, 23.657520, 19.973074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.101810, 24.128761, 20.717415>,  <32.486462, 23.545216, 20.583321>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.101810, 24.128761, 20.717415> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.003895, 24.140106, 20.329750>,  <32.945145, 24.146914, 20.097151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.003895, 24.140106, 20.329750>,  <33.101810, 24.128761, 20.717415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.003895, 24.140106, 20.329750> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085512, 0.995045, 0.050717,
		0.965798, 0.095290, -0.241152,
		-0.244790, 0.028361, -0.969161,
		32.930458, 24.148615, 20.039001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.513550, 24.636774, 20.418169>,  <33.101810, 24.128761, 20.717415>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.513550, 24.636774, 20.418169> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.194447, 24.589436, 20.181667>,  <33.002987, 24.561031, 20.039766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.194447, 24.589436, 20.181667>,  <33.513550, 24.636774, 20.418169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.194447, 24.589436, 20.181667> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254256, 0.955138, 0.151874,
		0.546753, 0.271488, -0.792058,
		-0.797756, -0.118348, -0.591252,
		32.955120, 24.553930, 20.004292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<30.530710, 18.434540, 21.262117> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.174004, 18.459095, 21.082790>,  <29.959980, 18.473829, 20.975195>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.174004, 18.459095, 21.082790>,  <30.530710, 18.434540, 21.262117>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.174004, 18.459095, 21.082790> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142858, 0.901888, 0.407664,
		0.429357, 0.427586, -0.795502,
		-0.891765, 0.061390, -0.448316,
		29.906475, 18.477512, 20.948296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.583332, 18.986078, 20.771009>,  <30.530710, 18.434540, 21.262117>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.583332, 18.986078, 20.771009> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.194767, 18.925953, 20.844513>,  <29.961628, 18.889877, 20.888615>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.194767, 18.925953, 20.844513>,  <30.583332, 18.986078, 20.771009>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.194767, 18.925953, 20.844513> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111557, 0.972261, 0.205582,
		-0.209563, 0.179205, -0.961233,
		-0.971411, -0.150314, 0.183758,
		29.903343, 18.880859, 20.899641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.217747, 19.447323, 20.348469>,  <30.583332, 18.986078, 20.771009>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.217747, 19.447323, 20.348469> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.972731, 19.345448, 20.647781>,  <29.825720, 19.284323, 20.827370>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.972731, 19.345448, 20.647781>,  <30.217747, 19.447323, 20.348469>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.972731, 19.345448, 20.647781> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216975, 0.964481, 0.150658,
		-0.760075, -0.070074, -0.646047,
		-0.612543, -0.254687, 0.748282,
		29.788967, 19.269041, 20.872267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.681395, 19.932913, 20.387596>,  <30.217747, 19.447323, 20.348469>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.681395, 19.932913, 20.387596> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.614531, 19.766087, 20.744946>,  <29.574411, 19.665991, 20.959354>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.614531, 19.766087, 20.744946>,  <29.681395, 19.932913, 20.387596>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.614531, 19.766087, 20.744946> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344370, 0.873750, 0.343468,
		-0.923832, -0.250236, -0.289683,
		-0.167162, -0.417065, 0.893372,
		29.564383, 19.640966, 21.012957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.906580, 20.111040, 20.540453>,  <29.681395, 19.932913, 20.387596>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.906580, 20.111040, 20.540453> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.106880, 20.031990, 20.877544>,  <29.227060, 19.984560, 21.079800>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.106880, 20.031990, 20.877544>,  <28.906580, 20.111040, 20.540453>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.106880, 20.031990, 20.877544> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354356, 0.841462, 0.407888,
		-0.789734, -0.502877, 0.351334,
		0.500751, -0.197626, 0.842729,
		29.257105, 19.972702, 21.130363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.438255, 20.136015, 21.120859>,  <28.906580, 20.111040, 20.540453>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.438255, 20.136015, 21.120859> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.800049, 20.187092, 21.283634>,  <29.017126, 20.217737, 21.381300>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.800049, 20.187092, 21.283634>,  <28.438255, 20.136015, 21.120859>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.800049, 20.187092, 21.283634> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310482, 0.851290, 0.422973,
		-0.292415, -0.508921, 0.809625,
		0.904486, 0.127690, 0.406940,
		29.071394, 20.225399, 21.405716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.245090, 20.457489, 21.798449>,  <28.438255, 20.136015, 21.120859>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.245090, 20.457489, 21.798449> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.633219, 20.553963, 21.791470>,  <28.866096, 20.611847, 21.787281>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.633219, 20.553963, 21.791470>,  <28.245090, 20.457489, 21.798449>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.633219, 20.553963, 21.791470> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181933, 0.775666, 0.604353,
		0.159296, -0.583242, 0.796526,
		0.970322, 0.241185, -0.017449,
		28.924314, 20.626318, 21.786234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.399881, 20.628418, 22.485260>,  <28.245090, 20.457489, 21.798449>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.399881, 20.628418, 22.485260> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.709349, 20.794426, 22.293762>,  <28.895029, 20.894030, 22.178864>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.709349, 20.794426, 22.293762>,  <28.399881, 20.628418, 22.485260>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.709349, 20.794426, 22.293762> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050230, 0.793403, 0.606621,
		0.631594, -0.445278, 0.634679,
		0.773671, 0.415018, -0.478742,
		28.941450, 20.918932, 22.150139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.976364, 20.821093, 23.040133>,  <28.399881, 20.628418, 22.485260>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.976364, 20.821093, 23.040133> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.040569, 21.043541, 22.713951>,  <29.079092, 21.177010, 22.518242>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.040569, 21.043541, 22.713951>,  <28.976364, 20.821093, 23.040133>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.040569, 21.043541, 22.713951> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026759, 0.828314, 0.559625,
		0.986671, -0.068006, 0.147835,
		0.160511, 0.556121, -0.815454,
		29.088722, 21.210377, 22.469315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.556288, 21.263943, 23.192719>,  <28.976364, 20.821093, 23.040133>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.556288, 21.263943, 23.192719> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.376955, 21.454742, 22.890335>,  <29.269356, 21.569221, 22.708904>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.376955, 21.454742, 22.890335>,  <29.556288, 21.263943, 23.192719>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.376955, 21.454742, 22.890335> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024391, 0.838873, 0.543781,
		0.893535, 0.262232, -0.364457,
		-0.448330, 0.476998, -0.755959,
		29.242456, 21.597841, 22.663548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.087439, 21.875181, 22.871746>,  <29.556288, 21.263943, 23.192719>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.087439, 21.875181, 22.871746> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.706161, 21.946819, 22.774296>,  <29.477396, 21.989801, 22.715826>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.706161, 21.946819, 22.774296>,  <30.087439, 21.875181, 22.871746>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.706161, 21.946819, 22.774296> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089719, 0.936951, 0.337748,
		0.288753, 0.300080, -0.909161,
		-0.953191, 0.179095, -0.243624,
		29.420204, 22.000547, 22.701208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.086254, 22.492107, 22.574701>,  <30.087439, 21.875181, 22.871746>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.086254, 22.492107, 22.574701> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.701597, 22.465214, 22.681076>,  <29.470802, 22.449078, 22.744902>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.701597, 22.465214, 22.681076>,  <30.086254, 22.492107, 22.574701>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.701597, 22.465214, 22.681076> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012545, 0.957702, 0.287488,
		-0.274018, 0.279797, -0.920124,
		-0.961643, -0.067234, 0.265938,
		29.413105, 22.445044, 22.760857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.411383, 22.872240, 22.047661>,  <30.086254, 22.492107, 22.574701>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.411383, 22.872240, 22.047661> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.782553, 22.928493, 22.185749>,  <31.005255, 22.962246, 22.268602>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.782553, 22.928493, 22.185749>,  <30.411383, 22.872240, 22.047661>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.782553, 22.928493, 22.185749> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308388, -0.809873, -0.499002,
		0.209406, 0.569498, -0.794872,
		0.927926, 0.140634, 0.345219,
		31.060930, 22.970684, 22.289314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.909676, 22.774330, 21.463428>,  <30.411383, 22.872240, 22.047661>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.909676, 22.774330, 21.463428> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.092535, 22.713333, 21.813915>,  <31.202251, 22.676735, 22.024208>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.092535, 22.713333, 21.813915>,  <30.909676, 22.774330, 21.463428>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.092535, 22.713333, 21.813915> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304559, -0.898788, -0.315316,
		0.835618, 0.411007, -0.364439,
		0.457150, -0.152491, 0.876219,
		31.229681, 22.667585, 22.076780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.518370, 22.534964, 21.231462>,  <30.909676, 22.774330, 21.463428>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.518370, 22.534964, 21.231462> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.535557, 22.437180, 21.618946>,  <31.545870, 22.378510, 21.851437>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.535557, 22.437180, 21.618946>,  <31.518370, 22.534964, 21.231462>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.535557, 22.437180, 21.618946> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495711, -0.836618, -0.233114,
		0.867424, 0.490215, 0.085234,
		0.042968, -0.244460, 0.968707,
		31.548447, 22.363842, 21.909557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.175900, 22.330393, 21.341862>,  <31.518370, 22.534964, 21.231462>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.175900, 22.330393, 21.341862> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.956762, 22.167877, 21.634380>,  <31.825281, 22.070368, 21.809893>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.956762, 22.167877, 21.634380>,  <32.175900, 22.330393, 21.341862>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.956762, 22.167877, 21.634380> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564894, -0.824427, -0.034848,
		0.617061, 0.394015, 0.681166,
		-0.547841, -0.406290, 0.731299,
		31.792410, 22.045990, 21.853769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.640610, 21.902147, 21.726217>,  <32.175900, 22.330393, 21.341862>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.640610, 21.902147, 21.726217> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.308426, 21.745922, 21.885113>,  <32.109116, 21.652187, 21.980450>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.308426, 21.745922, 21.885113>,  <32.640610, 21.902147, 21.726217>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.308426, 21.745922, 21.885113> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443568, -0.894988, 0.047369,
		0.337022, 0.215540, 0.916493,
		-0.830460, -0.390562, 0.397237,
		32.059288, 21.628754, 22.004284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.828285, 21.649458, 22.363106>,  <32.640610, 21.902147, 21.726217>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.828285, 21.649458, 22.363106> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.497566, 21.459881, 22.241924>,  <32.299133, 21.346134, 22.169216>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.497566, 21.459881, 22.241924>,  <32.828285, 21.649458, 22.363106>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.497566, 21.459881, 22.241924> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412810, -0.877099, 0.245531,
		-0.382088, 0.077942, 0.920833,
		-0.826799, -0.473944, -0.302954,
		32.249527, 21.317698, 22.151037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.831718, 21.127905, 22.734547>,  <32.828285, 21.649458, 22.363106>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.831718, 21.127905, 22.734547> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.602467, 21.023590, 22.423801>,  <32.464916, 20.961000, 22.237354>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.602467, 21.023590, 22.423801>,  <32.831718, 21.127905, 22.734547>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.602467, 21.023590, 22.423801> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397743, -0.917382, 0.014525,
		-0.716468, -0.300667, 0.629503,
		-0.573127, -0.260787, -0.776863,
		32.430527, 20.945354, 22.190742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.563599, 20.359646, 22.803448>,  <32.831718, 21.127905, 22.734547>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.563599, 20.359646, 22.803448> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.499477, 20.441265, 22.417149>,  <32.461002, 20.490236, 22.185369>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.499477, 20.441265, 22.417149>,  <32.563599, 20.359646, 22.803448>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.499477, 20.441265, 22.417149> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252058, -0.937499, -0.239920,
		-0.954342, -0.281885, 0.098854,
		-0.160305, 0.204049, -0.965746,
		32.451385, 20.502480, 22.127424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.300014, 19.787989, 22.579149>,  <32.563599, 20.359646, 22.803448>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.300014, 19.787989, 22.579149> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.444691, 19.954964, 22.245701>,  <32.531498, 20.055149, 22.045631>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.444691, 19.954964, 22.245701>,  <32.300014, 19.787989, 22.579149>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.444691, 19.954964, 22.245701> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242456, -0.905508, -0.348240,
		-0.900219, -0.076161, -0.428725,
		0.361692, 0.417439, -0.833621,
		32.553200, 20.080194, 21.995615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.089733, 19.232119, 22.123314>,  <32.300014, 19.787989, 22.579149>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.089733, 19.232119, 22.123314> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.335476, 19.483181, 21.932060>,  <32.482922, 19.633818, 21.817308>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.335476, 19.483181, 21.932060>,  <32.089733, 19.232119, 22.123314>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.335476, 19.483181, 21.932060> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227067, -0.720986, -0.654691,
		-0.755650, 0.293645, -0.585462,
		0.614357, 0.627656, -0.478136,
		32.519783, 19.671478, 21.788620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.925303, 19.135450, 21.384190>,  <32.089733, 19.232119, 22.123314>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.925303, 19.135450, 21.384190> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.296661, 19.282177, 21.407921>,  <32.519478, 19.370213, 21.422159>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.296661, 19.282177, 21.407921>,  <31.925303, 19.135450, 21.384190>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.296661, 19.282177, 21.407921> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347182, -0.799395, -0.490338,
		-0.132436, 0.475828, -0.869510,
		0.928399, 0.366817, 0.059330,
		32.575180, 19.392221, 21.425720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.201015, 19.142281, 20.759272>,  <31.925303, 19.135450, 21.384190>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.201015, 19.142281, 20.759272> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.528229, 19.151863, 20.989140>,  <32.724556, 19.157612, 21.127060>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.528229, 19.151863, 20.989140>,  <32.201015, 19.142281, 20.759272>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.528229, 19.151863, 20.989140> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364740, -0.794150, -0.486097,
		0.444727, 0.607249, -0.658381,
		0.818036, 0.023957, 0.574668,
		32.773640, 19.159050, 21.161539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.798168, 19.223417, 20.372591>,  <32.201015, 19.142281, 20.759272>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.798168, 19.223417, 20.372591> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.932716, 19.034687, 20.698593>,  <33.013443, 18.921450, 20.894196>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.932716, 19.034687, 20.698593>,  <32.798168, 19.223417, 20.372591>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.932716, 19.034687, 20.698593> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505406, -0.639799, -0.578983,
		0.794620, 0.606662, 0.023255,
		0.336368, -0.471825, 0.815008,
		33.033627, 18.893139, 20.943096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.326614, 18.909637, 20.124708>,  <32.798168, 19.223417, 20.372591>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.326614, 18.909637, 20.124708> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.307377, 18.747295, 20.489777>,  <33.295834, 18.649891, 20.708818>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.307377, 18.747295, 20.489777>,  <33.326614, 18.909637, 20.124708>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.307377, 18.747295, 20.489777> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549610, -0.773717, -0.315104,
		0.834036, 0.486460, 0.260272,
		-0.048092, -0.405856, 0.912671,
		33.292950, 18.625538, 20.763578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.708641, 19.306292, 20.579964>,  <33.326614, 18.909637, 20.124708>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.708641, 19.306292, 20.579964> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.062840, 19.402061, 20.420677>,  <34.275356, 19.459524, 20.325106>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.062840, 19.402061, 20.420677>,  <33.708641, 19.306292, 20.579964>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.062840, 19.402061, 20.420677> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380449, 0.865609, -0.325544,
		0.266756, 0.439768, 0.857581,
		0.885494, 0.239425, -0.398216,
		34.328487, 19.473888, 20.301212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.010990, 19.872278, 20.897938>,  <33.708641, 19.306292, 20.579964>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.010990, 19.872278, 20.897938> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.182076, 19.879715, 20.536449>,  <34.284725, 19.884176, 20.319555>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.182076, 19.879715, 20.536449>,  <34.010990, 19.872278, 20.897938>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.182076, 19.879715, 20.536449> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470453, 0.858283, -0.204999,
		0.771839, 0.512840, 0.375846,
		0.427714, 0.018592, -0.903723,
		34.310390, 19.885292, 20.265333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.391518, 20.510519, 20.816938>,  <34.010990, 19.872278, 20.897938>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.391518, 20.510519, 20.816938> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.308086, 20.382919, 20.447132>,  <34.258026, 20.306358, 20.225248>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.308086, 20.382919, 20.447132>,  <34.391518, 20.510519, 20.816938>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.308086, 20.382919, 20.447132> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354034, 0.905826, -0.232679,
		0.911677, 0.278778, -0.301873,
		-0.208578, -0.319001, -0.924518,
		34.245514, 20.287218, 20.169777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.662045, 21.095909, 20.377129>,  <34.391518, 20.510519, 20.816938>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.662045, 21.095909, 20.377129> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.401558, 20.889175, 20.154850>,  <34.245266, 20.765135, 20.021482>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.401558, 20.889175, 20.154850>,  <34.662045, 21.095909, 20.377129>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.401558, 20.889175, 20.154850> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432259, 0.854472, -0.288151,
		0.623754, 0.052557, -0.779852,
		-0.651217, -0.516833, -0.555698,
		34.206192, 20.734125, 19.988140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.677685, 21.380495, 19.756128>,  <34.662045, 21.095909, 20.377129>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.677685, 21.380495, 19.756128> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.322533, 21.197010, 19.741959>,  <34.109444, 21.086918, 19.733458>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.322533, 21.197010, 19.741959>,  <34.677685, 21.380495, 19.756128>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.322533, 21.197010, 19.741959> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416866, 0.834672, -0.359924,
		0.194668, -0.304802, -0.932309,
		-0.887878, -0.458713, -0.035422,
		34.056168, 21.059397, 19.731333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.464325, 21.496658, 19.056124>,  <34.677685, 21.380495, 19.756128>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.464325, 21.496658, 19.056124> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.134403, 21.415508, 19.267231>,  <33.936451, 21.366817, 19.393894>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.134403, 21.415508, 19.267231>,  <34.464325, 21.496658, 19.056124>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.134403, 21.415508, 19.267231> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388129, 0.881908, -0.267569,
		-0.411159, -0.425534, -0.806145,
		-0.824805, -0.202875, 0.527767,
		33.886963, 21.354647, 19.425562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.869904, 21.599493, 18.609861>,  <34.464325, 21.496658, 19.056124>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.869904, 21.599493, 18.609861> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.751614, 21.651081, 18.988472>,  <33.680641, 21.682034, 19.215639>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.751614, 21.651081, 18.988472>,  <33.869904, 21.599493, 18.609861>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.751614, 21.651081, 18.988472> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423133, 0.870656, -0.250832,
		-0.856450, -0.474684, -0.202900,
		-0.295722, 0.128971, 0.946528,
		33.662895, 21.689772, 19.272430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.291695, 21.599432, 18.020741>,  <33.869904, 21.599493, 18.609861>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.291695, 21.599432, 18.020741> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.207466, 21.708874, 17.645336>,  <33.156929, 21.774538, 17.420094>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.207466, 21.708874, 17.645336>,  <33.291695, 21.599432, 18.020741>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.207466, 21.708874, 17.645336> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428578, -0.888694, -0.162921,
		-0.878623, 0.367917, 0.304401,
		-0.210578, 0.273606, -0.938508,
		33.144295, 21.790955, 17.363783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.527088, 21.532774, 17.787008>,  <33.291695, 21.599432, 18.020741>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.527088, 21.532774, 17.787008> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.778122, 21.492622, 17.478188>,  <32.928741, 21.468531, 17.292896>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.778122, 21.492622, 17.478188>,  <32.527088, 21.532774, 17.787008>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.778122, 21.492622, 17.478188> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404484, -0.889355, -0.213167,
		-0.665229, 0.446062, -0.598747,
		0.627585, -0.100379, -0.772050,
		32.966396, 21.462509, 17.246572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.128487, 21.276770, 17.187172>,  <32.527088, 21.532774, 17.787008>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.128487, 21.276770, 17.187172> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.501591, 21.183632, 17.077080>,  <32.725452, 21.127750, 17.011024>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.501591, 21.183632, 17.077080>,  <32.128487, 21.276770, 17.187172>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.501591, 21.183632, 17.077080> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337996, -0.830379, -0.442979,
		-0.125399, 0.506217, -0.853240,
		0.932756, -0.232842, -0.275228,
		32.781418, 21.113779, 16.994511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.927896, 20.978874, 16.507437>,  <32.128487, 21.276770, 17.187172>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.927896, 20.978874, 16.507437> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.298939, 20.866196, 16.605576>,  <32.521564, 20.798588, 16.664459>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.298939, 20.866196, 16.605576>,  <31.927896, 20.978874, 16.507437>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.298939, 20.866196, 16.605576> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194644, -0.925047, -0.326192,
		0.318844, 0.254823, -0.912910,
		0.927606, -0.281697, 0.245346,
		32.577221, 20.781687, 16.679180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.241795, 20.494991, 15.985881>,  <31.927896, 20.978874, 16.507437>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.241795, 20.494991, 15.985881> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.436462, 20.421871, 16.327579>,  <32.553261, 20.377998, 16.532598>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.436462, 20.421871, 16.327579>,  <32.241795, 20.494991, 15.985881>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.436462, 20.421871, 16.327579> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183382, -0.977451, -0.104694,
		0.854123, -0.105702, -0.509216,
		0.486667, -0.182803, 0.854247,
		32.582462, 20.367031, 16.583853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.604164, 19.847342, 15.772678>,  <32.241795, 20.494991, 15.985881>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.604164, 19.847342, 15.772678> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.618393, 19.877270, 16.171303>,  <32.626930, 19.895227, 16.410479>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.618393, 19.877270, 16.171303>,  <32.604164, 19.847342, 15.772678>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.618393, 19.877270, 16.171303> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012149, -0.997087, 0.075295,
		0.999293, -0.014786, -0.034563,
		0.035576, 0.074822, 0.996562,
		32.629066, 19.899715, 16.470272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.152237, 19.469614, 15.925536>,  <32.604164, 19.847342, 15.772678>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.152237, 19.469614, 15.925536> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.916962, 19.492344, 16.248226>,  <32.775795, 19.505981, 16.441839>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.916962, 19.492344, 16.248226>,  <33.152237, 19.469614, 15.925536>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.916962, 19.492344, 16.248226> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080425, -0.988473, 0.128266,
		0.804714, 0.140326, 0.576839,
		-0.588189, 0.056825, 0.806724,
		32.740505, 19.509392, 16.490244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.316978, 18.994781, 16.430443>,  <33.152237, 19.469614, 15.925536>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.316978, 18.994781, 16.430443> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.932880, 19.042324, 16.531483>,  <32.702423, 19.070848, 16.592108>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.932880, 19.042324, 16.531483>,  <33.316978, 18.994781, 16.430443>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.932880, 19.042324, 16.531483> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052628, -0.965688, 0.254316,
		0.274161, 0.230911, 0.933550,
		-0.960243, 0.118855, 0.252602,
		32.644806, 19.077980, 16.607264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.285084, 18.532112, 16.983541>,  <33.316978, 18.994781, 16.430443>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.285084, 18.532112, 16.983541> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.908962, 18.620602, 16.880093>,  <32.683289, 18.673697, 16.818024>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.908962, 18.620602, 16.880093>,  <33.285084, 18.532112, 16.983541>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.908962, 18.620602, 16.880093> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295788, -0.907084, 0.299513,
		-0.168334, 0.358131, 0.918371,
		-0.940305, 0.221225, -0.258624,
		32.626869, 18.686970, 16.802505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<28.810987, 34.294022, 19.677177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.638079, 33.974628, 19.509575>,  <28.534332, 33.782993, 19.409014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.638079, 33.974628, 19.509575>,  <28.810987, 34.294022, 19.677177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.638079, 33.974628, 19.509575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901127, -0.365335, -0.233454,
		0.033331, -0.478494, 0.877458,
		-0.432273, -0.798482, -0.419006,
		28.508396, 33.735085, 19.383873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.193048, 33.711830, 19.964556>,  <28.810987, 34.294022, 19.677177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.193048, 33.711830, 19.964556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.019005, 33.581055, 19.628986>,  <28.914579, 33.502590, 19.427645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.019005, 33.581055, 19.628986>,  <29.193048, 33.711830, 19.964556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.019005, 33.581055, 19.628986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794306, -0.578130, -0.186664,
		-0.423981, -0.747582, 0.511235,
		-0.435107, -0.326935, -0.838925,
		28.888474, 33.482975, 19.377308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.263186, 32.948685, 19.942623>,  <29.193048, 33.711830, 19.964556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.263186, 32.948685, 19.942623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.203890, 33.063927, 19.564201>,  <29.168312, 33.133072, 19.337149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.203890, 33.063927, 19.564201>,  <29.263186, 32.948685, 19.942623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.203890, 33.063927, 19.564201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723029, -0.621096, -0.302436,
		-0.674725, -0.728859, -0.116237,
		-0.148239, 0.288104, -0.946056,
		29.159418, 33.150356, 19.280384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.267847, 32.391171, 19.653500>,  <29.263186, 32.948685, 19.942623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.267847, 32.391171, 19.653500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.304104, 32.646313, 19.347576>,  <29.325857, 32.799397, 19.164022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.304104, 32.646313, 19.347576>,  <29.267847, 32.391171, 19.653500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.304104, 32.646313, 19.347576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568612, -0.663630, -0.486082,
		-0.817597, -0.390819, -0.422842,
		0.090641, 0.637852, -0.764807,
		29.331297, 32.837669, 19.118134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.015402, 31.989273, 19.019123>,  <29.267847, 32.391171, 19.653500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.015402, 31.989273, 19.019123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.258057, 32.278347, 18.886627>,  <29.403648, 32.451790, 18.807129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.258057, 32.278347, 18.886627>,  <29.015402, 31.989273, 19.019123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.258057, 32.278347, 18.886627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585713, -0.688029, -0.428435,
		-0.537525, 0.065893, -0.840669,
		0.606636, 0.722685, -0.331239,
		29.440048, 32.495152, 18.787256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.197075, 31.958120, 18.225470>,  <29.015402, 31.989273, 19.019123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.197075, 31.958120, 18.225470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.513170, 32.176510, 18.336781>,  <29.702827, 32.307545, 18.403568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.513170, 32.176510, 18.336781>,  <29.197075, 31.958120, 18.225470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.513170, 32.176510, 18.336781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602464, -0.609127, -0.515754,
		-0.112079, 0.575221, -0.810283,
		0.790238, 0.545971, 0.278280,
		29.750242, 32.340302, 18.420265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.577978, 31.982254, 17.637568>,  <29.197075, 31.958120, 18.225470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.577978, 31.982254, 17.637568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.826567, 32.077103, 17.936245>,  <29.975719, 32.134010, 18.115452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.826567, 32.077103, 17.936245>,  <29.577978, 31.982254, 17.637568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.826567, 32.077103, 17.936245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614711, -0.738472, -0.277112,
		0.485701, 0.631216, -0.604699,
		0.621470, 0.237121, 0.746692,
		30.013008, 32.148239, 18.160252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.160881, 31.864594, 17.308287>,  <29.577978, 31.982254, 17.637568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.160881, 31.864594, 17.308287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.288155, 31.881283, 17.687130>,  <30.364519, 31.891296, 17.914436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.288155, 31.881283, 17.687130>,  <30.160881, 31.864594, 17.308287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.288155, 31.881283, 17.687130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711577, -0.670643, -0.209514,
		0.626431, 0.740606, -0.243076,
		0.318185, 0.041722, 0.947110,
		30.383610, 31.893799, 17.971264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.968193, 31.908079, 17.282772>,  <30.160881, 31.864594, 17.308287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.968193, 31.908079, 17.282772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.890188, 31.796291, 17.658829>,  <30.843386, 31.729219, 17.884462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.890188, 31.796291, 17.658829>,  <30.968193, 31.908079, 17.282772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.890188, 31.796291, 17.658829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676917, -0.732002, -0.077186,
		0.709757, 0.621346, 0.331926,
		-0.195011, -0.279469, 0.940142,
		30.831684, 31.712450, 17.940872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.568443, 31.798683, 17.572916>,  <30.968193, 31.908079, 17.282772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.568443, 31.798683, 17.572916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.297476, 31.595318, 17.785564>,  <31.134895, 31.473299, 17.913153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.297476, 31.595318, 17.785564>,  <31.568443, 31.798683, 17.572916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.297476, 31.595318, 17.785564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554965, -0.827592, -0.084298,
		0.482821, 0.237925, 0.842778,
		-0.677420, -0.508413, 0.531619,
		31.094250, 31.442795, 17.945049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.028988, 31.391176, 17.927916>,  <31.568443, 31.798683, 17.572916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.028988, 31.391176, 17.927916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.669876, 31.216881, 17.953583>,  <31.454409, 31.112303, 17.968983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.669876, 31.216881, 17.953583>,  <32.028988, 31.391176, 17.927916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.669876, 31.216881, 17.953583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417497, -0.888345, -0.191153,
		0.140295, -0.144824, 0.979461,
		-0.897783, -0.435740, 0.064167,
		31.400541, 31.086159, 17.972834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.107204, 30.849398, 18.287521>,  <32.028988, 31.391176, 17.927916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.107204, 30.849398, 18.287521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.781908, 30.793182, 18.061642>,  <31.586729, 30.759453, 17.926113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.781908, 30.793182, 18.061642>,  <32.107204, 30.849398, 18.287521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.781908, 30.793182, 18.061642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367977, -0.875951, -0.311932,
		-0.450810, -0.461473, 0.764076,
		-0.813242, -0.140540, -0.564700,
		31.537935, 30.751020, 17.892231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.899704, 30.622581, 18.905098>,  <32.107204, 30.849398, 18.287521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.899704, 30.622581, 18.905098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.031857, 30.523525, 19.269409>,  <32.111149, 30.464090, 19.487997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.031857, 30.523525, 19.269409>,  <31.899704, 30.622581, 18.905098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.031857, 30.523525, 19.269409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132073, 0.967602, 0.215183,
		-0.934561, 0.049197, 0.352386,
		0.330383, -0.247642, 0.910780,
		32.130970, 30.449232, 19.542643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.553782, 31.086079, 19.421555>,  <31.899704, 30.622581, 18.905098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.553782, 31.086079, 19.421555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.895063, 30.964016, 19.590752>,  <32.099831, 30.890778, 19.692270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.895063, 30.964016, 19.590752>,  <31.553782, 31.086079, 19.421555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.895063, 30.964016, 19.590752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151590, 0.921059, 0.358707,
		-0.499062, -0.241929, 0.832111,
		0.853205, -0.305157, 0.422991,
		32.151024, 30.872469, 19.717649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.600010, 31.297436, 20.115847>,  <31.553782, 31.086079, 19.421555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.600010, 31.297436, 20.115847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.978418, 31.175888, 20.070759>,  <32.205463, 31.102959, 20.043705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.978418, 31.175888, 20.070759>,  <31.600010, 31.297436, 20.115847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.978418, 31.175888, 20.070759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308959, 0.740444, 0.596898,
		-0.097917, -0.599504, 0.794359,
		0.946021, -0.303871, -0.112720,
		32.262226, 31.084726, 20.036943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.909708, 31.228516, 20.799290>,  <31.600010, 31.297436, 20.115847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.909708, 31.228516, 20.799290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.218082, 31.291615, 20.552464>,  <32.403107, 31.329473, 20.404367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.218082, 31.291615, 20.552464>,  <31.909708, 31.228516, 20.799290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.218082, 31.291615, 20.552464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311649, 0.751504, 0.581477,
		0.555454, -0.640591, 0.530201,
		0.770938, 0.157747, -0.617066,
		32.449364, 31.338940, 20.367344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.567719, 31.244942, 21.226263>,  <31.909708, 31.228516, 20.799290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.567719, 31.244942, 21.226263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.610725, 31.464649, 20.894783>,  <32.636528, 31.596474, 20.695894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.610725, 31.464649, 20.894783>,  <32.567719, 31.244942, 21.226263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.610725, 31.464649, 20.894783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404634, 0.737199, 0.541119,
		0.908136, -0.393499, -0.142992,
		0.107516, 0.549269, -0.828700,
		32.642979, 31.629431, 20.646173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.202206, 31.498419, 21.378212>,  <32.567719, 31.244942, 21.226263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.202206, 31.498419, 21.378212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.066269, 31.712624, 21.068958>,  <32.984707, 31.841146, 20.883406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.066269, 31.712624, 21.068958>,  <33.202206, 31.498419, 21.378212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.066269, 31.712624, 21.068958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435230, 0.818288, 0.375473,
		0.833714, -0.208887, -0.511162,
		-0.339846, 0.535510, -0.773132,
		32.964314, 31.873276, 20.837019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.772091, 31.887947, 21.254173>,  <33.202206, 31.498419, 21.378212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.772091, 31.887947, 21.254173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.475201, 32.068085, 21.055664>,  <33.297066, 32.176167, 20.936558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.475201, 32.068085, 21.055664>,  <33.772091, 31.887947, 21.254173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.475201, 32.068085, 21.055664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291769, 0.883834, 0.365662,
		0.603297, 0.126607, -0.787403,
		-0.742229, 0.450343, -0.496274,
		33.252533, 32.203186, 20.906782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.038288, 32.361988, 20.668102>,  <33.772091, 31.887947, 21.254173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.038288, 32.361988, 20.668102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.676353, 32.482594, 20.788345>,  <33.459194, 32.554955, 20.860491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.676353, 32.482594, 20.788345>,  <34.038288, 32.361988, 20.668102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.676353, 32.482594, 20.788345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409553, 0.809342, 0.420989,
		-0.116360, 0.504040, -0.855806,
		-0.904835, 0.301512, 0.300606,
		33.404903, 32.573048, 20.878527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.148418, 33.083988, 20.664917>,  <34.038288, 32.361988, 20.668102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.148418, 33.083988, 20.664917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.814705, 33.029396, 20.878590>,  <33.614479, 32.996639, 21.006792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.814705, 33.029396, 20.878590>,  <34.148418, 33.083988, 20.664917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.814705, 33.029396, 20.878590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290580, 0.714542, 0.636391,
		-0.468549, 0.686151, -0.556470,
		-0.834281, -0.136482, 0.534180,
		33.564419, 32.988453, 21.038843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.838516, 33.785503, 20.690887>,  <34.148418, 33.083988, 20.664917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.838516, 33.785503, 20.690887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.709103, 33.551315, 20.988220>,  <33.631454, 33.410801, 21.166620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.709103, 33.551315, 20.988220>,  <33.838516, 33.785503, 20.690887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.709103, 33.551315, 20.988220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215461, 0.719363, 0.660373,
		-0.921358, 0.373815, -0.106594,
		-0.323538, -0.585473, 0.743334,
		33.612041, 33.375675, 21.211220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.536888, 34.273548, 21.090633>,  <33.838516, 33.785503, 20.690887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.536888, 34.273548, 21.090633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.583534, 33.966423, 21.342625>,  <33.611523, 33.782150, 21.493818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.583534, 33.966423, 21.342625>,  <33.536888, 34.273548, 21.090633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.583534, 33.966423, 21.342625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417587, 0.613417, 0.670329,
		-0.901123, 0.184903, 0.392158,
		0.116611, -0.767809, 0.629977,
		33.618519, 33.736080, 21.531618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.323318, 34.534191, 21.782425>,  <33.536888, 34.273548, 21.090633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.323318, 34.534191, 21.782425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.544937, 34.216999, 21.883789>,  <33.677910, 34.026684, 21.944607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.544937, 34.216999, 21.883789>,  <33.323318, 34.534191, 21.782425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.544937, 34.216999, 21.883789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416242, 0.527494, 0.740603,
		-0.720954, -0.304850, 0.622328,
		0.554047, -0.792979, 0.253408,
		33.711151, 33.979107, 21.959812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.214020, 34.432865, 22.512640>,  <33.323318, 34.534191, 21.782425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.214020, 34.432865, 22.512640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.560684, 34.280338, 22.383961>,  <33.768684, 34.188820, 22.306753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.560684, 34.280338, 22.383961>,  <33.214020, 34.432865, 22.512640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.560684, 34.280338, 22.383961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484657, 0.490574, 0.724185,
		-0.118329, -0.783538, 0.609972,
		0.866664, -0.381320, -0.321698,
		33.820683, 34.165943, 22.287451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.437500, 34.291393, 23.192097>,  <33.214020, 34.432865, 22.512640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.437500, 34.291393, 23.192097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.762314, 34.248241, 22.962677>,  <33.957203, 34.222351, 22.825026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.762314, 34.248241, 22.962677>,  <33.437500, 34.291393, 23.192097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.762314, 34.248241, 22.962677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539232, 0.514572, 0.666667,
		0.223212, -0.850634, 0.476024,
		0.812038, -0.107879, -0.573547,
		34.005924, 34.215878, 22.790613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.158611, 33.815044, 23.666140>,  <33.437500, 34.291393, 23.192097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.158611, 33.815044, 23.666140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.429848, 33.521095, 23.671257>,  <33.592590, 33.344727, 23.674328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.429848, 33.521095, 23.671257>,  <33.158611, 33.815044, 23.666140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.429848, 33.521095, 23.671257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148945, -0.154437, -0.976711,
		0.719732, 0.660389, -0.214177,
		0.678086, -0.734871, 0.012792,
		33.633274, 33.300632, 23.675095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.172405, 33.015114, 23.821423>,  <33.158611, 33.815044, 23.666140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.172405, 33.015114, 23.821423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.884552, 33.140747, 24.069126>,  <32.711842, 33.216129, 24.217749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.884552, 33.140747, 24.069126>,  <33.172405, 33.015114, 23.821423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.884552, 33.140747, 24.069126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003708, -0.893571, 0.448906,
		0.694347, 0.320750, 0.644206,
		-0.719631, 0.314085, 0.619259,
		32.668663, 33.234974, 24.254904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.439690, 32.941013, 24.518501>,  <33.172405, 33.015114, 23.821423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.439690, 32.941013, 24.518501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.042786, 32.920864, 24.473110>,  <32.804642, 32.908775, 24.445875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.042786, 32.920864, 24.473110>,  <33.439690, 32.941013, 24.518501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.042786, 32.920864, 24.473110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009021, -0.940842, 0.338726,
		-0.123826, 0.335082, 0.934017,
		-0.992263, -0.050369, -0.113478,
		32.745106, 32.905754, 24.439066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.194923, 32.631863, 25.127308>,  <33.439690, 32.941013, 24.518501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.194923, 32.631863, 25.127308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.889957, 32.581554, 24.873409>,  <32.706978, 32.551369, 24.721069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.889957, 32.581554, 24.873409>,  <33.194923, 32.631863, 25.127308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.889957, 32.581554, 24.873409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013697, -0.983847, 0.178485,
		-0.646943, 0.127386, 0.751823,
		-0.762416, -0.125767, -0.634748,
		32.661232, 32.543823, 24.682985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.754108, 32.152733, 25.469530>,  <33.194923, 32.631863, 25.127308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.754108, 32.152733, 25.469530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.663822, 32.114616, 25.081722>,  <32.609650, 32.091747, 24.849037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.663822, 32.114616, 25.081722>,  <32.754108, 32.152733, 25.469530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.663822, 32.114616, 25.081722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156310, -0.978768, 0.132588,
		-0.961571, 0.181473, 0.206032,
		-0.225719, -0.095288, -0.969521,
		32.596107, 32.086029, 24.790867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.264187, 31.534243, 25.321705>,  <32.754108, 32.152733, 25.469530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.264187, 31.534243, 25.321705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.352222, 31.595860, 24.936409>,  <32.405045, 31.632830, 24.705231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.352222, 31.595860, 24.936409>,  <32.264187, 31.534243, 25.321705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.352222, 31.595860, 24.936409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167487, -0.966821, -0.192884,
		-0.960995, 0.203781, -0.186982,
		0.220085, 0.154044, -0.963241,
		32.418247, 31.642073, 24.647436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.752975, 31.145369, 24.905840>,  <32.264187, 31.534243, 25.321705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.752975, 31.145369, 24.905840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.085442, 31.195545, 24.689163>,  <32.284920, 31.225651, 24.559156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.085442, 31.195545, 24.689163>,  <31.752975, 31.145369, 24.905840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.085442, 31.195545, 24.689163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001179, -0.974615, -0.223887,
		-0.556028, 0.185448, -0.810211,
		0.831163, 0.125442, -0.541694,
		32.334789, 31.233177, 24.526655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.606619, 30.946138, 24.217484>,  <31.752975, 31.145369, 24.905840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.606619, 30.946138, 24.217484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.005638, 30.925823, 24.198227>,  <32.245049, 30.913633, 24.186674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.005638, 30.925823, 24.198227>,  <31.606619, 30.946138, 24.217484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.005638, 30.925823, 24.198227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065220, -0.924110, -0.376519,
		-0.025364, 0.378736, -0.925157,
		0.997549, -0.050788, -0.048140,
		32.304901, 30.910587, 24.183784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.772390, 30.611824, 23.654280>,  <31.606619, 30.946138, 24.217484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.772390, 30.611824, 23.654280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.115864, 30.571552, 23.855286>,  <32.321949, 30.547388, 23.975889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.115864, 30.571552, 23.855286>,  <31.772390, 30.611824, 23.654280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.115864, 30.571552, 23.855286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033696, -0.967301, -0.251383,
		0.511394, 0.232792, -0.827215,
		0.858685, -0.100681, 0.502516,
		32.373470, 30.541348, 24.006041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.276520, 30.337017, 23.133886>,  <31.772390, 30.611824, 23.654280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.276520, 30.337017, 23.133886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.404861, 30.255280, 23.503815>,  <32.481865, 30.206238, 23.725773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.404861, 30.255280, 23.503815>,  <32.276520, 30.337017, 23.133886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.404861, 30.255280, 23.503815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006003, -0.976867, -0.213762,
		0.947110, 0.063035, -0.314659,
		0.320854, -0.204345, 0.924822,
		32.501118, 30.193975, 23.781261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.816898, 29.812174, 23.063601>,  <32.276520, 30.337017, 23.133886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.816898, 29.812174, 23.063601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.733955, 29.788441, 23.454185>,  <32.684189, 29.774200, 23.688538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.733955, 29.788441, 23.454185>,  <32.816898, 29.812174, 23.063601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.733955, 29.788441, 23.454185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005017, -0.998210, -0.059590,
		0.978252, -0.007457, 0.207288,
		-0.207361, -0.059334, 0.976463,
		32.671745, 29.770641, 23.747124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.156719, 29.250027, 23.256290>,  <32.816898, 29.812174, 23.063601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.156719, 29.250027, 23.256290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.909527, 29.291706, 23.567993>,  <32.761211, 29.316713, 23.755014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.909527, 29.291706, 23.567993>,  <33.156719, 29.250027, 23.256290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.909527, 29.291706, 23.567993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036169, -0.993897, 0.104216,
		0.785360, 0.036219, 0.617979,
		-0.617982, 0.104198, 0.779256,
		32.724133, 29.322966, 23.801769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.398777, 28.868484, 23.869978>,  <33.156719, 29.250027, 23.256290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.398777, 28.868484, 23.869978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.006157, 28.910530, 23.933868>,  <32.770584, 28.935759, 23.972202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.006157, 28.910530, 23.933868>,  <33.398777, 28.868484, 23.869978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.006157, 28.910530, 23.933868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087515, -0.989676, 0.113500,
		0.170009, 0.097427, 0.980615,
		-0.981549, 0.105115, 0.159727,
		32.711693, 28.942064, 23.981787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.184013, 28.421501, 24.442865>,  <33.398777, 28.868484, 23.869978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.184013, 28.421501, 24.442865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.844490, 28.502361, 24.247452>,  <32.640778, 28.550877, 24.130203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.844490, 28.502361, 24.247452>,  <33.184013, 28.421501, 24.442865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.844490, 28.502361, 24.247452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220161, -0.975237, -0.021021,
		-0.480684, 0.089713, 0.872293,
		-0.848806, 0.202149, -0.488532,
		32.589848, 28.563005, 24.100891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.662991, 27.973024, 24.756145>,  <33.184013, 28.421501, 24.442865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.662991, 27.973024, 24.756145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.498459, 28.076061, 24.406414>,  <32.399738, 28.137882, 24.196575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.498459, 28.076061, 24.406414>,  <32.662991, 27.973024, 24.756145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.498459, 28.076061, 24.406414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449928, -0.891607, -0.051011,
		-0.792699, 0.372403, 0.482644,
		-0.411332, 0.257591, -0.874330,
		32.375061, 28.153339, 24.144115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.857658, 27.801128, 24.755939>,  <32.662991, 27.973024, 24.756145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.857658, 27.801128, 24.755939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.970690, 27.828423, 24.373215>,  <32.038509, 27.844799, 24.143579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.970690, 27.828423, 24.373215>,  <31.857658, 27.801128, 24.755939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.970690, 27.828423, 24.373215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455474, -0.868305, -0.196442,
		-0.844211, 0.491314, -0.214285,
		0.282579, 0.068237, -0.956814,
		32.055462, 27.848894, 24.086170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.255886, 27.609241, 24.302427>,  <31.857658, 27.801128, 24.755939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.255886, 27.609241, 24.302427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.589272, 27.552917, 24.088696>,  <31.789303, 27.519123, 23.960457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.589272, 27.552917, 24.088696>,  <31.255886, 27.609241, 24.302427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.589272, 27.552917, 24.088696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328406, -0.903905, -0.274054,
		-0.444394, 0.403892, -0.799616,
		0.833465, -0.140811, -0.534330,
		31.839312, 27.510674, 23.928396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.929272, 27.382288, 23.776583>,  <31.255886, 27.609241, 24.302427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.929272, 27.382288, 23.776583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.311953, 27.294971, 23.699570>,  <31.541561, 27.242580, 23.653362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.311953, 27.294971, 23.699570>,  <30.929272, 27.382288, 23.776583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.311953, 27.294971, 23.699570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289352, -0.784979, -0.547798,
		-0.031553, 0.579790, -0.814155,
		0.956703, -0.218292, -0.192532,
		31.598963, 27.229485, 23.641809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.850721, 27.106144, 23.154230>,  <30.929272, 27.382288, 23.776583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.850721, 27.106144, 23.154230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.224270, 27.019352, 23.267933>,  <31.448399, 26.967276, 23.336155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.224270, 27.019352, 23.267933>,  <30.850721, 27.106144, 23.154230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.224270, 27.019352, 23.267933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077620, -0.898924, -0.431174,
		0.349081, 0.380597, -0.856322,
		0.933872, -0.216982, 0.284255,
		31.504431, 26.954258, 23.353209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.090322, 26.829630, 22.600929>,  <30.850721, 27.106144, 23.154230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.090322, 26.829630, 22.600929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.315165, 26.687309, 22.899578>,  <31.450069, 26.601917, 23.078768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.315165, 26.687309, 22.899578>,  <31.090322, 26.829630, 22.600929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.315165, 26.687309, 22.899578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140234, -0.848661, -0.510008,
		0.815090, 0.391380, -0.427141,
		0.562105, -0.355803, 0.746620,
		31.483795, 26.580568, 23.123564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.516026, 26.421156, 22.239384>,  <31.090322, 26.829630, 22.600929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.516026, 26.421156, 22.239384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.575510, 26.304001, 22.617188>,  <31.611200, 26.233707, 22.843870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.575510, 26.304001, 22.617188>,  <31.516026, 26.421156, 22.239384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.575510, 26.304001, 22.617188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066051, -0.950057, -0.305006,
		0.986673, 0.107744, -0.121937,
		0.148710, -0.292887, 0.944512,
		31.620123, 26.216135, 22.900541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.114441, 25.845070, 22.333530>,  <31.516026, 26.421156, 22.239384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.114441, 25.845070, 22.333530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.854372, 25.789528, 22.632328>,  <31.698332, 25.756203, 22.811605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.854372, 25.789528, 22.632328>,  <32.114441, 25.845070, 22.333530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.854372, 25.789528, 22.632328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005425, -0.982285, -0.187315,
		0.759769, -0.125839, 0.637900,
		-0.650171, -0.138855, 0.746992,
		31.659321, 25.747871, 22.856426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.181095, 25.217846, 22.506769>,  <32.114441, 25.845070, 22.333530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.181095, 25.217846, 22.506769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.853403, 25.265911, 22.731064>,  <31.656788, 25.294750, 22.865641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.853403, 25.265911, 22.731064>,  <32.181095, 25.217846, 22.506769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.853403, 25.265911, 22.731064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093006, -0.992696, 0.076846,
		0.565874, 0.010803, 0.824421,
		-0.819229, 0.120161, 0.560736,
		31.607634, 25.301960, 22.899284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.246845, 24.696302, 23.037500>,  <32.181095, 25.217846, 22.506769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.246845, 24.696302, 23.037500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.858507, 24.790253, 23.018383>,  <31.625504, 24.846622, 23.006912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.858507, 24.790253, 23.018383>,  <32.246845, 24.696302, 23.037500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.858507, 24.790253, 23.018383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235969, -0.971583, 0.018554,
		-0.042076, 0.029291, 0.998685,
		-0.970849, 0.234877, -0.047792,
		31.567253, 24.860716, 23.004045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.818714, 24.267330, 23.542038>,  <32.246845, 24.696302, 23.037500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.818714, 24.267330, 23.542038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.580059, 24.388462, 23.244766>,  <31.436865, 24.461142, 23.066402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.580059, 24.388462, 23.244766>,  <31.818714, 24.267330, 23.542038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.580059, 24.388462, 23.244766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155390, -0.952138, -0.263224,
		-0.787321, -0.041567, 0.615140,
		-0.596639, 0.302829, -0.743180,
		31.401068, 24.479311, 23.021812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.182438, 23.956242, 23.764275>,  <31.818714, 24.267330, 23.542038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.182438, 23.956242, 23.764275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.209343, 24.041798, 23.374458>,  <31.225487, 24.093132, 23.140570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.209343, 24.041798, 23.374458>,  <31.182438, 23.956242, 23.764275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.209343, 24.041798, 23.374458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238179, -0.945069, -0.223863,
		-0.968889, 0.247172, -0.012624,
		0.067263, 0.213892, -0.974539,
		31.229523, 24.105965, 23.082096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.655064, 23.546223, 23.484795>,  <31.182438, 23.956242, 23.764275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.655064, 23.546223, 23.484795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.911308, 23.607803, 23.183884>,  <31.065054, 23.644753, 23.003338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.911308, 23.607803, 23.183884>,  <30.655064, 23.546223, 23.484795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.911308, 23.607803, 23.183884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078027, -0.961573, -0.263229,
		-0.763892, 0.227324, -0.603980,
		0.640609, 0.153952, -0.752276,
		31.103491, 23.653990, 22.958200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.429548, 23.190256, 22.977377>,  <30.655064, 23.546223, 23.484795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.429548, 23.190256, 22.977377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.783268, 23.244877, 22.798775>,  <30.995501, 23.277649, 22.691614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.783268, 23.244877, 22.798775>,  <30.429548, 23.190256, 22.977377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.783268, 23.244877, 22.798775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033733, -0.935096, -0.352785,
		-0.465698, 0.327030, -0.822299,
		0.884300, 0.136553, -0.446504,
		31.048557, 23.285843, 22.664824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.884905, 23.191427, 22.474474>,  <30.429548, 23.190256, 22.977377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.884905, 23.191427, 22.474474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.575583, 23.029137, 22.669361>,  <29.389988, 22.931763, 22.786293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.575583, 23.029137, 22.669361>,  <29.884905, 23.191427, 22.474474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.575583, 23.029137, 22.669361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336552, 0.913923, 0.226884,
		-0.537334, 0.011476, -0.843291,
		-0.773307, -0.405724, 0.487220,
		29.343590, 22.907419, 22.815527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.266270, 23.435709, 22.143007>,  <29.884905, 23.191427, 22.474474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.266270, 23.435709, 22.143007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.167553, 23.333698, 22.516972>,  <29.108322, 23.272491, 22.741350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.167553, 23.333698, 22.516972>,  <29.266270, 23.435709, 22.143007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.167553, 23.333698, 22.516972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261070, 0.946578, 0.189294,
		-0.933240, -0.197361, -0.300188,
		-0.246792, -0.255027, 0.934909,
		29.093515, 23.257191, 22.797443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.610723, 23.644299, 22.310001>,  <29.266270, 23.435709, 22.143007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.610723, 23.644299, 22.310001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.798790, 23.601330, 22.660408>,  <28.911631, 23.575548, 22.870651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.798790, 23.601330, 22.660408>,  <28.610723, 23.644299, 22.310001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.798790, 23.601330, 22.660408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247588, 0.936656, 0.247739,
		-0.847138, -0.333370, 0.413790,
		0.470168, -0.107420, 0.876016,
		28.939840, 23.569103, 22.923212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.157444, 23.856869, 22.804461>,  <28.610723, 23.644299, 22.310001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.157444, 23.856869, 22.804461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.505630, 23.928749, 22.987762>,  <28.714542, 23.971876, 23.097744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.505630, 23.928749, 22.987762>,  <28.157444, 23.856869, 22.804461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.505630, 23.928749, 22.987762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311139, 0.922273, 0.229359,
		-0.381419, -0.342230, 0.858719,
		0.870467, 0.179699, 0.458253,
		28.766771, 23.982658, 23.125238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.886322, 24.101000, 23.448143>,  <28.157444, 23.856869, 22.804461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.886322, 24.101000, 23.448143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.278013, 24.179054, 23.426109>,  <28.513027, 24.225887, 23.412889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.278013, 24.179054, 23.426109>,  <27.886322, 24.101000, 23.448143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.278013, 24.179054, 23.426109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155541, 0.897213, 0.413299,
		0.130071, -0.396146, 0.908928,
		0.979229, 0.195134, -0.055084,
		28.571781, 24.237595, 23.409584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <60.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <60.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 60.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 60.000000>,  <60.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 0.000000>,  <0.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 0.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 0.000000, 60.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 60.000000, 0.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
