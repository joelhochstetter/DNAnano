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
	<24.042208, 34.894360, 34.740726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.916405, 35.052601, 35.085884>,  <23.840923, 35.147545, 35.292976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.916405, 35.052601, 35.085884>,  <24.042208, 34.894360, 34.740726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.916405, 35.052601, 35.085884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591270, 0.629502, -0.504111,
		-0.742620, -0.668748, 0.035926,
		-0.314508, 0.395605, 0.862891,
		23.822052, 35.171284, 35.344753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.382118, 34.430824, 34.277672>,  <24.042208, 34.894360, 34.740726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.382118, 34.430824, 34.277672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.717005, 34.512009, 34.480797>,  <24.917936, 34.560719, 34.602673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.717005, 34.512009, 34.480797>,  <24.382118, 34.430824, 34.277672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.717005, 34.512009, 34.480797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447889, 0.278331, -0.849663,
		-0.313792, 0.938796, 0.142117,
		0.837215, 0.202965, 0.507815,
		24.968170, 34.572899, 34.633141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.644022, 35.150009, 34.098324>,  <24.382118, 34.430824, 34.277672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.644022, 35.150009, 34.098324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.946848, 34.928093, 34.236343>,  <25.128544, 34.794941, 34.319153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.946848, 34.928093, 34.236343>,  <24.644022, 35.150009, 34.098324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.946848, 34.928093, 34.236343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391836, -0.037041, -0.919289,
		0.522797, 0.831163, 0.189346,
		0.757065, -0.554794, 0.345044,
		25.173967, 34.761654, 34.339855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.307653, 35.453186, 34.192245>,  <24.644022, 35.150009, 34.098324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.307653, 35.453186, 34.192245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.313189, 35.073204, 34.067413>,  <25.316509, 34.845215, 33.992516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.313189, 35.073204, 34.067413>,  <25.307653, 35.453186, 34.192245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.313189, 35.073204, 34.067413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468769, 0.281848, -0.837148,
		0.883212, -0.134709, 0.449210,
		0.013838, -0.949955, -0.312079,
		25.317339, 34.788216, 33.973789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.950788, 35.222561, 33.954426>,  <25.307653, 35.453186, 34.192245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.950788, 35.222561, 33.954426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.656101, 35.054417, 33.742561>,  <25.479288, 34.953529, 33.615444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.656101, 35.054417, 33.742561>,  <25.950788, 35.222561, 33.954426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.656101, 35.054417, 33.742561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282727, 0.520050, -0.805986,
		0.614255, -0.743535, -0.264284,
		-0.736719, -0.420361, -0.529661,
		25.435085, 34.928307, 33.583664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.530540, 34.722324, 34.030334>,  <25.950788, 35.222561, 33.954426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.530540, 34.722324, 34.030334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.837097, 34.973331, 34.085274>,  <27.021030, 35.123936, 34.118237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.837097, 34.973331, 34.085274>,  <26.530540, 34.722324, 34.030334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.837097, 34.973331, 34.085274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236568, -0.076928, -0.968565,
		-0.597229, 0.774790, -0.207408,
		0.766389, 0.627521, 0.137346,
		27.067015, 35.161587, 34.126476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.520630, 35.121880, 33.434093>,  <26.530540, 34.722324, 34.030334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.520630, 35.121880, 33.434093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.888123, 35.164196, 33.586273>,  <27.108618, 35.189587, 33.677582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.888123, 35.164196, 33.586273>,  <26.520630, 35.121880, 33.434093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.888123, 35.164196, 33.586273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394855, -0.235412, -0.888071,
		-0.004385, 0.966121, -0.258051,
		0.918733, 0.105787, 0.380445,
		27.163742, 35.195930, 33.700405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.835762, 35.374485, 32.807957>,  <26.520630, 35.121880, 33.434093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.835762, 35.374485, 32.807957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.132277, 35.259037, 33.050343>,  <27.310186, 35.189766, 33.195774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.132277, 35.259037, 33.050343>,  <26.835762, 35.374485, 32.807957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.132277, 35.259037, 33.050343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508614, -0.347540, -0.787735,
		0.437955, 0.892139, -0.110829,
		0.741287, -0.288624, 0.605962,
		27.354662, 35.172451, 33.232132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.343290, 35.480419, 32.467571>,  <26.835762, 35.374485, 32.807957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.343290, 35.480419, 32.467571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.489189, 35.219288, 32.733135>,  <27.576729, 35.062611, 32.892475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.489189, 35.219288, 32.733135>,  <27.343290, 35.480419, 32.467571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.489189, 35.219288, 32.733135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618080, -0.363516, -0.697018,
		0.696375, 0.664583, 0.270909,
		0.364746, -0.652829, 0.663909,
		27.598614, 35.023438, 32.932308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.158581, 35.442883, 32.445587>,  <27.343290, 35.480419, 32.467571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.158581, 35.442883, 32.445587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.003075, 35.095814, 32.569530>,  <27.909771, 34.887573, 32.643898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.003075, 35.095814, 32.569530>,  <28.158581, 35.442883, 32.445587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.003075, 35.095814, 32.569530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579697, -0.491762, -0.649709,
		0.716110, -0.072958, 0.694165,
		-0.388765, -0.867668, 0.309862,
		27.886446, 34.835514, 32.662491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.714287, 35.079174, 32.522297>,  <28.158581, 35.442883, 32.445587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.714287, 35.079174, 32.522297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.413139, 34.816250, 32.508884>,  <28.232450, 34.658493, 32.500839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.413139, 34.816250, 32.508884>,  <28.714287, 35.079174, 32.522297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.413139, 34.816250, 32.508884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583288, -0.642750, -0.496636,
		0.304895, -0.393459, 0.867311,
		-0.752870, -0.657314, -0.033529,
		28.187279, 34.619057, 32.498825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.102337, 34.510822, 32.456795>,  <28.714287, 35.079174, 32.522297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.102337, 34.510822, 32.456795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.723173, 34.422810, 32.364662>,  <28.495674, 34.370003, 32.309383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.723173, 34.422810, 32.364662>,  <29.102337, 34.510822, 32.456795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.723173, 34.422810, 32.364662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317779, -0.603230, -0.731526,
		0.022019, -0.766614, 0.641730,
		-0.947909, -0.220036, -0.230332,
		28.438801, 34.356800, 32.295563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.134731, 33.810673, 32.507164>,  <29.102337, 34.510822, 32.456795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.134731, 33.810673, 32.507164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.832449, 33.930172, 32.274044>,  <28.651079, 34.001873, 32.134171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.832449, 33.930172, 32.274044>,  <29.134731, 33.810673, 32.507164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.832449, 33.930172, 32.274044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255932, -0.684411, -0.682701,
		-0.602828, -0.665080, 0.440757,
		-0.755710, 0.298747, -0.582798,
		28.605736, 34.019798, 32.099205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.876665, 33.180363, 32.297684>,  <29.134731, 33.810673, 32.507164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.876665, 33.180363, 32.297684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.740294, 33.451454, 32.037083>,  <28.658470, 33.614109, 31.880724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.740294, 33.451454, 32.037083>,  <28.876665, 33.180363, 32.297684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.740294, 33.451454, 32.037083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226414, -0.613422, -0.756604,
		-0.912417, -0.405455, 0.055686,
		-0.340928, 0.677731, -0.651498,
		28.638016, 33.654774, 31.841633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.611917, 32.722256, 31.786518>,  <28.876665, 33.180363, 32.297684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.611917, 32.722256, 31.786518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.633717, 33.081890, 31.612772>,  <28.646795, 33.297672, 31.508524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.633717, 33.081890, 31.612772>,  <28.611917, 32.722256, 31.786518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.633717, 33.081890, 31.612772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317892, -0.427998, -0.846027,
		-0.946559, -0.091973, -0.309138,
		0.054499, 0.899087, -0.434363,
		28.650066, 33.351616, 31.482464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.192949, 32.766068, 31.149796>,  <28.611917, 32.722256, 31.786518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.192949, 32.766068, 31.149796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.461195, 33.059155, 31.103487>,  <28.622143, 33.235004, 31.075703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.461195, 33.059155, 31.103487>,  <28.192949, 32.766068, 31.149796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.461195, 33.059155, 31.103487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252079, -0.371873, -0.893402,
		-0.697661, 0.569946, -0.434086,
		0.670616, 0.732715, -0.115770,
		28.662380, 33.278969, 31.068756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.125044, 32.904690, 30.526991>,  <28.192949, 32.766068, 31.149796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.125044, 32.904690, 30.526991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.480566, 33.058006, 30.627478>,  <28.693880, 33.149998, 30.687771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.480566, 33.058006, 30.627478>,  <28.125044, 32.904690, 30.526991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.480566, 33.058006, 30.627478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355657, -0.231190, -0.905571,
		-0.289020, 0.894225, -0.341804,
		0.888806, 0.383293, 0.251218,
		28.747208, 33.172993, 30.702843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.333925, 33.503475, 30.052818>,  <28.125044, 32.904690, 30.526991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.333925, 33.503475, 30.052818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.664803, 33.340622, 30.207737>,  <28.863329, 33.242912, 30.300688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.664803, 33.340622, 30.207737>,  <28.333925, 33.503475, 30.052818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.664803, 33.340622, 30.207737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344155, -0.177770, -0.921930,
		0.444194, 0.895904, -0.006934,
		0.827193, -0.407130, 0.387294,
		28.912960, 33.218483, 30.323925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.883337, 33.931824, 29.743402>,  <28.333925, 33.503475, 30.052818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.883337, 33.931824, 29.743402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.085535, 33.612370, 29.874039>,  <29.206854, 33.420696, 29.952421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.085535, 33.612370, 29.874039>,  <28.883337, 33.931824, 29.743402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.085535, 33.612370, 29.874039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419358, -0.103395, -0.901914,
		0.754066, 0.592871, 0.282647,
		0.505494, -0.798633, 0.326592,
		29.237183, 33.372780, 29.972015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.527922, 34.113491, 29.527954>,  <28.883337, 33.931824, 29.743402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.527922, 34.113491, 29.527954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.529690, 33.716782, 29.579140>,  <29.530750, 33.478756, 29.609852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.529690, 33.716782, 29.579140>,  <29.527922, 34.113491, 29.527954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.529690, 33.716782, 29.579140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504989, -0.108236, -0.856312,
		0.863114, 0.068406, 0.500354,
		0.004421, -0.991769, 0.127965,
		29.531015, 33.419250, 29.617529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.156023, 33.957989, 29.638323>,  <29.527922, 34.113491, 29.527954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.156023, 33.957989, 29.638323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.002207, 33.610744, 29.512774>,  <29.909918, 33.402397, 29.437443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.002207, 33.610744, 29.512774>,  <30.156023, 33.957989, 29.638323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.002207, 33.610744, 29.512774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731103, -0.078822, -0.677699,
		0.563575, -0.490077, 0.664986,
		-0.384540, -0.868108, -0.313875,
		29.886845, 33.350311, 29.418612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.767744, 33.559135, 29.487209>,  <30.156023, 33.957989, 29.638323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.767744, 33.559135, 29.487209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.469343, 33.373081, 29.296579>,  <30.290302, 33.261448, 29.182201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.469343, 33.373081, 29.296579>,  <30.767744, 33.559135, 29.487209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.469343, 33.373081, 29.296579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638319, -0.295470, -0.710807,
		0.189810, -0.834472, 0.517329,
		-0.746003, -0.465139, -0.476576,
		30.245543, 33.233540, 29.153606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.099472, 32.979404, 29.250021>,  <30.767744, 33.559135, 29.487209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.099472, 32.979404, 29.250021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.764654, 32.990940, 29.031469>,  <30.563765, 32.997860, 28.900339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.764654, 32.990940, 29.031469>,  <31.099472, 32.979404, 29.250021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.764654, 32.990940, 29.031469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479862, -0.441058, -0.758420,
		-0.262854, -0.897015, 0.355347,
		-0.837043, 0.028837, -0.546377,
		30.513542, 32.999592, 28.867556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.100569, 32.281204, 28.936327>,  <31.099472, 32.979404, 29.250021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.100569, 32.281204, 28.936327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.902658, 32.572224, 28.746223>,  <30.783913, 32.746834, 28.632162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.902658, 32.572224, 28.746223>,  <31.100569, 32.281204, 28.936327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.902658, 32.572224, 28.746223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448149, -0.254944, -0.856835,
		-0.744554, -0.636926, -0.199911,
		-0.494774, 0.727550, -0.475257,
		30.754227, 32.790489, 28.603645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.173325, 32.061462, 28.205088>,  <31.100569, 32.281204, 28.936327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.173325, 32.061462, 28.205088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.046904, 32.440868, 28.213356>,  <30.971052, 32.668514, 28.218317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.046904, 32.440868, 28.213356>,  <31.173325, 32.061462, 28.205088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.046904, 32.440868, 28.213356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405421, 0.154723, -0.900941,
		-0.857756, -0.276362, -0.433449,
		-0.316051, 0.948517, 0.020671,
		30.952089, 32.725422, 28.219557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.674692, 32.278709, 27.602289>,  <31.173325, 32.061462, 28.205088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.674692, 32.278709, 27.602289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.917879, 32.558216, 27.753073>,  <31.063791, 32.725922, 27.843542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.917879, 32.558216, 27.753073>,  <30.674692, 32.278709, 27.602289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.917879, 32.558216, 27.753073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400069, 0.140483, -0.905654,
		-0.685797, 0.701420, -0.194146,
		0.607969, 0.698767, 0.376959,
		31.100269, 32.767845, 27.866161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.718372, 32.855774, 27.130110>,  <30.674692, 32.278709, 27.602289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.718372, 32.855774, 27.130110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.041866, 32.854774, 27.365377>,  <31.235962, 32.854176, 27.506538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.041866, 32.854774, 27.365377>,  <30.718372, 32.855774, 27.130110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.041866, 32.854774, 27.365377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587976, 0.029317, -0.808347,
		-0.015223, 0.999567, 0.025180,
		0.808735, -0.002500, 0.588167,
		31.284487, 32.854023, 27.541828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.205872, 33.472149, 26.883396>,  <30.718372, 32.855774, 27.130110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.205872, 33.472149, 26.883396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.372458, 33.160694, 27.071136>,  <31.472408, 32.973824, 27.183781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.372458, 33.160694, 27.071136>,  <31.205872, 33.472149, 26.883396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.372458, 33.160694, 27.071136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558385, -0.188343, -0.807919,
		0.717471, 0.598546, 0.356340,
		0.416463, -0.778633, 0.469350,
		31.497396, 32.927105, 27.211941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.993763, 33.480736, 26.944525>,  <31.205872, 33.472149, 26.883396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.993763, 33.480736, 26.944525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.913391, 33.090565, 26.980690>,  <31.865168, 32.856464, 27.002390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.913391, 33.090565, 26.980690>,  <31.993763, 33.480736, 26.944525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.913391, 33.090565, 26.980690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544956, -0.187997, -0.817117,
		0.814033, -0.114910, 0.569338,
		-0.200929, -0.975424, 0.090415,
		31.853113, 32.797935, 27.007814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.663910, 33.008419, 26.928696>,  <31.993763, 33.480736, 26.944525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.663910, 33.008419, 26.928696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.330463, 32.825638, 26.804579>,  <32.130394, 32.715969, 26.730108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.330463, 32.825638, 26.804579>,  <32.663910, 33.008419, 26.928696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.330463, 32.825638, 26.804579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513803, -0.435358, -0.739236,
		0.202706, -0.775667, 0.597704,
		-0.833616, -0.456950, -0.310291,
		32.080379, 32.688553, 26.711491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.132439, 33.382656, 26.519304>,  <32.663910, 33.008419, 26.928696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.132439, 33.382656, 26.519304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.451717, 33.502293, 26.728462>,  <33.643284, 33.574074, 26.853956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.451717, 33.502293, 26.728462>,  <33.132439, 33.382656, 26.519304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.451717, 33.502293, 26.728462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183316, 0.947465, -0.262115,
		-0.573820, 0.113366, 0.811097,
		0.798201, 0.299094, 0.522893,
		33.691177, 33.592022, 26.885330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.147137, 33.859715, 27.140146>,  <33.132439, 33.382656, 26.519304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.147137, 33.859715, 27.140146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.508133, 33.972733, 27.010115>,  <33.724731, 34.040543, 26.932096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.508133, 33.972733, 27.010115>,  <33.147137, 33.859715, 27.140146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.508133, 33.972733, 27.010115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359672, 0.909620, -0.207914,
		0.236952, 0.304563, 0.922548,
		0.902491, 0.282549, -0.325079,
		33.778881, 34.057499, 26.912590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.236164, 34.568069, 27.065586>,  <33.147137, 33.859715, 27.140146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.236164, 34.568069, 27.065586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.589626, 34.515808, 26.885773>,  <33.801704, 34.484451, 26.777885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.589626, 34.515808, 26.885773>,  <33.236164, 34.568069, 27.065586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.589626, 34.515808, 26.885773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046445, 0.931057, -0.361906,
		0.465827, 0.340679, 0.816666,
		0.883656, -0.130656, -0.449534,
		33.854725, 34.476612, 26.750912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.825932, 35.094498, 27.350924>,  <33.236164, 34.568069, 27.065586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.825932, 35.094498, 27.350924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.812950, 35.000931, 26.962236>,  <33.805161, 34.944790, 26.729025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.812950, 35.000931, 26.962236>,  <33.825932, 35.094498, 27.350924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.812950, 35.000931, 26.962236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202457, 0.953611, -0.222794,
		0.978753, 0.189501, -0.078303,
		-0.032451, -0.233913, -0.971716,
		33.803215, 34.930756, 26.670721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.213612, 35.674145, 27.124929>,  <33.825932, 35.094498, 27.350924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.213612, 35.674145, 27.124929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.037170, 35.501148, 26.810383>,  <33.931305, 35.397350, 26.621655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.037170, 35.501148, 26.810383>,  <34.213612, 35.674145, 27.124929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.037170, 35.501148, 26.810383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246230, 0.900918, -0.357376,
		0.863015, 0.035985, -0.503896,
		-0.441108, -0.432495, -0.786366,
		33.904839, 35.371399, 26.574472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.865005, 36.370167, 27.296427>,  <34.213612, 35.674145, 27.124929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.865005, 36.370167, 27.296427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.630039, 36.692772, 27.323193>,  <33.489059, 36.886333, 27.339252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.630039, 36.692772, 27.323193>,  <33.865005, 36.370167, 27.296427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.630039, 36.692772, 27.323193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187027, 0.054841, 0.980823,
		0.787377, 0.588668, -0.183054,
		-0.587417, 0.806513, 0.066916,
		33.453815, 36.934727, 27.343267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.226490, 36.917892, 27.735180>,  <33.865005, 36.370167, 27.296427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.226490, 36.917892, 27.735180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.837624, 36.849762, 27.670818>,  <33.604305, 36.808884, 27.632202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.837624, 36.849762, 27.670818>,  <34.226490, 36.917892, 27.735180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.837624, 36.849762, 27.670818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193168, 0.193928, 0.961810,
		-0.132620, 0.966116, -0.221431,
		-0.972162, -0.170328, -0.160904,
		33.545975, 36.798664, 27.622547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.918854, 37.323986, 28.167870>,  <34.226490, 36.917892, 27.735180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.918854, 37.323986, 28.167870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.635677, 37.050556, 28.096823>,  <33.465771, 36.886497, 28.054195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.635677, 37.050556, 28.096823>,  <33.918854, 37.323986, 28.167870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.635677, 37.050556, 28.096823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353575, 0.125317, 0.926974,
		-0.611398, 0.719042, -0.330411,
		-0.707939, -0.683575, -0.177617,
		33.423294, 36.845482, 28.043537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.275043, 37.587990, 28.425192>,  <33.918854, 37.323986, 28.167870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.275043, 37.587990, 28.425192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.193733, 37.196739, 28.407564>,  <33.144947, 36.961987, 28.396988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.193733, 37.196739, 28.407564>,  <33.275043, 37.587990, 28.425192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.193733, 37.196739, 28.407564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458789, 0.055392, 0.886817,
		-0.864980, 0.200491, -0.460014,
		-0.203280, -0.978128, -0.044070,
		33.132748, 36.903301, 28.394342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.550030, 37.458321, 28.531166>,  <33.275043, 37.587990, 28.425192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.550030, 37.458321, 28.531166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.715298, 37.105003, 28.619780>,  <32.814457, 36.893013, 28.672949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.715298, 37.105003, 28.619780>,  <32.550030, 37.458321, 28.531166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.715298, 37.105003, 28.619780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626566, -0.099201, 0.773029,
		-0.660838, -0.458197, -0.594431,
		0.413167, -0.883298, 0.221535,
		32.839249, 36.840015, 28.686239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.995548, 37.018745, 28.774048>,  <32.550030, 37.458321, 28.531166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.995548, 37.018745, 28.774048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.339447, 36.864937, 28.908493>,  <32.545788, 36.772652, 28.989161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.339447, 36.864937, 28.908493>,  <31.995548, 37.018745, 28.774048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.339447, 36.864937, 28.908493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446777, -0.247430, 0.859749,
		-0.247430, -0.889336, -0.384524,
		-0.859749, 0.384524, -0.336113,
		32.597370, 36.749580, 29.009327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.798235, 36.408543, 29.017143>,  <31.995548, 37.018745, 28.774048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.798235, 36.408543, 29.017143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.151581, 36.464252, 29.196148>,  <32.363590, 36.497681, 29.303551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.151581, 36.464252, 29.196148>,  <31.798235, 36.408543, 29.017143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.151581, 36.464252, 29.196148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421346, -0.182168, 0.888416,
		0.205258, -0.973353, -0.102237,
		0.883367, 0.139277, 0.447510,
		32.416592, 36.506035, 29.330400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.768448, 35.865730, 29.471014>,  <31.798235, 36.408543, 29.017143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.768448, 35.865730, 29.471014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.053043, 36.104504, 29.619310>,  <32.223801, 36.247768, 29.708288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.053043, 36.104504, 29.619310>,  <31.768448, 35.865730, 29.471014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.053043, 36.104504, 29.619310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311217, -0.205343, 0.927889,
		0.630020, -0.775565, 0.039678,
		0.711490, 0.596937, 0.370739,
		32.266491, 36.283585, 29.730532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.289318, 35.511181, 29.956360>,  <31.768448, 35.865730, 29.471014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.289318, 35.511181, 29.956360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.270889, 35.900269, 30.047300>,  <32.259830, 36.133720, 30.101864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.270889, 35.900269, 30.047300>,  <32.289318, 35.511181, 29.956360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.270889, 35.900269, 30.047300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115606, -0.231255, 0.966000,
		0.992226, 0.018226, 0.123108,
		-0.046075, 0.972722, 0.227350,
		32.257069, 36.192085, 30.115505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.640011, 35.570835, 30.625551>,  <32.289318, 35.511181, 29.956360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.640011, 35.570835, 30.625551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.433460, 35.912834, 30.606241>,  <32.309528, 36.118034, 30.594656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.433460, 35.912834, 30.606241>,  <32.640011, 35.570835, 30.625551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.433460, 35.912834, 30.606241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137643, -0.027226, 0.990108,
		0.845227, 0.517914, 0.131744,
		-0.516378, 0.854999, -0.048276,
		32.278545, 36.169334, 30.591759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.830898, 35.888195, 31.249754>,  <32.640011, 35.570835, 30.625551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.830898, 35.888195, 31.249754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.498131, 36.074970, 31.129831>,  <32.298470, 36.187035, 31.057878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.498131, 36.074970, 31.129831>,  <32.830898, 35.888195, 31.249754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.498131, 36.074970, 31.129831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364474, -0.052407, 0.929738,
		0.418419, 0.882735, 0.213786,
		-0.831916, 0.466939, -0.299806,
		32.248554, 36.215054, 31.039890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.680065, 36.437462, 31.791714>,  <32.830898, 35.888195, 31.249754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.680065, 36.437462, 31.791714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.346661, 36.389130, 31.576061>,  <32.146618, 36.360130, 31.446669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.346661, 36.389130, 31.576061>,  <32.680065, 36.437462, 31.791714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.346661, 36.389130, 31.576061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548779, 0.067888, 0.833206,
		-0.064078, 0.990348, -0.122896,
		-0.833508, -0.120833, -0.539132,
		32.096607, 36.352879, 31.414322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.258385, 37.045219, 32.006950>,  <32.680065, 36.437462, 31.791714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.258385, 37.045219, 32.006950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.018833, 36.755775, 31.869705>,  <31.875101, 36.582108, 31.787357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.018833, 36.755775, 31.869705>,  <32.258385, 37.045219, 32.006950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.018833, 36.755775, 31.869705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706402, 0.275478, 0.652003,
		-0.377275, 0.632851, -0.676138,
		-0.598882, -0.723610, -0.343116,
		31.839169, 36.538692, 31.766769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.523827, 37.344341, 31.954357>,  <32.258385, 37.045219, 32.006950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.523827, 37.344341, 31.954357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.488672, 36.946030, 31.943707>,  <31.467579, 36.707043, 31.937317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.488672, 36.946030, 31.943707>,  <31.523827, 37.344341, 31.954357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.488672, 36.946030, 31.943707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579374, 0.029355, 0.814533,
		-0.810309, 0.087015, -0.579506,
		-0.087888, -0.995774, -0.026627,
		31.462305, 36.647297, 31.935719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.800005, 37.142166, 32.096073>,  <31.523827, 37.344341, 31.954357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.800005, 37.142166, 32.096073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.942482, 36.774418, 32.162865>,  <31.027969, 36.553768, 32.202938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.942482, 36.774418, 32.162865>,  <30.800005, 37.142166, 32.096073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.942482, 36.774418, 32.162865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606295, -0.091423, 0.789967,
		-0.711008, -0.382619, -0.589975,
		0.356194, -0.919371, 0.166977,
		31.049339, 36.498608, 32.212959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.199181, 36.754971, 32.258171>,  <30.800005, 37.142166, 32.096073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.199181, 36.754971, 32.258171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.512623, 36.556210, 32.407330>,  <30.700687, 36.436954, 32.496822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.512623, 36.556210, 32.407330>,  <30.199181, 36.754971, 32.258171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.512623, 36.556210, 32.407330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495545, -0.137922, 0.857562,
		-0.374698, -0.856774, -0.354316,
		0.783605, -0.496906, 0.372891,
		30.747705, 36.407139, 32.519196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.915514, 36.042706, 32.436855>,  <30.199181, 36.754971, 32.258171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.915514, 36.042706, 32.436855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.254200, 36.098560, 32.642216>,  <30.457411, 36.132072, 32.765430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.254200, 36.098560, 32.642216>,  <29.915514, 36.042706, 32.436855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.254200, 36.098560, 32.642216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499539, -0.123483, 0.857445,
		0.183129, -0.982473, -0.034799,
		0.846714, 0.139640, 0.513397,
		30.508215, 36.140453, 32.796234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.019901, 35.481281, 32.960159>,  <29.915514, 36.042706, 32.436855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.019901, 35.481281, 32.960159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.273417, 35.752743, 33.108616>,  <30.425526, 35.915619, 33.197689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.273417, 35.752743, 33.108616>,  <30.019901, 35.481281, 32.960159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.273417, 35.752743, 33.108616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502306, -0.003780, 0.864682,
		0.588218, -0.734453, 0.338494,
		0.633788, 0.678650, 0.371143,
		30.463552, 35.956337, 33.219959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.044050, 35.220188, 33.628788>,  <30.019901, 35.481281, 32.960159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.044050, 35.220188, 33.628788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.143185, 35.607471, 33.615238>,  <30.202665, 35.839844, 33.607109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.143185, 35.607471, 33.615238>,  <30.044050, 35.220188, 33.628788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.143185, 35.607471, 33.615238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378728, 0.129007, 0.916473,
		0.891708, -0.214305, 0.398660,
		0.247835, 0.968210, -0.033873,
		30.217535, 35.897934, 33.605076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.444098, 35.331470, 34.227314>,  <30.044050, 35.220188, 33.628788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.444098, 35.331470, 34.227314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.307920, 35.689297, 34.111481>,  <30.226215, 35.903992, 34.041981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.307920, 35.689297, 34.111481>,  <30.444098, 35.331470, 34.227314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.307920, 35.689297, 34.111481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360194, 0.160409, 0.918983,
		0.868539, 0.417165, 0.267607,
		-0.340441, 0.894563, -0.289582,
		30.205788, 35.957664, 34.024605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.599669, 35.796265, 34.796165>,  <30.444098, 35.331470, 34.227314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.599669, 35.796265, 34.796165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.325226, 36.000210, 34.588589>,  <30.160561, 36.122578, 34.464043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.325226, 36.000210, 34.588589>,  <30.599669, 35.796265, 34.796165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.325226, 36.000210, 34.588589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407891, 0.321055, 0.854721,
		0.602399, 0.798100, -0.012309,
		-0.686105, 0.509863, -0.518941,
		30.119394, 36.153168, 34.432907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.454334, 36.429092, 35.083076>,  <30.599669, 35.796265, 34.796165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.454334, 36.429092, 35.083076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.121855, 36.371792, 34.868195>,  <29.922367, 36.337414, 34.739265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.121855, 36.371792, 34.868195>,  <30.454334, 36.429092, 35.083076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.121855, 36.371792, 34.868195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554895, 0.273891, 0.785541,
		0.034608, 0.951033, -0.307145,
		-0.831200, -0.143247, -0.537203,
		29.872496, 36.328819, 34.707035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.060255, 37.050705, 35.009178>,  <30.454334, 36.429092, 35.083076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.060255, 37.050705, 35.009178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.819609, 36.731327, 34.999912>,  <29.675220, 36.539700, 34.994354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.819609, 36.731327, 34.999912>,  <30.060255, 37.050705, 35.009178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.819609, 36.731327, 34.999912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531351, 0.378373, 0.757958,
		-0.596425, 0.468310, -0.651892,
		-0.601618, -0.798448, -0.023166,
		29.639124, 36.491791, 34.992962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.637632, 37.512783, 35.364536>,  <30.060255, 37.050705, 35.009178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.637632, 37.512783, 35.364536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.786892, 37.483547, 34.994583>,  <30.876448, 37.466007, 34.772610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.786892, 37.483547, 34.994583>,  <30.637632, 37.512783, 35.364536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.786892, 37.483547, 34.994583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511421, 0.815552, -0.270784,
		0.774085, 0.574050, 0.266944,
		0.373150, -0.073089, -0.924888,
		30.898836, 37.461620, 34.717117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.904196, 38.055679, 34.886875>,  <30.637632, 37.512783, 35.364536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.904196, 38.055679, 34.886875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.727213, 37.833920, 34.604919>,  <30.621023, 37.700863, 34.435745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.727213, 37.833920, 34.604919>,  <30.904196, 38.055679, 34.886875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.727213, 37.833920, 34.604919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564518, 0.782925, -0.261434,
		0.696815, 0.282249, -0.659381,
		-0.442457, -0.554404, -0.704889,
		30.594477, 37.667599, 34.393452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.541780, 38.009041, 34.508808>,  <30.904196, 38.055679, 34.886875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.541780, 38.009041, 34.508808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.240089, 38.271667, 34.505894>,  <31.059074, 38.429245, 34.504147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.240089, 38.271667, 34.505894>,  <31.541780, 38.009041, 34.508808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.240089, 38.271667, 34.505894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247549, 0.294612, 0.922997,
		0.608160, 0.694347, -0.384739,
		-0.754229, 0.656571, -0.007286,
		31.013821, 38.468639, 34.503708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.750967, 38.834171, 34.431202>,  <31.541780, 38.009041, 34.508808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.750967, 38.834171, 34.431202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.429276, 38.746830, 34.652302>,  <31.236259, 38.694424, 34.784962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.429276, 38.746830, 34.652302>,  <31.750967, 38.834171, 34.431202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.429276, 38.746830, 34.652302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475995, 0.320253, 0.819065,
		-0.355868, 0.921823, -0.153621,
		-0.804230, -0.218356, 0.552751,
		31.188005, 38.681324, 34.818127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.480585, 39.383114, 34.992825>,  <31.750967, 38.834171, 34.431202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.480585, 39.383114, 34.992825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.349525, 39.024681, 35.112617>,  <31.270889, 38.809620, 35.184494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.349525, 39.024681, 35.112617>,  <31.480585, 39.383114, 34.992825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.349525, 39.024681, 35.112617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426145, 0.142739, 0.893323,
		-0.843237, 0.420316, 0.335092,
		-0.327647, -0.896080, 0.299478,
		31.251232, 38.755856, 35.202461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.974619, 39.427673, 35.595547>,  <31.480585, 39.383114, 34.992825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.974619, 39.427673, 35.595547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.202829, 39.099163, 35.594067>,  <31.339756, 38.902058, 35.593178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.202829, 39.099163, 35.594067>,  <30.974619, 39.427673, 35.595547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.202829, 39.099163, 35.594067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372472, 0.254732, 0.892399,
		-0.731961, -0.510513, 0.451231,
		0.570524, -0.821273, -0.003698,
		31.373987, 38.852783, 35.592957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.969805, 39.232845, 36.212662>,  <30.974619, 39.427673, 35.595547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.969805, 39.232845, 36.212662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.266140, 38.995884, 36.086033>,  <31.443941, 38.853706, 36.010056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.266140, 38.995884, 36.086033>,  <30.969805, 39.232845, 36.212662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.266140, 38.995884, 36.086033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406771, 0.020648, 0.913297,
		-0.534503, -0.805377, 0.256269,
		0.740840, -0.592403, -0.316568,
		31.488392, 38.818165, 35.991062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.928104, 38.536118, 36.620659>,  <30.969805, 39.232845, 36.212662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.928104, 38.536118, 36.620659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.296968, 38.596146, 36.478054>,  <31.518288, 38.632160, 36.392490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.296968, 38.596146, 36.478054>,  <30.928104, 38.536118, 36.620659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.296968, 38.596146, 36.478054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356670, 0.026759, 0.933847,
		0.149680, -0.988313, -0.028849,
		0.922161, 0.150068, -0.356507,
		31.573618, 38.641167, 36.371101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.384315, 37.918812, 36.844700>,  <30.928104, 38.536118, 36.620659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.384315, 37.918812, 36.844700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.627560, 38.217438, 36.736744>,  <31.773506, 38.396614, 36.671970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.627560, 38.217438, 36.736744>,  <31.384315, 37.918812, 36.844700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.627560, 38.217438, 36.736744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469911, -0.064506, 0.880353,
		0.639832, -0.662177, -0.390047,
		0.608110, 0.746566, -0.269892,
		31.809992, 38.441406, 36.655777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.961765, 37.824909, 37.193974>,  <31.384315, 37.918812, 36.844700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.961765, 37.824909, 37.193974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.985235, 38.215366, 37.110355>,  <31.999317, 38.449642, 37.060184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.985235, 38.215366, 37.110355>,  <31.961765, 37.824909, 37.193974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.985235, 38.215366, 37.110355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548812, 0.143380, 0.823558,
		0.833884, -0.163051, -0.527306,
		0.058677, 0.976144, -0.209047,
		32.002838, 38.508209, 37.047642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.566338, 38.060242, 37.364101>,  <31.961765, 37.824909, 37.193974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.566338, 38.060242, 37.364101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.369392, 38.407784, 37.384789>,  <32.251225, 38.616306, 37.397202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.369392, 38.407784, 37.384789>,  <32.566338, 38.060242, 37.364101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.369392, 38.407784, 37.384789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347658, 0.141839, 0.926831,
		0.797943, 0.474319, -0.371900,
		-0.492363, 0.868852, 0.051721,
		32.221684, 38.668438, 37.400307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.072723, 38.642788, 37.555161>,  <32.566338, 38.060242, 37.364101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.072723, 38.642788, 37.555161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.713238, 38.794949, 37.642433>,  <32.497547, 38.886246, 37.694798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.713238, 38.794949, 37.642433>,  <33.072723, 38.642788, 37.555161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.713238, 38.794949, 37.642433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360025, 0.355953, 0.862369,
		0.250382, 0.853577, -0.456854,
		-0.898716, 0.380401, 0.218184,
		32.443623, 38.909069, 37.707890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.199661, 39.155865, 38.045990>,  <33.072723, 38.642788, 37.555161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.199661, 39.155865, 38.045990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.806538, 39.121044, 38.111122>,  <32.570663, 39.100151, 38.150200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.806538, 39.121044, 38.111122>,  <33.199661, 39.155865, 38.045990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.806538, 39.121044, 38.111122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138177, 0.238182, 0.961341,
		-0.122470, 0.967311, -0.222058,
		-0.982806, -0.087052, 0.162830,
		32.511696, 39.094929, 38.159969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.926746, 39.837154, 38.308651>,  <33.199661, 39.155865, 38.045990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.926746, 39.837154, 38.308651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.650761, 39.566914, 38.412579>,  <32.485168, 39.404770, 38.474934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.650761, 39.566914, 38.412579>,  <32.926746, 39.837154, 38.308651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.650761, 39.566914, 38.412579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030297, 0.331675, 0.942907,
		-0.723209, 0.658444, -0.208376,
		-0.689965, -0.675606, 0.259819,
		32.443771, 39.364231, 38.490524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.306026, 40.191853, 38.564667>,  <32.926746, 39.837154, 38.308651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.306026, 40.191853, 38.564667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.343376, 39.832340, 38.736000>,  <32.365788, 39.616631, 38.838799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.343376, 39.832340, 38.736000>,  <32.306026, 40.191853, 38.564667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.343376, 39.832340, 38.736000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031531, 0.427328, 0.903546,
		-0.995131, -0.097876, 0.011563,
		0.093377, -0.898783, 0.428334,
		32.371387, 39.562706, 38.864502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.028461, 40.382057, 39.191620>,  <32.306026, 40.191853, 38.564667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.028461, 40.382057, 39.191620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.175701, 40.013161, 39.238892>,  <32.264046, 39.791821, 39.267254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.175701, 40.013161, 39.238892>,  <32.028461, 40.382057, 39.191620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.175701, 40.013161, 39.238892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023908, 0.136453, 0.990358,
		-0.929479, -0.361725, 0.072277,
		0.368100, -0.922245, 0.118183,
		32.286133, 39.736488, 39.274345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.495682, 39.933102, 39.591225>,  <32.028461, 40.382057, 39.191620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.495682, 39.933102, 39.591225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.845514, 39.748287, 39.650047>,  <32.055412, 39.637398, 39.685341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.845514, 39.748287, 39.650047>,  <31.495682, 39.933102, 39.591225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.845514, 39.748287, 39.650047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089534, 0.144186, 0.985492,
		-0.476539, -0.875060, 0.084735,
		0.874582, -0.462039, 0.147058,
		32.107887, 39.609676, 39.694164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.328007, 39.300304, 40.077171>,  <31.495682, 39.933102, 39.591225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.328007, 39.300304, 40.077171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.716223, 39.390911, 40.110020>,  <31.949152, 39.445274, 40.129730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.716223, 39.390911, 40.110020>,  <31.328007, 39.300304, 40.077171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.716223, 39.390911, 40.110020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046531, -0.158215, 0.986308,
		0.236405, -0.961072, -0.143014,
		0.970540, 0.226513, 0.082123,
		32.007385, 39.458866, 40.134655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.542273, 38.737072, 40.439133>,  <31.328007, 39.300304, 40.077171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.542273, 38.737072, 40.439133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.815279, 39.022362, 40.502983>,  <31.979082, 39.193535, 40.541294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.815279, 39.022362, 40.502983>,  <31.542273, 38.737072, 40.439133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.815279, 39.022362, 40.502983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092601, -0.301037, 0.949106,
		0.724981, -0.632998, -0.271508,
		0.682516, 0.713225, 0.159630,
		32.020035, 39.236328, 40.550873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.967268, 38.368385, 40.877068>,  <31.542273, 38.737072, 40.439133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.967268, 38.368385, 40.877068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.086811, 38.747910, 40.917957>,  <32.158539, 38.975624, 40.942490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.086811, 38.747910, 40.917957>,  <31.967268, 38.368385, 40.877068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.086811, 38.747910, 40.917957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203050, -0.167887, 0.964668,
		0.932445, -0.267543, -0.242830,
		0.298858, 0.948807, 0.102221,
		32.176468, 39.032551, 40.948624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.617092, 38.370083, 41.202793>,  <31.967268, 38.368385, 40.877068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.617092, 38.370083, 41.202793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.460464, 38.729343, 41.282791>,  <32.366486, 38.944901, 41.330788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.460464, 38.729343, 41.282791>,  <32.617092, 38.370083, 41.202793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.460464, 38.729343, 41.282791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029037, -0.205178, 0.978294,
		0.919689, 0.388879, 0.054262,
		-0.391571, 0.898151, 0.199992,
		32.342995, 38.998787, 41.342789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.033287, 38.621296, 41.716831>,  <32.617092, 38.370083, 41.202793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.033287, 38.621296, 41.716831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.703808, 38.845173, 41.753201>,  <32.506123, 38.979500, 41.775021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.703808, 38.845173, 41.753201>,  <33.033287, 38.621296, 41.716831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.703808, 38.845173, 41.753201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120000, 0.015341, 0.992655,
		0.554191, 0.828555, -0.079799,
		-0.823694, 0.559697, 0.090925,
		32.456699, 39.013081, 41.780479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.273499, 38.983963, 42.308182>,  <33.033287, 38.621296, 41.716831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.273499, 38.983963, 42.308182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.882626, 39.053314, 42.259090>,  <32.648102, 39.094925, 42.229637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.882626, 39.053314, 42.259090>,  <33.273499, 38.983963, 42.308182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.882626, 39.053314, 42.259090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125432, -0.004710, 0.992091,
		0.171433, 0.984843, 0.026350,
		-0.977178, 0.173382, -0.122724,
		32.589474, 39.105328, 42.222275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.102566, 39.597591, 42.812778>,  <33.273499, 38.983963, 42.308182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.102566, 39.597591, 42.812778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.770287, 39.393082, 42.724651>,  <32.570919, 39.270374, 42.671776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.770287, 39.393082, 42.724651>,  <33.102566, 39.597591, 42.812778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.770287, 39.393082, 42.724651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298016, 0.074113, 0.951679,
		-0.470243, 0.856215, -0.213934,
		-0.830697, -0.511277, -0.220315,
		32.521076, 39.239700, 42.658558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.618927, 39.962883, 43.149788>,  <33.102566, 39.597591, 42.812778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.618927, 39.962883, 43.149788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.463432, 39.599957, 43.085720>,  <32.370136, 39.382198, 43.047279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.463432, 39.599957, 43.085720>,  <32.618927, 39.962883, 43.149788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.463432, 39.599957, 43.085720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435188, 0.027595, 0.899916,
		-0.812091, 0.419536, -0.405582,
		-0.388740, -0.907319, -0.160167,
		32.346809, 39.327763, 43.037670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.853477, 39.934185, 43.142307>,  <32.618927, 39.962883, 43.149788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.853477, 39.934185, 43.142307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.942472, 39.551918, 43.219463>,  <31.995869, 39.322559, 43.265755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.942472, 39.551918, 43.219463>,  <31.853477, 39.934185, 43.142307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.942472, 39.551918, 43.219463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588753, 0.025997, 0.807894,
		-0.777091, -0.293308, -0.556867,
		0.222485, -0.955665, 0.192888,
		32.009216, 39.265217, 43.277328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.287703, 39.561844, 43.444511>,  <31.853477, 39.934185, 43.142307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.287703, 39.561844, 43.444511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.598480, 39.333027, 43.549683>,  <31.784946, 39.195736, 43.612785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.598480, 39.333027, 43.549683>,  <31.287703, 39.561844, 43.444511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.598480, 39.333027, 43.549683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319802, 0.001140, 0.947484,
		-0.542298, -0.820225, -0.182054,
		0.776942, -0.572040, 0.262928,
		31.831562, 39.161415, 43.628559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.081064, 39.070755, 43.921867>,  <31.287703, 39.561844, 43.444511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.081064, 39.070755, 43.921867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.477739, 39.091190, 43.969105>,  <31.715744, 39.103451, 43.997448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.477739, 39.091190, 43.969105>,  <31.081064, 39.070755, 43.921867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.477739, 39.091190, 43.969105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125181, 0.170734, 0.977333,
		0.029766, -0.983992, 0.175710,
		0.991687, 0.051086, 0.118095,
		31.775246, 39.106518, 44.004532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.156775, 38.550598, 44.431023>,  <31.081064, 39.070755, 43.921867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.156775, 38.550598, 44.431023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.520103, 38.716381, 44.453556>,  <31.738100, 38.815849, 44.467075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.520103, 38.716381, 44.453556>,  <31.156775, 38.550598, 44.431023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.520103, 38.716381, 44.453556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100087, 0.084596, 0.991376,
		0.406119, -0.906127, 0.118322,
		0.908322, 0.414459, 0.056336,
		31.792601, 38.840717, 44.470455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.566204, 38.217613, 44.946682>,  <31.156775, 38.550598, 44.431023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.566204, 38.217613, 44.946682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.720688, 38.584991, 44.912514>,  <31.813377, 38.805420, 44.892014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.720688, 38.584991, 44.912514>,  <31.566204, 38.217613, 44.946682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.720688, 38.584991, 44.912514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052996, 0.114542, 0.992004,
		0.920888, -0.378593, 0.092911,
		0.386208, 0.918449, -0.085416,
		31.836550, 38.860527, 44.886890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.104107, 38.200840, 45.354694>,  <31.566204, 38.217613, 44.946682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.104107, 38.200840, 45.354694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.999218, 38.586281, 45.333847>,  <31.936283, 38.817543, 45.321339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.999218, 38.586281, 45.333847>,  <32.104107, 38.200840, 45.354694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.999218, 38.586281, 45.333847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155960, 0.010984, 0.987702,
		0.952320, 0.267130, 0.147403,
		-0.262226, 0.963598, -0.052122,
		31.920549, 38.875359, 45.318211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.431969, 38.415043, 45.887573>,  <32.104107, 38.200840, 45.354694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.431969, 38.415043, 45.887573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.187851, 38.719486, 45.799706>,  <32.041382, 38.902153, 45.746986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.187851, 38.719486, 45.799706>,  <32.431969, 38.415043, 45.887573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.187851, 38.719486, 45.799706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172191, 0.143215, 0.974597,
		0.773235, 0.632615, 0.043653,
		-0.610293, 0.761109, -0.219669,
		32.004765, 38.947819, 45.733803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.584400, 38.799004, 46.351070>,  <32.431969, 38.415043, 45.887573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.584400, 38.799004, 46.351070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.249241, 38.978203, 46.226341>,  <32.048145, 39.085720, 46.151505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.249241, 38.978203, 46.226341>,  <32.584400, 38.799004, 46.351070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.249241, 38.978203, 46.226341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244721, 0.202307, 0.948253,
		0.487896, 0.870846, -0.059878,
		-0.837896, 0.447995, -0.311819,
		31.997871, 39.112602, 46.132797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.678425, 39.337933, 46.793583>,  <32.584400, 38.799004, 46.351070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.678425, 39.337933, 46.793583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.308208, 39.356358, 46.643253>,  <32.086079, 39.367413, 46.553055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.308208, 39.356358, 46.643253>,  <32.678425, 39.337933, 46.793583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.308208, 39.356358, 46.643253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368069, 0.123417, 0.921571,
		0.088836, 0.991285, -0.097272,
		-0.925545, 0.046066, -0.375825,
		32.030544, 39.370178, 46.530506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.180817, 40.016029, 46.897072>,  <32.678425, 39.337933, 46.793583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.180817, 40.016029, 46.897072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.956758, 39.685223, 46.877991>,  <31.822323, 39.486740, 46.866543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.956758, 39.685223, 46.877991>,  <32.180817, 40.016029, 46.897072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.956758, 39.685223, 46.877991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288719, 0.140925, 0.946985,
		-0.776451, 0.544226, -0.317714,
		-0.560148, -0.827018, -0.047707,
		31.788713, 39.437119, 46.863678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.564634, 40.243179, 47.220001>,  <32.180817, 40.016029, 46.897072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.564634, 40.243179, 47.220001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.535227, 39.844402, 47.230530>,  <31.517582, 39.605137, 47.236847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.535227, 39.844402, 47.230530>,  <31.564634, 40.243179, 47.220001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.535227, 39.844402, 47.230530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271472, 0.045404, 0.961375,
		-0.959634, 0.063532, -0.273981,
		-0.073518, -0.996947, 0.026324,
		31.513172, 39.545319, 47.238426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.009415, 40.032188, 47.666874>,  <31.564634, 40.243179, 47.220001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.009415, 40.032188, 47.666874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.188997, 39.675060, 47.652370>,  <31.296747, 39.460785, 47.643669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.188997, 39.675060, 47.652370>,  <31.009415, 40.032188, 47.666874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.188997, 39.675060, 47.652370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199305, -0.139607, 0.969942,
		-0.871044, -0.428234, -0.240620,
		0.448955, -0.892819, -0.036254,
		31.323685, 39.407215, 47.641495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.523207, 39.508347, 47.733688>,  <31.009415, 40.032188, 47.666874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.523207, 39.508347, 47.733688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.876070, 39.365437, 47.856422>,  <31.087788, 39.279690, 47.930061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.876070, 39.365437, 47.856422>,  <30.523207, 39.508347, 47.733688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.876070, 39.365437, 47.856422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379061, -0.152020, 0.912799,
		-0.279474, -0.921545, -0.269535,
		0.882160, -0.357274, 0.306836,
		31.140718, 39.258255, 47.948475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.353237, 39.253757, 48.290314>,  <30.523207, 39.508347, 47.733688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.353237, 39.253757, 48.290314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.747601, 39.224190, 48.350346>,  <30.984219, 39.206448, 48.386364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.747601, 39.224190, 48.350346>,  <30.353237, 39.253757, 48.290314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.747601, 39.224190, 48.350346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165441, -0.297482, 0.940284,
		-0.024861, -0.951862, -0.305519,
		0.985907, -0.073921, 0.150082,
		31.043373, 39.202011, 48.395370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.560360, 38.553104, 48.500900>,  <30.353237, 39.253757, 48.290314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.560360, 38.553104, 48.500900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.804850, 38.823689, 48.665245>,  <30.951544, 38.986038, 48.763851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.804850, 38.823689, 48.665245>,  <30.560360, 38.553104, 48.500900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.804850, 38.823689, 48.665245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216349, -0.356544, 0.908884,
		0.761314, -0.644421, -0.071577,
		0.611224, 0.676460, 0.410862,
		30.988216, 39.026627, 48.788502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.607471, 38.118263, 48.952328>,  <30.560360, 38.553104, 48.500900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.607471, 38.118263, 48.952328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.751322, 38.480721, 49.041393>,  <30.837633, 38.698193, 49.094833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.751322, 38.480721, 49.041393>,  <30.607471, 38.118263, 48.952328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.751322, 38.480721, 49.041393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196962, -0.159533, 0.967344,
		0.912071, -0.391739, 0.121102,
		0.359627, 0.906140, 0.222663,
		30.859209, 38.752563, 49.108192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.188251, 38.079002, 49.426151>,  <30.607471, 38.118263, 48.952328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.188251, 38.079002, 49.426151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.993189, 38.426952, 49.455833>,  <30.876150, 38.635723, 49.473644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.993189, 38.426952, 49.455833>,  <31.188251, 38.079002, 49.426151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.993189, 38.426952, 49.455833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270682, -0.231458, 0.934430,
		0.830012, 0.435597, 0.348332,
		-0.487659, 0.869875, 0.074205,
		30.846891, 38.687916, 49.478096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.442108, 38.366146, 49.906975>,  <31.188251, 38.079002, 49.426151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.442108, 38.366146, 49.906975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.098433, 38.567913, 49.872681>,  <30.892227, 38.688972, 49.852104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.098433, 38.567913, 49.872681>,  <31.442108, 38.366146, 49.906975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.098433, 38.567913, 49.872681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172314, -0.127496, 0.976756,
		0.481766, 0.853993, 0.196462,
		-0.859191, 0.504421, -0.085732,
		30.840675, 38.719238, 49.846962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.379150, 38.535789, 50.551640>,  <31.442108, 38.366146, 49.906975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.379150, 38.535789, 50.551640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.019688, 38.622692, 50.399208>,  <30.804010, 38.674835, 50.307751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.019688, 38.622692, 50.399208>,  <31.379150, 38.535789, 50.551640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.019688, 38.622692, 50.399208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407937, -0.094533, 0.908103,
		0.161266, 0.971527, 0.173579,
		-0.898655, 0.217255, -0.381077,
		30.750092, 38.687870, 50.284885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.117304, 39.060101, 50.917355>,  <31.379150, 38.535789, 50.551640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.117304, 39.060101, 50.917355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.808315, 38.848526, 50.776775>,  <30.622923, 38.721581, 50.692429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.808315, 38.848526, 50.776775>,  <31.117304, 39.060101, 50.917355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.808315, 38.848526, 50.776775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414534, 0.000732, 0.910034,
		-0.481092, 0.848662, -0.219827,
		-0.772472, -0.528936, -0.351447,
		30.576574, 38.689846, 50.671341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.498219, 39.243553, 51.287975>,  <31.117304, 39.060101, 50.917355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.498219, 39.243553, 51.287975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.381834, 38.895645, 51.128555>,  <30.312004, 38.686901, 51.032906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.381834, 38.895645, 51.128555>,  <30.498219, 39.243553, 51.287975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.381834, 38.895645, 51.128555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335264, -0.297464, 0.893931,
		-0.896069, 0.393718, -0.205052,
		-0.290961, -0.869771, -0.398547,
		30.294546, 38.634712, 51.008991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.813673, 39.248703, 51.387283>,  <30.498219, 39.243553, 51.287975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.813673, 39.248703, 51.387283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.900736, 38.859768, 51.353397>,  <29.952974, 38.626408, 51.333065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.900736, 38.859768, 51.353397>,  <29.813673, 39.248703, 51.387283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.900736, 38.859768, 51.353397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452334, -0.177402, 0.874027,
		-0.864882, -0.151918, -0.478436,
		0.217656, -0.972342, -0.084714,
		29.966032, 38.568066, 51.327984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.223335, 38.929726, 51.489338>,  <29.813673, 39.248703, 51.387283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.223335, 38.929726, 51.489338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.517363, 38.675026, 51.582489>,  <29.693779, 38.522205, 51.638378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.517363, 38.675026, 51.582489>,  <29.223335, 38.929726, 51.489338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.517363, 38.675026, 51.582489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444276, -0.192913, 0.874874,
		-0.512149, -0.746551, -0.424695,
		0.735067, -0.636747, 0.232874,
		29.737883, 38.484001, 51.652351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.964382, 38.634075, 52.019859>,  <29.223335, 38.929726, 51.489338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.964382, 38.634075, 52.019859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.349674, 38.526653, 52.016510>,  <29.580849, 38.462200, 52.014500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.349674, 38.526653, 52.016510>,  <28.964382, 38.634075, 52.019859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.349674, 38.526653, 52.016510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130641, -0.495349, 0.858814,
		-0.234783, -0.826141, -0.512219,
		0.963229, -0.268552, -0.008371,
		29.638643, 38.446087, 52.014000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.457306, 38.475876, 52.527336>,  <28.964382, 38.634075, 52.019859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.457306, 38.475876, 52.527336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.401974, 38.308346, 52.886322>,  <28.368774, 38.207829, 53.101715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.401974, 38.308346, 52.886322>,  <28.457306, 38.475876, 52.527336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.401974, 38.308346, 52.886322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646239, 0.724855, 0.238666,
		-0.750493, -0.546962, -0.370935,
		-0.138333, -0.418829, 0.897466,
		28.360474, 38.182697, 53.155563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.792208, 38.265095, 52.627262>,  <28.457306, 38.475876, 52.527336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.792208, 38.265095, 52.627262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.934547, 38.320114, 52.997009>,  <28.019951, 38.353127, 53.218857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.934547, 38.320114, 52.997009>,  <27.792208, 38.265095, 52.627262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.934547, 38.320114, 52.997009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805582, 0.546524, 0.228800,
		-0.473718, -0.826071, 0.305284,
		0.355850, 0.137545, 0.924366,
		28.041302, 38.361378, 53.274319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.949343, 37.468105, 52.385574>,  <27.792208, 38.265095, 52.627262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.949343, 37.468105, 52.385574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.946472, 37.227962, 52.705452>,  <27.944750, 37.083878, 52.897381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.946472, 37.227962, 52.705452>,  <27.949343, 37.468105, 52.385574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.946472, 37.227962, 52.705452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218607, -0.781317, -0.584598,
		0.975787, 0.170625, 0.136849,
		-0.007176, -0.600359, 0.799698,
		27.944319, 37.047855, 52.945362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.574736, 37.030968, 52.271877>,  <27.949343, 37.468105, 52.385574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.574736, 37.030968, 52.271877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.800749, 36.790401, 52.497810>,  <28.936357, 36.646061, 52.633369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.800749, 36.790401, 52.497810>,  <28.574736, 37.030968, 52.271877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.800749, 36.790401, 52.497810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465173, -0.333198, -0.820117,
		0.681433, 0.726139, 0.091495,
		0.565033, -0.601416, 0.564833,
		28.970259, 36.609978, 52.667259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.304214, 36.900433, 52.066380>,  <28.574736, 37.030968, 52.271877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.304214, 36.900433, 52.066380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.205435, 36.584324, 52.290695>,  <29.146166, 36.394657, 52.425285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.205435, 36.584324, 52.290695>,  <29.304214, 36.900433, 52.066380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.205435, 36.584324, 52.290695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578186, -0.584575, -0.569186,
		0.777635, 0.183678, 0.601287,
		-0.246950, -0.790275, 0.560786,
		29.131350, 36.347240, 52.458931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.002748, 36.573566, 52.331978>,  <29.304214, 36.900433, 52.066380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.002748, 36.573566, 52.331978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.682707, 36.338699, 52.282887>,  <29.490683, 36.197777, 52.253433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.682707, 36.338699, 52.282887>,  <30.002748, 36.573566, 52.331978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.682707, 36.338699, 52.282887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536470, -0.608876, -0.584355,
		0.268391, -0.533384, 0.802164,
		-0.800104, -0.587172, -0.122728,
		29.442675, 36.162548, 52.246067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.220406, 35.927929, 52.393661>,  <30.002748, 36.573566, 52.331978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.220406, 35.927929, 52.393661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.894632, 35.922825, 52.161617>,  <29.699167, 35.919762, 52.022388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.894632, 35.922825, 52.161617>,  <30.220406, 35.927929, 52.393661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.894632, 35.922825, 52.161617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489811, -0.551131, -0.675530,
		-0.311097, -0.834321, 0.455111,
		-0.814435, -0.012763, -0.580115,
		29.650301, 35.918995, 51.987583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.017679, 35.207432, 52.222431>,  <30.220406, 35.927929, 52.393661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.017679, 35.207432, 52.222431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.961962, 35.490593, 51.945457>,  <29.928532, 35.660492, 51.779274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.961962, 35.490593, 51.945457>,  <30.017679, 35.207432, 52.222431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.961962, 35.490593, 51.945457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709680, -0.416305, -0.568370,
		-0.690617, -0.570578, -0.444398,
		-0.139295, 0.707906, -0.692435,
		29.920174, 35.702965, 51.737728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.037424, 34.782692, 51.591698>,  <30.017679, 35.207432, 52.222431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.037424, 34.782692, 51.591698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.128841, 35.166267, 51.524517>,  <30.183691, 35.396412, 51.484211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.128841, 35.166267, 51.524517>,  <30.037424, 34.782692, 51.591698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.128841, 35.166267, 51.524517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638836, -0.277899, -0.717399,
		-0.734613, 0.056666, -0.676116,
		0.228544, 0.958938, -0.167948,
		30.197405, 35.453949, 51.474133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.117250, 34.836319, 50.951462>,  <30.037424, 34.782692, 51.591698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.117250, 34.836319, 50.951462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.319025, 35.162743, 51.064308>,  <30.440090, 35.358597, 51.132015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.319025, 35.162743, 51.064308>,  <30.117250, 34.836319, 50.951462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.319025, 35.162743, 51.064308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572812, -0.071797, -0.816536,
		-0.646089, 0.573488, -0.503667,
		0.504435, 0.816062, 0.282114,
		30.470356, 35.407562, 51.148941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.111534, 35.248814, 50.368614>,  <30.117250, 34.836319, 50.951462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.111534, 35.248814, 50.368614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.439348, 35.351856, 50.573360>,  <30.636036, 35.413681, 50.696209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.439348, 35.351856, 50.573360>,  <30.111534, 35.248814, 50.368614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.439348, 35.351856, 50.573360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510566, 0.077299, -0.856357,
		-0.260168, 0.963154, -0.068175,
		0.819534, 0.257605, 0.511864,
		30.685207, 35.429138, 50.726921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.403791, 35.747715, 49.946316>,  <30.111534, 35.248814, 50.368614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.403791, 35.747715, 49.946316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.710928, 35.664104, 50.188545>,  <30.895210, 35.613937, 50.333885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.710928, 35.664104, 50.188545>,  <30.403791, 35.747715, 49.946316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.710928, 35.664104, 50.188545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640406, 0.225017, -0.734335,
		0.017232, 0.951669, 0.306641,
		0.767843, -0.209029, 0.605577,
		30.941280, 35.601395, 50.370220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.963556, 36.177563, 49.695564>,  <30.403791, 35.747715, 49.946316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.963556, 36.177563, 49.695564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.154821, 35.901371, 49.912674>,  <31.269581, 35.735657, 50.042938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.154821, 35.901371, 49.912674>,  <30.963556, 36.177563, 49.695564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.154821, 35.901371, 49.912674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826677, 0.145138, -0.543636,
		0.296592, 0.708644, 0.640201,
		0.478162, -0.690478, 0.542772,
		31.298269, 35.694229, 50.075504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.608364, 36.491043, 49.794659>,  <30.963556, 36.177563, 49.695564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.608364, 36.491043, 49.794659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.629452, 36.094234, 49.840477>,  <31.642105, 35.856152, 49.867970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.629452, 36.094234, 49.840477>,  <31.608364, 36.491043, 49.794659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.629452, 36.094234, 49.840477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792346, -0.028262, -0.609418,
		0.607790, 0.122891, 0.784531,
		0.052720, -0.992018, 0.114550,
		31.645267, 35.796631, 49.874844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.265308, 36.347729, 49.735252>,  <31.608364, 36.491043, 49.794659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.265308, 36.347729, 49.735252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.134441, 35.979588, 49.649548>,  <32.055923, 35.758701, 49.598125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.134441, 35.979588, 49.649548>,  <32.265308, 36.347729, 49.735252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.134441, 35.979588, 49.649548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677360, -0.070305, -0.732284,
		0.658898, -0.384711, 0.646414,
		-0.327164, -0.920356, -0.214264,
		32.036293, 35.703480, 49.585270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.859238, 35.981728, 49.720989>,  <32.265308, 36.347729, 49.735252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.859238, 35.981728, 49.720989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.591640, 35.756176, 49.527294>,  <32.431084, 35.620846, 49.411076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.591640, 35.756176, 49.527294>,  <32.859238, 35.981728, 49.720989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.591640, 35.756176, 49.527294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698273, -0.253568, -0.669416,
		0.254686, -0.785964, 0.563379,
		-0.668992, -0.563883, -0.484237,
		32.390942, 35.587009, 49.382023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.217068, 35.450157, 49.548359>,  <32.859238, 35.981728, 49.720989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.217068, 35.450157, 49.548359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.912800, 35.428135, 49.289642>,  <32.730240, 35.414921, 49.134411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.912800, 35.428135, 49.289642>,  <33.217068, 35.450157, 49.548359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.912800, 35.428135, 49.289642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616942, -0.371209, -0.693965,
		-0.201887, -0.926916, 0.316337,
		-0.760674, -0.055059, -0.646795,
		32.684597, 35.411617, 49.095604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.329147, 34.936840, 49.159081>,  <33.217068, 35.450157, 49.548359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.329147, 34.936840, 49.159081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.056026, 35.110245, 48.923843>,  <32.892155, 35.214287, 48.782703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.056026, 35.110245, 48.923843>,  <33.329147, 34.936840, 49.159081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.056026, 35.110245, 48.923843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472694, -0.351636, -0.808030,
		-0.557082, -0.829712, 0.035181,
		-0.682803, 0.433510, -0.588090,
		32.851185, 35.240295, 48.747417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.177784, 34.474651, 48.691975>,  <33.329147, 34.936840, 49.159081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.177784, 34.474651, 48.691975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.074089, 34.816597, 48.512192>,  <33.011871, 35.021763, 48.404324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.074089, 34.816597, 48.512192>,  <33.177784, 34.474651, 48.691975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.074089, 34.816597, 48.512192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430240, -0.314424, -0.846186,
		-0.864691, -0.412736, -0.286285,
		-0.259237, 0.854861, -0.449455,
		32.996319, 35.073055, 48.377354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.017014, 34.257145, 47.972919>,  <33.177784, 34.474651, 48.691975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.017014, 34.257145, 47.972919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.072308, 34.653259, 47.978893>,  <33.105484, 34.890926, 47.982479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.072308, 34.653259, 47.978893>,  <33.017014, 34.257145, 47.972919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.072308, 34.653259, 47.978893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447558, -0.049004, -0.892911,
		-0.883507, 0.130114, -0.449985,
		0.138231, 0.990287, 0.014938,
		33.113777, 34.950344, 47.983376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.746990, 34.428108, 47.318466>,  <33.017014, 34.257145, 47.972919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.746990, 34.428108, 47.318466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.999832, 34.708313, 47.450970>,  <33.151535, 34.876434, 47.530472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.999832, 34.708313, 47.450970>,  <32.746990, 34.428108, 47.318466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.999832, 34.708313, 47.450970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370025, 0.102730, -0.923324,
		-0.680828, 0.706209, -0.194270,
		0.632103, 0.700511, 0.331257,
		33.189465, 34.918465, 47.550346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.561420, 35.013653, 47.032097>,  <32.746990, 34.428108, 47.318466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.561420, 35.013653, 47.032097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.954121, 35.047466, 47.100231>,  <33.189743, 35.067757, 47.141109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.954121, 35.047466, 47.100231>,  <32.561420, 35.013653, 47.032097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.954121, 35.047466, 47.100231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147435, 0.227301, -0.962599,
		-0.120091, 0.970148, 0.210690,
		0.981754, 0.084536, 0.170331,
		33.248646, 35.072826, 47.151329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.684830, 35.579102, 46.785858>,  <32.561420, 35.013653, 47.032097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.684830, 35.579102, 46.785858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.048660, 35.413071, 46.793560>,  <33.266960, 35.313450, 46.798180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.048660, 35.413071, 46.793560>,  <32.684830, 35.579102, 46.785858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.048660, 35.413071, 46.793560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144433, 0.272380, -0.951288,
		0.389618, 0.868053, 0.307703,
		0.909581, -0.415082, 0.019251,
		33.321533, 35.288548, 46.799335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.020107, 36.054092, 46.393879>,  <32.684830, 35.579102, 46.785858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.020107, 36.054092, 46.393879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.255379, 35.730621, 46.397606>,  <33.396542, 35.536537, 46.399841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.255379, 35.730621, 46.397606>,  <33.020107, 36.054092, 46.393879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.255379, 35.730621, 46.397606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322412, 0.223902, -0.919738,
		0.741688, 0.543971, 0.392422,
		0.588175, -0.808680, 0.009318,
		33.431831, 35.488018, 46.400402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.681103, 36.314384, 46.239414>,  <33.020107, 36.054092, 46.393879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.681103, 36.314384, 46.239414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.706711, 35.922070, 46.165710>,  <33.722076, 35.686680, 46.121490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.706711, 35.922070, 46.165710>,  <33.681103, 36.314384, 46.239414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.706711, 35.922070, 46.165710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478956, 0.192176, -0.856545,
		0.875502, -0.033416, 0.482058,
		0.064018, -0.980791, -0.184255,
		33.725918, 35.627831, 46.110435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.345966, 36.206535, 45.783176>,  <33.681103, 36.314384, 46.239414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.345966, 36.206535, 45.783176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.130798, 35.872646, 45.736046>,  <34.001698, 35.672314, 45.707767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.130798, 35.872646, 45.736046>,  <34.345966, 36.206535, 45.783176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.130798, 35.872646, 45.736046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372661, -0.110092, -0.921414,
		0.756151, -0.539558, 0.370288,
		-0.537922, -0.834720, -0.117826,
		33.969421, 35.622231, 45.700699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.809734, 35.791996, 45.525219>,  <34.345966, 36.206535, 45.783176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.809734, 35.791996, 45.525219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.448437, 35.653831, 45.423363>,  <34.231659, 35.570930, 45.362247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.448437, 35.653831, 45.423363>,  <34.809734, 35.791996, 45.525219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.448437, 35.653831, 45.423363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287489, -0.046507, -0.956654,
		0.318600, -0.937297, 0.141310,
		-0.903241, -0.345415, -0.254645,
		34.177464, 35.550209, 45.346970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.943256, 35.485435, 44.935299>,  <34.809734, 35.791996, 45.525219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.943256, 35.485435, 44.935299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.547020, 35.540024, 44.939323>,  <34.309277, 35.572777, 44.941738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.547020, 35.540024, 44.939323>,  <34.943256, 35.485435, 44.935299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.547020, 35.540024, 44.939323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031432, -0.155382, -0.987354,
		-0.133173, -0.978384, 0.158209,
		-0.990594, 0.136461, 0.010060,
		34.249844, 35.580963, 44.942341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.630287, 34.947208, 44.500500>,  <34.943256, 35.485435, 44.935299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.630287, 34.947208, 44.500500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.368740, 35.246624, 44.544594>,  <34.211811, 35.426273, 44.571049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.368740, 35.246624, 44.544594>,  <34.630287, 34.947208, 44.500500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.368740, 35.246624, 44.544594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006258, 0.140339, -0.990084,
		-0.756584, -0.648072, -0.087078,
		-0.653866, 0.748537, 0.110234,
		34.172581, 35.471184, 44.577663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.192154, 34.873920, 43.961132>,  <34.630287, 34.947208, 44.500500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.192154, 34.873920, 43.961132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.111900, 35.247551, 44.079281>,  <34.063747, 35.471729, 44.150169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.111900, 35.247551, 44.079281>,  <34.192154, 34.873920, 43.961132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.111900, 35.247551, 44.079281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097905, 0.280879, -0.954737,
		-0.974762, -0.220472, 0.035096,
		-0.200635, 0.934077, 0.295375,
		34.051708, 35.527775, 44.167892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.694668, 35.005135, 43.519501>,  <34.192154, 34.873920, 43.961132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.694668, 35.005135, 43.519501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.807011, 35.369701, 43.639793>,  <33.874416, 35.588444, 43.711967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.807011, 35.369701, 43.639793>,  <33.694668, 35.005135, 43.519501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.807011, 35.369701, 43.639793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294660, 0.380091, -0.876759,
		-0.913399, 0.157628, 0.375308,
		0.280853, 0.911419, 0.300727,
		33.891266, 35.643127, 43.730011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.171192, 35.434975, 43.274292>,  <33.694668, 35.005135, 43.519501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.171192, 35.434975, 43.274292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.496838, 35.653282, 43.353649>,  <33.692223, 35.784267, 43.401264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.496838, 35.653282, 43.353649>,  <33.171192, 35.434975, 43.274292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.496838, 35.653282, 43.353649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029937, 0.380627, -0.924244,
		-0.579938, 0.746497, 0.326211,
		0.814110, 0.545770, 0.198392,
		33.741070, 35.817013, 43.413166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.030289, 36.184471, 43.149780>,  <33.171192, 35.434975, 43.274292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.030289, 36.184471, 43.149780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.427334, 36.137745, 43.136631>,  <33.665562, 36.109707, 43.128742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.427334, 36.137745, 43.136631>,  <33.030289, 36.184471, 43.149780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.427334, 36.137745, 43.136631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038167, 0.557642, -0.829204,
		0.115196, 0.821821, 0.557979,
		0.992609, -0.116818, -0.032872,
		33.725117, 36.102699, 43.126770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.335480, 36.822407, 43.035099>,  <33.030289, 36.184471, 43.149780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.335480, 36.822407, 43.035099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.615433, 36.554092, 42.936943>,  <33.783405, 36.393105, 42.878048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.615433, 36.554092, 42.936943>,  <33.335480, 36.822407, 43.035099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.615433, 36.554092, 42.936943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207702, 0.519850, -0.828623,
		0.683393, 0.528969, 0.503157,
		0.699882, -0.670781, -0.245394,
		33.825397, 36.352859, 42.863323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.817173, 37.247746, 42.684727>,  <33.335480, 36.822407, 43.035099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.817173, 37.247746, 42.684727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.913212, 36.879551, 42.561398>,  <33.970833, 36.658634, 42.487400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.913212, 36.879551, 42.561398>,  <33.817173, 37.247746, 42.684727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.913212, 36.879551, 42.561398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058886, 0.330841, -0.941848,
		0.968962, 0.207975, 0.133636,
		0.240093, -0.920484, -0.308326,
		33.985241, 36.603405, 42.468899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.275986, 37.309654, 42.158173>,  <33.817173, 37.247746, 42.684727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.275986, 37.309654, 42.158173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.160179, 36.933296, 42.087864>,  <34.090694, 36.707481, 42.045677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.160179, 36.933296, 42.087864>,  <34.275986, 37.309654, 42.158173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.160179, 36.933296, 42.087864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090315, 0.155968, -0.983625,
		0.952901, -0.300655, 0.039820,
		-0.289521, -0.940893, -0.175776,
		34.073322, 36.651028, 42.035130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.644932, 37.132404, 41.624889>,  <34.275986, 37.309654, 42.158173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.644932, 37.132404, 41.624889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.336498, 36.877827, 41.617229>,  <34.151440, 36.725079, 41.612633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.336498, 36.877827, 41.617229>,  <34.644932, 37.132404, 41.624889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.336498, 36.877827, 41.617229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021691, 0.003796, -0.999758,
		0.636365, -0.771311, 0.010878,
		-0.771083, -0.636447, -0.019146,
		34.105175, 36.686893, 41.611485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.820164, 36.564625, 41.196503>,  <34.644932, 37.132404, 41.624889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.820164, 36.564625, 41.196503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.420223, 36.557781, 41.197483>,  <34.180260, 36.553673, 41.198071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.420223, 36.557781, 41.197483>,  <34.820164, 36.564625, 41.196503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.420223, 36.557781, 41.197483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002315, -0.008169, -0.999964,
		0.017137, -0.999820, 0.008128,
		-0.999850, -0.017118, 0.002455,
		34.120270, 36.552647, 41.198219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.726379, 36.113979, 40.725922>,  <34.820164, 36.564625, 41.196503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.726379, 36.113979, 40.725922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.386803, 36.319221, 40.776554>,  <34.183056, 36.442368, 40.806934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.386803, 36.319221, 40.776554>,  <34.726379, 36.113979, 40.725922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.386803, 36.319221, 40.776554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171638, -0.041163, -0.984300,
		-0.499841, -0.857337, 0.123013,
		-0.848940, 0.513107, 0.126577,
		34.132122, 36.473152, 40.814526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.320972, 35.828506, 40.257011>,  <34.726379, 36.113979, 40.725922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.320972, 35.828506, 40.257011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.135590, 36.174450, 40.334194>,  <34.024361, 36.382015, 40.380505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.135590, 36.174450, 40.334194>,  <34.320972, 35.828506, 40.257011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.135590, 36.174450, 40.334194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241213, 0.086406, -0.966618,
		-0.852657, -0.494530, 0.168569,
		-0.463456, 0.864855, 0.192962,
		33.996552, 36.433907, 40.392082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.527355, 35.778214, 40.048935>,  <34.320972, 35.828506, 40.257011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.527355, 35.778214, 40.048935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.624897, 36.166134, 40.050415>,  <33.683422, 36.398888, 40.051304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.624897, 36.166134, 40.050415>,  <33.527355, 35.778214, 40.048935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.624897, 36.166134, 40.050415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295520, 0.077941, -0.952152,
		-0.923691, 0.231090, 0.305602,
		0.243852, 0.969805, 0.003701,
		33.698051, 36.457077, 40.051525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.979069, 36.107830, 39.696732>,  <33.527355, 35.778214, 40.048935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.979069, 36.107830, 39.696732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.280067, 36.371174, 39.703770>,  <33.460667, 36.529179, 39.707993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.280067, 36.371174, 39.703770>,  <32.979069, 36.107830, 39.696732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.280067, 36.371174, 39.703770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206660, 0.261407, -0.942845,
		-0.625327, 0.705857, 0.332765,
		0.752501, 0.658356, 0.017593,
		33.505817, 36.568680, 39.709049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.775524, 36.741611, 39.479347>,  <32.979069, 36.107830, 39.696732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.775524, 36.741611, 39.479347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.169296, 36.776028, 39.418022>,  <33.405560, 36.796677, 39.381229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.169296, 36.776028, 39.418022>,  <32.775524, 36.741611, 39.479347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.169296, 36.776028, 39.418022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173205, 0.325393, -0.929580,
		-0.030092, 0.941657, 0.335228,
		0.984426, 0.086037, -0.153308,
		33.464622, 36.801838, 39.372028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.910698, 37.405224, 39.120121>,  <32.775524, 36.741611, 39.479347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.910698, 37.405224, 39.120121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.224857, 37.168907, 39.046238>,  <33.413353, 37.027119, 39.001907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.224857, 37.168907, 39.046238>,  <32.910698, 37.405224, 39.120121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.224857, 37.168907, 39.046238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033422, 0.257498, -0.965701,
		0.618086, 0.764634, 0.182493,
		0.785399, -0.590787, -0.184711,
		33.460476, 36.991673, 38.990826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.401253, 37.807266, 38.755733>,  <32.910698, 37.405224, 39.120121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.401253, 37.807266, 38.755733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.548588, 37.447262, 38.662521>,  <33.636990, 37.231258, 38.606594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.548588, 37.447262, 38.662521>,  <33.401253, 37.807266, 38.755733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.548588, 37.447262, 38.662521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154208, 0.306328, -0.939352,
		0.916814, 0.310064, 0.251621,
		0.368338, -0.900013, -0.233032,
		33.659088, 37.177258, 38.592613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.853611, 37.996231, 38.320686>,  <33.401253, 37.807266, 38.755733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.853611, 37.996231, 38.320686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.871601, 37.602726, 38.251194>,  <33.882397, 37.366623, 38.209499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.871601, 37.602726, 38.251194>,  <33.853611, 37.996231, 38.320686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.871601, 37.602726, 38.251194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495456, 0.172979, -0.851235,
		0.867468, -0.047787, 0.495193,
		0.044980, -0.983765, -0.173731,
		33.885094, 37.307598, 38.199074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.632282, 37.790226, 38.219814>,  <33.853611, 37.996231, 38.320686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.632282, 37.790226, 38.219814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.352669, 37.564182, 38.044540>,  <34.184902, 37.428555, 37.939377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.352669, 37.564182, 38.044540>,  <34.632282, 37.790226, 38.219814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.352669, 37.564182, 38.044540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487898, 0.071067, -0.870003,
		0.522789, -0.821948, 0.226039,
		-0.699033, -0.565112, -0.438180,
		34.142960, 37.394650, 37.913086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.032509, 37.428299, 37.723469>,  <34.632282, 37.790226, 38.219814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.032509, 37.428299, 37.723469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.660091, 37.378021, 37.586445>,  <34.436642, 37.347855, 37.504230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.660091, 37.378021, 37.586445>,  <35.032509, 37.428299, 37.723469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.660091, 37.378021, 37.586445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318533, 0.178005, -0.931048,
		0.178005, -0.975969, -0.125693,
		0.931048, 0.125693, 0.342564,
		34.380775, 37.340313, 37.483677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.261501, 36.821758, 38.095741>,  <35.032509, 37.428299, 37.723469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.261501, 36.821758, 38.095741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.646729, 36.908264, 38.031567>,  <35.877865, 36.960167, 37.993061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.646729, 36.908264, 38.031567>,  <35.261501, 36.821758, 38.095741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.646729, 36.908264, 38.031567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263820, -0.638519, 0.722975,
		0.053911, -0.738596, -0.671989,
		0.963064, 0.216261, -0.160433,
		35.935646, 36.973141, 37.983437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.541039, 36.194885, 38.375835>,  <35.261501, 36.821758, 38.095741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.541039, 36.194885, 38.375835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.856274, 36.436615, 38.328999>,  <36.045414, 36.581654, 38.300896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.856274, 36.436615, 38.328999>,  <35.541039, 36.194885, 38.375835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.856274, 36.436615, 38.328999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556027, -0.617248, 0.556631,
		0.264112, -0.503780, -0.822467,
		0.788085, 0.604327, -0.117093,
		36.092701, 36.617912, 38.293869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.170525, 35.791939, 38.348866>,  <35.541039, 36.194885, 38.375835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.170525, 35.791939, 38.348866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.264633, 36.153187, 38.492546>,  <36.321098, 36.369934, 38.578754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.264633, 36.153187, 38.492546>,  <36.170525, 35.791939, 38.348866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.264633, 36.153187, 38.492546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603253, -0.425462, 0.674587,
		0.762058, 0.057979, -0.644907,
		0.235271, 0.903117, 0.359203,
		36.335213, 36.424122, 38.600307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.931992, 35.719280, 38.616425>,  <36.170525, 35.791939, 38.348866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.931992, 35.719280, 38.616425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.850788, 36.086758, 38.751949>,  <36.802067, 36.307243, 38.833263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.850788, 36.086758, 38.751949>,  <36.931992, 35.719280, 38.616425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.850788, 36.086758, 38.751949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532024, -0.186996, 0.825822,
		0.822033, 0.347905, -0.450804,
		-0.203009, 0.918692, 0.338811,
		36.789886, 36.362366, 38.853592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.518906, 35.923855, 38.833347>,  <36.931992, 35.719280, 38.616425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.518906, 35.923855, 38.833347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.229530, 36.119209, 39.028534>,  <37.055904, 36.236420, 39.145645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.229530, 36.119209, 39.028534>,  <37.518906, 35.923855, 38.833347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.229530, 36.119209, 39.028534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477732, -0.156126, 0.864521,
		0.498402, 0.858549, -0.120368,
		-0.723441, 0.488383, 0.487970,
		37.012497, 36.265724, 39.174927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.827469, 36.407764, 39.233181>,  <37.518906, 35.923855, 38.833347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.827469, 36.407764, 39.233181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.474743, 36.358273, 39.415207>,  <37.263107, 36.328575, 39.524422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.474743, 36.358273, 39.415207>,  <37.827469, 36.407764, 39.233181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.474743, 36.358273, 39.415207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468965, -0.128409, 0.873833,
		-0.049687, 0.983972, 0.171260,
		-0.881818, -0.123733, 0.455068,
		37.210197, 36.321152, 39.551727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.962315, 36.752327, 39.866241>,  <37.827469, 36.407764, 39.233181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.962315, 36.752327, 39.866241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.639328, 36.523491, 39.923817>,  <37.445538, 36.386189, 39.958363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.639328, 36.523491, 39.923817>,  <37.962315, 36.752327, 39.866241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.639328, 36.523491, 39.923817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305026, -0.196050, 0.931946,
		-0.504936, 0.796418, 0.332805,
		-0.807465, -0.572087, 0.143935,
		37.397087, 36.351864, 39.966999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.693302, 36.944908, 40.458359>,  <37.962315, 36.752327, 39.866241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.693302, 36.944908, 40.458359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.533485, 36.582623, 40.401718>,  <37.437595, 36.365250, 40.367733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.533485, 36.582623, 40.401718>,  <37.693302, 36.944908, 40.458359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.533485, 36.582623, 40.401718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120481, -0.205005, 0.971317,
		-0.908765, 0.371017, 0.191028,
		-0.399537, -0.905715, -0.141601,
		37.413624, 36.310909, 40.359238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.166180, 36.901005, 40.960346>,  <37.693302, 36.944908, 40.458359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.166180, 36.901005, 40.960346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.225689, 36.516273, 40.868477>,  <37.261395, 36.285435, 40.813354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.225689, 36.516273, 40.868477>,  <37.166180, 36.901005, 40.960346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.225689, 36.516273, 40.868477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128151, -0.211543, 0.968931,
		-0.980533, -0.173579, 0.091789,
		0.148768, -0.961832, -0.229669,
		37.270321, 36.227722, 40.799576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.737831, 36.565224, 41.401047>,  <37.166180, 36.901005, 40.960346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.737831, 36.565224, 41.401047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.984581, 36.277821, 41.272541>,  <37.132633, 36.105381, 41.195438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.984581, 36.277821, 41.272541>,  <36.737831, 36.565224, 41.401047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.984581, 36.277821, 41.272541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237284, -0.219415, 0.946337,
		-0.750439, -0.660005, 0.035138,
		0.616877, -0.718506, -0.321266,
		37.169643, 36.062267, 41.176163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.399933, 35.989120, 41.680302>,  <36.737831, 36.565224, 41.401047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.399933, 35.989120, 41.680302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.783543, 35.889271, 41.626701>,  <37.013710, 35.829361, 41.594543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.783543, 35.889271, 41.626701>,  <36.399933, 35.989120, 41.680302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.783543, 35.889271, 41.626701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000162, -0.472479, 0.881342,
		-0.283315, -0.845252, -0.453080,
		0.959027, -0.249624, -0.133998,
		37.071251, 35.814384, 41.586502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.477467, 35.239002, 41.803909>,  <36.399933, 35.989120, 41.680302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.477467, 35.239002, 41.803909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.829296, 35.425186, 41.843288>,  <37.040394, 35.536896, 41.866917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.829296, 35.425186, 41.843288>,  <36.477467, 35.239002, 41.803909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.829296, 35.425186, 41.843288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143165, -0.456291, 0.878238,
		0.453707, -0.758382, -0.467981,
		0.879576, 0.465461, 0.098448,
		37.093170, 35.564823, 41.872822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.969364, 34.748989, 42.048473>,  <36.477467, 35.239002, 41.803909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.969364, 34.748989, 42.048473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.084541, 35.112392, 42.169601>,  <37.153648, 35.330433, 42.242279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.084541, 35.112392, 42.169601>,  <36.969364, 34.748989, 42.048473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.084541, 35.112392, 42.169601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134720, -0.351500, 0.926444,
		0.948125, -0.225965, -0.223605,
		0.287941, 0.908508, 0.302824,
		37.170925, 35.384945, 42.260448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.623524, 34.646690, 42.382050>,  <36.969364, 34.748989, 42.048473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.623524, 34.646690, 42.382050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.470387, 34.986164, 42.528019>,  <37.378506, 35.189850, 42.615601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.470387, 34.986164, 42.528019>,  <37.623524, 34.646690, 42.382050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.470387, 34.986164, 42.528019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037231, -0.408871, 0.911832,
		0.923064, 0.335499, 0.188129,
		-0.382839, 0.848684, 0.364924,
		37.355534, 35.240768, 42.637497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.908390, 34.715153, 43.064762>,  <37.623524, 34.646690, 42.382050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.908390, 34.715153, 43.064762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.640652, 35.009506, 43.105656>,  <37.480011, 35.186119, 43.130192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.640652, 35.009506, 43.105656>,  <37.908390, 34.715153, 43.064762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.640652, 35.009506, 43.105656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029478, -0.163798, 0.986053,
		0.742370, 0.656992, 0.131329,
		-0.669341, 0.735888, 0.102232,
		37.439850, 35.230274, 43.136326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.130474, 35.159573, 43.706100>,  <37.908390, 34.715153, 43.064762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.130474, 35.159573, 43.706100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.737408, 35.199284, 43.643478>,  <37.501568, 35.223110, 43.605904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.737408, 35.199284, 43.643478>,  <38.130474, 35.159573, 43.706100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.737408, 35.199284, 43.643478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164480, -0.077326, 0.983345,
		0.085513, 0.992051, 0.092314,
		-0.982667, 0.099273, -0.156560,
		37.442608, 35.229065, 43.596512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.934471, 35.643753, 44.235477>,  <38.130474, 35.159573, 43.706100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.934471, 35.643753, 44.235477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.583050, 35.494011, 44.116821>,  <37.372196, 35.404167, 44.045628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.583050, 35.494011, 44.116821>,  <37.934471, 35.643753, 44.235477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.583050, 35.494011, 44.116821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335229, 0.040889, 0.941249,
		-0.340234, 0.926383, -0.161418,
		-0.878557, -0.374357, -0.296639,
		37.319481, 35.381702, 44.027828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.353935, 36.004742, 44.613441>,  <37.934471, 35.643753, 44.235477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.353935, 36.004742, 44.613441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.209961, 35.649765, 44.498276>,  <37.123577, 35.436779, 44.429176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.209961, 35.649765, 44.498276>,  <37.353935, 36.004742, 44.613441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.209961, 35.649765, 44.498276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280004, -0.191617, 0.940681,
		-0.889967, 0.419204, -0.179516,
		-0.359939, -0.887441, -0.287912,
		37.101978, 35.383533, 44.411903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.672886, 35.893097, 44.867577>,  <37.353935, 36.004742, 44.613441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.672886, 35.893097, 44.867577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.810692, 35.521561, 44.813068>,  <36.893375, 35.298641, 44.780365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.810692, 35.521561, 44.813068>,  <36.672886, 35.893097, 44.867577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.810692, 35.521561, 44.813068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304438, -0.247852, 0.919721,
		-0.888046, -0.275375, -0.368163,
		0.344518, -0.928837, -0.136270,
		36.914047, 35.242908, 44.772186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.153477, 35.516418, 45.154995>,  <36.672886, 35.893097, 44.867577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.153477, 35.516418, 45.154995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.458664, 35.258434, 45.137501>,  <36.641777, 35.103645, 45.127007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.458664, 35.258434, 45.137501>,  <36.153477, 35.516418, 45.154995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.458664, 35.258434, 45.137501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198349, -0.297956, 0.933745,
		-0.615257, -0.703741, -0.355257,
		0.762966, -0.644958, -0.043733,
		36.687553, 35.064945, 45.124382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.892487, 34.853794, 45.315022>,  <36.153477, 35.516418, 45.154995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.892487, 34.853794, 45.315022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.285591, 34.830605, 45.385239>,  <36.521454, 34.816692, 45.427368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.285591, 34.830605, 45.385239>,  <35.892487, 34.853794, 45.315022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.285591, 34.830605, 45.385239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181159, -0.112656, 0.976980,
		-0.036859, -0.991942, -0.121215,
		0.982763, -0.057970, 0.175547,
		36.580421, 34.813213, 45.437904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.008976, 34.271278, 45.765980>,  <35.892487, 34.853794, 45.315022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.008976, 34.271278, 45.765980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.274086, 34.567497, 45.810371>,  <36.433151, 34.745228, 45.837006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.274086, 34.567497, 45.810371>,  <36.008976, 34.271278, 45.765980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.274086, 34.567497, 45.810371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153128, -0.011044, 0.988145,
		0.732996, -0.671910, 0.106079,
		0.662773, 0.740550, 0.110983,
		36.472919, 34.789661, 45.843666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.388767, 34.107185, 46.295170>,  <36.008976, 34.271278, 45.765980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.388767, 34.107185, 46.295170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.444702, 34.502884, 46.278027>,  <36.478264, 34.740303, 46.267742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.444702, 34.502884, 46.278027>,  <36.388767, 34.107185, 46.295170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.444702, 34.502884, 46.278027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101771, 0.057410, 0.993150,
		0.984931, -0.134515, 0.108705,
		0.139835, 0.989247, -0.042855,
		36.486652, 34.799660, 46.265171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.703709, 34.292873, 46.901016>,  <36.388767, 34.107185, 46.295170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.703709, 34.292873, 46.901016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.551384, 34.646309, 46.792027>,  <36.459988, 34.858372, 46.726631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.551384, 34.646309, 46.792027>,  <36.703709, 34.292873, 46.901016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.551384, 34.646309, 46.792027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171265, 0.222179, 0.959846,
		0.908652, 0.412189, 0.066719,
		-0.380815, 0.883593, -0.272477,
		36.437141, 34.911388, 46.710285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.949219, 34.691307, 47.506420>,  <36.703709, 34.292873, 46.901016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.949219, 34.691307, 47.506420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.683720, 34.926140, 47.321045>,  <36.524422, 35.067039, 47.209820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.683720, 34.926140, 47.321045>,  <36.949219, 34.691307, 47.506420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.683720, 34.926140, 47.321045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177610, 0.478171, 0.860120,
		0.726563, 0.653214, -0.213114,
		-0.663748, 0.587081, -0.463439,
		36.484596, 35.102264, 47.182014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.973965, 35.325241, 47.828964>,  <36.949219, 34.691307, 47.506420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.973965, 35.325241, 47.828964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.618305, 35.327343, 47.645927>,  <36.404911, 35.328606, 47.536106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.618305, 35.327343, 47.645927>,  <36.973965, 35.325241, 47.828964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.618305, 35.327343, 47.645927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408204, 0.442885, 0.798262,
		0.206859, 0.896563, -0.391642,
		-0.889145, 0.005258, -0.457595,
		36.351562, 35.328918, 47.508648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.736534, 35.897118, 48.026596>,  <36.973965, 35.325241, 47.828964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.736534, 35.897118, 48.026596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.421700, 35.675026, 47.919109>,  <36.232800, 35.541771, 47.854618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.421700, 35.675026, 47.919109>,  <36.736534, 35.897118, 48.026596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.421700, 35.675026, 47.919109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515310, 0.352427, 0.781186,
		-0.339034, 0.753336, -0.563507,
		-0.787090, -0.555230, -0.268717,
		36.185574, 35.508457, 47.838493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.193405, 36.303028, 48.213295>,  <36.736534, 35.897118, 48.026596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.193405, 36.303028, 48.213295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.036633, 35.936424, 48.181282>,  <35.942570, 35.716461, 48.162075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.036633, 35.936424, 48.181282>,  <36.193405, 36.303028, 48.213295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.036633, 35.936424, 48.181282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686420, 0.233391, 0.688735,
		-0.612551, 0.324875, -0.720582,
		-0.391930, -0.916507, -0.080037,
		35.919052, 35.661472, 48.157272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.443935, 36.415588, 48.227200>,  <36.193405, 36.303028, 48.213295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.443935, 36.415588, 48.227200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.506500, 36.030640, 48.316078>,  <35.544041, 35.799671, 48.369408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.506500, 36.030640, 48.316078>,  <35.443935, 36.415588, 48.227200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.506500, 36.030640, 48.316078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630587, 0.075850, 0.772403,
		-0.760194, -0.260931, -0.594996,
		0.156413, -0.962373, 0.222201,
		35.553425, 35.741928, 48.382740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.778767, 36.164200, 48.424656>,  <35.443935, 36.415588, 48.227200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.778767, 36.164200, 48.424656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.007446, 35.871349, 48.572792>,  <35.144653, 35.695641, 48.661674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.007446, 35.871349, 48.572792>,  <34.778767, 36.164200, 48.424656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.007446, 35.871349, 48.572792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576297, -0.037042, 0.816400,
		-0.583989, -0.680162, -0.443099,
		0.571697, -0.732126, 0.370343,
		35.178955, 35.651711, 48.683895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.326641, 35.565140, 48.652939>,  <34.778767, 36.164200, 48.424656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.326641, 35.565140, 48.652939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.663830, 35.481670, 48.851276>,  <34.866142, 35.431587, 48.970280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.663830, 35.481670, 48.851276>,  <34.326641, 35.565140, 48.652939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.663830, 35.481670, 48.851276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535244, -0.232795, 0.811986,
		-0.054008, -0.949875, -0.307928,
		0.842970, -0.208670, 0.495842,
		34.916721, 35.419067, 49.000031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.255966, 34.901371, 49.049095>,  <34.326641, 35.565140, 48.652939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.255966, 34.901371, 49.049095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.556412, 35.088692, 49.235218>,  <34.736679, 35.201084, 49.346893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.556412, 35.088692, 49.235218>,  <34.255966, 34.901371, 49.049095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.556412, 35.088692, 49.235218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437365, -0.174966, 0.882099,
		0.494504, -0.866070, 0.073400,
		0.751117, 0.468304, 0.465310,
		34.781746, 35.229183, 49.374809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.442585, 34.595657, 49.659615>,  <34.255966, 34.901371, 49.049095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.442585, 34.595657, 49.659615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.599701, 34.955696, 49.735020>,  <34.693970, 35.171722, 49.780262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.599701, 34.955696, 49.735020>,  <34.442585, 34.595657, 49.659615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.599701, 34.955696, 49.735020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194784, -0.118905, 0.973612,
		0.898765, -0.419140, 0.128621,
		0.392786, 0.900102, 0.188510,
		34.717537, 35.225727, 49.791573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.686741, 34.503109, 50.335514>,  <34.442585, 34.595657, 49.659615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.686741, 34.503109, 50.335514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.668037, 34.897938, 50.274185>,  <34.656815, 35.134834, 50.237389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.668037, 34.897938, 50.274185>,  <34.686741, 34.503109, 50.335514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.668037, 34.897938, 50.274185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326569, 0.129953, 0.936197,
		0.944016, 0.093844, 0.316270,
		-0.046756, 0.987069, -0.153325,
		34.654011, 35.194057, 50.228188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.950260, 34.787434, 51.012043>,  <34.686741, 34.503109, 50.335514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.950260, 34.787434, 51.012043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.742344, 35.074295, 50.826355>,  <34.617592, 35.246410, 50.714943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.742344, 35.074295, 50.826355>,  <34.950260, 34.787434, 51.012043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.742344, 35.074295, 50.826355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411491, 0.266030, 0.871724,
		0.748658, 0.644141, 0.156822,
		-0.519794, 0.717154, -0.464224,
		34.586407, 35.289440, 50.687088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.098595, 35.413067, 51.376385>,  <34.950260, 34.787434, 51.012043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.098595, 35.413067, 51.376385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.748241, 35.497425, 51.202785>,  <34.538029, 35.548038, 51.098625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.748241, 35.497425, 51.202785>,  <35.098595, 35.413067, 51.376385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.748241, 35.497425, 51.202785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360610, 0.311534, 0.879151,
		0.320612, 0.926537, -0.196818,
		-0.875881, 0.210892, -0.434000,
		34.485477, 35.560692, 51.072586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.865227, 36.092083, 51.595238>,  <35.098595, 35.413067, 51.376385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.865227, 36.092083, 51.595238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.552341, 35.869492, 51.483192>,  <34.364609, 35.735935, 51.415966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.552341, 35.869492, 51.483192>,  <34.865227, 36.092083, 51.595238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.552341, 35.869492, 51.483192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477167, 0.246062, 0.843662,
		-0.400559, 0.793587, -0.458009,
		-0.782217, -0.556483, -0.280111,
		34.317677, 35.702545, 51.399158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.274147, 36.541286, 51.723797>,  <34.865227, 36.092083, 51.595238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.274147, 36.541286, 51.723797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.142727, 36.163998, 51.743351>,  <34.063877, 35.937626, 51.755081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.142727, 36.163998, 51.743351>,  <34.274147, 36.541286, 51.723797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.142727, 36.163998, 51.743351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583609, 0.243431, 0.774688,
		-0.742602, 0.225994, -0.630451,
		-0.328546, -0.943222, 0.048881,
		34.044163, 35.881031, 51.758015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.793289, 37.169830, 51.796108>,  <34.274147, 36.541286, 51.723797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.793289, 37.169830, 51.796108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.967358, 37.512604, 51.906593>,  <35.071800, 37.718269, 51.972885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.967358, 37.512604, 51.906593>,  <34.793289, 37.169830, 51.796108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.967358, 37.512604, 51.906593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450387, 0.058450, -0.890918,
		-0.779601, 0.512104, -0.360516,
		0.435170, 0.856933, 0.276213,
		35.097908, 37.769684, 51.989456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.771160, 37.565468, 51.207474>,  <34.793289, 37.169830, 51.796108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.771160, 37.565468, 51.207474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.058193, 37.733158, 51.429939>,  <35.230415, 37.833775, 51.563419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.058193, 37.733158, 51.429939>,  <34.771160, 37.565468, 51.207474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.058193, 37.733158, 51.429939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543604, 0.162070, -0.823546,
		-0.435392, 0.893297, -0.111597,
		0.717584, 0.419230, 0.556164,
		35.273468, 37.858929, 51.596790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.875519, 38.183704, 50.880489>,  <34.771160, 37.565468, 51.207474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.875519, 38.183704, 50.880489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.210575, 38.116211, 51.088291>,  <35.411610, 38.075714, 51.212975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.210575, 38.116211, 51.088291>,  <34.875519, 38.183704, 50.880489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.210575, 38.116211, 51.088291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541915, 0.137514, -0.829107,
		0.068455, 0.976023, 0.206624,
		0.837641, -0.168729, 0.519508,
		35.461868, 38.065594, 51.244144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.362301, 38.603794, 50.585388>,  <34.875519, 38.183704, 50.880489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.362301, 38.603794, 50.585388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.605312, 38.367554, 50.797844>,  <35.751118, 38.225811, 50.925316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.605312, 38.367554, 50.797844>,  <35.362301, 38.603794, 50.585388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.605312, 38.367554, 50.797844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586799, -0.116953, -0.801242,
		0.535329, 0.798446, 0.275510,
		0.607527, -0.590598, 0.531136,
		35.787571, 38.190376, 50.957184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.986366, 38.890488, 50.435612>,  <35.362301, 38.603794, 50.585388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.986366, 38.890488, 50.435612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.068306, 38.522182, 50.568413>,  <36.117470, 38.301197, 50.648094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.068306, 38.522182, 50.568413>,  <35.986366, 38.890488, 50.435612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.068306, 38.522182, 50.568413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673791, -0.113379, -0.730172,
		0.709960, 0.373277, 0.597178,
		0.204849, -0.920766, 0.332005,
		36.129761, 38.245953, 50.668015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.643105, 38.880634, 50.634960>,  <35.986366, 38.890488, 50.435612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.643105, 38.880634, 50.634960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.549145, 38.497078, 50.571262>,  <36.492767, 38.266945, 50.533043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.549145, 38.497078, 50.571262>,  <36.643105, 38.880634, 50.634960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.549145, 38.497078, 50.571262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753059, -0.075942, -0.653555,
		0.614593, -0.273438, 0.739938,
		-0.234899, -0.958887, -0.159241,
		36.478676, 38.209412, 50.523491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.349621, 38.472713, 50.704288>,  <36.643105, 38.880634, 50.634960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.349621, 38.472713, 50.704288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.090988, 38.248558, 50.497253>,  <36.935806, 38.114067, 50.373032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.090988, 38.248558, 50.497253>,  <37.349621, 38.472713, 50.704288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.090988, 38.248558, 50.497253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744654, -0.316380, -0.587703,
		0.165585, -0.765424, 0.621859,
		-0.646585, -0.560384, -0.517588,
		36.897011, 38.080444, 50.341976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.761276, 37.913166, 50.509441>,  <37.349621, 38.472713, 50.704288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.761276, 37.913166, 50.509441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.452782, 37.907810, 50.254875>,  <37.267685, 37.904598, 50.102135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.452782, 37.907810, 50.254875>,  <37.761276, 37.913166, 50.509441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.452782, 37.907810, 50.254875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613464, -0.282456, -0.737483,
		-0.169884, -0.959187, 0.226053,
		-0.771234, -0.013389, -0.636411,
		37.221413, 37.903793, 50.063953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.785946, 37.238415, 50.044643>,  <37.761276, 37.913166, 50.509441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.785946, 37.238415, 50.044643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.575211, 37.518459, 49.851860>,  <37.448769, 37.686485, 49.736191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.575211, 37.518459, 49.851860>,  <37.785946, 37.238415, 50.044643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.575211, 37.518459, 49.851860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386034, -0.308086, -0.869517,
		-0.757248, -0.644144, -0.107958,
		-0.526834, 0.700116, -0.481959,
		37.417160, 37.728493, 49.707272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.784859, 36.951653, 49.417831>,  <37.785946, 37.238415, 50.044643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.784859, 36.951653, 49.417831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.655582, 37.319496, 49.328499>,  <37.578018, 37.540203, 49.274899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.655582, 37.319496, 49.328499>,  <37.784859, 36.951653, 49.417831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.655582, 37.319496, 49.328499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470923, -0.048415, -0.880845,
		-0.820841, -0.389850, -0.417415,
		-0.323189, 0.919604, -0.223331,
		37.558624, 37.595379, 49.261501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.431774, 36.983932, 48.681122>,  <37.784859, 36.951653, 49.417831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.431774, 36.983932, 48.681122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.525635, 37.370110, 48.726482>,  <37.581951, 37.601814, 48.753700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.525635, 37.370110, 48.726482>,  <37.431774, 36.983932, 48.681122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.525635, 37.370110, 48.726482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228873, 0.058508, -0.971696,
		-0.944752, 0.253962, -0.207235,
		0.234649, 0.965443, 0.113401,
		37.596031, 37.659744, 48.760502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.110710, 37.291649, 48.169029>,  <37.431774, 36.983932, 48.681122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.110710, 37.291649, 48.169029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.409367, 37.539120, 48.266823>,  <37.588558, 37.687603, 48.325500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.409367, 37.539120, 48.266823>,  <37.110710, 37.291649, 48.169029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.409367, 37.539120, 48.266823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240109, 0.092116, -0.966365,
		-0.620386, 0.780229, -0.079772,
		0.746638, 0.618674, 0.244487,
		37.633358, 37.724720, 48.340168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.040707, 37.782639, 47.690968>,  <37.110710, 37.291649, 48.169029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.040707, 37.782639, 47.690968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.417038, 37.819283, 47.821472>,  <37.642838, 37.841267, 47.899776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.417038, 37.819283, 47.821472>,  <37.040707, 37.782639, 47.690968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.417038, 37.819283, 47.821472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286712, 0.298077, -0.910465,
		-0.180656, 0.950136, 0.254175,
		0.940829, 0.091606, 0.326265,
		37.699287, 37.846764, 47.919353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.278530, 38.432922, 47.517208>,  <37.040707, 37.782639, 47.690968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.278530, 38.432922, 47.517208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.603935, 38.200809, 47.532524>,  <37.799179, 38.061543, 47.541714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.603935, 38.200809, 47.532524>,  <37.278530, 38.432922, 47.517208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.603935, 38.200809, 47.532524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272030, 0.321511, -0.906990,
		0.514001, 0.748264, 0.419409,
		0.813512, -0.580285, 0.038293,
		37.847988, 38.026722, 47.544014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.721672, 38.805752, 47.177238>,  <37.278530, 38.432922, 47.517208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.721672, 38.805752, 47.177238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.902187, 38.448799, 47.176937>,  <38.010498, 38.234627, 47.176758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.902187, 38.448799, 47.176937>,  <37.721672, 38.805752, 47.177238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.902187, 38.448799, 47.176937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288189, 0.146539, -0.946295,
		0.844562, 0.426836, 0.323305,
		0.451289, -0.892378, -0.000752,
		38.037575, 38.181087, 47.176712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.448158, 38.866421, 46.832481>,  <37.721672, 38.805752, 47.177238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.448158, 38.866421, 46.832481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.347504, 38.480026, 46.808678>,  <38.287109, 38.248188, 46.794395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.347504, 38.480026, 46.808678>,  <38.448158, 38.866421, 46.832481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.347504, 38.480026, 46.808678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240029, -0.002723, -0.970762,
		0.937585, -0.258562, 0.232551,
		-0.251636, -0.965991, -0.059509,
		38.272015, 38.190228, 46.790825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.055130, 38.478722, 46.477005>,  <38.448158, 38.866421, 46.832481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.055130, 38.478722, 46.477005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.742893, 38.230469, 46.447338>,  <38.555553, 38.081516, 46.429539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.742893, 38.230469, 46.447338>,  <39.055130, 38.478722, 46.477005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.742893, 38.230469, 46.447338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258409, -0.212387, -0.942399,
		0.569127, -0.754793, 0.326163,
		-0.780589, -0.620629, -0.074170,
		38.508717, 38.044281, 46.425087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.319469, 37.800049, 46.233150>,  <39.055130, 38.478722, 46.477005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.319469, 37.800049, 46.233150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.934574, 37.843872, 46.133480>,  <38.703636, 37.870167, 46.073677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.934574, 37.843872, 46.133480>,  <39.319469, 37.800049, 46.233150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.934574, 37.843872, 46.133480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226597, -0.184793, -0.956298,
		-0.150810, -0.976653, 0.152991,
		-0.962242, 0.109552, -0.249175,
		38.645901, 37.876740, 46.058727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.272797, 37.323372, 45.758053>,  <39.319469, 37.800049, 46.233150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.272797, 37.323372, 45.758053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.918438, 37.505585, 45.723011>,  <38.705822, 37.614914, 45.701988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.918438, 37.505585, 45.723011>,  <39.272797, 37.323372, 45.758053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.918438, 37.505585, 45.723011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008369, -0.173115, -0.984866,
		-0.463807, -0.873223, 0.149550,
		-0.885897, 0.455536, -0.087601,
		38.652668, 37.642246, 45.696732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.695080, 36.870586, 45.439133>,  <39.272797, 37.323372, 45.758053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.695080, 36.870586, 45.439133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.595470, 37.250088, 45.361317>,  <38.535706, 37.477791, 45.314625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.595470, 37.250088, 45.361317>,  <38.695080, 36.870586, 45.439133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.595470, 37.250088, 45.361317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047008, -0.188794, -0.980891,
		-0.967357, -0.253406, 0.002414,
		-0.249020, 0.948758, -0.194544,
		38.520763, 37.534714, 45.302952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.361137, 36.812584, 44.743000>,  <38.695080, 36.870586, 45.439133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.361137, 36.812584, 44.743000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.415676, 37.207432, 44.776466>,  <38.448399, 37.444340, 44.796547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.415676, 37.207432, 44.776466>,  <38.361137, 36.812584, 44.743000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.415676, 37.207432, 44.776466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010099, 0.085834, -0.996258,
		-0.990609, 0.134996, 0.021673,
		0.136351, 0.987121, 0.083665,
		38.456581, 37.503567, 44.801567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.766251, 37.142612, 44.453236>,  <38.361137, 36.812584, 44.743000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.766251, 37.142612, 44.453236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.090405, 37.376484, 44.438122>,  <38.284897, 37.516808, 44.429054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.090405, 37.376484, 44.438122>,  <37.766251, 37.142612, 44.453236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.090405, 37.376484, 44.438122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122673, 0.106252, -0.986743,
		-0.572917, 0.804274, 0.157829,
		0.810381, 0.584683, -0.037789,
		38.333519, 37.551888, 44.426785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.590378, 37.621212, 43.872841>,  <37.766251, 37.142612, 44.453236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.590378, 37.621212, 43.872841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.987869, 37.619495, 43.917545>,  <38.226364, 37.618465, 43.944366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.987869, 37.619495, 43.917545>,  <37.590378, 37.621212, 43.872841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.987869, 37.619495, 43.917545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111680, -0.015941, -0.993616,
		0.006048, 0.999864, -0.015361,
		0.993726, -0.004294, 0.111762,
		38.285988, 37.618206, 43.951073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.852947, 38.092583, 43.326595>,  <37.590378, 37.621212, 43.872841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.852947, 38.092583, 43.326595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.166206, 37.863613, 43.423759>,  <38.354160, 37.726231, 43.482059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.166206, 37.863613, 43.423759>,  <37.852947, 38.092583, 43.326595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.166206, 37.863613, 43.423759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130638, -0.230467, -0.964271,
		0.607957, 0.786901, -0.105709,
		0.783149, -0.572426, 0.242913,
		38.401150, 37.691887, 43.496632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.282333, 38.141205, 42.861465>,  <37.852947, 38.092583, 43.326595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.282333, 38.141205, 42.861465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.494648, 37.840279, 43.017563>,  <38.622036, 37.659725, 43.111221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.494648, 37.840279, 43.017563>,  <38.282333, 38.141205, 42.861465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.494648, 37.840279, 43.017563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341368, -0.231669, -0.910932,
		0.775712, 0.616730, 0.133847,
		0.530791, -0.752312, 0.390240,
		38.653885, 37.614586, 43.134636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.999340, 38.234516, 42.760609>,  <38.282333, 38.141205, 42.861465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.999340, 38.234516, 42.760609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.898849, 37.847382, 42.766029>,  <38.838554, 37.615101, 42.769283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.898849, 37.847382, 42.766029>,  <38.999340, 38.234516, 42.760609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.898849, 37.847382, 42.766029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421043, -0.121879, -0.898815,
		0.871556, -0.220095, 0.438118,
		-0.251222, -0.967834, 0.013555,
		38.823483, 37.557030, 42.770096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.628914, 37.775993, 42.749458>,  <38.999340, 38.234516, 42.760609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.628914, 37.775993, 42.749458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.319542, 37.570423, 42.601032>,  <39.133919, 37.447079, 42.511974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.319542, 37.570423, 42.601032>,  <39.628914, 37.775993, 42.749458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.319542, 37.570423, 42.601032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537800, -0.222148, -0.813278,
		0.335535, -0.828570, 0.448205,
		-0.773425, -0.513928, -0.371067,
		39.087513, 37.416245, 42.489712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.921238, 37.207897, 42.502811>,  <39.628914, 37.775993, 42.749458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.921238, 37.207897, 42.502811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.580940, 37.231361, 42.293892>,  <39.376762, 37.245441, 42.168541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.580940, 37.231361, 42.293892>,  <39.921238, 37.207897, 42.502811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.580940, 37.231361, 42.293892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502609, -0.199791, -0.841111,
		-0.153694, -0.978081, 0.140485,
		-0.850742, 0.058665, -0.522299,
		39.325718, 37.248959, 42.137203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.746777, 36.619972, 42.096478>,  <39.921238, 37.207897, 42.502811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.746777, 36.619972, 42.096478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.554306, 36.894920, 41.878857>,  <39.438824, 37.059891, 41.748283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.554306, 36.894920, 41.878857>,  <39.746777, 36.619972, 42.096478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.554306, 36.894920, 41.878857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492271, -0.301657, -0.816500,
		-0.725356, -0.660698, -0.193224,
		-0.481173, 0.687372, -0.544052,
		39.409954, 37.101131, 41.715641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.665199, 36.292591, 41.313908>,  <39.746777, 36.619972, 42.096478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.665199, 36.292591, 41.313908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.605999, 36.684425, 41.259491>,  <39.570480, 36.919525, 41.226841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.605999, 36.684425, 41.259491>,  <39.665199, 36.292591, 41.313908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.605999, 36.684425, 41.259491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340839, -0.078611, -0.936829,
		-0.928399, -0.185019, -0.322247,
		-0.147999, 0.979586, -0.136044,
		39.561600, 36.978302, 41.218678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.310177, 36.368008, 40.666618>,  <39.665199, 36.292591, 41.313908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.310177, 36.368008, 40.666618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.492264, 36.718521, 40.729740>,  <39.601517, 36.928829, 40.767612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.492264, 36.718521, 40.729740>,  <39.310177, 36.368008, 40.666618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.492264, 36.718521, 40.729740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324380, 0.001836, -0.945925,
		-0.829189, 0.481791, -0.283414,
		0.455218, 0.876284, 0.157806,
		39.628830, 36.981407, 40.777081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.192326, 36.722649, 40.034416>,  <39.310177, 36.368008, 40.666618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.192326, 36.722649, 40.034416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.492466, 36.928501, 40.200371>,  <39.672550, 37.052013, 40.299942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.492466, 36.928501, 40.200371>,  <39.192326, 36.722649, 40.034416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.492466, 36.928501, 40.200371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410405, 0.129340, -0.902684,
		-0.518213, 0.847598, -0.114158,
		0.750349, 0.514634, 0.414885,
		39.717571, 37.082890, 40.324837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.413174, 37.218811, 39.530472>,  <39.192326, 36.722649, 40.034416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.413174, 37.218811, 39.530472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.709160, 37.282879, 39.791790>,  <39.886753, 37.321320, 39.948582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.709160, 37.282879, 39.791790>,  <39.413174, 37.218811, 39.530472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.709160, 37.282879, 39.791790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607327, 0.258408, -0.751252,
		-0.289148, 0.952664, 0.093935,
		0.739965, 0.160173, 0.653297,
		39.931149, 37.330933, 39.987778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.590702, 37.917973, 39.487957>,  <39.413174, 37.218811, 39.530472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.590702, 37.917973, 39.487957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.913662, 37.732578, 39.633987>,  <40.107437, 37.621342, 39.721603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.913662, 37.732578, 39.633987>,  <39.590702, 37.917973, 39.487957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.913662, 37.732578, 39.633987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553825, 0.382053, -0.739806,
		0.203415, 0.799508, 0.565163,
		0.807403, -0.463489, 0.365072,
		40.155884, 37.593533, 39.743507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.143665, 38.362167, 39.471241>,  <39.590702, 37.917973, 39.487957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.143665, 38.362167, 39.471241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.326107, 38.006695, 39.490040>,  <40.435574, 37.793411, 39.501320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.326107, 38.006695, 39.490040>,  <40.143665, 38.362167, 39.471241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.326107, 38.006695, 39.490040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615304, 0.276761, -0.738109,
		0.642936, 0.365577, 0.673043,
		0.456107, -0.888683, 0.047001,
		40.462940, 37.740089, 39.504139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.831779, 38.546070, 39.439537>,  <40.143665, 38.362167, 39.471241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.831779, 38.546070, 39.439537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.825687, 38.150879, 39.378010>,  <40.822033, 37.913765, 39.341091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.825687, 38.150879, 39.378010>,  <40.831779, 38.546070, 39.439537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.825687, 38.150879, 39.378010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721759, 0.095605, -0.685510,
		0.691977, -0.121461, 0.711629,
		-0.015227, -0.987981, -0.153822,
		40.821117, 37.854485, 39.331863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.487862, 38.290428, 39.631500>,  <40.831779, 38.546070, 39.439537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.487862, 38.290428, 39.631500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.327194, 38.035149, 39.368786>,  <41.230793, 37.881981, 39.211159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.327194, 38.035149, 39.368786>,  <41.487862, 38.290428, 39.631500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.327194, 38.035149, 39.368786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776294, 0.143189, -0.613894,
		0.485828, -0.756442, 0.437912,
		-0.401671, -0.638195, -0.656786,
		41.206692, 37.843689, 39.171749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.976467, 37.842468, 39.374111>,  <41.487862, 38.290428, 39.631500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.976467, 37.842468, 39.374111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.685524, 37.818172, 39.100685>,  <41.510960, 37.803593, 38.936630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.685524, 37.818172, 39.100685>,  <41.976467, 37.842468, 39.374111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.685524, 37.818172, 39.100685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670820, 0.147176, -0.726870,
		0.144743, -0.987245, -0.066314,
		-0.727358, -0.060725, -0.683566,
		41.467316, 37.799950, 38.895615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.337738, 37.599079, 38.733078>,  <41.976467, 37.842468, 39.374111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.337738, 37.599079, 38.733078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.995434, 37.769127, 38.615135>,  <41.790051, 37.871155, 38.544369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.995434, 37.769127, 38.615135>,  <42.337738, 37.599079, 38.733078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.995434, 37.769127, 38.615135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432931, 0.276391, -0.858009,
		-0.283263, -0.861905, -0.420574,
		-0.855764, 0.425122, -0.294854,
		41.738705, 37.896664, 38.526680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.290909, 37.425293, 38.034714>,  <42.337738, 37.599079, 38.733078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.290909, 37.425293, 38.034714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.059059, 37.746227, 38.091698>,  <41.919949, 37.938789, 38.125889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.059059, 37.746227, 38.091698>,  <42.290909, 37.425293, 38.034714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.059059, 37.746227, 38.091698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342983, 0.398787, -0.850489,
		-0.739190, -0.444100, -0.506333,
		-0.579621, 0.802337, 0.142461,
		41.885174, 37.986927, 38.134438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.919113, 36.778133, 38.118073>,  <42.290909, 37.425293, 38.034714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.919113, 36.778133, 38.118073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.033104, 36.804585, 37.735573>,  <42.101498, 36.820457, 37.506073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.033104, 36.804585, 37.735573>,  <41.919113, 36.778133, 38.118073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.033104, 36.804585, 37.735573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948234, 0.126420, 0.291326,
		0.140155, -0.989770, -0.026682,
		0.284972, 0.066132, -0.956252,
		42.118595, 36.824425, 37.448696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.374249, 36.284775, 38.090885>,  <41.919113, 36.778133, 38.118073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.374249, 36.284775, 38.090885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.431171, 36.561836, 37.808048>,  <42.465324, 36.728073, 37.638348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.431171, 36.561836, 37.808048>,  <42.374249, 36.284775, 38.090885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.431171, 36.561836, 37.808048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957008, 0.086132, 0.276979,
		0.252754, -0.716109, -0.650617,
		0.142309, 0.692653, -0.707092,
		42.473866, 36.769630, 37.595921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.962093, 36.125416, 37.699680>,  <42.374249, 36.284775, 38.090885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.962093, 36.125416, 37.699680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.938713, 36.524399, 37.716011>,  <42.924686, 36.763786, 37.725811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.938713, 36.524399, 37.716011>,  <42.962093, 36.125416, 37.699680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.938713, 36.524399, 37.716011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962819, 0.045518, 0.266285,
		0.263749, 0.054874, -0.963029,
		-0.058447, 0.997455, 0.040829,
		42.921181, 36.823635, 37.728260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.396660, 36.446461, 37.240559>,  <42.962093, 36.125416, 37.699680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.396660, 36.446461, 37.240559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.334461, 36.645515, 37.581890>,  <43.297142, 36.764950, 37.786690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.334461, 36.645515, 37.581890>,  <43.396660, 36.446461, 37.240559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.334461, 36.645515, 37.581890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881157, -0.320599, 0.347532,
		0.446523, 0.805959, -0.388648,
		-0.155497, 0.497641, 0.853331,
		43.287811, 36.794807, 37.837891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.025230, 36.862236, 37.459991>,  <43.396660, 36.446461, 37.240559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.025230, 36.862236, 37.459991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.796295, 36.729080, 37.759754>,  <43.658936, 36.649185, 37.939613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.796295, 36.729080, 37.759754>,  <44.025230, 36.862236, 37.459991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.796295, 36.729080, 37.759754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805187, -0.401174, 0.436730,
		0.155260, 0.853372, 0.497646,
		-0.572336, -0.332891, 0.749410,
		43.624596, 36.629211, 37.984577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.393620, 37.001785, 38.071720>,  <44.025230, 36.862236, 37.459991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.393620, 37.001785, 38.071720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.147129, 36.693920, 38.138512>,  <43.999233, 36.509201, 38.178589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.147129, 36.693920, 38.138512>,  <44.393620, 37.001785, 38.071720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.147129, 36.693920, 38.138512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716155, -0.459394, 0.525432,
		-0.327695, 0.443370, 0.834289,
		-0.616229, -0.769662, 0.166981,
		43.962261, 36.463020, 38.188606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.215313, 36.858555, 38.852039>,  <44.393620, 37.001785, 38.071720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.215313, 36.858555, 38.852039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.248543, 36.550488, 38.599079>,  <44.268478, 36.365646, 38.447304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.248543, 36.550488, 38.599079>,  <44.215313, 36.858555, 38.852039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.248543, 36.550488, 38.599079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630629, -0.450742, 0.631774,
		-0.771626, -0.451294, 0.448250,
		0.083071, -0.770173, -0.632403,
		44.273464, 36.319435, 38.409359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.205559, 36.275635, 39.176613>,  <44.215313, 36.858555, 38.852039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.205559, 36.275635, 39.176613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.376404, 36.119839, 38.850208>,  <44.478909, 36.026363, 38.654366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.376404, 36.119839, 38.850208>,  <44.205559, 36.275635, 39.176613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.376404, 36.119839, 38.850208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332793, -0.771408, 0.542382,
		-0.840731, -0.503219, -0.199856,
		0.427108, -0.389487, -0.816014,
		44.504536, 36.002995, 38.605404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.084152, 35.618832, 39.301140>,  <44.205559, 36.275635, 39.176613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.084152, 35.618832, 39.301140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.386902, 35.596394, 39.040680>,  <44.568554, 35.582932, 38.884403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.386902, 35.596394, 39.040680>,  <44.084152, 35.618832, 39.301140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.386902, 35.596394, 39.040680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441126, -0.691287, 0.572302,
		-0.482230, -0.720400, -0.498476,
		0.756877, -0.056090, -0.651146,
		44.613964, 35.579567, 38.845337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.190063, 34.924263, 39.216370>,  <44.084152, 35.618832, 39.301140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.190063, 34.924263, 39.216370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.531857, 35.102859, 39.110165>,  <44.736935, 35.210018, 39.046440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.531857, 35.102859, 39.110165>,  <44.190063, 34.924263, 39.216370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.531857, 35.102859, 39.110165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505619, -0.597579, 0.622293,
		0.119182, -0.665991, -0.736378,
		0.854485, 0.446493, -0.265517,
		44.788200, 35.236809, 39.030510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.600681, 34.330345, 39.122032>,  <44.190063, 34.924263, 39.216370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.600681, 34.330345, 39.122032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.861244, 34.630695, 39.165592>,  <45.017582, 34.810905, 39.191727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.861244, 34.630695, 39.165592>,  <44.600681, 34.330345, 39.122032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.861244, 34.630695, 39.165592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599674, -0.597450, 0.532396,
		0.464825, -0.281501, -0.839461,
		0.651406, 0.750873, 0.108901,
		45.056667, 34.855957, 39.198261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.228130, 34.066181, 39.002182>,  <44.600681, 34.330345, 39.122032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.228130, 34.066181, 39.002182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.308247, 34.400242, 39.207088>,  <45.356316, 34.600677, 39.330032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.308247, 34.400242, 39.207088>,  <45.228130, 34.066181, 39.002182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.308247, 34.400242, 39.207088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489906, -0.538168, 0.685833,
		0.848455, 0.113594, -0.516934,
		0.200291, 0.835148, 0.512262,
		45.368336, 34.650787, 39.360767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.877323, 33.951962, 39.325817>,  <45.228130, 34.066181, 39.002182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.877323, 33.951962, 39.325817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.712917, 34.247326, 39.539665>,  <45.614273, 34.424545, 39.667973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.712917, 34.247326, 39.539665>,  <45.877323, 33.951962, 39.325817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.712917, 34.247326, 39.539665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478844, -0.324161, 0.815860,
		0.775742, 0.591329, -0.220349,
		-0.411013, 0.738410, 0.534620,
		45.589615, 34.468849, 39.700050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.460133, 34.230389, 39.720188>,  <45.877323, 33.951962, 39.325817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.460133, 34.230389, 39.720188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.117477, 34.311623, 39.909897>,  <45.911884, 34.360363, 40.023724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.117477, 34.311623, 39.909897>,  <46.460133, 34.230389, 39.720188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.117477, 34.311623, 39.909897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377833, -0.379015, 0.844743,
		0.351308, 0.902832, 0.247946,
		-0.856636, 0.203082, 0.474270,
		45.860485, 34.372547, 40.052177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.676064, 34.388836, 40.436535>,  <46.460133, 34.230389, 39.720188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.676064, 34.388836, 40.436535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.283878, 34.312653, 40.456238>,  <46.048569, 34.266941, 40.468060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.283878, 34.312653, 40.456238>,  <46.676064, 34.388836, 40.436535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.283878, 34.312653, 40.456238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131137, -0.446128, 0.885309,
		-0.146640, 0.874469, 0.462387,
		-0.980459, -0.190457, 0.049255,
		45.989742, 34.255516, 40.471016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.572498, 34.344379, 41.101795>,  <46.676064, 34.388836, 40.436535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.572498, 34.344379, 41.101795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.236862, 34.161709, 40.983555>,  <46.035480, 34.052105, 40.912609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.236862, 34.161709, 40.983555>,  <46.572498, 34.344379, 41.101795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.236862, 34.161709, 40.983555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069711, -0.629172, 0.774134,
		-0.539514, 0.628958, 0.559765,
		-0.839086, -0.456678, -0.295601,
		45.985138, 34.024704, 40.894875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.104752, 34.278763, 41.697235>,  <46.572498, 34.344379, 41.101795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.104752, 34.278763, 41.697235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.984455, 34.002506, 41.434155>,  <45.912277, 33.836754, 41.276306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.984455, 34.002506, 41.434155>,  <46.104752, 34.278763, 41.697235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.984455, 34.002506, 41.434155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018336, -0.685315, 0.728016,
		-0.953528, 0.231007, 0.193441,
		-0.300745, -0.690637, -0.657703,
		45.894230, 33.795315, 41.236843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.667461, 33.855095, 42.129429>,  <46.104752, 34.278763, 41.697235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.667461, 33.855095, 42.129429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.731663, 33.637856, 41.799755>,  <45.770184, 33.507511, 41.601952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.731663, 33.637856, 41.799755>,  <45.667461, 33.855095, 42.129429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.731663, 33.637856, 41.799755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120857, -0.839545, 0.529677,
		-0.979608, 0.014593, -0.200388,
		0.160505, -0.543094, -0.824189,
		45.779816, 33.474926, 41.552498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.067120, 33.421722, 41.954891>,  <45.667461, 33.855095, 42.129429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.067120, 33.421722, 41.954891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.412579, 33.256832, 41.838840>,  <45.619854, 33.157898, 41.769211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.412579, 33.256832, 41.838840>,  <45.067120, 33.421722, 41.954891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.412579, 33.256832, 41.838840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188348, -0.797752, 0.572815,
		-0.467582, -0.440067, -0.766621,
		0.863650, -0.412230, -0.290129,
		45.671673, 33.133163, 41.751801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.904793, 32.712231, 41.783405>,  <45.067120, 33.421722, 41.954891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.904793, 32.712231, 41.783405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.302933, 32.674885, 41.773975>,  <45.541817, 32.652477, 41.768318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.302933, 32.674885, 41.773975>,  <44.904793, 32.712231, 41.783405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.302933, 32.674885, 41.773975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074584, -0.902342, 0.424518,
		-0.060904, -0.420787, -0.905113,
		0.995353, -0.093361, -0.023572,
		45.601540, 32.646877, 41.766903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.040005, 32.025135, 41.675053>,  <44.904793, 32.712231, 41.783405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.040005, 32.025135, 41.675053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.383812, 32.138443, 41.845219>,  <45.590096, 32.206429, 41.947319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.383812, 32.138443, 41.845219>,  <45.040005, 32.025135, 41.675053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.383812, 32.138443, 41.845219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027692, -0.856942, 0.514668,
		0.510348, -0.430588, -0.744405,
		0.859522, 0.283274, 0.425414,
		45.641670, 32.223427, 41.972843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.458241, 31.403519, 41.515053>,  <45.040005, 32.025135, 41.675053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.458241, 31.403519, 41.515053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.612209, 31.629595, 41.806915>,  <45.704590, 31.765242, 41.982033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.612209, 31.629595, 41.806915>,  <45.458241, 31.403519, 41.515053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.612209, 31.629595, 41.806915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198202, -0.822742, 0.532740,
		0.901416, -0.060444, -0.428713,
		0.384922, 0.565193, 0.729653,
		45.727684, 31.799152, 42.025810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.133690, 31.040920, 41.677708>,  <45.458241, 31.403519, 41.515053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.133690, 31.040920, 41.677708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.023899, 31.263618, 41.991318>,  <45.958023, 31.397238, 42.179485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.023899, 31.263618, 41.991318>,  <46.133690, 31.040920, 41.677708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.023899, 31.263618, 41.991318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089440, -0.797024, 0.597288,
		0.957424, 0.234067, 0.168973,
		-0.274481, 0.556745, 0.784025,
		45.941555, 31.430641, 42.226524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.635746, 30.869600, 42.191586>,  <46.133690, 31.040920, 41.677708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.635746, 30.869600, 42.191586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.328094, 31.039211, 42.382854>,  <46.143505, 31.140978, 42.497616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.328094, 31.039211, 42.382854>,  <46.635746, 30.869600, 42.191586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.328094, 31.039211, 42.382854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048089, -0.784469, 0.618301,
		0.637286, 0.452557, 0.623746,
		-0.769125, 0.424030, 0.478168,
		46.097359, 31.166420, 42.526306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.707737, 30.698772, 42.974751>,  <46.635746, 30.869600, 42.191586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.707737, 30.698772, 42.974751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.327728, 30.794788, 42.894917>,  <46.099724, 30.852398, 42.847015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.327728, 30.794788, 42.894917>,  <46.707737, 30.698772, 42.974751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.327728, 30.794788, 42.894917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299264, -0.882258, 0.363403,
		-0.088853, 0.404970, 0.910003,
		-0.950024, 0.240042, -0.199584,
		46.042721, 30.866800, 42.835041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.435108, 30.441872, 43.552101>,  <46.707737, 30.698772, 42.974751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.435108, 30.441872, 43.552101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.138969, 30.485365, 43.286751>,  <45.961285, 30.511461, 43.127541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.138969, 30.485365, 43.286751>,  <46.435108, 30.441872, 43.552101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.138969, 30.485365, 43.286751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430381, -0.834733, 0.343500,
		-0.516389, 0.539812, 0.664789,
		-0.740348, 0.108733, -0.663372,
		45.916866, 30.517984, 43.087738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.850529, 30.221756, 43.958176>,  <46.435108, 30.441872, 43.552101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.850529, 30.221756, 43.958176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.704578, 30.188124, 43.587273>,  <45.617008, 30.167944, 43.364731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.704578, 30.188124, 43.587273>,  <45.850529, 30.221756, 43.958176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.704578, 30.188124, 43.587273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225578, -0.958259, 0.175656,
		-0.903317, 0.273260, 0.330676,
		-0.364873, -0.084080, -0.927253,
		45.595116, 30.162899, 43.309097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.156738, 29.880163, 43.983654>,  <45.850529, 30.221756, 43.958176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.156738, 29.880163, 43.983654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.339256, 29.828421, 43.631504>,  <45.448765, 29.797375, 43.420212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.339256, 29.828421, 43.631504>,  <45.156738, 29.880163, 43.983654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.339256, 29.828421, 43.631504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154268, -0.985895, 0.064905,
		-0.876357, 0.106198, -0.469810,
		0.456290, -0.129357, -0.880378,
		45.476143, 29.789614, 43.367390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.720158, 29.599672, 43.415489>,  <45.156738, 29.880163, 43.983654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.720158, 29.599672, 43.415489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.100422, 29.486443, 43.364719>,  <45.328583, 29.418505, 43.334259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.100422, 29.486443, 43.364719>,  <44.720158, 29.599672, 43.415489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.100422, 29.486443, 43.364719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266152, -0.954415, 0.135109,
		-0.159381, -0.094663, -0.982668,
		0.950663, -0.283073, -0.126920,
		45.385620, 29.401522, 43.326645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.034786, 28.903898, 43.136463>,  <44.720158, 29.599672, 43.415489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.034786, 28.903898, 43.136463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.814362, 28.590723, 43.020992>,  <44.682106, 28.402817, 42.951710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.814362, 28.590723, 43.020992>,  <45.034786, 28.903898, 43.136463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.814362, 28.590723, 43.020992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543477, 0.599254, -0.587816,
		0.633215, -0.167035, -0.755737,
		-0.551064, -0.782939, -0.288677,
		44.649044, 28.355841, 42.934391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.664703, 29.123043, 42.597660>,  <45.034786, 28.903898, 43.136463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.664703, 29.123043, 42.597660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.524933, 28.749235, 42.624733>,  <44.441071, 28.524950, 42.640976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.524933, 28.749235, 42.624733>,  <44.664703, 29.123043, 42.597660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.524933, 28.749235, 42.624733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722953, 0.222960, -0.653932,
		0.596022, -0.277428, -0.753520,
		-0.349424, -0.934517, 0.067678,
		44.420105, 28.468880, 42.645035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.639465, 28.875055, 41.869095>,  <44.664703, 29.123043, 42.597660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.639465, 28.875055, 41.869095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.364384, 28.725422, 42.117973>,  <44.199333, 28.635641, 42.267300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.364384, 28.725422, 42.117973>,  <44.639465, 28.875055, 41.869095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.364384, 28.725422, 42.117973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725847, 0.337295, -0.599482,
		0.014393, -0.863884, -0.503486,
		-0.687706, -0.374082, 0.622192,
		44.158073, 28.613197, 42.304630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.262566, 28.413528, 41.489761>,  <44.639465, 28.875055, 41.869095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.262566, 28.413528, 41.489761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.048740, 28.529888, 41.807156>,  <43.920444, 28.599703, 41.997593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.048740, 28.529888, 41.807156>,  <44.262566, 28.413528, 41.489761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.048740, 28.529888, 41.807156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706004, 0.362378, -0.608475,
		-0.464546, -0.885472, 0.011662,
		-0.534561, 0.290898, 0.793488,
		43.888371, 28.617157, 42.045200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.615631, 28.235146, 41.464939>,  <44.262566, 28.413528, 41.489761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.615631, 28.235146, 41.464939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.588470, 28.567417, 41.685978>,  <43.572174, 28.766781, 41.818600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.588470, 28.567417, 41.685978>,  <43.615631, 28.235146, 41.464939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.588470, 28.567417, 41.685978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678273, 0.367755, -0.636162,
		-0.731666, -0.418006, 0.538457,
		-0.067899, 0.830679, 0.552596,
		43.568100, 28.816620, 41.851757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.048031, 28.231012, 41.028542>,  <43.615631, 28.235146, 41.464939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.048031, 28.231012, 41.028542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.801823, 28.443928, 41.261024>,  <42.654099, 28.571678, 41.400517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.801823, 28.443928, 41.261024>,  <43.048031, 28.231012, 41.028542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.801823, 28.443928, 41.261024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763202, -0.218588, -0.608064,
		-0.196610, -0.817864, 0.540779,
		-0.615522, 0.532275, 0.581219,
		42.617168, 28.603615, 41.435387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.406082, 28.195601, 40.293175>,  <43.048031, 28.231012, 41.028542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.406082, 28.195601, 40.293175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.365425, 28.589916, 40.346676>,  <43.341030, 28.826506, 40.378777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.365425, 28.589916, 40.346676>,  <43.406082, 28.195601, 40.293175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.365425, 28.589916, 40.346676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847545, 0.015409, 0.530500,
		0.520900, 0.167282, -0.837066,
		-0.101642, 0.985789, 0.133753,
		43.334934, 28.885653, 40.386803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.743000, 28.453289, 39.595917>,  <43.406082, 28.195601, 40.293175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.743000, 28.453289, 39.595917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.592747, 28.318342, 39.250645>,  <43.502594, 28.237373, 39.043480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.592747, 28.318342, 39.250645>,  <43.743000, 28.453289, 39.595917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.592747, 28.318342, 39.250645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689907, 0.520107, -0.503505,
		0.618814, -0.784647, 0.037386,
		-0.375630, -0.337369, -0.863183,
		43.480057, 28.217133, 38.991692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.191048, 28.071379, 39.135525>,  <43.743000, 28.453289, 39.595917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.191048, 28.071379, 39.135525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.899696, 28.231926, 38.913403>,  <43.724888, 28.328255, 38.780128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.899696, 28.231926, 38.913403>,  <44.191048, 28.071379, 39.135525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.899696, 28.231926, 38.913403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673415, 0.568877, -0.472113,
		0.126410, -0.717830, -0.684646,
		-0.728377, 0.401371, -0.555310,
		43.681183, 28.352337, 38.746811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.280090, 27.980272, 38.382000>,  <44.191048, 28.071379, 39.135525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.280090, 27.980272, 38.382000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.055996, 28.306923, 38.437511>,  <43.921539, 28.502913, 38.470818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.055996, 28.306923, 38.437511>,  <44.280090, 27.980272, 38.382000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.055996, 28.306923, 38.437511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673116, 0.546464, -0.498289,
		-0.482755, -0.185741, -0.855832,
		-0.560234, 0.816626, 0.138783,
		43.887924, 28.551910, 38.479145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.294544, 28.411453, 37.764629>,  <44.280090, 27.980272, 38.382000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.294544, 28.411453, 37.764629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.211693, 28.639469, 38.082661>,  <44.161980, 28.776278, 38.273479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.211693, 28.639469, 38.082661>,  <44.294544, 28.411453, 37.764629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.211693, 28.639469, 38.082661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626459, 0.701512, -0.339750,
		-0.751429, 0.427711, -0.502412,
		-0.207133, 0.570039, 0.795080,
		44.149551, 28.810480, 38.321186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.260040, 29.022278, 37.536674>,  <44.294544, 28.411453, 37.764629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.260040, 29.022278, 37.536674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.317101, 29.116627, 37.921177>,  <44.351337, 29.173237, 38.151878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.317101, 29.116627, 37.921177>,  <44.260040, 29.022278, 37.536674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.317101, 29.116627, 37.921177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714653, 0.647376, -0.264906,
		-0.684779, 0.724754, -0.076220,
		0.142649, 0.235873, 0.961257,
		44.359894, 29.187389, 38.209553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.106136, 29.720900, 37.552811>,  <44.260040, 29.022278, 37.536674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.106136, 29.720900, 37.552811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.347828, 29.604624, 37.849567>,  <44.492844, 29.534859, 38.027622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.347828, 29.604624, 37.849567>,  <44.106136, 29.720900, 37.552811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.347828, 29.604624, 37.849567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695219, 0.647261, -0.312608,
		-0.389324, 0.704665, 0.593190,
		0.604233, -0.290691, 0.741891,
		44.529099, 29.517416, 38.072136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.224339, 30.330763, 37.995369>,  <44.106136, 29.720900, 37.552811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.224339, 30.330763, 37.995369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.529469, 30.102362, 38.116726>,  <44.712547, 29.965321, 38.189541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.529469, 30.102362, 38.116726>,  <44.224339, 30.330763, 37.995369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.529469, 30.102362, 38.116726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631371, 0.759014, -0.158961,
		-0.139513, 0.312814, 0.939513,
		0.762828, -0.571004, 0.303394,
		44.758316, 29.931061, 38.207745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.747498, 30.780355, 38.379124>,  <44.224339, 30.330763, 37.995369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.747498, 30.780355, 38.379124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.982510, 30.464838, 38.306892>,  <45.123516, 30.275528, 38.263554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.982510, 30.464838, 38.306892>,  <44.747498, 30.780355, 38.379124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.982510, 30.464838, 38.306892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782922, 0.610525, -0.119546,
		0.204545, -0.071142, 0.976268,
		0.587532, -0.788795, -0.180578,
		45.158768, 30.228199, 38.252720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.340893, 30.976608, 38.626980>,  <44.747498, 30.780355, 38.379124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.340893, 30.976608, 38.626980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.437683, 30.685793, 38.369961>,  <45.495758, 30.511303, 38.215752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.437683, 30.685793, 38.369961>,  <45.340893, 30.976608, 38.626980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.437683, 30.685793, 38.369961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628166, 0.622092, -0.467342,
		0.739498, -0.290540, 0.607231,
		0.241972, -0.727040, -0.642543,
		45.510273, 30.467680, 38.177197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.086796, 30.966352, 38.654331>,  <45.340893, 30.976608, 38.626980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.086796, 30.966352, 38.654331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.969692, 30.797235, 38.311275>,  <45.899429, 30.695766, 38.105442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.969692, 30.797235, 38.311275>,  <46.086796, 30.966352, 38.654331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.969692, 30.797235, 38.311275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556805, 0.653792, -0.512372,
		0.777341, -0.627538, 0.044008,
		-0.292761, -0.422791, -0.857636,
		45.881863, 30.670399, 38.053986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.713131, 30.887012, 38.354965>,  <46.086796, 30.966352, 38.654331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.713131, 30.887012, 38.354965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.436302, 30.879234, 38.066338>,  <46.270206, 30.874567, 37.893162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.436302, 30.879234, 38.066338>,  <46.713131, 30.887012, 38.354965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.436302, 30.879234, 38.066338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552442, 0.629128, -0.546815,
		0.464588, -0.777058, -0.424662,
		-0.692073, -0.019443, -0.721565,
		46.228680, 30.873402, 37.849869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.086803, 30.814508, 37.633053>,  <46.713131, 30.887012, 38.354965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.086803, 30.814508, 37.633053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.722992, 30.980209, 37.619492>,  <46.504704, 31.079630, 37.611355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.722992, 30.980209, 37.619492>,  <47.086803, 30.814508, 37.633053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.722992, 30.980209, 37.619492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377787, 0.789947, -0.482971,
		-0.173291, -0.452084, -0.874980,
		-0.909531, 0.414251, -0.033901,
		46.450134, 31.104485, 37.609322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.231575, 31.148214, 36.998028>,  <47.086803, 30.814508, 37.633053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.231575, 31.148214, 36.998028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.883980, 31.290504, 37.135616>,  <46.675423, 31.375877, 37.218170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.883980, 31.290504, 37.135616>,  <47.231575, 31.148214, 36.998028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.883980, 31.290504, 37.135616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197387, 0.886625, -0.418253,
		-0.453754, -0.295563, -0.840684,
		-0.868991, 0.355724, 0.343969,
		46.623283, 31.397223, 37.238808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.999588, 31.566874, 36.450020>,  <47.231575, 31.148214, 36.998028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.999588, 31.566874, 36.450020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.789585, 31.682535, 36.770210>,  <46.663582, 31.751932, 36.962322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.789585, 31.682535, 36.770210>,  <46.999588, 31.566874, 36.450020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.789585, 31.682535, 36.770210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186937, 0.956729, -0.222989,
		-0.830314, 0.032567, -0.556344,
		-0.525008, 0.289152, 0.800473,
		46.632084, 31.769281, 37.010353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.577236, 32.214302, 36.226063>,  <46.999588, 31.566874, 36.450020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.577236, 32.214302, 36.226063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.590824, 32.204525, 36.625713>,  <46.598976, 32.198658, 36.865501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.590824, 32.204525, 36.625713>,  <46.577236, 32.214302, 36.226063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.590824, 32.204525, 36.625713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005517, 0.999681, 0.024642,
		-0.999408, -0.006350, 0.033823,
		0.033969, -0.024441, 0.999124,
		46.601013, 32.197193, 36.925449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.100830, 32.753067, 36.434917>,  <46.577236, 32.214302, 36.226063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.100830, 32.753067, 36.434917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.329025, 32.669300, 36.752579>,  <46.465942, 32.619038, 36.943176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.329025, 32.669300, 36.752579>,  <46.100830, 32.753067, 36.434917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.329025, 32.669300, 36.752579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168049, 0.976252, 0.136720,
		-0.803930, 0.055460, 0.592133,
		0.570488, -0.209421, 0.794158,
		46.500172, 32.606472, 36.990826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.852665, 33.115475, 36.993332>,  <46.100830, 32.753067, 36.434917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.852665, 33.115475, 36.993332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.229473, 33.043034, 37.106331>,  <46.455559, 32.999569, 37.174129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.229473, 33.043034, 37.106331>,  <45.852665, 33.115475, 36.993332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.229473, 33.043034, 37.106331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134984, 0.975255, 0.175089,
		-0.307219, -0.126804, 0.943153,
		0.942017, -0.181101, 0.282501,
		46.512077, 32.988705, 37.191082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.974083, 33.550556, 37.538483>,  <45.852665, 33.115475, 36.993332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.974083, 33.550556, 37.538483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.318439, 33.444115, 37.365021>,  <46.525055, 33.380249, 37.260944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.318439, 33.444115, 37.365021>,  <45.974083, 33.550556, 37.538483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.318439, 33.444115, 37.365021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189851, 0.958774, -0.211445,
		0.472039, 0.099702, 0.875922,
		0.860892, -0.266105, -0.433651,
		46.576706, 33.364285, 37.234924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.518101, 33.958080, 37.876057>,  <45.974083, 33.550556, 37.538483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.518101, 33.958080, 37.876057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.659492, 33.837906, 37.521706>,  <46.744328, 33.765800, 37.309093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.659492, 33.837906, 37.521706>,  <46.518101, 33.958080, 37.876057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.659492, 33.837906, 37.521706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136486, 0.953451, -0.268892,
		0.925430, -0.025862, 0.378034,
		0.353483, -0.300437, -0.885882,
		46.765537, 33.747776, 37.255939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.022930, 34.367622, 37.836533>,  <46.518101, 33.958080, 37.876057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.022930, 34.367622, 37.836533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.976959, 34.221718, 37.466938>,  <46.949375, 34.134174, 37.245182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.976959, 34.221718, 37.466938>,  <47.022930, 34.367622, 37.836533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.976959, 34.221718, 37.466938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258503, 0.887118, -0.382357,
		0.959150, -0.282796, -0.007663,
		-0.114927, -0.364757, -0.923983,
		46.942482, 34.112289, 37.189743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.660252, 34.588799, 37.344131>,  <47.022930, 34.367622, 37.836533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.660252, 34.588799, 37.344131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.341095, 34.500656, 37.119698>,  <47.149601, 34.447769, 36.985039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.341095, 34.500656, 37.119698>,  <47.660252, 34.588799, 37.344131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.341095, 34.500656, 37.119698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039062, 0.909932, -0.412913,
		0.601535, -0.351377, -0.717419,
		-0.797891, -0.220358, -0.561082,
		47.101727, 34.434547, 36.951374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.720619, 35.162247, 36.973534>,  <47.660252, 34.588799, 37.344131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.720619, 35.162247, 36.973534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.390392, 34.979904, 36.840488>,  <47.192257, 34.870499, 36.760662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.390392, 34.979904, 36.840488>,  <47.720619, 35.162247, 36.973534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.390392, 34.979904, 36.840488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233857, 0.812813, -0.533522,
		0.513563, -0.362674, -0.777638,
		-0.825569, -0.455853, -0.332617,
		47.142723, 34.843147, 36.740704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.652847, 35.007626, 36.232201>,  <47.720619, 35.162247, 36.973534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.652847, 35.007626, 36.232201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.309002, 35.084915, 36.421402>,  <47.102695, 35.131290, 36.534924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.309002, 35.084915, 36.421402>,  <47.652847, 35.007626, 36.232201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.309002, 35.084915, 36.421402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050581, 0.889008, -0.455089,
		-0.508433, -0.415126, -0.754431,
		-0.859614, 0.193222, 0.472999,
		47.051117, 35.142883, 36.563301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.169674, 35.135918, 35.726933>,  <47.652847, 35.007626, 36.232201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.169674, 35.135918, 35.726933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.069752, 35.328362, 36.063057>,  <47.009800, 35.443829, 36.264732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.069752, 35.328362, 36.063057>,  <47.169674, 35.135918, 35.726933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.069752, 35.328362, 36.063057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082939, 0.875270, -0.476470,
		-0.964738, -0.049329, -0.258548,
		-0.249803, 0.481113, 0.840315,
		46.994812, 35.472694, 36.315151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.660721, 34.953392, 35.188160>,  <47.169674, 35.135918, 35.726933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.660721, 34.953392, 35.188160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.007339, 35.152561, 35.201797>,  <47.215313, 35.272064, 35.209980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.007339, 35.152561, 35.201797>,  <46.660721, 34.953392, 35.188160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.007339, 35.152561, 35.201797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433945, -0.717941, -0.544292,
		-0.246538, 0.486451, -0.838203,
		0.866551, 0.497922, 0.034093,
		47.267303, 35.301937, 35.212025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.814533, 35.161789, 34.494106>,  <46.660721, 34.953392, 35.188160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.814533, 35.161789, 34.494106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.436440, 35.199665, 34.619045>,  <46.209583, 35.222389, 34.694008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.436440, 35.199665, 34.619045>,  <46.814533, 35.161789, 34.494106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.436440, 35.199665, 34.619045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292355, 0.179800, -0.939255,
		-0.145095, -0.979135, -0.142271,
		-0.945238, 0.094688, 0.312344,
		46.152866, 35.228069, 34.712749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.448891, 34.749466, 34.660946>,  <46.814533, 35.161789, 34.494106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.448891, 34.749466, 34.660946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.602089, 34.975662, 34.953121>,  <47.694008, 35.111378, 35.128426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.602089, 34.975662, 34.953121>,  <47.448891, 34.749466, 34.660946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.602089, 34.975662, 34.953121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244235, 0.824582, -0.510309,
		-0.890880, 0.017045, 0.453919,
		0.382992, 0.565486, 0.730440,
		47.716988, 35.145309, 35.172253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.607986, 41.133949, 45.337494> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.212070, 41.190475, 45.330032>,  <33.974522, 41.224392, 45.325554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.212070, 41.190475, 45.330032>,  <34.607986, 41.133949, 45.337494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.212070, 41.190475, 45.330032> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019903, -0.266611, -0.963599,
		-0.141150, -0.953387, 0.266701,
		-0.989788, 0.141320, -0.018657,
		33.915134, 41.232872, 45.324436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.276901, 40.474007, 45.074722>,  <34.607986, 41.133949, 45.337494>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.276901, 40.474007, 45.074722> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.026924, 40.776134, 44.995785>,  <33.876938, 40.957413, 44.948421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.026924, 40.776134, 44.995785>,  <34.276901, 40.474007, 45.074722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.026924, 40.776134, 44.995785> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001235, -0.253737, -0.967272,
		-0.780672, -0.604244, 0.159503,
		-0.624940, 0.755319, -0.197339,
		33.839443, 41.002731, 44.936584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.713356, 40.147308, 44.551205>,  <34.276901, 40.474007, 45.074722>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.713356, 40.147308, 44.551205> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.688404, 40.545521, 44.522846>,  <33.673431, 40.784447, 44.505833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.688404, 40.545521, 44.522846>,  <33.713356, 40.147308, 44.551205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.688404, 40.545521, 44.522846> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259370, -0.084763, -0.962051,
		-0.963761, -0.041627, 0.263499,
		-0.062383, 0.995531, -0.070895,
		33.669689, 40.844181, 44.501579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.062321, 40.234821, 44.179024>,  <33.713356, 40.147308, 44.551205>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.062321, 40.234821, 44.179024> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.285522, 40.563625, 44.133537>,  <33.419441, 40.760910, 44.106247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.285522, 40.563625, 44.133537>,  <33.062321, 40.234821, 44.179024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.285522, 40.563625, 44.133537> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235214, 0.025257, -0.971615,
		-0.795808, 0.568909, 0.207442,
		0.558000, 0.822013, -0.113715,
		33.452923, 40.810230, 44.099422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.655964, 40.688507, 43.659317>,  <33.062321, 40.234821, 44.179024>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.655964, 40.688507, 43.659317> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.031105, 40.827290, 43.662453>,  <33.256187, 40.910561, 43.664333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.031105, 40.827290, 43.662453>,  <32.655964, 40.688507, 43.659317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.031105, 40.827290, 43.662453> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015724, -0.019912, -0.999678,
		-0.346689, 0.937669, -0.024131,
		0.937848, 0.346957, 0.007841,
		33.312458, 40.931377, 43.664806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.730118, 41.047264, 43.110058>,  <32.655964, 40.688507, 43.659317>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.730118, 41.047264, 43.110058> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.123665, 41.018837, 43.175728>,  <33.359795, 41.001781, 43.215130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.123665, 41.018837, 43.175728>,  <32.730118, 41.047264, 43.110058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.123665, 41.018837, 43.175728> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176740, 0.244220, -0.953478,
		0.027663, 0.967112, 0.252840,
		0.983869, -0.071063, 0.164171,
		33.418827, 40.997517, 43.224979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.986546, 41.706745, 42.828205>,  <32.730118, 41.047264, 43.110058>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.986546, 41.706745, 42.828205> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.241577, 41.398998, 42.844082>,  <33.394596, 41.214352, 42.853607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.241577, 41.398998, 42.844082>,  <32.986546, 41.706745, 42.828205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.241577, 41.398998, 42.844082> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140065, 0.065101, -0.988000,
		0.757548, 0.635484, 0.149268,
		0.637575, -0.769365, 0.039691,
		33.432850, 41.168190, 42.855988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.696468, 41.964371, 42.596741>,  <32.986546, 41.706745, 42.828205>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.696468, 41.964371, 42.596741> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.716007, 41.566139, 42.564632>,  <33.727730, 41.327202, 42.545368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.716007, 41.566139, 42.564632>,  <33.696468, 41.964371, 42.596741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.716007, 41.566139, 42.564632> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384447, 0.092913, -0.918459,
		0.921854, 0.014011, 0.387285,
		0.048852, -0.995576, -0.080266,
		33.730663, 41.267467, 42.540554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.347546, 41.725491, 42.337147>,  <33.696468, 41.964371, 42.596741>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.347546, 41.725491, 42.337147> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.146358, 41.396496, 42.230915>,  <34.025646, 41.199097, 42.167175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.146358, 41.396496, 42.230915>,  <34.347546, 41.725491, 42.337147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.146358, 41.396496, 42.230915> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534677, -0.054677, -0.843286,
		0.679073, -0.566145, 0.467268,
		-0.502971, -0.822490, -0.265575,
		33.995468, 41.149750, 42.151241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.823631, 41.294170, 41.935905>,  <34.347546, 41.725491, 42.337147>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.823631, 41.294170, 41.935905> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.487080, 41.090515, 41.863388>,  <34.285149, 40.968323, 41.819878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.487080, 41.090515, 41.863388>,  <34.823631, 41.294170, 41.935905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.487080, 41.090515, 41.863388> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340589, -0.239061, -0.909312,
		0.419625, -0.826819, 0.374546,
		-0.841377, -0.509136, -0.181290,
		34.234665, 40.937775, 41.809002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.996384, 40.570190, 41.683041>,  <34.823631, 41.294170, 41.935905>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.996384, 40.570190, 41.683041> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.624546, 40.653366, 41.561310>,  <34.401443, 40.703270, 41.488274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.624546, 40.653366, 41.561310>,  <34.996384, 40.570190, 41.683041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.624546, 40.653366, 41.561310> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251025, -0.247404, -0.935830,
		-0.269896, -0.946334, 0.177785,
		-0.929593, 0.207948, -0.304327,
		34.345669, 40.715748, 41.470013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.072899, 40.287472, 41.127426>,  <34.996384, 40.570190, 41.683041>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.072899, 40.287472, 41.127426> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.717743, 40.467064, 41.087280>,  <34.504650, 40.574818, 41.063190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.717743, 40.467064, 41.087280>,  <35.072899, 40.287472, 41.127426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.717743, 40.467064, 41.087280> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013595, -0.192458, -0.981211,
		-0.459862, -0.872568, 0.164777,
		-0.887887, 0.448981, -0.100366,
		34.451378, 40.601757, 41.057171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.545086, 39.712723, 40.905376>,  <35.072899, 40.287472, 41.127426>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.545086, 39.712723, 40.905376> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.498642, 40.096195, 40.801495>,  <34.470776, 40.326279, 40.739166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.498642, 40.096195, 40.801495>,  <34.545086, 39.712723, 40.905376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.498642, 40.096195, 40.801495> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305799, -0.214264, -0.927673,
		-0.944989, -0.187132, -0.268286,
		-0.116114, 0.958683, -0.259702,
		34.463806, 40.383801, 40.723583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.432484, 39.631416, 40.301567>,  <34.545086, 39.712723, 40.905376>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.432484, 39.631416, 40.301567> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.476196, 40.028542, 40.282017>,  <34.502422, 40.266815, 40.270287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.476196, 40.028542, 40.282017>,  <34.432484, 39.631416, 40.301567>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.476196, 40.028542, 40.282017> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231855, -0.073271, -0.969987,
		-0.966592, 0.094670, -0.238194,
		0.109282, 0.992808, -0.048873,
		34.508980, 40.326385, 40.267353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.355900, 39.804867, 39.625603>,  <34.432484, 39.631416, 40.301567>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.355900, 39.804867, 39.625603> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.535606, 40.141727, 39.744896>,  <34.643433, 40.343842, 39.816471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.535606, 40.141727, 39.744896>,  <34.355900, 39.804867, 39.625603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.535606, 40.141727, 39.744896> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351983, 0.139965, -0.925482,
		-0.821135, 0.520765, -0.233540,
		0.449271, 0.842149, 0.298230,
		34.670387, 40.394371, 39.834366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.182888, 40.312626, 39.218964>,  <34.355900, 39.804867, 39.625603>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.182888, 40.312626, 39.218964> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.520859, 40.471951, 39.361759>,  <34.723640, 40.567547, 39.447437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.520859, 40.471951, 39.361759>,  <34.182888, 40.312626, 39.218964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.520859, 40.471951, 39.361759> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299391, 0.200889, -0.932742,
		-0.443236, 0.894982, 0.050487,
		0.844930, 0.398310, 0.356991,
		34.774338, 40.591442, 39.468857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.343948, 40.807449, 38.755806>,  <34.182888, 40.312626, 39.218964>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.343948, 40.807449, 38.755806> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.685123, 40.743809, 38.954678>,  <34.889828, 40.705624, 39.074001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.685123, 40.743809, 38.954678>,  <34.343948, 40.807449, 38.755806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.685123, 40.743809, 38.954678> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507668, 0.031070, -0.860992,
		0.121538, 0.986773, 0.107271,
		0.852937, -0.159101, 0.497177,
		34.941006, 40.696079, 39.103832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.877563, 41.252754, 38.413971>,  <34.343948, 40.807449, 38.755806>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.877563, 41.252754, 38.413971> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.119026, 40.994473, 38.601017>,  <35.263905, 40.839504, 38.713245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.119026, 40.994473, 38.601017>,  <34.877563, 41.252754, 38.413971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.119026, 40.994473, 38.601017> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580053, -0.046656, -0.813241,
		0.546930, 0.762161, 0.346378,
		0.603660, -0.645704, 0.467612,
		35.300125, 40.800762, 38.741299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.497868, 41.576878, 38.455360>,  <34.877563, 41.252754, 38.413971>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.497868, 41.576878, 38.455360> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.585056, 41.186504, 38.458191>,  <35.637371, 40.952282, 38.459888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.585056, 41.186504, 38.458191>,  <35.497868, 41.576878, 38.455360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.585056, 41.186504, 38.458191> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590221, 0.126043, -0.797341,
		0.777256, 0.177978, 0.603488,
		0.217974, -0.975929, 0.007078,
		35.650448, 40.893726, 38.460316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.184040, 41.544502, 38.322563>,  <35.497868, 41.576878, 38.455360>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.184040, 41.544502, 38.322563> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.077492, 41.170914, 38.227280>,  <36.013565, 40.946762, 38.170109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.077492, 41.170914, 38.227280>,  <36.184040, 41.544502, 38.322563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.077492, 41.170914, 38.227280> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419244, 0.110272, -0.901152,
		0.867919, -0.339905, 0.362190,
		-0.266366, -0.933973, -0.238211,
		35.997581, 40.890720, 38.155815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.763638, 41.234661, 37.932350>,  <36.184040, 41.544502, 38.322563>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.763638, 41.234661, 37.932350> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.436760, 41.015358, 37.861233>,  <36.240635, 40.883778, 37.818562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.436760, 41.015358, 37.861233>,  <36.763638, 41.234661, 37.932350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.436760, 41.015358, 37.861233> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167704, 0.068937, -0.983424,
		0.551427, -0.833463, 0.035610,
		-0.817192, -0.548259, -0.177789,
		36.191601, 40.850880, 37.807896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.022850, 40.748821, 37.478333>,  <36.763638, 41.234661, 37.932350>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.022850, 40.748821, 37.478333> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.627419, 40.790325, 37.434624>,  <36.390160, 40.815228, 37.408398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.627419, 40.790325, 37.434624>,  <37.022850, 40.748821, 37.478333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.627419, 40.790325, 37.434624> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127527, 0.189832, -0.973499,
		-0.080271, -0.976318, -0.200897,
		-0.988582, 0.103763, -0.109269,
		36.330845, 40.821453, 37.401844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.683277, 40.274220, 37.722660>,  <37.022850, 40.748821, 37.478333>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.683277, 40.274220, 37.722660> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.996185, 40.082581, 37.881916>,  <38.183929, 39.967598, 37.977470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.996185, 40.082581, 37.881916>,  <37.683277, 40.274220, 37.722660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.996185, 40.082581, 37.881916> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416734, 0.072574, 0.906127,
		-0.463020, -0.874755, -0.142884,
		0.782269, -0.479100, 0.398143,
		38.230865, 39.938850, 38.001358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.422600, 39.747860, 38.247517>,  <37.683277, 40.274220, 37.722660>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.422600, 39.747860, 38.247517> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.809025, 39.818214, 38.323196>,  <38.040878, 39.860428, 38.368603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.809025, 39.818214, 38.323196>,  <37.422600, 39.747860, 38.247517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.809025, 39.818214, 38.323196> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182203, -0.055259, 0.981707,
		0.183124, -0.982858, -0.021336,
		0.966058, 0.175887, 0.189199,
		38.098843, 39.870979, 38.379955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.536888, 39.309475, 38.751720>,  <37.422600, 39.747860, 38.247517>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.536888, 39.309475, 38.751720> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.813675, 39.597107, 38.777351>,  <37.979748, 39.769688, 38.792728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.813675, 39.597107, 38.777351>,  <37.536888, 39.309475, 38.751720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.813675, 39.597107, 38.777351> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189431, 0.095205, 0.977268,
		0.696636, -0.688372, 0.202095,
		0.691965, 0.719083, 0.064076,
		38.021263, 39.812832, 38.796574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.992798, 39.143681, 39.401821>,  <37.536888, 39.309475, 38.751720>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.992798, 39.143681, 39.401821> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.106060, 39.520672, 39.330765>,  <38.174019, 39.746868, 39.288132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.106060, 39.520672, 39.330765>,  <37.992798, 39.143681, 39.401821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.106060, 39.520672, 39.330765> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176137, 0.233171, 0.956351,
		0.942761, -0.239508, 0.232030,
		0.283157, 0.942479, -0.177638,
		38.191006, 39.803417, 39.277473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.434818, 39.305553, 39.934383>,  <37.992798, 39.143681, 39.401821>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.434818, 39.305553, 39.934383> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.344135, 39.662960, 39.779339>,  <38.289726, 39.877403, 39.686314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.344135, 39.662960, 39.779339>,  <38.434818, 39.305553, 39.934383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.344135, 39.662960, 39.779339> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069802, 0.411851, 0.908574,
		0.971459, 0.178922, -0.155737,
		-0.226705, 0.893513, -0.387607,
		38.276123, 39.931015, 39.663055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.986076, 39.836628, 40.123116>,  <38.434818, 39.305553, 39.934383>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.986076, 39.836628, 40.123116> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.627277, 39.998962, 40.053036>,  <38.411999, 40.096363, 40.010986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.627277, 39.998962, 40.053036>,  <38.986076, 39.836628, 40.123116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.627277, 39.998962, 40.053036> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019003, 0.360582, 0.932534,
		0.441633, 0.839807, -0.315728,
		-0.896994, 0.405838, -0.175204,
		38.358177, 40.120712, 40.000473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.044872, 40.384609, 40.556969>,  <38.986076, 39.836628, 40.123116>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.044872, 40.384609, 40.556969> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.650600, 40.368370, 40.491508>,  <38.414036, 40.358627, 40.452232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.650600, 40.368370, 40.491508>,  <39.044872, 40.384609, 40.556969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.650600, 40.368370, 40.491508> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167480, 0.347832, 0.922477,
		0.019474, 0.936678, -0.349651,
		-0.985683, -0.040596, -0.163648,
		38.354897, 40.356190, 40.442413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.622601, 41.018360, 40.772541>,  <39.044872, 40.384609, 40.556969>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.622601, 41.018360, 40.772541> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.334049, 40.742447, 40.747841>,  <38.160919, 40.576897, 40.733021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.334049, 40.742447, 40.747841>,  <38.622601, 41.018360, 40.772541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.334049, 40.742447, 40.747841> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424160, 0.369577, 0.826741,
		-0.547456, 0.622580, -0.559184,
		-0.721374, -0.689788, -0.061746,
		38.117638, 40.535511, 40.729317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.995644, 41.342243, 40.953415>,  <38.622601, 41.018360, 40.772541>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.995644, 41.342243, 40.953415> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.929596, 40.952164, 41.012379>,  <37.889969, 40.718117, 41.047756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.929596, 40.952164, 41.012379>,  <37.995644, 41.342243, 40.953415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.929596, 40.952164, 41.012379> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567718, 0.216195, 0.794327,
		-0.806494, 0.047468, -0.589333,
		-0.165116, -0.975196, 0.147412,
		37.880062, 40.659603, 41.056602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.247025, 41.365433, 40.930573>,  <37.995644, 41.342243, 40.953415>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.247025, 41.365433, 40.930573> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.374104, 41.027096, 41.101974>,  <37.450352, 40.824093, 41.204815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.374104, 41.027096, 41.101974>,  <37.247025, 41.365433, 40.930573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.374104, 41.027096, 41.101974> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600773, 0.170068, 0.781121,
		-0.733579, -0.505599, -0.454127,
		0.317701, -0.845841, 0.428508,
		37.469414, 40.773342, 41.230526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.621971, 41.018749, 41.277420>,  <37.247025, 41.365433, 40.930573>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.621971, 41.018749, 41.277420> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.947803, 40.874588, 41.459217>,  <37.143303, 40.788090, 41.568295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.947803, 40.874588, 41.459217>,  <36.621971, 41.018749, 41.277420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.947803, 40.874588, 41.459217> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435424, 0.137723, 0.889628,
		-0.383219, -0.922573, -0.044741,
		0.814586, -0.360403, 0.454489,
		37.192181, 40.766468, 41.595562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.320393, 40.484207, 41.685070>,  <36.621971, 41.018749, 41.277420>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.320393, 40.484207, 41.685070> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.679024, 40.552952, 41.848343>,  <36.894203, 40.594200, 41.946308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.679024, 40.552952, 41.848343>,  <36.320393, 40.484207, 41.685070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.679024, 40.552952, 41.848343> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410407, -0.024058, 0.911585,
		0.166491, -0.984826, 0.048965,
		0.896575, 0.171866, 0.408186,
		36.947998, 40.604511, 41.970798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.482296, 39.919922, 42.138744>,  <36.320393, 40.484207, 41.685070>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.482296, 39.919922, 42.138744> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.714485, 40.228207, 42.243862>,  <36.853798, 40.413177, 42.306931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.714485, 40.228207, 42.243862>,  <36.482296, 39.919922, 42.138744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.714485, 40.228207, 42.243862> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170364, -0.200637, 0.964739,
		0.796258, -0.604775, 0.014837,
		0.580473, 0.770709, 0.262791,
		36.888626, 40.459419, 42.322701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.900360, 39.680389, 42.751904>,  <36.482296, 39.919922, 42.138744>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.900360, 39.680389, 42.751904> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.868572, 40.079006, 42.761688>,  <36.849499, 40.318176, 42.767559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.868572, 40.079006, 42.761688>,  <36.900360, 39.680389, 42.751904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.868572, 40.079006, 42.761688> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082024, -0.030996, 0.996148,
		0.993457, 0.077154, 0.084203,
		-0.079467, 0.996538, 0.024464,
		36.844730, 40.377968, 42.769028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.250847, 39.893276, 43.351044>,  <36.900360, 39.680389, 42.751904>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.250847, 39.893276, 43.351044> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.081730, 40.250217, 43.287865>,  <36.980259, 40.464382, 43.249958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.081730, 40.250217, 43.287865>,  <37.250847, 39.893276, 43.351044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.081730, 40.250217, 43.287865> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231111, 0.062351, 0.970927,
		0.876260, 0.447006, 0.179871,
		-0.422795, 0.892355, -0.157944,
		36.954891, 40.517925, 43.240482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.574787, 40.380341, 43.802197>,  <37.250847, 39.893276, 43.351044>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.574787, 40.380341, 43.802197> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.224976, 40.548355, 43.705231>,  <37.015087, 40.649166, 43.647053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.224976, 40.548355, 43.705231>,  <37.574787, 40.380341, 43.802197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.224976, 40.548355, 43.705231> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230666, 0.079431, 0.969785,
		0.426602, 0.904024, 0.027424,
		-0.874531, 0.420038, -0.242413,
		36.962616, 40.674366, 43.632507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.505760, 40.973076, 44.234489>,  <37.574787, 40.380341, 43.802197>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.505760, 40.973076, 44.234489> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.138935, 40.874924, 44.108765>,  <36.918842, 40.816032, 44.033329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.138935, 40.874924, 44.108765>,  <37.505760, 40.973076, 44.234489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.138935, 40.874924, 44.108765> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359902, 0.169978, 0.917376,
		-0.171682, 0.954408, -0.244193,
		-0.917058, -0.245383, -0.314311,
		36.863819, 40.801308, 44.014473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.059551, 41.413029, 44.533382>,  <37.505760, 40.973076, 44.234489>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.059551, 41.413029, 44.533382> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.799644, 41.123623, 44.440159>,  <36.643700, 40.949978, 44.384224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.799644, 41.123623, 44.440159>,  <37.059551, 41.413029, 44.533382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.799644, 41.123623, 44.440159> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399317, 0.064010, 0.914576,
		-0.646795, 0.687330, -0.330505,
		-0.649771, -0.723519, -0.233061,
		36.604713, 40.906567, 44.370239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.358788, 41.549023, 44.963043> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.346405, 41.158691, 44.876511>,  <36.338978, 40.924492, 44.824593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.346405, 41.158691, 44.876511>,  <36.358788, 41.549023, 44.963043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.346405, 41.158691, 44.876511> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252553, -0.201776, 0.946310,
		-0.967088, 0.083927, -0.240203,
		-0.030954, -0.975829, -0.216331,
		36.337120, 40.865944, 44.811611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.773731, 41.313095, 45.256863>,  <36.358788, 41.549023, 44.963043>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.773731, 41.313095, 45.256863> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.994560, 40.984848, 45.197800>,  <36.127060, 40.787899, 45.162361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.994560, 40.984848, 45.197800>,  <35.773731, 41.313095, 45.256863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.994560, 40.984848, 45.197800> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141072, -0.266469, 0.953464,
		-0.821773, -0.505554, -0.262877,
		0.552076, -0.820615, -0.147658,
		36.160183, 40.738663, 45.153503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.370247, 40.775887, 45.338684>,  <35.773731, 41.313095, 45.256863>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.370247, 40.775887, 45.338684> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.732277, 40.630028, 45.426197>,  <35.949497, 40.542515, 45.478706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.732277, 40.630028, 45.426197>,  <35.370247, 40.775887, 45.338684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.732277, 40.630028, 45.426197> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312284, -0.220725, 0.923991,
		-0.288640, -0.904606, -0.313647,
		0.905078, -0.364648, 0.218784,
		36.003799, 40.520634, 45.491833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.175808, 40.171864, 45.659618>,  <35.370247, 40.775887, 45.338684>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.175808, 40.171864, 45.659618> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.561565, 40.236992, 45.742989>,  <35.793018, 40.276070, 45.793011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.561565, 40.236992, 45.742989>,  <35.175808, 40.171864, 45.659618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.561565, 40.236992, 45.742989> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141368, -0.348685, 0.926517,
		0.223535, -0.922988, -0.313250,
		0.964390, 0.162825, 0.208425,
		35.850883, 40.285839, 45.805515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.502522, 39.539486, 45.859348>,  <35.175808, 40.171864, 45.659618>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.502522, 39.539486, 45.859348> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.726105, 39.826599, 46.025414>,  <35.860252, 39.998867, 46.125053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.726105, 39.826599, 46.025414>,  <35.502522, 39.539486, 45.859348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.726105, 39.826599, 46.025414> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099489, -0.439012, 0.892956,
		0.823207, -0.540427, -0.173977,
		0.558956, 0.717779, 0.415164,
		35.893791, 40.041931, 46.149963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.678276, 39.321602, 46.510094>,  <35.502522, 39.539486, 45.859348>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.678276, 39.321602, 46.510094> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.828735, 39.691059, 46.539486>,  <35.919010, 39.912731, 46.557121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.828735, 39.691059, 46.539486>,  <35.678276, 39.321602, 46.510094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.828735, 39.691059, 46.539486> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048419, -0.059606, 0.997047,
		0.925293, -0.378597, 0.022301,
		0.376150, 0.923640, 0.073484,
		35.941582, 39.968151, 46.561531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.099285, 39.354713, 47.110504>,  <35.678276, 39.321602, 46.510094>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.099285, 39.354713, 47.110504> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.018467, 39.743523, 47.062580>,  <35.969978, 39.976807, 47.033825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.018467, 39.743523, 47.062580>,  <36.099285, 39.354713, 47.110504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.018467, 39.743523, 47.062580> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072549, 0.107139, 0.991594,
		0.976686, 0.209036, 0.048872,
		-0.202043, 0.972021, -0.119806,
		35.957855, 40.035130, 47.026638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.506317, 39.722191, 47.628880>,  <36.099285, 39.354713, 47.110504>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.506317, 39.722191, 47.628880> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.222332, 39.986088, 47.530334>,  <36.051941, 40.144424, 47.471207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.222332, 39.986088, 47.530334>,  <36.506317, 39.722191, 47.628880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.222332, 39.986088, 47.530334> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102350, 0.249448, 0.962964,
		0.696760, 0.708885, -0.109575,
		-0.709964, 0.659740, -0.246360,
		36.009342, 40.184010, 47.456425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.652744, 40.393120, 47.870838>,  <36.506317, 39.722191, 47.628880>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.652744, 40.393120, 47.870838> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.254089, 40.384190, 47.839298>,  <36.014896, 40.378830, 47.820374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.254089, 40.384190, 47.839298>,  <36.652744, 40.393120, 47.870838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.254089, 40.384190, 47.839298> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081862, 0.225792, 0.970730,
		-0.003867, 0.973920, -0.226860,
		-0.996636, -0.022325, -0.078854,
		35.955097, 40.377491, 47.815643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.544731, 40.861710, 48.291378>,  <36.652744, 40.393120, 47.870838>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.544731, 40.861710, 48.291378> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.188641, 40.688766, 48.234028>,  <35.974987, 40.584999, 48.199615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.188641, 40.688766, 48.234028>,  <36.544731, 40.861710, 48.291378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.188641, 40.688766, 48.234028> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183225, 0.051705, 0.981710,
		-0.417037, 0.900218, -0.125248,
		-0.890230, -0.432358, -0.143380,
		35.921570, 40.559059, 48.191013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.116463, 41.272888, 48.726833>,  <36.544731, 40.861710, 48.291378>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.116463, 41.272888, 48.726833> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.904991, 40.947895, 48.628563>,  <35.778107, 40.752899, 48.569599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.904991, 40.947895, 48.628563>,  <36.116463, 41.272888, 48.726833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.904991, 40.947895, 48.628563> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303411, -0.089425, 0.948654,
		-0.792740, 0.576079, -0.199240,
		-0.528683, -0.812487, -0.245680,
		35.746387, 40.704147, 48.554859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.433445, 41.325684, 49.054218>,  <36.116463, 41.272888, 48.726833>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.433445, 41.325684, 49.054218> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.445641, 40.929008, 49.004227>,  <35.452957, 40.691002, 48.974232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.445641, 40.929008, 49.004227>,  <35.433445, 41.325684, 49.054218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.445641, 40.929008, 49.004227> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463043, -0.124829, 0.877502,
		-0.885811, 0.031114, -0.463002,
		0.030493, -0.991690, -0.124982,
		35.454788, 40.631500, 48.966732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.765320, 41.086147, 49.309956>,  <35.433445, 41.325684, 49.054218>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.765320, 41.086147, 49.309956> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.025082, 40.782063, 49.317474>,  <35.180939, 40.599613, 49.321987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.025082, 40.782063, 49.317474>,  <34.765320, 41.086147, 49.309956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.025082, 40.782063, 49.317474> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367407, -0.292019, 0.883027,
		-0.665799, -0.580346, -0.468945,
		0.649403, -0.760213, 0.018797,
		35.219902, 40.553997, 49.323112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.391670, 40.507099, 49.526569>,  <34.765320, 41.086147, 49.309956>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.391670, 40.507099, 49.526569> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.778557, 40.427986, 49.590298>,  <35.010689, 40.380520, 49.628536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.778557, 40.427986, 49.590298>,  <34.391670, 40.507099, 49.526569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.778557, 40.427986, 49.590298> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199799, -0.205302, 0.958087,
		-0.156779, -0.958507, -0.238087,
		0.967213, -0.197777, 0.159322,
		35.068722, 40.368652, 49.638092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.349922, 40.064480, 49.933010>,  <34.391670, 40.507099, 49.526569>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.349922, 40.064480, 49.933010> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.737038, 40.144905, 49.993622>,  <34.969307, 40.193161, 50.029987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.737038, 40.144905, 49.993622>,  <34.349922, 40.064480, 49.933010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.737038, 40.144905, 49.993622> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121934, -0.152257, 0.980790,
		0.220270, -0.967674, -0.122837,
		0.967788, 0.201061, 0.151530,
		35.027374, 40.205223, 50.039082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.668091, 39.534843, 50.157196>,  <34.349922, 40.064480, 49.933010>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.668091, 39.534843, 50.157196> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.891525, 39.823170, 50.321342>,  <35.025585, 39.996166, 50.419830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.891525, 39.823170, 50.321342>,  <34.668091, 39.534843, 50.157196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.891525, 39.823170, 50.321342> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134232, -0.409670, 0.902304,
		0.818511, -0.559101, -0.132081,
		0.558589, 0.720817, 0.410368,
		35.059101, 40.039413, 50.444454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.151443, 39.279308, 50.595634>,  <34.668091, 39.534843, 50.157196>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.151443, 39.279308, 50.595634> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.148083, 39.646706, 50.753777>,  <35.146065, 39.867142, 50.848660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.148083, 39.646706, 50.753777>,  <35.151443, 39.279308, 50.595634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.148083, 39.646706, 50.753777> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152619, -0.391913, 0.907255,
		0.988249, -0.052716, 0.143472,
		-0.008401, 0.918491, 0.395353,
		35.145561, 39.922253, 50.872383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.415695, 39.202301, 51.294807>,  <35.151443, 39.279308, 50.595634>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.415695, 39.202301, 51.294807> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.262840, 39.571457, 51.313808>,  <35.171127, 39.792950, 51.325211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.262840, 39.571457, 51.313808>,  <35.415695, 39.202301, 51.294807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.262840, 39.571457, 51.313808> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282142, -0.165469, 0.944995,
		0.879983, 0.347710, 0.323616,
		-0.382133, 0.922886, 0.047507,
		35.148201, 39.848324, 51.328060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.696804, 39.475285, 51.891052>,  <35.415695, 39.202301, 51.294807>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.696804, 39.475285, 51.891052> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.370762, 39.685059, 51.792614>,  <35.175137, 39.810925, 51.733551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.370762, 39.685059, 51.792614>,  <35.696804, 39.475285, 51.891052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.370762, 39.685059, 51.792614> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328577, -0.068663, 0.941978,
		0.477111, 0.848676, 0.228286,
		-0.815109, 0.524438, -0.246095,
		35.126228, 39.842388, 51.718784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.478447, 40.046955, 52.426086>,  <35.696804, 39.475285, 51.891052>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.478447, 40.046955, 52.426086> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.142632, 39.941689, 52.235962>,  <34.941143, 39.878529, 52.121887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.142632, 39.941689, 52.235962>,  <35.478447, 40.046955, 52.426086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.142632, 39.941689, 52.235962> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485526, -0.029177, 0.873735,
		-0.243809, 0.964308, -0.103281,
		-0.839536, -0.263170, -0.475311,
		34.890770, 39.862736, 52.093369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.928459, 40.414158, 52.861980>,  <35.478447, 40.046955, 52.426086>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.928459, 40.414158, 52.861980> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.708920, 40.143902, 52.665092>,  <34.577198, 39.981747, 52.546959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.708920, 40.143902, 52.665092>,  <34.928459, 40.414158, 52.861980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.708920, 40.143902, 52.665092> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637005, -0.043239, 0.769646,
		-0.541288, 0.735961, -0.406655,
		-0.548846, -0.675642, -0.492216,
		34.544266, 39.941208, 52.517429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.333458, 40.642639, 53.107334>,  <34.928459, 40.414158, 52.861980>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.333458, 40.642639, 53.107334> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.248257, 40.290272, 52.938278>,  <34.197136, 40.078854, 52.836845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.248257, 40.290272, 52.938278>,  <34.333458, 40.642639, 53.107334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.248257, 40.290272, 52.938278> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803916, -0.087831, 0.588221,
		-0.555293, 0.465056, -0.689473,
		-0.212999, -0.880914, -0.422638,
		34.184357, 40.025997, 52.811485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.613876, 40.568623, 52.890984>,  <34.333458, 40.642639, 53.107334>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.613876, 40.568623, 52.890984> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.753860, 40.199986, 52.958141>,  <33.837852, 39.978802, 52.998436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.753860, 40.199986, 52.958141>,  <33.613876, 40.568623, 52.890984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.753860, 40.199986, 52.958141> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786491, -0.191704, 0.587096,
		-0.508881, -0.337504, -0.791916,
		0.349961, -0.921596, 0.167889,
		33.858849, 39.923508, 53.008507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.073845, 41.122658, 52.954765>,  <33.613876, 40.568623, 52.890984>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.073845, 41.122658, 52.954765> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.746883, 41.266983, 53.134392>,  <32.550705, 41.353577, 53.242168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.746883, 41.266983, 53.134392>,  <33.073845, 41.122658, 52.954765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.746883, 41.266983, 53.134392> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517253, -0.116576, -0.847856,
		-0.253568, -0.925323, 0.281922,
		-0.817406, 0.360815, 0.449067,
		32.501663, 41.375225, 53.269112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.547565, 40.595135, 53.094585>,  <33.073845, 41.122658, 52.954765>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.547565, 40.595135, 53.094585> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.360062, 40.947422, 53.067455>,  <32.247559, 41.158794, 53.051178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.360062, 40.947422, 53.067455>,  <32.547565, 40.595135, 53.094585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.360062, 40.947422, 53.067455> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562480, -0.356817, -0.745853,
		-0.681087, -0.311476, 0.662648,
		-0.468760, 0.880718, -0.067824,
		32.219433, 41.211636, 53.047108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.829950, 40.463776, 52.968914>,  <32.547565, 40.595135, 53.094585>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.829950, 40.463776, 52.968914> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.869131, 40.849010, 52.868622>,  <31.892639, 41.080151, 52.808449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.869131, 40.849010, 52.868622>,  <31.829950, 40.463776, 52.968914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.869131, 40.849010, 52.868622> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303265, -0.211072, -0.929236,
		-0.947859, 0.167058, 0.271396,
		0.097952, 0.963089, -0.250729,
		31.898516, 41.137936, 52.793404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.234976, 40.597538, 52.568520>,  <31.829950, 40.463776, 52.968914>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.234976, 40.597538, 52.568520> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.491629, 40.879574, 52.447746>,  <31.645620, 41.048794, 52.375282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.491629, 40.879574, 52.447746>,  <31.234976, 40.597538, 52.568520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.491629, 40.879574, 52.447746> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181779, -0.242648, -0.952931,
		-0.745161, 0.666316, -0.027521,
		0.641631, 0.705085, -0.301934,
		31.684118, 41.091099, 52.357166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.911242, 40.816212, 51.929882>,  <31.234976, 40.597538, 52.568520>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.911242, 40.816212, 51.929882> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.297962, 40.918282, 51.935242>,  <31.529995, 40.979523, 51.938457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.297962, 40.918282, 51.935242>,  <30.911242, 40.816212, 51.929882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.297962, 40.918282, 51.935242> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036897, -0.087507, -0.995480,
		-0.252846, 0.962928, -0.094017,
		0.966803, 0.255172, 0.013403,
		31.588003, 40.994835, 51.939262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.010393, 41.273720, 51.346394>,  <30.911242, 40.816212, 51.929882>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.010393, 41.273720, 51.346394> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.380308, 41.148964, 51.433563>,  <31.602257, 41.074112, 51.485867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.380308, 41.148964, 51.433563>,  <31.010393, 41.273720, 51.346394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.380308, 41.148964, 51.433563> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258348, 0.094244, -0.961444,
		0.279323, 0.945434, 0.167731,
		0.924789, -0.311886, 0.217927,
		31.657745, 41.055397, 51.498940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.448849, 41.718628, 50.950630>,  <31.010393, 41.273720, 51.346394>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.448849, 41.718628, 50.950630> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.683935, 41.409698, 51.047050>,  <31.824987, 41.224342, 51.104904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.683935, 41.409698, 51.047050>,  <31.448849, 41.718628, 50.950630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.683935, 41.409698, 51.047050> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482843, 0.095747, -0.870457,
		0.649193, 0.627973, 0.429183,
		0.587717, -0.772322, 0.241054,
		31.860250, 41.178001, 51.119366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.998909, 41.859589, 50.686745>,  <31.448849, 41.718628, 50.950630>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.998909, 41.859589, 50.686745> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.058277, 41.467651, 50.740231>,  <32.093899, 41.232491, 50.772320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.058277, 41.467651, 50.740231>,  <31.998909, 41.859589, 50.686745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.058277, 41.467651, 50.740231> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416773, -0.060640, -0.906986,
		0.896812, 0.190342, 0.399372,
		0.148419, -0.979843, 0.133712,
		32.102802, 41.173698, 50.780346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.661839, 41.761456, 50.555927>,  <31.998909, 41.859589, 50.686745>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.661839, 41.761456, 50.555927> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.493862, 41.399124, 50.533558>,  <32.393078, 41.181725, 50.520138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.493862, 41.399124, 50.533558>,  <32.661839, 41.761456, 50.555927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.493862, 41.399124, 50.533558> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510976, -0.185063, -0.839438,
		0.750037, -0.381087, 0.540572,
		-0.419939, -0.905828, -0.055922,
		32.367882, 41.127377, 50.516781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.188122, 41.330547, 50.507725>,  <32.661839, 41.761456, 50.555927>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.188122, 41.330547, 50.507725> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.876667, 41.147995, 50.335472>,  <32.689796, 41.038464, 50.232121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.876667, 41.147995, 50.335472>,  <33.188122, 41.330547, 50.507725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.876667, 41.147995, 50.335472> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514387, -0.071211, -0.854596,
		0.359356, -0.886930, 0.290204,
		-0.778633, -0.456381, -0.430635,
		32.643078, 41.011082, 50.206284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.458706, 40.818680, 50.166843>,  <33.188122, 41.330547, 50.507725>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.458706, 40.818680, 50.166843> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.113174, 40.889793, 49.978291>,  <32.905857, 40.932461, 49.865158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.113174, 40.889793, 49.978291>,  <33.458706, 40.818680, 50.166843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.113174, 40.889793, 49.978291> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475917, -0.018935, -0.879286,
		-0.165253, -0.983887, -0.068257,
		-0.863825, 0.177789, -0.471378,
		32.854027, 40.943130, 49.836876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.642410, 40.594852, 49.538853>,  <33.458706, 40.818680, 50.166843>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.642410, 40.594852, 49.538853> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.291828, 40.773125, 49.465981>,  <33.081478, 40.880089, 49.422256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.291828, 40.773125, 49.465981>,  <33.642410, 40.594852, 49.538853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.291828, 40.773125, 49.465981> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223005, 0.040423, -0.973979,
		-0.426719, -0.894279, -0.134818,
		-0.876459, 0.445680, -0.182179,
		33.028889, 40.906830, 49.411327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.391220, 40.258774, 48.950951>,  <33.642410, 40.594852, 49.538853>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.391220, 40.258774, 48.950951> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.188213, 40.603416, 48.947681>,  <33.066410, 40.810200, 48.945721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.188213, 40.603416, 48.947681>,  <33.391220, 40.258774, 48.950951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.188213, 40.603416, 48.947681> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250423, 0.138415, -0.958191,
		-0.824449, -0.488344, -0.286013,
		-0.507515, 0.861604, -0.008177,
		33.035957, 40.861897, 48.945229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.888786, 40.210705, 48.416695>,  <33.391220, 40.258774, 48.950951>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.888786, 40.210705, 48.416695> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.926632, 40.606075, 48.464127>,  <32.949337, 40.843296, 48.492584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.926632, 40.606075, 48.464127>,  <32.888786, 40.210705, 48.416695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.926632, 40.606075, 48.464127> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129322, 0.105903, -0.985931,
		-0.987079, 0.108614, -0.117806,
		0.094610, 0.988427, 0.118581,
		32.955013, 40.902603, 48.499702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.547035, 40.491886, 47.769531>,  <32.888786, 40.210705, 48.416695>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.547035, 40.491886, 47.769531> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.762566, 40.802952, 47.899082>,  <32.891884, 40.989594, 47.976814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.762566, 40.802952, 47.899082>,  <32.547035, 40.491886, 47.769531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.762566, 40.802952, 47.899082> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082223, 0.334081, -0.938951,
		-0.838394, 0.532563, 0.116070,
		0.538827, 0.777668, 0.323880,
		32.924213, 41.036251, 47.996246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.286484, 40.974236, 47.380486>,  <32.547035, 40.491886, 47.769531>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.286484, 40.974236, 47.380486> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.625954, 41.127571, 47.526257>,  <32.829636, 41.219574, 47.613720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.625954, 41.127571, 47.526257>,  <32.286484, 40.974236, 47.380486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.625954, 41.127571, 47.526257> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292322, 0.234263, -0.927183,
		-0.440796, 0.893405, 0.086754,
		0.848673, 0.383339, 0.364424,
		32.880554, 41.242573, 47.635582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.432953, 41.402092, 46.963364>,  <32.286484, 40.974236, 47.380486>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.432953, 41.402092, 46.963364> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.801861, 41.409294, 47.117813>,  <33.023205, 41.413616, 47.210484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.801861, 41.409294, 47.117813>,  <32.432953, 41.402092, 46.963364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.801861, 41.409294, 47.117813> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372628, 0.224223, -0.900485,
		-0.102796, 0.974372, 0.200083,
		0.922270, 0.018010, 0.386127,
		33.078541, 41.414696, 47.233650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.663216, 41.973736, 46.728012>,  <32.432953, 41.402092, 46.963364>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.663216, 41.973736, 46.728012> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.976330, 41.742428, 46.819962>,  <33.164200, 41.603642, 46.875134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.976330, 41.742428, 46.819962>,  <32.663216, 41.973736, 46.728012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.976330, 41.742428, 46.819962> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337088, 0.083523, -0.937761,
		0.523081, 0.811557, 0.260310,
		0.782789, -0.578272, 0.229877,
		33.211166, 41.568947, 46.888924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.329441, 42.343945, 46.500473>,  <32.663216, 41.973736, 46.728012>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.329441, 42.343945, 46.500473> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.411438, 41.952438, 46.500572>,  <33.460636, 41.717537, 46.500633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.411438, 41.952438, 46.500572>,  <33.329441, 42.343945, 46.500473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.411438, 41.952438, 46.500572> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214133, 0.044602, -0.975786,
		0.955052, 0.200085, 0.218728,
		0.204996, -0.978763, 0.000247,
		33.472939, 41.658810, 46.500645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.931717, 42.241692, 46.055653>,  <33.329441, 42.343945, 46.500473>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.931717, 42.241692, 46.055653> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.764908, 41.878246, 46.064754>,  <33.664822, 41.660179, 46.070213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.764908, 41.878246, 46.064754>,  <33.931717, 42.241692, 46.055653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.764908, 41.878246, 46.064754> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108183, -0.074475, -0.991337,
		0.902435, -0.410949, 0.129354,
		-0.417023, -0.908611, 0.022751,
		33.639801, 41.605663, 46.071579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.439064, 41.800129, 45.684612>,  <33.931717, 42.241692, 46.055653>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.439064, 41.800129, 45.684612> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.093948, 41.598923, 45.704926>,  <33.886879, 41.478199, 45.717113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.093948, 41.598923, 45.704926>,  <34.439064, 41.800129, 45.684612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.093948, 41.598923, 45.704926> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137558, -0.330222, -0.933826,
		0.486496, -0.798706, 0.354105,
		-0.862786, -0.503013, 0.050783,
		33.835114, 41.448017, 45.720161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<45.928211, 29.666552, 42.293133> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.658878, 29.702297, 42.586700>,  <45.497276, 29.723745, 42.762840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.658878, 29.702297, 42.586700>,  <45.928211, 29.666552, 42.293133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.658878, 29.702297, 42.586700> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026889, 0.994971, -0.096482,
		-0.738847, -0.045230, -0.672353,
		-0.673336, 0.089364, 0.733916,
		45.456879, 29.729107, 42.806873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.268250, 30.102751, 42.059502>,  <45.928211, 29.666552, 42.293133>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.268250, 30.102751, 42.059502> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.365498, 30.112053, 42.447388>,  <45.423847, 30.117634, 42.680119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.365498, 30.112053, 42.447388>,  <45.268250, 30.102751, 42.059502>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.365498, 30.112053, 42.447388> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152796, 0.986313, -0.061960,
		-0.957886, 0.163233, 0.236241,
		0.243121, 0.023254, 0.969717,
		45.438435, 30.119030, 42.738304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.954521, 30.730179, 42.290047>,  <45.268250, 30.102751, 42.059502>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.954521, 30.730179, 42.290047> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.245575, 30.673618, 42.558537>,  <45.420208, 30.639683, 42.719631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.245575, 30.673618, 42.558537>,  <44.954521, 30.730179, 42.290047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.245575, 30.673618, 42.558537> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225072, 0.973566, -0.038894,
		-0.647986, 0.179376, 0.740229,
		0.727638, -0.141402, 0.671229,
		45.463867, 30.631197, 42.759907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.842377, 31.239546, 42.757748>,  <44.954521, 30.730179, 42.290047>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.842377, 31.239546, 42.757748> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.225372, 31.126348, 42.780140>,  <45.455170, 31.058430, 42.793575>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.225372, 31.126348, 42.780140>,  <44.842377, 31.239546, 42.757748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.225372, 31.126348, 42.780140> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288372, 0.933775, -0.211910,
		0.007697, 0.219044, 0.975685,
		0.957488, -0.282991, 0.055979,
		45.512619, 31.041451, 42.796932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.095051, 31.741327, 43.175907>,  <44.842377, 31.239546, 42.757748>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.095051, 31.741327, 43.175907> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.394268, 31.554632, 42.987190>,  <45.573799, 31.442616, 42.873959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.394268, 31.554632, 42.987190>,  <45.095051, 31.741327, 43.175907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.394268, 31.554632, 42.987190> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356053, 0.882181, -0.308194,
		0.560052, 0.062559, 0.826092,
		0.748043, -0.466737, -0.471793,
		45.618679, 31.414612, 42.845654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.582005, 32.129559, 43.280422>,  <45.095051, 31.741327, 43.175907>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.582005, 32.129559, 43.280422> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.723415, 31.931345, 42.963066>,  <45.808262, 31.812416, 42.772652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.723415, 31.931345, 42.963066>,  <45.582005, 32.129559, 43.280422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.723415, 31.931345, 42.963066> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272981, 0.865892, -0.419181,
		0.894706, -0.068388, 0.441388,
		0.353528, -0.495534, -0.793388,
		45.829475, 31.782684, 42.725048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.334587, 32.276588, 42.999260>,  <45.582005, 32.129559, 43.280422>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.334587, 32.276588, 42.999260> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.148331, 32.131008, 42.676590>,  <46.036575, 32.043659, 42.482990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.148331, 32.131008, 42.676590>,  <46.334587, 32.276588, 42.999260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.148331, 32.131008, 42.676590> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389328, 0.734329, -0.556044,
		0.794734, -0.572977, -0.200239,
		-0.465642, -0.363949, -0.806672,
		46.008640, 32.021824, 42.434589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.789440, 32.393551, 42.433681>,  <46.334587, 32.276588, 42.999260>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.789440, 32.393551, 42.433681> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.417789, 32.374119, 42.287056>,  <46.194801, 32.362461, 42.199081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.417789, 32.374119, 42.287056>,  <46.789440, 32.393551, 42.433681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.417789, 32.374119, 42.287056> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238924, 0.677728, -0.695413,
		0.282210, -0.733706, -0.618088,
		-0.929125, -0.048576, -0.366562,
		46.139053, 32.359547, 42.177086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.922207, 32.643806, 41.799511>,  <46.789440, 32.393551, 42.433681>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.922207, 32.643806, 41.799511> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.522499, 32.645840, 41.814682>,  <46.282677, 32.647060, 41.823784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.522499, 32.645840, 41.814682>,  <46.922207, 32.643806, 41.799511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.522499, 32.645840, 41.814682> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025314, 0.655526, -0.754748,
		-0.028700, -0.755156, -0.654917,
		-0.999267, 0.005083, 0.037930,
		46.222717, 32.647366, 41.826061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.762997, 32.761230, 41.096931>,  <46.922207, 32.643806, 41.799511>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.762997, 32.761230, 41.096931> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.435680, 32.837933, 41.313679>,  <46.239288, 32.883953, 41.443729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.435680, 32.837933, 41.313679>,  <46.762997, 32.761230, 41.096931>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.435680, 32.837933, 41.313679> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294141, 0.670237, -0.681369,
		-0.493840, -0.716946, -0.492047,
		-0.818293, 0.191756, 0.541872,
		46.190193, 32.895458, 41.476242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.142178, 32.682003, 40.628139>,  <46.762997, 32.761230, 41.096931>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.142178, 32.682003, 40.628139> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.026634, 32.929722, 40.920174>,  <45.957306, 33.078354, 41.095394>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.026634, 32.929722, 40.920174>,  <46.142178, 32.682003, 40.628139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.026634, 32.929722, 40.920174> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357956, 0.637419, -0.682323,
		-0.887934, -0.458436, 0.037556,
		-0.288862, 0.619301, 0.730085,
		45.939976, 33.115513, 41.139198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.625488, 33.014027, 40.293041>,  <46.142178, 32.682003, 40.628139>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.625488, 33.014027, 40.293041> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.671059, 33.248737, 40.613720>,  <45.698402, 33.389565, 40.806126>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.671059, 33.248737, 40.613720>,  <45.625488, 33.014027, 40.293041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.671059, 33.248737, 40.613720> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320151, 0.785584, -0.529491,
		-0.940492, -0.196341, 0.277354,
		0.113924, 0.586777, 0.801694,
		45.705235, 33.424770, 40.854229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.024208, 33.414486, 40.371063>,  <45.625488, 33.014027, 40.293041>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.024208, 33.414486, 40.371063> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.308407, 33.624138, 40.558887>,  <45.478924, 33.749931, 40.671581>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.308407, 33.624138, 40.558887>,  <45.024208, 33.414486, 40.371063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.308407, 33.624138, 40.558887> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107194, 0.740090, -0.663909,
		-0.695492, 0.421369, 0.582013,
		0.710493, 0.524132, 0.469559,
		45.521553, 33.781376, 40.699757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.694679, 34.026718, 40.473358>,  <45.024208, 33.414486, 40.371063>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.694679, 34.026718, 40.473358> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.087685, 34.096790, 40.498615>,  <45.323486, 34.138832, 40.513771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.087685, 34.096790, 40.498615>,  <44.694679, 34.026718, 40.473358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.087685, 34.096790, 40.498615> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121784, 0.861016, -0.493781,
		-0.140869, 0.477455, 0.867290,
		0.982509, 0.175181, 0.063144,
		45.382439, 34.149345, 40.517559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.778984, 34.727886, 40.714016>,  <44.694679, 34.026718, 40.473358>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.778984, 34.727886, 40.714016> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.097301, 34.621792, 40.496262>,  <45.288292, 34.558136, 40.365608>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.097301, 34.621792, 40.496262>,  <44.778984, 34.727886, 40.714016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.097301, 34.621792, 40.496262> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243393, 0.683071, -0.688603,
		0.554500, 0.680487, 0.479027,
		0.795795, -0.265238, -0.544389,
		45.336040, 34.542221, 40.332947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.230690, 35.354294, 40.544315>,  <44.778984, 34.727886, 40.714016>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.230690, 35.354294, 40.544315> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.298103, 35.075768, 40.265247>,  <45.338551, 34.908653, 40.097805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.298103, 35.075768, 40.265247>,  <45.230690, 35.354294, 40.544315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.298103, 35.075768, 40.265247> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307781, 0.635231, -0.708344,
		0.936411, 0.334112, -0.107252,
		0.168537, -0.696312, -0.697671,
		45.348663, 34.866875, 40.055946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.538471, 35.806686, 39.997749>,  <45.230690, 35.354294, 40.544315>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.538471, 35.806686, 39.997749> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.469875, 35.461166, 39.808250>,  <45.428719, 35.253853, 39.694553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.469875, 35.461166, 39.808250>,  <45.538471, 35.806686, 39.997749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.469875, 35.461166, 39.808250> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322518, 0.503593, -0.801484,
		0.930899, 0.015345, -0.364953,
		-0.171489, -0.863805, -0.473743,
		45.418430, 35.202026, 39.666126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.825584, 35.856941, 39.411087>,  <45.538471, 35.806686, 39.997749>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.825584, 35.856941, 39.411087> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.572796, 35.551151, 39.360180>,  <45.421124, 35.367680, 39.329636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.572796, 35.551151, 39.360180>,  <45.825584, 35.856941, 39.411087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.572796, 35.551151, 39.360180> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405638, 0.466217, -0.786193,
		0.660357, -0.445226, -0.604734,
		-0.631971, -0.764471, -0.127269,
		45.383205, 35.321812, 39.321999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.980663, 35.685604, 38.717705>,  <45.825584, 35.856941, 39.411087>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.980663, 35.685604, 38.717705> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.609951, 35.566429, 38.809185>,  <45.387524, 35.494923, 38.864075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.609951, 35.566429, 38.809185>,  <45.980663, 35.685604, 38.717705>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.609951, 35.566429, 38.809185> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342279, 0.419223, -0.840891,
		0.154656, -0.857604, -0.490507,
		-0.926783, -0.297939, 0.228704,
		45.331917, 35.477047, 38.877796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.679333, 35.602093, 38.135635>,  <45.980663, 35.685604, 38.717705>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.679333, 35.602093, 38.135635> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.341507, 35.583210, 38.348980>,  <45.138809, 35.571880, 38.476986>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.341507, 35.583210, 38.348980>,  <45.679333, 35.602093, 38.135635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.341507, 35.583210, 38.348980> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526991, 0.249606, -0.812390,
		-0.094785, -0.967196, -0.235684,
		-0.844568, -0.047201, 0.533363,
		45.088135, 35.569050, 38.508987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.291042, 35.575726, 37.600967>,  <45.679333, 35.602093, 38.135635>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.291042, 35.575726, 37.600967> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.034576, 35.647999, 37.899300>,  <44.880699, 35.691364, 38.078300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.034576, 35.647999, 37.899300>,  <45.291042, 35.575726, 37.600967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.034576, 35.647999, 37.899300> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641906, 0.406341, -0.650265,
		-0.420556, -0.895678, -0.144546,
		-0.641163, 0.180687, 0.745830,
		44.842228, 35.702206, 38.123047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.886971, 35.269489, 37.084576>,  <45.291042, 35.575726, 37.600967>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.886971, 35.269489, 37.084576> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.240929, 35.237911, 36.900955>,  <46.453304, 35.218964, 36.790783>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.240929, 35.237911, 36.900955>,  <45.886971, 35.269489, 37.084576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.240929, 35.237911, 36.900955> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024169, -0.976421, 0.214517,
		-0.465166, -0.200919, -0.862121,
		0.884894, -0.078949, -0.459054,
		46.506397, 35.214226, 36.763241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.895218, 34.656601, 36.659267>,  <45.886971, 35.269489, 37.084576>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.895218, 34.656601, 36.659267> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.290562, 34.716377, 36.670731>,  <46.527767, 34.752243, 36.677608>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.290562, 34.716377, 36.670731>,  <45.895218, 34.656601, 36.659267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.290562, 34.716377, 36.670731> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146441, -0.985328, 0.087656,
		0.041340, -0.082438, -0.995738,
		0.988355, 0.149441, 0.028661,
		46.587067, 34.761208, 36.679329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.131943, 34.153965, 36.137928>,  <45.895218, 34.656601, 36.659267>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.131943, 34.153965, 36.137928> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.430832, 34.245499, 36.387501>,  <46.610165, 34.300419, 36.537243>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.430832, 34.245499, 36.387501>,  <46.131943, 34.153965, 36.137928>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.430832, 34.245499, 36.387501> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167620, -0.973389, 0.156261,
		0.643086, -0.012179, -0.765697,
		0.747224, 0.228835, 0.623931,
		46.654999, 34.314148, 36.574680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.722504, 33.751499, 35.941216>,  <46.131943, 34.153965, 36.137928>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.722504, 33.751499, 35.941216> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.794327, 33.848953, 36.322456>,  <46.837421, 33.907425, 36.551201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.794327, 33.848953, 36.322456>,  <46.722504, 33.751499, 35.941216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.794327, 33.848953, 36.322456> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250158, -0.948307, 0.195282,
		0.951409, 0.203361, -0.231224,
		0.179559, 0.243636, 0.953100,
		46.848194, 33.922043, 36.608387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.258072, 33.342880, 36.122417>,  <46.722504, 33.751499, 35.941216>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.258072, 33.342880, 36.122417> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.131290, 33.466473, 36.481098>,  <47.055222, 33.540627, 36.696308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.131290, 33.466473, 36.481098>,  <47.258072, 33.342880, 36.122417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.131290, 33.466473, 36.481098> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083027, -0.932779, 0.350755,
		0.944799, 0.185624, 0.269996,
		-0.316955, 0.308976, 0.896701,
		47.036205, 33.559166, 36.750107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.763092, 33.162125, 36.721218>,  <47.258072, 33.342880, 36.122417>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.763092, 33.162125, 36.721218> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.399551, 33.205849, 36.882233>,  <47.181427, 33.232082, 36.978840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.399551, 33.205849, 36.882233>,  <47.763092, 33.162125, 36.721218>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.399551, 33.205849, 36.882233> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020216, -0.952372, 0.304267,
		0.416621, 0.284673, 0.863359,
		-0.908855, 0.109310, 0.402533,
		47.126896, 33.238644, 37.002991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.778408, 32.742287, 37.361397>,  <47.763092, 33.162125, 36.721218>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.778408, 32.742287, 37.361397> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.388603, 32.806927, 37.299164>,  <47.154720, 32.845711, 37.261826>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.388603, 32.806927, 37.299164>,  <47.778408, 32.742287, 37.361397>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.388603, 32.806927, 37.299164> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206878, -0.915587, 0.344821,
		-0.086726, 0.368220, 0.925685,
		-0.974515, 0.161599, -0.155582,
		47.096249, 32.855408, 37.252491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.463020, 32.361118, 37.917812>,  <47.778408, 32.742287, 37.361397>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.463020, 32.361118, 37.917812> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.164310, 32.435741, 37.662460>,  <46.985085, 32.480515, 37.509251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.164310, 32.435741, 37.662460>,  <47.463020, 32.361118, 37.917812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.164310, 32.435741, 37.662460> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423955, -0.873086, 0.240795,
		-0.512435, 0.450462, 0.731091,
		-0.746775, 0.186558, -0.638376,
		46.940277, 32.491711, 37.470947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.758781, 32.147087, 38.288063>,  <47.463020, 32.361118, 37.917812>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.758781, 32.147087, 38.288063> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.714630, 32.162624, 37.890812>,  <46.688141, 32.171947, 37.652462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.714630, 32.162624, 37.890812>,  <46.758781, 32.147087, 38.288063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.714630, 32.162624, 37.890812> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484877, -0.874361, 0.019691,
		-0.867590, 0.483720, 0.115341,
		-0.110375, 0.038842, -0.993131,
		46.681519, 32.174278, 37.592873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.090603, 32.157681, 38.122906>,  <46.758781, 32.147087, 38.288063>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.090603, 32.157681, 38.122906> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.234398, 32.024940, 37.774044>,  <46.320675, 31.945297, 37.564728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.234398, 32.024940, 37.774044>,  <46.090603, 32.157681, 38.122906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.234398, 32.024940, 37.774044> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565215, -0.821109, 0.079453,
		-0.742497, 0.464390, -0.482743,
		0.359487, -0.331847, -0.872151,
		46.342243, 31.925386, 37.512398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.477512, 31.875988, 37.756500>,  <46.090603, 32.157681, 38.122906>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.477512, 31.875988, 37.756500> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.817009, 31.734837, 37.598965>,  <46.020706, 31.650145, 37.504444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.817009, 31.734837, 37.598965>,  <45.477512, 31.875988, 37.756500>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.817009, 31.734837, 37.598965> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324050, -0.935627, 0.139979,
		-0.417882, 0.008817, -0.908459,
		0.848744, -0.352881, -0.393839,
		46.071632, 31.628973, 37.480812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.293110, 31.431997, 37.212528>,  <45.477512, 31.875988, 37.756500>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.293110, 31.431997, 37.212528> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.653290, 31.339609, 37.359959>,  <45.869396, 31.284176, 37.448418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.653290, 31.339609, 37.359959>,  <45.293110, 31.431997, 37.212528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.653290, 31.339609, 37.359959> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319632, -0.926076, 0.200547,
		0.295005, -0.298390, -0.907709,
		0.900449, -0.230970, 0.368572,
		45.923424, 31.270319, 37.470531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.381989, 30.864464, 36.908470>,  <45.293110, 31.431997, 37.212528>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.381989, 30.864464, 36.908470> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.635487, 30.863695, 37.217888>,  <45.787582, 30.863234, 37.403538>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.635487, 30.863695, 37.217888>,  <45.381989, 30.864464, 36.908470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.635487, 30.863695, 37.217888> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294919, -0.925067, 0.239319,
		0.715120, -0.379799, -0.586819,
		0.633740, -0.001922, 0.773544,
		45.825607, 30.863119, 37.449951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.537975, 30.116301, 36.944466>,  <45.381989, 30.864464, 36.908470>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.537975, 30.116301, 36.944466> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.640705, 30.288988, 37.290333>,  <45.702343, 30.392601, 37.497852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.640705, 30.288988, 37.290333>,  <45.537975, 30.116301, 36.944466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.640705, 30.288988, 37.290333> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471096, -0.725272, 0.502045,
		0.843866, -0.536282, 0.017113,
		0.256826, 0.431720, 0.864672,
		45.717754, 30.418505, 37.549736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.849262, 29.542593, 37.297836>,  <45.537975, 30.116301, 36.944466>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.849262, 29.542593, 37.297836> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.711449, 29.830948, 37.538376>,  <45.628761, 30.003962, 37.682697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.711449, 29.830948, 37.538376>,  <45.849262, 29.542593, 37.297836>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.711449, 29.830948, 37.538376> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481901, -0.685539, 0.545718,
		0.805647, -0.101770, 0.583588,
		-0.344535, 0.720888, 0.601346,
		45.608089, 30.047215, 37.718781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.857998, 29.251036, 37.923515>,  <45.849262, 29.542593, 37.297836>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.857998, 29.251036, 37.923515> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.615128, 29.562222, 37.988148>,  <45.469406, 29.748932, 38.026928>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.615128, 29.562222, 37.988148>,  <45.857998, 29.251036, 37.923515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.615128, 29.562222, 37.988148> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608563, -0.586074, 0.534946,
		0.510866, 0.226476, 0.829291,
		-0.607179, 0.777962, 0.161581,
		45.432976, 29.795610, 38.036621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.732483, 29.150322, 38.607716>,  <45.857998, 29.251036, 37.923515>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.732483, 29.150322, 38.607716> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.429214, 29.386757, 38.497597>,  <45.247253, 29.528618, 38.431526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.429214, 29.386757, 38.497597>,  <45.732483, 29.150322, 38.607716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.429214, 29.386757, 38.497597> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643609, -0.610672, 0.461354,
		0.104585, 0.526970, 0.843425,
		-0.758175, 0.591087, -0.275295,
		45.201763, 29.564083, 38.415009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.249939, 29.254299, 39.188465>,  <45.732483, 29.150322, 38.607716>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.249939, 29.254299, 39.188465> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.016811, 29.350790, 38.878078>,  <44.876934, 29.408684, 38.691845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.016811, 29.350790, 38.878078>,  <45.249939, 29.254299, 39.188465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.016811, 29.350790, 38.878078> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720792, -0.594387, 0.356600,
		-0.375206, 0.767147, 0.520294,
		-0.582821, 0.241226, -0.775971,
		44.841965, 29.423157, 38.645287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.506168, 29.452806, 39.449543>,  <45.249939, 29.254299, 39.188465>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.506168, 29.452806, 39.449543> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.463688, 29.359140, 39.062992>,  <44.438202, 29.302940, 38.831062>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.463688, 29.359140, 39.062992>,  <44.506168, 29.452806, 39.449543>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.463688, 29.359140, 39.062992> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861587, -0.463489, 0.206991,
		-0.496377, 0.854602, -0.152533,
		-0.106197, -0.234166, -0.966379,
		44.431828, 29.288891, 38.773079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.802265, 29.365412, 39.430008>,  <44.506168, 29.452806, 39.449543>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.802265, 29.365412, 39.430008> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.907330, 29.215219, 39.074474>,  <43.970367, 29.125105, 38.861153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.907330, 29.215219, 39.074474>,  <43.802265, 29.365412, 39.430008>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.907330, 29.215219, 39.074474> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.864069, -0.501491, -0.043494,
		-0.429411, 0.779437, -0.456163,
		0.262663, -0.375479, -0.888833,
		43.986130, 29.102575, 38.807823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.251606, 29.562160, 38.878227>,  <43.802265, 29.365412, 39.430008>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.251606, 29.562160, 38.878227> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.452274, 29.242821, 38.744984>,  <43.572678, 29.051216, 38.665039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.452274, 29.242821, 38.744984>,  <43.251606, 29.562160, 38.878227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.452274, 29.242821, 38.744984> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816562, -0.564150, 0.122314,
		-0.285570, 0.210639, -0.934923,
		0.501673, -0.798352, -0.333104,
		43.602776, 29.003315, 38.645054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.107513, 40.925167, 42.459625> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.753551, 40.807873, 42.314869>,  <37.541176, 40.737495, 42.228016>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.753551, 40.807873, 42.314869>,  <38.107513, 40.925167, 42.459625>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.753551, 40.807873, 42.314869> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428187, -0.206345, -0.879817,
		0.183315, -0.933508, 0.308153,
		-0.884902, -0.293231, -0.361890,
		37.488079, 40.719902, 42.206303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.196156, 40.249039, 42.278221>,  <38.107513, 40.925167, 42.459625>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.196156, 40.249039, 42.278221> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.892387, 40.391956, 42.060738>,  <37.710125, 40.477707, 41.930248>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.892387, 40.391956, 42.060738>,  <38.196156, 40.249039, 42.278221>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.892387, 40.391956, 42.060738> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435265, -0.342108, -0.832770,
		-0.483550, -0.869082, 0.104288,
		-0.759423, 0.357293, -0.543707,
		37.664562, 40.499146, 41.897625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.024685, 39.676888, 41.768757>,  <38.196156, 40.249039, 42.278221>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.024685, 39.676888, 41.768757> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.831524, 39.996269, 41.624935>,  <37.715626, 40.187897, 41.538643>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.831524, 39.996269, 41.624935>,  <38.024685, 39.676888, 41.768757>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.831524, 39.996269, 41.624935> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121614, -0.345471, -0.930516,
		-0.867186, -0.493079, 0.069728,
		-0.482907, 0.798450, -0.359552,
		37.686653, 40.235806, 41.517071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.619072, 39.419132, 41.191257>,  <38.024685, 39.676888, 41.768757>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.619072, 39.419132, 41.191257> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.668434, 39.813114, 41.142879>,  <37.698051, 40.049503, 41.113853>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.668434, 39.813114, 41.142879>,  <37.619072, 39.419132, 41.191257>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.668434, 39.813114, 41.142879> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349310, -0.157195, -0.923727,
		-0.928845, 0.071749, -0.363455,
		0.123410, 0.984958, -0.120947,
		37.705456, 40.108601, 41.106594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.227097, 39.619183, 40.620041>,  <37.619072, 39.419132, 41.191257>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.227097, 39.619183, 40.620041> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.505268, 39.901733, 40.672825>,  <37.672169, 40.071262, 40.704494>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.505268, 39.901733, 40.672825>,  <37.227097, 39.619183, 40.620041>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.505268, 39.901733, 40.672825> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253974, -0.069822, -0.964688,
		-0.672219, 0.704384, -0.227958,
		0.695427, 0.706377, 0.131959,
		37.713898, 40.113647, 40.712414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.141003, 40.119751, 40.110332>,  <37.227097, 39.619183, 40.620041>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.141003, 40.119751, 40.110332> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.510372, 40.216591, 40.229446>,  <37.731995, 40.274693, 40.300915>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.510372, 40.216591, 40.229446>,  <37.141003, 40.119751, 40.110332>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.510372, 40.216591, 40.229446> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285381, 0.085649, -0.954579,
		-0.256606, 0.966464, 0.010000,
		0.923424, 0.242097, 0.297789,
		37.787399, 40.289219, 40.318783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.219597, 40.716812, 39.750259>,  <37.141003, 40.119751, 40.110332>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.219597, 40.716812, 39.750259> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.563316, 40.529297, 39.832085>,  <37.769547, 40.416786, 39.881180>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.563316, 40.529297, 39.832085>,  <37.219597, 40.716812, 39.750259>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.563316, 40.529297, 39.832085> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208605, -0.043952, -0.977012,
		0.467003, 0.882216, 0.060024,
		0.859298, -0.468788, 0.204560,
		37.821106, 40.388660, 39.893452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.687771, 41.023682, 39.305447>,  <37.219597, 40.716812, 39.750259>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.687771, 41.023682, 39.305447> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.889854, 40.699806, 39.424892>,  <38.011105, 40.505482, 39.496559>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.889854, 40.699806, 39.424892>,  <37.687771, 41.023682, 39.305447>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.889854, 40.699806, 39.424892> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410061, -0.079235, -0.908610,
		0.759350, 0.581488, 0.291991,
		0.505210, -0.809687, 0.298613,
		38.041416, 40.456902, 39.514477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.457146, 41.071045, 39.129505>,  <37.687771, 41.023682, 39.305447>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.457146, 41.071045, 39.129505> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.380409, 40.681896, 39.181225>,  <38.334366, 40.448406, 39.212257>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.380409, 40.681896, 39.181225>,  <38.457146, 41.071045, 39.129505>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.380409, 40.681896, 39.181225> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390475, -0.196534, -0.899391,
		0.900403, -0.122050, 0.417585,
		-0.191841, -0.972871, 0.129303,
		38.322857, 40.390034, 39.220016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.953983, 40.668064, 38.931168>,  <38.457146, 41.071045, 39.129505>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.953983, 40.668064, 38.931168> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.655514, 40.401955, 38.921108>,  <38.476433, 40.242290, 38.915073>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.655514, 40.401955, 38.921108>,  <38.953983, 40.668064, 38.931168>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.655514, 40.401955, 38.921108> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370594, -0.383693, -0.845837,
		0.553064, -0.640462, 0.532849,
		-0.746177, -0.665273, -0.025145,
		38.431660, 40.202374, 38.913567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.296124, 40.111801, 38.877090>,  <38.953983, 40.668064, 38.931168>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.296124, 40.111801, 38.877090> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.936344, 40.051609, 38.712971>,  <38.720474, 40.015491, 38.614498>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.936344, 40.051609, 38.712971>,  <39.296124, 40.111801, 38.877090>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.936344, 40.051609, 38.712971> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434418, -0.205517, -0.876951,
		0.047643, -0.967015, 0.250225,
		-0.899451, -0.150483, -0.410297,
		38.666508, 40.006466, 38.589882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.394775, 39.526531, 38.529266>,  <39.296124, 40.111801, 38.877090>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.394775, 39.526531, 38.529266> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.049362, 39.637611, 38.360889>,  <38.842113, 39.704262, 38.259865>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.049362, 39.637611, 38.360889>,  <39.394775, 39.526531, 38.529266>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.049362, 39.637611, 38.360889> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330385, -0.319095, -0.888270,
		-0.380996, -0.906124, 0.183800,
		-0.863532, 0.277703, -0.420944,
		38.790302, 39.720921, 38.234608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.013268, 39.740322, 38.552456>,  <39.394775, 39.526531, 38.529266>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.013268, 39.740322, 38.552456> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.176579, 39.584171, 38.882526>,  <40.274567, 39.490482, 39.080570>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.176579, 39.584171, 38.882526>,  <40.013268, 39.740322, 38.552456>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.176579, 39.584171, 38.882526> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317390, -0.786847, -0.529278,
		0.855904, 0.477996, -0.197352,
		0.408279, -0.390374, 0.825177,
		40.299061, 39.467060, 39.130081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.760281, 39.593430, 38.487213>,  <40.013268, 39.740322, 38.552456>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.760281, 39.593430, 38.487213> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.561714, 39.342735, 38.727470>,  <40.442574, 39.192318, 38.871624>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.561714, 39.342735, 38.727470>,  <40.760281, 39.593430, 38.487213>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.561714, 39.342735, 38.727470> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465541, -0.776208, -0.425174,
		0.732694, 0.068559, 0.677096,
		-0.496418, -0.626738, 0.600640,
		40.412788, 39.154713, 38.907661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.075314, 38.927971, 38.179821>,  <40.760281, 39.593430, 38.487213>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.075314, 38.927971, 38.179821> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.304268, 38.604088, 38.128056>,  <41.441639, 38.409756, 38.096996>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.304268, 38.604088, 38.128056>,  <41.075314, 38.927971, 38.179821>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.304268, 38.604088, 38.128056> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511559, -0.475960, 0.715380,
		-0.640848, -0.343266, -0.686646,
		0.572382, -0.809710, -0.129417,
		41.475983, 38.361176, 38.089230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.627659, 38.521854, 38.110653>,  <41.075314, 38.927971, 38.179821>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.627659, 38.521854, 38.110653> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.952843, 38.311661, 38.211018>,  <41.147953, 38.185543, 38.271236>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.952843, 38.311661, 38.211018>,  <40.627659, 38.521854, 38.110653>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.952843, 38.311661, 38.211018> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545632, -0.536891, 0.643454,
		-0.203415, -0.660009, -0.723195,
		0.812963, -0.525486, 0.250911,
		41.196732, 38.154015, 38.286289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.425678, 37.813427, 38.180805>,  <40.627659, 38.521854, 38.110653>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.425678, 37.813427, 38.180805> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.765007, 37.824596, 38.392303>,  <40.968605, 37.831299, 38.519203>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.765007, 37.824596, 38.392303>,  <40.425678, 37.813427, 38.180805>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.765007, 37.824596, 38.392303> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416721, -0.580840, 0.699263,
		0.326645, -0.813538, -0.481101,
		0.848320, 0.027926, 0.528747,
		41.019505, 37.832973, 38.550926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.488968, 37.171703, 38.310753>,  <40.425678, 37.813427, 38.180805>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.488968, 37.171703, 38.310753> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.705803, 37.387901, 38.568127>,  <40.835903, 37.517620, 38.722549>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.705803, 37.387901, 38.568127>,  <40.488968, 37.171703, 38.310753>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.705803, 37.387901, 38.568127> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331750, -0.565850, 0.754821,
		0.772063, -0.622640, -0.127432,
		0.542089, 0.540494, 0.643433,
		40.868431, 37.550049, 38.761158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.685833, 36.714729, 38.839863>,  <40.488968, 37.171703, 38.310753>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.685833, 36.714729, 38.839863> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.763760, 37.071831, 39.002361>,  <40.810516, 37.286091, 39.099861>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.763760, 37.071831, 39.002361>,  <40.685833, 36.714729, 38.839863>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.763760, 37.071831, 39.002361> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218547, -0.364263, 0.905290,
		0.956181, -0.265152, 0.124143,
		0.194818, 0.892752, 0.406250,
		40.822205, 37.339657, 39.124237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.898617, 36.544647, 39.557823>,  <40.685833, 36.714729, 38.839863>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.898617, 36.544647, 39.557823> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.794186, 36.930489, 39.542927>,  <40.731529, 37.161991, 39.533989>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.794186, 36.930489, 39.542927>,  <40.898617, 36.544647, 39.557823>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.794186, 36.930489, 39.542927> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397586, -0.072291, 0.914713,
		0.879639, 0.253618, 0.402385,
		-0.261076, 0.964600, -0.037245,
		40.715862, 37.219868, 39.531754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.100346, 36.833782, 40.137978>,  <40.898617, 36.544647, 39.557823>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.100346, 36.833782, 40.137978> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.819084, 37.092373, 40.019558>,  <40.650330, 37.247528, 39.948505>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.819084, 37.092373, 40.019558>,  <41.100346, 36.833782, 40.137978>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.819084, 37.092373, 40.019558> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442625, -0.072111, 0.893802,
		0.556475, 0.759517, 0.336852,
		-0.703149, 0.646478, -0.296054,
		40.608139, 37.286316, 39.930740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.022366, 37.312607, 40.619640>,  <41.100346, 36.833782, 40.137978>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.022366, 37.312607, 40.619640> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.667995, 37.335945, 40.435585>,  <40.455372, 37.349949, 40.325153>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.667995, 37.335945, 40.435585>,  <41.022366, 37.312607, 40.619640>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.667995, 37.335945, 40.435585> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460878, 0.000835, 0.887463,
		0.052166, 0.998296, 0.026152,
		-0.885929, 0.058348, -0.460136,
		40.402218, 37.353451, 40.297543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.622566, 37.816170, 40.933342>,  <41.022366, 37.312607, 40.619640>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.622566, 37.816170, 40.933342> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.348293, 37.586502, 40.754379>,  <40.183731, 37.448700, 40.646999>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.348293, 37.586502, 40.754379>,  <40.622566, 37.816170, 40.933342>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.348293, 37.586502, 40.754379> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566912, 0.035705, 0.823004,
		-0.456568, 0.817959, -0.349985,
		-0.685680, -0.574168, -0.447409,
		40.142590, 37.414253, 40.620155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.965725, 38.193882, 40.935226>,  <40.622566, 37.816170, 40.933342>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.965725, 38.193882, 40.935226> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.883327, 37.805744, 40.884632>,  <39.833889, 37.572861, 40.854275>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.883327, 37.805744, 40.884632>,  <39.965725, 38.193882, 40.935226>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.883327, 37.805744, 40.884632> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693245, 0.053478, 0.718715,
		-0.690637, 0.235736, -0.683703,
		-0.205990, -0.970345, -0.126489,
		39.821529, 37.514641, 40.846684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.332653, 38.242180, 41.035206>,  <39.965725, 38.193882, 40.935226>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.332653, 38.242180, 41.035206> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.393833, 37.849941, 41.084267>,  <39.430542, 37.614597, 41.113701>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.393833, 37.849941, 41.084267>,  <39.332653, 38.242180, 41.035206>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.393833, 37.849941, 41.084267> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730117, -0.028489, 0.682728,
		-0.665984, -0.193970, -0.720306,
		0.152950, -0.980593, 0.122648,
		39.439716, 37.555763, 41.121059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.711529, 37.918068, 41.071678>,  <39.332653, 38.242180, 41.035206>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.711529, 37.918068, 41.071678> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.926220, 37.660465, 41.289734>,  <39.055035, 37.505905, 41.420567>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.926220, 37.660465, 41.289734>,  <38.711529, 37.918068, 41.071678>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.926220, 37.660465, 41.289734> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752040, -0.072196, 0.655152,
		-0.382566, -0.761604, -0.523070,
		0.536731, -0.644008, 0.545137,
		39.087238, 37.467262, 41.453274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.259148, 37.357956, 41.366028>,  <38.711529, 37.918068, 41.071678>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.259148, 37.357956, 41.366028> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.563881, 37.294640, 41.617283>,  <38.746719, 37.256649, 41.768036>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.563881, 37.294640, 41.617283>,  <38.259148, 37.357956, 41.366028>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.563881, 37.294640, 41.617283> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645689, -0.107831, 0.755948,
		-0.051927, -0.981487, -0.184355,
		0.761833, -0.158290, 0.628136,
		38.792431, 37.247150, 41.805725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.119137, 36.804836, 41.812328>,  <38.259148, 37.357956, 41.366028>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.119137, 36.804836, 41.812328> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.409729, 36.990570, 42.014961>,  <38.584084, 37.102009, 42.136539>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.409729, 36.990570, 42.014961>,  <38.119137, 36.804836, 41.812328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.409729, 36.990570, 42.014961> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520985, -0.108554, 0.846635,
		0.448109, -0.878984, 0.163047,
		0.726479, 0.464330, 0.506582,
		38.627674, 37.129868, 42.166935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.266918, 36.054195, 42.075565>,  <38.119137, 36.804836, 41.812328>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.266918, 36.054195, 42.075565> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.904022, 35.902786, 42.002197>,  <37.686287, 35.811943, 41.958176>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.904022, 35.902786, 42.002197>,  <38.266918, 36.054195, 42.075565>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.904022, 35.902786, 42.002197> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116916, 0.191956, -0.974415,
		0.404043, -0.905470, -0.129895,
		-0.907237, -0.378519, -0.183422,
		37.631851, 35.789230, 41.947170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.339657, 35.623753, 41.415348>,  <38.266918, 36.054195, 42.075565>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.339657, 35.623753, 41.415348> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.946716, 35.674160, 41.470646>,  <37.710953, 35.704403, 41.503826>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.946716, 35.674160, 41.470646>,  <38.339657, 35.623753, 41.415348>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.946716, 35.674160, 41.470646> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107386, 0.225247, -0.968366,
		-0.153168, -0.966118, -0.207738,
		-0.982348, 0.126015, 0.138249,
		37.652012, 35.711964, 41.512119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.028763, 35.150692, 40.846233>,  <38.339657, 35.623753, 41.415348>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.028763, 35.150692, 40.846233> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.739220, 35.407024, 40.948490>,  <37.565495, 35.560825, 41.009846>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.739220, 35.407024, 40.948490>,  <38.028763, 35.150692, 40.846233>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.739220, 35.407024, 40.948490> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208695, 0.149806, -0.966439,
		-0.657625, -0.752921, 0.025300,
		-0.723862, 0.640835, 0.255647,
		37.522060, 35.599274, 41.025185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.539326, 35.068306, 40.306015>,  <38.028763, 35.150692, 40.846233>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.539326, 35.068306, 40.306015> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.425335, 35.414295, 40.471237>,  <37.356941, 35.621887, 40.570370>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.425335, 35.414295, 40.471237>,  <37.539326, 35.068306, 40.306015>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.425335, 35.414295, 40.471237> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393849, 0.287201, -0.873154,
		-0.873884, -0.411506, 0.258824,
		-0.284974, 0.864973, 0.413052,
		37.339844, 35.673786, 40.595154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.973358, 35.154140, 40.017712>,  <37.539326, 35.068306, 40.306015>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.973358, 35.154140, 40.017712> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.106956, 35.513840, 40.130707>,  <37.187115, 35.729660, 40.198505>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.106956, 35.513840, 40.130707>,  <36.973358, 35.154140, 40.017712>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.106956, 35.513840, 40.130707> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473006, 0.419130, -0.774981,
		-0.815301, 0.125219, 0.565336,
		0.333992, 0.899250, 0.282487,
		37.207153, 35.783615, 40.215454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.367363, 35.607697, 40.132137>,  <36.973358, 35.154140, 40.017712>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.367363, 35.607697, 40.132137> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.684902, 35.846260, 40.084652>,  <36.875427, 35.989399, 40.056160>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.684902, 35.846260, 40.084652>,  <36.367363, 35.607697, 40.132137>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.684902, 35.846260, 40.084652> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483586, 0.500786, -0.717884,
		-0.368704, 0.627302, 0.685966,
		0.793852, 0.596411, -0.118713,
		36.923058, 36.025185, 40.049038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.075237, 36.220806, 40.132454>,  <36.367363, 35.607697, 40.132137>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.075237, 36.220806, 40.132454> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.428246, 36.253258, 39.947163>,  <36.640049, 36.272728, 39.835987>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.428246, 36.253258, 39.947163>,  <36.075237, 36.220806, 40.132454>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.428246, 36.253258, 39.947163> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462748, 0.325367, -0.824622,
		0.083815, 0.942101, 0.324686,
		0.882519, 0.081132, -0.463226,
		36.693001, 36.277596, 39.808193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.092815, 36.865730, 39.911716>,  <36.075237, 36.220806, 40.132454>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.092815, 36.865730, 39.911716> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.363003, 36.674431, 39.687210>,  <36.525116, 36.559650, 39.552505>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.363003, 36.674431, 39.687210>,  <36.092815, 36.865730, 39.911716>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.363003, 36.674431, 39.687210> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415856, 0.381505, -0.825541,
		0.608939, 0.791033, 0.058813,
		0.675468, -0.478247, -0.561269,
		36.565643, 36.530956, 39.518829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.206280, 37.315685, 39.419857>,  <36.092815, 36.865730, 39.911716>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.206280, 37.315685, 39.419857> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.398518, 37.004528, 39.257915>,  <36.513859, 36.817833, 39.160751>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.398518, 37.004528, 39.257915>,  <36.206280, 37.315685, 39.419857>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.398518, 37.004528, 39.257915> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194502, 0.355617, -0.914169,
		0.855101, 0.518091, 0.019606,
		0.480595, -0.777894, -0.404858,
		36.542698, 36.771160, 39.136459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.866879, 37.556454, 38.941875>,  <36.206280, 37.315685, 39.419857>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.866879, 37.556454, 38.941875> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.693668, 37.213840, 38.829567>,  <36.589741, 37.008270, 38.762180>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.693668, 37.213840, 38.829567>,  <36.866879, 37.556454, 38.941875>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.693668, 37.213840, 38.829567> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133163, 0.368866, -0.919895,
		0.891491, -0.360949, -0.273787,
		-0.433025, -0.856536, -0.280776,
		36.563759, 36.956879, 38.745335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.259243, 37.212955, 38.382969>,  <36.866879, 37.556454, 38.941875>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.259243, 37.212955, 38.382969> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.881603, 37.085701, 38.348389>,  <36.655022, 37.009350, 38.327641>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.881603, 37.085701, 38.348389>,  <37.259243, 37.212955, 38.382969>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.881603, 37.085701, 38.348389> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061173, 0.426719, -0.902313,
		0.323946, -0.846582, -0.422325,
		-0.944096, -0.318135, -0.086446,
		36.598373, 36.990261, 38.322456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.175476, 37.235489, 37.668575>,  <37.259243, 37.212955, 38.382969>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.175476, 37.235489, 37.668575> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.791016, 37.194641, 37.771145>,  <36.560337, 37.170132, 37.832687>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.791016, 37.194641, 37.771145>,  <37.175476, 37.235489, 37.668575>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.791016, 37.194641, 37.771145> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274088, 0.462548, -0.843164,
		-0.032509, -0.880694, -0.472569,
		-0.961155, -0.102115, 0.256424,
		36.502670, 37.164005, 37.848072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.818489, 34.737206, 45.648666> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.434055, 34.685856, 45.550827>,  <37.203396, 34.655045, 45.492123>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.434055, 34.685856, 45.550827>,  <37.818489, 34.737206, 45.648666>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.434055, 34.685856, 45.550827> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205732, 0.258251, -0.943918,
		0.184345, -0.957510, -0.221790,
		-0.961088, -0.128377, -0.244598,
		37.145729, 34.647343, 45.477448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.716961, 34.219635, 45.101406>,  <37.818489, 34.737206, 45.648666>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.716961, 34.219635, 45.101406> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.400452, 34.464172, 45.096626>,  <37.210545, 34.610893, 45.093758>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.400452, 34.464172, 45.096626>,  <37.716961, 34.219635, 45.101406>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.400452, 34.464172, 45.096626> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069495, 0.070491, -0.995089,
		-0.607498, -0.788220, -0.098263,
		-0.791275, 0.611343, -0.011954,
		37.163071, 34.647575, 45.093040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.225441, 33.982365, 44.612110>,  <37.716961, 34.219635, 45.101406>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.225441, 33.982365, 44.612110> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.152309, 34.374535, 44.641357>,  <37.108429, 34.609837, 44.658905>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.152309, 34.374535, 44.641357>,  <37.225441, 33.982365, 44.612110>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.152309, 34.374535, 44.641357> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224096, 0.030857, -0.974078,
		-0.957264, -0.194476, 0.214067,
		-0.182829, 0.980422, 0.073119,
		37.097462, 34.668663, 44.663292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.675598, 34.211025, 44.029945>,  <37.225441, 33.982365, 44.612110>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.675598, 34.211025, 44.029945> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.809761, 34.571957, 44.138245>,  <36.890259, 34.788513, 44.203224>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.809761, 34.571957, 44.138245>,  <36.675598, 34.211025, 44.029945>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.809761, 34.571957, 44.138245> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141711, 0.332454, -0.932412,
		-0.931352, 0.274373, 0.239379,
		0.335411, 0.902327, 0.270750,
		36.910385, 34.842655, 44.219471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.225002, 34.735142, 43.630905>,  <36.675598, 34.211025, 44.029945>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.225002, 34.735142, 43.630905> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.552166, 34.932899, 43.748611>,  <36.748466, 35.051556, 43.819233>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.552166, 34.932899, 43.748611>,  <36.225002, 34.735142, 43.630905>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.552166, 34.932899, 43.748611> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129191, 0.340574, -0.931300,
		-0.560650, 0.799738, 0.214688,
		0.817913, 0.494397, 0.294262,
		36.797539, 35.081219, 43.836891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.194660, 35.448727, 43.340534>,  <36.225002, 34.735142, 43.630905>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.194660, 35.448727, 43.340534> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.579571, 35.364315, 43.409218>,  <36.810516, 35.313667, 43.450428>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.579571, 35.364315, 43.409218>,  <36.194660, 35.448727, 43.340534>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.579571, 35.364315, 43.409218> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231430, 0.303113, -0.924425,
		0.143036, 0.929294, 0.340519,
		0.962279, -0.211032, 0.171710,
		36.868256, 35.301006, 43.460732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.476288, 36.083717, 43.313488>,  <36.194660, 35.448727, 43.340534>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.476288, 36.083717, 43.313488> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.782398, 35.832153, 43.258598>,  <36.966064, 35.681213, 43.225666>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.782398, 35.832153, 43.258598>,  <36.476288, 36.083717, 43.313488>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.782398, 35.832153, 43.258598> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259240, 0.496237, -0.828579,
		0.589195, 0.598517, 0.542795,
		0.765274, -0.628909, -0.137221,
		37.011982, 35.643482, 43.217434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.100170, 36.456184, 43.178719>,  <36.476288, 36.083717, 43.313488>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.100170, 36.456184, 43.178719> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.166161, 36.094883, 43.020271>,  <37.205757, 35.878101, 42.925201>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.166161, 36.094883, 43.020271>,  <37.100170, 36.456184, 43.178719>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.166161, 36.094883, 43.020271> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175043, 0.422061, -0.889508,
		0.970640, 0.077413, 0.227740,
		0.164980, -0.903256, -0.396118,
		37.215656, 35.823906, 42.901436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.703453, 36.495457, 42.632908>,  <37.100170, 36.456184, 43.178719>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.703453, 36.495457, 42.632908> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.470173, 36.189411, 42.523743>,  <37.330204, 36.005783, 42.458244>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.470173, 36.189411, 42.523743>,  <37.703453, 36.495457, 42.632908>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.470173, 36.189411, 42.523743> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066784, 0.379980, -0.922581,
		0.809581, -0.519819, -0.272701,
		-0.583196, -0.765116, -0.272909,
		37.295216, 35.959877, 42.441872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.344547, 36.345066, 42.931206>,  <37.703453, 36.495457, 42.632908>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.344547, 36.345066, 42.931206> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.498074, 36.709297, 42.869850>,  <38.590187, 36.927837, 42.833038>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.498074, 36.709297, 42.869850>,  <38.344547, 36.345066, 42.931206>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.498074, 36.709297, 42.869850> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115797, 0.212260, 0.970328,
		0.916122, -0.354662, 0.186911,
		0.383812, 0.910582, -0.153388,
		38.613216, 36.982471, 42.823833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.719212, 36.429852, 43.595184>,  <38.344547, 36.345066, 42.931206>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.719212, 36.429852, 43.595184> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.683578, 36.792309, 43.429787>,  <38.662197, 37.009781, 43.330547>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.683578, 36.792309, 43.429787>,  <38.719212, 36.429852, 43.595184>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.683578, 36.792309, 43.429787> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026538, 0.412837, 0.910418,
		0.995671, 0.092075, -0.012729,
		-0.089082, 0.906139, -0.413493,
		38.656853, 37.064152, 43.305740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.272354, 36.866112, 43.975281>,  <38.719212, 36.429852, 43.595184>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.272354, 36.866112, 43.975281> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.024574, 37.120605, 43.791332>,  <38.875904, 37.273304, 43.680962>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.024574, 37.120605, 43.791332>,  <39.272354, 36.866112, 43.975281>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.024574, 37.120605, 43.791332> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043086, 0.612468, 0.789320,
		0.783852, 0.469131, -0.406807,
		-0.619452, 0.636238, -0.459871,
		38.838737, 37.311478, 43.653370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.573719, 37.607567, 44.079620>,  <39.272354, 36.866112, 43.975281>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.573719, 37.607567, 44.079620> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.176815, 37.604652, 44.030041>,  <38.938671, 37.602905, 44.000294>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.176815, 37.604652, 44.030041>,  <39.573719, 37.607567, 44.079620>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.176815, 37.604652, 44.030041> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116006, 0.410329, 0.904529,
		0.044272, 0.911909, -0.407998,
		-0.992261, -0.007285, -0.123953,
		38.879135, 37.602467, 43.992855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.396599, 38.271309, 44.406544>,  <39.573719, 37.607567, 44.079620>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.396599, 38.271309, 44.406544> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.070419, 38.039875, 44.413246>,  <38.874710, 37.901016, 44.417267>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.070419, 38.039875, 44.413246>,  <39.396599, 38.271309, 44.406544>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.070419, 38.039875, 44.413246> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159859, 0.252938, 0.954184,
		-0.556313, 0.775412, -0.298750,
		-0.815451, -0.578583, 0.016755,
		38.825783, 37.866299, 44.418274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.940517, 38.672298, 44.879303>,  <39.396599, 38.271309, 44.406544>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.940517, 38.672298, 44.879303> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.770481, 38.311611, 44.847816>,  <38.668461, 38.095200, 44.828926>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.770481, 38.311611, 44.847816>,  <38.940517, 38.672298, 44.879303>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.770481, 38.311611, 44.847816> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237062, 0.026986, 0.971120,
		-0.873556, 0.431474, -0.225235,
		-0.425091, -0.901722, -0.078712,
		38.642956, 38.041096, 44.824203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.220879, 38.747646, 45.146832>,  <38.940517, 38.672298, 44.879303>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.220879, 38.747646, 45.146832> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.312412, 38.362194, 45.202045>,  <38.367332, 38.130924, 45.235176>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.312412, 38.362194, 45.202045>,  <38.220879, 38.747646, 45.146832>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.312412, 38.362194, 45.202045> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406556, 0.034238, 0.912984,
		-0.884504, -0.265041, -0.383934,
		0.228833, -0.963629, 0.138037,
		38.381062, 38.073105, 45.243458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.629162, 38.443428, 45.507153>,  <38.220879, 38.747646, 45.146832>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.629162, 38.443428, 45.507153> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.932842, 38.188507, 45.560017>,  <38.115051, 38.035557, 45.591736>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.932842, 38.188507, 45.560017>,  <37.629162, 38.443428, 45.507153>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.932842, 38.188507, 45.560017> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182690, -0.013774, 0.983074,
		-0.624692, -0.770494, -0.126885,
		0.759200, -0.637299, 0.132157,
		38.160603, 37.997318, 45.599663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.308449, 37.868389, 45.890373>,  <37.629162, 38.443428, 45.507153>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.308449, 37.868389, 45.890373> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.705578, 37.859211, 45.937336>,  <37.943855, 37.853703, 45.965511>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.705578, 37.859211, 45.937336>,  <37.308449, 37.868389, 45.890373>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.705578, 37.859211, 45.937336> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119474, -0.140715, 0.982815,
		-0.006030, -0.989784, -0.142445,
		0.992819, -0.022945, 0.117405,
		38.003422, 37.852325, 45.972557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.462154, 37.301960, 46.275490>,  <37.308449, 37.868389, 45.890373>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.462154, 37.301960, 46.275490> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.785484, 37.532055, 46.325634>,  <37.979481, 37.670113, 46.355721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.785484, 37.532055, 46.325634>,  <37.462154, 37.301960, 46.275490>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.785484, 37.532055, 46.325634> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111291, -0.059804, 0.991987,
		0.578124, -0.815798, 0.015678,
		0.808324, 0.575236, 0.125365,
		38.027981, 37.704624, 46.363243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.987255, 36.880787, 46.705338>,  <37.462154, 37.301960, 46.275490>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.987255, 36.880787, 46.705338> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.083199, 37.266541, 46.749947>,  <38.140766, 37.497993, 46.776711>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.083199, 37.266541, 46.749947>,  <37.987255, 36.880787, 46.705338>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.083199, 37.266541, 46.749947> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093830, -0.091309, 0.991392,
		0.966262, -0.248260, 0.068586,
		0.239861, 0.964380, 0.111523,
		38.155155, 37.555855, 46.783405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.443111, 36.997345, 47.267494>,  <37.987255, 36.880787, 46.705338>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.443111, 36.997345, 47.267494> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.321041, 37.377441, 47.242512>,  <38.247799, 37.605499, 47.227520>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.321041, 37.377441, 47.242512>,  <38.443111, 36.997345, 47.267494>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.321041, 37.377441, 47.242512> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047770, 0.050231, 0.997595,
		0.951097, 0.307426, 0.030064,
		-0.305177, 0.950245, -0.062460,
		38.229488, 37.662514, 47.223774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.922028, 37.390106, 47.727394>,  <38.443111, 36.997345, 47.267494>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.922028, 37.390106, 47.727394> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.570148, 37.574375, 47.680210>,  <38.359020, 37.684937, 47.651901>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.570148, 37.574375, 47.680210>,  <38.922028, 37.390106, 47.727394>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.570148, 37.574375, 47.680210> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080780, 0.099685, 0.991735,
		0.468626, 0.881953, -0.050479,
		-0.879695, 0.460675, -0.117959,
		38.306240, 37.712578, 47.644821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.003422, 37.965309, 48.227402>,  <38.922028, 37.390106, 47.727394>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.003422, 37.965309, 48.227402> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.613819, 37.942364, 48.139744>,  <38.380058, 37.928596, 48.087147>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.613819, 37.942364, 48.139744>,  <39.003422, 37.965309, 48.227402>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.613819, 37.942364, 48.139744> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226529, 0.244561, 0.942801,
		-0.000486, 0.967936, -0.251198,
		-0.974004, -0.057362, -0.219147,
		38.321617, 37.925156, 48.074001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<30.771851, 39.499710, 45.849152> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.147141, 39.386414, 45.928658>,  <31.372314, 39.318436, 45.976360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.147141, 39.386414, 45.928658>,  <30.771851, 39.499710, 45.849152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.147141, 39.386414, 45.928658> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243809, 0.133519, -0.960588,
		0.245538, 0.949709, 0.194328,
		0.938226, -0.283240, 0.198763,
		31.428608, 39.301441, 45.988285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.128942, 39.917088, 45.493305>,  <30.771851, 39.499710, 45.849152>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.128942, 39.917088, 45.493305> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.376724, 39.610195, 45.559807>,  <31.525393, 39.426060, 45.599709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.376724, 39.610195, 45.559807>,  <31.128942, 39.917088, 45.493305>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.376724, 39.610195, 45.559807> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390466, 0.117398, -0.913101,
		0.681038, 0.630540, 0.372299,
		0.619454, -0.767227, 0.166252,
		31.562561, 39.380028, 45.609684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.692181, 40.163910, 45.182270>,  <31.128942, 39.917088, 45.493305>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.692181, 40.163910, 45.182270> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.744768, 39.768806, 45.215836>,  <31.776321, 39.531742, 45.235973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.744768, 39.768806, 45.215836>,  <31.692181, 40.163910, 45.182270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.744768, 39.768806, 45.215836> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392548, -0.025854, -0.919368,
		0.910287, 0.153808, 0.384346,
		0.131469, -0.987763, 0.083912,
		31.784208, 39.472477, 45.241009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.346813, 40.000450, 44.887722>,  <31.692181, 40.163910, 45.182270>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.346813, 40.000450, 44.887722> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.168842, 39.642281, 44.881317>,  <32.062061, 39.427380, 44.877476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.168842, 39.642281, 44.881317>,  <32.346813, 40.000450, 44.887722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.168842, 39.642281, 44.881317> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393490, -0.179395, -0.901656,
		0.804493, -0.407470, 0.432158,
		-0.444924, -0.895425, -0.016013,
		32.035366, 39.373653, 44.876514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.836506, 39.603340, 44.544373>,  <32.346813, 40.000450, 44.887722>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.836506, 39.603340, 44.544373> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.500805, 39.389160, 44.506542>,  <32.299385, 39.260654, 44.483845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.500805, 39.389160, 44.506542>,  <32.836506, 39.603340, 44.544373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.500805, 39.389160, 44.506542> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242440, -0.212809, -0.946539,
		0.486694, -0.817318, 0.308415,
		-0.839257, -0.535447, -0.094578,
		32.249027, 39.228527, 44.478168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.014645, 39.002136, 44.215309>,  <32.836506, 39.603340, 44.544373>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.014645, 39.002136, 44.215309> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.618828, 39.014744, 44.159019>,  <32.381336, 39.022308, 44.125244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.618828, 39.014744, 44.159019>,  <33.014645, 39.002136, 44.215309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.618828, 39.014744, 44.159019> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115766, -0.408291, -0.905482,
		-0.085997, -0.912308, 0.400374,
		-0.989547, 0.031519, -0.140726,
		32.321964, 39.024200, 44.116802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.782860, 38.318138, 43.961514>,  <33.014645, 39.002136, 44.215309>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.782860, 38.318138, 43.961514> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.509819, 38.594227, 43.865475>,  <32.345993, 38.759880, 43.807850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.509819, 38.594227, 43.865475>,  <32.782860, 38.318138, 43.961514>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.509819, 38.594227, 43.865475> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047714, -0.285754, -0.957114,
		-0.729232, -0.664783, 0.162123,
		-0.682601, 0.690223, -0.240101,
		32.305038, 38.801292, 43.793446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.387775, 38.040802, 43.446476>,  <32.782860, 38.318138, 43.961514>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.387775, 38.040802, 43.446476> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.295547, 38.428276, 43.409637>,  <32.240211, 38.660763, 43.387535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.295547, 38.428276, 43.409637>,  <32.387775, 38.040802, 43.446476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.295547, 38.428276, 43.409637> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130908, -0.062904, -0.989397,
		-0.964210, -0.240182, -0.112305,
		-0.230571, 0.968688, -0.092095,
		32.226376, 38.718884, 43.382008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.766600, 38.216839, 42.976269>,  <32.387775, 38.040802, 43.446476>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.766600, 38.216839, 42.976269> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.966818, 38.563118, 42.978035>,  <32.086948, 38.770885, 42.979095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.966818, 38.563118, 42.978035>,  <31.766600, 38.216839, 42.976269>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.966818, 38.563118, 42.978035> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153020, 0.093489, -0.983791,
		-0.852079, 0.491758, 0.179264,
		0.500547, 0.865698, 0.004411,
		32.116982, 38.822826, 42.979359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.531115, 38.485527, 42.417992>,  <31.766600, 38.216839, 42.976269>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.531115, 38.485527, 42.417992> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.807535, 38.761082, 42.505520>,  <31.973387, 38.926414, 42.558037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.807535, 38.761082, 42.505520>,  <31.531115, 38.485527, 42.417992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.807535, 38.761082, 42.505520> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032719, 0.272612, -0.961568,
		-0.722066, 0.671651, 0.165848,
		0.691050, 0.688889, 0.218820,
		32.014851, 38.967747, 42.571167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.304890, 39.132721, 42.175564>,  <31.531115, 38.485527, 42.417992>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.304890, 39.132721, 42.175564> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.703545, 39.158161, 42.196236>,  <31.942738, 39.173424, 42.208637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.703545, 39.158161, 42.196236>,  <31.304890, 39.132721, 42.175564>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.703545, 39.158161, 42.196236> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030369, 0.299099, -0.953739,
		-0.076114, 0.952100, 0.296162,
		0.996636, 0.063599, 0.051680,
		32.002537, 39.177242, 42.211739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.460056, 39.821659, 42.042316>,  <31.304890, 39.132721, 42.175564>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.460056, 39.821659, 42.042316> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.752157, 39.567547, 41.941795>,  <31.927418, 39.415081, 41.881481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.752157, 39.567547, 41.941795>,  <31.460056, 39.821659, 42.042316>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.752157, 39.567547, 41.941795> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144594, 0.215794, -0.965674,
		0.667701, 0.741522, 0.065727,
		0.730252, -0.635278, -0.251305,
		31.971233, 39.376965, 41.866405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.761768, 40.166454, 41.445801>,  <31.460056, 39.821659, 42.042316>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.761768, 40.166454, 41.445801> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.938452, 39.807598, 41.443310>,  <32.044460, 39.592285, 41.441814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.938452, 39.807598, 41.443310>,  <31.761768, 40.166454, 41.445801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.938452, 39.807598, 41.443310> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188279, 0.099485, -0.977064,
		0.877181, 0.430403, 0.212855,
		0.441707, -0.897138, -0.006230,
		32.070965, 39.538456, 41.441441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.437843, 40.316887, 41.064758>,  <31.761768, 40.166454, 41.445801>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.437843, 40.316887, 41.064758> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.360966, 39.926464, 41.024025>,  <32.314838, 39.692211, 40.999584>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.360966, 39.926464, 41.024025>,  <32.437843, 40.316887, 41.064758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.360966, 39.926464, 41.024025> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260642, 0.049271, -0.964177,
		0.946111, -0.211853, 0.244932,
		-0.192196, -0.976059, -0.101834,
		32.303307, 39.633648, 40.993473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.139992, 40.259121, 41.520485>,  <32.437843, 40.316887, 41.064758>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.139992, 40.259121, 41.520485> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.463017, 40.483910, 41.592079>,  <33.656830, 40.618782, 41.635036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.463017, 40.483910, 41.592079>,  <33.139992, 40.259121, 41.520485>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.463017, 40.483910, 41.592079> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247354, 0.047214, 0.967774,
		0.535413, -0.825806, 0.177135,
		0.807557, 0.561974, 0.178988,
		33.705284, 40.652500, 41.645775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.311443, 40.046787, 42.151516>,  <33.139992, 40.259121, 41.520485>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.311443, 40.046787, 42.151516> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.561543, 40.358162, 42.129238>,  <33.711601, 40.544987, 42.115871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.561543, 40.358162, 42.129238>,  <33.311443, 40.046787, 42.151516>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.561543, 40.358162, 42.129238> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013712, 0.082315, 0.996512,
		0.780307, -0.622302, 0.062141,
		0.625247, 0.778437, -0.055698,
		33.749115, 40.591694, 42.112530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.838173, 39.892944, 42.564808>,  <33.311443, 40.046787, 42.151516>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.838173, 39.892944, 42.564808> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.813469, 40.291050, 42.534794>,  <33.798649, 40.529915, 42.516785>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.813469, 40.291050, 42.534794>,  <33.838173, 39.892944, 42.564808>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.813469, 40.291050, 42.534794> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005786, 0.075536, 0.997126,
		0.998074, 0.061145, -0.010423,
		-0.061757, 0.995266, -0.075037,
		33.794941, 40.589630, 42.512283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.409164, 40.268162, 42.949490>,  <33.838173, 39.892944, 42.564808>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.409164, 40.268162, 42.949490> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.103512, 40.522961, 42.908817>,  <33.920120, 40.675838, 42.884415>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.103512, 40.522961, 42.908817>,  <34.409164, 40.268162, 42.949490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.103512, 40.522961, 42.908817> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002237, 0.160250, 0.987074,
		0.645058, 0.754026, -0.123877,
		-0.764130, 0.636997, -0.101684,
		33.874271, 40.714058, 42.878311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.606487, 40.674675, 43.577831>,  <34.409164, 40.268162, 42.949490>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.606487, 40.674675, 43.577831> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.241856, 40.787342, 43.458035>,  <34.023079, 40.854942, 43.386158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.241856, 40.787342, 43.458035>,  <34.606487, 40.674675, 43.577831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.241856, 40.787342, 43.458035> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308436, 0.013128, 0.951154,
		0.271838, 0.959423, 0.074908,
		-0.911576, 0.281665, -0.299490,
		33.968384, 40.871841, 43.368187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.541382, 41.358986, 43.753487>,  <34.606487, 40.674675, 43.577831>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.541382, 41.358986, 43.753487> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.162663, 41.243374, 43.696861>,  <33.935432, 41.174007, 43.662888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.162663, 41.243374, 43.696861>,  <34.541382, 41.358986, 43.753487>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.162663, 41.243374, 43.696861> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261958, 0.436550, 0.860699,
		-0.186971, 0.851988, -0.489038,
		-0.946795, -0.289033, -0.141563,
		33.878624, 41.156666, 43.654392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.160286, 41.904327, 44.028053>,  <34.541382, 41.358986, 43.753487>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.160286, 41.904327, 44.028053> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.932175, 41.575829, 44.035343>,  <33.795307, 41.378727, 44.039719>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.932175, 41.575829, 44.035343>,  <34.160286, 41.904327, 44.028053>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.932175, 41.575829, 44.035343> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320301, 0.242737, 0.915689,
		-0.756433, 0.516360, -0.401475,
		-0.570277, -0.821250, 0.018224,
		33.761093, 41.329453, 44.040810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.526421, 42.068420, 44.268646>,  <34.160286, 41.904327, 44.028053>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.526421, 42.068420, 44.268646> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.529293, 41.677292, 44.352371>,  <33.531017, 41.442616, 44.402607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.529293, 41.677292, 44.352371>,  <33.526421, 42.068420, 44.268646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.529293, 41.677292, 44.352371> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321849, 0.195921, 0.926298,
		-0.946764, -0.074018, -0.313305,
		0.007180, -0.977822, 0.209314,
		33.531448, 41.383945, 44.415165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.942017, 41.912666, 44.763268>,  <33.526421, 42.068420, 44.268646>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.942017, 41.912666, 44.763268> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.215584, 41.622036, 44.789608>,  <33.379726, 41.447659, 44.805412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.215584, 41.622036, 44.789608>,  <32.942017, 41.912666, 44.763268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.215584, 41.622036, 44.789608> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113490, -0.016791, 0.993397,
		-0.720674, -0.686880, -0.093943,
		0.683922, -0.726577, 0.065853,
		33.420761, 41.404064, 44.809364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.649982, 41.376728, 45.191299>,  <32.942017, 41.912666, 44.763268>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.649982, 41.376728, 45.191299> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.042542, 41.322273, 45.245457>,  <33.278076, 41.289600, 45.277950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.042542, 41.322273, 45.245457>,  <32.649982, 41.376728, 45.191299>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.042542, 41.322273, 45.245457> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151719, -0.117673, 0.981394,
		-0.117673, -0.983676, -0.136138,
		-0.981394, 0.136138, -0.135395,
		33.336960, 41.281433, 45.286076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.706417, 40.853115, 45.736164>,  <32.649982, 41.376728, 45.191299>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.706417, 40.853115, 45.736164> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.063828, 41.032665, 45.740662>,  <33.278275, 41.140396, 45.743359>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.063828, 41.032665, 45.740662>,  <32.706417, 40.853115, 45.736164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.063828, 41.032665, 45.740662> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069653, -0.163302, 0.984114,
		0.443583, -0.878545, -0.177180,
		0.893523, 0.448878, 0.011245,
		33.331882, 41.167328, 45.744034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.188641, 40.396862, 46.098938>,  <32.706417, 40.853115, 45.736164>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.188641, 40.396862, 46.098938> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.335686, 40.768688, 46.110035>,  <33.423912, 40.991783, 46.116695>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.335686, 40.768688, 46.110035>,  <33.188641, 40.396862, 46.098938>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.335686, 40.768688, 46.110035> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105603, -0.071367, 0.991844,
		0.923964, -0.361683, -0.124401,
		0.367611, 0.929566, 0.027746,
		33.445969, 41.047558, 46.118359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.768097, 40.402233, 46.664356>,  <33.188641, 40.396862, 46.098938>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.768097, 40.402233, 46.664356> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.663486, 40.784000, 46.606823>,  <33.600719, 41.013062, 46.572304>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.663486, 40.784000, 46.606823>,  <33.768097, 40.402233, 46.664356>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.663486, 40.784000, 46.606823> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030300, 0.157065, 0.987123,
		0.964722, 0.253797, -0.069995,
		-0.261522, 0.954420, -0.143834,
		33.585030, 41.070328, 46.563671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.289474, 40.859661, 47.000717>,  <33.768097, 40.402233, 46.664356>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.289474, 40.859661, 47.000717> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.925499, 41.025066, 46.987923>,  <33.707115, 41.124310, 46.980247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.925499, 41.025066, 46.987923>,  <34.289474, 40.859661, 47.000717>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.925499, 41.025066, 46.987923> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032522, 0.005740, 0.999455,
		0.413469, 0.910481, 0.008225,
		-0.909937, 0.413511, -0.031985,
		33.652519, 41.149120, 46.978329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.016674, 41.018284, 47.133396>,  <34.289474, 40.859661, 47.000717>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.016674, 41.018284, 47.133396> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.314919, 40.767689, 47.224236>,  <35.493866, 40.617332, 47.278740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.314919, 40.767689, 47.224236>,  <35.016674, 41.018284, 47.133396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.314919, 40.767689, 47.224236> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382473, 0.123264, -0.915708,
		0.545690, 0.769620, 0.331523,
		0.745612, -0.626491, 0.227095,
		35.538601, 40.579742, 47.292362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.655754, 41.277252, 46.919765>,  <35.016674, 41.018284, 47.133396>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.655754, 41.277252, 46.919765> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.749817, 40.889103, 46.941978>,  <35.806255, 40.656216, 46.955307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.749817, 40.889103, 46.941978>,  <35.655754, 41.277252, 46.919765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.749817, 40.889103, 46.941978> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222402, -0.001897, -0.974953,
		0.946172, 0.241613, 0.215366,
		0.235153, -0.970371, 0.055531,
		35.820362, 40.597992, 46.958637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.393341, 41.248817, 46.708691>,  <35.655754, 41.277252, 46.919765>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.393341, 41.248817, 46.708691> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.226662, 40.888039, 46.663345>,  <36.126656, 40.671570, 46.636139>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.226662, 40.888039, 46.663345>,  <36.393341, 41.248817, 46.708691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.226662, 40.888039, 46.663345> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409399, -0.074859, -0.909279,
		0.811638, -0.425303, 0.400451,
		-0.416697, -0.901950, -0.113360,
		36.101654, 40.617455, 46.629337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.851269, 40.775208, 46.633293>,  <36.393341, 41.248817, 46.708691>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.851269, 40.775208, 46.633293> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.543686, 40.589779, 46.457195>,  <36.359138, 40.478523, 46.351536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.543686, 40.589779, 46.457195>,  <36.851269, 40.775208, 46.633293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.543686, 40.589779, 46.457195> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493801, 0.006702, -0.869549,
		0.406045, -0.886037, 0.223756,
		-0.768953, -0.463567, -0.440248,
		36.313000, 40.450710, 46.325123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.123447, 40.589592, 46.057381>,  <36.851269, 40.775208, 46.633293>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.123447, 40.589592, 46.057381> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.741367, 40.488205, 45.996258>,  <36.512119, 40.427372, 45.959583>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.741367, 40.488205, 45.996258>,  <37.123447, 40.589592, 46.057381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.741367, 40.488205, 45.996258> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169589, -0.045609, -0.984459,
		0.242560, -0.966268, 0.086551,
		-0.955198, -0.253468, -0.152805,
		36.454807, 40.412163, 45.950417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.132126, 40.006081, 45.669300>,  <37.123447, 40.589592, 46.057381>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.132126, 40.006081, 45.669300> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.775208, 40.173702, 45.602131>,  <36.561058, 40.274277, 45.561829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.775208, 40.173702, 45.602131>,  <37.132126, 40.006081, 45.669300>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.775208, 40.173702, 45.602131> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168716, -0.035478, -0.985026,
		-0.418739, -0.907267, -0.039045,
		-0.892296, 0.419057, -0.167926,
		36.507519, 40.299419, 45.551754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.877743, 39.688828, 44.955444>,  <37.132126, 40.006081, 45.669300>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.877743, 39.688828, 44.955444> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.669113, 40.022129, 45.028820>,  <36.543934, 40.222111, 45.072845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.669113, 40.022129, 45.028820>,  <36.877743, 39.688828, 44.955444>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.669113, 40.022129, 45.028820> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085648, 0.162780, -0.982938,
		-0.848894, -0.528390, -0.013536,
		-0.521578, 0.833251, 0.183438,
		36.512638, 40.272106, 45.083851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.406830, 39.618458, 44.488632>,  <36.877743, 39.688828, 44.955444>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.406830, 39.618458, 44.488632> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.414539, 40.009892, 44.570602>,  <36.419167, 40.244751, 44.619785>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.414539, 40.009892, 44.570602>,  <36.406830, 39.618458, 44.488632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.414539, 40.009892, 44.570602> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156203, 0.205392, -0.966134,
		-0.987537, -0.013388, 0.156817,
		0.019274, 0.978588, 0.204924,
		36.420322, 40.303467, 44.632080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.887352, 39.944561, 43.998436>,  <36.406830, 39.618458, 44.488632>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.887352, 39.944561, 43.998436> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.101295, 40.258045, 44.124748>,  <36.229660, 40.446136, 44.200535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.101295, 40.258045, 44.124748>,  <35.887352, 39.944561, 43.998436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.101295, 40.258045, 44.124748> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189232, 0.253131, -0.948744,
		-0.823479, 0.567199, -0.012914,
		0.534858, 0.783715, 0.315780,
		36.261753, 40.493160, 44.219482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.701305, 40.408447, 43.559319>,  <35.887352, 39.944561, 43.998436>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.701305, 40.408447, 43.559319> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.045853, 40.543388, 43.711227>,  <36.252583, 40.624355, 43.802372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.045853, 40.543388, 43.711227>,  <35.701305, 40.408447, 43.559319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.045853, 40.543388, 43.711227> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259928, 0.349621, -0.900113,
		-0.436435, 0.874046, 0.213466,
		0.861372, 0.337355, 0.379776,
		36.304264, 40.644596, 43.825161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.778862, 41.108234, 43.314373>,  <35.701305, 40.408447, 43.559319>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.778862, 41.108234, 43.314373> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.131123, 40.942097, 43.405533>,  <36.342480, 40.842415, 43.460228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.131123, 40.942097, 43.405533>,  <35.778862, 41.108234, 43.314373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.131123, 40.942097, 43.405533> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398378, 0.388864, -0.830711,
		0.256409, 0.822359, 0.507918,
		0.880653, -0.415345, 0.227901,
		36.395317, 40.817493, 43.473904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.232883, 41.522781, 42.889954>,  <35.778862, 41.108234, 43.314373>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.232883, 41.522781, 42.889954> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.447792, 41.206512, 43.007381>,  <36.576736, 41.016750, 43.077839>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.447792, 41.206512, 43.007381>,  <36.232883, 41.522781, 42.889954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.447792, 41.206512, 43.007381> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480214, 0.000637, -0.877151,
		0.693350, 0.612243, 0.380032,
		0.537272, -0.790669, 0.293566,
		36.608974, 40.969311, 43.095451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.978237, 41.712376, 42.803505>,  <36.232883, 41.522781, 42.889954>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.978237, 41.712376, 42.803505> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.947269, 41.313583, 42.805840>,  <36.928688, 41.074306, 42.807240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.947269, 41.313583, 42.805840>,  <36.978237, 41.712376, 42.803505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.947269, 41.313583, 42.805840> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538377, -0.046733, -0.841407,
		0.839140, -0.061997, 0.540370,
		-0.077418, -0.996982, 0.005838,
		36.924046, 41.014488, 42.807590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.667526, 41.443256, 42.694355>,  <36.978237, 41.712376, 42.803505>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.667526, 41.443256, 42.694355> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.419945, 41.148186, 42.586475>,  <37.271397, 40.971146, 42.521748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.419945, 41.148186, 42.586475>,  <37.667526, 41.443256, 42.694355>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.419945, 41.148186, 42.586475> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518069, -0.125350, -0.846104,
		0.590343, -0.663418, 0.459752,
		-0.618950, -0.737675, -0.269697,
		37.234261, 40.926884, 42.505566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<30.826887, 34.054577, 27.963425> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.790909, 33.658844, 28.009258>,  <30.769321, 33.421406, 28.036758>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.790909, 33.658844, 28.009258>,  <30.826887, 34.054577, 27.963425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.790909, 33.658844, 28.009258> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292099, 0.136196, 0.946641,
		-0.952149, 0.051676, -0.301233,
		-0.089946, -0.989333, 0.114584,
		30.763926, 33.362045, 28.043634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.133696, 33.872845, 28.135368>,  <30.826887, 34.054577, 27.963425>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.133696, 33.872845, 28.135368> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.275644, 33.512363, 28.234888>,  <30.360813, 33.296074, 28.294600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.275644, 33.512363, 28.234888>,  <30.133696, 33.872845, 28.135368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.275644, 33.512363, 28.234888> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672035, -0.060881, 0.738013,
		-0.649951, -0.429101, -0.627244,
		0.354870, -0.901202, 0.248801,
		30.382105, 33.242004, 28.309528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.504822, 33.350117, 28.165564>,  <30.133696, 33.872845, 28.135368>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.504822, 33.350117, 28.165564> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.805487, 33.199993, 28.382505>,  <29.985886, 33.109921, 28.512671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.805487, 33.199993, 28.382505>,  <29.504822, 33.350117, 28.165564>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.805487, 33.199993, 28.382505> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590946, -0.018057, 0.806509,
		-0.292897, -0.926724, -0.235360,
		0.751661, -0.375309, 0.542354,
		30.030985, 33.087402, 28.545212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.213470, 32.665089, 28.585115>,  <29.504822, 33.350117, 28.165564>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.213470, 32.665089, 28.585115> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.543953, 32.819176, 28.749550>,  <29.742243, 32.911629, 28.848211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.543953, 32.819176, 28.749550>,  <29.213470, 32.665089, 28.585115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.543953, 32.819176, 28.749550> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473370, 0.079043, 0.877310,
		0.305463, -0.919434, 0.247657,
		0.826204, 0.385219, 0.411088,
		29.791815, 32.934742, 28.872877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.463406, 32.193249, 29.066916>,  <29.213470, 32.665089, 28.585115>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.463406, 32.193249, 29.066916> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.582861, 32.558723, 29.177177>,  <29.654533, 32.778008, 29.243336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.582861, 32.558723, 29.177177>,  <29.463406, 32.193249, 29.066916>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.582861, 32.558723, 29.177177> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543868, -0.074415, 0.835865,
		0.784235, -0.399540, 0.474704,
		0.298636, 0.913691, 0.275656,
		29.672451, 32.832832, 29.259874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.562557, 32.115105, 29.746614>,  <29.463406, 32.193249, 29.066916>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.562557, 32.115105, 29.746614> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.556330, 32.511787, 29.695572>,  <29.552593, 32.749798, 29.664948>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.556330, 32.511787, 29.695572>,  <29.562557, 32.115105, 29.746614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.556330, 32.511787, 29.695572> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291637, 0.117566, 0.949277,
		0.956403, 0.051994, 0.287386,
		-0.015570, 0.991703, -0.127604,
		29.551659, 32.809299, 29.657291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.834375, 32.299679, 30.443266>,  <29.562557, 32.115105, 29.746614>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.834375, 32.299679, 30.443266> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.650364, 32.620346, 30.290581>,  <29.539957, 32.812744, 30.198969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.650364, 32.620346, 30.290581>,  <29.834375, 32.299679, 30.443266>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.650364, 32.620346, 30.290581> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213497, 0.317419, 0.923940,
		0.861853, 0.506535, 0.025131,
		-0.460030, 0.801666, -0.381712,
		29.512354, 32.860847, 30.176067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.092134, 32.904541, 30.827017>,  <29.834375, 32.299679, 30.443266>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.092134, 32.904541, 30.827017> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.728407, 32.977108, 30.677227>,  <29.510170, 33.020649, 30.587353>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.728407, 32.977108, 30.677227>,  <30.092134, 32.904541, 30.827017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.728407, 32.977108, 30.677227> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271070, 0.424521, 0.863888,
		0.315693, 0.887058, -0.336848,
		-0.909318, 0.181414, -0.374473,
		29.455612, 33.031532, 30.564884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.995226, 33.633801, 30.978889>,  <30.092134, 32.904541, 30.827017>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.995226, 33.633801, 30.978889> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.626268, 33.496830, 30.907404>,  <29.404894, 33.414650, 30.864513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.626268, 33.496830, 30.907404>,  <29.995226, 33.633801, 30.978889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.626268, 33.496830, 30.907404> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347295, 0.532748, 0.771729,
		-0.169048, 0.773903, -0.610324,
		-0.922393, -0.342422, -0.178712,
		29.349550, 33.394104, 30.853790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.547262, 34.231270, 31.023441>,  <29.995226, 33.633801, 30.978889>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.547262, 34.231270, 31.023441> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.275450, 33.938751, 31.046894>,  <29.112362, 33.763241, 31.060966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.275450, 33.938751, 31.046894>,  <29.547262, 34.231270, 31.023441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.275450, 33.938751, 31.046894> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457025, 0.484477, 0.745929,
		-0.573904, 0.480085, -0.663440,
		-0.679531, -0.731300, 0.058632,
		29.071590, 33.719360, 31.064484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.914743, 34.567768, 31.098091>,  <29.547262, 34.231270, 31.023441>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.914743, 34.567768, 31.098091> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.807817, 34.195721, 31.198832>,  <28.743662, 33.972492, 31.259275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.807817, 34.195721, 31.198832>,  <28.914743, 34.567768, 31.098091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.807817, 34.195721, 31.198832> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618663, 0.366039, 0.695178,
		-0.738783, 0.030021, -0.673275,
		-0.267314, -0.930115, 0.251851,
		28.727623, 33.916687, 31.274387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.183935, 34.545898, 31.021669>,  <28.914743, 34.567768, 31.098091>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.183935, 34.545898, 31.021669> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.304956, 34.258171, 31.271803>,  <28.377569, 34.085537, 31.421883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.304956, 34.258171, 31.271803>,  <28.183935, 34.545898, 31.021669>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.304956, 34.258171, 31.271803> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517898, 0.426713, 0.741416,
		-0.800152, -0.548179, -0.243428,
		0.302555, -0.719316, 0.625336,
		28.395723, 34.042377, 31.459404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.563162, 34.289902, 31.404909>,  <28.183935, 34.545898, 31.021669>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.563162, 34.289902, 31.404909> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.889633, 34.196342, 31.616247>,  <28.085516, 34.140209, 31.743050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.889633, 34.196342, 31.616247>,  <27.563162, 34.289902, 31.404909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.889633, 34.196342, 31.616247> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422376, 0.382447, 0.821786,
		-0.394277, -0.893883, 0.213352,
		0.816176, -0.233897, 0.528345,
		28.134485, 34.126175, 31.774750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.277340, 33.945389, 31.922617>,  <27.563162, 34.289902, 31.404909>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.277340, 33.945389, 31.922617> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.634596, 34.078617, 32.043526>,  <27.848949, 34.158554, 32.116070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.634596, 34.078617, 32.043526>,  <27.277340, 33.945389, 31.922617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.634596, 34.078617, 32.043526> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419990, 0.377051, 0.825495,
		0.160975, -0.864232, 0.476644,
		0.893138, 0.333070, 0.302273,
		27.902536, 34.178539, 32.134209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.292160, 33.709217, 32.541344>,  <27.277340, 33.945389, 31.922617>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.292160, 33.709217, 32.541344> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.581512, 33.985291, 32.549007>,  <27.755125, 34.150932, 32.553604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.581512, 33.985291, 32.549007>,  <27.292160, 33.709217, 32.541344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.581512, 33.985291, 32.549007> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302910, 0.292307, 0.907084,
		0.620454, -0.661972, 0.420513,
		0.723383, 0.690181, 0.019155,
		27.798527, 34.192345, 32.554752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.472260, 33.726376, 33.219570>,  <27.292160, 33.709217, 32.541344>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.472260, 33.726376, 33.219570> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.625013, 34.061516, 33.063538>,  <27.716665, 34.262600, 32.969917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.625013, 34.061516, 33.063538>,  <27.472260, 33.726376, 33.219570>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.625013, 34.061516, 33.063538> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260319, 0.502495, 0.824459,
		0.886790, -0.213303, 0.410005,
		0.381886, 0.837855, -0.390081,
		27.739580, 34.312874, 32.946514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.872736, 34.040821, 33.715813>,  <27.472260, 33.726376, 33.219570>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.872736, 34.040821, 33.715813> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.799021, 34.340698, 33.461567>,  <27.754791, 34.520622, 33.309021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.799021, 34.340698, 33.461567>,  <27.872736, 34.040821, 33.715813>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.799021, 34.340698, 33.461567> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271596, 0.582667, 0.765986,
		0.944602, 0.313793, 0.096233,
		-0.184289, 0.749689, -0.635613,
		27.743734, 34.565605, 33.270882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.178267, 34.516251, 34.058285>,  <27.872736, 34.040821, 33.715813>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.178267, 34.516251, 34.058285> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.947313, 34.720798, 33.803684>,  <27.808743, 34.843529, 33.650925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.947313, 34.720798, 33.803684>,  <28.178267, 34.516251, 34.058285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.947313, 34.720798, 33.803684> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197391, 0.669019, 0.716554,
		0.792254, 0.539364, -0.285340,
		-0.577382, 0.511370, -0.636499,
		27.774099, 34.874210, 33.612736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.408430, 35.216301, 34.074398>,  <28.178267, 34.516251, 34.058285>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.408430, 35.216301, 34.074398> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.022467, 35.186699, 33.973618>,  <27.790890, 35.168938, 33.913151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.022467, 35.186699, 33.973618>,  <28.408430, 35.216301, 34.074398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.022467, 35.186699, 33.973618> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236642, 0.660947, 0.712144,
		0.113820, 0.746774, -0.655266,
		-0.964907, -0.074007, -0.251947,
		27.732994, 35.164497, 33.898033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.067253, 35.914642, 34.052174>,  <28.408430, 35.216301, 34.074398>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.067253, 35.914642, 34.052174> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.793196, 35.632427, 34.124615>,  <27.628761, 35.463100, 34.168079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.793196, 35.632427, 34.124615>,  <28.067253, 35.914642, 34.052174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.793196, 35.632427, 34.124615> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517504, 0.646450, 0.560618,
		-0.512610, 0.290382, -0.808028,
		-0.685143, -0.705536, 0.181102,
		27.587652, 35.420765, 34.178944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.812214, 36.230705, 33.985649>,  <28.067253, 35.914642, 34.052174>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.812214, 36.230705, 33.985649> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.136784, 36.261841, 34.217350>,  <29.331526, 36.280521, 34.356373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.136784, 36.261841, 34.217350>,  <28.812214, 36.230705, 33.985649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.136784, 36.261841, 34.217350> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568497, 0.124942, -0.813143,
		-0.135669, 0.989106, 0.057129,
		0.811422, 0.077841, 0.579254,
		29.380211, 36.285194, 34.391125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.109797, 36.755989, 33.808064>,  <28.812214, 36.230705, 33.985649>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.109797, 36.755989, 33.808064> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.420734, 36.577652, 33.985584>,  <29.607298, 36.470650, 34.092094>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.420734, 36.577652, 33.985584>,  <29.109797, 36.755989, 33.808064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.420734, 36.577652, 33.985584> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509973, 0.033565, -0.859535,
		0.368325, 0.894480, 0.253462,
		0.777344, -0.445847, 0.443798,
		29.653938, 36.443897, 34.118725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.789833, 37.060436, 33.589699>,  <29.109797, 36.755989, 33.808064>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.789833, 37.060436, 33.589699> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.929617, 36.712036, 33.727821>,  <30.013487, 36.502995, 33.810696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.929617, 36.712036, 33.727821>,  <29.789833, 37.060436, 33.589699>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.929617, 36.712036, 33.727821> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497159, -0.140003, -0.856290,
		0.794172, 0.470911, 0.384100,
		0.349462, -0.871000, 0.345304,
		30.034456, 36.450737, 33.831413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.516474, 37.121323, 33.602200>,  <29.789833, 37.060436, 33.589699>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.516474, 37.121323, 33.602200> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.440815, 36.728569, 33.597679>,  <30.395420, 36.492916, 33.594967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.440815, 36.728569, 33.597679>,  <30.516474, 37.121323, 33.602200>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.440815, 36.728569, 33.597679> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736294, -0.134202, -0.663220,
		0.649688, -0.133769, 0.748339,
		-0.189148, -0.981884, -0.011304,
		30.384071, 36.434006, 33.594288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.195276, 36.912174, 33.624691>,  <30.516474, 37.121323, 33.602200>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.195276, 36.912174, 33.624691> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.947638, 36.622353, 33.503532>,  <30.799055, 36.448460, 33.430836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.947638, 36.622353, 33.503532>,  <31.195276, 36.912174, 33.624691>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.947638, 36.622353, 33.503532> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632248, -0.231077, -0.739504,
		0.465815, -0.649332, 0.601153,
		-0.619096, -0.724550, -0.302900,
		30.761909, 36.404987, 33.412663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.621447, 36.389423, 33.527420>,  <31.195276, 36.912174, 33.624691>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.621447, 36.389423, 33.527420> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.290319, 36.302086, 33.320717>,  <31.091642, 36.249683, 33.196693>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.290319, 36.302086, 33.320717>,  <31.621447, 36.389423, 33.527420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.290319, 36.302086, 33.320717> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554722, -0.181237, -0.812057,
		0.083650, -0.958895, 0.271151,
		-0.827820, -0.218342, -0.516760,
		31.041973, 36.236584, 33.165688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.724417, 35.755127, 33.057941>,  <31.621447, 36.389423, 33.527420>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.724417, 35.755127, 33.057941> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.415722, 35.950336, 32.894844>,  <31.230505, 36.067463, 32.796986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.415722, 35.950336, 32.894844>,  <31.724417, 35.755127, 33.057941>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.415722, 35.950336, 32.894844> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392217, -0.139433, -0.909244,
		-0.500588, -0.861619, -0.083807,
		-0.771736, 0.488028, -0.407740,
		31.184200, 36.096745, 32.772522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.447224, 35.334305, 32.594486>,  <31.724417, 35.755127, 33.057941>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.447224, 35.334305, 32.594486> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.335085, 35.700947, 32.480476>,  <31.267801, 35.920933, 32.412071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.335085, 35.700947, 32.480476>,  <31.447224, 35.334305, 32.594486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.335085, 35.700947, 32.480476> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362201, -0.173969, -0.915721,
		-0.888942, -0.359954, -0.283224,
		-0.280345, 0.916607, -0.285024,
		31.250982, 35.975929, 32.394970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.428579, 35.304886, 31.948925>,  <31.447224, 35.334305, 32.594486>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.428579, 35.304886, 31.948925> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.384417, 35.701694, 31.924612>,  <31.357920, 35.939781, 31.910025>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.384417, 35.701694, 31.924612>,  <31.428579, 35.304886, 31.948925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.384417, 35.701694, 31.924612> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559407, 0.011479, -0.828813,
		-0.821507, -0.125508, -0.556214,
		-0.110407, 0.992026, -0.060780,
		31.351294, 35.999302, 31.906378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.082434, 35.561039, 31.236998>,  <31.428579, 35.304886, 31.948925>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.082434, 35.561039, 31.236998> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.285278, 35.859074, 31.410290>,  <31.406986, 36.037895, 31.514265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.285278, 35.859074, 31.410290>,  <31.082434, 35.561039, 31.236998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.285278, 35.859074, 31.410290> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399132, 0.242491, -0.884246,
		-0.763891, 0.621329, -0.174417,
		0.507113, 0.745083, 0.433229,
		31.437412, 36.082600, 31.540258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.949020, 36.182655, 30.816130>,  <31.082434, 35.561039, 31.236998>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.949020, 36.182655, 30.816130> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.298414, 36.224461, 31.006330>,  <31.508051, 36.249542, 31.120451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.298414, 36.224461, 31.006330>,  <30.949020, 36.182655, 30.816130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.298414, 36.224461, 31.006330> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453900, 0.178395, -0.873012,
		-0.176065, 0.978393, 0.108389,
		0.873485, 0.104509, 0.475502,
		31.560459, 36.255814, 31.148981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.214598, 36.771713, 30.582535>,  <30.949020, 36.182655, 30.816130>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.214598, 36.771713, 30.582535> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.542858, 36.587902, 30.718395>,  <31.739815, 36.477615, 30.799911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.542858, 36.587902, 30.718395>,  <31.214598, 36.771713, 30.582535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.542858, 36.587902, 30.718395> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479025, 0.229157, -0.847362,
		0.311554, 0.858091, 0.408184,
		0.820652, -0.459529, 0.339652,
		31.789053, 36.450043, 30.820292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.730946, 37.284180, 30.574514>,  <31.214598, 36.771713, 30.582535>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.730946, 37.284180, 30.574514> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.899885, 36.922241, 30.553076>,  <32.001251, 36.705078, 30.540213>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.899885, 36.922241, 30.553076>,  <31.730946, 37.284180, 30.574514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.899885, 36.922241, 30.553076> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427391, 0.250937, -0.868543,
		0.799348, 0.343923, 0.492707,
		0.422351, -0.904847, -0.053596,
		32.026592, 36.650787, 30.536997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.380230, 37.413815, 30.509933>,  <31.730946, 37.284180, 30.574514>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.380230, 37.413815, 30.509933> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.340748, 37.035614, 30.385817>,  <32.317059, 36.808693, 30.311346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.340748, 37.035614, 30.385817>,  <32.380230, 37.413815, 30.509933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.340748, 37.035614, 30.385817> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517628, 0.217528, -0.827492,
		0.849893, -0.242293, 0.467948,
		-0.098703, -0.945503, -0.310294,
		32.311138, 36.751965, 30.292728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.922623, 37.364834, 30.145088>,  <32.380230, 37.413815, 30.509933>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.922623, 37.364834, 30.145088> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.756073, 37.020008, 30.029518>,  <32.656143, 36.813114, 29.960176>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.756073, 37.020008, 30.029518>,  <32.922623, 37.364834, 30.145088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.756073, 37.020008, 30.029518> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548955, 0.014953, -0.835718,
		0.724764, -0.506577, 0.467009,
		-0.416373, -0.862065, -0.288925,
		32.631161, 36.761387, 29.942841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.533493, 36.832104, 29.852371>,  <32.922623, 37.364834, 30.145088>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.533493, 36.832104, 29.852371> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.183529, 36.723579, 29.691912>,  <32.973549, 36.658463, 29.595636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.183529, 36.723579, 29.691912>,  <33.533493, 36.832104, 29.852371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.183529, 36.723579, 29.691912> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468216, -0.262280, -0.843791,
		0.123720, -0.926065, 0.356506,
		-0.874910, -0.271316, -0.401149,
		32.921055, 36.642185, 29.571568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.647591, 36.200176, 29.461483>,  <33.533493, 36.832104, 29.852371>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.647591, 36.200176, 29.461483> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.307274, 36.353325, 29.317505>,  <33.103085, 36.445213, 29.231117>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.307274, 36.353325, 29.317505>,  <33.647591, 36.200176, 29.461483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.307274, 36.353325, 29.317505> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233363, -0.338443, -0.911591,
		-0.470846, -0.859572, 0.198595,
		-0.850791, 0.382874, -0.359946,
		33.052036, 36.468185, 29.209520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.478985, 35.756226, 28.862961>,  <33.647591, 36.200176, 29.461483>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.478985, 35.756226, 28.862961> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.250767, 36.081638, 28.817995>,  <33.113834, 36.276886, 28.791016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.250767, 36.081638, 28.817995>,  <33.478985, 35.756226, 28.862961>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.250767, 36.081638, 28.817995> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066665, -0.090548, -0.993659,
		-0.818555, -0.574423, -0.002573,
		-0.570548, 0.813535, -0.112412,
		33.079601, 36.325699, 28.784271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.987877, 35.639400, 28.289625>,  <33.478985, 35.756226, 28.862961>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.987877, 35.639400, 28.289625> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.023216, 36.036991, 28.315536>,  <33.044418, 36.275547, 28.331083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.023216, 36.036991, 28.315536>,  <32.987877, 35.639400, 28.289625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.023216, 36.036991, 28.315536> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105644, 0.055317, -0.992864,
		-0.990472, 0.094561, -0.100121,
		0.088348, 0.993981, 0.064780,
		33.049721, 36.335186, 28.334970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.556343, 35.845390, 27.832386>,  <32.987877, 35.639400, 28.289625>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.556343, 35.845390, 27.832386> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.828091, 36.129719, 27.905266>,  <32.991138, 36.300316, 27.948994>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.828091, 36.129719, 27.905266>,  <32.556343, 35.845390, 27.832386>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.828091, 36.129719, 27.905266> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236224, 0.023226, -0.971421,
		-0.694736, 0.702991, -0.152134,
		0.679367, 0.710819, 0.182199,
		33.031902, 36.342964, 27.959925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.345531, 36.444885, 27.427988>,  <32.556343, 35.845390, 27.832386>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.345531, 36.444885, 27.427988> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.736668, 36.417953, 27.507280>,  <32.971348, 36.401794, 27.554855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.736668, 36.417953, 27.507280>,  <32.345531, 36.444885, 27.427988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.736668, 36.417953, 27.507280> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198360, -0.004828, -0.980117,
		0.066943, 0.997719, 0.008634,
		0.977841, -0.067325, 0.198230,
		33.030022, 36.397755, 27.566750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.121548, 36.156151, 26.721880>,  <32.345531, 36.444885, 27.427988>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.121548, 36.156151, 26.721880> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.455532, 36.235046, 26.516384>,  <32.655922, 36.282383, 26.393085>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.455532, 36.235046, 26.516384>,  <32.121548, 36.156151, 26.721880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.455532, 36.235046, 26.516384> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009522, 0.928245, 0.371847,
		0.550219, -0.315372, 0.773175,
		0.834966, 0.197235, -0.513742,
		32.706020, 36.294216, 26.362261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<38.599716, 38.570549, 48.599438> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.312984, 38.300468, 48.529850>,  <38.140945, 38.138420, 48.488098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.312984, 38.300468, 48.529850>,  <38.599716, 38.570549, 48.599438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.312984, 38.300468, 48.529850> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399328, 0.193017, 0.896260,
		-0.571576, 0.711933, -0.407986,
		-0.716825, -0.675201, -0.173971,
		38.097939, 38.097908, 48.477657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.001213, 38.889481, 48.970081>,  <38.599716, 38.570549, 48.599438>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.001213, 38.889481, 48.970081> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.893406, 38.506634, 48.927578>,  <37.828724, 38.276928, 48.902077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.893406, 38.506634, 48.927578>,  <38.001213, 38.889481, 48.970081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.893406, 38.506634, 48.927578> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584130, 0.074756, 0.808210,
		-0.765606, 0.279896, -0.579228,
		-0.269516, -0.957115, -0.106262,
		37.812550, 38.219498, 48.895699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.227524, 38.884838, 48.911686>,  <38.001213, 38.889481, 48.970081>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.227524, 38.884838, 48.911686> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.341286, 38.515530, 49.014977>,  <37.409542, 38.293945, 49.076950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.341286, 38.515530, 49.014977>,  <37.227524, 38.884838, 48.911686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.341286, 38.515530, 49.014977> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642662, 0.016270, 0.765977,
		-0.711409, -0.383795, -0.588726,
		0.284400, -0.923275, 0.258225,
		37.426605, 38.238548, 49.092445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.700680, 38.584808, 49.093639>,  <37.227524, 38.884838, 48.911686>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.700680, 38.584808, 49.093639> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.951542, 38.346764, 49.294643>,  <37.102058, 38.203938, 49.415245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.951542, 38.346764, 49.294643>,  <36.700680, 38.584808, 49.093639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.951542, 38.346764, 49.294643> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630473, -0.009035, 0.776158,
		-0.457358, -0.803594, -0.380867,
		0.627158, -0.595109, 0.502512,
		37.139690, 38.168232, 49.445396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.325062, 37.932331, 49.197182>,  <36.700680, 38.584808, 49.093639>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.325062, 37.932331, 49.197182> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.608273, 37.943966, 49.479416>,  <36.778198, 37.950947, 49.648758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.608273, 37.943966, 49.479416>,  <36.325062, 37.932331, 49.197182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.608273, 37.943966, 49.479416> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693107, -0.162769, 0.702217,
		0.135271, -0.986236, -0.095086,
		0.708028, 0.029085, 0.705585,
		36.820683, 37.952690, 49.691090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.187145, 37.292480, 49.575424>,  <36.325062, 37.932331, 49.197182>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.187145, 37.292480, 49.575424> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.395000, 37.562958, 49.784325>,  <36.519714, 37.725243, 49.909664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.395000, 37.562958, 49.784325>,  <36.187145, 37.292480, 49.575424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.395000, 37.562958, 49.784325> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589174, -0.159074, 0.792193,
		0.618749, -0.719348, 0.315733,
		0.519637, 0.676190, 0.522249,
		36.550892, 37.765816, 49.940998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.915676, 37.085011, 50.210232>,  <36.187145, 37.292480, 49.575424>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.915676, 37.085011, 50.210232> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.136894, 37.401649, 50.314171>,  <36.269627, 37.591633, 50.376534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.136894, 37.401649, 50.314171>,  <35.915676, 37.085011, 50.210232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.136894, 37.401649, 50.314171> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417624, -0.006481, 0.908597,
		0.720925, -0.611012, 0.327004,
		0.553044, 0.791595, 0.259845,
		36.302807, 37.639130, 50.392124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.326595, 36.981266, 50.827579>,  <35.915676, 37.085011, 50.210232>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.326595, 36.981266, 50.827579> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.283787, 37.377098, 50.789043>,  <36.258102, 37.614597, 50.765923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.283787, 37.377098, 50.789043>,  <36.326595, 36.981266, 50.827579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.283787, 37.377098, 50.789043> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409474, 0.044429, 0.911239,
		0.906023, 0.136966, 0.400452,
		-0.107017, 0.989579, -0.096338,
		36.251682, 37.673973, 50.760143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.561634, 37.322536, 51.502686>,  <36.326595, 36.981266, 50.827579>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.561634, 37.322536, 51.502686> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.305080, 37.582905, 51.340240>,  <36.151150, 37.739124, 51.242771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.305080, 37.582905, 51.340240>,  <36.561634, 37.322536, 51.502686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.305080, 37.582905, 51.340240> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433698, 0.129043, 0.891770,
		0.632876, 0.748100, 0.199536,
		-0.641384, 0.650919, -0.406117,
		36.112663, 37.778179, 51.218407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.539665, 37.869785, 51.937927>,  <36.561634, 37.322536, 51.502686>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.539665, 37.869785, 51.937927> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.205067, 37.915833, 51.723629>,  <36.004307, 37.943462, 51.595051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.205067, 37.915833, 51.723629>,  <36.539665, 37.869785, 51.937927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.205067, 37.915833, 51.723629> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512945, 0.179440, 0.839457,
		0.192771, 0.977011, -0.091051,
		-0.836497, 0.115118, -0.535744,
		35.954117, 37.950367, 51.562904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.289112, 38.387070, 52.224682>,  <36.539665, 37.869785, 51.937927>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.289112, 38.387070, 52.224682> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.991318, 38.188774, 52.045803>,  <35.812641, 38.069798, 51.938477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.991318, 38.188774, 52.045803>,  <36.289112, 38.387070, 52.224682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.991318, 38.188774, 52.045803> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581727, 0.152979, 0.798869,
		-0.327617, 0.854894, -0.402274,
		-0.744487, -0.495736, -0.447196,
		35.767971, 38.040054, 51.911644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.791809, 38.831066, 52.425503>,  <36.289112, 38.387070, 52.224682>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.791809, 38.831066, 52.425503> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.583496, 38.514866, 52.296574>,  <35.458508, 38.325146, 52.219215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.583496, 38.514866, 52.296574>,  <35.791809, 38.831066, 52.425503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.583496, 38.514866, 52.296574> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420793, -0.090815, 0.902600,
		-0.742781, 0.605686, -0.285343,
		-0.520779, -0.790504, -0.322324,
		35.427261, 38.277714, 52.199875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.167896, 38.930523, 52.540783>,  <35.791809, 38.831066, 52.425503>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.167896, 38.930523, 52.540783> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.227463, 38.535324, 52.557209>,  <35.263203, 38.298206, 52.567066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.227463, 38.535324, 52.557209>,  <35.167896, 38.930523, 52.540783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.227463, 38.535324, 52.557209> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518388, -0.042631, 0.854082,
		-0.842080, -0.148474, -0.518514,
		0.148914, -0.987997, 0.041069,
		35.272137, 38.238926, 52.569530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.517975, 39.021923, 52.915718>,  <35.167896, 38.930523, 52.540783>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.517975, 39.021923, 52.915718> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.173180, 39.210709, 52.841705>,  <33.966305, 39.323978, 52.797298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.173180, 39.210709, 52.841705>,  <34.517975, 39.021923, 52.915718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.173180, 39.210709, 52.841705> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418574, 0.456730, -0.784980,
		-0.285970, -0.754090, -0.591244,
		-0.861985, 0.471960, -0.185032,
		33.914585, 39.352295, 52.786194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.196175, 38.818233, 52.293377>,  <34.517975, 39.021923, 52.915718>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.196175, 38.818233, 52.293377> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.115479, 39.196529, 52.395256>,  <34.067062, 39.423508, 52.456383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.115479, 39.196529, 52.395256>,  <34.196175, 38.818233, 52.293377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.115479, 39.196529, 52.395256> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539398, 0.324334, -0.777083,
		-0.817527, -0.019388, -0.575564,
		-0.201741, 0.945744, 0.254694,
		34.054955, 39.480251, 52.471664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.958778, 39.198887, 51.688248>,  <34.196175, 38.818233, 52.293377>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.958778, 39.198887, 51.688248> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.128536, 39.445560, 51.953453>,  <34.230392, 39.593567, 52.112576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.128536, 39.445560, 51.953453>,  <33.958778, 39.198887, 51.688248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.128536, 39.445560, 51.953453> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484864, 0.463622, -0.741594,
		-0.764718, 0.636201, -0.102249,
		0.424399, 0.616687, 0.663011,
		34.255856, 39.630566, 52.152355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.790340, 39.882374, 51.468735>,  <33.958778, 39.198887, 51.688248>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.790340, 39.882374, 51.468735> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.136143, 39.862324, 51.668781>,  <34.343624, 39.850292, 51.788811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.136143, 39.862324, 51.668781>,  <33.790340, 39.882374, 51.468735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.136143, 39.862324, 51.668781> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466847, 0.448772, -0.762009,
		-0.186241, 0.892239, 0.411368,
		0.864505, -0.050129, 0.500119,
		34.395493, 39.847286, 51.818817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.074421, 40.554379, 51.381187>,  <33.790340, 39.882374, 51.468735>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.074421, 40.554379, 51.381187> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.381168, 40.322456, 51.491264>,  <34.565216, 40.183304, 51.557312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.381168, 40.322456, 51.491264>,  <34.074421, 40.554379, 51.381187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.381168, 40.322456, 51.491264> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505185, 0.280859, -0.816031,
		0.395849, 0.764816, 0.508292,
		0.766872, -0.579806, 0.275195,
		34.611229, 40.148514, 51.573822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.667191, 41.060505, 51.320911>,  <34.074421, 40.554379, 51.381187>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.667191, 41.060505, 51.320911> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.785904, 40.678783, 51.306938>,  <34.857132, 40.449749, 51.298553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.785904, 40.678783, 51.306938>,  <34.667191, 41.060505, 51.320911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.785904, 40.678783, 51.306938> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524808, 0.193554, -0.828923,
		0.797808, 0.227676, 0.558271,
		0.296781, -0.954306, -0.034933,
		34.874939, 40.392490, 51.296459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.426342, 41.082535, 51.250935>,  <34.667191, 41.060505, 51.320911>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.426342, 41.082535, 51.250935> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.314259, 40.718273, 51.129486>,  <35.247009, 40.499714, 51.056618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.314259, 40.718273, 51.129486>,  <35.426342, 41.082535, 51.250935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.314259, 40.718273, 51.129486> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348275, 0.198300, -0.916177,
		0.894533, -0.362461, 0.261595,
		-0.280204, -0.910658, -0.303623,
		35.230198, 40.445076, 51.038399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.831356, 41.017849, 50.743755>,  <35.426342, 41.082535, 51.250935>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.831356, 41.017849, 50.743755> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.589577, 40.710579, 50.659340>,  <35.444508, 40.526215, 50.608688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.589577, 40.710579, 50.659340>,  <35.831356, 41.017849, 50.743755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.589577, 40.710579, 50.659340> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257924, 0.061938, -0.964178,
		0.753733, -0.637231, 0.160693,
		-0.604451, -0.768180, -0.211042,
		35.408241, 40.480125, 50.596027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.234009, 40.658092, 50.232643>,  <35.831356, 41.017849, 50.743755>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.234009, 40.658092, 50.232643> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.863304, 40.515854, 50.184200>,  <35.640881, 40.430511, 50.155136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.863304, 40.515854, 50.184200>,  <36.234009, 40.658092, 50.232643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.863304, 40.515854, 50.184200> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163306, -0.091039, -0.982366,
		0.338305, -0.930193, 0.142443,
		-0.926758, -0.355601, -0.121108,
		35.585278, 40.409172, 50.147869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.223454, 39.848705, 50.013325>,  <36.234009, 40.658092, 50.232643>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.223454, 39.848705, 50.013325> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.885426, 40.028496, 49.897514>,  <35.682610, 40.136372, 49.828030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.885426, 40.028496, 49.897514>,  <36.223454, 39.848705, 50.013325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.885426, 40.028496, 49.897514> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175780, -0.277838, -0.944409,
		-0.504930, -0.848986, 0.155783,
		-0.845072, 0.449477, -0.289524,
		35.631905, 40.163338, 49.810658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.163223, 39.595909, 49.276241>,  <36.223454, 39.848705, 50.013325>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.163223, 39.595909, 49.276241> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.879181, 39.876381, 49.301823>,  <35.708755, 40.044666, 49.317173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.879181, 39.876381, 49.301823>,  <36.163223, 39.595909, 49.276241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.879181, 39.876381, 49.301823> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081002, 0.008877, -0.996674,
		-0.699420, -0.712925, 0.050493,
		-0.710106, 0.701184, 0.063958,
		35.666149, 40.086735, 49.321011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.615509, 39.321091, 48.865910>,  <36.163223, 39.595909, 49.276241>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.615509, 39.321091, 48.865910> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.566879, 39.717091, 48.894516>,  <35.537701, 39.954693, 48.911682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.566879, 39.717091, 48.894516>,  <35.615509, 39.321091, 48.865910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.566879, 39.717091, 48.894516> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055721, 0.065132, -0.996320,
		-0.991018, -0.125109, 0.047246,
		-0.121572, 0.990003, 0.071518,
		35.530407, 40.014091, 48.915970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.258991, 39.479282, 48.273136>,  <35.615509, 39.321091, 48.865910>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.258991, 39.479282, 48.273136> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.392872, 39.837494, 48.390438>,  <35.473198, 40.052422, 48.460819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.392872, 39.837494, 48.390438>,  <35.258991, 39.479282, 48.273136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.392872, 39.837494, 48.390438> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174693, 0.364780, -0.914559,
		-0.925991, 0.254872, 0.278535,
		0.334699, 0.895531, 0.293259,
		35.493282, 40.106152, 48.478416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.795269, 39.983967, 48.039528>,  <35.258991, 39.479282, 48.273136>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.795269, 39.983967, 48.039528> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.155273, 40.151119, 48.089100>,  <35.371277, 40.251411, 48.118843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.155273, 40.151119, 48.089100>,  <34.795269, 39.983967, 48.039528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.155273, 40.151119, 48.089100> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104674, 0.483227, -0.869215,
		-0.423118, 0.769328, 0.478649,
		0.900008, 0.417882, 0.123933,
		35.425278, 40.276485, 48.126282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.725803, 40.628471, 47.750423>,  <34.795269, 39.983967, 48.039528>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.725803, 40.628471, 47.750423> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.122318, 40.576019, 47.745380>,  <35.360226, 40.544548, 47.742355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.122318, 40.576019, 47.745380>,  <34.725803, 40.628471, 47.750423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.122318, 40.576019, 47.745380> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048159, 0.449792, -0.891834,
		0.122621, 0.883454, 0.452187,
		0.991284, -0.131135, -0.012607,
		35.419704, 40.536678, 47.741600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.321522, 41.317112, 47.655502>,  <34.725803, 40.628471, 47.750423>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.321522, 41.317112, 47.655502> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.940769, 41.367008, 47.543530>,  <33.712318, 41.396946, 47.476345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.940769, 41.367008, 47.543530>,  <34.321522, 41.317112, 47.655502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.940769, 41.367008, 47.543530> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256898, 0.173263, 0.950780,
		0.167098, 0.976945, -0.132882,
		-0.951883, 0.124736, -0.279927,
		33.655205, 41.404430, 47.459553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.074814, 41.629292, 48.131519>,  <34.321522, 41.317112, 47.655502>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.074814, 41.629292, 48.131519> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.716927, 41.541889, 47.975704>,  <33.502193, 41.489449, 47.882214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.716927, 41.541889, 47.975704>,  <34.074814, 41.629292, 48.131519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.716927, 41.541889, 47.975704> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384428, -0.067260, 0.920702,
		-0.227380, 0.973515, -0.023821,
		-0.894714, -0.218507, -0.389540,
		33.448513, 41.476337, 47.858841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.610317, 42.069622, 48.379929>,  <34.074814, 41.629292, 48.131519>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.610317, 42.069622, 48.379929> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.373402, 41.766506, 48.270420>,  <33.231251, 41.584637, 48.204716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.373402, 41.766506, 48.270420>,  <33.610317, 42.069622, 48.379929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.373402, 41.766506, 48.270420> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418371, -0.001137, 0.908275,
		-0.688592, 0.652499, -0.316363,
		-0.592289, -0.757789, -0.273770,
		33.195713, 41.539169, 48.188290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.057331, 42.240120, 48.709534>,  <33.610317, 42.069622, 48.379929>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.057331, 42.240120, 48.709534> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.033951, 41.845829, 48.646393>,  <33.019920, 41.609253, 48.608509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.033951, 41.845829, 48.646393>,  <33.057331, 42.240120, 48.709534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.033951, 41.845829, 48.646393> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385108, -0.123618, 0.914555,
		-0.921019, 0.114249, -0.372387,
		-0.058453, -0.985731, -0.157853,
		33.016415, 41.550110, 48.599037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.409374, 41.964127, 48.955055>,  <33.057331, 42.240120, 48.709534>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.409374, 41.964127, 48.955055> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.600266, 41.612736, 48.945824>,  <32.714802, 41.401901, 48.940285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.600266, 41.612736, 48.945824>,  <32.409374, 41.964127, 48.955055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.600266, 41.612736, 48.945824> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386208, -0.233247, 0.892434,
		-0.789365, -0.416982, -0.450587,
		0.477227, -0.878477, -0.023076,
		32.743435, 41.349194, 48.938900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.914074, 41.530590, 49.065228>,  <32.409374, 41.964127, 48.955055>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.914074, 41.530590, 49.065228> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.243225, 41.332829, 49.177254>,  <32.440716, 41.214172, 49.244469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.243225, 41.332829, 49.177254>,  <31.914074, 41.530590, 49.065228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.243225, 41.332829, 49.177254> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463576, -0.299103, 0.834047,
		-0.328593, -0.816148, -0.475321,
		0.822875, -0.494409, 0.280063,
		32.490089, 41.184509, 49.261272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.850927, 40.846798, 49.054813>,  <31.914074, 41.530590, 49.065228>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.850927, 40.846798, 49.054813> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.142662, 40.914776, 49.319897>,  <32.317703, 40.955563, 49.478947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.142662, 40.914776, 49.319897>,  <31.850927, 40.846798, 49.054813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.142662, 40.914776, 49.319897> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543567, -0.444274, 0.712148,
		0.415452, -0.879624, -0.231648,
		0.729338, 0.169947, 0.662710,
		32.361465, 40.965759, 49.518711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.177639, 40.234268, 48.685242>,  <31.850927, 40.846798, 49.054813>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.177639, 40.234268, 48.685242> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.900797, 40.501732, 48.576508>,  <31.734694, 40.662209, 48.511269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.900797, 40.501732, 48.576508>,  <32.177639, 40.234268, 48.685242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.900797, 40.501732, 48.576508> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508163, 0.183923, -0.841393,
		-0.512608, -0.720465, -0.467080,
		-0.692101, 0.668658, -0.271834,
		31.693167, 40.702328, 48.494957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.238132, 39.419670, 48.555164>,  <32.177639, 40.234268, 48.685242>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.238132, 39.419670, 48.555164> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.858004, 39.299183, 48.523758>,  <31.629927, 39.226891, 48.504913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.858004, 39.299183, 48.523758>,  <32.238132, 39.419670, 48.555164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.858004, 39.299183, 48.523758> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121402, -0.126389, -0.984524,
		0.286633, -0.945142, 0.156678,
		-0.950317, -0.301218, -0.078515,
		31.572908, 39.208817, 48.500202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.312515, 38.761044, 48.229973>,  <32.238132, 39.419670, 48.555164>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.312515, 38.761044, 48.229973> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.951649, 38.913380, 48.148914>,  <31.735130, 39.004780, 48.100281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.951649, 38.913380, 48.148914>,  <32.312515, 38.761044, 48.229973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.951649, 38.913380, 48.148914> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124189, -0.220580, -0.967430,
		-0.413137, -0.897945, 0.151702,
		-0.902162, 0.380842, -0.202645,
		31.681000, 39.027634, 48.088120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.124306, 38.388870, 47.652691>,  <32.312515, 38.761044, 48.229973>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.124306, 38.388870, 47.652691> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.894346, 38.716003, 47.642624>,  <31.756371, 38.912285, 47.636581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.894346, 38.716003, 47.642624>,  <32.124306, 38.388870, 47.652691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.894346, 38.716003, 47.642624> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050341, 0.004649, -0.998721,
		-0.816675, -0.575431, -0.043843,
		-0.574899, 0.817837, -0.025171,
		31.721876, 38.961353, 47.635075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.640352, 38.198719, 47.201698>,  <32.124306, 38.388870, 47.652691>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.640352, 38.198719, 47.201698> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.602537, 38.596474, 47.220711>,  <31.579849, 38.835125, 47.232117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.602537, 38.596474, 47.220711>,  <31.640352, 38.198719, 47.201698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.602537, 38.596474, 47.220711> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091801, 0.038830, -0.995020,
		-0.991280, -0.098428, 0.087615,
		-0.094536, 0.994386, 0.047527,
		31.574177, 38.894791, 47.234970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.042580, 38.359005, 46.741856>,  <31.640352, 38.198719, 47.201698>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.042580, 38.359005, 46.741856> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.276735, 38.681507, 46.775959>,  <31.417229, 38.875008, 46.796421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.276735, 38.681507, 46.775959>,  <31.042580, 38.359005, 46.741856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.276735, 38.681507, 46.775959> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066579, 0.057003, -0.996151,
		-0.808014, 0.588813, -0.020311,
		0.585389, 0.806257, 0.085262,
		31.452353, 38.923386, 46.801537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.812719, 38.867786, 46.248791>,  <31.042580, 38.359005, 46.741856>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.812719, 38.867786, 46.248791> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.182396, 38.999504, 46.326183>,  <31.404202, 39.078533, 46.372620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.182396, 38.999504, 46.326183>,  <30.812719, 38.867786, 46.248791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.182396, 38.999504, 46.326183> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135321, 0.191398, -0.972139,
		-0.357152, 0.924625, 0.132329,
		0.924192, 0.329295, 0.193479,
		31.459654, 39.098293, 46.384228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<33.544025, 34.764511, 51.627365> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.666706, 35.144466, 51.651497>,  <33.740314, 35.372440, 51.665974>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.666706, 35.144466, 51.651497>,  <33.544025, 34.764511, 51.627365>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.666706, 35.144466, 51.651497> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104436, 0.029413, -0.994097,
		-0.946058, 0.311193, -0.090182,
		0.306703, 0.949892, 0.060326,
		33.758717, 35.429436, 51.669594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.166763, 35.301987, 51.087513>,  <33.544025, 34.764511, 51.627365>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.166763, 35.301987, 51.087513> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.539413, 35.422791, 51.168377>,  <33.763004, 35.495274, 51.216896>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.539413, 35.422791, 51.168377>,  <33.166763, 35.301987, 51.087513>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.539413, 35.422791, 51.168377> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167936, 0.135553, -0.976434,
		-0.322297, 0.943618, 0.075566,
		0.931623, 0.302012, 0.202155,
		33.818901, 35.513393, 51.229023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.297699, 35.789322, 50.545944>,  <33.166763, 35.301987, 51.087513>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.297699, 35.789322, 50.545944> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.656834, 35.707611, 50.701973>,  <33.872314, 35.658585, 50.795589>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.656834, 35.707611, 50.701973>,  <33.297699, 35.789322, 50.545944>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.656834, 35.707611, 50.701973> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418041, 0.117207, -0.900835,
		0.138302, 0.971871, 0.190629,
		0.897839, -0.204278, 0.390072,
		33.926186, 35.646328, 50.818996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.779274, 36.166420, 50.156532>,  <33.297699, 35.789322, 50.545944>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.779274, 36.166420, 50.156532> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.034634, 35.907276, 50.322773>,  <34.187851, 35.751789, 50.422516>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.034634, 35.907276, 50.322773>,  <33.779274, 36.166420, 50.156532>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.034634, 35.907276, 50.322773> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568819, 0.033339, -0.821787,
		0.518548, 0.761028, 0.389800,
		0.638398, -0.647862, 0.415599,
		34.226154, 35.712917, 50.447453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.468224, 36.450264, 50.035076>,  <33.779274, 36.166420, 50.156532>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.468224, 36.450264, 50.035076> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.546593, 36.061344, 50.086079>,  <34.593613, 35.827991, 50.116680>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.546593, 36.061344, 50.086079>,  <34.468224, 36.450264, 50.035076>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.546593, 36.061344, 50.086079> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614599, 0.020432, -0.788575,
		0.764123, 0.232861, 0.601574,
		0.195920, -0.972295, 0.127503,
		34.605370, 35.769657, 50.124329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.228634, 36.339951, 50.072914>,  <34.468224, 36.450264, 50.035076>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.228634, 36.339951, 50.072914> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.056641, 36.000664, 49.949211>,  <34.953445, 35.797092, 49.874989>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.056641, 36.000664, 49.949211>,  <35.228634, 36.339951, 50.072914>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.056641, 36.000664, 49.949211> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678350, -0.077484, -0.730642,
		0.595782, -0.523947, 0.608707,
		-0.429983, -0.848219, -0.309256,
		34.927647, 35.746197, 49.856434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.741615, 35.939068, 50.009571>,  <35.228634, 36.339951, 50.072914>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.741615, 35.939068, 50.009571> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.451599, 35.760456, 49.799839>,  <35.277588, 35.653290, 49.674000>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.451599, 35.760456, 49.799839>,  <35.741615, 35.939068, 50.009571>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.451599, 35.760456, 49.799839> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624867, -0.106402, -0.773447,
		0.289576, -0.888420, 0.356167,
		-0.725043, -0.446529, -0.524333,
		35.234085, 35.626499, 49.642540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.093651, 35.385735, 49.627949>,  <35.741615, 35.939068, 50.009571>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.093651, 35.385735, 49.627949> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.738987, 35.438450, 49.450649>,  <35.526188, 35.470081, 49.344269>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.738987, 35.438450, 49.450649>,  <36.093651, 35.385735, 49.627949>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.738987, 35.438450, 49.450649> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409827, -0.220022, -0.885230,
		-0.214186, -0.966552, 0.141075,
		-0.886660, 0.131788, -0.443245,
		35.472988, 35.477985, 49.317677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.032738, 34.747902, 49.260910>,  <36.093651, 35.385735, 49.627949>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.032738, 34.747902, 49.260910> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.783836, 35.016365, 49.099743>,  <35.634495, 35.177444, 49.003044>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.783836, 35.016365, 49.099743>,  <36.032738, 34.747902, 49.260910>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.783836, 35.016365, 49.099743> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355320, -0.216471, -0.909334,
		-0.697527, -0.709004, -0.103776,
		-0.622257, 0.671158, -0.402918,
		35.597160, 35.217712, 48.978867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.815186, 34.499035, 48.656136>,  <36.032738, 34.747902, 49.260910>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.815186, 34.499035, 48.656136> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.726925, 34.878029, 48.563541>,  <35.673969, 35.105427, 48.507984>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.726925, 34.878029, 48.563541>,  <35.815186, 34.499035, 48.656136>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.726925, 34.878029, 48.563541> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461239, -0.107756, -0.880708,
		-0.859401, -0.301102, -0.413240,
		-0.220654, 0.947484, -0.231485,
		35.660728, 35.162273, 48.494095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.423130, 34.509659, 47.998409>,  <35.815186, 34.499035, 48.656136>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.423130, 34.509659, 47.998409> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.587524, 34.869911, 48.054913>,  <35.686161, 35.086063, 48.088814>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.587524, 34.869911, 48.054913>,  <35.423130, 34.509659, 47.998409>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.587524, 34.869911, 48.054913> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371112, -0.023753, -0.928284,
		-0.832686, 0.433935, -0.343997,
		0.410986, 0.900631, 0.141260,
		35.710819, 35.140099, 48.097290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.054779, 34.934746, 47.529411>,  <35.423130, 34.509659, 47.998409>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.054779, 34.934746, 47.529411> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.409355, 35.090126, 47.630074>,  <35.622101, 35.183353, 47.690472>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.409355, 35.090126, 47.630074>,  <35.054779, 34.934746, 47.529411>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.409355, 35.090126, 47.630074> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201192, 0.166262, -0.965339,
		-0.416831, 0.906344, 0.069227,
		0.886439, 0.388455, 0.251653,
		35.675285, 35.206661, 47.705570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.451378, 35.390202, 47.434639>,  <35.054779, 34.934746, 47.529411>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.451378, 35.390202, 47.434639> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.076675, 35.286091, 47.341053>,  <33.851852, 35.223625, 47.284901>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.076675, 35.286091, 47.341053>,  <34.451378, 35.390202, 47.434639>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.076675, 35.286091, 47.341053> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271510, 0.118651, 0.955094,
		-0.220828, 0.958216, -0.181815,
		-0.936759, -0.260276, -0.233964,
		33.795647, 35.208008, 47.270863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.056141, 35.803223, 47.946312>,  <34.451378, 35.390202, 47.434639>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.056141, 35.803223, 47.946312> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.774933, 35.554138, 47.808914>,  <33.606209, 35.404686, 47.726475>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.774933, 35.554138, 47.808914>,  <34.056141, 35.803223, 47.946312>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.774933, 35.554138, 47.808914> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574876, 0.213271, 0.789958,
		-0.418660, 0.752824, -0.507917,
		-0.703023, -0.622713, -0.343492,
		33.564026, 35.367325, 47.705868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.469452, 36.158669, 47.987659>,  <34.056141, 35.803223, 47.946312>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.469452, 36.158669, 47.987659> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.335453, 35.781906, 47.977905>,  <33.255054, 35.555851, 47.972054>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.335453, 35.781906, 47.977905>,  <33.469452, 36.158669, 47.987659>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.335453, 35.781906, 47.977905> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681056, 0.224180, 0.697070,
		-0.651104, 0.250129, -0.716589,
		-0.335002, -0.941902, -0.024388,
		33.234951, 35.499336, 47.970589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.730770, 36.267517, 47.872112>,  <33.469452, 36.158669, 47.987659>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.730770, 36.267517, 47.872112> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.805454, 35.909016, 48.033043>,  <32.850266, 35.693916, 48.129601>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.805454, 35.909016, 48.033043>,  <32.730770, 36.267517, 47.872112>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.805454, 35.909016, 48.033043> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.852051, 0.056124, 0.520441,
		-0.489028, -0.439975, -0.753176,
		0.186710, -0.896254, 0.402328,
		32.861465, 35.640141, 48.153740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.095978, 35.822742, 47.845615>,  <32.730770, 36.267517, 47.872112>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.095978, 35.822742, 47.845615> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.324802, 35.674450, 48.138275>,  <32.462097, 35.585472, 48.313869>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.324802, 35.674450, 48.138275>,  <32.095978, 35.822742, 47.845615>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.324802, 35.674450, 48.138275> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743578, 0.142077, 0.653380,
		-0.346181, -0.917807, -0.194394,
		0.572058, -0.370735, 0.731645,
		32.496418, 35.563229, 48.357769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.664314, 35.323692, 48.285057>,  <32.095978, 35.822742, 47.845615>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.664314, 35.323692, 48.285057> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.981323, 35.347439, 48.527836>,  <32.171528, 35.361687, 48.673504>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.981323, 35.347439, 48.527836>,  <31.664314, 35.323692, 48.285057>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.981323, 35.347439, 48.527836> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595646, -0.138122, 0.791283,
		0.130809, -0.988634, -0.074103,
		0.792524, 0.059368, 0.606944,
		32.219082, 35.365250, 48.709919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.634212, 34.755081, 48.749249>,  <31.664314, 35.323692, 48.285057>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.634212, 34.755081, 48.749249> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.850433, 35.036163, 48.934292>,  <31.980165, 35.204811, 49.045319>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.850433, 35.036163, 48.934292>,  <31.634212, 34.755081, 48.749249>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.850433, 35.036163, 48.934292> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606601, -0.055477, 0.793069,
		0.582956, -0.709318, 0.396271,
		0.540554, 0.702703, 0.462613,
		32.012600, 35.246975, 49.073074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.769054, 34.488132, 49.298809>,  <31.634212, 34.755081, 48.749249>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.769054, 34.488132, 49.298809> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.834078, 34.874142, 49.381088>,  <31.873093, 35.105747, 49.430454>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.834078, 34.874142, 49.381088>,  <31.769054, 34.488132, 49.298809>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.834078, 34.874142, 49.381088> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383433, -0.130303, 0.914331,
		0.909150, -0.227504, 0.348838,
		0.162559, 0.965020, 0.205698,
		31.882845, 35.163647, 49.442799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.916094, 34.533970, 49.942123>,  <31.769054, 34.488132, 49.298809>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.916094, 34.533970, 49.942123> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.801445, 34.913948, 49.892410>,  <31.732655, 35.141937, 49.862583>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.801445, 34.913948, 49.892410>,  <31.916094, 34.533970, 49.942123>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.801445, 34.913948, 49.892410> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558064, -0.060101, 0.827619,
		0.778725, 0.306574, 0.547357,
		-0.286623, 0.949947, -0.124286,
		31.715458, 35.198933, 49.855125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.895338, 34.726261, 50.736973>,  <31.916094, 34.533970, 49.942123>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.895338, 34.726261, 50.736973> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.715353, 35.013588, 50.524727>,  <31.607361, 35.185986, 50.397381>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.715353, 35.013588, 50.524727>,  <31.895338, 34.726261, 50.736973>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.715353, 35.013588, 50.524727> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557378, 0.238340, 0.795313,
		0.697755, 0.653615, 0.293130,
		-0.449965, 0.718318, -0.530614,
		31.580364, 35.229084, 50.365543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.824768, 35.255379, 51.277374>,  <31.895338, 34.726261, 50.736973>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.824768, 35.255379, 51.277374> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.567965, 35.366814, 50.991657>,  <31.413881, 35.433674, 50.820229>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.567965, 35.366814, 50.991657>,  <31.824768, 35.255379, 51.277374>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.567965, 35.366814, 50.991657> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672152, 0.243669, 0.699169,
		0.368829, 0.928987, 0.030813,
		-0.642011, 0.278584, -0.714292,
		31.375360, 35.450390, 50.777370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.601971, 35.936718, 51.456841>,  <31.824768, 35.255379, 51.277374>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.601971, 35.936718, 51.456841> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.319330, 35.771473, 51.227043>,  <31.149746, 35.672325, 51.089165>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.319330, 35.771473, 51.227043>,  <31.601971, 35.936718, 51.456841>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.319330, 35.771473, 51.227043> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701305, 0.300713, 0.646330,
		-0.094250, 0.859597, -0.502205,
		-0.706603, -0.413115, -0.574497,
		31.107349, 35.647537, 51.054695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.139133, 36.472065, 51.513943>,  <31.601971, 35.936718, 51.456841>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.139133, 36.472065, 51.513943> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.926218, 36.156616, 51.390820>,  <30.798470, 35.967346, 51.316948>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.926218, 36.156616, 51.390820>,  <31.139133, 36.472065, 51.513943>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.926218, 36.156616, 51.390820> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757939, 0.281986, 0.588229,
		-0.377095, 0.546403, -0.747826,
		-0.532286, -0.788624, -0.307804,
		30.766533, 35.920029, 51.298477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.542372, 36.676880, 51.241333>,  <31.139133, 36.472065, 51.513943>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.542372, 36.676880, 51.241333> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.480078, 36.299747, 51.359188>,  <30.442701, 36.073467, 51.429901>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.480078, 36.299747, 51.359188>,  <30.542372, 36.676880, 51.241333>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.480078, 36.299747, 51.359188> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728932, 0.310992, 0.609870,
		-0.666637, -0.119795, -0.735693,
		-0.155735, -0.942832, 0.294642,
		30.433357, 36.016899, 51.447582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.393433, 37.392445, 51.005527>,  <30.542372, 36.676880, 51.241333>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.393433, 37.392445, 51.005527> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.222050, 37.741001, 51.101116>,  <30.119221, 37.950134, 51.158470>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.222050, 37.741001, 51.101116>,  <30.393433, 37.392445, 51.005527>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.222050, 37.741001, 51.101116> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419243, 0.426008, -0.801719,
		-0.800413, -0.243313, -0.547849,
		-0.428457, 0.871388, 0.238974,
		30.093513, 38.002419, 51.172810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.908224, 37.561077, 50.522419>,  <30.393433, 37.392445, 51.005527>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.908224, 37.561077, 50.522419> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.056423, 37.887856, 50.699203>,  <30.145342, 38.083923, 50.805275>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.056423, 37.887856, 50.699203>,  <29.908224, 37.561077, 50.522419>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.056423, 37.887856, 50.699203> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233876, 0.378441, -0.895592,
		-0.898907, 0.435178, -0.050853,
		0.370497, 0.816947, 0.441961,
		30.167572, 38.132938, 50.831791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.523460, 38.150536, 50.261547>,  <29.908224, 37.561077, 50.522419>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.523460, 38.150536, 50.261547> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.887392, 38.274223, 50.372253>,  <30.105751, 38.348434, 50.438679>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.887392, 38.274223, 50.372253>,  <29.523460, 38.150536, 50.261547>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.887392, 38.274223, 50.372253> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163627, 0.345599, -0.924006,
		-0.381368, 0.885973, 0.263839,
		0.909827, 0.309215, 0.276769,
		30.160339, 38.366989, 50.455284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.485912, 38.808277, 49.962608>,  <29.523460, 38.150536, 50.261547>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.485912, 38.808277, 49.962608> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.870188, 38.737701, 50.048351>,  <30.100754, 38.695354, 50.099796>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.870188, 38.737701, 50.048351>,  <29.485912, 38.808277, 49.962608>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.870188, 38.737701, 50.048351> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271639, 0.437817, -0.857046,
		0.057368, 0.881581, 0.468533,
		0.960688, -0.176439, 0.214355,
		30.158394, 38.684769, 50.112659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.760860, 39.411777, 49.845425>,  <29.485912, 38.808277, 49.962608>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.760860, 39.411777, 49.845425> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.062513, 39.150162, 49.821686>,  <30.243505, 38.993195, 49.807442>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.062513, 39.150162, 49.821686>,  <29.760860, 39.411777, 49.845425>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.062513, 39.150162, 49.821686> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314977, 0.439514, -0.841200,
		0.576258, 0.615684, 0.537457,
		0.754133, -0.654035, -0.059347,
		30.288754, 38.953953, 49.803883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.327803, 39.867359, 49.767181>,  <29.760860, 39.411777, 49.845425>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.327803, 39.867359, 49.767181> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.417089, 39.500229, 49.635872>,  <30.470661, 39.279949, 49.557087>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.417089, 39.500229, 49.635872>,  <30.327803, 39.867359, 49.767181>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.417089, 39.500229, 49.635872> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302796, 0.385403, -0.871654,
		0.926547, 0.095168, 0.363943,
		0.223218, -0.917828, -0.328277,
		30.484055, 39.224880, 49.537388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.006233, 39.963631, 49.659309>,  <30.327803, 39.867359, 49.767181>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.006233, 39.963631, 49.659309> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.833990, 39.661316, 49.461983>,  <30.730644, 39.479927, 49.343586>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.833990, 39.661316, 49.461983>,  <31.006233, 39.963631, 49.659309>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.833990, 39.661316, 49.461983> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393384, 0.334766, -0.856260,
		0.812297, -0.562774, 0.153163,
		-0.430607, -0.755789, -0.493315,
		30.704807, 39.434578, 49.313988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.715544, 40.260174, 49.650299>,  <31.006233, 39.963631, 49.659309>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.715544, 40.260174, 49.650299> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.976273, 40.522072, 49.803368>,  <32.132710, 40.679211, 49.895210>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.976273, 40.522072, 49.803368>,  <31.715544, 40.260174, 49.650299>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.976273, 40.522072, 49.803368> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351089, -0.186740, 0.917532,
		0.672211, -0.732417, 0.108153,
		0.651820, 0.654747, 0.382672,
		32.171818, 40.718494, 49.918171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.725882, 40.084381, 50.324654>,  <31.715544, 40.260174, 49.650299>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.725882, 40.084381, 50.324654> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.978292, 40.392548, 50.361023>,  <32.129738, 40.577446, 50.382843>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.978292, 40.392548, 50.361023>,  <31.725882, 40.084381, 50.324654>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.978292, 40.392548, 50.361023> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313466, 0.146015, 0.938306,
		0.709609, -0.620597, 0.333638,
		0.631026, 0.770414, 0.090923,
		32.167599, 40.623672, 50.388298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.192104, 39.896538, 50.897713>,  <31.725882, 40.084381, 50.324654>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.192104, 39.896538, 50.897713> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.199570, 40.295826, 50.875076>,  <32.204048, 40.535400, 50.861492>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.199570, 40.295826, 50.875076>,  <32.192104, 39.896538, 50.897713>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.199570, 40.295826, 50.875076> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283981, 0.059565, 0.956978,
		0.958648, -0.001792, 0.284588,
		0.018666, 0.998223, -0.056593,
		32.205170, 40.595291, 50.858097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.538303, 40.089695, 51.522301>,  <32.192104, 39.896538, 50.897713>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.538303, 40.089695, 51.522301> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.370819, 40.428429, 51.391125>,  <32.270329, 40.631668, 51.312420>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.370819, 40.428429, 51.391125>,  <32.538303, 40.089695, 51.522301>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.370819, 40.428429, 51.391125> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227706, 0.251678, 0.940642,
		0.879108, 0.468532, 0.087449,
		-0.418712, 0.846839, -0.327940,
		32.245205, 40.682480, 51.292744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.901947, 40.718605, 51.765690>,  <32.538303, 40.089695, 51.522301>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.901947, 40.718605, 51.765690> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.525246, 40.816216, 51.673134>,  <32.299225, 40.874783, 51.617599>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.525246, 40.816216, 51.673134>,  <32.901947, 40.718605, 51.765690>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.525246, 40.816216, 51.673134> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135744, 0.353678, 0.925465,
		0.307680, 0.902974, -0.299953,
		-0.941757, 0.244030, -0.231393,
		32.242718, 40.889423, 51.603714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.829521, 41.406185, 51.796959>,  <32.901947, 40.718605, 51.765690>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.829521, 41.406185, 51.796959> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.440399, 41.324444, 51.840580>,  <32.206924, 41.275398, 51.866753>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.440399, 41.324444, 51.840580>,  <32.829521, 41.406185, 51.796959>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.440399, 41.324444, 51.840580> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009817, 0.433998, 0.900861,
		-0.231423, 0.877431, -0.420188,
		-0.972804, -0.204355, 0.109051,
		32.148560, 41.263138, 51.873295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.533920, 41.966549, 51.922672>,  <32.829521, 41.406185, 51.796959>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.533920, 41.966549, 51.922672> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.271286, 41.695995, 52.056183>,  <32.113705, 41.533665, 52.136288>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.271286, 41.695995, 52.056183>,  <32.533920, 41.966549, 51.922672>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.271286, 41.695995, 52.056183> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042280, 0.408824, 0.911634,
		-0.753065, 0.612678, -0.239831,
		-0.656586, -0.676379, 0.333775,
		32.074310, 41.493080, 52.156315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.041100, 42.329056, 52.264771>,  <32.533920, 41.966549, 51.922672>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.041100, 42.329056, 52.264771> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.038513, 41.967167, 52.435150>,  <32.036961, 41.750034, 52.537380>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.038513, 41.967167, 52.435150>,  <32.041100, 42.329056, 52.264771>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.038513, 41.967167, 52.435150> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075214, 0.424313, 0.902386,
		-0.997146, 0.037870, 0.065305,
		-0.006464, -0.904723, 0.425951,
		32.036575, 41.695751, 52.562935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.669941, 42.389370, 52.927162>,  <32.041100, 42.329056, 52.264771>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.669941, 42.389370, 52.927162> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.856916, 42.039093, 52.975597>,  <31.969101, 41.828926, 53.004658>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.856916, 42.039093, 52.975597>,  <31.669941, 42.389370, 52.927162>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.856916, 42.039093, 52.975597> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149353, 0.213229, 0.965519,
		-0.871318, -0.433237, 0.230459,
		0.467439, -0.875694, 0.121085,
		31.997149, 41.776386, 53.011925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<34.962231, 40.968937, 37.470531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.333549, 40.828098, 37.422710>,  <35.556339, 40.743595, 37.394016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.333549, 40.828098, 37.422710>,  <34.962231, 40.968937, 37.470531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.333549, 40.828098, 37.422710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056631, -0.451632, 0.890405,
		-0.367504, -0.819790, -0.439188,
		0.928296, -0.352099, -0.119551,
		35.612038, 40.722469, 37.386845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.084034, 40.185352, 37.715115>,  <34.962231, 40.968937, 37.470531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.084034, 40.185352, 37.715115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.443829, 40.360111, 37.712475>,  <35.659706, 40.464966, 37.710892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.443829, 40.360111, 37.712475>,  <35.084034, 40.185352, 37.715115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.443829, 40.360111, 37.712475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046791, -0.081289, 0.995592,
		0.434430, -0.895833, -0.093561,
		0.899489, 0.436893, -0.006603,
		35.713676, 40.491180, 37.710495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.590157, 39.694656, 37.950527>,  <35.084034, 40.185352, 37.715115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.590157, 39.694656, 37.950527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.714260, 40.072224, 37.995697>,  <35.788723, 40.298763, 38.022800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.714260, 40.072224, 37.995697>,  <35.590157, 39.694656, 37.950527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.714260, 40.072224, 37.995697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030758, -0.128696, 0.991207,
		0.950153, -0.304061, -0.068962,
		0.310263, 0.943920, 0.112928,
		35.807339, 40.355400, 38.029575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.005497, 39.689785, 38.504547>,  <35.590157, 39.694656, 37.950527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.005497, 39.689785, 38.504547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.863644, 40.062649, 38.475380>,  <35.778530, 40.286366, 38.457878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.863644, 40.062649, 38.475380>,  <36.005497, 39.689785, 38.504547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.863644, 40.062649, 38.475380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098366, 0.040358, 0.994331,
		0.929817, 0.359796, 0.077381,
		-0.354634, 0.932158, -0.072918,
		35.757252, 40.342297, 38.453506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.938057, 39.802696, 39.268932>,  <36.005497, 39.689785, 38.504547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.938057, 39.802696, 39.268932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.756012, 40.120972, 39.109058>,  <35.646786, 40.311939, 39.013134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.756012, 40.120972, 39.109058>,  <35.938057, 39.802696, 39.268932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.756012, 40.120972, 39.109058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400224, 0.218174, 0.890068,
		0.795421, 0.565043, 0.219162,
		-0.455111, 0.795692, -0.399684,
		35.619480, 40.359680, 38.989155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.093212, 40.412571, 39.644524>,  <35.938057, 39.802696, 39.268932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.093212, 40.412571, 39.644524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.736263, 40.487442, 39.480263>,  <35.522095, 40.532364, 39.381706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.736263, 40.487442, 39.480263>,  <36.093212, 40.412571, 39.644524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.736263, 40.487442, 39.480263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369450, 0.219590, 0.902932,
		0.259184, 0.957468, -0.126804,
		-0.892373, 0.187178, -0.410651,
		35.468552, 40.543594, 39.357067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.896336, 40.929474, 40.055859>,  <36.093212, 40.412571, 39.644524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.896336, 40.929474, 40.055859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.563866, 40.830933, 39.856476>,  <35.364384, 40.771809, 39.736847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.563866, 40.830933, 39.856476>,  <35.896336, 40.929474, 40.055859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.563866, 40.830933, 39.856476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550312, 0.236447, 0.800780,
		-0.079420, 0.939894, -0.332102,
		-0.831173, -0.246357, -0.498457,
		35.314514, 40.757027, 39.706940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.494431, 41.383816, 40.228222>,  <35.896336, 40.929474, 40.055859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.494431, 41.383816, 40.228222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.231129, 41.111828, 40.099018>,  <35.073147, 40.948635, 40.021496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.231129, 41.111828, 40.099018>,  <35.494431, 41.383816, 40.228222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.231129, 41.111828, 40.099018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570511, 0.170668, 0.803362,
		-0.491137, 0.713098, -0.500276,
		-0.658257, -0.679973, -0.323009,
		35.033653, 40.907837, 40.002117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.759476, 41.561489, 40.233841>,  <35.494431, 41.383816, 40.228222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.759476, 41.561489, 40.233841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.680019, 41.169460, 40.232906>,  <34.632343, 40.934242, 40.232346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.680019, 41.169460, 40.232906>,  <34.759476, 41.561489, 40.233841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.680019, 41.169460, 40.232906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664723, 0.132975, 0.735161,
		-0.720197, 0.147591, -0.677889,
		-0.198645, -0.980069, -0.002339,
		34.620426, 40.875439, 40.232204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.024632, 41.559780, 40.385017>,  <34.759476, 41.561489, 40.233841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.024632, 41.559780, 40.385017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.183453, 41.209320, 40.494347>,  <34.278744, 40.999043, 40.559944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.183453, 41.209320, 40.494347>,  <34.024632, 41.559780, 40.385017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.183453, 41.209320, 40.494347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439778, 0.079772, 0.894557,
		-0.805573, -0.475385, -0.353640,
		0.397049, -0.876154, 0.273326,
		34.302567, 40.946472, 40.576344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.464176, 41.290874, 40.652134>,  <34.024632, 41.559780, 40.385017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.464176, 41.290874, 40.652134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.756500, 41.064800, 40.805225>,  <33.931896, 40.929157, 40.897079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.756500, 41.064800, 40.805225>,  <33.464176, 41.290874, 40.652134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.756500, 41.064800, 40.805225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452460, 0.018701, 0.891589,
		-0.511067, -0.824754, -0.242056,
		0.730815, -0.565183, 0.382725,
		33.975746, 40.895245, 40.920044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.114834, 40.759880, 41.017433>,  <33.464176, 41.290874, 40.652134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.114834, 40.759880, 41.017433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.485226, 40.769653, 41.168148>,  <33.707462, 40.775517, 41.258575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.485226, 40.769653, 41.168148>,  <33.114834, 40.759880, 41.017433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.485226, 40.769653, 41.168148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364553, -0.201982, 0.909013,
		0.098314, -0.979084, -0.178124,
		0.925978, 0.024433, 0.376786,
		33.763020, 40.776981, 41.281185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.932297, 40.116119, 40.581390>,  <33.114834, 40.759880, 41.017433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.932297, 40.116119, 40.581390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.670113, 39.814030, 40.581749>,  <32.512802, 39.632774, 40.581963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.670113, 39.814030, 40.581749>,  <32.932297, 40.116119, 40.581390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.670113, 39.814030, 40.581749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141526, -0.123992, -0.982139,
		0.741847, -0.643631, 0.188157,
		-0.655464, -0.755226, 0.000893,
		32.473473, 39.587463, 40.582016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.265305, 39.646259, 40.141224>,  <32.932297, 40.116119, 40.581390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.265305, 39.646259, 40.141224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.880363, 39.537834, 40.149288>,  <32.649399, 39.472778, 40.154125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.880363, 39.537834, 40.149288>,  <33.265305, 39.646259, 40.141224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.880363, 39.537834, 40.149288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052016, -0.256445, -0.965158,
		0.266791, -0.927771, 0.260889,
		-0.962350, -0.271066, 0.020158,
		32.591660, 39.456516, 40.155334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.267509, 39.031673, 39.766068>,  <33.265305, 39.646259, 40.141224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.267509, 39.031673, 39.766068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.903580, 39.197384, 39.756321>,  <32.685223, 39.296810, 39.750473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.903580, 39.197384, 39.756321>,  <33.267509, 39.031673, 39.766068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.903580, 39.197384, 39.756321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070855, -0.212936, -0.974494,
		-0.408896, -0.884893, 0.223088,
		-0.909826, 0.414274, -0.024370,
		32.630630, 39.321667, 39.749008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.716049, 38.503239, 39.445934>,  <33.267509, 39.031673, 39.766068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.716049, 38.503239, 39.445934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.590298, 38.880699, 39.404560>,  <32.514847, 39.107174, 39.379734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.590298, 38.880699, 39.404560>,  <32.716049, 38.503239, 39.445934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.590298, 38.880699, 39.404560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207045, -0.174499, -0.962643,
		-0.926445, -0.281214, 0.250236,
		-0.314374, 0.943647, -0.103440,
		32.495987, 39.163792, 39.373528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.097958, 38.405430, 39.328369>,  <32.716049, 38.503239, 39.445934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.097958, 38.405430, 39.328369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.169979, 38.768986, 39.177898>,  <32.213192, 38.987118, 39.087616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.169979, 38.768986, 39.177898>,  <32.097958, 38.405430, 39.328369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.169979, 38.768986, 39.177898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331141, -0.304096, -0.893236,
		-0.926243, 0.285397, 0.246216,
		0.180054, 0.908886, -0.376173,
		32.223995, 39.041653, 39.065048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.576248, 38.524635, 38.849735>,  <32.097958, 38.405430, 39.328369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.576248, 38.524635, 38.849735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.840721, 38.799519, 38.729347>,  <31.999405, 38.964447, 38.657116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.840721, 38.799519, 38.729347>,  <31.576248, 38.524635, 38.849735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.840721, 38.799519, 38.729347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169555, -0.253910, -0.952250,
		-0.730812, 0.680643, -0.051362,
		0.661184, 0.687208, -0.300967,
		32.039078, 39.005680, 38.639057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.228615, 38.985874, 38.335594>,  <31.576248, 38.524635, 38.849735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.228615, 38.985874, 38.335594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.620247, 39.009087, 38.257584>,  <31.855227, 39.023014, 38.210777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.620247, 39.009087, 38.257584>,  <31.228615, 38.985874, 38.335594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.620247, 39.009087, 38.257584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191824, -0.056438, -0.979805,
		-0.067870, 0.996718, -0.044125,
		0.979080, 0.058035, -0.195025,
		31.913971, 39.026497, 38.199078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.283424, 39.453556, 37.882942>,  <31.228615, 38.985874, 38.335594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.283424, 39.453556, 37.882942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.630619, 39.258396, 37.845940>,  <31.838936, 39.141300, 37.823738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.630619, 39.258396, 37.845940>,  <31.283424, 39.453556, 37.882942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.630619, 39.258396, 37.845940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133417, -0.049685, -0.989814,
		0.478331, 0.871486, -0.108220,
		0.867986, -0.487897, -0.092505,
		31.891014, 39.112026, 37.818188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.580318, 39.759026, 37.325108>,  <31.283424, 39.453556, 37.882942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.580318, 39.759026, 37.325108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.754206, 39.400604, 37.361115>,  <31.858538, 39.185551, 37.382717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.754206, 39.400604, 37.361115>,  <31.580318, 39.759026, 37.325108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.754206, 39.400604, 37.361115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048610, -0.123158, -0.991196,
		0.899253, 0.426516, -0.097096,
		0.434719, -0.896056, 0.090018,
		31.884621, 39.131786, 37.388119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.111515, 39.800686, 36.839607>,  <31.580318, 39.759026, 37.325108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.111515, 39.800686, 36.839607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.048534, 39.411839, 36.909115>,  <32.010746, 39.178532, 36.950821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.048534, 39.411839, 36.909115>,  <32.111515, 39.800686, 36.839607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.048534, 39.411839, 36.909115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039098, -0.181965, -0.982528,
		0.986752, -0.147907, 0.066658,
		-0.157452, -0.972117, 0.173771,
		32.001297, 39.120205, 36.961246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.524536, 39.478992, 36.295181>,  <32.111515, 39.800686, 36.839607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.524536, 39.478992, 36.295181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.304085, 39.168518, 36.417683>,  <32.171814, 38.982231, 36.491184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.304085, 39.168518, 36.417683>,  <32.524536, 39.478992, 36.295181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.304085, 39.168518, 36.417683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017636, -0.356104, -0.934280,
		0.834235, -0.520308, 0.182569,
		-0.551127, -0.776189, 0.306251,
		32.138748, 38.935661, 36.509560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.809200, 38.845695, 35.870838>,  <32.524536, 39.478992, 36.295181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.809200, 38.845695, 35.870838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.443707, 38.804520, 36.028061>,  <32.224411, 38.779816, 36.122395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.443707, 38.804520, 36.028061>,  <32.809200, 38.845695, 35.870838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.443707, 38.804520, 36.028061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326192, -0.390932, -0.860680,
		0.242254, -0.914645, 0.323631,
		-0.913735, -0.102938, 0.393055,
		32.169586, 38.773640, 36.145977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.529591, 38.217869, 35.574818>,  <32.809200, 38.845695, 35.870838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.529591, 38.217869, 35.574818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.197121, 38.398537, 35.704521>,  <31.997639, 38.506935, 35.782341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.197121, 38.398537, 35.704521>,  <32.529591, 38.217869, 35.574818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.197121, 38.398537, 35.704521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511617, -0.392952, -0.764092,
		-0.217699, -0.800990, 0.557694,
		-0.831176, 0.451668, 0.324255,
		31.947767, 38.534039, 35.801796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.042149, 37.764000, 35.488720>,  <32.529591, 38.217869, 35.574818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.042149, 37.764000, 35.488720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.858397, 38.118778, 35.507935>,  <31.748146, 38.331646, 35.519463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.858397, 38.118778, 35.507935>,  <32.042149, 37.764000, 35.488720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.858397, 38.118778, 35.507935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504243, -0.215876, -0.836144,
		-0.731240, -0.408328, 0.546402,
		-0.459376, 0.886942, 0.048039,
		31.720583, 38.384861, 35.522346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.092190, 37.442612, 36.152306>,  <32.042149, 37.764000, 35.488720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.092190, 37.442612, 36.152306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.983639, 37.255787, 36.488926>,  <31.918509, 37.143692, 36.690899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.983639, 37.255787, 36.488926>,  <32.092190, 37.442612, 36.152306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.983639, 37.255787, 36.488926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471165, -0.826897, -0.306993,
		0.839260, 0.313198, 0.444465,
		-0.271377, -0.467064, 0.841550,
		31.902225, 37.115669, 36.741390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.560570, 37.206539, 36.604832>,  <32.092190, 37.442612, 36.152306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.560570, 37.206539, 36.604832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.248962, 36.960098, 36.651405>,  <32.062000, 36.812233, 36.679352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.248962, 36.960098, 36.651405>,  <32.560570, 37.206539, 36.604832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.248962, 36.960098, 36.651405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508343, -0.729306, -0.457932,
		0.367049, -0.297546, 0.881329,
		-0.779014, -0.616101, 0.116436,
		32.015259, 36.775269, 36.686337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.785213, 37.030293, 37.364159>,  <32.560570, 37.206539, 36.604832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.785213, 37.030293, 37.364159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.180298, 37.085426, 37.334709>,  <33.417351, 37.118507, 37.317039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.180298, 37.085426, 37.334709>,  <32.785213, 37.030293, 37.364159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.180298, 37.085426, 37.334709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125462, -0.418591, 0.899467,
		0.093156, -0.897654, -0.430742,
		0.987715, 0.137833, -0.073627,
		33.476612, 37.126778, 37.312622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.035583, 36.367565, 37.531296>,  <32.785213, 37.030293, 37.364159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.035583, 36.367565, 37.531296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.262486, 36.671722, 37.657799>,  <33.398628, 36.854218, 37.733700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.262486, 36.671722, 37.657799>,  <33.035583, 36.367565, 37.531296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.262486, 36.671722, 37.657799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144555, -0.469990, 0.870754,
		0.810755, -0.448225, -0.376524,
		0.567256, 0.760397, 0.316253,
		33.432663, 36.899841, 37.752674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.636909, 36.101894, 37.784019>,  <33.035583, 36.367565, 37.531296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.636909, 36.101894, 37.784019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.570095, 36.453949, 37.961769>,  <33.530006, 36.665180, 38.068417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.570095, 36.453949, 37.961769>,  <33.636909, 36.101894, 37.784019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.570095, 36.453949, 37.961769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268101, -0.393174, 0.879509,
		0.948800, 0.266045, -0.170291,
		-0.167035, 0.880133, 0.444370,
		33.519985, 36.717991, 38.095081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.945808, 35.981827, 38.387581>,  <33.636909, 36.101894, 37.784019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.945808, 35.981827, 38.387581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.819206, 36.358650, 38.432034>,  <33.743244, 36.584743, 38.458706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.819206, 36.358650, 38.432034>,  <33.945808, 35.981827, 38.387581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.819206, 36.358650, 38.432034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054015, -0.099067, 0.993614,
		0.947050, 0.320491, -0.019529,
		-0.316510, 0.942057, 0.111132,
		33.724255, 36.641266, 38.465374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.535645, 36.312431, 38.870007>,  <33.945808, 35.981827, 38.387581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.535645, 36.312431, 38.870007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.203789, 36.533978, 38.898109>,  <34.004677, 36.666904, 38.914970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.203789, 36.533978, 38.898109>,  <34.535645, 36.312431, 38.870007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.203789, 36.533978, 38.898109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093714, 0.014090, 0.995499,
		0.550382, 0.832487, -0.063594,
		-0.829637, 0.553865, 0.070261,
		33.954899, 36.700138, 38.919189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.738644, 36.773479, 39.307713>,  <34.535645, 36.312431, 38.870007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.738644, 36.773479, 39.307713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.340313, 36.799786, 39.333046>,  <34.101315, 36.815567, 39.348248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.340313, 36.799786, 39.333046>,  <34.738644, 36.773479, 39.307713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.340313, 36.799786, 39.333046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068696, 0.082759, 0.994199,
		0.060141, 0.994397, -0.086931,
		-0.995823, 0.065763, 0.063334,
		34.041565, 36.819515, 39.352047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.543312, 37.370338, 39.699978>,  <34.738644, 36.773479, 39.307713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.543312, 37.370338, 39.699978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.225643, 37.127262, 39.700222>,  <34.035042, 36.981415, 39.700371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.225643, 37.127262, 39.700222>,  <34.543312, 37.370338, 39.699978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.225643, 37.127262, 39.700222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004655, 0.007092, 0.999964,
		-0.607674, 0.794141, -0.008461,
		-0.794173, -0.607692, 0.000613,
		33.987392, 36.944954, 39.700405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.187378, 37.670170, 40.219772>,  <34.543312, 37.370338, 39.699978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.187378, 37.670170, 40.219772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.002728, 37.323265, 40.145191>,  <33.891937, 37.115124, 40.100441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.002728, 37.323265, 40.145191>,  <34.187378, 37.670170, 40.219772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.002728, 37.323265, 40.145191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248203, -0.075517, 0.965760,
		-0.851643, 0.492100, -0.180395,
		-0.461628, -0.867257, -0.186454,
		33.864239, 37.063087, 40.089256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.516663, 37.623638, 40.639557>,  <34.187378, 37.670170, 40.219772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.516663, 37.623638, 40.639557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.651566, 37.256378, 40.556374>,  <33.732506, 37.036022, 40.506462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.651566, 37.256378, 40.556374>,  <33.516663, 37.623638, 40.639557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.651566, 37.256378, 40.556374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036048, -0.208148, 0.977433,
		-0.940722, -0.337144, -0.037102,
		0.337259, -0.918155, -0.207963,
		33.752743, 36.980930, 40.493984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.025116, 37.140427, 40.994678>,  <33.516663, 37.623638, 40.639557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.025116, 37.140427, 40.994678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.370171, 36.954323, 40.915287>,  <33.577202, 36.842663, 40.867653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.370171, 36.954323, 40.915287>,  <33.025116, 37.140427, 40.994678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.370171, 36.954323, 40.915287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058017, -0.298797, 0.952551,
		-0.502487, -0.833221, -0.230761,
		0.862636, -0.465256, -0.198483,
		33.628960, 36.814747, 40.855743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.873905, 36.613266, 41.412079>,  <33.025116, 37.140427, 40.994678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.873905, 36.613266, 41.412079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.262131, 36.571888, 41.325085>,  <33.495068, 36.547062, 41.272888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.262131, 36.571888, 41.325085>,  <32.873905, 36.613266, 41.412079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.262131, 36.571888, 41.325085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169331, -0.349047, 0.921679,
		-0.171255, -0.931378, -0.321257,
		0.970566, -0.103443, -0.217488,
		33.553299, 36.540855, 41.259838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.082966, 35.934807, 41.557430>,  <32.873905, 36.613266, 41.412079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.082966, 35.934807, 41.557430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.408237, 36.164925, 41.592697>,  <33.603401, 36.302994, 41.613857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.408237, 36.164925, 41.592697>,  <33.082966, 35.934807, 41.557430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.408237, 36.164925, 41.592697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207900, -0.428621, 0.879239,
		0.543614, -0.696649, -0.468149,
		0.813180, 0.575295, 0.088171,
		33.652191, 36.337513, 41.619148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.592709, 35.467766, 41.839008>,  <33.082966, 35.934807, 41.557430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.592709, 35.467766, 41.839008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.739716, 35.834583, 41.900932>,  <33.827919, 36.054672, 41.938087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.739716, 35.834583, 41.900932>,  <33.592709, 35.467766, 41.839008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.739716, 35.834583, 41.900932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301019, -0.274789, 0.913169,
		0.879955, -0.289002, -0.377036,
		0.367514, 0.917043, 0.154807,
		33.849968, 36.109695, 41.947376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.066994, 35.320732, 42.250694>,  <33.592709, 35.467766, 41.839008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.066994, 35.320732, 42.250694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.022251, 35.714439, 42.305389>,  <33.995403, 35.950665, 42.338207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.022251, 35.714439, 42.305389>,  <34.066994, 35.320732, 42.250694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.022251, 35.714439, 42.305389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247941, -0.105603, 0.963002,
		0.962296, 0.141622, -0.232229,
		-0.111859, 0.984272, 0.136735,
		33.988693, 36.009720, 42.346409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.781086, 35.669453, 42.402634>,  <34.066994, 35.320732, 42.250694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.781086, 35.669453, 42.402634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.461239, 35.856712, 42.553070>,  <34.269329, 35.969067, 42.643333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.461239, 35.856712, 42.553070>,  <34.781086, 35.669453, 42.402634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.461239, 35.856712, 42.553070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331698, -0.177747, 0.926489,
		0.500586, 0.865587, -0.013155,
		-0.799619, 0.468150, 0.376091,
		34.221352, 35.997158, 42.665897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.031715, 35.913647, 43.044094>,  <34.781086, 35.669453, 42.402634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.031715, 35.913647, 43.044094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.637127, 35.976856, 43.061516>,  <34.400372, 36.014782, 43.071968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.637127, 35.976856, 43.061516>,  <35.031715, 35.913647, 43.044094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.637127, 35.976856, 43.061516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029506, -0.090201, 0.995486,
		0.161235, 0.983308, 0.084318,
		-0.986475, 0.158019, 0.043557,
		34.341183, 36.024261, 43.074581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.915897, 36.427357, 43.549068>,  <35.031715, 35.913647, 43.044094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.915897, 36.427357, 43.549068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.554947, 36.260555, 43.505558>,  <34.338379, 36.160477, 43.479454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.554947, 36.260555, 43.505558>,  <34.915897, 36.427357, 43.549068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.554947, 36.260555, 43.505558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077588, -0.091073, 0.992817,
		-0.423913, 0.904331, 0.049828,
		-0.902374, -0.417002, -0.108772,
		34.284233, 36.135456, 43.472927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.406254, 36.830006, 44.003437>,  <34.915897, 36.427357, 43.549068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.406254, 36.830006, 44.003437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.259327, 36.466705, 43.923275>,  <34.171173, 36.248726, 43.875179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.259327, 36.466705, 43.923275>,  <34.406254, 36.830006, 44.003437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.259327, 36.466705, 43.923275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140971, -0.158612, 0.977225,
		-0.919352, 0.387200, -0.069777,
		-0.367314, -0.908250, -0.200404,
		34.149132, 36.194229, 43.863155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.935036, 36.775322, 44.554600>,  <34.406254, 36.830006, 44.003437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.935036, 36.775322, 44.554600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.948235, 36.393261, 44.436890>,  <33.956154, 36.164024, 44.366264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.948235, 36.393261, 44.436890>,  <33.935036, 36.775322, 44.554600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.948235, 36.393261, 44.436890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117470, -0.296104, 0.947905,
		-0.992528, 0.003289, -0.121972,
		0.032999, -0.955150, -0.294278,
		33.958134, 36.106716, 44.348606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.343922, 36.417351, 44.768723>,  <33.935036, 36.775322, 44.554600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.343922, 36.417351, 44.768723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.619846, 36.131546, 44.722034>,  <33.785400, 35.960064, 44.694023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.619846, 36.131546, 44.722034>,  <33.343922, 36.417351, 44.768723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.619846, 36.131546, 44.722034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234258, -0.372826, 0.897844,
		-0.685039, -0.592005, -0.424561,
		0.689815, -0.714515, -0.116718,
		33.826790, 35.917191, 44.687019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.992374, 35.789532, 44.820641>,  <33.343922, 36.417351, 44.768723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.992374, 35.789532, 44.820641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.382374, 35.728222, 44.884991>,  <33.616375, 35.691437, 44.923603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.382374, 35.728222, 44.884991>,  <32.992374, 35.789532, 44.820641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.382374, 35.728222, 44.884991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220900, -0.590182, 0.776459,
		-0.024063, -0.792586, -0.609285,
		0.975000, -0.153275, 0.160880,
		33.674873, 35.682240, 44.933254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.919533, 35.177868, 44.993248>,  <32.992374, 35.789532, 44.820641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.919533, 35.177868, 44.993248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.276600, 35.292763, 45.132179>,  <33.490841, 35.361702, 45.215538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.276600, 35.292763, 45.132179>,  <32.919533, 35.177868, 44.993248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.276600, 35.292763, 45.132179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127575, -0.578074, 0.805950,
		0.432281, -0.763756, -0.479384,
		0.892669, 0.287239, 0.347327,
		33.544399, 35.378933, 45.236378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.130325, 34.638947, 45.446335>,  <32.919533, 35.177868, 44.993248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.130325, 34.638947, 45.446335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.374939, 34.946320, 45.521744>,  <33.521706, 35.130745, 45.566990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.374939, 34.946320, 45.521744>,  <33.130325, 34.638947, 45.446335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.374939, 34.946320, 45.521744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009632, -0.231020, 0.972901,
		0.791161, -0.596776, -0.133874,
		0.611532, 0.768432, 0.188522,
		33.558399, 35.176849, 45.578300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.869633, 34.392429, 45.794369>,  <33.130325, 34.638947, 45.446335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.869633, 34.392429, 45.794369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.817020, 34.773571, 45.903744>,  <33.785454, 35.002254, 45.969368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.817020, 34.773571, 45.903744>,  <33.869633, 34.392429, 45.794369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.817020, 34.773571, 45.903744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148627, -0.291669, 0.944902,
		0.980107, 0.083648, 0.179984,
		-0.131535, 0.952855, 0.273434,
		33.777561, 35.059429, 45.985775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.179028, 34.414230, 46.376629>,  <33.869633, 34.392429, 45.794369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.179028, 34.414230, 46.376629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.976307, 34.757996, 46.403652>,  <33.854675, 34.964252, 46.419865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.976307, 34.757996, 46.403652>,  <34.179028, 34.414230, 46.376629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.976307, 34.757996, 46.403652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083906, -0.127173, 0.988325,
		0.857968, 0.495219, 0.136561,
		-0.506804, 0.859410, 0.067559,
		33.824265, 35.015820, 46.423920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.519646, 34.830929, 46.948608>,  <34.179028, 34.414230, 46.376629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.519646, 34.830929, 46.948608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.149994, 34.977360, 46.904823>,  <33.928204, 35.065216, 46.878551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.149994, 34.977360, 46.904823>,  <34.519646, 34.830929, 46.948608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.149994, 34.977360, 46.904823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069994, 0.119452, 0.990370,
		0.375625, 0.922887, -0.084766,
		-0.924125, 0.366075, -0.109465,
		33.872757, 35.087181, 46.871983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.131664, 35.349342, 46.955410>,  <34.519646, 34.830929, 46.948608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.131664, 35.349342, 46.955410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.500256, 35.341728, 47.110592>,  <35.721413, 35.337162, 47.203701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.500256, 35.341728, 47.110592>,  <35.131664, 35.349342, 46.955410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.500256, 35.341728, 47.110592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387671, 0.107217, -0.915541,
		-0.024172, 0.994054, 0.106176,
		0.921481, -0.019031, 0.387958,
		35.776699, 35.336018, 47.226978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.573761, 35.746830, 46.594128>,  <35.131664, 35.349342, 46.955410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.573761, 35.746830, 46.594128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.878334, 35.570068, 46.783840>,  <36.061077, 35.464012, 46.897667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.878334, 35.570068, 46.783840>,  <35.573761, 35.746830, 46.594128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.878334, 35.570068, 46.783840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493582, -0.079073, -0.866097,
		0.420236, 0.893570, 0.157908,
		0.761432, -0.441906, 0.474279,
		36.106762, 35.437496, 46.926125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.119465, 36.140141, 46.471016>,  <35.573761, 35.746830, 46.594128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.119465, 36.140141, 46.471016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.244045, 35.764866, 46.531422>,  <36.318794, 35.539700, 46.567665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.244045, 35.764866, 46.531422>,  <36.119465, 36.140141, 46.471016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.244045, 35.764866, 46.531422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311040, -0.049515, -0.949106,
		0.897915, 0.342574, 0.276392,
		0.311454, -0.938185, 0.151014,
		36.337482, 35.483410, 46.576725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.787514, 36.081242, 46.100742>,  <36.119465, 36.140141, 46.471016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.787514, 36.081242, 46.100742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.678017, 35.701267, 46.160995>,  <36.612320, 35.473282, 46.197147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.678017, 35.701267, 46.160995>,  <36.787514, 36.081242, 46.100742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.678017, 35.701267, 46.160995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194110, -0.207957, -0.958684,
		0.942013, -0.233191, 0.241318,
		-0.273740, -0.949935, 0.150634,
		36.595894, 35.416286, 46.206184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.368584, 35.750172, 45.797577>,  <36.787514, 36.081242, 46.100742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.368584, 35.750172, 45.797577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.064659, 35.490520, 45.812088>,  <36.882305, 35.334728, 45.820793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.064659, 35.490520, 45.812088>,  <37.368584, 35.750172, 45.797577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.064659, 35.490520, 45.812088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227752, -0.318016, -0.920324,
		0.608947, -0.691010, 0.389472,
		-0.759811, -0.649131, 0.036276,
		36.836716, 35.295780, 45.822971>
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
