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
	<3.129957, 4.136456, 3.898436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.078693, 4.511414, 3.768902>,  <3.047935, 4.736388, 3.691181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.078693, 4.511414, 3.768902>,  <3.129957, 4.136456, 3.898436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.078693, 4.511414, 3.768902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991710, 0.124197, -0.032965,
		0.009318, -0.325376, -0.945539,
		-0.128159, 0.937393, -0.323836,
		3.040246, 4.792632, 3.671751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.433157, 4.235986, 3.128751>,  <3.129957, 4.136456, 3.898436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.433157, 4.235986, 3.128751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.436222, 4.554340, 3.370911>,  <3.438061, 4.745353, 3.516207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.436222, 4.554340, 3.370911>,  <3.433157, 4.235986, 3.128751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.436222, 4.554340, 3.370911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983679, 0.102840, -0.147650,
		-0.179771, 0.596650, -0.782107,
		0.007663, 0.795885, 0.605399,
		3.438521, 4.793106, 3.552530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.747790, 4.844464, 2.811162>,  <3.433157, 4.235986, 3.128751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.747790, 4.844464, 2.811162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.785728, 4.842663, 3.209354>,  <3.808492, 4.841582, 3.448270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.785728, 4.842663, 3.209354>,  <3.747790, 4.844464, 2.811162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.785728, 4.842663, 3.209354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991793, 0.086554, -0.094104,
		-0.085739, 0.996237, 0.012677,
		0.094847, -0.004504, 0.995482,
		3.814183, 4.841311, 3.507999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.071496, 5.516574, 2.918603>,  <3.747790, 4.844464, 2.811162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.071496, 5.516574, 2.918603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.159561, 5.212383, 3.162964>,  <4.212400, 5.029869, 3.309581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.159561, 5.212383, 3.162964>,  <4.071496, 5.516574, 2.918603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.159561, 5.212383, 3.162964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975239, 0.185048, -0.121107,
		-0.020947, 0.622439, 0.782388,
		0.220161, -0.760478, 0.610903,
		4.225610, 4.984240, 3.346235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.664101, 5.674823, 3.296889>,  <4.071496, 5.516574, 2.918603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.664101, 5.674823, 3.296889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.681831, 5.281590, 3.225803>,  <4.692470, 5.045650, 3.183152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.681831, 5.281590, 3.225803>,  <4.664101, 5.674823, 3.296889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.681831, 5.281590, 3.225803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969021, 0.085573, -0.231679,
		0.242968, -0.161940, 0.956421,
		0.044325, -0.983083, -0.177715,
		4.695129, 4.986665, 3.172489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.172839, 5.294423, 3.760615>,  <4.664101, 5.674823, 3.296889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.172839, 5.294423, 3.760615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.143919, 5.073727, 3.428265>,  <5.126567, 4.941309, 3.228854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.143919, 5.073727, 3.428265>,  <5.172839, 5.294423, 3.760615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.143919, 5.073727, 3.428265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991393, 0.051409, -0.120405,
		0.109147, -0.832429, 0.543275,
		-0.072299, -0.551741, -0.830876,
		5.122229, 4.908205, 3.179002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.711612, 4.805331, 3.858949>,  <5.172839, 5.294423, 3.760615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.711612, 4.805331, 3.858949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.613651, 4.808838, 3.471146>,  <5.554875, 4.810942, 3.238464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.613651, 4.808838, 3.471146>,  <5.711612, 4.805331, 3.858949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.613651, 4.808838, 3.471146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968091, 0.057002, -0.244028,
		0.053124, -0.998336, -0.022448,
		-0.244902, 0.008768, -0.969508,
		5.540181, 4.811468, 3.180293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.322320, 4.561312, 3.650857>,  <5.711612, 4.805331, 3.858949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.322320, 4.561312, 3.650857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.141706, 4.719597, 3.330975>,  <6.033339, 4.814568, 3.139045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.141706, 4.719597, 3.330975>,  <6.322320, 4.561312, 3.650857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.141706, 4.719597, 3.330975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892157, 0.213472, -0.398102,
		0.013181, -0.893220, -0.449428,
		-0.451533, 0.395713, -0.799706,
		6.006247, 4.838311, 3.091063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.128528, 5.405695, 2.810925> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.968666, 5.396790, 2.444366>,  <1.872749, 5.391446, 2.224432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.968666, 5.396790, 2.444366>,  <2.128528, 5.405695, 2.810925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.968666, 5.396790, 2.444366> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851555, -0.361030, 0.380147,
		-0.339310, 0.932288, 0.125327,
		-0.399654, -0.022265, -0.916396,
		1.848770, 5.390110, 2.169448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.490546, 5.686583, 2.925355>,  <2.128528, 5.405695, 2.810925>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.490546, 5.686583, 2.925355> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.518570, 5.440437, 2.611305>,  <1.535385, 5.292750, 2.422875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.518570, 5.440437, 2.611305>,  <1.490546, 5.686583, 2.925355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.518570, 5.440437, 2.611305> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863525, -0.431450, 0.261104,
		-0.499415, 0.659682, -0.561608,
		0.070060, -0.615362, -0.785125,
		1.539588, 5.255828, 2.375768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.907054, 5.730071, 2.491806>,  <1.490546, 5.686583, 2.925355>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.907054, 5.730071, 2.491806> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.061745, 5.361496, 2.506752>,  <1.154559, 5.140351, 2.515720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.061745, 5.361496, 2.506752>,  <0.907054, 5.730071, 2.491806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.061745, 5.361496, 2.506752> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.905251, -0.371578, 0.206035,
		-0.175963, -0.113505, -0.977831,
		0.386726, -0.921437, 0.037366,
		1.177763, 5.085065, 2.517962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.671035, 5.297498, 1.975183>,  <0.907054, 5.730071, 2.491806>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.671035, 5.297498, 1.975183> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.748634, 5.098778, 2.313545>,  <0.795194, 4.979546, 2.516562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.748634, 5.098778, 2.313545>,  <0.671035, 5.297498, 1.975183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.748634, 5.098778, 2.313545> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.975038, -0.192588, 0.110506,
		0.108011, -0.846227, -0.521760,
		0.193998, -0.496800, 0.845905,
		0.806834, 4.949738, 2.567317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.230472, 4.783035, 1.878339>,  <0.671035, 5.297498, 1.975183>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.230472, 4.783035, 1.878339> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.332237, 4.800430, 2.264786>,  <0.393296, 4.810868, 2.496654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.332237, 4.800430, 2.264786>,  <0.230472, 4.783035, 1.878339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.332237, 4.800430, 2.264786> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.888012, -0.385153, 0.251182,
		0.383027, -0.921827, -0.059370,
		0.254413, 0.043488, 0.966117,
		0.408561, 4.813477, 2.554621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.069357, 4.142434, 2.170662>,  <0.230472, 4.783035, 1.878339>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.069357, 4.142434, 2.170662> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.081573, 4.412682, 2.465309>,  <0.088904, 4.574830, 2.642097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.081573, 4.412682, 2.465309>,  <0.069357, 4.142434, 2.170662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.081573, 4.412682, 2.465309> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.879290, -0.332285, 0.341227,
		0.475307, -0.658122, 0.583917,
		0.030542, 0.675619, 0.736618,
		0.090736, 4.615367, 2.686295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.162395, 3.746578, 2.714530>,  <0.069357, 4.142434, 2.170662>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.162395, 3.746578, 2.714530> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.233124, 4.116089, 2.850395>,  <-0.275561, 4.337795, 2.931914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.233124, 4.116089, 2.850395>,  <-0.162395, 3.746578, 2.714530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.233124, 4.116089, 2.850395> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667278, -0.366197, 0.648568,
		0.723515, -0.111969, 0.681168,
		-0.176822, 0.923777, 0.339663,
		-0.286170, 4.393222, 2.952294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.696476, 3.551511, 3.285819>,  <-0.162395, 3.746578, 2.714530>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.696476, 3.551511, 3.285819> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.741600, 3.947250, 3.249023>,  <-0.768675, 4.184694, 3.226946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.741600, 3.947250, 3.249023>,  <-0.696476, 3.551511, 3.285819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.741600, 3.947250, 3.249023> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.827361, -0.042264, 0.560077,
		0.550224, 0.139291, 0.823317,
		-0.112811, 0.989349, -0.091990,
		-0.775443, 4.244055, 3.221426>
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
