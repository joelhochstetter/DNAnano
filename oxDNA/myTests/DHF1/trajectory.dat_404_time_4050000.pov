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
	<2.979877, 2.160652, 4.651732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.987473, 1.760765, 4.646008>,  <2.992030, 1.520833, 4.642573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.987473, 1.760765, 4.646008>,  <2.979877, 2.160652, 4.651732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.987473, 1.760765, 4.646008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998012, 0.018094, 0.060366,
		-0.060090, -0.015430, 0.998074,
		0.018990, -0.999717, -0.014312,
		2.993170, 1.460850, 4.641714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.318867, 1.925684, 5.249865>,  <2.979877, 2.160652, 4.651732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.318867, 1.925684, 5.249865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.357788, 1.653385, 4.959454>,  <3.381141, 1.490006, 4.785207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.357788, 1.653385, 4.959454>,  <3.318867, 1.925684, 5.249865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.357788, 1.653385, 4.959454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981456, -0.055422, 0.183501,
		-0.165155, -0.730419, 0.662731,
		0.097303, -0.680747, -0.726027,
		3.386979, 1.449161, 4.741645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.525577, 1.191036, 5.409026>,  <3.318867, 1.925684, 5.249865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.525577, 1.191036, 5.409026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.662640, 1.335617, 5.062168>,  <3.744877, 1.422366, 4.854053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.662640, 1.335617, 5.062168>,  <3.525577, 1.191036, 5.409026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.662640, 1.335617, 5.062168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915551, 0.078438, 0.394480,
		0.210603, -0.929085, -0.304052,
		0.342656, 0.361453, -0.867144,
		3.765436, 1.444053, 4.802025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.209048, 0.804459, 5.148355>,  <3.525577, 1.191036, 5.409026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.209048, 0.804459, 5.148355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.178013, 1.184898, 5.028759>,  <4.159392, 1.413162, 4.957002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.178013, 1.184898, 5.028759>,  <4.209048, 0.804459, 5.148355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.178013, 1.184898, 5.028759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900771, 0.195408, 0.387851,
		0.427309, -0.239228, -0.871882,
		-0.077588, 0.951097, -0.298989,
		4.154737, 1.470227, 4.939062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.803434, 0.937909, 4.802514>,  <4.209048, 0.804459, 5.148355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.803434, 0.937909, 4.802514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.686642, 1.312393, 4.880749>,  <4.616566, 1.537084, 4.927690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.686642, 1.312393, 4.880749>,  <4.803434, 0.937909, 4.802514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.686642, 1.312393, 4.880749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904440, 0.203776, 0.374785,
		0.311022, 0.286328, -0.906246,
		-0.291982, 0.936212, 0.195587,
		4.599047, 1.593257, 4.939425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.269852, 1.338882, 4.480269>,  <4.803434, 0.937909, 4.802514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.269852, 1.338882, 4.480269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.107819, 1.590664, 4.745506>,  <5.010599, 1.741733, 4.904649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.107819, 1.590664, 4.745506>,  <5.269852, 1.338882, 4.480269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.107819, 1.590664, 4.745506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912805, 0.237260, 0.332408,
		0.051911, 0.739928, -0.670680,
		-0.405084, 0.629456, 0.663094,
		4.986293, 1.779501, 4.944434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.683801, 1.840718, 4.442737>,  <5.269852, 1.338882, 4.480269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.683801, 1.840718, 4.442737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.489567, 1.918224, 4.783714>,  <5.373026, 1.964728, 4.988301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.489567, 1.918224, 4.783714>,  <5.683801, 1.840718, 4.442737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.489567, 1.918224, 4.783714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859009, 0.286693, 0.424159,
		-0.162201, 0.938223, -0.305661,
		-0.485586, 0.193767, 0.852444,
		5.343891, 1.976354, 5.039447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.858757, 2.542657, 4.614532>,  <5.683801, 1.840718, 4.442737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.858757, 2.542657, 4.614532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.747009, 2.340309, 4.940979>,  <5.679960, 2.218901, 5.136847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.747009, 2.340309, 4.940979>,  <5.858757, 2.542657, 4.614532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.747009, 2.340309, 4.940979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931898, 0.061935, 0.357394,
		-0.231341, 0.860384, 0.454115,
		-0.279370, -0.505869, 0.816118,
		5.663198, 2.188549, 5.185814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.666955, 1.749007, -0.242299> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.720938, 1.762383, 0.153816>,  <1.753327, 1.770408, 0.391485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.720938, 1.762383, 0.153816>,  <1.666955, 1.749007, -0.242299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.720938, 1.762383, 0.153816> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.955915, 0.267445, 0.121241,
		-0.260794, -0.962993, 0.068059,
		0.134956, 0.033440, 0.990287,
		1.761425, 1.772414, 0.450902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.195585, 1.297724, 0.149579>,  <1.666955, 1.749007, -0.242299>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.195585, 1.297724, 0.149579> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.278622, 1.636177, 0.345932>,  <1.328443, 1.839249, 0.463744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.278622, 1.636177, 0.345932>,  <1.195585, 1.297724, 0.149579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.278622, 1.636177, 0.345932> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.975100, 0.219008, 0.034859,
		-0.078012, -0.485895, 0.870529,
		0.207591, 0.846133, 0.490882,
		1.340899, 1.890017, 0.493197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.879634, 1.327375, 0.916085>,  <1.195585, 1.297724, 0.149579>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.879634, 1.327375, 0.916085> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.923546, 1.684479, 0.741302>,  <0.949893, 1.898741, 0.636433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.923546, 1.684479, 0.741302>,  <0.879634, 1.327375, 0.916085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.923546, 1.684479, 0.741302> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.992779, 0.077101, -0.091896,
		-0.048351, 0.443889, 0.894776,
		0.109780, 0.892758, -0.436956,
		0.956480, 1.952306, 0.610216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.406701, 1.730590, 1.323117>,  <0.879634, 1.327375, 0.916085>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.406701, 1.730590, 1.323117> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.458540, 1.877144, 0.954559>,  <0.489643, 1.965076, 0.733425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.458540, 1.877144, 0.954559>,  <0.406701, 1.730590, 1.323117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.458540, 1.877144, 0.954559> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.990799, 0.011287, -0.134871,
		-0.039015, 0.930395, 0.364477,
		0.129597, 0.366385, -0.921394,
		0.497419, 1.987059, 0.678141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.148452, 2.127590, 1.245625>,  <0.406701, 1.730590, 1.323117>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.148452, 2.127590, 1.245625> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.008244, 2.042694, 0.887520>,  <0.102261, 1.991756, 0.672657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.008244, 2.042694, 0.887520>,  <-0.148452, 2.127590, 1.245625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.008244, 2.042694, 0.887520> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.918988, -0.137569, -0.369508,
		-0.044735, 0.967486, -0.248937,
		0.391740, -0.212240, -0.895262,
		0.125766, 1.979022, 0.618941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.458359, 2.594424, 0.845851>,  <-0.148452, 2.127590, 1.245625>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.458359, 2.594424, 0.845851> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.327877, 2.352226, 0.555481>,  <-0.249588, 2.206908, 0.381259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.327877, 2.352226, 0.555481>,  <-0.458359, 2.594424, 0.845851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.327877, 2.352226, 0.555481> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.895812, 0.047205, -0.441918,
		0.301846, 0.794449, -0.527011,
		0.326204, -0.605494, -0.725926,
		-0.230016, 2.170578, 0.337703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.640667, 2.871894, 0.062058>,  <-0.458359, 2.594424, 0.845851>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.640667, 2.871894, 0.062058> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.582357, 2.477516, 0.029404>,  <-0.547372, 2.240890, 0.009811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.582357, 2.477516, 0.029404>,  <-0.640667, 2.871894, 0.062058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.582357, 2.477516, 0.029404> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.904629, -0.099436, -0.414436,
		0.400494, 0.134263, -0.906409,
		0.145774, -0.985944, -0.081635,
		-0.538625, 2.181733, 0.004913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.818093, 2.663111, -0.648972>,  <-0.640667, 2.871894, 0.062058>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.818093, 2.663111, -0.648972> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.838989, 2.314491, -0.453964>,  <-0.851527, 2.105320, -0.336960>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.838989, 2.314491, -0.453964>,  <-0.818093, 2.663111, -0.648972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.838989, 2.314491, -0.453964> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.943610, -0.116732, -0.309795,
		0.326911, -0.476211, -0.816304,
		-0.052239, -0.871549, 0.487519,
		-0.854661, 2.053027, -0.307709>
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
