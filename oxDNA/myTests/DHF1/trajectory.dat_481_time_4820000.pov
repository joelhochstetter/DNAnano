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
	<-0.739851, 1.932741, 0.798876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.529629, 2.090473, 1.100418>,  <-0.403496, 2.185112, 1.281343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.529629, 2.090473, 1.100418>,  <-0.739851, 1.932741, 0.798876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.529629, 2.090473, 1.100418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758600, -0.618326, -0.205426,
		0.385122, 0.679837, -0.624102,
		0.525554, 0.394329, 0.753855,
		-0.371963, 2.208772, 1.326575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.094617, 1.901277, 0.532510>,  <-0.739851, 1.932741, 0.798876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.094617, 1.901277, 0.532510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.079042, 1.887039, 0.931953>,  <-0.069697, 1.878497, 1.171619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.079042, 1.887039, 0.931953>,  <-0.094617, 1.901277, 0.532510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.079042, 1.887039, 0.931953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548827, -0.834370, -0.051140,
		0.835029, 0.550054, -0.012954,
		0.038938, -0.035593, 0.998607,
		-0.067361, 1.876361, 1.231536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.644128, 1.747007, 0.796129>,  <-0.094617, 1.901277, 0.532510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.644128, 1.747007, 0.796129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.381919, 1.606918, 1.063751>,  <0.224594, 1.522865, 1.224325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.381919, 1.606918, 1.063751>,  <0.644128, 1.747007, 0.796129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.381919, 1.606918, 1.063751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617504, -0.758589, 0.207923,
		0.434719, 0.549443, 0.713535,
		-0.655521, -0.350223, 0.669056,
		0.185263, 1.501852, 1.264468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.007146, 1.616561, 1.383000>,  <0.644128, 1.747007, 0.796129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.007146, 1.616561, 1.383000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.694665, 1.368553, 1.353882>,  <0.507177, 1.219748, 1.336411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.694665, 1.368553, 1.353882>,  <1.007146, 1.616561, 1.383000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.694665, 1.368553, 1.353882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593277, -0.773631, 0.222525,
		-0.194286, 0.130650, 0.972206,
		-0.781201, -0.620021, -0.072795,
		0.460305, 1.182547, 1.332043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.033837, 1.220321, 1.933527>,  <1.007146, 1.616561, 1.383000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.033837, 1.220321, 1.933527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.825994, 1.019512, 1.656982>,  <0.701287, 0.899027, 1.491056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.825994, 1.019512, 1.656982>,  <1.033837, 1.220321, 1.933527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.825994, 1.019512, 1.656982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471447, -0.843304, 0.258024,
		-0.712561, -0.191869, 0.674865,
		-0.519609, -0.502021, -0.691362,
		0.670111, 0.868906, 1.449574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.705121, 0.662693, 2.242236>,  <1.033837, 1.220321, 1.933527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.705121, 0.662693, 2.242236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.729167, 0.555107, 1.857727>,  <0.743596, 0.490556, 1.627022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.729167, 0.555107, 1.857727>,  <0.705121, 0.662693, 2.242236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.729167, 0.555107, 1.857727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502016, -0.824215, 0.262011,
		-0.862767, -0.498325, 0.085475,
		0.060117, -0.268964, -0.961272,
		0.747203, 0.474418, 1.569345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.489390, -0.035639, 2.290458>,  <0.705121, 0.662693, 2.242236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.489390, -0.035639, 2.290458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.675243, 0.022881, 1.941124>,  <0.786755, 0.057992, 1.731524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.675243, 0.022881, 1.941124>,  <0.489390, -0.035639, 2.290458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.675243, 0.022881, 1.941124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536276, -0.831311, 0.146051,
		-0.704645, -0.536208, -0.464711,
		0.464633, 0.146299, -0.873334,
		0.814633, 0.066770, 1.679124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.461384, -0.684389, 1.950361>,  <0.489390, -0.035639, 2.290458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.461384, -0.684389, 1.950361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.776059, -0.504765, 1.780907>,  <0.964863, -0.396990, 1.679234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.776059, -0.504765, 1.780907>,  <0.461384, -0.684389, 1.950361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.776059, -0.504765, 1.780907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541330, -0.831667, 0.123661,
		-0.296794, -0.326610, -0.897351,
		0.786687, 0.449061, -0.423637,
		1.012065, -0.370046, 1.653816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.947756, 3.384303, 1.837051> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.993773, 3.572578, 1.487144>,  <2.021383, 3.685544, 1.277200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.993773, 3.572578, 1.487144>,  <1.947756, 3.384303, 1.837051>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.993773, 3.572578, 1.487144> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494865, 0.790717, 0.360383,
		0.861321, 0.391432, 0.323893,
		0.115042, 0.470689, -0.874767,
		2.028285, 3.713785, 1.224714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.020211, 4.174189, 1.975135>,  <1.947756, 3.384303, 1.837051>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.020211, 4.174189, 1.975135> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.905521, 4.143471, 1.593163>,  <1.836708, 4.125040, 1.363979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.905521, 4.143471, 1.593163>,  <2.020211, 4.174189, 1.975135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.905521, 4.143471, 1.593163> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523001, 0.847687, 0.088864,
		0.802658, 0.524909, -0.283215,
		-0.286723, -0.076795, -0.954930,
		1.819504, 4.120432, 1.306683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.079020, 4.816462, 1.595111>,  <2.020211, 4.174189, 1.975135>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.079020, 4.816462, 1.595111> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.782482, 4.593704, 1.445297>,  <1.604559, 4.460050, 1.355409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.782482, 4.593704, 1.445297>,  <2.079020, 4.816462, 1.595111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.782482, 4.593704, 1.445297> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570519, 0.816844, -0.085291,
		0.353433, 0.150448, -0.923282,
		-0.741345, -0.556895, -0.374533,
		1.560079, 4.426636, 1.332937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.954744, 5.116346, 0.986486>,  <2.079020, 4.816462, 1.595111>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.954744, 5.116346, 0.986486> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.637848, 4.939613, 1.154839>,  <1.447711, 4.833574, 1.255850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.637848, 4.939613, 1.154839>,  <1.954744, 5.116346, 0.986486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.637848, 4.939613, 1.154839> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537774, 0.831485, -0.139395,
		-0.288368, -0.336774, -0.896341,
		-0.792239, -0.441832, 0.420882,
		1.400176, 4.807064, 1.281103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.420307, 5.074378, 0.464703>,  <1.954744, 5.116346, 0.986486>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.420307, 5.074378, 0.464703> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.235828, 5.066483, 0.819534>,  <1.125141, 5.061745, 1.032433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.235828, 5.066483, 0.819534>,  <1.420307, 5.074378, 0.464703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.235828, 5.066483, 0.819534> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672608, 0.659824, -0.335009,
		-0.578703, -0.751161, -0.317585,
		-0.461196, -0.019740, 0.887079,
		1.097470, 5.060561, 1.085658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.626961, 5.101405, 0.337019>,  <1.420307, 5.074378, 0.464703>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.626961, 5.101405, 0.337019> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.658018, 5.196732, 0.724251>,  <0.676653, 5.253928, 0.956590>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.658018, 5.196732, 0.724251>,  <0.626961, 5.101405, 0.337019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.658018, 5.196732, 0.724251> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673047, 0.728882, -0.125452,
		-0.735513, -0.641822, 0.216992,
		0.077644, 0.238318, 0.968079,
		0.681311, 5.268227, 1.014674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.028174, 5.057551, 0.646902>,  <0.626961, 5.101405, 0.337019>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.028174, 5.057551, 0.646902> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.176098, 5.322769, 0.865837>,  <0.298661, 5.481900, 0.997198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.176098, 5.322769, 0.865837>,  <-0.028174, 5.057551, 0.646902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.176098, 5.322769, 0.865837> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722503, 0.676029, -0.144827,
		-0.466042, -0.321492, 0.824286,
		0.510680, 0.663045, 0.547337,
		0.329302, 5.521683, 1.030038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.494184, 5.388590, 0.950526>,  <-0.028174, 5.057551, 0.646902>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.494184, 5.388590, 0.950526> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.197529, 5.638092, 1.049240>,  <-0.019535, 5.787793, 1.108469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.197529, 5.638092, 1.049240>,  <-0.494184, 5.388590, 0.950526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.197529, 5.638092, 1.049240> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664250, 0.734175, 0.140565,
		-0.093506, -0.268175, 0.958822,
		0.741639, 0.623754, 0.246785,
		0.024963, 5.825218, 1.123276>
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
