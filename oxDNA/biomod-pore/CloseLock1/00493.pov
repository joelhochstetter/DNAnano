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
	<24.524549, 34.693943, 34.924736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.393229, 35.069931, 34.961987>,  <24.314436, 35.295525, 34.984337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.393229, 35.069931, 34.961987>,  <24.524549, 34.693943, 34.924736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.393229, 35.069931, 34.961987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933113, 0.338048, -0.122567,
		-0.146692, 0.046661, -0.988081,
		-0.328300, 0.939971, 0.093129,
		24.294739, 35.351921, 34.989925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.607298, 35.185169, 34.323933>,  <24.524549, 34.693943, 34.924736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.607298, 35.185169, 34.323933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.629889, 35.383282, 34.670692>,  <24.643444, 35.502148, 34.878746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.629889, 35.383282, 34.670692>,  <24.607298, 35.185169, 34.323933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.629889, 35.383282, 34.670692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980028, 0.138318, -0.142873,
		-0.190670, 0.857653, -0.477573,
		0.056479, 0.495277, 0.866897,
		24.646832, 35.531864, 34.930763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.968287, 35.893517, 34.190121>,  <24.607298, 35.185169, 34.323933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.968287, 35.893517, 34.190121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.988665, 35.734921, 34.556770>,  <25.000893, 35.639763, 34.776760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.988665, 35.734921, 34.556770>,  <24.968287, 35.893517, 34.190121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.988665, 35.734921, 34.556770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998523, 0.037584, -0.039241,
		-0.018892, 0.917271, 0.397815,
		0.050946, -0.396486, 0.916626,
		25.003948, 35.615974, 34.831757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.409016, 36.226055, 34.631512>,  <24.968287, 35.893517, 34.190121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.409016, 36.226055, 34.631512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.400187, 35.864693, 34.802795>,  <25.394890, 35.647873, 34.905567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.400187, 35.864693, 34.802795>,  <25.409016, 36.226055, 34.631512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.400187, 35.864693, 34.802795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986307, -0.089698, -0.138396,
		0.163438, 0.419294, 0.893018,
		-0.022073, -0.903408, 0.428213,
		25.393564, 35.593670, 34.931259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.072790, 36.163322, 34.688599>,  <25.409016, 36.226055, 34.631512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.072790, 36.163322, 34.688599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.960138, 36.424946, 34.407776>,  <25.892548, 36.581921, 34.239281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.960138, 36.424946, 34.407776>,  <26.072790, 36.163322, 34.688599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.960138, 36.424946, 34.407776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753939, -0.603421, -0.259727,
		-0.593514, 0.456160, 0.663068,
		-0.281632, 0.654065, -0.702056,
		25.875650, 36.621166, 34.197159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.537415, 36.765774, 35.022087>,  <26.072790, 36.163322, 34.688599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.537415, 36.765774, 35.022087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.643322, 36.874954, 35.392036>,  <26.706865, 36.940464, 35.614006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.643322, 36.874954, 35.392036>,  <26.537415, 36.765774, 35.022087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.643322, 36.874954, 35.392036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361423, 0.917280, -0.167248,
		-0.894020, -0.289989, 0.341517,
		0.264767, 0.272955, 0.924875,
		26.722752, 36.956841, 35.669498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.077995, 37.261356, 35.214920>,  <26.537415, 36.765774, 35.022087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.077995, 37.261356, 35.214920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.380901, 37.333035, 35.466137>,  <26.562645, 37.376041, 35.616867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.380901, 37.333035, 35.466137>,  <26.077995, 37.261356, 35.214920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.380901, 37.333035, 35.466137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198342, 0.979305, -0.040275,
		-0.622263, -0.094068, 0.777136,
		0.757264, 0.179200, 0.628043,
		26.608080, 37.386795, 35.654549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.836258, 37.689072, 35.748459>,  <26.077995, 37.261356, 35.214920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.836258, 37.689072, 35.748459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.231741, 37.748806, 35.743412>,  <26.469030, 37.784645, 35.740383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.231741, 37.748806, 35.743412>,  <25.836258, 37.689072, 35.748459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.231741, 37.748806, 35.743412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149781, 0.987458, -0.049926,
		0.005006, 0.051253, 0.998673,
		0.988707, 0.149332, -0.012620,
		26.528353, 37.793606, 35.739628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.949318, 38.164013, 36.305820>,  <25.836258, 37.689072, 35.748459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.949318, 38.164013, 36.305820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.265554, 38.185993, 36.061871>,  <26.455296, 38.199181, 35.915501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.265554, 38.185993, 36.061871>,  <25.949318, 38.164013, 36.305820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.265554, 38.185993, 36.061871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102897, 0.993725, -0.043857,
		0.603636, 0.097427, 0.791285,
		0.790592, 0.054947, -0.609873,
		26.502731, 38.202477, 35.878910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.176949, 38.725914, 36.553188>,  <25.949318, 38.164013, 36.305820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.176949, 38.725914, 36.553188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.379040, 38.655804, 36.215187>,  <26.500294, 38.613739, 36.012386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.379040, 38.655804, 36.215187>,  <26.176949, 38.725914, 36.553188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.379040, 38.655804, 36.215187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087500, 0.984515, -0.151898,
		0.858539, 0.002805, 0.512740,
		0.505227, -0.175275, -0.845000,
		26.530607, 38.603222, 35.961689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.842659, 39.070271, 36.528034>,  <26.176949, 38.725914, 36.553188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.842659, 39.070271, 36.528034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.713614, 39.025272, 36.152103>,  <26.636187, 38.998276, 35.926544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.713614, 39.025272, 36.152103>,  <26.842659, 39.070271, 36.528034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.713614, 39.025272, 36.152103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376682, 0.895643, -0.236506,
		0.868350, -0.430314, -0.246572,
		-0.322612, -0.112491, -0.939823,
		26.616829, 38.991524, 35.870155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.464785, 39.495350, 36.036186>,  <26.842659, 39.070271, 36.528034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.464785, 39.495350, 36.036186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.116201, 39.446686, 35.846130>,  <26.907051, 39.417488, 35.732098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.116201, 39.446686, 35.846130>,  <27.464785, 39.495350, 36.036186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.116201, 39.446686, 35.846130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113958, 0.892013, -0.437409,
		0.477049, -0.435329, -0.763487,
		-0.871457, -0.121660, -0.475143,
		26.854765, 39.410187, 35.703587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.619251, 39.797153, 35.373768>,  <27.464785, 39.495350, 36.036186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.619251, 39.797153, 35.373768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.223263, 39.788601, 35.429630>,  <26.985670, 39.783470, 35.463150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.223263, 39.788601, 35.429630>,  <27.619251, 39.797153, 35.373768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.223263, 39.788601, 35.429630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081697, 0.893093, -0.442391,
		-0.115270, -0.449363, -0.885881,
		-0.989969, -0.021379, 0.139659,
		26.926271, 39.782188, 35.471527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.370289, 40.007740, 34.673172>,  <27.619251, 39.797153, 35.373768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.370289, 40.007740, 34.673172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.058126, 40.066025, 34.916397>,  <26.870829, 40.100994, 35.062332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.058126, 40.066025, 34.916397>,  <27.370289, 40.007740, 34.673172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.058126, 40.066025, 34.916397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056748, 0.951949, -0.300953,
		-0.622693, -0.269371, -0.734638,
		-0.780406, 0.145712, 0.608058,
		26.824005, 40.109737, 35.098816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.953846, 40.215828, 34.161041>,  <27.370289, 40.007740, 34.673172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.953846, 40.215828, 34.161041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.785723, 40.327175, 34.506493>,  <26.684849, 40.393982, 34.713764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.785723, 40.327175, 34.506493>,  <26.953846, 40.215828, 34.161041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.785723, 40.327175, 34.506493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293622, 0.858847, -0.419723,
		-0.858562, -0.429993, -0.279245,
		-0.420306, 0.278366, 0.863629,
		26.659630, 40.410686, 34.765583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.323286, 40.514198, 33.961647>,  <26.953846, 40.215828, 34.161041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.323286, 40.514198, 33.961647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.399818, 40.648682, 34.330505>,  <26.445738, 40.729374, 34.551819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.399818, 40.648682, 34.330505>,  <26.323286, 40.514198, 33.961647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.399818, 40.648682, 34.330505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344348, 0.902780, -0.257705,
		-0.919139, -0.268232, 0.288505,
		0.191332, 0.336213, 0.922146,
		26.457218, 40.749546, 34.607147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.749588, 40.850235, 34.113983>,  <26.323286, 40.514198, 33.961647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.749588, 40.850235, 34.113983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.022568, 41.004036, 34.362637>,  <26.186356, 41.096317, 34.511829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.022568, 41.004036, 34.362637>,  <25.749588, 40.850235, 34.113983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.022568, 41.004036, 34.362637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321205, 0.921701, -0.217475,
		-0.656577, -0.051255, 0.752515,
		0.682448, 0.384501, 0.621631,
		26.227303, 41.119385, 34.549126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.437674, 41.355888, 34.529839>,  <25.749588, 40.850235, 34.113983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.437674, 41.355888, 34.529839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.824205, 41.458530, 34.522282>,  <26.056126, 41.520115, 34.517750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.824205, 41.458530, 34.522282>,  <25.437674, 41.355888, 34.529839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.824205, 41.458530, 34.522282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256508, 0.966512, 0.007548,
		0.020192, -0.002449, 0.999793,
		0.966331, 0.256608, -0.018888,
		26.114105, 41.535511, 34.516617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.453411, 42.025368, 34.929382>,  <25.437674, 41.355888, 34.529839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.453411, 42.025368, 34.929382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.805164, 42.023659, 34.738945>,  <26.016216, 42.022633, 34.624683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.805164, 42.023659, 34.738945>,  <25.453411, 42.025368, 34.929382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.805164, 42.023659, 34.738945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088140, 0.981215, -0.171605,
		0.467884, 0.192870, 0.862488,
		0.879384, -0.004271, -0.476095,
		26.068979, 42.022377, 34.596115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.838625, 42.461632, 35.275246>,  <25.453411, 42.025368, 34.929382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.838625, 42.461632, 35.275246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.966923, 42.423351, 34.898319>,  <26.043901, 42.400383, 34.672161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.966923, 42.423351, 34.898319>,  <25.838625, 42.461632, 35.275246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.966923, 42.423351, 34.898319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132291, 0.980604, -0.144621,
		0.937881, 0.171047, 0.301863,
		0.320745, -0.095704, -0.942318,
		26.063147, 42.394642, 34.615623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.149115, 42.997166, 35.204208>,  <25.838625, 42.461632, 35.275246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.149115, 42.997166, 35.204208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.141159, 42.890305, 34.818829>,  <26.136385, 42.826187, 34.587601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.141159, 42.890305, 34.818829>,  <26.149115, 42.997166, 35.204208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.141159, 42.890305, 34.818829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179299, 0.948971, -0.259434,
		0.983594, 0.167585, -0.066776,
		-0.019891, -0.267150, -0.963450,
		26.135191, 42.810158, 34.529793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.534605, 43.531620, 34.913223>,  <26.149115, 42.997166, 35.204208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.534605, 43.531620, 34.913223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.342024, 43.361809, 34.606506>,  <26.226475, 43.259922, 34.422474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.342024, 43.361809, 34.606506>,  <26.534605, 43.531620, 34.913223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.342024, 43.361809, 34.606506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203487, 0.905102, -0.373340,
		0.852522, -0.023713, -0.522153,
		-0.481455, -0.424532, -0.766794,
		26.197588, 43.234447, 34.376469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.754457, 43.992245, 34.446568>,  <26.534605, 43.531620, 34.913223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.754457, 43.992245, 34.446568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.425991, 43.819473, 34.297371>,  <26.228912, 43.715809, 34.207851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.425991, 43.819473, 34.297371>,  <26.754457, 43.992245, 34.446568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.425991, 43.819473, 34.297371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249117, 0.859322, -0.446661,
		0.513448, -0.273864, -0.813247,
		-0.821165, -0.431931, -0.372993,
		26.179642, 43.689896, 34.185474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.701683, 44.154301, 33.665344>,  <26.754457, 43.992245, 34.446568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.701683, 44.154301, 33.665344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.326874, 44.064007, 33.771950>,  <26.101988, 44.009830, 33.835915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.326874, 44.064007, 33.771950>,  <26.701683, 44.154301, 33.665344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.326874, 44.064007, 33.771950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313302, 0.880513, -0.355723,
		-0.154369, -0.416820, -0.895785,
		-0.937023, -0.225739, 0.266515,
		26.045767, 43.996284, 33.851906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.365061, 44.241215, 33.147957>,  <26.701683, 44.154301, 33.665344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.365061, 44.241215, 33.147957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.096628, 44.283875, 33.441425>,  <25.935568, 44.309471, 33.617508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.096628, 44.283875, 33.441425>,  <26.365061, 44.241215, 33.147957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.096628, 44.283875, 33.441425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157891, 0.946338, -0.281983,
		-0.724375, -0.305074, -0.618232,
		-0.671082, 0.106648, 0.733672,
		25.895304, 44.315868, 33.661526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.723289, 44.570953, 32.821766>,  <26.365061, 44.241215, 33.147957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.723289, 44.570953, 32.821766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.777143, 44.645119, 33.211124>,  <25.809456, 44.689617, 33.444740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.777143, 44.645119, 33.211124>,  <25.723289, 44.570953, 32.821766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.777143, 44.645119, 33.211124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092515, 0.980398, -0.173955,
		-0.986567, -0.066633, 0.149147,
		0.134633, 0.185416, 0.973394,
		25.817533, 44.700745, 33.503143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.185919, 45.017254, 33.052677>,  <25.723289, 44.570953, 32.821766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.185919, 45.017254, 33.052677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.522612, 45.053158, 33.265629>,  <25.724627, 45.074699, 33.393402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.522612, 45.053158, 33.265629>,  <25.185919, 45.017254, 33.052677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.522612, 45.053158, 33.265629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072577, 0.995944, -0.053174,
		-0.534995, 0.006120, 0.844833,
		0.841732, 0.089763, 0.532382,
		25.775131, 45.080086, 33.425343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.943481, 45.716953, 33.312977>,  <25.185919, 45.017254, 33.052677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.943481, 45.716953, 33.312977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.322643, 45.599838, 33.363182>,  <25.550140, 45.529568, 33.393303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.322643, 45.599838, 33.363182>,  <24.943481, 45.716953, 33.312977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.322643, 45.599838, 33.363182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285579, 0.955613, 0.072445,
		-0.141149, -0.032828, 0.989444,
		0.947904, -0.292790, 0.125509,
		25.607014, 45.512001, 33.400833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.317196, 45.992107, 33.932331>,  <24.943481, 45.716953, 33.312977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.317196, 45.992107, 33.932331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.564676, 45.957275, 33.620018>,  <25.713163, 45.936375, 33.432629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.564676, 45.957275, 33.620018>,  <25.317196, 45.992107, 33.932331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.564676, 45.957275, 33.620018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318062, 0.936512, 0.147586,
		0.718364, -0.339650, 0.607117,
		0.618700, -0.087081, -0.780787,
		25.750286, 45.931152, 33.385780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.985775, 46.197441, 34.091579>,  <25.317196, 45.992107, 33.932331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.985775, 46.197441, 34.091579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.913202, 46.260746, 33.703346>,  <25.869659, 46.298729, 33.470406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.913202, 46.260746, 33.703346>,  <25.985775, 46.197441, 34.091579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.913202, 46.260746, 33.703346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233282, 0.965720, 0.113863,
		0.955334, -0.205761, -0.212131,
		-0.181430, 0.158264, -0.970585,
		25.858772, 46.308224, 33.412170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.829283, 46.322521, 34.837719>,  <25.985775, 46.197441, 34.091579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.829283, 46.322521, 34.837719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.785469, 46.033989, 34.564171>,  <25.759180, 45.860870, 34.400043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.785469, 46.033989, 34.564171>,  <25.829283, 46.322521, 34.837719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.785469, 46.033989, 34.564171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687371, -0.551951, 0.472094,
		-0.718000, -0.418362, 0.556281,
		-0.109534, -0.721334, -0.683871,
		25.752609, 45.817589, 34.359009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.896717, 46.818546, 35.384136>,  <25.829283, 46.322521, 34.837719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.896717, 46.818546, 35.384136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.704647, 47.078133, 35.620193>,  <25.589405, 47.233883, 35.761829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.704647, 47.078133, 35.620193>,  <25.896717, 46.818546, 35.384136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.704647, 47.078133, 35.620193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234818, -0.743330, 0.626356,
		0.845157, 0.162185, 0.509319,
		-0.480177, 0.648966, 0.590146,
		25.560595, 47.272823, 35.797237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.029856, 46.696712, 36.122623>,  <25.896717, 46.818546, 35.384136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.029856, 46.696712, 36.122623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.687372, 46.893593, 36.185417>,  <25.481882, 47.011723, 36.223095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.687372, 46.893593, 36.185417>,  <26.029856, 46.696712, 36.122623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.687372, 46.893593, 36.185417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346250, -0.772226, 0.532708,
		0.383427, 0.401754, 0.831611,
		-0.856209, 0.492200, 0.156985,
		25.430510, 47.041252, 36.232513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.774120, 46.939369, 36.801674>,  <26.029856, 46.696712, 36.122623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.774120, 46.939369, 36.801674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.485674, 46.811916, 36.555595>,  <25.312607, 46.735443, 36.407948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.485674, 46.811916, 36.555595>,  <25.774120, 46.939369, 36.801674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.485674, 46.811916, 36.555595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211526, -0.744311, 0.633449,
		-0.659734, 0.586920, 0.469335,
		-0.721115, -0.318632, -0.615196,
		25.269339, 46.716328, 36.371037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.247421, 46.469673, 37.102886>,  <25.774120, 46.939369, 36.801674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.247421, 46.469673, 37.102886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.176855, 46.581100, 37.480515>,  <25.134516, 46.647957, 37.707092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.176855, 46.581100, 37.480515>,  <25.247421, 46.469673, 37.102886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.176855, 46.581100, 37.480515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604787, -0.726045, 0.327247,
		0.776602, 0.628696, -0.040390,
		-0.176414, 0.278568, 0.944075,
		25.123930, 46.664669, 37.763737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.943560, 46.689354, 37.496597>,  <25.247421, 46.469673, 37.102886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.943560, 46.689354, 37.496597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.636765, 46.541611, 37.706474>,  <25.452686, 46.452965, 37.832401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.636765, 46.541611, 37.706474>,  <25.943560, 46.689354, 37.496597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.636765, 46.541611, 37.706474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529903, -0.825726, 0.193336,
		0.361844, 0.426323, 0.829046,
		-0.766989, -0.369357, 0.524694,
		25.406668, 46.430805, 37.863884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.288910, 46.423157, 38.059437>,  <25.943560, 46.689354, 37.496597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.288910, 46.423157, 38.059437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.926334, 46.255013, 38.075760>,  <25.708788, 46.154125, 38.085556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.926334, 46.255013, 38.075760>,  <26.288910, 46.423157, 38.059437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.926334, 46.255013, 38.075760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403735, -0.834109, 0.375844,
		-0.123948, 0.357157, 0.925784,
		-0.906441, -0.420357, 0.040811,
		25.654402, 46.128906, 38.088001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.359093, 45.987682, 38.689579>,  <26.288910, 46.423157, 38.059437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.359093, 45.987682, 38.689579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.030342, 45.857391, 38.502636>,  <25.833092, 45.779217, 38.390469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.030342, 45.857391, 38.502636>,  <26.359093, 45.987682, 38.689579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.030342, 45.857391, 38.502636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348144, -0.936565, 0.040504,
		-0.450905, -0.129419, 0.883139,
		-0.821876, -0.325723, -0.467359,
		25.783779, 45.759674, 38.362427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.164125, 45.392075, 39.099648>,  <26.359093, 45.987682, 38.689579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.164125, 45.392075, 39.099648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.971596, 45.346359, 38.752022>,  <25.856079, 45.318932, 38.543446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.971596, 45.346359, 38.752022>,  <26.164125, 45.392075, 39.099648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.971596, 45.346359, 38.752022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287535, -0.957189, -0.033372,
		-0.828041, -0.265948, 0.493579,
		-0.481323, -0.114288, -0.869061,
		25.827198, 45.312073, 38.491302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.591608, 44.797901, 39.152939>,  <26.164125, 45.392075, 39.099648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.591608, 44.797901, 39.152939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.730686, 44.843143, 38.780636>,  <25.814133, 44.870289, 38.557255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.730686, 44.843143, 38.780636>,  <25.591608, 44.797901, 39.152939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.730686, 44.843143, 38.780636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349546, -0.936769, 0.016743,
		-0.870015, -0.331166, -0.365245,
		0.347695, 0.113103, -0.930761,
		25.834995, 44.877075, 38.501408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.467485, 44.215313, 38.840565>,  <25.591608, 44.797901, 39.152939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.467485, 44.215313, 38.840565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.753677, 44.352180, 38.596920>,  <25.925392, 44.434299, 38.450733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.753677, 44.352180, 38.596920>,  <25.467485, 44.215313, 38.840565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.753677, 44.352180, 38.596920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404831, -0.913614, -0.037695,
		-0.569387, -0.219615, -0.792192,
		0.715479, 0.342167, -0.609107,
		25.968321, 44.454830, 38.414188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.490622, 43.748940, 38.174362>,  <25.467485, 44.215313, 38.840565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.490622, 43.748940, 38.174362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.838871, 43.945694, 38.171009>,  <26.047821, 44.063747, 38.168999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.838871, 43.945694, 38.171009>,  <25.490622, 43.748940, 38.174362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.838871, 43.945694, 38.171009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486317, -0.863094, -0.136254,
		-0.074252, 0.114551, -0.990639,
		0.870622, 0.491882, -0.008378,
		26.100058, 44.093258, 38.168495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.926933, 43.298977, 37.723526>,  <25.490622, 43.748940, 38.174362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.926933, 43.298977, 37.723526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.169369, 43.548325, 37.921139>,  <26.314831, 43.697933, 38.039707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.169369, 43.548325, 37.921139>,  <25.926933, 43.298977, 37.723526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.169369, 43.548325, 37.921139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635818, -0.752894, 0.169961,
		0.477902, 0.211103, -0.852669,
		0.606090, 0.623367, 0.494033,
		26.351196, 43.735336, 38.069347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.548380, 43.297039, 37.306030>,  <25.926933, 43.298977, 37.723526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.548380, 43.297039, 37.306030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.657125, 43.418449, 37.671318>,  <26.722374, 43.491295, 37.890491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.657125, 43.418449, 37.671318>,  <26.548380, 43.297039, 37.306030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.657125, 43.418449, 37.671318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619928, -0.781061, 0.075048,
		0.736056, 0.545725, -0.400507,
		0.271865, 0.303525, 0.913215,
		26.738686, 43.509506, 37.945282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.279491, 43.255222, 37.308880>,  <26.548380, 43.297039, 37.306030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.279491, 43.255222, 37.308880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.129477, 43.242977, 37.679482>,  <27.039469, 43.235630, 37.901844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.129477, 43.242977, 37.679482>,  <27.279491, 43.255222, 37.308880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.129477, 43.242977, 37.679482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605001, -0.765340, 0.219610,
		0.702369, 0.642898, 0.305549,
		-0.375035, -0.030610, 0.926505,
		27.016966, 43.233795, 37.957432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.778734, 43.260845, 37.771523>,  <27.279491, 43.255222, 37.308880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.778734, 43.260845, 37.771523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.482231, 43.088280, 37.977207>,  <27.304329, 42.984741, 38.100620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.482231, 43.088280, 37.977207>,  <27.778734, 43.260845, 37.771523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.482231, 43.088280, 37.977207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552876, -0.826836, 0.103296,
		0.380609, 0.360867, 0.851418,
		-0.741259, -0.431413, 0.514216,
		27.259853, 42.958855, 38.131474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.089010, 42.844604, 38.255928>,  <27.778734, 43.260845, 37.771523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.089010, 42.844604, 38.255928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.715546, 42.702751, 38.275997>,  <27.491467, 42.617641, 38.288040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.715546, 42.702751, 38.275997>,  <28.089010, 42.844604, 38.255928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.715546, 42.702751, 38.275997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355940, -0.934297, 0.019882,
		0.039829, 0.036422, 0.998542,
		-0.933660, -0.354629, 0.050176,
		27.435448, 42.596363, 38.291050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.149122, 42.324905, 38.656334>,  <28.089010, 42.844604, 38.255928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.149122, 42.324905, 38.656334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.798496, 42.232620, 38.487381>,  <27.588121, 42.177250, 38.386009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.798496, 42.232620, 38.487381>,  <28.149122, 42.324905, 38.656334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.798496, 42.232620, 38.487381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307021, -0.943906, -0.121570,
		-0.370638, -0.236243, 0.898230,
		-0.876565, -0.230716, -0.422379,
		27.535526, 42.163406, 38.360668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.774626, 41.818077, 39.039589>,  <28.149122, 42.324905, 38.656334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.774626, 41.818077, 39.039589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.618715, 41.788002, 38.672455>,  <27.525169, 41.769958, 38.452175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.618715, 41.788002, 38.672455>,  <27.774626, 41.818077, 39.039589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.618715, 41.788002, 38.672455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325238, -0.943674, -0.060818,
		-0.861566, -0.322221, 0.392272,
		-0.389774, -0.075183, -0.917836,
		27.501783, 41.765446, 38.397102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.612751, 41.134972, 39.001198>,  <27.774626, 41.818077, 39.039589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.612751, 41.134972, 39.001198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.611403, 41.268143, 38.624020>,  <27.610594, 41.348045, 38.397713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.611403, 41.268143, 38.624020>,  <27.612751, 41.134972, 39.001198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.611403, 41.268143, 38.624020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314640, -0.894705, -0.317025,
		-0.949205, -0.297757, -0.101738,
		-0.003371, 0.332932, -0.942945,
		27.610392, 41.368023, 38.341137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.157728, 40.691620, 38.654102>,  <27.612751, 41.134972, 39.001198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.157728, 40.691620, 38.654102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.413982, 40.854568, 38.393757>,  <27.567736, 40.952339, 38.237549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.413982, 40.854568, 38.393757>,  <27.157728, 40.691620, 38.654102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.413982, 40.854568, 38.393757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139037, -0.895190, -0.423442,
		-0.755150, 0.180778, -0.630133,
		0.640638, 0.407374, -0.650868,
		27.606174, 40.976780, 38.198498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.019768, 40.357349, 38.018768>,  <27.157728, 40.691620, 38.654102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.019768, 40.357349, 38.018768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.375769, 40.524940, 37.946819>,  <27.589369, 40.625496, 37.903652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.375769, 40.524940, 37.946819>,  <27.019768, 40.357349, 38.018768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.375769, 40.524940, 37.946819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334374, -0.867940, -0.367252,
		-0.309987, 0.266711, -0.912564,
		0.890001, 0.418981, -0.179869,
		27.642769, 40.650635, 37.892857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.089764, 40.294060, 37.252674>,  <27.019768, 40.357349, 38.018768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.089764, 40.294060, 37.252674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.455400, 40.329666, 37.410919>,  <27.674782, 40.351028, 37.505867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.455400, 40.329666, 37.410919>,  <27.089764, 40.294060, 37.252674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.455400, 40.329666, 37.410919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352762, -0.655707, -0.667538,
		0.199987, 0.749750, -0.630778,
		0.914092, 0.089015, 0.395616,
		27.729628, 40.356369, 37.529606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.513981, 40.228970, 36.705940>,  <27.089764, 40.294060, 37.252674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.513981, 40.228970, 36.705940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.781466, 40.168053, 36.997044>,  <27.941956, 40.131500, 37.171707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.781466, 40.168053, 36.997044>,  <27.513981, 40.228970, 36.705940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.781466, 40.168053, 36.997044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463893, -0.679469, -0.568442,
		0.581060, 0.717725, -0.383719,
		0.668710, -0.152294, 0.727759,
		27.982079, 40.122364, 37.215370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.089930, 40.082775, 36.490639>,  <27.513981, 40.228970, 36.705940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.089930, 40.082775, 36.490639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.151529, 39.912151, 36.847141>,  <28.188490, 39.809776, 37.061043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.151529, 39.912151, 36.847141>,  <28.089930, 40.082775, 36.490639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.151529, 39.912151, 36.847141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459541, -0.767599, -0.446782,
		0.874703, 0.478373, 0.077810,
		0.154001, -0.426558, 0.891253,
		28.197729, 39.784184, 37.114517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.861563, 39.882439, 36.596325>,  <28.089930, 40.082775, 36.490639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.861563, 39.882439, 36.596325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.631462, 39.659954, 36.836227>,  <28.493401, 39.526463, 36.980171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.631462, 39.659954, 36.836227>,  <28.861563, 39.882439, 36.596325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.631462, 39.659954, 36.836227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469189, -0.824982, -0.315065,
		0.670034, 0.100158, 0.735543,
		-0.575253, -0.556213, 0.599759,
		28.458885, 39.493092, 37.016155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.327488, 39.483612, 36.938156>,  <28.861563, 39.882439, 36.596325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.327488, 39.483612, 36.938156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.985062, 39.279514, 36.971146>,  <28.779606, 39.157055, 36.990940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.985062, 39.279514, 36.971146>,  <29.327488, 39.483612, 36.938156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.985062, 39.279514, 36.971146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469355, -0.834245, -0.289382,
		0.216461, -0.209019, 0.953654,
		-0.856067, -0.510242, 0.082477,
		28.728241, 39.126442, 36.995888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.584070, 38.925034, 37.297295>,  <29.327488, 39.483612, 36.938156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.584070, 38.925034, 37.297295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.235941, 38.805046, 37.141064>,  <29.027063, 38.733051, 37.047325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.235941, 38.805046, 37.141064>,  <29.584070, 38.925034, 37.297295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.235941, 38.805046, 37.141064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449787, -0.807158, -0.382346,
		-0.200563, -0.508441, 0.837414,
		-0.870325, -0.299973, -0.390576,
		28.974844, 38.715054, 37.023891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.672413, 38.175865, 37.290253>,  <29.584070, 38.925034, 37.297295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.672413, 38.175865, 37.290253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.419203, 38.300064, 37.006599>,  <29.267277, 38.374584, 36.836407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.419203, 38.300064, 37.006599>,  <29.672413, 38.175865, 37.290253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.419203, 38.300064, 37.006599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424471, -0.626833, -0.653379,
		-0.647383, -0.714611, 0.265003,
		-0.633025, 0.310500, -0.709133,
		29.229296, 38.393215, 36.793861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.034006, 38.134026, 36.551903>,  <29.672413, 38.175865, 37.290253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.034006, 38.134026, 36.551903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.090818, 38.311710, 36.905739>,  <30.124907, 38.418320, 37.118042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.090818, 38.311710, 36.905739>,  <30.034006, 38.134026, 36.551903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.090818, 38.311710, 36.905739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972660, -0.228509, -0.041422,
		0.183737, 0.866292, -0.464519,
		0.142030, 0.444209, 0.884594,
		30.133427, 38.444973, 37.171116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.532753, 38.680721, 36.471062>,  <30.034006, 38.134026, 36.551903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.532753, 38.680721, 36.471062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.531071, 38.459095, 36.804047>,  <30.530062, 38.326118, 37.003838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.531071, 38.459095, 36.804047>,  <30.532753, 38.680721, 36.471062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.531071, 38.459095, 36.804047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969551, -0.206095, -0.132271,
		0.244853, 0.806561, 0.538059,
		-0.004206, -0.554062, 0.832465,
		30.529808, 38.292877, 37.053787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.965822, 38.828236, 37.151089>,  <30.532753, 38.680721, 36.471062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.965822, 38.828236, 37.151089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.949123, 38.438740, 37.061558>,  <30.939104, 38.205044, 37.007839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.949123, 38.438740, 37.061558>,  <30.965822, 38.828236, 37.151089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.949123, 38.438740, 37.061558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961783, 0.021512, -0.272967,
		0.270612, -0.226666, 0.935624,
		-0.041745, -0.973735, -0.223825,
		30.936600, 38.146618, 36.994411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.117693, 38.558479, 37.860058>,  <30.965822, 38.828236, 37.151089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.117693, 38.558479, 37.860058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.930368, 38.442078, 38.193764>,  <30.817974, 38.372238, 38.393990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.930368, 38.442078, 38.193764>,  <31.117693, 38.558479, 37.860058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.930368, 38.442078, 38.193764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652071, 0.523322, 0.548577,
		-0.596227, 0.800907, -0.055325,
		-0.468312, -0.291001, 0.834267,
		30.789875, 38.354778, 38.444042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.074303, 39.119816, 38.200245>,  <31.117693, 38.558479, 37.860058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.074303, 39.119816, 38.200245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.094578, 38.802635, 38.443115>,  <31.106743, 38.612328, 38.588837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.094578, 38.802635, 38.443115>,  <31.074303, 39.119816, 38.200245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.094578, 38.802635, 38.443115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815086, 0.384157, 0.433657,
		-0.577119, 0.472917, 0.665795,
		0.050686, -0.792952, 0.607172,
		31.109783, 38.564751, 38.625267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.963299, 39.298336, 38.902790>,  <31.074303, 39.119816, 38.200245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.963299, 39.298336, 38.902790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.186581, 38.966660, 38.914471>,  <31.320551, 38.767654, 38.921478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.186581, 38.966660, 38.914471>,  <30.963299, 39.298336, 38.902790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.186581, 38.966660, 38.914471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760405, 0.525348, 0.381830,
		-0.331950, -0.190934, 0.923771,
		0.558206, -0.829188, 0.029202,
		31.354042, 38.717903, 38.923233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.460028, 39.351971, 39.445839>,  <30.963299, 39.298336, 38.902790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.460028, 39.351971, 39.445839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.623259, 39.027428, 39.278427>,  <31.721197, 38.832703, 39.177979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.623259, 39.027428, 39.278427>,  <31.460028, 39.351971, 39.445839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.623259, 39.027428, 39.278427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898661, 0.276205, 0.340764,
		-0.160882, -0.515174, 0.841851,
		0.408076, -0.811361, -0.418530,
		31.745682, 38.784019, 39.152866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.911842, 39.039688, 39.964512>,  <31.460028, 39.351971, 39.445839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.911842, 39.039688, 39.964512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.049412, 38.936062, 39.603493>,  <32.131954, 38.873886, 39.386879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.049412, 38.936062, 39.603493>,  <31.911842, 39.039688, 39.964512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.049412, 38.936062, 39.603493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937387, 0.038465, 0.346159,
		-0.054961, -0.965093, 0.256075,
		0.343926, -0.259066, -0.902552,
		32.152588, 38.858341, 39.332726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.428257, 38.606426, 40.027653>,  <31.911842, 39.039688, 39.964512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.428257, 38.606426, 40.027653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.504250, 38.721279, 39.652107>,  <32.549847, 38.790192, 39.426781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.504250, 38.721279, 39.652107>,  <32.428257, 38.606426, 40.027653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.504250, 38.721279, 39.652107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964094, 0.126172, 0.233673,
		0.185553, -0.949545, -0.252853,
		0.189980, 0.287133, -0.938862,
		32.561245, 38.807419, 39.370449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.974895, 38.316235, 39.908951>,  <32.428257, 38.606426, 40.027653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.974895, 38.316235, 39.908951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.977909, 38.624386, 39.653934>,  <32.979717, 38.809277, 39.500923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.977909, 38.624386, 39.653934>,  <32.974895, 38.316235, 39.908951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.977909, 38.624386, 39.653934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919909, 0.244632, 0.306467,
		0.392059, -0.588791, -0.706834,
		0.007531, 0.770377, -0.637545,
		32.980167, 38.855499, 39.462669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.637245, 38.399872, 39.790104>,  <32.974895, 38.316235, 39.908951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.637245, 38.399872, 39.790104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.470608, 38.743202, 39.670284>,  <33.370625, 38.949200, 39.598392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.470608, 38.743202, 39.670284>,  <33.637245, 38.399872, 39.790104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.470608, 38.743202, 39.670284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832378, 0.492617, 0.253919,
		0.365508, -0.143559, -0.919671,
		-0.416593, 0.858323, -0.299551,
		33.345631, 39.000698, 39.580418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.264790, 38.754147, 39.546543>,  <33.637245, 38.399872, 39.790104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.264790, 38.754147, 39.546543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.989876, 39.037739, 39.609783>,  <33.824928, 39.207893, 39.647728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.989876, 39.037739, 39.609783>,  <34.264790, 38.754147, 39.546543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.989876, 39.037739, 39.609783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679530, 0.550616, 0.484831,
		0.256681, 0.440650, -0.860199,
		-0.687280, 0.708978, 0.158102,
		33.783691, 39.250431, 39.657215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.596134, 39.267986, 39.356167>,  <34.264790, 38.754147, 39.546543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.596134, 39.267986, 39.356167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.298534, 39.391991, 39.592930>,  <34.119976, 39.466393, 39.734989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.298534, 39.391991, 39.592930>,  <34.596134, 39.267986, 39.356167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.298534, 39.391991, 39.592930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639516, 0.587064, 0.496362,
		-0.193609, 0.747828, -0.635035,
		-0.744000, 0.310015, 0.591908,
		34.075333, 39.484997, 39.770504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.730396, 39.916245, 39.404526>,  <34.596134, 39.267986, 39.356167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.730396, 39.916245, 39.404526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.474541, 39.850452, 39.704876>,  <34.321030, 39.810978, 39.885086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.474541, 39.850452, 39.704876>,  <34.730396, 39.916245, 39.404526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.474541, 39.850452, 39.704876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390507, 0.771865, 0.501726,
		-0.662097, 0.614144, -0.429482,
		-0.639634, -0.164475, 0.750877,
		34.282650, 39.801109, 39.930138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.435589, 40.503006, 39.526066>,  <34.730396, 39.916245, 39.404526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.435589, 40.503006, 39.526066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.374416, 40.323563, 39.878284>,  <34.337711, 40.215897, 40.089615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.374416, 40.323563, 39.878284>,  <34.435589, 40.503006, 39.526066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.374416, 40.323563, 39.878284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342928, 0.811569, 0.473030,
		-0.926829, 0.374305, 0.029727,
		-0.152932, -0.448612, 0.880545,
		34.328537, 40.188980, 40.142448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.160210, 41.041832, 39.981113>,  <34.435589, 40.503006, 39.526066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.160210, 41.041832, 39.981113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.319721, 40.762569, 40.218956>,  <34.415428, 40.595013, 40.361660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.319721, 40.762569, 40.218956>,  <34.160210, 41.041832, 39.981113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.319721, 40.762569, 40.218956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231849, 0.704082, 0.671204,
		-0.887253, -0.129807, 0.442642,
		0.398783, -0.698154, 0.594603,
		34.439358, 40.553123, 40.397339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.274818, 41.354019, 40.582844>,  <34.160210, 41.041832, 39.981113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.274818, 41.354019, 40.582844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.478294, 41.015110, 40.643978>,  <34.600380, 40.811764, 40.680660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.478294, 41.015110, 40.643978>,  <34.274818, 41.354019, 40.582844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.478294, 41.015110, 40.643978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400506, 0.390026, 0.829141,
		-0.762120, -0.360566, 0.537741,
		0.508693, -0.847273, 0.152838,
		34.630901, 40.760929, 40.689831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.143532, 41.090691, 41.249466>,  <34.274818, 41.354019, 40.582844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.143532, 41.090691, 41.249466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.509037, 40.980923, 41.129650>,  <34.728340, 40.915062, 41.057762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.509037, 40.980923, 41.129650>,  <34.143532, 41.090691, 41.249466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.509037, 40.980923, 41.129650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390542, 0.390442, 0.833685,
		-0.111825, -0.878777, 0.463945,
		0.913768, -0.274418, -0.299539,
		34.783169, 40.898598, 41.039787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.369091, 40.759777, 41.909256>,  <34.143532, 41.090691, 41.249466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.369091, 40.759777, 41.909256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.694965, 40.830700, 41.688404>,  <34.890491, 40.873253, 41.555893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.694965, 40.830700, 41.688404>,  <34.369091, 40.759777, 41.909256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.694965, 40.830700, 41.688404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498487, 0.272358, 0.823001,
		0.296306, -0.945717, 0.133498,
		0.814686, 0.177314, -0.552130,
		34.939373, 40.883892, 41.522766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.889397, 40.376919, 42.211399>,  <34.369091, 40.759777, 41.909256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.889397, 40.376919, 42.211399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.071285, 40.671055, 42.010399>,  <35.180420, 40.847534, 41.889797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.071285, 40.671055, 42.010399>,  <34.889397, 40.376919, 42.211399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.071285, 40.671055, 42.010399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509344, 0.248127, 0.824015,
		0.730613, -0.630645, -0.261710,
		0.454724, 0.735336, -0.502500,
		35.207703, 40.891655, 41.859650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.588795, 40.341774, 42.505756>,  <34.889397, 40.376919, 42.211399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.588795, 40.341774, 42.505756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.520512, 40.694405, 42.329716>,  <35.479542, 40.905983, 42.224091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.520512, 40.694405, 42.329716>,  <35.588795, 40.341774, 42.505756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.520512, 40.694405, 42.329716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368856, 0.471354, 0.801106,
		0.913677, -0.025582, -0.405635,
		-0.170704, 0.881573, -0.440101,
		35.469299, 40.958878, 42.197685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.220459, 40.702168, 42.564274>,  <35.588795, 40.341774, 42.505756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.220459, 40.702168, 42.564274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.919132, 40.962093, 42.523773>,  <35.738335, 41.118050, 42.499474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.919132, 40.962093, 42.523773>,  <36.220459, 40.702168, 42.564274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.919132, 40.962093, 42.523773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319356, 0.496038, 0.807439,
		0.574908, 0.575926, -0.581197,
		-0.753321, 0.649812, -0.101251,
		35.693134, 41.157036, 42.493397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.620201, 41.277275, 42.733562>,  <36.220459, 40.702168, 42.564274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.620201, 41.277275, 42.733562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.240143, 41.397308, 42.767433>,  <36.012108, 41.469330, 42.787754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.240143, 41.397308, 42.767433>,  <36.620201, 41.277275, 42.733562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.240143, 41.397308, 42.767433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270852, 0.659820, 0.700911,
		0.154462, 0.688903, -0.708205,
		-0.950148, 0.300083, 0.084674,
		35.955097, 41.487331, 42.792835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.600574, 42.093380, 42.591816>,  <36.620201, 41.277275, 42.733562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.600574, 42.093380, 42.591816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.300198, 41.967972, 42.824295>,  <36.119972, 41.892727, 42.963783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.300198, 41.967972, 42.824295>,  <36.600574, 42.093380, 42.591816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.300198, 41.967972, 42.824295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280661, 0.645143, 0.710648,
		-0.597757, 0.696775, -0.396473,
		-0.750943, -0.313520, 0.581196,
		36.074913, 41.873917, 42.998653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.477459, 42.724174, 42.904072>,  <36.600574, 42.093380, 42.591816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.477459, 42.724174, 42.904072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.270077, 42.466473, 43.128979>,  <36.145649, 42.311852, 43.263924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.270077, 42.466473, 43.128979>,  <36.477459, 42.724174, 42.904072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.270077, 42.466473, 43.128979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278655, 0.494354, 0.823386,
		-0.808427, 0.583568, -0.076776,
		-0.518456, -0.644253, 0.562264,
		36.114540, 42.273197, 43.297657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.008923, 43.142307, 43.387070>,  <36.477459, 42.724174, 42.904072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.008923, 43.142307, 43.387070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.068905, 42.775932, 43.535976>,  <36.104893, 42.556107, 43.625320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.068905, 42.775932, 43.535976>,  <36.008923, 43.142307, 43.387070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.068905, 42.775932, 43.535976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013833, 0.378428, 0.925527,
		-0.988596, -0.133636, 0.069416,
		0.149952, -0.915933, 0.372264,
		36.113892, 42.501152, 43.647655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.716537, 43.176186, 43.911140>,  <36.008923, 43.142307, 43.387070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.716537, 43.176186, 43.911140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.939507, 42.856682, 44.001705>,  <36.073288, 42.664978, 44.056046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.939507, 42.856682, 44.001705>,  <35.716537, 43.176186, 43.911140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.939507, 42.856682, 44.001705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019441, 0.260083, 0.965391,
		-0.830002, -0.542532, 0.129447,
		0.557422, -0.798759, 0.226416,
		36.106731, 42.617054, 44.069630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.286087, 42.901653, 44.495159>,  <35.716537, 43.176186, 43.911140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.286087, 42.901653, 44.495159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.641933, 42.719017, 44.499489>,  <35.855442, 42.609436, 44.502087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.641933, 42.719017, 44.499489>,  <35.286087, 42.901653, 44.495159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.641933, 42.719017, 44.499489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039020, 0.099588, 0.994263,
		-0.455049, -0.884086, 0.106411,
		0.889611, -0.456590, 0.010821,
		35.908817, 42.582039, 44.502735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.278622, 42.521484, 45.077297>,  <35.286087, 42.901653, 44.495159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.278622, 42.521484, 45.077297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.670250, 42.587696, 45.029945>,  <35.905228, 42.627422, 45.001534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.670250, 42.587696, 45.029945>,  <35.278622, 42.521484, 45.077297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.670250, 42.587696, 45.029945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063921, 0.302140, 0.951118,
		0.193202, -0.938783, 0.285237,
		0.979075, 0.165525, -0.118382,
		35.963974, 42.637356, 44.994431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.557289, 42.403061, 45.680428>,  <35.278622, 42.521484, 45.077297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.557289, 42.403061, 45.680428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.850437, 42.621929, 45.518684>,  <36.026325, 42.753250, 45.421638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.850437, 42.621929, 45.518684>,  <35.557289, 42.403061, 45.680428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.850437, 42.621929, 45.518684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142505, 0.457689, 0.877618,
		0.665280, -0.700801, 0.257450,
		0.732867, 0.547174, -0.404359,
		36.070297, 42.786079, 45.397377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.025257, 42.470665, 46.196037>,  <35.557289, 42.403061, 45.680428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.025257, 42.470665, 46.196037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.147060, 42.751606, 45.938671>,  <36.220142, 42.920170, 45.784252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.147060, 42.751606, 45.938671>,  <36.025257, 42.470665, 46.196037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.147060, 42.751606, 45.938671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357998, 0.541579, 0.760611,
		0.882675, -0.461951, -0.086526,
		0.304504, 0.702348, -0.643416,
		36.238411, 42.962311, 45.745647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.823792, 42.598652, 46.302532>,  <36.025257, 42.470665, 46.196037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.823792, 42.598652, 46.302532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.697464, 42.936958, 46.130508>,  <36.621670, 43.139942, 46.027294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.697464, 42.936958, 46.130508>,  <36.823792, 42.598652, 46.302532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.697464, 42.936958, 46.130508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494810, 0.533547, 0.685923,
		0.809582, 0.003831, -0.586995,
		-0.315817, 0.845762, -0.430055,
		36.602718, 43.190685, 46.001492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.431240, 43.097870, 46.026184>,  <36.823792, 42.598652, 46.302532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.431240, 43.097870, 46.026184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.110374, 43.319283, 46.115753>,  <36.917854, 43.452129, 46.169495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.110374, 43.319283, 46.115753>,  <37.431240, 43.097870, 46.026184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.110374, 43.319283, 46.115753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450249, 0.314412, 0.835716,
		0.392187, 0.771202, -0.501435,
		-0.802163, 0.553527, 0.223924,
		36.869724, 43.485340, 46.182930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.687035, 43.799641, 46.153156>,  <37.431240, 43.097870, 46.026184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.687035, 43.799641, 46.153156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.316605, 43.798149, 46.304085>,  <37.094345, 43.797253, 46.394642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.316605, 43.798149, 46.304085>,  <37.687035, 43.799641, 46.153156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.316605, 43.798149, 46.304085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334488, 0.454690, 0.825454,
		-0.174642, 0.890642, -0.419830,
		-0.926077, -0.003731, 0.377317,
		37.038780, 43.797031, 46.417278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.669285, 44.348423, 46.521671>,  <37.687035, 43.799641, 46.153156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.669285, 44.348423, 46.521671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.366482, 44.157970, 46.700668>,  <37.184799, 44.043701, 46.808067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.366482, 44.157970, 46.700668>,  <37.669285, 44.348423, 46.521671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.366482, 44.157970, 46.700668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211401, 0.469550, 0.857224,
		-0.618267, 0.743521, -0.254797,
		-0.757004, -0.476129, 0.447488,
		37.139381, 44.015133, 46.834915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.239868, 44.886833, 46.891281>,  <37.669285, 44.348423, 46.521671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.239868, 44.886833, 46.891281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.162548, 44.536163, 47.067497>,  <37.116158, 44.325760, 47.173225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.162548, 44.536163, 47.067497>,  <37.239868, 44.886833, 46.891281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.162548, 44.536163, 47.067497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222058, 0.398268, 0.889985,
		-0.955681, 0.269859, 0.117688,
		-0.193298, -0.876675, 0.440541,
		37.104557, 44.273159, 47.199661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.000774, 45.140144, 47.436558>,  <37.239868, 44.886833, 46.891281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.000774, 45.140144, 47.436558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.077995, 44.760563, 47.536331>,  <37.124329, 44.532814, 47.596195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.077995, 44.760563, 47.536331>,  <37.000774, 45.140144, 47.436558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.077995, 44.760563, 47.536331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247131, 0.293048, 0.923607,
		-0.949557, -0.116659, 0.291089,
		0.193049, -0.948954, 0.249435,
		37.135910, 44.475876, 47.611160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.673679, 44.951145, 48.086666>,  <37.000774, 45.140144, 47.436558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.673679, 44.951145, 48.086666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.983665, 44.698345, 48.086533>,  <37.169659, 44.546665, 48.086452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.983665, 44.698345, 48.086533>,  <36.673679, 44.951145, 48.086666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.983665, 44.698345, 48.086533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339969, 0.416427, 0.843214,
		-0.532776, -0.653574, 0.537579,
		0.774965, -0.632005, -0.000333,
		37.216156, 44.508743, 48.086433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.805656, 44.924934, 48.774731>,  <36.673679, 44.951145, 48.086666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.805656, 44.924934, 48.774731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.108101, 44.742241, 48.587246>,  <37.289570, 44.632626, 48.474754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.108101, 44.742241, 48.587246>,  <36.805656, 44.924934, 48.774731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.108101, 44.742241, 48.587246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598221, 0.191935, 0.778006,
		-0.265376, -0.868653, 0.418350,
		0.756113, -0.456730, -0.468712,
		37.334934, 44.605221, 48.446632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.111988, 44.403774, 49.238728>,  <36.805656, 44.924934, 48.774731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.111988, 44.403774, 49.238728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.403801, 44.536655, 48.999588>,  <37.578888, 44.616383, 48.856106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.403801, 44.536655, 48.999588>,  <37.111988, 44.403774, 49.238728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.403801, 44.536655, 48.999588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538784, 0.259305, 0.801544,
		0.421299, -0.906865, 0.010186,
		0.729533, 0.332201, -0.597849,
		37.622662, 44.636314, 48.820232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.732048, 44.277927, 49.607384>,  <37.111988, 44.403774, 49.238728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.732048, 44.277927, 49.607384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.769596, 44.573593, 49.340603>,  <37.792126, 44.750992, 49.180534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.769596, 44.573593, 49.340603>,  <37.732048, 44.277927, 49.607384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.769596, 44.573593, 49.340603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588685, 0.499040, 0.635932,
		0.802894, -0.452315, -0.388293,
		0.093868, 0.739168, -0.666948,
		37.797756, 44.795345, 49.140518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.411198, 44.467346, 49.623604>,  <37.732048, 44.277927, 49.607384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.411198, 44.467346, 49.623604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.227852, 44.786880, 49.467777>,  <38.117844, 44.978603, 49.374283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.227852, 44.786880, 49.467777>,  <38.411198, 44.467346, 49.623604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.227852, 44.786880, 49.467777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505794, 0.594879, 0.624734,
		0.730804, 0.089318, -0.676719,
		-0.458365, 0.798838, -0.389563,
		38.090343, 45.026531, 49.350910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.008232, 44.945847, 49.590305>,  <38.411198, 44.467346, 49.623604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.008232, 44.945847, 49.590305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.679260, 45.171124, 49.558243>,  <38.481876, 45.306290, 49.539005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.679260, 45.171124, 49.558243>,  <39.008232, 44.945847, 49.590305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.679260, 45.171124, 49.558243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437397, 0.716142, 0.543897,
		0.363723, 0.412256, -0.835315,
		-0.822429, 0.563193, -0.080158,
		38.432533, 45.340080, 49.534195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.190731, 45.653332, 49.348118>,  <39.008232, 44.945847, 49.590305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.190731, 45.653332, 49.348118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.841896, 45.730782, 49.527882>,  <38.632595, 45.777252, 49.635738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.841896, 45.730782, 49.527882>,  <39.190731, 45.653332, 49.348118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.841896, 45.730782, 49.527882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444043, 0.699048, 0.560497,
		-0.205628, 0.688360, -0.695613,
		-0.872091, 0.193628, 0.449406,
		38.580269, 45.788872, 49.662704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.185310, 46.409882, 49.392338>,  <39.190731, 45.653332, 49.348118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.185310, 46.409882, 49.392338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.922523, 46.249550, 49.647755>,  <38.764851, 46.153351, 49.801003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.922523, 46.249550, 49.647755>,  <39.185310, 46.409882, 49.392338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.922523, 46.249550, 49.647755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263628, 0.671353, 0.692665,
		-0.706327, 0.623393, -0.335385,
		-0.656965, -0.400831, 0.638538,
		38.725433, 46.129299, 49.839317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.070370, 46.901154, 49.792496>,  <39.185310, 46.409882, 49.392338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.070370, 46.901154, 49.792496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.903656, 46.617538, 50.020027>,  <38.803627, 46.447369, 50.156544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.903656, 46.617538, 50.020027>,  <39.070370, 46.901154, 49.792496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.903656, 46.617538, 50.020027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225183, 0.525728, 0.820306,
		-0.880672, 0.469981, -0.059453,
		-0.416784, -0.709033, 0.568826,
		38.778622, 46.404827, 50.190674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.773800, 47.330177, 50.270596>,  <39.070370, 46.901154, 49.792496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.773800, 47.330177, 50.270596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.799698, 46.954445, 50.405327>,  <38.815239, 46.729004, 50.486168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.799698, 46.954445, 50.405327>,  <38.773800, 47.330177, 50.270596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.799698, 46.954445, 50.405327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162777, 0.342962, 0.925138,
		-0.984536, -0.005072, 0.175109,
		0.064748, -0.939336, 0.336833,
		38.819122, 46.672646, 50.506378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.260857, 47.168373, 50.800915>,  <38.773800, 47.330177, 50.270596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.260857, 47.168373, 50.800915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.610664, 46.974632, 50.810799>,  <38.820549, 46.858387, 50.816730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.610664, 46.974632, 50.810799>,  <38.260857, 47.168373, 50.800915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.610664, 46.974632, 50.810799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193663, 0.395474, 0.897828,
		-0.444638, -0.780386, 0.439652,
		0.874524, -0.484353, 0.024711,
		38.873020, 46.829327, 50.818211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.250393, 46.805717, 51.485851>,  <38.260857, 47.168373, 50.800915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.250393, 46.805717, 51.485851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.618099, 46.875763, 51.344837>,  <38.838722, 46.917789, 51.260227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.618099, 46.875763, 51.344837>,  <38.250393, 46.805717, 51.485851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.618099, 46.875763, 51.344837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324252, 0.170890, 0.930407,
		0.223176, -0.969603, 0.100311,
		0.919268, 0.175118, -0.352534,
		38.893879, 46.928299, 51.239079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.761486, 46.285877, 51.803299>,  <38.250393, 46.805717, 51.485851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.761486, 46.285877, 51.803299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.919807, 46.637016, 51.695427>,  <39.014801, 46.847698, 51.630703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.919807, 46.637016, 51.695427>,  <38.761486, 46.285877, 51.803299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.919807, 46.637016, 51.695427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372751, 0.114815, 0.920801,
		0.839283, -0.464982, -0.281773,
		0.395804, 0.877844, -0.269684,
		39.038548, 46.900368, 51.614521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.469696, 46.420471, 51.834171>,  <38.761486, 46.285877, 51.803299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.469696, 46.420471, 51.834171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.277519, 46.753674, 51.943920>,  <39.162212, 46.953594, 52.009769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.277519, 46.753674, 51.943920>,  <39.469696, 46.420471, 51.834171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.277519, 46.753674, 51.943920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547080, 0.040139, 0.836117,
		0.685474, 0.551813, -0.475003,
		-0.480446, 0.833001, 0.274372,
		39.133385, 47.003574, 52.026230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.905872, 45.822983, 51.581860>,  <39.469696, 46.420471, 51.834171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.905872, 45.822983, 51.581860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.025249, 45.486744, 51.762669>,  <40.096874, 45.285000, 51.871155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.025249, 45.486744, 51.762669>,  <39.905872, 45.822983, 51.581860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.025249, 45.486744, 51.762669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858665, -0.029706, 0.511676,
		-0.416686, -0.540844, -0.730657,
		0.298442, -0.840598, 0.452025,
		40.114784, 45.234566, 51.898277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.406414, 45.345516, 51.596451>,  <39.905872, 45.822983, 51.581860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.406414, 45.345516, 51.596451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.635647, 45.289848, 51.919491>,  <39.773186, 45.256447, 52.113316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.635647, 45.289848, 51.919491>,  <39.406414, 45.345516, 51.596451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.635647, 45.289848, 51.919491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811875, -0.230531, 0.536391,
		0.111529, -0.963062, -0.245098,
		0.573080, -0.139166, 0.807597,
		39.807571, 45.248096, 52.161770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.305222, 44.640717, 51.815308>,  <39.406414, 45.345516, 51.596451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.305222, 44.640717, 51.815308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.456528, 44.854134, 52.117893>,  <39.547314, 44.982185, 52.299446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.456528, 44.854134, 52.117893>,  <39.305222, 44.640717, 51.815308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.456528, 44.854134, 52.117893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729205, -0.331652, 0.598554,
		0.570239, -0.778034, 0.263611,
		0.378268, 0.533545, 0.756467,
		39.570007, 45.014198, 52.344833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.495724, 44.346809, 52.535645>,  <39.305222, 44.640717, 51.815308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.495724, 44.346809, 52.535645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.385426, 44.724297, 52.608700>,  <39.319248, 44.950790, 52.652534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.385426, 44.724297, 52.608700>,  <39.495724, 44.346809, 52.535645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.385426, 44.724297, 52.608700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.908710, -0.317876, 0.270559,
		0.313388, -0.091362, 0.945220,
		-0.275744, 0.943721, 0.182640,
		39.302704, 45.007412, 52.663490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.827122, 43.865372, 52.021187>,  <39.495724, 44.346809, 52.535645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.827122, 43.865372, 52.021187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.429855, 43.903629, 52.047920>,  <39.191494, 43.926582, 52.063961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.429855, 43.903629, 52.047920>,  <39.827122, 43.865372, 52.021187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.429855, 43.903629, 52.047920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105129, -0.485115, -0.868108,
		-0.050605, -0.869205, 0.491856,
		-0.993170, 0.095639, 0.066829,
		39.131905, 43.932320, 52.067970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.473618, 43.202515, 51.989494>,  <39.827122, 43.865372, 52.021187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.473618, 43.202515, 51.989494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.249241, 43.502300, 51.848843>,  <39.114613, 43.682171, 51.764450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.249241, 43.502300, 51.848843>,  <39.473618, 43.202515, 51.989494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.249241, 43.502300, 51.848843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087439, -0.476011, -0.875082,
		-0.823223, -0.460126, 0.332548,
		-0.560944, 0.749465, -0.351630,
		39.080959, 43.727139, 51.743355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.860065, 42.882252, 51.677128>,  <39.473618, 43.202515, 51.989494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.860065, 42.882252, 51.677128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.900116, 43.249516, 51.523788>,  <38.924149, 43.469875, 51.431786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.900116, 43.249516, 51.523788>,  <38.860065, 42.882252, 51.677128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.900116, 43.249516, 51.523788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074311, -0.377307, -0.923102,
		-0.992196, 0.120917, 0.030449,
		0.100130, 0.918161, -0.383347,
		38.930157, 43.524963, 51.408783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.356976, 42.922485, 51.258095>,  <38.860065, 42.882252, 51.677128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.356976, 42.922485, 51.258095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.648544, 43.176128, 51.154884>,  <38.823486, 43.328316, 51.092957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.648544, 43.176128, 51.154884>,  <38.356976, 42.922485, 51.258095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.648544, 43.176128, 51.154884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038352, -0.338487, -0.940189,
		-0.683520, 0.695222, -0.222412,
		0.728924, 0.634108, -0.258026,
		38.867222, 43.366360, 51.077477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.080105, 43.270786, 50.572678>,  <38.356976, 42.922485, 51.258095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.080105, 43.270786, 50.572678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.476910, 43.259350, 50.621834>,  <38.714993, 43.252487, 50.651325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.476910, 43.259350, 50.621834>,  <38.080105, 43.270786, 50.572678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.476910, 43.259350, 50.621834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108093, -0.309746, -0.944655,
		0.065074, 0.950389, -0.304180,
		0.992009, -0.028592, 0.122887,
		38.774513, 43.250771, 50.658699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.361855, 43.331837, 49.940670>,  <38.080105, 43.270786, 50.572678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.361855, 43.331837, 49.940670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.701843, 43.223179, 50.121227>,  <38.905838, 43.157986, 50.229561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.701843, 43.223179, 50.121227>,  <38.361855, 43.331837, 49.940670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.701843, 43.223179, 50.121227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334415, -0.383852, -0.860711,
		0.407075, 0.882534, -0.235422,
		0.849974, -0.271646, 0.451389,
		38.956837, 43.141685, 50.256645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.868065, 43.350254, 49.425411>,  <38.361855, 43.331837, 49.940670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.868065, 43.350254, 49.425411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.045452, 43.136826, 49.713478>,  <39.151886, 43.008770, 49.886318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.045452, 43.136826, 49.713478>,  <38.868065, 43.350254, 49.425411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.045452, 43.136826, 49.713478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403579, -0.598557, -0.691992,
		0.800285, 0.597523, -0.050107,
		0.443473, -0.533569, 0.720164,
		39.178493, 42.976753, 49.929527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.474903, 43.028770, 49.183220>,  <38.868065, 43.350254, 49.425411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.474903, 43.028770, 49.183220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.449631, 42.793980, 49.506077>,  <39.434467, 42.653107, 49.699791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.449631, 42.793980, 49.506077>,  <39.474903, 43.028770, 49.183220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.449631, 42.793980, 49.506077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251229, -0.792064, -0.556345,
		0.965864, 0.167626, 0.197508,
		-0.063181, -0.586973, 0.807138,
		39.430676, 42.617889, 49.748219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.117535, 42.664154, 49.115818>,  <39.474903, 43.028770, 49.183220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.117535, 42.664154, 49.115818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.840557, 42.472019, 49.331150>,  <39.674370, 42.356739, 49.460350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.840557, 42.472019, 49.331150>,  <40.117535, 42.664154, 49.115818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.840557, 42.472019, 49.331150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147062, -0.824460, -0.546479,
		0.706324, -0.299238, 0.641532,
		-0.692444, -0.480336, 0.538329,
		39.632824, 42.327919, 49.492649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.309181, 41.978149, 49.037144>,  <40.117535, 42.664154, 49.115818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.309181, 41.978149, 49.037144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.919434, 42.006397, 49.122570>,  <39.685585, 42.023346, 49.173828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.919434, 42.006397, 49.122570>,  <40.309181, 41.978149, 49.037144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.919434, 42.006397, 49.122570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211281, -0.613117, -0.761215,
		0.077188, -0.786830, 0.612324,
		-0.974373, 0.070616, 0.213568,
		39.627121, 42.027580, 49.186642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.096115, 41.242775, 48.854244>,  <40.309181, 41.978149, 49.037144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.096115, 41.242775, 48.854244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.752094, 41.442471, 48.896328>,  <39.545681, 41.562290, 48.921577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.752094, 41.442471, 48.896328>,  <40.096115, 41.242775, 48.854244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.752094, 41.442471, 48.896328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449809, -0.644614, -0.618179,
		-0.240801, -0.578990, 0.778964,
		-0.860050, 0.499243, 0.105211,
		39.494080, 41.592243, 48.927891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.615368, 40.803589, 49.038044>,  <40.096115, 41.242775, 48.854244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.615368, 40.803589, 49.038044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.428780, 41.116848, 48.873562>,  <39.316826, 41.304802, 48.774872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.428780, 41.116848, 48.873562>,  <39.615368, 40.803589, 49.038044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.428780, 41.116848, 48.873562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456886, -0.611386, -0.646113,
		-0.757405, -0.113518, 0.643001,
		-0.466468, 0.783148, -0.411202,
		39.288837, 41.351791, 48.750202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.900803, 40.598663, 49.031792>,  <39.615368, 40.803589, 49.038044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.900803, 40.598663, 49.031792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.967770, 40.885384, 48.761040>,  <39.007950, 41.057415, 48.598591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.967770, 40.885384, 48.761040>,  <38.900803, 40.598663, 49.031792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.967770, 40.885384, 48.761040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458426, -0.551229, -0.697131,
		-0.872821, 0.427012, 0.236314,
		0.167420, 0.716803, -0.676878,
		39.017994, 41.100426, 48.557976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.264027, 40.724075, 48.660248>,  <38.900803, 40.598663, 49.031792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.264027, 40.724075, 48.660248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.535362, 40.877190, 48.409382>,  <38.698162, 40.969059, 48.258862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.535362, 40.877190, 48.409382>,  <38.264027, 40.724075, 48.660248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.535362, 40.877190, 48.409382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507393, -0.373327, -0.776646,
		-0.531425, 0.845047, -0.059019,
		0.678336, 0.382783, -0.627167,
		38.738861, 40.992023, 48.221233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.834980, 41.092453, 48.109203>,  <38.264027, 40.724075, 48.660248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.834980, 41.092453, 48.109203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.191456, 41.023968, 47.941174>,  <38.405342, 40.982876, 47.840355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.191456, 41.023968, 47.941174>,  <37.834980, 41.092453, 48.109203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.191456, 41.023968, 47.941174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453373, -0.367083, -0.812221,
		-0.015144, 0.914296, -0.404763,
		0.891192, -0.171209, -0.420077,
		38.458813, 40.972607, 47.815151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.867500, 41.431160, 47.484489>,  <37.834980, 41.092453, 48.109203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.867500, 41.431160, 47.484489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.158951, 41.160458, 47.442333>,  <38.333820, 40.998035, 47.417042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.158951, 41.160458, 47.442333>,  <37.867500, 41.431160, 47.484489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.158951, 41.160458, 47.442333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358053, -0.245194, -0.900932,
		0.583872, 0.694174, -0.420969,
		0.728623, -0.676758, -0.105389,
		38.377537, 40.957432, 47.410717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.086151, 41.543091, 46.737122>,  <37.867500, 41.431160, 47.484489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.086151, 41.543091, 46.737122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.205193, 41.180019, 46.855473>,  <38.276619, 40.962177, 46.926483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.205193, 41.180019, 46.855473>,  <38.086151, 41.543091, 46.737122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.205193, 41.180019, 46.855473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407294, -0.401020, -0.820545,
		0.863448, 0.123688, -0.489039,
		0.297605, -0.907681, 0.295882,
		38.294476, 40.907715, 46.944237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.500290, 41.171909, 46.123165>,  <38.086151, 41.543091, 46.737122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.500290, 41.171909, 46.123165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.387966, 40.874123, 46.365459>,  <38.320572, 40.695450, 46.510838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.387966, 40.874123, 46.365459>,  <38.500290, 41.171909, 46.123165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.387966, 40.874123, 46.365459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332971, -0.516366, -0.788984,
		0.900153, -0.423248, -0.102884,
		-0.280811, -0.744464, 0.605738,
		38.303722, 40.650784, 46.547180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.681698, 40.584549, 45.718880>,  <38.500290, 41.171909, 46.123165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.681698, 40.584549, 45.718880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.422829, 40.460678, 45.997524>,  <38.267509, 40.386356, 46.164711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.422829, 40.460678, 45.997524>,  <38.681698, 40.584549, 45.718880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.422829, 40.460678, 45.997524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360383, -0.680955, -0.637514,
		0.671785, -0.663629, 0.329093,
		-0.647171, -0.309673, 0.696615,
		38.228676, 40.367775, 46.206509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.779354, 39.840752, 45.824215>,  <38.681698, 40.584549, 45.718880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.779354, 39.840752, 45.824215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.410984, 39.949215, 45.936199>,  <38.189964, 40.014294, 46.003391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.410984, 39.949215, 45.936199>,  <38.779354, 39.840752, 45.824215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.410984, 39.949215, 45.936199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388893, -0.686844, -0.614009,
		0.025798, -0.674329, 0.737980,
		-0.920921, 0.271156, 0.279961,
		38.134708, 40.030563, 46.020187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.530670, 39.157921, 46.000233>,  <38.779354, 39.840752, 45.824215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.530670, 39.157921, 46.000233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.203400, 39.380955, 45.944126>,  <38.007038, 39.514774, 45.910461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.203400, 39.380955, 45.944126>,  <38.530670, 39.157921, 46.000233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.203400, 39.380955, 45.944126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426130, -0.751850, -0.503125,
		-0.385998, -0.351875, 0.852754,
		-0.818180, 0.557589, -0.140269,
		37.957947, 39.548233, 45.902046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.003193, 38.727852, 46.110188>,  <38.530670, 39.157921, 46.000233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.003193, 38.727852, 46.110188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.831554, 39.018089, 45.895008>,  <37.728569, 39.192234, 45.765900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.831554, 39.018089, 45.895008>,  <38.003193, 38.727852, 46.110188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.831554, 39.018089, 45.895008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447148, -0.688105, -0.571463,
		-0.784815, -0.004671, 0.619713,
		-0.429097, 0.725596, -0.537947,
		37.702824, 39.235767, 45.733624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.329567, 38.561134, 46.064018>,  <38.003193, 38.727852, 46.110188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.329567, 38.561134, 46.064018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.369030, 38.807182, 45.751125>,  <37.392708, 38.954811, 45.563389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.369030, 38.807182, 45.751125>,  <37.329567, 38.561134, 46.064018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.369030, 38.807182, 45.751125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522734, -0.636848, -0.566722,
		-0.846768, 0.464812, 0.258715,
		0.098657, 0.615121, -0.782235,
		37.398628, 38.991718, 45.516453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.770447, 38.521248, 45.746616>,  <37.329567, 38.561134, 46.064018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.770447, 38.521248, 45.746616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.991085, 38.678856, 45.452545>,  <37.123466, 38.773418, 45.276100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.991085, 38.678856, 45.452545>,  <36.770447, 38.521248, 45.746616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.991085, 38.678856, 45.452545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451609, -0.599956, -0.660380,
		-0.701279, 0.696278, -0.152991,
		0.551596, 0.394018, -0.735182,
		37.156563, 38.797062, 45.231991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.271320, 38.784035, 45.132843>,  <36.770447, 38.521248, 45.746616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.271320, 38.784035, 45.132843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.634403, 38.743973, 44.969852>,  <36.852253, 38.719936, 44.872059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.634403, 38.743973, 44.969852>,  <36.271320, 38.784035, 45.132843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.634403, 38.743973, 44.969852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417195, -0.319277, -0.850888,
		-0.044876, 0.942354, -0.331595,
		0.907708, -0.100155, -0.407474,
		36.906715, 38.713924, 44.847610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.039883, 38.974709, 44.456684>,  <36.271320, 38.784035, 45.132843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.039883, 38.974709, 44.456684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.376575, 38.759769, 44.477627>,  <36.578590, 38.630806, 44.490192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.376575, 38.759769, 44.477627>,  <36.039883, 38.974709, 44.456684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.376575, 38.759769, 44.477627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234331, -0.450979, -0.861224,
		0.486391, 0.712651, -0.505521,
		0.841732, -0.537351, 0.052356,
		36.629093, 38.598564, 44.493332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.261398, 38.995125, 43.762173>,  <36.039883, 38.974709, 44.456684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.261398, 38.995125, 43.762173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.460423, 38.695110, 43.936474>,  <36.579838, 38.515102, 44.041054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.460423, 38.695110, 43.936474>,  <36.261398, 38.995125, 43.762173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.460423, 38.695110, 43.936474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218623, -0.594566, -0.773754,
		0.839426, 0.289724, -0.459808,
		0.497562, -0.750034, 0.435753,
		36.609692, 38.470100, 44.067200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.594913, 38.714645, 43.252953>,  <36.261398, 38.995125, 43.762173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.594913, 38.714645, 43.252953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.594711, 38.419270, 43.522682>,  <36.594589, 38.242043, 43.684521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.594711, 38.419270, 43.522682>,  <36.594913, 38.714645, 43.252953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.594711, 38.419270, 43.522682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189277, -0.662061, -0.725155,
		0.981924, -0.128000, -0.139435,
		-0.000505, -0.738438, 0.674321,
		36.594559, 38.197739, 43.724979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.073120, 38.164703, 42.985073>,  <36.594913, 38.714645, 43.252953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.073120, 38.164703, 42.985073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.829189, 37.992401, 43.251171>,  <36.682831, 37.889019, 43.410831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.829189, 37.992401, 43.251171>,  <37.073120, 38.164703, 42.985073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.829189, 37.992401, 43.251171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314889, -0.638603, -0.702162,
		0.727291, -0.637679, 0.253798,
		-0.609830, -0.430758, 0.665248,
		36.646240, 37.863174, 43.450745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.094448, 37.591885, 42.660477>,  <37.073120, 38.164703, 42.985073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.094448, 37.591885, 42.660477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.782665, 37.582581, 42.910885>,  <36.595596, 37.577000, 43.061131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.782665, 37.582581, 42.910885>,  <37.094448, 37.591885, 42.660477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.782665, 37.582581, 42.910885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406250, -0.741931, -0.533385,
		0.476873, -0.670073, 0.568853,
		-0.779456, -0.023260, 0.626024,
		36.548828, 37.575603, 43.098694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.795982, 36.852810, 42.891327>,  <37.094448, 37.591885, 42.660477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.795982, 36.852810, 42.891327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.493462, 37.112930, 42.919956>,  <36.311951, 37.269001, 42.937134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.493462, 37.112930, 42.919956>,  <36.795982, 36.852810, 42.891327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.493462, 37.112930, 42.919956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576207, -0.610295, -0.543623,
		-0.309835, -0.452384, 0.836272,
		-0.756299, 0.650299, 0.071576,
		36.266571, 37.308022, 42.941429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.339489, 36.399799, 42.872276>,  <36.795982, 36.852810, 42.891327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.339489, 36.399799, 42.872276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.139988, 36.738174, 42.796772>,  <36.020287, 36.941200, 42.751469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.139988, 36.738174, 42.796772>,  <36.339489, 36.399799, 42.872276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.139988, 36.738174, 42.796772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565866, -0.482763, -0.668382,
		-0.656538, -0.226543, 0.719469,
		-0.498751, 0.845942, -0.188759,
		35.990364, 36.991959, 42.740143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.557163, 36.246433, 42.975845>,  <36.339489, 36.399799, 42.872276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.557163, 36.246433, 42.975845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.606308, 36.574062, 42.751694>,  <35.635796, 36.770641, 42.617203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.606308, 36.574062, 42.751694>,  <35.557163, 36.246433, 42.975845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.606308, 36.574062, 42.751694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684380, -0.338991, -0.645531,
		-0.718700, 0.462819, 0.518911,
		0.122858, 0.819075, -0.560377,
		35.643166, 36.819786, 42.583580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.862045, 36.433945, 42.765076>,  <35.557163, 36.246433, 42.975845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.862045, 36.433945, 42.765076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.070431, 36.658073, 42.507507>,  <35.195461, 36.792549, 42.352966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.070431, 36.658073, 42.507507>,  <34.862045, 36.433945, 42.765076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.070431, 36.658073, 42.507507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699653, -0.151820, -0.698166,
		-0.488958, 0.814242, 0.312938,
		0.520966, 0.560322, -0.643921,
		35.226719, 36.826172, 42.314331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.347813, 36.885754, 42.533504>,  <34.862045, 36.433945, 42.765076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.347813, 36.885754, 42.533504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.637489, 36.899788, 42.258022>,  <34.811295, 36.908211, 42.092731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.637489, 36.899788, 42.258022>,  <34.347813, 36.885754, 42.533504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.637489, 36.899788, 42.258022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682275, -0.108748, -0.722962,
		-0.100265, 0.993450, -0.054813,
		0.724187, 0.035090, -0.688710,
		34.854744, 36.910316, 42.051411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.059231, 37.357426, 41.976234>,  <34.347813, 36.885754, 42.533504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.059231, 37.357426, 41.976234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.345940, 37.126850, 41.819283>,  <34.517963, 36.988506, 41.725113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.345940, 37.126850, 41.819283>,  <34.059231, 37.357426, 41.976234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.345940, 37.126850, 41.819283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562981, -0.146350, -0.813409,
		0.411454, 0.803929, -0.429422,
		0.716769, -0.576437, -0.392381,
		34.560970, 36.953918, 41.701569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.199490, 37.673801, 41.322132>,  <34.059231, 37.357426, 41.976234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.199490, 37.673801, 41.322132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.309616, 37.290035, 41.297745>,  <34.375690, 37.059776, 41.283112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.309616, 37.290035, 41.297745>,  <34.199490, 37.673801, 41.322132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.309616, 37.290035, 41.297745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502496, -0.089553, -0.859929,
		0.819572, 0.267389, -0.506759,
		0.275317, -0.959418, -0.060967,
		34.392212, 37.002209, 41.279453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.400425, 37.593075, 40.659172>,  <34.199490, 37.673801, 41.322132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.400425, 37.593075, 40.659172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.307194, 37.217850, 40.761711>,  <34.251255, 36.992714, 40.823235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.307194, 37.217850, 40.761711>,  <34.400425, 37.593075, 40.659172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.307194, 37.217850, 40.761711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442891, -0.132283, -0.886763,
		0.865751, -0.320214, -0.384628,
		-0.233075, -0.938064, 0.256344,
		34.237270, 36.936432, 40.838615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.215797, 37.314587, 40.035419>,  <34.400425, 37.593075, 40.659172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.215797, 37.314587, 40.035419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.123573, 36.995686, 40.258572>,  <34.068237, 36.804344, 40.392464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.123573, 36.995686, 40.258572>,  <34.215797, 37.314587, 40.035419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.123573, 36.995686, 40.258572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626690, -0.316926, -0.711911,
		0.744380, -0.513757, -0.426559,
		-0.230561, -0.797253, 0.557880,
		34.054405, 36.756508, 40.425934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.330963, 36.650841, 39.612820>,  <34.215797, 37.314587, 40.035419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.330963, 36.650841, 39.612820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.063210, 36.616879, 39.908039>,  <33.902557, 36.596500, 40.085171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.063210, 36.616879, 39.908039>,  <34.330963, 36.650841, 39.612820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.063210, 36.616879, 39.908039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700152, -0.260094, -0.664935,
		0.248421, -0.961843, 0.114652,
		-0.669383, -0.084910, 0.738049,
		33.862396, 36.591404, 40.129456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.991600, 36.374126, 39.870235>,  <34.330963, 36.650841, 39.612820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.991600, 36.374126, 39.870235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.110870, 35.993874, 39.835846>,  <35.182434, 35.765720, 39.815212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.110870, 35.993874, 39.835846>,  <34.991600, 36.374126, 39.870235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.110870, 35.993874, 39.835846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.946246, -0.282564, -0.157406,
		0.125342, 0.128287, -0.983784,
		0.298175, -0.950631, -0.085974,
		35.200321, 35.708683, 39.810055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.776661, 36.490341, 39.911919>,  <34.991600, 36.374126, 39.870235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.776661, 36.490341, 39.911919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.817623, 36.435871, 40.306068>,  <35.842201, 36.403191, 40.542561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.817623, 36.435871, 40.306068>,  <35.776661, 36.490341, 39.911919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.817623, 36.435871, 40.306068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980627, -0.152469, -0.122980,
		0.166986, 0.978882, 0.117924,
		0.102404, -0.136175, 0.985378,
		35.848343, 36.395020, 40.601681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.241795, 36.006432, 39.832928>,  <35.776661, 36.490341, 39.911919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.241795, 36.006432, 39.832928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.587952, 35.933399, 39.646267>,  <36.795647, 35.889580, 39.534271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.587952, 35.933399, 39.646267>,  <36.241795, 36.006432, 39.832928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.587952, 35.933399, 39.646267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494812, 0.458399, 0.738262,
		0.079115, -0.869789, 0.487040,
		0.865391, -0.182586, -0.466648,
		36.847569, 35.878624, 39.506271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.633099, 35.706367, 40.334167>,  <36.241795, 36.006432, 39.832928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.633099, 35.706367, 40.334167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.874279, 35.901203, 40.081440>,  <37.018986, 36.018105, 39.929802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.874279, 35.901203, 40.081440>,  <36.633099, 35.706367, 40.334167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.874279, 35.901203, 40.081440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516941, 0.364673, 0.774459,
		0.607638, -0.793572, -0.031918,
		0.602949, 0.487090, -0.631819,
		37.055164, 36.047329, 39.891895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.372505, 35.490971, 40.368462>,  <36.633099, 35.706367, 40.334167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.372505, 35.490971, 40.368462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.409744, 35.862991, 40.226288>,  <37.432087, 36.086205, 40.140984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.409744, 35.862991, 40.226288>,  <37.372505, 35.490971, 40.368462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.409744, 35.862991, 40.226288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608235, 0.229506, 0.759854,
		0.788278, -0.286930, -0.544324,
		0.093100, 0.930053, -0.355435,
		37.437675, 36.142006, 40.119656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.121483, 35.696442, 40.445278>,  <37.372505, 35.490971, 40.368462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.121483, 35.696442, 40.445278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.911209, 36.033855, 40.401257>,  <37.785046, 36.236305, 40.374844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.911209, 36.033855, 40.401257>,  <38.121483, 35.696442, 40.445278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.911209, 36.033855, 40.401257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459410, 0.390387, 0.797835,
		0.715963, 0.368848, -0.592746,
		-0.525681, 0.843533, -0.110050,
		37.753506, 36.286915, 40.368240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.570477, 36.133430, 40.263672>,  <38.121483, 35.696442, 40.445278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.570477, 36.133430, 40.263672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.274956, 36.317856, 40.460281>,  <38.097645, 36.428513, 40.578247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.274956, 36.317856, 40.460281>,  <38.570477, 36.133430, 40.263672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.274956, 36.317856, 40.460281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647790, 0.284705, 0.706620,
		0.185860, 0.840452, -0.509014,
		-0.738799, 0.461067, 0.491521,
		38.053314, 36.456177, 40.607738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.743011, 36.884933, 40.287636>,  <38.570477, 36.133430, 40.263672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.743011, 36.884933, 40.287636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.502029, 36.800884, 40.595634>,  <38.357441, 36.750454, 40.780434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.502029, 36.800884, 40.595634>,  <38.743011, 36.884933, 40.287636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.502029, 36.800884, 40.595634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632240, 0.463194, 0.621067,
		-0.487158, 0.860989, -0.146206,
		-0.602453, -0.210120, 0.770000,
		38.321293, 36.737850, 40.826633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.872597, 37.423691, 40.801018>,  <38.743011, 36.884933, 40.287636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.872597, 37.423691, 40.801018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.661030, 37.170803, 41.027485>,  <38.534088, 37.019070, 41.163364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.661030, 37.170803, 41.027485>,  <38.872597, 37.423691, 40.801018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.661030, 37.170803, 41.027485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445996, 0.360507, 0.819221,
		-0.722034, 0.685808, 0.091289,
		-0.528918, -0.632220, 0.566165,
		38.502354, 36.981136, 41.197334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.709557, 37.722218, 41.328705>,  <38.872597, 37.423691, 40.801018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.709557, 37.722218, 41.328705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.599243, 37.366196, 41.473896>,  <38.533054, 37.152584, 41.561008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.599243, 37.366196, 41.473896>,  <38.709557, 37.722218, 41.328705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.599243, 37.366196, 41.473896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385602, 0.243460, 0.889965,
		-0.880485, 0.385401, 0.276064,
		-0.275783, -0.890052, 0.362974,
		38.516510, 37.099178, 41.582787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.324009, 37.836704, 41.869617>,  <38.709557, 37.722218, 41.328705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.324009, 37.836704, 41.869617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.502853, 37.481716, 41.914310>,  <38.610161, 37.268723, 41.941128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.502853, 37.481716, 41.914310>,  <38.324009, 37.836704, 41.869617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.502853, 37.481716, 41.914310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158079, 0.201344, 0.966681,
		-0.880400, -0.414550, 0.230313,
		0.447109, -0.887474, 0.111731,
		38.636986, 37.215473, 41.947830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.924438, 37.439438, 42.514091>,  <38.324009, 37.836704, 41.869617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.924438, 37.439438, 42.514091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.299370, 37.308380, 42.466660>,  <38.524330, 37.229744, 42.438202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.299370, 37.308380, 42.466660>,  <37.924438, 37.439438, 42.514091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.299370, 37.308380, 42.466660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140694, 0.044551, 0.989050,
		-0.318775, -0.943750, 0.087857,
		0.937330, -0.327646, -0.118578,
		38.580570, 37.210087, 42.431087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.000183, 37.047626, 43.115395>,  <37.924438, 37.439438, 42.514091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.000183, 37.047626, 43.115395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.376301, 37.044193, 42.979290>,  <38.601971, 37.042133, 42.897629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.376301, 37.044193, 42.979290>,  <38.000183, 37.047626, 43.115395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.376301, 37.044193, 42.979290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340252, 0.049596, 0.939026,
		0.008811, -0.998733, 0.049556,
		0.940293, -0.008588, -0.340258,
		38.658390, 37.041618, 42.877213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.235054, 36.532158, 43.472561>,  <38.000183, 37.047626, 43.115395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.235054, 36.532158, 43.472561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.551445, 36.731670, 43.330814>,  <38.741280, 36.851379, 43.245766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.551445, 36.731670, 43.330814>,  <38.235054, 36.532158, 43.472561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.551445, 36.731670, 43.330814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368921, 0.073250, 0.926570,
		0.488112, -0.863627, -0.126072,
		0.790977, 0.498781, -0.354364,
		38.788738, 36.881306, 43.224506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.874584, 36.200062, 43.785606>,  <38.235054, 36.532158, 43.472561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.874584, 36.200062, 43.785606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.956810, 36.580276, 43.692467>,  <39.006145, 36.808407, 43.636585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.956810, 36.580276, 43.692467>,  <38.874584, 36.200062, 43.785606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.956810, 36.580276, 43.692467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555209, 0.082659, 0.827594,
		0.805908, -0.299399, -0.510757,
		0.205562, 0.950541, -0.232845,
		39.018478, 36.865440, 43.622612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.548565, 36.271229, 44.042751>,  <38.874584, 36.200062, 43.785606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.548565, 36.271229, 44.042751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.432446, 36.645527, 43.962643>,  <39.362774, 36.870106, 43.914577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.432446, 36.645527, 43.962643>,  <39.548565, 36.271229, 44.042751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.432446, 36.645527, 43.962643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472707, 0.322189, 0.820209,
		0.832031, 0.143438, -0.535864,
		-0.290298, 0.935746, -0.200267,
		39.345356, 36.926250, 43.902561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.098412, 36.641903, 44.085892>,  <39.548565, 36.271229, 44.042751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.098412, 36.641903, 44.085892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.794048, 36.896404, 44.136795>,  <39.611431, 37.049107, 44.167339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.794048, 36.896404, 44.136795>,  <40.098412, 36.641903, 44.085892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.794048, 36.896404, 44.136795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456225, 0.385154, 0.802194,
		0.461385, 0.668456, -0.583344,
		-0.760909, 0.636256, 0.127262,
		39.565777, 37.087280, 44.174973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.469109, 37.275539, 44.274841>,  <40.098412, 36.641903, 44.085892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.469109, 37.275539, 44.274841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.090134, 37.321125, 44.394424>,  <39.862747, 37.348476, 44.466175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.090134, 37.321125, 44.394424>,  <40.469109, 37.275539, 44.274841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.090134, 37.321125, 44.394424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304264, 0.609867, 0.731769,
		-0.098924, 0.784266, -0.612487,
		-0.947438, 0.113968, 0.298954,
		39.805901, 37.355316, 44.484112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.361332, 37.972992, 44.269470>,  <40.469109, 37.275539, 44.274841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.361332, 37.972992, 44.269470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.070023, 37.852646, 44.515755>,  <39.895237, 37.780437, 44.663525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.070023, 37.852646, 44.515755>,  <40.361332, 37.972992, 44.269470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.070023, 37.852646, 44.515755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186378, 0.777648, 0.600439,
		-0.659460, 0.552037, -0.510263,
		-0.728269, -0.300864, 0.615715,
		39.851543, 37.762386, 44.700470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.051792, 38.550789, 44.499435>,  <40.361332, 37.972992, 44.269470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.051792, 38.550789, 44.499435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.964302, 38.281452, 44.781929>,  <39.911808, 38.119850, 44.951424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.964302, 38.281452, 44.781929>,  <40.051792, 38.550789, 44.499435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.964302, 38.281452, 44.781929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115237, 0.700869, 0.703920,
		-0.968958, 0.235348, -0.075703,
		-0.218724, -0.673345, 0.706234,
		39.898685, 38.079449, 44.993797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.471558, 38.849224, 44.920284>,  <40.051792, 38.550789, 44.499435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.471558, 38.849224, 44.920284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.634407, 38.562328, 45.146496>,  <39.732117, 38.390190, 45.282223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.634407, 38.562328, 45.146496>,  <39.471558, 38.849224, 44.920284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.634407, 38.562328, 45.146496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052245, 0.636435, 0.769559,
		-0.911878, -0.283759, 0.296579,
		0.407123, -0.717238, 0.565526,
		39.756542, 38.347157, 45.316154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.167461, 38.811295, 45.637363>,  <39.471558, 38.849224, 44.920284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.167461, 38.811295, 45.637363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.527409, 38.638870, 45.663986>,  <39.743378, 38.535416, 45.679958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.527409, 38.638870, 45.663986>,  <39.167461, 38.811295, 45.637363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.527409, 38.638870, 45.663986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273532, 0.676577, 0.683684,
		-0.339739, -0.597019, 0.726737,
		0.899865, -0.431060, 0.066556,
		39.797367, 38.509552, 45.683952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.228874, 38.845230, 46.323151>,  <39.167461, 38.811295, 45.637363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.228874, 38.845230, 46.323151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.591469, 38.788872, 46.163933>,  <39.809025, 38.755054, 46.068401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.591469, 38.788872, 46.163933>,  <39.228874, 38.845230, 46.323151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.591469, 38.788872, 46.163933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406864, 0.543585, 0.734151,
		0.112927, -0.827444, 0.550077,
		0.906482, -0.140901, -0.398042,
		39.863415, 38.746601, 46.044521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.712952, 38.705219, 46.902641>,  <39.228874, 38.845230, 46.323151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.712952, 38.705219, 46.902641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.929974, 38.834438, 46.592472>,  <40.060188, 38.911968, 46.406372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.929974, 38.834438, 46.592472>,  <39.712952, 38.705219, 46.902641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.929974, 38.834438, 46.592472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456040, 0.661945, 0.594859,
		0.705452, -0.676365, 0.211818,
		0.542554, 0.323047, -0.775420,
		40.092739, 38.931351, 46.359848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.275787, 38.790047, 47.164272>,  <39.712952, 38.705219, 46.902641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.275787, 38.790047, 47.164272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.323833, 39.015026, 46.837048>,  <40.352661, 39.150013, 46.640713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.323833, 39.015026, 46.837048>,  <40.275787, 38.790047, 47.164272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.323833, 39.015026, 46.837048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546603, 0.650407, 0.527442,
		0.828732, -0.510509, -0.229312,
		0.120117, 0.562451, -0.818059,
		40.359867, 39.183762, 46.591629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.938015, 39.134171, 47.291767>,  <40.275787, 38.790047, 47.164272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.938015, 39.134171, 47.291767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.744408, 39.347412, 47.014198>,  <40.628242, 39.475357, 46.847656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.744408, 39.347412, 47.014198>,  <40.938015, 39.134171, 47.291767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.744408, 39.347412, 47.014198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300510, 0.846039, 0.440354,
		0.821840, 0.004608, -0.569700,
		-0.484018, 0.533101, -0.693924,
		40.599201, 39.507343, 46.806023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.499844, 39.480370, 46.979668>,  <40.938015, 39.134171, 47.291767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.499844, 39.480370, 46.979668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.145630, 39.660072, 46.932323>,  <40.933102, 39.767895, 46.903915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.145630, 39.660072, 46.932323>,  <41.499844, 39.480370, 46.979668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.145630, 39.660072, 46.932323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374359, 0.840882, 0.390863,
		0.275122, 0.301811, -0.912807,
		-0.885530, 0.449253, -0.118359,
		40.879971, 39.794849, 46.896816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.686237, 40.115089, 46.752697>,  <41.499844, 39.480370, 46.979668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.686237, 40.115089, 46.752697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.317539, 40.171711, 46.897106>,  <41.096321, 40.205685, 46.983753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.317539, 40.171711, 46.897106>,  <41.686237, 40.115089, 46.752697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.317539, 40.171711, 46.897106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280258, 0.886628, 0.367894,
		-0.268017, 0.440287, -0.856922,
		-0.921750, 0.141557, 0.361025,
		41.041016, 40.214180, 47.005413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.320126, 40.663464, 46.382565>,  <41.686237, 40.115089, 46.752697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.320126, 40.663464, 46.382565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.127689, 40.621471, 46.730709>,  <41.012226, 40.596275, 46.939594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.127689, 40.621471, 46.730709>,  <41.320126, 40.663464, 46.382565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.127689, 40.621471, 46.730709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199935, 0.953501, 0.225526,
		-0.853567, 0.282515, -0.437731,
		-0.481091, -0.104984, 0.870362,
		40.983360, 40.589977, 46.991817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.036217, 41.298214, 46.483414>,  <41.320126, 40.663464, 46.382565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.036217, 41.298214, 46.483414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.042362, 41.135090, 46.848587>,  <41.046051, 41.037216, 47.067692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.042362, 41.135090, 46.848587>,  <41.036217, 41.298214, 46.483414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.042362, 41.135090, 46.848587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224230, 0.891194, 0.394327,
		-0.974415, 0.198648, 0.105139,
		0.015367, -0.407813, 0.912936,
		41.046974, 41.012745, 47.122467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.697269, 41.803246, 46.921638>,  <41.036217, 41.298214, 46.483414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.697269, 41.803246, 46.921638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.898964, 41.561760, 47.168625>,  <41.019981, 41.416866, 47.316818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.898964, 41.561760, 47.168625>,  <40.697269, 41.803246, 46.921638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.898964, 41.561760, 47.168625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398333, 0.797017, 0.453975,
		-0.766207, 0.017047, 0.642368,
		0.504240, -0.603716, 0.617470,
		41.050236, 41.380646, 47.353867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.573128, 42.058342, 47.668003>,  <40.697269, 41.803246, 46.921638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.573128, 42.058342, 47.668003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.908424, 41.842552, 47.699818>,  <41.109600, 41.713078, 47.718906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.908424, 41.842552, 47.699818>,  <40.573128, 42.058342, 47.668003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.908424, 41.842552, 47.699818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367940, 0.667205, 0.647655,
		-0.402461, -0.513623, 0.757770,
		0.838239, -0.539470, 0.079541,
		41.159897, 41.680710, 47.723679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.743176, 41.985176, 48.391724>,  <40.573128, 42.058342, 47.668003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.743176, 41.985176, 48.391724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.091995, 41.925510, 48.205273>,  <41.301289, 41.889709, 48.093403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.091995, 41.925510, 48.205273>,  <40.743176, 41.985176, 48.391724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.091995, 41.925510, 48.205273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473354, 0.499057, 0.725863,
		0.124355, -0.853635, 0.505809,
		0.872050, -0.149163, -0.466132,
		41.353611, 41.880760, 48.065434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.168030, 41.949127, 48.849968>,  <40.743176, 41.985176, 48.391724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.168030, 41.949127, 48.849968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.432434, 42.026306, 48.559910>,  <41.591076, 42.072613, 48.385876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.432434, 42.026306, 48.559910>,  <41.168030, 41.949127, 48.849968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.432434, 42.026306, 48.559910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592026, 0.459663, 0.661978,
		0.461124, -0.866858, 0.189531,
		0.660961, 0.193046, -0.725164,
		41.630737, 42.084190, 48.342365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.704395, 41.818741, 49.224392>,  <41.168030, 41.949127, 48.849968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.704395, 41.818741, 49.224392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.844296, 42.001801, 48.897411>,  <41.928238, 42.111637, 48.701221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.844296, 42.001801, 48.897411>,  <41.704395, 41.818741, 49.224392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.844296, 42.001801, 48.897411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811411, 0.288168, 0.508500,
		0.468280, -0.841138, -0.270557,
		0.349752, 0.457653, -0.817452,
		41.949223, 42.139095, 48.652176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.357552, 41.699066, 49.169937>,  <41.704395, 41.818741, 49.224392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.357552, 41.699066, 49.169937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.311874, 42.041115, 48.967659>,  <42.284470, 42.246346, 48.846294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.311874, 42.041115, 48.967659>,  <42.357552, 41.699066, 49.169937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.311874, 42.041115, 48.967659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761711, 0.402141, 0.508014,
		0.637774, -0.327182, -0.697277,
		-0.114191, 0.855123, -0.505693,
		42.277618, 42.297653, 48.815952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.915295, 42.002190, 49.382431>,  <42.357552, 41.699066, 49.169937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.915295, 42.002190, 49.382431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.708992, 42.302242, 49.216877>,  <42.585209, 42.482273, 49.117546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.708992, 42.302242, 49.216877>,  <42.915295, 42.002190, 49.382431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.708992, 42.302242, 49.216877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557080, 0.660658, 0.503183,
		0.650886, 0.028957, -0.758623,
		-0.515761, 0.750128, -0.413882,
		42.554264, 42.527283, 49.092712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.445625, 42.482803, 49.148743>,  <42.915295, 42.002190, 49.382431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.445625, 42.482803, 49.148743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.113750, 42.705238, 49.168240>,  <42.914623, 42.838699, 49.179935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.113750, 42.705238, 49.168240>,  <43.445625, 42.482803, 49.148743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.113750, 42.705238, 49.168240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523190, 0.744211, 0.415237,
		0.194637, 0.370019, -0.908407,
		-0.829692, 0.556090, 0.048740,
		42.864841, 42.872066, 49.182861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.616405, 43.137390, 48.985329>,  <43.445625, 42.482803, 49.148743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.616405, 43.137390, 48.985329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.285797, 43.204384, 49.200291>,  <43.087433, 43.244579, 49.329269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.285797, 43.204384, 49.200291>,  <43.616405, 43.137390, 48.985329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.285797, 43.204384, 49.200291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484024, 0.698858, 0.526611,
		-0.287371, 0.695374, -0.658690,
		-0.826522, 0.167489, 0.537409,
		43.037842, 43.254631, 49.361515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.953274, 43.836170, 49.002918>,  <43.616405, 43.137390, 48.985329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.953274, 43.836170, 49.002918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.051407, 44.158993, 48.788082>,  <44.110287, 44.352688, 48.659180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.051407, 44.158993, 48.788082>,  <43.953274, 43.836170, 49.002918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.051407, 44.158993, 48.788082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172607, -0.508807, -0.843399,
		-0.953950, 0.299616, 0.014479,
		0.245329, 0.807060, -0.537092,
		44.125004, 44.401112, 48.626953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.377552, 44.171230, 48.511341>,  <43.953274, 43.836170, 49.002918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.377552, 44.171230, 48.511341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.750511, 44.246696, 48.388031>,  <43.974289, 44.291977, 48.314045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.750511, 44.246696, 48.388031>,  <43.377552, 44.171230, 48.511341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.750511, 44.246696, 48.388031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113704, -0.656509, -0.745699,
		-0.343075, 0.730342, -0.590677,
		0.932401, 0.188668, -0.308274,
		44.030231, 44.303295, 48.295547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.372269, 44.248417, 47.769573>,  <43.377552, 44.171230, 48.511341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.372269, 44.248417, 47.769573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.757442, 44.164433, 47.837318>,  <43.988544, 44.114044, 47.877964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.757442, 44.164433, 47.837318>,  <43.372269, 44.248417, 47.769573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.757442, 44.164433, 47.837318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016168, -0.581798, -0.813173,
		0.269267, 0.785767, -0.556836,
		0.962930, -0.209957, 0.169363,
		44.046322, 44.101444, 47.888126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.709305, 44.374588, 47.141090>,  <43.372269, 44.248417, 47.769573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.709305, 44.374588, 47.141090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.972691, 44.145687, 47.336620>,  <44.130722, 44.008347, 47.453938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.972691, 44.145687, 47.336620>,  <43.709305, 44.374588, 47.141090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.972691, 44.145687, 47.336620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067680, -0.601850, -0.795736,
		0.749561, 0.557049, -0.357568,
		0.658466, -0.572253, 0.488824,
		44.170231, 43.974010, 47.483269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.144176, 44.204342, 46.638416>,  <43.709305, 44.374588, 47.141090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.144176, 44.204342, 46.638416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.211731, 43.926083, 46.917717>,  <44.252266, 43.759129, 47.085297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.211731, 43.926083, 46.917717>,  <44.144176, 44.204342, 46.638416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.211731, 43.926083, 46.917717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030961, -0.711821, -0.701679,
		0.985149, 0.096887, -0.141757,
		0.168889, -0.695647, 0.698249,
		44.262398, 43.717388, 47.127193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.707878, 43.712337, 46.370789>,  <44.144176, 44.204342, 46.638416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.707878, 43.712337, 46.370789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.515766, 43.517010, 46.662235>,  <44.400497, 43.399815, 46.837101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.515766, 43.517010, 46.662235>,  <44.707878, 43.712337, 46.370789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.515766, 43.517010, 46.662235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159188, -0.768368, -0.619895,
		0.862549, -0.413709, 0.291296,
		-0.480279, -0.488319, 0.728613,
		44.371681, 43.370514, 46.880817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.022457, 43.076519, 46.369282>,  <44.707878, 43.712337, 46.370789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.022457, 43.076519, 46.369282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.680481, 43.018303, 46.568436>,  <44.475296, 42.983372, 46.687927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.680481, 43.018303, 46.568436>,  <45.022457, 43.076519, 46.369282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.680481, 43.018303, 46.568436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167862, -0.830556, -0.531036,
		0.490807, -0.537582, 0.685649,
		-0.854945, -0.145542, 0.497882,
		44.423996, 42.974640, 46.717800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.873264, 42.448929, 46.121208>,  <45.022457, 43.076519, 46.369282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.873264, 42.448929, 46.121208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.551876, 42.513290, 46.350487>,  <44.359043, 42.551907, 46.488052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.551876, 42.513290, 46.350487>,  <44.873264, 42.448929, 46.121208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.551876, 42.513290, 46.350487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468114, -0.765612, -0.441257,
		0.367845, -0.622856, 0.690464,
		-0.803467, 0.160902, 0.573194,
		44.310837, 42.561562, 46.522446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.693493, 41.802448, 46.553200>,  <44.873264, 42.448929, 46.121208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.693493, 41.802448, 46.553200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.374645, 42.024342, 46.457806>,  <44.183334, 42.157478, 46.400570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.374645, 42.024342, 46.457806>,  <44.693493, 41.802448, 46.553200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.374645, 42.024342, 46.457806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338745, -0.737782, -0.583892,
		-0.499850, -0.384648, 0.776013,
		-0.797121, 0.554729, -0.238483,
		44.135509, 42.190762, 46.386261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.036678, 41.426052, 46.785332>,  <44.693493, 41.802448, 46.553200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.036678, 41.426052, 46.785332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.950985, 41.665321, 46.476452>,  <43.899567, 41.808884, 46.291126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.950985, 41.665321, 46.476452>,  <44.036678, 41.426052, 46.785332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.950985, 41.665321, 46.476452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236077, -0.798823, -0.553307,
		-0.947824, 0.063760, 0.312352,
		-0.214236, 0.598177, -0.772196,
		43.886715, 41.844776, 46.244793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.352325, 41.284538, 46.553360>,  <44.036678, 41.426052, 46.785332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.352325, 41.284538, 46.553360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.524921, 41.434402, 46.225105>,  <43.628479, 41.524319, 46.028152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.524921, 41.434402, 46.225105>,  <43.352325, 41.284538, 46.553360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.524921, 41.434402, 46.225105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437757, -0.708443, -0.553605,
		-0.788790, 0.598113, -0.141674,
		0.431486, 0.374659, -0.820640,
		43.654366, 41.546799, 45.978912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.729580, 41.404202, 46.054031>,  <43.352325, 41.284538, 46.553360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.729580, 41.404202, 46.054031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.071476, 41.368267, 45.849541>,  <43.276611, 41.346706, 45.726845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.071476, 41.368267, 45.849541>,  <42.729580, 41.404202, 46.054031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.071476, 41.368267, 45.849541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419575, -0.699415, -0.578598,
		-0.305583, 0.709048, -0.635508,
		0.854737, -0.089833, -0.511228,
		43.327896, 41.341316, 45.696171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.797863, 41.625793, 45.227066>,  <42.729580, 41.404202, 46.054031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.797863, 41.625793, 45.227066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.032490, 41.333408, 45.366570>,  <43.173267, 41.157978, 45.450272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.032490, 41.333408, 45.366570>,  <42.797863, 41.625793, 45.227066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.032490, 41.333408, 45.366570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467070, -0.657101, -0.591662,
		0.661652, 0.184155, -0.726845,
		0.586568, -0.730962, 0.348759,
		43.208462, 41.114120, 45.471199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.097874, 41.363857, 44.688698>,  <42.797863, 41.625793, 45.227066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.097874, 41.363857, 44.688698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.120651, 41.061852, 44.949989>,  <43.134319, 40.880650, 45.106766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.120651, 41.061852, 44.949989>,  <43.097874, 41.363857, 44.688698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.120651, 41.061852, 44.949989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450386, -0.603359, -0.658111,
		0.891016, -0.256731, -0.374406,
		0.056944, -0.755014, 0.653231,
		43.137733, 40.835346, 45.145958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.481255, 40.871826, 44.453136>,  <43.097874, 41.363857, 44.688698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.481255, 40.871826, 44.453136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.255978, 40.677731, 44.720676>,  <43.120811, 40.561272, 44.881199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.255978, 40.677731, 44.720676>,  <43.481255, 40.871826, 44.453136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.255978, 40.677731, 44.720676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373015, -0.572967, -0.729773,
		0.737341, -0.660493, 0.141690,
		-0.563194, -0.485240, 0.668846,
		43.087021, 40.532158, 44.921329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.414478, 40.207066, 44.191357>,  <43.481255, 40.871826, 44.453136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.414478, 40.207066, 44.191357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.134872, 40.152687, 44.472183>,  <42.967110, 40.120060, 44.640678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.134872, 40.152687, 44.472183>,  <43.414478, 40.207066, 44.191357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.134872, 40.152687, 44.472183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415025, -0.722382, -0.553099,
		0.582351, -0.678000, 0.448535,
		-0.699014, -0.135945, 0.702067,
		42.925167, 40.111904, 44.682804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.451954, 39.467129, 44.398235>,  <43.414478, 40.207066, 44.191357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.451954, 39.467129, 44.398235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.084175, 39.583134, 44.504448>,  <42.863506, 39.652737, 44.568176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.084175, 39.583134, 44.504448>,  <43.451954, 39.467129, 44.398235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.084175, 39.583134, 44.504448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389802, -0.760975, -0.518625,
		0.051654, -0.580353, 0.812725,
		-0.919449, 0.290012, 0.265530,
		42.808342, 39.670135, 44.584106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.025803, 38.906773, 44.660568>,  <43.451954, 39.467129, 44.398235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.025803, 38.906773, 44.660568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.726124, 39.166485, 44.608200>,  <42.546318, 39.322311, 44.576778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.726124, 39.166485, 44.608200>,  <43.025803, 38.906773, 44.660568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.726124, 39.166485, 44.608200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550972, -0.720627, -0.420865,
		-0.367604, -0.243177, 0.897626,
		-0.749198, 0.649278, -0.130921,
		42.501366, 39.361267, 44.568924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.294857, 38.590488, 44.775635>,  <43.025803, 38.906773, 44.660568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.294857, 38.590488, 44.775635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.238483, 38.909641, 44.541195>,  <42.204659, 39.101135, 44.400532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.238483, 38.909641, 44.541195>,  <42.294857, 38.590488, 44.775635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.238483, 38.909641, 44.541195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486503, -0.571414, -0.660908,
		-0.862237, 0.192000, 0.468704,
		-0.140930, 0.797886, -0.586103,
		42.196205, 39.149006, 44.365364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.689693, 38.346249, 44.437637>,  <42.294857, 38.590488, 44.775635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.689693, 38.346249, 44.437637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.804668, 38.660080, 44.217888>,  <41.873653, 38.848377, 44.086037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.804668, 38.660080, 44.217888>,  <41.689693, 38.346249, 44.437637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.804668, 38.660080, 44.217888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346821, -0.449401, -0.823258,
		-0.892802, 0.427169, 0.142935,
		0.287435, 0.784580, -0.549378,
		41.890900, 38.895454, 44.053074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.107330, 38.484840, 44.136784>,  <41.689693, 38.346249, 44.437637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.107330, 38.484840, 44.136784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.385628, 38.661007, 43.909813>,  <41.552605, 38.766708, 43.773632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.385628, 38.661007, 43.909813>,  <41.107330, 38.484840, 44.136784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.385628, 38.661007, 43.909813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379738, -0.445020, -0.811022,
		-0.609704, 0.779737, -0.142378,
		0.695745, 0.440417, -0.567426,
		41.594353, 38.793133, 43.739586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.775452, 38.904034, 43.576321>,  <41.107330, 38.484840, 44.136784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.775452, 38.904034, 43.576321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.145908, 38.804886, 43.462605>,  <41.368183, 38.745396, 43.394375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.145908, 38.804886, 43.462605>,  <40.775452, 38.904034, 43.576321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.145908, 38.804886, 43.462605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374221, -0.509763, -0.774661,
		0.047097, 0.823833, -0.564872,
		0.926143, -0.247871, -0.284287,
		41.423752, 38.730526, 43.377319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.771370, 39.031628, 42.880566>,  <40.775452, 38.904034, 43.576321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.771370, 39.031628, 42.880566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.086403, 38.790672, 42.932468>,  <41.275421, 38.646099, 42.963612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.086403, 38.790672, 42.932468>,  <40.771370, 39.031628, 42.880566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.086403, 38.790672, 42.932468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201238, -0.450467, -0.869818,
		0.582423, 0.658942, -0.476004,
		0.787583, -0.602392, 0.129758,
		41.322678, 38.609955, 42.971397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.056202, 39.022884, 42.259151>,  <40.771370, 39.031628, 42.880566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.056202, 39.022884, 42.259151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.209846, 38.698254, 42.435246>,  <41.302032, 38.503475, 42.540901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.209846, 38.698254, 42.435246>,  <41.056202, 39.022884, 42.259151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.209846, 38.698254, 42.435246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122288, -0.517333, -0.847002,
		0.915154, 0.271505, -0.297958,
		0.384109, -0.811573, 0.440238,
		41.325081, 38.454781, 42.567318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.653805, 38.920002, 41.995251>,  <41.056202, 39.022884, 42.259151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.653805, 38.920002, 41.995251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.500244, 38.569454, 42.111595>,  <41.408108, 38.359127, 42.181400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.500244, 38.569454, 42.111595>,  <41.653805, 38.920002, 41.995251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.500244, 38.569454, 42.111595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047217, -0.295956, -0.954034,
		0.922167, -0.379987, 0.072237,
		-0.383900, -0.876368, 0.290862,
		41.385075, 38.306545, 42.198853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.903660, 38.446548, 41.526402>,  <41.653805, 38.920002, 41.995251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.903660, 38.446548, 41.526402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.604954, 38.248787, 41.704346>,  <41.425728, 38.130131, 41.811111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.604954, 38.248787, 41.704346>,  <41.903660, 38.446548, 41.526402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.604954, 38.248787, 41.704346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222975, -0.444056, -0.867811,
		0.626593, -0.747247, 0.221367,
		-0.746768, -0.494405, 0.444859,
		41.380924, 38.100464, 41.837803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.954033, 37.845173, 41.247940>,  <41.903660, 38.446548, 41.526402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.954033, 37.845173, 41.247940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.578255, 37.826939, 41.383801>,  <41.352787, 37.815998, 41.465317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.578255, 37.826939, 41.383801>,  <41.954033, 37.845173, 41.247940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.578255, 37.826939, 41.383801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236311, -0.631611, -0.738393,
		0.248192, -0.773944, 0.582591,
		-0.939445, -0.045590, 0.339652,
		41.296421, 37.813263, 41.485695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.820370, 37.185318, 41.217030>,  <41.954033, 37.845173, 41.247940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.820370, 37.185318, 41.217030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.461037, 37.360905, 41.224064>,  <41.245438, 37.466255, 41.228283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.461037, 37.360905, 41.224064>,  <41.820370, 37.185318, 41.217030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.461037, 37.360905, 41.224064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326028, -0.639313, -0.696408,
		-0.294456, -0.631339, 0.717430,
		-0.898333, 0.438964, 0.017585,
		41.191536, 37.492596, 41.229340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.388386, 36.676922, 41.063663>,  <41.820370, 37.185318, 41.217030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.388386, 36.676922, 41.063663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.176826, 37.001354, 40.963730>,  <41.049892, 37.196014, 40.903770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.176826, 37.001354, 40.963730>,  <41.388386, 36.676922, 41.063663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.176826, 37.001354, 40.963730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335547, -0.470241, -0.816260,
		-0.779535, -0.347887, 0.520865,
		-0.528898, 0.811078, -0.249837,
		41.018158, 37.244678, 40.888779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.930023, 36.358414, 40.660938>,  <41.388386, 36.676922, 41.063663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.930023, 36.358414, 40.660938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.867416, 36.744797, 40.578552>,  <40.829853, 36.976627, 40.529121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.867416, 36.744797, 40.578552>,  <40.930023, 36.358414, 40.660938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.867416, 36.744797, 40.578552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270403, -0.242480, -0.931711,
		-0.949938, -0.090139, 0.299152,
		-0.156522, 0.965960, -0.205968,
		40.820461, 37.034584, 40.516762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.270535, 36.394432, 40.269085>,  <40.930023, 36.358414, 40.660938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.270535, 36.394432, 40.269085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.503719, 36.704041, 40.170254>,  <40.643631, 36.889805, 40.110954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.503719, 36.704041, 40.170254>,  <40.270535, 36.394432, 40.269085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.503719, 36.704041, 40.170254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114961, -0.222461, -0.968140,
		-0.804324, 0.592795, -0.040704,
		0.582964, 0.774019, -0.247079,
		40.678608, 36.936245, 40.096130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.858784, 36.834206, 39.798138>,  <40.270535, 36.394432, 40.269085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.858784, 36.834206, 39.798138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.242878, 36.928993, 39.739098>,  <40.473335, 36.985867, 39.703674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.242878, 36.928993, 39.739098>,  <39.858784, 36.834206, 39.798138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.242878, 36.928993, 39.739098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158892, 0.029155, -0.986865,
		-0.229549, 0.971081, 0.065648,
		0.960240, 0.236965, -0.147604,
		40.530949, 37.000084, 39.694817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.879791, 37.418839, 39.192085>,  <39.858784, 36.834206, 39.798138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.879791, 37.418839, 39.192085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.233170, 37.235428, 39.230606>,  <40.445198, 37.125381, 39.253719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.233170, 37.235428, 39.230606>,  <39.879791, 37.418839, 39.192085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.233170, 37.235428, 39.230606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096786, -0.022505, -0.995051,
		0.458421, 0.888397, 0.024497,
		0.883449, -0.458523, 0.096301,
		40.498203, 37.097870, 39.259495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.229889, 37.663689, 38.668343>,  <39.879791, 37.418839, 39.192085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.229889, 37.663689, 38.668343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.458790, 37.354992, 38.779301>,  <40.596130, 37.169773, 38.845875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.458790, 37.354992, 38.779301>,  <40.229889, 37.663689, 38.668343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.458790, 37.354992, 38.779301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286380, -0.128906, -0.949405,
		0.768452, 0.622737, 0.147245,
		0.572249, -0.771740, 0.277398,
		40.630463, 37.123470, 38.862518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.853680, 37.798710, 38.392029>,  <40.229889, 37.663689, 38.668343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.853680, 37.798710, 38.392029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.879997, 37.404423, 38.454025>,  <40.895790, 37.167850, 38.491222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.879997, 37.404423, 38.454025>,  <40.853680, 37.798710, 38.392029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.879997, 37.404423, 38.454025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392113, -0.117293, -0.912409,
		0.917561, 0.120809, 0.378797,
		0.065797, -0.985722, 0.154994,
		40.899738, 37.108707, 38.500523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.592861, 37.575912, 38.273788>,  <40.853680, 37.798710, 38.392029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.592861, 37.575912, 38.273788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.352493, 37.258419, 38.236076>,  <41.208275, 37.067924, 38.213448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.352493, 37.258419, 38.236076>,  <41.592861, 37.575912, 38.273788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.352493, 37.258419, 38.236076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438085, -0.228390, -0.869436,
		0.668567, -0.563762, 0.484966,
		-0.600916, -0.793732, -0.094282,
		41.172218, 37.020298, 38.207790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.984001, 37.058449, 37.997181>,  <41.592861, 37.575912, 38.273788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.984001, 37.058449, 37.997181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.626106, 36.897423, 37.919838>,  <41.411369, 36.800808, 37.873432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.626106, 36.897423, 37.919838>,  <41.984001, 37.058449, 37.997181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.626106, 36.897423, 37.919838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350021, -0.363226, -0.863454,
		0.277368, -0.840241, 0.465899,
		-0.894736, -0.402569, -0.193354,
		41.357685, 36.776653, 37.861832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.171638, 36.423435, 37.700214>,  <41.984001, 37.058449, 37.997181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.171638, 36.423435, 37.700214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.798199, 36.525745, 37.599831>,  <41.574135, 36.587132, 37.539600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.798199, 36.525745, 37.599831>,  <42.171638, 36.423435, 37.700214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.798199, 36.525745, 37.599831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145111, -0.370494, -0.917429,
		-0.327627, -0.892926, 0.308778,
		-0.933597, 0.255768, -0.250957,
		41.518120, 36.602478, 37.524544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.935078, 35.894039, 37.228760>,  <42.171638, 36.423435, 37.700214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.935078, 35.894039, 37.228760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.659294, 36.177128, 37.167076>,  <41.493824, 36.346981, 37.130066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.659294, 36.177128, 37.167076>,  <41.935078, 35.894039, 37.228760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.659294, 36.177128, 37.167076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079555, -0.137623, -0.987285,
		-0.719943, -0.692960, 0.038583,
		-0.689458, 0.707720, -0.154209,
		41.452457, 36.389442, 37.120811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.536362, 35.609497, 36.773079>,  <41.935078, 35.894039, 37.228760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.536362, 35.609497, 36.773079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.459827, 36.001831, 36.758350>,  <41.413906, 36.237232, 36.749512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.459827, 36.001831, 36.758350>,  <41.536362, 35.609497, 36.773079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.459827, 36.001831, 36.758350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007102, -0.036132, -0.999322,
		-0.981498, -0.191471, -0.000052,
		-0.191339, 0.980833, -0.036823,
		41.402424, 36.296082, 36.747303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.092751, 35.069443, 36.861000>,  <41.536362, 35.609497, 36.773079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.092751, 35.069443, 36.861000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.426308, 35.073273, 37.081738>,  <42.626442, 35.075569, 37.214180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.426308, 35.073273, 37.081738>,  <42.092751, 35.069443, 36.861000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.426308, 35.073273, 37.081738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551717, 0.013041, -0.833929,
		-0.015178, 0.999869, 0.005594,
		0.833893, 0.009571, 0.551843,
		42.676476, 35.076145, 37.247292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.478031, 35.656876, 36.625305>,  <42.092751, 35.069443, 36.861000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.478031, 35.656876, 36.625305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.727737, 35.390556, 36.788773>,  <42.877560, 35.230762, 36.886852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.727737, 35.390556, 36.788773>,  <42.478031, 35.656876, 36.625305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.727737, 35.390556, 36.788773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563726, 0.021762, -0.825675,
		0.540841, 0.745813, 0.388914,
		0.624263, -0.665800, 0.408664,
		42.915016, 35.190815, 36.911373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.232597, 35.907669, 36.522385>,  <42.478031, 35.656876, 36.625305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.232597, 35.907669, 36.522385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.245407, 35.511536, 36.576359>,  <43.253094, 35.273853, 36.608746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.245407, 35.511536, 36.576359>,  <43.232597, 35.907669, 36.522385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.245407, 35.511536, 36.576359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574585, -0.092230, -0.813231,
		0.817818, 0.103573, 0.566079,
		0.032020, -0.990336, 0.134939,
		43.255013, 35.214436, 36.616840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.868187, 35.576790, 36.566509>,  <43.232597, 35.907669, 36.522385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.868187, 35.576790, 36.566509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.587666, 35.351730, 36.391418>,  <43.419353, 35.216694, 36.286362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.587666, 35.351730, 36.391418>,  <43.868187, 35.576790, 36.566509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.587666, 35.351730, 36.391418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526559, 0.005066, -0.850124,
		0.480537, -0.826682, 0.292714,
		-0.701299, -0.562647, -0.437731,
		43.377277, 35.182938, 36.260098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.170116, 34.992435, 36.179825>,  <43.868187, 35.576790, 36.566509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.170116, 34.992435, 36.179825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.803539, 35.025745, 36.023266>,  <43.583591, 35.045731, 35.929329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.803539, 35.025745, 36.023266>,  <44.170116, 34.992435, 36.179825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.803539, 35.025745, 36.023266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399268, 0.125062, -0.908265,
		-0.026688, -0.988648, -0.147863,
		-0.916446, 0.083277, -0.391397,
		43.528606, 35.050728, 35.905846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.242588, 34.804710, 35.488911>,  <44.170116, 34.992435, 36.179825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.242588, 34.804710, 35.488911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.939205, 35.059673, 35.543251>,  <43.757175, 35.212650, 35.575855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.939205, 35.059673, 35.543251>,  <44.242588, 34.804710, 35.488911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.939205, 35.059673, 35.543251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272846, 0.499854, -0.822010,
		-0.591860, -0.586394, -0.553032,
		-0.758457, 0.637407, 0.135848,
		43.711666, 35.250896, 35.584007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.957317, 34.784023, 34.755451>,  <44.242588, 34.804710, 35.488911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.957317, 34.784023, 34.755451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.861954, 35.096397, 34.986382>,  <43.804733, 35.283821, 35.124939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.861954, 35.096397, 34.986382>,  <43.957317, 34.784023, 34.755451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.861954, 35.096397, 34.986382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068973, 0.606578, -0.792026,
		-0.968712, -0.149009, -0.198479,
		-0.238412, 0.780935, 0.577322,
		43.790432, 35.330677, 35.159576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.547272, 34.381035, 34.403984>,  <43.957317, 34.784023, 34.755451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.547272, 34.381035, 34.403984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.876450, 34.257942, 34.595013>,  <45.073956, 34.184086, 34.709629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.876450, 34.257942, 34.595013>,  <44.547272, 34.381035, 34.403984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.876450, 34.257942, 34.595013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559246, -0.586842, 0.585542,
		0.100067, -0.748944, -0.655034,
		0.822940, -0.307731, 0.477568,
		45.123333, 34.165623, 34.738281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.613266, 33.734665, 34.325489>,  <44.547272, 34.381035, 34.403984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.613266, 33.734665, 34.325489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.792362, 33.826557, 34.671150>,  <44.899818, 33.881691, 34.878548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.792362, 33.826557, 34.671150>,  <44.613266, 33.734665, 34.325489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.792362, 33.826557, 34.671150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392404, -0.817916, 0.420753,
		0.803459, -0.527484, -0.276069,
		0.447742, 0.229727, 0.864149,
		44.926685, 33.895477, 34.930393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.931820, 33.130695, 34.612606>,  <44.613266, 33.734665, 34.325489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.931820, 33.130695, 34.612606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.866592, 33.359085, 34.934448>,  <44.827457, 33.496120, 35.127556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.866592, 33.359085, 34.934448>,  <44.931820, 33.130695, 34.612606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.866592, 33.359085, 34.934448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293243, -0.806717, 0.513045,
		0.942029, -0.152286, 0.298983,
		-0.163065, 0.570978, 0.804608,
		44.817673, 33.530380, 35.175831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.080803, 32.670761, 35.120193>,  <44.931820, 33.130695, 34.612606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.080803, 32.670761, 35.120193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.913704, 32.990253, 35.293407>,  <44.813446, 33.181950, 35.397335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.913704, 32.990253, 35.293407>,  <45.080803, 32.670761, 35.120193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.913704, 32.990253, 35.293407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316528, -0.574694, 0.754676,
		0.851644, 0.178197, 0.492898,
		-0.417747, 0.798731, 0.433031,
		44.788380, 33.229874, 35.423317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.376072, 32.754429, 35.861225>,  <45.080803, 32.670761, 35.120193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.376072, 32.754429, 35.861225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.017990, 32.931095, 35.837425>,  <44.803143, 33.037094, 35.823147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.017990, 32.931095, 35.837425>,  <45.376072, 32.754429, 35.861225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.017990, 32.931095, 35.837425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295464, -0.488249, 0.821166,
		0.333633, 0.752690, 0.567580,
		-0.895204, 0.441668, -0.059497,
		44.749428, 33.063595, 35.819576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.170231, 32.989853, 36.554958>,  <45.376072, 32.754429, 35.861225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.170231, 32.989853, 36.554958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.806412, 32.966793, 36.390327>,  <44.588120, 32.952957, 36.291550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.806412, 32.966793, 36.390327>,  <45.170231, 32.989853, 36.554958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.806412, 32.966793, 36.390327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323714, -0.522787, 0.788608,
		-0.260629, 0.850511, 0.456840,
		-0.909550, -0.057649, -0.411576,
		44.533546, 32.949497, 36.266853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.735355, 33.091923, 37.098904>,  <45.170231, 32.989853, 36.554958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.735355, 33.091923, 37.098904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.507015, 32.923985, 36.816666>,  <44.370010, 32.823223, 36.647324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.507015, 32.923985, 36.816666>,  <44.735355, 33.091923, 37.098904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.507015, 32.923985, 36.816666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579217, -0.403160, 0.708498,
		-0.581926, 0.813137, -0.013038,
		-0.570850, -0.419845, -0.705593,
		44.335762, 32.798031, 36.604988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.184959, 33.014076, 37.421989>,  <44.735355, 33.091923, 37.098904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.184959, 33.014076, 37.421989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.110664, 32.778004, 37.107746>,  <44.066090, 32.636360, 36.919201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.110664, 32.778004, 37.107746>,  <44.184959, 33.014076, 37.421989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.110664, 32.778004, 37.107746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556513, -0.595746, 0.579120,
		-0.809813, 0.544765, -0.217795,
		-0.185733, -0.590184, -0.785611,
		44.054943, 32.600948, 36.872063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.484360, 32.773239, 37.515186>,  <44.184959, 33.014076, 37.421989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.484360, 32.773239, 37.515186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.678062, 32.514431, 37.279606>,  <43.794285, 32.359146, 37.138260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.678062, 32.514431, 37.279606>,  <43.484360, 32.773239, 37.515186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.678062, 32.514431, 37.279606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267415, -0.750384, 0.604494,
		-0.833057, -0.135236, -0.536402,
		0.484257, -0.647020, -0.588948,
		43.823341, 32.320324, 37.102921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.071774, 32.172741, 37.640163>,  <43.484360, 32.773239, 37.515186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.071774, 32.172741, 37.640163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.405109, 32.028744, 37.472382>,  <43.605110, 31.942345, 37.371712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.405109, 32.028744, 37.472382>,  <43.071774, 32.172741, 37.640163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.405109, 32.028744, 37.472382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052059, -0.806585, 0.588821,
		-0.550298, -0.468854, -0.690904,
		0.833344, -0.359995, -0.419453,
		43.655113, 31.920746, 37.346546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.977543, 31.487692, 37.624340>,  <43.071774, 32.172741, 37.640163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.977543, 31.487692, 37.624340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.368908, 31.489834, 37.541710>,  <43.603729, 31.491119, 37.492134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.368908, 31.489834, 37.541710>,  <42.977543, 31.487692, 37.624340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.368908, 31.489834, 37.541710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134482, -0.775501, 0.616858,
		-0.156892, -0.631324, -0.759483,
		0.978417, 0.005357, -0.206571,
		43.662434, 31.491442, 37.479740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.235622, 30.752302, 37.290894>,  <42.977543, 31.487692, 37.624340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.235622, 30.752302, 37.290894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.539577, 30.922382, 37.487576>,  <43.721951, 31.024431, 37.605583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.539577, 30.922382, 37.487576>,  <43.235622, 30.752302, 37.290894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.539577, 30.922382, 37.487576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191002, -0.869062, 0.456344,
		0.621359, -0.252854, -0.741605,
		0.759889, 0.425201, 0.491703,
		43.767544, 31.049942, 37.635086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.709332, 30.221188, 37.226665>,  <43.235622, 30.752302, 37.290894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.709332, 30.221188, 37.226665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.825310, 30.451599, 37.532379>,  <43.894897, 30.589846, 37.715805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.825310, 30.451599, 37.532379>,  <43.709332, 30.221188, 37.226665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.825310, 30.451599, 37.532379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297612, -0.813260, 0.500036,
		0.909592, 0.082475, -0.407235,
		0.289947, 0.576027, 0.764280,
		43.912292, 30.624407, 37.761662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.233349, 29.910494, 37.399307>,  <43.709332, 30.221188, 37.226665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.233349, 29.910494, 37.399307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.121338, 30.114275, 37.724770>,  <44.054131, 30.236544, 37.920048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.121338, 30.114275, 37.724770>,  <44.233349, 29.910494, 37.399307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.121338, 30.114275, 37.724770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348874, -0.735615, 0.580653,
		0.894355, 0.446465, 0.028261,
		-0.280030, 0.509450, 0.813660,
		44.037331, 30.267111, 37.968868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.779194, 29.872513, 37.903828>,  <44.233349, 29.910494, 37.399307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.779194, 29.872513, 37.903828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.466267, 29.999619, 38.118118>,  <44.278511, 30.075882, 38.246693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.466267, 29.999619, 38.118118>,  <44.779194, 29.872513, 37.903828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.466267, 29.999619, 38.118118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320576, -0.532021, 0.783699,
		0.534050, 0.784844, 0.314341,
		-0.782318, 0.317765, 0.535728,
		44.231571, 30.094948, 38.278835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.105412, 30.091894, 38.576050>,  <44.779194, 29.872513, 37.903828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.105412, 30.091894, 38.576050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.719078, 30.003468, 38.630154>,  <44.487278, 29.950411, 38.662617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.719078, 30.003468, 38.630154>,  <45.105412, 30.091894, 38.576050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.719078, 30.003468, 38.630154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247027, -0.627451, 0.738433,
		-0.078377, 0.746615, 0.660623,
		-0.965834, -0.221068, 0.135257,
		44.429329, 29.937147, 38.670731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.938324, 30.177143, 39.269253>,  <45.105412, 30.091894, 38.576050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.938324, 30.177143, 39.269253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.656902, 29.934113, 39.121815>,  <44.488049, 29.788294, 39.033352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.656902, 29.934113, 39.121815>,  <44.938324, 30.177143, 39.269253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.656902, 29.934113, 39.121815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064552, -0.571177, 0.818285,
		-0.707704, 0.551913, 0.441074,
		-0.703554, -0.607576, -0.368597,
		44.445835, 29.751841, 39.011234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.571518, 30.015875, 39.883366>,  <44.938324, 30.177143, 39.269253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.571518, 30.015875, 39.883366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.450684, 29.741388, 39.618683>,  <44.378181, 29.576696, 39.459873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.450684, 29.741388, 39.618683>,  <44.571518, 30.015875, 39.883366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.450684, 29.741388, 39.618683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176770, -0.641771, 0.746245,
		-0.936746, 0.342403, 0.072571,
		-0.302090, -0.686214, -0.661704,
		44.360058, 29.535524, 39.420170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.890591, 29.665092, 40.116077>,  <44.571518, 30.015875, 39.883366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.890591, 29.665092, 40.116077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.057732, 29.417055, 39.850483>,  <44.158016, 29.268232, 39.691124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.057732, 29.417055, 39.850483>,  <43.890591, 29.665092, 40.116077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.057732, 29.417055, 39.850483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007223, -0.733095, 0.680087,
		-0.908487, -0.279379, -0.310803,
		0.417850, -0.620095, -0.663990,
		44.183086, 29.231026, 39.651287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.328957, 29.141916, 40.099747>,  <43.890591, 29.665092, 40.116077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.328957, 29.141916, 40.099747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.657818, 28.966490, 39.954575>,  <43.855137, 28.861235, 39.867470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.657818, 28.966490, 39.954575>,  <43.328957, 29.141916, 40.099747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.657818, 28.966490, 39.954575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198417, -0.818336, 0.539405,
		-0.533562, -0.371464, -0.759819,
		0.822157, -0.438567, -0.362929,
		43.904465, 28.834919, 39.845695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.173077, 28.521473, 40.041927>,  <43.328957, 29.141916, 40.099747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.173077, 28.521473, 40.041927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.569275, 28.476711, 40.009945>,  <43.806995, 28.449854, 39.990757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.569275, 28.476711, 40.009945>,  <43.173077, 28.521473, 40.041927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.569275, 28.476711, 40.009945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055209, -0.855968, 0.514073,
		-0.125967, -0.504773, -0.854012,
		0.990497, -0.111905, -0.079956,
		43.866425, 28.443140, 39.985958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.412968, 27.886700, 39.793278>,  <43.173077, 28.521473, 40.041927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.412968, 27.886700, 39.793278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.686035, 27.987186, 40.067753>,  <43.849876, 28.047478, 40.232437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.686035, 27.987186, 40.067753>,  <43.412968, 27.886700, 39.793278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.686035, 27.987186, 40.067753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071774, -0.911456, 0.405088,
		0.727198, -0.325790, -0.604188,
		0.682665, 0.251215, 0.686192,
		43.890835, 28.062551, 40.273609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.001930, 27.293848, 39.851196>,  <43.412968, 27.886700, 39.793278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.001930, 27.293848, 39.851196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.976624, 27.526508, 40.175587>,  <43.961441, 27.666105, 40.370220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.976624, 27.526508, 40.175587>,  <44.001930, 27.293848, 39.851196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.976624, 27.526508, 40.175587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506871, -0.718721, 0.475944,
		0.859697, -0.380948, 0.340293,
		-0.063266, 0.581652, 0.810974,
		43.957645, 27.701004, 40.418880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.234589, 26.980698, 40.533821>,  <44.001930, 27.293848, 39.851196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.234589, 26.980698, 40.533821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.891613, 27.186022, 40.519299>,  <43.685829, 27.309216, 40.510586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.891613, 27.186022, 40.519299>,  <44.234589, 26.980698, 40.533821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.891613, 27.186022, 40.519299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483739, -0.779957, 0.397068,
		0.175505, 0.358021, 0.917071,
		-0.857435, 0.513310, -0.036302,
		43.634384, 27.340015, 40.508408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.858456, 26.734985, 40.756496>,  <44.234589, 26.980698, 40.533821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.858456, 26.734985, 40.756496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.886395, 26.873646, 40.382339>,  <44.903160, 26.956842, 40.157845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.886395, 26.873646, 40.382339>,  <44.858456, 26.734985, 40.756496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.886395, 26.873646, 40.382339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965205, 0.213381, 0.151154,
		0.251992, -0.913401, -0.319686,
		0.069849, 0.346652, -0.935390,
		44.907349, 26.977642, 40.101723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.204689, 27.124292, 41.260456>,  <44.858456, 26.734985, 40.756496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.204689, 27.124292, 41.260456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.844959, 27.271856, 41.354366>,  <44.629120, 27.360395, 41.410713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.844959, 27.271856, 41.354366>,  <45.204689, 27.124292, 41.260456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.844959, 27.271856, 41.354366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193582, -0.145545, 0.970228,
		0.392097, 0.917999, 0.059478,
		-0.899325, 0.368909, 0.234776,
		44.575161, 27.382528, 41.424801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.385555, 27.377529, 41.893833>,  <45.204689, 27.124292, 41.260456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.385555, 27.377529, 41.893833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.986324, 27.386127, 41.870590>,  <44.746784, 27.391287, 41.856644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.986324, 27.386127, 41.870590>,  <45.385555, 27.377529, 41.893833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.986324, 27.386127, 41.870590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059357, -0.063200, 0.996234,
		0.017740, 0.997769, 0.064354,
		-0.998079, 0.021494, -0.058103,
		44.686901, 27.392576, 41.853161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.895878, 27.050806, 42.419342>,  <45.385555, 27.377529, 41.893833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.895878, 27.050806, 42.419342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.181744, 27.166126, 42.674255>,  <46.353264, 27.235319, 42.827206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.181744, 27.166126, 42.674255>,  <45.895878, 27.050806, 42.419342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.181744, 27.166126, 42.674255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254640, 0.741349, -0.620935,
		-0.651468, 0.606040, 0.456404,
		0.714666, 0.288301, 0.637287,
		46.396145, 27.252617, 42.865440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.992813, 27.800098, 42.470730>,  <45.895878, 27.050806, 42.419342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.992813, 27.800098, 42.470730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.351036, 27.661938, 42.582924>,  <46.565971, 27.579041, 42.650238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.351036, 27.661938, 42.582924>,  <45.992813, 27.800098, 42.470730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.351036, 27.661938, 42.582924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438248, 0.575807, -0.690206,
		0.076896, 0.741041, 0.667042,
		0.895559, -0.345404, 0.280483,
		46.619705, 27.558317, 42.667068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.499077, 28.325237, 42.628094>,  <45.992813, 27.800098, 42.470730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.499077, 28.325237, 42.628094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.744461, 28.021473, 42.541416>,  <46.891693, 27.839214, 42.489410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.744461, 28.021473, 42.541416>,  <46.499077, 28.325237, 42.628094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.744461, 28.021473, 42.541416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406371, 0.538834, -0.737916,
		0.677145, 0.364626, 0.639158,
		0.613463, -0.759411, -0.216696,
		46.928501, 27.793650, 42.476406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.128757, 28.357866, 42.878880>,  <46.499077, 28.325237, 42.628094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.128757, 28.357866, 42.878880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.086285, 28.184755, 42.520790>,  <47.060802, 28.080889, 42.305935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.086285, 28.184755, 42.520790>,  <47.128757, 28.357866, 42.878880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.086285, 28.184755, 42.520790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226439, 0.866135, -0.445573,
		0.968220, -0.250026, 0.006029,
		-0.106183, -0.432778, -0.895225,
		47.054428, 28.054922, 42.252224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.532963, 28.679106, 42.329071>,  <47.128757, 28.357866, 42.878880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.532963, 28.679106, 42.329071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.254383, 28.493311, 42.110271>,  <47.087234, 28.381834, 41.978992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.254383, 28.493311, 42.110271>,  <47.532963, 28.679106, 42.329071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.254383, 28.493311, 42.110271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085124, 0.703404, -0.705675,
		0.712536, -0.538032, -0.450349,
		-0.696453, -0.464484, -0.547000,
		47.045448, 28.353966, 41.946171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.798740, 28.508530, 41.690277>,  <47.532963, 28.679106, 42.329071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.798740, 28.508530, 41.690277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.404110, 28.536486, 41.631233>,  <47.167332, 28.553259, 41.595806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.404110, 28.536486, 41.631233>,  <47.798740, 28.508530, 41.690277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.404110, 28.536486, 41.631233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152059, 0.722817, -0.674102,
		0.059580, -0.687496, -0.723740,
		-0.986574, 0.069888, -0.147606,
		47.108139, 28.557451, 41.586952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.626190, 28.548140, 40.973175>,  <47.798740, 28.508530, 41.690277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.626190, 28.548140, 40.973175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.315670, 28.708845, 41.167473>,  <47.129360, 28.805269, 41.284050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.315670, 28.708845, 41.167473>,  <47.626190, 28.548140, 40.973175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.315670, 28.708845, 41.167473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069811, 0.711042, -0.699676,
		-0.626490, -0.577067, -0.523932,
		-0.776297, 0.401763, 0.485746,
		47.082779, 28.829374, 41.313198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.401020, 29.058409, 40.469791>,  <47.626190, 28.548140, 40.973175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.401020, 29.058409, 40.469791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.163372, 29.129326, 40.783630>,  <47.020782, 29.171875, 40.971931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.163372, 29.129326, 40.783630>,  <47.401020, 29.058409, 40.469791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.163372, 29.129326, 40.783630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329423, 0.836229, -0.438408,
		-0.733827, -0.518931, -0.438416,
		-0.594120, 0.177291, 0.784595,
		46.985138, 29.182512, 41.019009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.643871, 29.149855, 40.222069>,  <47.401020, 29.058409, 40.469791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.643871, 29.149855, 40.222069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.710644, 29.359745, 40.555965>,  <46.750706, 29.485680, 40.756306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.710644, 29.359745, 40.555965>,  <46.643871, 29.149855, 40.222069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.710644, 29.359745, 40.555965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450737, 0.793591, -0.408716,
		-0.876909, -0.308023, 0.368989,
		0.166932, 0.524724, 0.834744,
		46.760723, 29.517162, 40.806389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.023151, 29.404364, 40.238411>,  <46.643871, 29.149855, 40.222069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.023151, 29.404364, 40.238411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.280739, 29.598951, 40.474598>,  <46.435291, 29.715704, 40.616310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.280739, 29.598951, 40.474598>,  <46.023151, 29.404364, 40.238411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.280739, 29.598951, 40.474598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306571, 0.871211, -0.383413,
		-0.700943, 0.065884, 0.710168,
		0.643967, 0.486467, 0.590471,
		46.473930, 29.744892, 40.651741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.663845, 30.001925, 40.437023>,  <46.023151, 29.404364, 40.238411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.663845, 30.001925, 40.437023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.030510, 30.141781, 40.514469>,  <46.250507, 30.225695, 40.560936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.030510, 30.141781, 40.514469>,  <45.663845, 30.001925, 40.437023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.030510, 30.141781, 40.514469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208317, 0.831408, -0.515135,
		-0.341089, 0.431869, 0.834954,
		0.916658, 0.349642, 0.193619,
		46.305508, 30.246674, 40.572556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.641487, 30.796707, 40.638500>,  <45.663845, 30.001925, 40.437023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.641487, 30.796707, 40.638500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.015312, 30.732517, 40.511478>,  <46.239609, 30.694004, 40.435265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.015312, 30.732517, 40.511478>,  <45.641487, 30.796707, 40.638500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.015312, 30.732517, 40.511478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028364, 0.856071, -0.516080,
		0.354668, 0.491316, 0.795500,
		0.934562, -0.160473, -0.317556,
		46.295681, 30.684376, 40.416210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.939568, 31.450459, 40.574486>,  <45.641487, 30.796707, 40.638500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.939568, 31.450459, 40.574486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.175652, 31.213390, 40.355255>,  <46.317303, 31.071150, 40.223717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.175652, 31.213390, 40.355255>,  <45.939568, 31.450459, 40.574486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.175652, 31.213390, 40.355255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088956, 0.722561, -0.685560,
		0.802331, 0.355873, 0.479187,
		0.590214, -0.592672, -0.548076,
		46.352715, 31.035589, 40.190834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.666969, 31.693398, 40.559299>,  <45.939568, 31.450459, 40.574486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.666969, 31.693398, 40.559299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.622925, 31.474360, 40.227512>,  <46.596500, 31.342937, 40.028439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.622925, 31.474360, 40.227512>,  <46.666969, 31.693398, 40.559299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.622925, 31.474360, 40.227512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250575, 0.792293, -0.556313,
		0.961815, -0.269099, 0.049975,
		-0.110109, -0.547593, -0.829469,
		46.589893, 31.310081, 39.978672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.080284, 32.010696, 40.127460>,  <46.666969, 31.693398, 40.559299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.080284, 32.010696, 40.127460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.919296, 31.770426, 39.851139>,  <46.822704, 31.626263, 39.685349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.919296, 31.770426, 39.851139>,  <47.080284, 32.010696, 40.127460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.919296, 31.770426, 39.851139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087204, 0.726026, -0.682115,
		0.911271, -0.334770, -0.239821,
		-0.402468, -0.600679, -0.690800,
		46.798557, 31.590221, 39.643898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.524113, 31.945477, 39.559376>,  <47.080284, 32.010696, 40.127460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.524113, 31.945477, 39.559376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.164124, 31.847338, 39.415230>,  <46.948132, 31.788454, 39.328743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.164124, 31.847338, 39.415230>,  <47.524113, 31.945477, 39.559376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.164124, 31.847338, 39.415230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126451, 0.644166, -0.754361,
		0.417213, -0.724469, -0.548705,
		-0.899968, -0.245345, -0.360364,
		46.894135, 31.773733, 39.307121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.574532, 31.814594, 38.752705>,  <47.524113, 31.945477, 39.559376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.574532, 31.814594, 38.752705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.204353, 31.928022, 38.853218>,  <46.982246, 31.996080, 38.913528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.204353, 31.928022, 38.853218>,  <47.574532, 31.814594, 38.752705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.204353, 31.928022, 38.853218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041656, 0.735347, -0.676409,
		-0.376594, -0.615509, -0.692333,
		-0.925441, 0.283571, 0.251288,
		46.926720, 32.013092, 38.928604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.188370, 31.795877, 38.118275>,  <47.574532, 31.814594, 38.752705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.188370, 31.795877, 38.118275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.969498, 32.018551, 38.368298>,  <46.838173, 32.152153, 38.518311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.969498, 32.018551, 38.368298>,  <47.188370, 31.795877, 38.118275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.969498, 32.018551, 38.368298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047817, 0.724761, -0.687339,
		-0.835646, -0.405988, -0.369958,
		-0.547182, 0.556682, 0.625057,
		46.805344, 32.185555, 38.555817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.655342, 32.035946, 37.721035>,  <47.188370, 31.795877, 38.118275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.655342, 32.035946, 37.721035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.634850, 32.271980, 38.043324>,  <46.622555, 32.413601, 38.236694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.634850, 32.271980, 38.043324>,  <46.655342, 32.035946, 37.721035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.634850, 32.271980, 38.043324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177721, 0.788513, -0.588781,
		-0.982747, -0.173355, 0.064475,
		-0.051229, 0.590081, 0.805717,
		46.619480, 32.449005, 38.285038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.031162, 32.437881, 37.700245>,  <46.655342, 32.035946, 37.721035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.031162, 32.437881, 37.700245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.304569, 32.628193, 37.921673>,  <46.468613, 32.742378, 38.054527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.304569, 32.628193, 37.921673>,  <46.031162, 32.437881, 37.700245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.304569, 32.628193, 37.921673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015855, 0.767880, -0.640397,
		-0.729758, 0.428948, 0.532406,
		0.683521, 0.475776, 0.553566,
		46.509624, 32.770927, 38.087742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.788754, 33.126030, 37.722366>,  <46.031162, 32.437881, 37.700245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.788754, 33.126030, 37.722366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.169170, 33.161068, 37.840923>,  <46.397419, 33.182091, 37.912056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.169170, 33.161068, 37.840923>,  <45.788754, 33.126030, 37.722366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.169170, 33.161068, 37.840923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121007, 0.776906, -0.617879,
		-0.284387, 0.623495, 0.728271,
		0.951042, 0.087591, 0.296389,
		46.454483, 33.187344, 37.929840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.915161, 33.824776, 37.875149>,  <45.788754, 33.126030, 37.722366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.915161, 33.824776, 37.875149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.289955, 33.699394, 37.813431>,  <46.514832, 33.624165, 37.776402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.289955, 33.699394, 37.813431>,  <45.915161, 33.824776, 37.875149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.289955, 33.699394, 37.813431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119463, 0.702476, -0.701610,
		0.328309, 0.638965, 0.695656,
		0.936986, -0.313449, -0.154296,
		46.571053, 33.605358, 37.767143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.245327, 34.374264, 37.851643>,  <45.915161, 33.824776, 37.875149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.245327, 34.374264, 37.851643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.488220, 34.131447, 37.646599>,  <46.633957, 33.985756, 37.523571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.488220, 34.131447, 37.646599>,  <46.245327, 34.374264, 37.851643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.488220, 34.131447, 37.646599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142418, 0.717890, -0.681433,
		0.781659, 0.340780, 0.522377,
		0.607228, -0.607044, -0.512612,
		46.670387, 33.949333, 37.492817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.006336, 34.643921, 37.899445>,  <46.245327, 34.374264, 37.851643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.006336, 34.643921, 37.899445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.916103, 34.420155, 37.580402>,  <46.861965, 34.285896, 37.388977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.916103, 34.420155, 37.580402>,  <47.006336, 34.643921, 37.899445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.916103, 34.420155, 37.580402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206315, 0.772704, -0.600302,
		0.952128, -0.299974, -0.058892,
		-0.225581, -0.559414, -0.797602,
		46.848431, 34.252331, 37.341122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.404572, 34.952892, 37.435146>,  <47.006336, 34.643921, 37.899445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.404572, 34.952892, 37.435146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.145226, 34.739529, 37.217854>,  <46.989616, 34.611511, 37.087479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.145226, 34.739529, 37.217854>,  <47.404572, 34.952892, 37.435146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.145226, 34.739529, 37.217854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088928, 0.655585, -0.749867,
		0.756119, -0.534495, -0.377622,
		-0.648363, -0.533408, -0.543232,
		46.950718, 34.579506, 37.054886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.629070, 34.711323, 36.703156>,  <47.404572, 34.952892, 37.435146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.629070, 34.711323, 36.703156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.230618, 34.744938, 36.713459>,  <46.991547, 34.765106, 36.719643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.230618, 34.744938, 36.713459>,  <47.629070, 34.711323, 36.703156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.230618, 34.744938, 36.713459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045289, 0.741923, -0.668953,
		-0.075330, -0.665197, -0.742858,
		-0.996130, 0.084036, 0.025763,
		46.931778, 34.770149, 36.721188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.661446, 35.156628, 36.281582>,  <47.629070, 34.711323, 36.703156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.661446, 35.156628, 36.281582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.269115, 35.079777, 36.268456>,  <47.033718, 35.033665, 36.260578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.269115, 35.079777, 36.268456>,  <47.661446, 35.156628, 36.281582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.269115, 35.079777, 36.268456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068902, 0.499269, -0.863703,
		0.182325, -0.844877, -0.502932,
		-0.980821, -0.192128, -0.032815,
		46.974869, 35.022137, 36.258610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.440475, 34.856392, 35.686012>,  <47.661446, 35.156628, 36.281582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.440475, 34.856392, 35.686012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.133194, 35.077869, 35.814560>,  <46.948826, 35.210758, 35.891689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.133194, 35.077869, 35.814560>,  <47.440475, 34.856392, 35.686012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.133194, 35.077869, 35.814560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019065, 0.521546, -0.853010,
		-0.639917, -0.649162, -0.411212,
		-0.768207, 0.553696, 0.321370,
		46.902733, 35.243977, 35.910973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.811756, 35.030346, 35.043465>,  <47.440475, 34.856392, 35.686012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.811756, 35.030346, 35.043465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.700417, 35.394321, 35.166447>,  <47.633614, 35.612705, 35.240238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.700417, 35.394321, 35.166447>,  <47.811756, 35.030346, 35.043465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.700417, 35.394321, 35.166447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265830, -0.380589, 0.885712,
		0.922960, 0.164807, 0.347827,
		-0.278351, 0.909940, 0.307458,
		47.616913, 35.667305, 35.258682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.922821, 43.702724, 42.560970> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.561996, 43.613121, 42.708542>,  <38.345501, 43.559361, 42.797085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.561996, 43.613121, 42.708542>,  <38.922821, 43.702724, 42.560970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.561996, 43.613121, 42.708542> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260480, -0.399016, -0.879168,
		0.344148, -0.889161, 0.301587,
		-0.902060, -0.224007, 0.368929,
		38.291378, 43.545918, 42.819221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.829632, 42.954479, 42.490585>,  <38.922821, 43.702724, 42.560970>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.829632, 42.954479, 42.490585> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.470547, 43.130714, 42.490345>,  <38.255096, 43.236454, 42.490200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.470547, 43.130714, 42.490345>,  <38.829632, 42.954479, 42.490585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.470547, 43.130714, 42.490345> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197022, -0.402654, -0.893897,
		-0.394064, -0.802350, 0.448272,
		-0.897717, 0.440572, -0.000591,
		38.201233, 43.262890, 42.490166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.450317, 42.398212, 42.351547>,  <38.829632, 42.954479, 42.490585>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.450317, 42.398212, 42.351547> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.213127, 42.707172, 42.260529>,  <38.070812, 42.892548, 42.205917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.213127, 42.707172, 42.260529>,  <38.450317, 42.398212, 42.351547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.213127, 42.707172, 42.260529> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280607, -0.463096, -0.840715,
		-0.754743, -0.434674, 0.491346,
		-0.592977, 0.772399, -0.227546,
		38.035233, 42.938892, 42.192265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.899681, 42.104546, 42.195530>,  <38.450317, 42.398212, 42.351547>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.899681, 42.104546, 42.195530> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.825874, 42.462204, 42.032333>,  <37.781590, 42.676800, 41.934418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.825874, 42.462204, 42.032333>,  <37.899681, 42.104546, 42.195530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.825874, 42.462204, 42.032333> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493762, -0.443260, -0.748144,
		-0.849797, 0.063407, 0.523283,
		-0.184513, 0.894148, -0.407989,
		37.770519, 42.730450, 41.909935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.209423, 42.047760, 41.963066>,  <37.899681, 42.104546, 42.195530>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.209423, 42.047760, 41.963066> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.368263, 42.350311, 41.755142>,  <37.463570, 42.531841, 41.630386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.368263, 42.350311, 41.755142>,  <37.209423, 42.047760, 41.963066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.368263, 42.350311, 41.755142> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419921, -0.353882, -0.835724,
		-0.816072, 0.550150, 0.177089,
		0.397105, 0.756374, -0.519813,
		37.487396, 42.577225, 41.599197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.615158, 42.329517, 41.618095>,  <37.209423, 42.047760, 41.963066>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.615158, 42.329517, 41.618095> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.948326, 42.439842, 41.426193>,  <37.148228, 42.506039, 41.311050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.948326, 42.439842, 41.426193>,  <36.615158, 42.329517, 41.618095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.948326, 42.439842, 41.426193> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260736, -0.569089, -0.779842,
		-0.488119, 0.774637, -0.402090,
		0.832920, 0.275816, -0.479759,
		37.198204, 42.522587, 41.282265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.425583, 42.726372, 40.972004>,  <36.615158, 42.329517, 41.618095>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.425583, 42.726372, 40.972004> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.795593, 42.577194, 40.943031>,  <37.017597, 42.487686, 40.925648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.795593, 42.577194, 40.943031>,  <36.425583, 42.726372, 40.972004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.795593, 42.577194, 40.943031> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244242, -0.437746, -0.865288,
		0.290998, 0.818102, -0.496014,
		0.925022, -0.372944, -0.072431,
		37.073101, 42.465309, 40.921303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.611603, 42.849800, 40.256657>,  <36.425583, 42.726372, 40.972004>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.611603, 42.849800, 40.256657> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.859558, 42.561165, 40.379974>,  <37.008331, 42.387985, 40.453964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.859558, 42.561165, 40.379974>,  <36.611603, 42.849800, 40.256657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.859558, 42.561165, 40.379974> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110763, -0.469419, -0.876001,
		0.776833, 0.508876, -0.370913,
		0.619889, -0.721589, 0.308296,
		37.045525, 42.344688, 40.472462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.853600, 42.543499, 39.626598>,  <36.611603, 42.849800, 40.256657>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.853600, 42.543499, 39.626598> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.938343, 42.263805, 39.899708>,  <36.989189, 42.095989, 40.063576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.938343, 42.263805, 39.899708>,  <36.853600, 42.543499, 39.626598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.938343, 42.263805, 39.899708> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072687, -0.707973, -0.702489,
		0.974594, 0.099198, -0.200815,
		0.211857, -0.699238, 0.682776,
		37.001900, 42.054035, 40.104542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.392342, 42.080433, 39.309509>,  <36.853600, 42.543499, 39.626598>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.392342, 42.080433, 39.309509> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.227757, 41.864101, 39.602959>,  <37.129005, 41.734303, 39.779030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.227757, 41.864101, 39.602959>,  <37.392342, 42.080433, 39.309509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.227757, 41.864101, 39.602959> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097413, -0.774213, -0.625384,
		0.906206, -0.328787, 0.265876,
		-0.411463, -0.540826, 0.733624,
		37.104317, 41.701855, 39.823048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.702118, 41.500778, 39.133087>,  <37.392342, 42.080433, 39.309509>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.702118, 41.500778, 39.133087> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.432659, 41.381981, 39.403790>,  <37.270985, 41.310703, 39.566212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.432659, 41.381981, 39.403790>,  <37.702118, 41.500778, 39.133087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.432659, 41.381981, 39.403790> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163966, -0.832826, -0.528693,
		0.720635, -0.467117, 0.512334,
		-0.673647, -0.296989, 0.676755,
		37.230564, 41.292885, 39.606815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.857475, 40.798473, 39.449326>,  <37.702118, 41.500778, 39.133087>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.857475, 40.798473, 39.449326> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.462143, 40.851715, 39.478943>,  <37.224945, 40.883659, 39.496712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.462143, 40.851715, 39.478943>,  <37.857475, 40.798473, 39.449326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.462143, 40.851715, 39.478943> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149594, -0.756771, -0.636332,
		-0.028667, -0.639984, 0.767853,
		-0.988332, 0.133108, 0.074043,
		37.165642, 40.891647, 39.501156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.688660, 40.110424, 39.445168>,  <37.857475, 40.798473, 39.449326>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.688660, 40.110424, 39.445168> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.360588, 40.320789, 39.355083>,  <37.163746, 40.447010, 39.301033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.360588, 40.320789, 39.355083>,  <37.688660, 40.110424, 39.445168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.360588, 40.320789, 39.355083> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175777, -0.606263, -0.775595,
		-0.544435, -0.596540, 0.589688,
		-0.820179, 0.525914, -0.225213,
		37.114536, 40.478565, 39.287518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.123917, 39.621506, 39.330772>,  <37.688660, 40.110424, 39.445168>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.123917, 39.621506, 39.330772> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.005135, 39.957859, 39.149780>,  <36.933865, 40.159672, 39.041187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.005135, 39.957859, 39.149780>,  <37.123917, 39.621506, 39.330772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.005135, 39.957859, 39.149780> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349225, -0.536664, -0.768136,
		-0.888739, -0.070088, 0.453024,
		-0.296959, 0.840880, -0.452478,
		36.916046, 40.210121, 39.014038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.509869, 39.388096, 39.108379>,  <37.123917, 39.621506, 39.330772>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.509869, 39.388096, 39.108379> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.595459, 39.719776, 38.901829>,  <36.646812, 39.918785, 38.777897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.595459, 39.719776, 38.901829>,  <36.509869, 39.388096, 39.108379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.595459, 39.719776, 38.901829> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340124, -0.432297, -0.835126,
		-0.915712, 0.354333, 0.189527,
		0.213981, 0.829197, -0.516377,
		36.659653, 39.968536, 38.746914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.019711, 39.313229, 38.561768>,  <36.509869, 39.388096, 39.108379>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.019711, 39.313229, 38.561768> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.272636, 39.591949, 38.426331>,  <36.424393, 39.759182, 38.345070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.272636, 39.591949, 38.426331>,  <36.019711, 39.313229, 38.561768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.272636, 39.591949, 38.426331> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054360, -0.396076, -0.916607,
		-0.772799, 0.597993, -0.212568,
		0.632318, 0.696798, -0.338594,
		36.462334, 39.800987, 38.324753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.738972, 39.602531, 37.876888>,  <36.019711, 39.313229, 38.561768>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.738972, 39.602531, 37.876888> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.130714, 39.683392, 37.877720>,  <36.365761, 39.731907, 37.878220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.130714, 39.683392, 37.877720>,  <35.738972, 39.602531, 37.876888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.130714, 39.683392, 37.877720> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113188, -0.539791, -0.834155,
		-0.167501, 0.817167, -0.551526,
		0.979353, 0.202148, 0.002078,
		36.424519, 39.744038, 37.878342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.785416, 39.722775, 37.222809>,  <35.738972, 39.602531, 37.876888>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.785416, 39.722775, 37.222809> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.158493, 39.666466, 37.355640>,  <36.382339, 39.632683, 37.435337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.158493, 39.666466, 37.355640>,  <35.785416, 39.722775, 37.222809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.158493, 39.666466, 37.355640> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220933, -0.504777, -0.834499,
		0.285096, 0.851695, -0.439700,
		0.932689, -0.140768, 0.332077,
		36.438301, 39.624237, 37.455265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.201031, 39.906555, 36.654785>,  <35.785416, 39.722775, 37.222809>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.201031, 39.906555, 36.654785> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.408039, 39.664234, 36.896503>,  <36.532246, 39.518841, 37.041534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.408039, 39.664234, 36.896503>,  <36.201031, 39.906555, 36.654785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.408039, 39.664234, 36.896503> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207769, -0.596122, -0.775545,
		0.830061, 0.526917, -0.182641,
		0.517524, -0.605803, 0.604294,
		36.563297, 39.482494, 37.077793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.878010, 39.958878, 36.329895>,  <36.201031, 39.906555, 36.654785>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.878010, 39.958878, 36.329895> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.891541, 39.624741, 36.549374>,  <36.899658, 39.424259, 36.681061>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.891541, 39.624741, 36.549374>,  <36.878010, 39.958878, 36.329895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.891541, 39.624741, 36.549374> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341548, -0.506294, -0.791840,
		0.939256, 0.214189, 0.268183,
		0.033824, -0.835338, 0.548696,
		36.901688, 39.374138, 36.713982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.582523, 39.624783, 36.153194>,  <36.878010, 39.958878, 36.329895>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.582523, 39.624783, 36.153194> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.354668, 39.340946, 36.319080>,  <37.217953, 39.170643, 36.418613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.354668, 39.340946, 36.319080>,  <37.582523, 39.624783, 36.153194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.354668, 39.340946, 36.319080> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363847, -0.670167, -0.646909,
		0.736971, -0.217612, 0.639937,
		-0.569639, -0.709593, 0.414716,
		37.183777, 39.128067, 36.443497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.009869, 39.129383, 36.252789>,  <37.582523, 39.624783, 36.153194>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.009869, 39.129383, 36.252789> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.647415, 38.961246, 36.233868>,  <37.429943, 38.860363, 36.222515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.647415, 38.961246, 36.233868>,  <38.009869, 39.129383, 36.252789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.647415, 38.961246, 36.233868> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340585, -0.658694, -0.670913,
		0.250857, -0.624045, 0.740026,
		-0.906130, -0.420345, -0.047302,
		37.375576, 38.835144, 36.219677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.331245, 39.015190, 35.635639>,  <38.009869, 39.129383, 36.252789>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.331245, 39.015190, 35.635639> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.711563, 38.916210, 35.561062>,  <38.939754, 38.856823, 35.516315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.711563, 38.916210, 35.561062>,  <38.331245, 39.015190, 35.635639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.711563, 38.916210, 35.561062> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101877, -0.318613, 0.942394,
		-0.292593, -0.915018, -0.277727,
		0.950795, -0.247443, -0.186443,
		38.996799, 38.841976, 35.505127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.445366, 38.353874, 35.953072>,  <38.331245, 39.015190, 35.635639>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.445366, 38.353874, 35.953072> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.808807, 38.515873, 35.912262>,  <39.026875, 38.613071, 35.887775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.808807, 38.515873, 35.912262>,  <38.445366, 38.353874, 35.953072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.808807, 38.515873, 35.912262> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235138, -0.294168, 0.926377,
		0.345170, -0.865703, -0.362513,
		0.908608, 0.404998, -0.102022,
		39.081390, 38.637371, 35.881657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.832245, 37.958290, 36.405499>,  <38.445366, 38.353874, 35.953072>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.832245, 37.958290, 36.405499> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.061707, 38.278629, 36.336723>,  <39.199383, 38.470833, 36.295456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.061707, 38.278629, 36.336723>,  <38.832245, 37.958290, 36.405499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.061707, 38.278629, 36.336723> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318345, -0.024571, 0.947657,
		0.754703, -0.598364, -0.269042,
		0.573654, 0.800848, -0.171942,
		39.233803, 38.518883, 36.285141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.546375, 37.831398, 36.901180>,  <38.832245, 37.958290, 36.405499>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.546375, 37.831398, 36.901180> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.523403, 38.218021, 36.801212>,  <39.509621, 38.449997, 36.741234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.523403, 38.218021, 36.801212>,  <39.546375, 37.831398, 36.901180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.523403, 38.218021, 36.801212> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360988, 0.253496, 0.897456,
		0.930800, -0.038674, -0.363476,
		-0.057431, 0.966563, -0.249915,
		39.506172, 38.507992, 36.726238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.232525, 38.191109, 37.070263>,  <39.546375, 37.831398, 36.901180>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.232525, 38.191109, 37.070263> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.916515, 38.436321, 37.067299>,  <39.726910, 38.583447, 37.065521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.916515, 38.436321, 37.067299>,  <40.232525, 38.191109, 37.070263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.916515, 38.436321, 37.067299> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265306, 0.352749, 0.897319,
		0.552695, 0.706940, -0.441321,
		-0.790026, 0.613029, -0.007407,
		39.679508, 38.620232, 37.065079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.545712, 38.649220, 37.450947>,  <40.232525, 38.191109, 37.070263>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.545712, 38.649220, 37.450947> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.169735, 38.785500, 37.442665>,  <39.944149, 38.867268, 37.437698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.169735, 38.785500, 37.442665>,  <40.545712, 38.649220, 37.450947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.169735, 38.785500, 37.442665> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163028, 0.501398, 0.849719,
		0.299882, 0.795312, -0.526829,
		-0.939943, 0.340703, -0.020702,
		39.887753, 38.887711, 37.436455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.427185, 39.388870, 37.693203>,  <40.545712, 38.649220, 37.450947>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.427185, 39.388870, 37.693203> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.064674, 39.231583, 37.755234>,  <39.847168, 39.137211, 37.792454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.064674, 39.231583, 37.755234>,  <40.427185, 39.388870, 37.693203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.064674, 39.231583, 37.755234> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068310, 0.498306, 0.864306,
		-0.417133, 0.772706, -0.478462,
		-0.906275, -0.393215, 0.155076,
		39.792793, 39.113617, 37.801758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.042114, 39.989361, 37.927017>,  <40.427185, 39.388870, 37.693203>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.042114, 39.989361, 37.927017> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.821602, 39.673603, 38.035046>,  <39.689293, 39.484146, 38.099861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.821602, 39.673603, 38.035046>,  <40.042114, 39.989361, 37.927017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.821602, 39.673603, 38.035046> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023569, 0.338310, 0.940740,
		-0.833984, 0.512250, -0.205110,
		-0.551285, -0.789396, 0.270072,
		39.656216, 39.436783, 38.116066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.364456, 40.154190, 38.140221>,  <40.042114, 39.989361, 37.927017>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.364456, 40.154190, 38.140221> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.424301, 39.814476, 38.342739>,  <39.460209, 39.610649, 38.464249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.424301, 39.814476, 38.342739>,  <39.364456, 40.154190, 38.140221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.424301, 39.814476, 38.342739> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335520, 0.438069, 0.833980,
		-0.930077, -0.294644, -0.219411,
		0.149610, -0.849282, 0.506297,
		39.469185, 39.559692, 38.494629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.785580, 40.133251, 38.559864>,  <39.364456, 40.154190, 38.140221>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.785580, 40.133251, 38.559864> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.051651, 39.893089, 38.737427>,  <39.211292, 39.748993, 38.843964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.051651, 39.893089, 38.737427>,  <38.785580, 40.133251, 38.559864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.051651, 39.893089, 38.737427> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330998, 0.295806, 0.896068,
		-0.669314, -0.742977, -0.001969,
		0.665176, -0.600403, 0.443912,
		39.251205, 39.712967, 38.870602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.494583, 40.100868, 39.175320>,  <38.785580, 40.133251, 38.559864>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.494583, 40.100868, 39.175320> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.855381, 39.941925, 39.242863>,  <39.071861, 39.846558, 39.283386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.855381, 39.941925, 39.242863>,  <38.494583, 40.100868, 39.175320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.855381, 39.941925, 39.242863> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029332, 0.333798, 0.942188,
		-0.430749, -0.854802, 0.289429,
		0.901995, -0.397357, 0.168856,
		39.125980, 39.822720, 39.293518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.347603, 39.744045, 39.749302>,  <38.494583, 40.100868, 39.175320>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.347603, 39.744045, 39.749302> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.744324, 39.793213, 39.735382>,  <38.982357, 39.822712, 39.727028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.744324, 39.793213, 39.735382>,  <38.347603, 39.744045, 39.749302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.744324, 39.793213, 39.735382> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003493, 0.246235, 0.969204,
		0.127699, -0.961385, 0.243788,
		0.991807, 0.122915, -0.034802,
		39.041866, 39.830090, 39.724941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.526794, 39.373116, 40.336174>,  <38.347603, 39.744045, 39.749302>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.526794, 39.373116, 40.336174> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.824135, 39.621536, 40.236797>,  <39.002541, 39.770588, 40.177170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.824135, 39.621536, 40.236797>,  <38.526794, 39.373116, 40.336174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.824135, 39.621536, 40.236797> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256143, 0.078815, 0.963420,
		0.617914, -0.779797, -0.100490,
		0.743352, 0.621051, -0.248440,
		39.047142, 39.807850, 40.162266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.177650, 39.142536, 40.710777>,  <38.526794, 39.373116, 40.336174>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.177650, 39.142536, 40.710777> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.229145, 39.526981, 40.613049>,  <39.260040, 39.757648, 40.554413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.229145, 39.526981, 40.613049>,  <39.177650, 39.142536, 40.710777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.229145, 39.526981, 40.613049> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377700, 0.180280, 0.908208,
		0.916936, -0.209196, -0.339803,
		0.128733, 0.961112, -0.244319,
		39.267765, 39.815315, 40.539753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.887970, 39.255974, 40.963394>,  <39.177650, 39.142536, 40.710777>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.887970, 39.255974, 40.963394> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.716583, 39.612915, 40.906658>,  <39.613750, 39.827080, 40.872616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.716583, 39.612915, 40.906658>,  <39.887970, 39.255974, 40.963394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.716583, 39.612915, 40.906658> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535573, 0.377250, 0.755542,
		0.727719, 0.247762, -0.639561,
		-0.428469, 0.892355, -0.141837,
		39.588043, 39.880623, 40.864105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.383698, 39.718864, 40.721756>,  <39.887970, 39.255974, 40.963394>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.383698, 39.718864, 40.721756> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.086861, 39.918129, 40.901150>,  <39.908760, 40.037685, 41.008785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.086861, 39.918129, 40.901150>,  <40.383698, 39.718864, 40.721756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.086861, 39.918129, 40.901150> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647397, 0.359271, 0.672162,
		0.173715, 0.789153, -0.589118,
		-0.742092, 0.498158, 0.448485,
		39.864235, 40.067577, 41.035694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.689648, 40.335564, 41.007652>,  <40.383698, 39.718864, 40.721756>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.689648, 40.335564, 41.007652> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.337151, 40.335045, 41.196716>,  <40.125652, 40.334736, 41.310154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.337151, 40.335045, 41.196716>,  <40.689648, 40.335564, 41.007652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.337151, 40.335045, 41.196716> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404424, 0.515532, 0.755426,
		-0.244649, 0.856869, -0.453786,
		-0.881243, -0.001292, 0.472663,
		40.072777, 40.334656, 41.338516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.599171, 40.961147, 41.294422>,  <40.689648, 40.335564, 41.007652>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.599171, 40.961147, 41.294422> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.321209, 40.751614, 41.491482>,  <40.154430, 40.625893, 41.609718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.321209, 40.751614, 41.491482>,  <40.599171, 40.961147, 41.294422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.321209, 40.751614, 41.491482> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262207, 0.453350, 0.851893,
		-0.669592, 0.721162, -0.177684,
		-0.694906, -0.523831, 0.492653,
		40.112736, 40.594463, 41.639278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<40.001106, 41.504539, 41.431854> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.006279, 41.196163, 41.686562>,  <40.009380, 41.011135, 41.839386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.006279, 41.196163, 41.686562>,  <40.001106, 41.504539, 41.431854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.006279, 41.196163, 41.686562> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180305, 0.628185, 0.756885,
		-0.983526, 0.105028, 0.147127,
		0.012929, -0.770943, 0.636773,
		40.010159, 40.964882, 41.877594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.533195, 41.645317, 42.043026>,  <40.001106, 41.504539, 41.431854>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.533195, 41.645317, 42.043026> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.788864, 41.373718, 42.187481>,  <39.942265, 41.210758, 42.274155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.788864, 41.373718, 42.187481>,  <39.533195, 41.645317, 42.043026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.788864, 41.373718, 42.187481> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184145, 0.591048, 0.785336,
		-0.746689, -0.435466, 0.502817,
		0.639176, -0.678993, 0.361140,
		39.980618, 41.170021, 42.295822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.344418, 41.694798, 42.662846>,  <39.533195, 41.645317, 42.043026>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.344418, 41.694798, 42.662846> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.672661, 41.467064, 42.682709>,  <39.869606, 41.330421, 42.694626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.672661, 41.467064, 42.682709>,  <39.344418, 41.694798, 42.662846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.672661, 41.467064, 42.682709> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279837, 0.476055, 0.833704,
		-0.498298, -0.670245, 0.549974,
		0.820604, -0.569336, 0.049658,
		39.918842, 41.296265, 42.697605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.421379, 41.588551, 43.331787>,  <39.344418, 41.694798, 42.662846>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.421379, 41.588551, 43.331787> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.784012, 41.514668, 43.180000>,  <40.001591, 41.470337, 43.088928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.784012, 41.514668, 43.180000>,  <39.421379, 41.588551, 43.331787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.784012, 41.514668, 43.180000> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415419, 0.549108, 0.725195,
		0.074421, -0.815085, 0.574541,
		0.906581, -0.184705, -0.379467,
		40.055984, 41.459255, 43.066158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.888153, 41.321888, 43.899715>,  <39.421379, 41.588551, 43.331787>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.888153, 41.321888, 43.899715> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.111561, 41.487431, 43.612167>,  <40.245605, 41.586758, 43.439636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.111561, 41.487431, 43.612167>,  <39.888153, 41.321888, 43.899715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.111561, 41.487431, 43.612167> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386156, 0.637277, 0.666904,
		0.734126, -0.650075, 0.196115,
		0.558517, 0.413860, -0.718872,
		40.279118, 41.611588, 43.396507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.490524, 41.515034, 44.196869>,  <39.888153, 41.321888, 43.899715>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.490524, 41.515034, 44.196869> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.513504, 41.716808, 43.852257>,  <40.527290, 41.837875, 43.645489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.513504, 41.716808, 43.852257>,  <40.490524, 41.515034, 44.196869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.513504, 41.716808, 43.852257> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464469, 0.750374, 0.470326,
		0.883724, -0.427175, -0.191189,
		0.057448, 0.504440, -0.861533,
		40.530739, 41.868141, 43.593796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.221573, 41.776825, 44.035851>,  <40.490524, 41.515034, 44.196869>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.221573, 41.776825, 44.035851> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.945557, 41.998989, 43.850224>,  <40.779945, 42.132290, 43.738850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.945557, 41.998989, 43.850224>,  <41.221573, 41.776825, 44.035851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.945557, 41.998989, 43.850224> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403778, 0.827545, 0.390042,
		0.600668, 0.081767, -0.795306,
		-0.690044, 0.555413, -0.464064,
		40.738544, 42.165611, 43.711006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.661243, 42.304375, 43.904385>,  <41.221573, 41.776825, 44.035851>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.661243, 42.304375, 43.904385> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.294388, 42.455540, 43.853733>,  <41.074276, 42.546238, 43.823341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.294388, 42.455540, 43.853733>,  <41.661243, 42.304375, 43.904385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.294388, 42.455540, 43.853733> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243116, 0.782209, 0.573623,
		0.315833, 0.495307, -0.809272,
		-0.917139, 0.377916, -0.126630,
		41.019245, 42.568916, 43.815742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.817715, 42.974667, 43.689999>,  <41.661243, 42.304375, 43.904385>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.817715, 42.974667, 43.689999> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.442692, 42.988136, 43.828480>,  <41.217678, 42.996216, 43.911568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.442692, 42.988136, 43.828480>,  <41.817715, 42.974667, 43.689999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.442692, 42.988136, 43.828480> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176715, 0.903397, 0.390700,
		-0.299602, 0.427482, -0.852935,
		-0.937556, 0.033672, 0.346202,
		41.161427, 42.998238, 43.932339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.481556, 43.669220, 43.563469>,  <41.817715, 42.974667, 43.689999>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.481556, 43.669220, 43.563469> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.274395, 43.516666, 43.869755>,  <41.150101, 43.425133, 44.053528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.274395, 43.516666, 43.869755>,  <41.481556, 43.669220, 43.563469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.274395, 43.516666, 43.869755> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279277, 0.770686, 0.572754,
		-0.808570, 0.510476, -0.292625,
		-0.517899, -0.381388, 0.765717,
		41.119026, 43.402248, 44.099468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.241596, 44.203575, 43.866089>,  <41.481556, 43.669220, 43.563469>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.241596, 44.203575, 43.866089> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.158722, 43.942974, 44.158012>,  <41.108997, 43.786613, 44.333164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.158722, 43.942974, 44.158012>,  <41.241596, 44.203575, 43.866089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.158722, 43.942974, 44.158012> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183485, 0.706876, 0.683125,
		-0.960941, 0.275443, -0.026915,
		-0.207187, -0.651504, 0.729806,
		41.096565, 43.747524, 44.376953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.777203, 44.511093, 44.318192>,  <41.241596, 44.203575, 43.866089>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.777203, 44.511093, 44.318192> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.961899, 44.224682, 44.527611>,  <41.072716, 44.052834, 44.653263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.961899, 44.224682, 44.527611>,  <40.777203, 44.511093, 44.318192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.961899, 44.224682, 44.527611> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240250, 0.669127, 0.703242,
		-0.853860, -0.198933, 0.480988,
		0.461740, -0.716027, 0.523547,
		41.100422, 44.009872, 44.684673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.654446, 44.712250, 44.960529>,  <40.777203, 44.511093, 44.318192>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.654446, 44.712250, 44.960529> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.971363, 44.474018, 45.013523>,  <41.161514, 44.331078, 45.045319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.971363, 44.474018, 45.013523>,  <40.654446, 44.712250, 44.960529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.971363, 44.474018, 45.013523> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286640, 0.555020, 0.780891,
		-0.538617, -0.580719, 0.610456,
		0.792294, -0.595582, 0.132486,
		41.209053, 44.295345, 45.053268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.663212, 44.646606, 45.671318>,  <40.654446, 44.712250, 44.960529>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.663212, 44.646606, 45.671318> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.027115, 44.536877, 45.546680>,  <41.245457, 44.471039, 45.471897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.027115, 44.536877, 45.546680>,  <40.663212, 44.646606, 45.671318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.027115, 44.536877, 45.546680> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402452, 0.398591, 0.824110,
		-0.101873, -0.875141, 0.473022,
		0.909755, -0.274324, -0.311597,
		41.300041, 44.454578, 45.453201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.898602, 44.313358, 46.265415>,  <40.663212, 44.646606, 45.671318>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.898602, 44.313358, 46.265415> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.193867, 44.419182, 46.017181>,  <41.371025, 44.482677, 45.868240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.193867, 44.419182, 46.017181>,  <40.898602, 44.313358, 46.265415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.193867, 44.419182, 46.017181> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439233, 0.509747, 0.739751,
		0.512024, -0.818647, 0.260094,
		0.738177, 0.264529, -0.620579,
		41.415314, 44.498550, 45.831005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.499580, 44.168964, 46.616146>,  <40.898602, 44.313358, 46.265415>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.499580, 44.168964, 46.616146> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.627308, 44.436096, 46.347210>,  <41.703945, 44.596375, 46.185848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.627308, 44.436096, 46.347210>,  <41.499580, 44.168964, 46.616146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.627308, 44.436096, 46.347210> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555739, 0.442710, 0.703678,
		0.767588, -0.598341, -0.229775,
		0.319316, 0.667829, -0.672341,
		41.723103, 44.636444, 46.145508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.210793, 44.157757, 46.661888>,  <41.499580, 44.168964, 46.616146>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.210793, 44.157757, 46.661888> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.151127, 44.505905, 46.474186>,  <42.115326, 44.714794, 46.361565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.151127, 44.505905, 46.474186>,  <42.210793, 44.157757, 46.661888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.151127, 44.505905, 46.474186> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734954, 0.415074, 0.536243,
		0.661508, -0.264895, -0.701597,
		-0.149167, 0.870370, -0.469260,
		42.106377, 44.767017, 46.333408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.964756, 44.378574, 46.489342>,  <42.210793, 44.157757, 46.661888>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.964756, 44.378574, 46.489342> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.709717, 44.686188, 46.507496>,  <42.556694, 44.870754, 46.518391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.709717, 44.686188, 46.507496>,  <42.964756, 44.378574, 46.489342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.709717, 44.686188, 46.507496> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635078, 0.491358, 0.596024,
		0.436060, 0.408847, -0.801683,
		-0.637596, 0.769033, 0.045388,
		42.518436, 44.916897, 46.521111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.381310, 44.874737, 46.426083>,  <42.964756, 44.378574, 46.489342>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.381310, 44.874737, 46.426083> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.046688, 45.035393, 46.575134>,  <42.845913, 45.131786, 46.664566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.046688, 45.035393, 46.575134>,  <43.381310, 44.874737, 46.426083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.046688, 45.035393, 46.575134> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546449, 0.562551, 0.620427,
		0.039566, 0.722648, -0.690083,
		-0.836557, 0.401643, 0.372633,
		42.795719, 45.155888, 46.686924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.599567, 45.545864, 46.467403>,  <43.381310, 44.874737, 46.426083>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.599567, 45.545864, 46.467403> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.273239, 45.525585, 46.697834>,  <43.077442, 45.513420, 46.836094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.273239, 45.525585, 46.697834>,  <43.599567, 45.545864, 46.467403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.273239, 45.525585, 46.697834> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416249, 0.640057, 0.645805,
		-0.401459, 0.766653, -0.501072,
		-0.815823, -0.050694, 0.576075,
		43.028492, 45.510376, 46.870655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.379509, 46.231667, 46.606903>,  <43.599567, 45.545864, 46.467403>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.379509, 46.231667, 46.606903> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.242134, 45.992008, 46.896198>,  <43.159710, 45.848213, 47.069775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.242134, 45.992008, 46.896198>,  <43.379509, 46.231667, 46.606903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.242134, 45.992008, 46.896198> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465250, 0.560417, 0.685183,
		-0.815839, 0.571805, 0.086283,
		-0.343437, -0.599143, 0.723242,
		43.139103, 45.812263, 47.113171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.053711, 46.694061, 47.058922>,  <43.379509, 46.231667, 46.606903>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.053711, 46.694061, 47.058922> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.149643, 46.360489, 47.257732>,  <43.207203, 46.160343, 47.377018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.149643, 46.360489, 47.257732>,  <43.053711, 46.694061, 47.058922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.149643, 46.360489, 47.257732> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346070, 0.551774, 0.758802,
		-0.907038, -0.009977, 0.420931,
		0.239830, -0.833934, 0.497027,
		43.221592, 46.110310, 47.406841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.908482, 46.807983, 47.822594>,  <43.053711, 46.694061, 47.058922>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.908482, 46.807983, 47.822594> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.216644, 46.577862, 47.712681>,  <43.401543, 46.439789, 47.646732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.216644, 46.577862, 47.712681>,  <42.908482, 46.807983, 47.822594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.216644, 46.577862, 47.712681> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596947, 0.499535, 0.627789,
		-0.223903, -0.647684, 0.728267,
		0.770404, -0.575301, -0.274786,
		43.447765, 46.405273, 47.630245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.219421, 46.763317, 47.903934>,  <42.908482, 46.807983, 47.822594>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.219421, 46.763317, 47.903934> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.047150, 46.910343, 48.233639>,  <41.943787, 46.998558, 48.431461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.047150, 46.910343, 48.233639>,  <42.219421, 46.763317, 47.903934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.047150, 46.910343, 48.233639> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761149, -0.638678, -0.112888,
		0.484945, -0.676006, 0.554838,
		-0.430675, 0.367569, 0.824264,
		41.917946, 47.020615, 48.480919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.065903, 46.180626, 48.436245>,  <42.219421, 46.763317, 47.903934>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.065903, 46.180626, 48.436245> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.833336, 46.504219, 48.470890>,  <41.693798, 46.698376, 48.491676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.833336, 46.504219, 48.470890>,  <42.065903, 46.180626, 48.436245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.833336, 46.504219, 48.470890> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813177, -0.581268, -0.029505,
		0.026475, -0.087584, 0.995805,
		-0.581414, 0.808985, 0.086610,
		41.658913, 46.746914, 48.496872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.606152, 46.079662, 48.870697>,  <42.065903, 46.180626, 48.436245>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.606152, 46.079662, 48.870697> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.416492, 46.363663, 48.662434>,  <41.302696, 46.534061, 48.537476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.416492, 46.363663, 48.662434>,  <41.606152, 46.079662, 48.870697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.416492, 46.363663, 48.662434> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797900, -0.596505, -0.086813,
		-0.372212, 0.374270, 0.849341,
		-0.474145, 0.710003, -0.520657,
		41.274250, 46.576664, 48.506237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.901756, 46.037056, 49.050659>,  <41.606152, 46.079662, 48.870697>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.901756, 46.037056, 49.050659> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.882523, 46.263824, 48.721714>,  <40.870983, 46.399887, 48.524345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.882523, 46.263824, 48.721714>,  <40.901756, 46.037056, 49.050659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.882523, 46.263824, 48.721714> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.881643, -0.411053, -0.231824,
		-0.469462, 0.713886, 0.519588,
		-0.048083, 0.566924, -0.822366,
		40.868099, 46.433903, 48.475006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.206696, 46.174870, 49.053364>,  <40.901756, 46.037056, 49.050659>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.206696, 46.174870, 49.053364> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.315613, 46.278561, 48.682709>,  <40.380962, 46.340775, 48.460316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.315613, 46.278561, 48.682709>,  <40.206696, 46.174870, 49.053364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.315613, 46.278561, 48.682709> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769825, -0.519052, -0.371423,
		-0.577255, 0.814485, 0.058224,
		0.272297, 0.259228, -0.926637,
		40.397301, 46.356331, 48.404716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.531677, 46.317749, 48.686306>,  <40.206696, 46.174870, 49.053364>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.531677, 46.317749, 48.686306> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.821243, 46.258751, 48.416729>,  <39.994984, 46.223351, 48.254982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.821243, 46.258751, 48.416729>,  <39.531677, 46.317749, 48.686306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.821243, 46.258751, 48.416729> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657614, -0.442842, -0.609454,
		-0.208556, 0.884384, -0.417576,
		0.723912, -0.147498, -0.673941,
		40.038418, 46.214500, 48.214546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.265553, 46.513344, 48.100193>,  <39.531677, 46.317749, 48.686306>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.265553, 46.513344, 48.100193> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.573441, 46.292618, 47.971802>,  <39.758175, 46.160183, 47.894768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.573441, 46.292618, 47.971802>,  <39.265553, 46.513344, 48.100193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.573441, 46.292618, 47.971802> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623935, -0.543943, -0.561099,
		0.135033, 0.632157, -0.762983,
		0.769722, -0.551819, -0.320975,
		39.804356, 46.127071, 47.875511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.138126, 46.417336, 47.439281>,  <39.265553, 46.513344, 48.100193>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.138126, 46.417336, 47.439281> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.392963, 46.116093, 47.504932>,  <39.545868, 45.935349, 47.544323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.392963, 46.116093, 47.504932>,  <39.138126, 46.417336, 47.439281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.392963, 46.116093, 47.504932> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521595, -0.578019, -0.627562,
		0.567491, 0.314207, -0.761070,
		0.637097, -0.753106, 0.164131,
		39.584091, 45.890160, 47.554173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.225346, 46.180298, 46.816177>,  <39.138126, 46.417336, 47.439281>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.225346, 46.180298, 46.816177> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.347382, 45.887714, 47.060108>,  <39.420605, 45.712166, 47.206467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.347382, 45.887714, 47.060108>,  <39.225346, 46.180298, 46.816177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.347382, 45.887714, 47.060108> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459905, -0.673900, -0.578227,
		0.833910, -0.104049, -0.542003,
		0.305092, -0.731459, 0.609825,
		39.438908, 45.668278, 47.243057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.541222, 45.640446, 46.365734>,  <39.225346, 46.180298, 46.816177>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.541222, 45.640446, 46.365734> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.456577, 45.448833, 46.706497>,  <39.405792, 45.333866, 46.910957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.456577, 45.448833, 46.706497>,  <39.541222, 45.640446, 46.365734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.456577, 45.448833, 46.706497> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223459, -0.824847, -0.519320,
		0.951465, -0.300261, 0.067504,
		-0.211612, -0.479031, 0.851909,
		39.393093, 45.305122, 46.962070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.974472, 45.048702, 46.505253>,  <39.541222, 45.640446, 46.365734>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.974472, 45.048702, 46.505253> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.623878, 44.983673, 46.686512>,  <39.413521, 44.944656, 46.795265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.623878, 44.983673, 46.686512>,  <39.974472, 45.048702, 46.505253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.623878, 44.983673, 46.686512> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163074, -0.785351, -0.597185,
		0.452967, -0.597321, 0.661838,
		-0.876486, -0.162576, 0.453146,
		39.360931, 44.934898, 46.822456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.912937, 44.364986, 46.553936>,  <39.974472, 45.048702, 46.505253>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.912937, 44.364986, 46.553936> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.530830, 44.467606, 46.612793>,  <39.301567, 44.529179, 46.648106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.530830, 44.467606, 46.612793>,  <39.912937, 44.364986, 46.553936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.530830, 44.467606, 46.612793> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282458, -0.643913, -0.711051,
		-0.087672, -0.720803, 0.687572,
		-0.955265, 0.256550, 0.147144,
		39.244251, 44.544571, 46.656937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.591370, 43.768406, 46.479034>,  <39.912937, 44.364986, 46.553936>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.591370, 43.768406, 46.479034> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.294033, 44.034084, 46.447311>,  <39.115631, 44.193493, 46.428276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.294033, 44.034084, 46.447311>,  <39.591370, 43.768406, 46.479034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.294033, 44.034084, 46.447311> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437301, -0.572247, -0.693759,
		-0.506177, -0.481016, 0.715827,
		-0.743339, 0.664197, -0.079309,
		39.071033, 44.233345, 46.423519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.950981, 43.440289, 46.467461>,  <39.591370, 43.768406, 46.479034>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.950981, 43.440289, 46.467461> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.894020, 43.777348, 46.259739>,  <38.859844, 43.979584, 46.135105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.894020, 43.777348, 46.259739>,  <38.950981, 43.440289, 46.467461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.894020, 43.777348, 46.259739> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317952, -0.535784, -0.782203,
		-0.937352, 0.053725, 0.344217,
		-0.142403, 0.842644, -0.519300,
		38.851299, 44.030140, 46.103951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.497700, 43.202076, 46.020889>,  <38.950981, 43.440289, 46.467461>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.497700, 43.202076, 46.020889> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.572250, 43.563690, 45.867016>,  <38.616982, 43.780659, 45.774693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.572250, 43.563690, 45.867016>,  <38.497700, 43.202076, 46.020889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.572250, 43.563690, 45.867016> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266888, -0.330239, -0.905380,
		-0.945535, 0.271407, 0.179729,
		0.186373, 0.904036, -0.384688,
		38.628162, 43.834900, 45.751610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.969139, 43.349236, 45.609783>,  <38.497700, 43.202076, 46.020889>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.969139, 43.349236, 45.609783> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.263985, 43.582672, 45.473499>,  <38.440891, 43.722733, 45.391727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.263985, 43.582672, 45.473499>,  <37.969139, 43.349236, 45.609783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.263985, 43.582672, 45.473499> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209072, -0.282507, -0.936204,
		-0.642613, 0.761324, -0.086228,
		0.737115, 0.583589, -0.340714,
		38.485119, 43.757748, 45.371284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.681427, 43.675095, 45.062714>,  <37.969139, 43.349236, 45.609783>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.681427, 43.675095, 45.062714> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.074932, 43.704121, 44.997051>,  <38.311035, 43.721535, 44.957653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.074932, 43.704121, 44.997051>,  <37.681427, 43.675095, 45.062714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.074932, 43.704121, 44.997051> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152987, -0.139198, -0.978375,
		-0.093847, 0.987602, -0.125836,
		0.983762, 0.072566, -0.164154,
		38.370060, 43.725891, 44.947803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.764832, 44.218563, 44.622513>,  <37.681427, 43.675095, 45.062714>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.764832, 44.218563, 44.622513> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.072311, 43.968990, 44.566216>,  <38.256802, 43.819248, 44.532436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.072311, 43.968990, 44.566216>,  <37.764832, 44.218563, 44.622513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.072311, 43.968990, 44.566216> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217189, -0.047658, -0.974966,
		0.601602, 0.780027, -0.172145,
		0.768703, -0.623929, -0.140742,
		38.302921, 43.781811, 44.523994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.037800, 44.528908, 44.054024>,  <37.764832, 44.218563, 44.622513>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.037800, 44.528908, 44.054024> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.128853, 44.139767, 44.037331>,  <38.183483, 43.906281, 44.027313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.128853, 44.139767, 44.037331>,  <38.037800, 44.528908, 44.054024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.128853, 44.139767, 44.037331> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146985, 0.008042, -0.989106,
		0.962590, 0.231285, -0.141164,
		0.227631, -0.972853, -0.041736,
		38.197144, 43.847912, 44.024811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.238621, 44.524590, 43.397278>,  <38.037800, 44.528908, 44.054024>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.238621, 44.524590, 43.397278> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.233017, 44.135139, 43.488373>,  <38.229652, 43.901470, 43.543030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.233017, 44.135139, 43.488373>,  <38.238621, 44.524590, 43.397278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.233017, 44.135139, 43.488373> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245724, -0.217421, -0.944642,
		0.969239, -0.069196, -0.236195,
		-0.014011, -0.973622, 0.227736,
		38.228813, 43.843052, 43.556694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.673092, 44.264767, 42.951763>,  <38.238621, 44.524590, 43.397278>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.673092, 44.264767, 42.951763> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.432411, 43.963669, 43.058594>,  <38.288002, 43.783012, 43.122692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.432411, 43.963669, 43.058594>,  <38.673092, 44.264767, 42.951763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.432411, 43.963669, 43.058594> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084994, -0.272140, -0.958497,
		0.794183, -0.599433, 0.099769,
		-0.601706, -0.752741, 0.267077,
		38.251900, 43.737846, 43.138718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<45.105003, 28.537495, 40.144493> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.720871, 28.461418, 40.062920>,  <44.490391, 28.415771, 40.013977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.720871, 28.461418, 40.062920>,  <45.105003, 28.537495, 40.144493>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.720871, 28.461418, 40.062920> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029956, 0.656717, -0.753542,
		0.277242, -0.729760, -0.624970,
		-0.960333, -0.190192, -0.203930,
		44.432770, 28.404360, 40.001740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.005089, 28.353279, 39.352928>,  <45.105003, 28.537495, 40.144493>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.005089, 28.353279, 39.352928> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.668743, 28.518749, 39.492538>,  <44.466934, 28.618031, 39.576305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.668743, 28.518749, 39.492538>,  <45.005089, 28.353279, 39.352928>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.668743, 28.518749, 39.492538> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012056, 0.630388, -0.776186,
		-0.541111, -0.656875, -0.525084,
		-0.840865, 0.413673, 0.349029,
		44.416485, 28.642851, 39.597248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.553688, 28.372530, 38.722073>,  <45.005089, 28.353279, 39.352928>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.553688, 28.372530, 38.722073> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.438709, 28.622478, 39.012428>,  <44.369720, 28.772448, 39.186642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.438709, 28.622478, 39.012428>,  <44.553688, 28.372530, 38.722073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.438709, 28.622478, 39.012428> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384477, 0.618850, -0.684983,
		-0.877239, -0.475986, 0.062359,
		-0.287451, 0.624870, 0.725885,
		44.352474, 28.809940, 39.230194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.039883, 28.696175, 38.436321>,  <44.553688, 28.372530, 38.722073>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.039883, 28.696175, 38.436321> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.137951, 28.943232, 38.735229>,  <44.196793, 29.091467, 38.914574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.137951, 28.943232, 38.735229>,  <44.039883, 28.696175, 38.436321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.137951, 28.943232, 38.735229> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219464, 0.786141, -0.577770,
		-0.944313, -0.022348, 0.328287,
		0.245168, 0.617643, 0.747268,
		44.211502, 29.128525, 38.959412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.460205, 29.045935, 38.615780>,  <44.039883, 28.696175, 38.436321>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.460205, 29.045935, 38.615780> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.774353, 29.263845, 38.733360>,  <43.962841, 29.394592, 38.803909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.774353, 29.263845, 38.733360>,  <43.460205, 29.045935, 38.615780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.774353, 29.263845, 38.733360> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314163, 0.759942, -0.569026,
		-0.533379, 0.354548, 0.767986,
		0.785371, 0.544779, 0.293951,
		44.009964, 29.427279, 38.821545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.142658, 29.761135, 38.726421>,  <43.460205, 29.045935, 38.615780>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.142658, 29.761135, 38.726421> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.537838, 29.823053, 38.726219>,  <43.774944, 29.860205, 38.726097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.537838, 29.823053, 38.726219>,  <43.142658, 29.761135, 38.726421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.537838, 29.823053, 38.726219> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133573, 0.850842, -0.508160,
		-0.078230, 0.502102, 0.861262,
		0.987947, 0.154795, -0.000506,
		43.834221, 29.869492, 38.726067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.228920, 30.510517, 38.955544>,  <43.142658, 29.761135, 38.726421>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.228920, 30.510517, 38.955544> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.547215, 30.377302, 38.753197>,  <43.738190, 30.297373, 38.631790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.547215, 30.377302, 38.753197>,  <43.228920, 30.510517, 38.955544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.547215, 30.377302, 38.753197> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146115, 0.705006, -0.693986,
		0.587759, 0.626141, 0.512334,
		0.795732, -0.333037, -0.505862,
		43.785934, 30.277391, 38.601437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.600555, 31.118814, 38.880764>,  <43.228920, 30.510517, 38.955544>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.600555, 31.118814, 38.880764> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.758846, 30.849468, 38.630970>,  <43.853821, 30.687860, 38.481094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.758846, 30.849468, 38.630970>,  <43.600555, 31.118814, 38.880764>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.758846, 30.849468, 38.630970> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271068, 0.735339, -0.621127,
		0.877451, 0.076523, 0.473524,
		0.395730, -0.673366, -0.624481,
		43.877567, 30.647459, 38.443626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.245720, 31.362164, 38.776775>,  <43.600555, 31.118814, 38.880764>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.245720, 31.362164, 38.776775> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.161182, 31.125275, 38.465752>,  <44.110458, 30.983141, 38.279137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.161182, 31.125275, 38.465752>,  <44.245720, 31.362164, 38.776775>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.161182, 31.125275, 38.465752> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171851, 0.760625, -0.626033,
		0.962185, -0.265934, -0.058980,
		-0.211345, -0.592224, -0.777563,
		44.097778, 30.947607, 38.232483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.800571, 31.517679, 38.203606>,  <44.245720, 31.362164, 38.776775>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.800571, 31.517679, 38.203606> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.479160, 31.366360, 38.019768>,  <44.286312, 31.275568, 37.909466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.479160, 31.366360, 38.019768>,  <44.800571, 31.517679, 38.203606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.479160, 31.366360, 38.019768> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005066, 0.776407, -0.630212,
		0.595243, -0.504066, -0.625782,
		-0.803530, -0.378300, -0.459597,
		44.238102, 31.252871, 37.881889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.949810, 31.739805, 37.567215>,  <44.800571, 31.517679, 38.203606>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.949810, 31.739805, 37.567215> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.563873, 31.637691, 37.542225>,  <44.332310, 31.576424, 37.527229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.563873, 31.637691, 37.542225>,  <44.949810, 31.739805, 37.567215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.563873, 31.637691, 37.542225> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131992, 0.676233, -0.724767,
		0.227268, -0.691042, -0.686156,
		-0.964846, -0.255283, -0.062474,
		44.274418, 31.561106, 37.523483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.801773, 31.503714, 36.824505>,  <44.949810, 31.739805, 37.567215>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.801773, 31.503714, 36.824505> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.464233, 31.645931, 36.985256>,  <44.261711, 31.731262, 37.081707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.464233, 31.645931, 36.985256>,  <44.801773, 31.503714, 36.824505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.464233, 31.645931, 36.985256> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055995, 0.686530, -0.724942,
		-0.533653, -0.634244, -0.559418,
		-0.843848, 0.355543, 0.401883,
		44.211079, 31.752594, 37.105820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.296837, 31.518450, 36.222557>,  <44.801773, 31.503714, 36.824505>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.296837, 31.518450, 36.222557> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.163635, 31.752670, 36.518188>,  <44.083714, 31.893202, 36.695568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.163635, 31.752670, 36.518188>,  <44.296837, 31.518450, 36.222557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.163635, 31.752670, 36.518188> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103683, 0.756322, -0.645931,
		-0.937206, -0.291730, -0.191149,
		-0.333008, 0.585551, 0.739078,
		44.063732, 31.928335, 36.739910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.633858, 31.879620, 35.940327>,  <44.296837, 31.518450, 36.222557>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.633858, 31.879620, 35.940327> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.816525, 32.107159, 36.213928>,  <43.926125, 32.243683, 36.378090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.816525, 32.107159, 36.213928>,  <43.633858, 31.879620, 35.940327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.816525, 32.107159, 36.213928> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031515, 0.778723, -0.626576,
		-0.889078, 0.264583, 0.373547,
		0.456671, 0.568847, 0.684007,
		43.953526, 32.277813, 36.419128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.264111, 32.485069, 35.939312>,  <43.633858, 31.879620, 35.940327>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.264111, 32.485069, 35.939312> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.633251, 32.562366, 36.072582>,  <43.854736, 32.608746, 36.152542>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.633251, 32.562366, 36.072582>,  <43.264111, 32.485069, 35.939312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.633251, 32.562366, 36.072582> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088953, 0.734716, -0.672518,
		-0.374744, 0.650270, 0.660844,
		0.922851, 0.193238, 0.333174,
		43.910107, 32.620338, 36.172535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.442017, 33.085701, 35.585506>,  <43.264111, 32.485069, 35.939312>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.442017, 33.085701, 35.585506> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.772003, 33.045330, 35.807945>,  <43.969997, 33.021107, 35.941406>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.772003, 33.045330, 35.807945>,  <43.442017, 33.085701, 35.585506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.772003, 33.045330, 35.807945> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475569, 0.655617, -0.586516,
		-0.305387, 0.748318, 0.588862,
		0.824968, -0.100930, 0.556094,
		44.019493, 33.015053, 35.974773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.597111, 33.688175, 35.778088>,  <43.442017, 33.085701, 35.585506>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.597111, 33.688175, 35.778088> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.941231, 33.484455, 35.787060>,  <44.147701, 33.362225, 35.792442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.941231, 33.484455, 35.787060>,  <43.597111, 33.688175, 35.778088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.941231, 33.484455, 35.787060> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465486, 0.766826, -0.441928,
		0.207876, 0.390628, 0.896770,
		0.860296, -0.509301, 0.022427,
		44.199318, 33.331665, 35.793789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.127647, 34.178406, 36.060131>,  <43.597111, 33.688175, 35.778088>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.127647, 34.178406, 36.060131> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.318642, 33.888359, 35.861652>,  <44.433239, 33.714333, 35.742565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.318642, 33.888359, 35.861652>,  <44.127647, 34.178406, 36.060131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.318642, 33.888359, 35.861652> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633544, 0.675428, -0.377384,
		0.608795, -0.134169, 0.781900,
		0.477484, -0.725118, -0.496199,
		44.461887, 33.670822, 35.712791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.822144, 34.379166, 36.108433>,  <44.127647, 34.178406, 36.060131>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.822144, 34.379166, 36.108433> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.813511, 34.093815, 35.828255>,  <44.808331, 33.922604, 35.660149>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.813511, 34.093815, 35.828255>,  <44.822144, 34.379166, 36.108433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.813511, 34.093815, 35.828255> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683546, 0.500747, -0.531054,
		0.729589, -0.490245, 0.476824,
		-0.021578, -0.713381, -0.700444,
		44.807037, 33.879799, 35.618122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.545078, 34.124554, 36.033161>,  <44.822144, 34.379166, 36.108433>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.545078, 34.124554, 36.033161> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.334419, 34.079887, 35.696075>,  <45.208023, 34.053085, 35.493824>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.334419, 34.079887, 35.696075>,  <45.545078, 34.124554, 36.033161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.334419, 34.079887, 35.696075> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749040, 0.407802, -0.522146,
		0.401965, -0.906217, -0.131131,
		-0.526653, -0.111662, -0.842715,
		45.176422, 34.046387, 35.443260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.695351, 33.411446, 36.294479>,  <45.545078, 34.124554, 36.033161>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.695351, 33.411446, 36.294479> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.311222, 33.325260, 36.223640>,  <45.080746, 33.273548, 36.181137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.311222, 33.325260, 36.223640>,  <45.695351, 33.411446, 36.294479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.311222, 33.325260, 36.223640> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200059, 0.089741, 0.975665,
		-0.194324, 0.972380, -0.129285,
		-0.960320, -0.215460, -0.177095,
		45.023125, 33.260624, 36.170513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.362045, 33.742207, 36.245312>,  <45.695351, 33.411446, 36.294479>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.362045, 33.742207, 36.245312> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.568981, 34.003651, 36.466278>,  <46.693142, 34.160515, 36.598858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.568981, 34.003651, 36.466278>,  <46.362045, 33.742207, 36.245312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.568981, 34.003651, 36.466278> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253163, -0.733502, 0.630780,
		0.817476, -0.186478, -0.544939,
		0.517340, 0.653606, 0.552411,
		46.724182, 34.199734, 36.632000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.058273, 33.413052, 36.309681>,  <46.362045, 33.742207, 36.245312>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.058273, 33.413052, 36.309681> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.966385, 33.667770, 36.604088>,  <46.911251, 33.820602, 36.780731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.966385, 33.667770, 36.604088>,  <47.058273, 33.413052, 36.309681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.966385, 33.667770, 36.604088> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010059, -0.754648, 0.656052,
		0.973205, 0.158112, 0.166952,
		-0.229720, 0.636794, 0.736018,
		46.897469, 33.858810, 36.824894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.477268, 33.177048, 36.841942>,  <47.058273, 33.413052, 36.309681>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.477268, 33.177048, 36.841942> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.227375, 33.407703, 37.052540>,  <47.077438, 33.546097, 37.178898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.227375, 33.407703, 37.052540>,  <47.477268, 33.177048, 36.841942>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.227375, 33.407703, 37.052540> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037781, -0.695798, 0.717243,
		0.779927, 0.428191, 0.456472,
		-0.624729, 0.576643, 0.526494,
		47.039955, 33.580696, 37.210487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.686150, 33.107273, 37.617882>,  <47.477268, 33.177048, 36.841942>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.686150, 33.107273, 37.617882> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.310120, 33.243423, 37.625874>,  <47.084503, 33.325115, 37.630669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.310120, 33.243423, 37.625874>,  <47.686150, 33.107273, 37.617882>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.310120, 33.243423, 37.625874> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230015, -0.676334, 0.699761,
		0.251697, 0.653233, 0.714098,
		-0.940075, 0.340380, 0.019978,
		47.028095, 33.345539, 37.631866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.679573, 33.285095, 38.285919>,  <47.686150, 33.107273, 37.617882>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.679573, 33.285095, 38.285919> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.295830, 33.264027, 38.175022>,  <47.065586, 33.251385, 38.108482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.295830, 33.264027, 38.175022>,  <47.679573, 33.285095, 38.285919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.295830, 33.264027, 38.175022> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238828, -0.371800, 0.897065,
		-0.150330, 0.926817, 0.344108,
		-0.959355, -0.052674, -0.277242,
		47.008022, 33.248226, 38.091850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.211231, 33.551407, 38.851212>,  <47.679573, 33.285095, 38.285919>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.211231, 33.551407, 38.851212> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.007824, 33.291176, 38.625587>,  <46.885780, 33.135036, 38.490215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.007824, 33.291176, 38.625587>,  <47.211231, 33.551407, 38.851212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.007824, 33.291176, 38.625587> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247037, -0.517307, 0.819369,
		-0.824852, 0.556008, 0.102344,
		-0.508519, -0.650576, -0.564056,
		46.855267, 33.096004, 38.456371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.622627, 33.288883, 39.330471>,  <47.211231, 33.551407, 38.851212>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.622627, 33.288883, 39.330471> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.609840, 33.033718, 39.022694>,  <46.602169, 32.880619, 38.838028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.609840, 33.033718, 39.022694>,  <46.622627, 33.288883, 39.330471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.609840, 33.033718, 39.022694> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411465, -0.693178, 0.591778,
		-0.910865, 0.335519, -0.240318,
		-0.031970, -0.637912, -0.769446,
		46.600250, 32.842346, 38.791859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.984058, 32.821106, 39.330482>,  <46.622627, 33.288883, 39.330471>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.984058, 32.821106, 39.330482> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.250854, 32.625801, 39.105366>,  <46.410931, 32.508617, 38.970295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.250854, 32.625801, 39.105366>,  <45.984058, 32.821106, 39.330482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.250854, 32.625801, 39.105366> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265083, -0.861436, 0.433197,
		-0.696318, -0.139751, -0.703997,
		0.666988, -0.488260, -0.562787,
		46.450951, 32.479324, 38.936531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.676807, 32.218826, 39.228210>,  <45.984058, 32.821106, 39.330482>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.676807, 32.218826, 39.228210> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.055683, 32.144974, 39.123333>,  <46.283009, 32.100662, 39.060406>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.055683, 32.144974, 39.123333>,  <45.676807, 32.218826, 39.228210>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.055683, 32.144974, 39.123333> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072295, -0.919523, 0.386330,
		-0.312424, -0.346972, -0.884309,
		0.947188, -0.184630, -0.262197,
		46.339840, 32.089584, 39.044674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.760437, 31.465794, 38.841640>,  <45.676807, 32.218826, 39.228210>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.760437, 31.465794, 38.841640> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.113724, 31.567181, 38.999470>,  <46.325695, 31.628012, 39.094170>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.113724, 31.567181, 38.999470>,  <45.760437, 31.465794, 38.841640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.113724, 31.567181, 38.999470> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016668, -0.857797, 0.513718,
		0.468677, -0.447146, -0.761842,
		0.883212, 0.253466, 0.394577,
		46.378689, 31.643221, 39.117844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.173332, 30.926149, 38.746380>,  <45.760437, 31.465794, 38.841640>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.173332, 30.926149, 38.746380> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.321373, 31.134108, 39.054337>,  <46.410198, 31.258883, 39.239109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.321373, 31.134108, 39.054337>,  <46.173332, 30.926149, 38.746380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.321373, 31.134108, 39.054337> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001263, -0.828458, 0.560050,
		0.928990, -0.208249, -0.305959,
		0.370104, 0.519894, 0.769892,
		46.432404, 31.290075, 39.285305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.556110, 30.442629, 39.041603>,  <46.173332, 30.926149, 38.746380>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.556110, 30.442629, 39.041603> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.558090, 30.720716, 39.329117>,  <46.559277, 30.887569, 39.501625>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.558090, 30.720716, 39.329117>,  <46.556110, 30.442629, 39.041603>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.558090, 30.720716, 39.329117> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264538, -0.694094, 0.669517,
		0.964363, 0.186832, -0.187347,
		0.004950, 0.695217, 0.718782,
		46.559574, 30.929281, 39.544750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.084583, 30.244272, 39.470299>,  <46.556110, 30.442629, 39.041603>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.084583, 30.244272, 39.470299> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.877151, 30.504471, 39.692265>,  <46.752693, 30.660589, 39.825443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.877151, 30.504471, 39.692265>,  <47.084583, 30.244272, 39.470299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.877151, 30.504471, 39.692265> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179687, -0.551595, 0.814528,
		0.835933, 0.522111, 0.169163,
		-0.518584, 0.650494, 0.554913,
		46.721577, 30.699619, 39.858738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.474697, 30.414694, 40.022667>,  <47.084583, 30.244272, 39.470299>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.474697, 30.414694, 40.022667> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.110825, 30.515800, 40.154476>,  <46.892502, 30.576464, 40.233562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.110825, 30.515800, 40.154476>,  <47.474697, 30.414694, 40.022667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.110825, 30.515800, 40.154476> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130343, -0.579602, 0.804408,
		0.394321, 0.774707, 0.494308,
		-0.909682, 0.252766, 0.329527,
		46.837921, 30.591631, 40.253334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.518768, 30.559389, 40.751278>,  <47.474697, 30.414694, 40.022667>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.518768, 30.559389, 40.751278> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.137470, 30.459906, 40.682606>,  <46.908691, 30.400215, 40.641403>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.137470, 30.459906, 40.682606>,  <47.518768, 30.559389, 40.751278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.137470, 30.459906, 40.682606> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025642, -0.632598, 0.774056,
		-0.301117, 0.733460, 0.609397,
		-0.953242, -0.248708, -0.171679,
		46.851498, 30.385294, 40.631104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.042912, 30.544395, 41.456631>,  <47.518768, 30.559389, 40.751278>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.042912, 30.544395, 41.456631> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.898254, 30.292677, 41.181473>,  <46.811462, 30.141645, 41.016376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.898254, 30.292677, 41.181473>,  <47.042912, 30.544395, 41.456631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.898254, 30.292677, 41.181473> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126459, -0.764128, 0.632548,
		-0.923702, 0.141764, 0.355919,
		-0.361640, -0.629294, -0.687899,
		46.789761, 30.103889, 40.975101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.837757, 30.058006, 41.944813>,  <47.042912, 30.544395, 41.456631>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.837757, 30.058006, 41.944813> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.810730, 29.884359, 41.585484>,  <46.794514, 29.780170, 41.369888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.810730, 29.884359, 41.585484>,  <46.837757, 30.058006, 41.944813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.810730, 29.884359, 41.585484> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079027, -0.895219, 0.438563,
		-0.994580, 0.100624, 0.026180,
		-0.067567, -0.434117, -0.898319,
		46.790459, 29.754124, 41.315987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.228283, 29.720863, 41.960579>,  <46.837757, 30.058006, 41.944813>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.228283, 29.720863, 41.960579> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.453205, 29.526268, 41.693104>,  <46.588158, 29.409512, 41.532619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.453205, 29.526268, 41.693104>,  <46.228283, 29.720863, 41.960579>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.453205, 29.526268, 41.693104> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222966, -0.867885, 0.443917,
		-0.796305, -0.100521, -0.596485,
		0.562303, -0.486489, -0.668688,
		46.621895, 29.380322, 41.492496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.858501, 29.152418, 41.724838>,  <46.228283, 29.720863, 41.960579>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.858501, 29.152418, 41.724838> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.218468, 29.050644, 41.583183>,  <46.434448, 28.989578, 41.498192>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.218468, 29.050644, 41.583183>,  <45.858501, 29.152418, 41.724838>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.218468, 29.050644, 41.583183> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194151, -0.960974, 0.197063,
		-0.390457, -0.108583, -0.914195,
		0.899916, -0.254437, -0.354138,
		46.488441, 28.974314, 41.476940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.798450, 28.554781, 41.334461>,  <45.858501, 29.152418, 41.724838>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.798450, 28.554781, 41.334461> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.187611, 28.559330, 41.426842>,  <46.421108, 28.562059, 41.482269>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.187611, 28.559330, 41.426842>,  <45.798450, 28.554781, 41.334461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.187611, 28.559330, 41.426842> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107334, -0.862456, 0.494620,
		0.204808, -0.506005, -0.837862,
		0.972899, 0.011371, 0.230950,
		46.479481, 28.562740, 41.496128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.013203, 27.868803, 41.334209>,  <45.798450, 28.554781, 41.334461>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.013203, 27.868803, 41.334209> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.328896, 28.017410, 41.529797>,  <46.518311, 28.106575, 41.647148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.328896, 28.017410, 41.529797>,  <46.013203, 27.868803, 41.334209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.328896, 28.017410, 41.529797> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000115, -0.796149, 0.605101,
		0.614100, -0.477619, -0.628300,
		0.789228, 0.371520, 0.488970,
		46.565662, 28.128866, 41.676487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.298077, 40.117809, 39.788723> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.911213, 40.020535, 39.759132>,  <39.679096, 39.962170, 39.741379>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.911213, 40.020535, 39.759132>,  <40.298077, 40.117809, 39.788723>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.911213, 40.020535, 39.759132> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185497, -0.476278, -0.859506,
		0.173786, -0.844997, 0.505745,
		-0.967155, -0.243184, -0.073975,
		39.621067, 39.947578, 39.736938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.347431, 39.423359, 39.533756>,  <40.298077, 40.117809, 39.788723>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.347431, 39.423359, 39.533756> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.971123, 39.531136, 39.451435>,  <39.745338, 39.595802, 39.402042>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.971123, 39.531136, 39.451435>,  <40.347431, 39.423359, 39.533756>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.971123, 39.531136, 39.451435> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004207, -0.597680, -0.801723,
		-0.339026, -0.755101, 0.561145,
		-0.940767, 0.269444, -0.205806,
		39.688892, 39.611969, 39.389694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.946426, 38.818897, 39.416084>,  <40.347431, 39.423359, 39.533756>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.946426, 38.818897, 39.416084> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.726254, 39.102551, 39.239834>,  <39.594151, 39.272743, 39.134083>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.726254, 39.102551, 39.239834>,  <39.946426, 38.818897, 39.416084>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.726254, 39.102551, 39.239834> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094463, -0.577287, -0.811059,
		-0.829516, -0.404813, 0.384745,
		-0.550436, 0.709131, -0.440629,
		39.561123, 39.315289, 39.107647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.357014, 38.466442, 39.138668>,  <39.946426, 38.818897, 39.416084>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.357014, 38.466442, 39.138668> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.401760, 38.809776, 38.938370>,  <39.428608, 39.015778, 38.818192>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.401760, 38.809776, 38.938370>,  <39.357014, 38.466442, 39.138668>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.401760, 38.809776, 38.938370> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073101, -0.495439, -0.865561,
		-0.991030, 0.133436, 0.007320,
		0.111871, 0.858333, -0.500749,
		39.435322, 39.067276, 38.788143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.895790, 38.440773, 38.477917>,  <39.357014, 38.466442, 39.138668>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.895790, 38.440773, 38.477917> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.123829, 38.750835, 38.369022>,  <39.260654, 38.936874, 38.303684>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.123829, 38.750835, 38.369022>,  <38.895790, 38.440773, 38.477917>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.123829, 38.750835, 38.369022> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054406, -0.295016, -0.953942,
		-0.819771, 0.558655, -0.126016,
		0.570101, 0.775158, -0.272240,
		39.294861, 38.983383, 38.287350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.590664, 38.681984, 37.907948>,  <38.895790, 38.440773, 38.477917>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.590664, 38.681984, 37.907948> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.971607, 38.803627, 37.898766>,  <39.200172, 38.876614, 37.893257>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.971607, 38.803627, 37.898766>,  <38.590664, 38.681984, 37.907948>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.971607, 38.803627, 37.898766> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020668, -0.139447, -0.990014,
		-0.304269, 0.942377, -0.139090,
		0.952362, 0.304105, -0.022953,
		39.257317, 38.894859, 37.891880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.614254, 39.048275, 37.360374>,  <38.590664, 38.681984, 37.907948>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.614254, 39.048275, 37.360374> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.010647, 39.011925, 37.399754>,  <39.248482, 38.990116, 37.423382>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.010647, 39.011925, 37.399754>,  <38.614254, 39.048275, 37.360374>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.010647, 39.011925, 37.399754> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093585, -0.056327, -0.994017,
		0.095878, 0.994268, -0.047314,
		0.990984, -0.090876, 0.098449,
		39.307941, 38.984661, 37.429287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.896622, 39.629551, 36.950493>,  <38.614254, 39.048275, 37.360374>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.896622, 39.629551, 36.950493> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.157547, 39.328331, 36.984890>,  <39.314102, 39.147598, 37.005527>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.157547, 39.328331, 36.984890>,  <38.896622, 39.629551, 36.950493>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.157547, 39.328331, 36.984890> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088183, -0.037279, -0.995406,
		0.752798, 0.656904, 0.042089,
		0.652318, -0.753052, 0.085991,
		39.353241, 39.102417, 37.010689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.404026, 39.747410, 36.479141>,  <38.896622, 39.629551, 36.950493>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.404026, 39.747410, 36.479141> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.428421, 39.352016, 36.534531>,  <39.443058, 39.114780, 36.567764>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.428421, 39.352016, 36.534531>,  <39.404026, 39.747410, 36.479141>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.428421, 39.352016, 36.534531> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001996, -0.138849, -0.990312,
		0.998137, 0.060120, -0.010441,
		0.060988, -0.988487, 0.138470,
		39.446716, 39.055470, 36.576073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.906723, 39.611752, 35.997864>,  <39.404026, 39.747410, 36.479141>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.906723, 39.611752, 35.997864> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.714443, 39.271484, 36.082993>,  <39.599075, 39.067326, 36.134071>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.714443, 39.271484, 36.082993>,  <39.906723, 39.611752, 35.997864>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.714443, 39.271484, 36.082993> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064409, -0.207799, -0.976049,
		0.874518, -0.482892, 0.045098,
		-0.480697, -0.850667, 0.212827,
		39.570232, 39.016285, 36.146839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.267540, 39.062912, 35.717354>,  <39.906723, 39.611752, 35.997864>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.267540, 39.062912, 35.717354> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.903557, 38.901878, 35.757179>,  <39.685169, 38.805260, 35.781075>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.903557, 38.901878, 35.757179>,  <40.267540, 39.062912, 35.717354>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.903557, 38.901878, 35.757179> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090192, -0.042213, -0.995029,
		0.404782, -0.914411, 0.002102,
		-0.909954, -0.402580, 0.099560,
		39.630569, 38.781105, 35.787048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.215847, 38.481018, 35.288406>,  <40.267540, 39.062912, 35.717354>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.215847, 38.481018, 35.288406> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.841537, 38.604473, 35.356602>,  <39.616951, 38.678547, 35.397518>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.841537, 38.604473, 35.356602>,  <40.215847, 38.481018, 35.288406>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.841537, 38.604473, 35.356602> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174032, 0.016240, -0.984606,
		-0.306652, -0.951042, 0.038516,
		-0.935776, 0.308634, 0.170492,
		39.560806, 38.697063, 35.407749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.647869, 38.133488, 35.619102>,  <40.215847, 38.481018, 35.288406>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.647869, 38.133488, 35.619102> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.655113, 38.294136, 35.985352>,  <40.659458, 38.390526, 36.205101>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.655113, 38.294136, 35.985352>,  <40.647869, 38.133488, 35.619102>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.655113, 38.294136, 35.985352> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546557, -0.762862, 0.345423,
		0.837226, -0.506696, 0.205696,
		0.018107, 0.401622, 0.915627,
		40.660545, 38.414623, 36.260040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.835087, 37.595081, 36.089771>,  <40.647869, 38.133488, 35.619102>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.835087, 37.595081, 36.089771> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.628323, 37.877792, 36.282963>,  <40.504265, 38.047421, 36.398876>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.628323, 37.877792, 36.282963>,  <40.835087, 37.595081, 36.089771>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.628323, 37.877792, 36.282963> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607824, -0.700321, 0.374300,
		0.602787, -0.100086, 0.791600,
		-0.516912, 0.706777, 0.482979,
		40.473248, 38.089825, 36.427856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.344856, 37.621517, 36.696064>,  <40.835087, 37.595081, 36.089771>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.344856, 37.621517, 36.696064> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.327255, 37.221958, 36.689610>,  <41.316696, 36.982224, 36.685738>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.327255, 37.221958, 36.689610>,  <41.344856, 37.621517, 36.696064>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.327255, 37.221958, 36.689610> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376324, 0.001614, 0.926486,
		-0.925443, 0.046839, -0.375982,
		-0.044002, -0.998901, -0.016133,
		41.314056, 36.922287, 36.684769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.736145, 37.478344, 36.881729>,  <41.344856, 37.621517, 36.696064>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.736145, 37.478344, 36.881729> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.955109, 37.152039, 36.956417>,  <41.086487, 36.956253, 37.001232>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.955109, 37.152039, 36.956417>,  <40.736145, 37.478344, 36.881729>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.955109, 37.152039, 36.956417> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313460, 0.007006, 0.949576,
		-0.775941, -0.578338, -0.251875,
		0.547411, -0.815767, 0.186722,
		41.119331, 36.907307, 37.012432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.346062, 36.999367, 37.268284>,  <40.736145, 37.478344, 36.881729>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.346062, 36.999367, 37.268284> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.706776, 36.843388, 37.342827>,  <40.923203, 36.749802, 37.387554>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.706776, 36.843388, 37.342827>,  <40.346062, 36.999367, 37.268284>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.706776, 36.843388, 37.342827> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228745, -0.064785, 0.971328,
		-0.366696, -0.918554, -0.147621,
		0.901781, -0.389950, 0.186359,
		40.977310, 36.726402, 37.398735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.125454, 36.395084, 37.640171>,  <40.346062, 36.999367, 37.268284>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.125454, 36.395084, 37.640171> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.502655, 36.510143, 37.707111>,  <40.728977, 36.579178, 37.747276>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.502655, 36.510143, 37.707111>,  <40.125454, 36.395084, 37.640171>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.502655, 36.510143, 37.707111> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183763, 0.030847, 0.982486,
		0.277447, -0.957240, 0.081947,
		0.943003, 0.287647, 0.167347,
		40.785557, 36.596439, 37.757317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.316307, 35.929501, 38.124760>,  <40.125454, 36.395084, 37.640171>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.316307, 35.929501, 38.124760> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.571686, 36.235699, 38.156757>,  <40.724915, 36.419418, 38.175957>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.571686, 36.235699, 38.156757>,  <40.316307, 35.929501, 38.124760>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.571686, 36.235699, 38.156757> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081249, -0.036327, 0.996032,
		0.765363, -0.642416, 0.039003,
		0.638450, 0.765495, 0.079999,
		40.763222, 36.465347, 38.180756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.830257, 35.863235, 38.757195>,  <40.316307, 35.929501, 38.124760>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.830257, 35.863235, 38.757195> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.876202, 36.252960, 38.679714>,  <40.903767, 36.486797, 38.633228>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.876202, 36.252960, 38.679714>,  <40.830257, 35.863235, 38.757195>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.876202, 36.252960, 38.679714> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001987, 0.194763, 0.980848,
		0.993380, -0.113046, 0.020434,
		0.114861, 0.974314, -0.193698,
		40.910660, 36.545254, 38.621605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.440632, 36.154686, 39.208309>,  <40.830257, 35.863235, 38.757195>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.440632, 36.154686, 39.208309> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.207607, 36.458656, 39.092979>,  <41.067791, 36.641037, 39.023781>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.207607, 36.458656, 39.092979>,  <41.440632, 36.154686, 39.208309>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.207607, 36.458656, 39.092979> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004703, 0.357887, 0.933753,
		0.812771, 0.542615, -0.212066,
		-0.582564, 0.759925, -0.288328,
		41.032837, 36.686634, 39.006481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.759109, 36.676979, 39.474133>,  <41.440632, 36.154686, 39.208309>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.759109, 36.676979, 39.474133> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.383541, 36.802505, 39.417641>,  <41.158199, 36.877823, 39.383743>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.383541, 36.802505, 39.417641>,  <41.759109, 36.676979, 39.474133>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.383541, 36.802505, 39.417641> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042687, 0.513435, 0.857066,
		0.341475, 0.798689, -0.495471,
		-0.938921, 0.313816, -0.141232,
		41.101864, 36.896652, 39.375271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.747749, 37.429962, 39.611492>,  <41.759109, 36.676979, 39.474133>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.747749, 37.429962, 39.611492> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.371975, 37.294128, 39.630009>,  <41.146511, 37.212627, 39.641121>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.371975, 37.294128, 39.630009>,  <41.747749, 37.429962, 39.611492>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.371975, 37.294128, 39.630009> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106347, 0.417236, 0.902555,
		-0.325812, 0.842968, -0.428079,
		-0.939434, -0.339588, 0.046294,
		41.090145, 37.192253, 39.643898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.354782, 37.962856, 39.664120>,  <41.747749, 37.429962, 39.611492>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.354782, 37.962856, 39.664120> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.139000, 37.662003, 39.815533>,  <41.009533, 37.481491, 39.906380>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.139000, 37.662003, 39.815533>,  <41.354782, 37.962856, 39.664120>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.139000, 37.662003, 39.815533> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171750, 0.538389, 0.825009,
		-0.824314, 0.380040, -0.419614,
		-0.539451, -0.752135, 0.378530,
		40.977165, 37.436363, 39.929092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.843472, 38.263885, 40.172195>,  <41.354782, 37.962856, 39.664120>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.843472, 38.263885, 40.172195> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.833084, 37.881996, 40.290741>,  <40.826851, 37.652863, 40.361870>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.833084, 37.881996, 40.290741>,  <40.843472, 38.263885, 40.172195>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.833084, 37.881996, 40.290741> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173011, 0.296281, 0.939300,
		-0.984578, -0.026885, -0.172870,
		-0.025965, -0.954722, 0.296363,
		40.825294, 37.595581, 40.379650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.206074, 38.171036, 40.620277>,  <40.843472, 38.263885, 40.172195>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.206074, 38.171036, 40.620277> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.492199, 37.899105, 40.684990>,  <40.663872, 37.735947, 40.723816>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.492199, 37.899105, 40.684990>,  <40.206074, 38.171036, 40.620277>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.492199, 37.899105, 40.684990> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017837, 0.213671, 0.976743,
		-0.698579, -0.701560, 0.140715,
		0.715310, -0.679822, 0.161780,
		40.706791, 37.695160, 40.733524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.133297, 38.314430, 41.276058>,  <40.206074, 38.171036, 40.620277>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.133297, 38.314430, 41.276058> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.429005, 38.046307, 41.250244>,  <40.606430, 37.885433, 41.234756>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.429005, 38.046307, 41.250244>,  <40.133297, 38.314430, 41.276058>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.429005, 38.046307, 41.250244> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164808, 0.087179, 0.982465,
		-0.652929, -0.736944, 0.174921,
		0.739272, -0.670308, -0.064533,
		40.650787, 37.845215, 41.230885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.053066, 37.844898, 41.842957>,  <40.133297, 38.314430, 41.276058>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.053066, 37.844898, 41.842957> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.440388, 37.869873, 41.746212>,  <40.672779, 37.884857, 41.688164>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.440388, 37.869873, 41.746212>,  <40.053066, 37.844898, 41.842957>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.440388, 37.869873, 41.746212> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226850, 0.185557, 0.956090,
		0.104572, -0.980648, 0.165512,
		0.968299, 0.062434, -0.241864,
		40.730877, 37.888603, 41.673653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.821712, 37.125393, 42.247875>,  <40.053066, 37.844898, 41.842957>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.821712, 37.125393, 42.247875> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.482346, 37.085911, 42.455891>,  <39.278725, 37.062222, 42.580700>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.482346, 37.085911, 42.455891>,  <39.821712, 37.125393, 42.247875>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.482346, 37.085911, 42.455891> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485779, -0.245014, -0.839039,
		0.210236, -0.964482, 0.159926,
		-0.848422, -0.098708, 0.520036,
		39.227818, 37.056297, 42.611900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.611050, 36.521286, 42.107346>,  <39.821712, 37.125393, 42.247875>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.611050, 36.521286, 42.107346> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.282959, 36.724854, 42.211823>,  <39.086105, 36.846996, 42.274509>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.282959, 36.724854, 42.211823>,  <39.611050, 36.521286, 42.107346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.282959, 36.724854, 42.211823> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441305, -0.272442, -0.855001,
		-0.363970, -0.816562, 0.448055,
		-0.820229, 0.508923, 0.261192,
		39.036888, 36.877529, 42.290180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.132500, 36.043694, 42.105801>,  <39.611050, 36.521286, 42.107346>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.132500, 36.043694, 42.105801> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.971542, 36.404930, 42.045799>,  <38.874969, 36.621674, 42.009800>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.971542, 36.404930, 42.045799>,  <39.132500, 36.043694, 42.105801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.971542, 36.404930, 42.045799> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475508, -0.346200, -0.808726,
		-0.782287, -0.254098, 0.568737,
		-0.402393, 0.903095, -0.150002,
		38.850826, 36.675858, 42.000797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.405964, 35.877529, 41.965931>,  <39.132500, 36.043694, 42.105801>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.405964, 35.877529, 41.965931> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.456009, 36.254509, 41.841911>,  <38.486034, 36.480698, 41.767502>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.456009, 36.254509, 41.841911>,  <38.405964, 35.877529, 41.965931>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.456009, 36.254509, 41.841911> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638396, -0.162744, -0.752307,
		-0.759472, 0.292053, 0.581298,
		0.125111, 0.942454, -0.310045,
		38.493542, 36.537247, 41.748898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.685112, 36.216618, 41.895950>,  <38.405964, 35.877529, 41.965931>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.685112, 36.216618, 41.895950> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.936172, 36.450596, 41.690472>,  <38.086811, 36.590984, 41.567184>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.936172, 36.450596, 41.690472>,  <37.685112, 36.216618, 41.895950>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.936172, 36.450596, 41.690472> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606565, -0.046172, -0.793692,
		-0.487986, 0.809757, 0.325828,
		0.627654, 0.584946, -0.513701,
		38.124470, 36.626080, 41.536362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.307735, 36.642170, 41.625771>,  <37.685112, 36.216618, 41.895950>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.307735, 36.642170, 41.625771> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.631683, 36.671768, 41.393002>,  <37.826054, 36.689526, 41.253342>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.631683, 36.671768, 41.393002>,  <37.307735, 36.642170, 41.625771>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.631683, 36.671768, 41.393002> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580211, -0.045039, -0.813220,
		-0.086384, 0.996241, 0.006458,
		0.809872, 0.073997, -0.581921,
		37.874645, 36.693966, 41.218426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.120647, 37.207043, 41.091251>,  <37.307735, 36.642170, 41.625771>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.120647, 37.207043, 41.091251> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.403271, 36.951828, 40.968815>,  <37.572845, 36.798698, 40.895355>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.403271, 36.951828, 40.968815>,  <37.120647, 37.207043, 41.091251>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.403271, 36.951828, 40.968815> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502005, -0.147053, -0.852271,
		0.498768, 0.755834, -0.424199,
		0.706556, -0.638036, -0.306087,
		37.615238, 36.760418, 40.876987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.085632, 37.396091, 40.418297>,  <37.120647, 37.207043, 41.091251>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.085632, 37.396091, 40.418297> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.308750, 37.064732, 40.397854>,  <37.442623, 36.865913, 40.385590>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.308750, 37.064732, 40.397854>,  <37.085632, 37.396091, 40.418297>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.308750, 37.064732, 40.397854> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418678, -0.227676, -0.879132,
		0.716639, 0.511774, -0.473830,
		0.557797, -0.828403, -0.051107,
		37.476089, 36.816212, 40.382523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.408974, 37.330269, 39.684231>,  <37.085632, 37.396091, 40.418297>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.408974, 37.330269, 39.684231> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.421387, 36.956768, 39.826862>,  <37.428833, 36.732670, 39.912441>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.421387, 36.956768, 39.826862>,  <37.408974, 37.330269, 39.684231>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.421387, 36.956768, 39.826862> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439162, -0.333212, -0.834330,
		0.897872, -0.130705, -0.420408,
		0.031034, -0.933749, 0.356582,
		37.430698, 36.676643, 39.933838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.855106, 36.833298, 39.237186>,  <37.408974, 37.330269, 39.684231>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.855106, 36.833298, 39.237186> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.600002, 36.607216, 39.446491>,  <37.446941, 36.471565, 39.572075>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.600002, 36.607216, 39.446491>,  <37.855106, 36.833298, 39.237186>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.600002, 36.607216, 39.446491> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328775, -0.414594, -0.848539,
		0.696540, -0.713201, 0.078587,
		-0.637761, -0.565204, 0.523264,
		37.408672, 36.437656, 39.603470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.102016, 36.204025, 39.147873>,  <37.855106, 36.833298, 39.237186>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.102016, 36.204025, 39.147873> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.712536, 36.162056, 39.228760>,  <37.478848, 36.136875, 39.277294>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.712536, 36.162056, 39.228760>,  <38.102016, 36.204025, 39.147873>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.712536, 36.162056, 39.228760> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131732, -0.464900, -0.875508,
		0.185871, -0.879124, 0.438854,
		-0.973704, -0.104920, 0.202220,
		37.420425, 36.130581, 39.289425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.977661, 35.484295, 39.201141>,  <38.102016, 36.204025, 39.147873>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.977661, 35.484295, 39.201141> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.654213, 35.690960, 39.088573>,  <37.460144, 35.814960, 39.021034>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.654213, 35.690960, 39.088573>,  <37.977661, 35.484295, 39.201141>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.654213, 35.690960, 39.088573> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077778, -0.568006, -0.819341,
		-0.583176, -0.640643, 0.499483,
		-0.808614, 0.516669, -0.281419,
		37.411629, 35.845959, 39.004147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<40.915382, 37.898388, 45.827217> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.570263, 38.097263, 45.790581>,  <40.363194, 38.216591, 45.768600>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.570263, 38.097263, 45.790581>,  <40.915382, 37.898388, 45.827217>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.570263, 38.097263, 45.790581> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355475, -0.725439, -0.589385,
		-0.359477, -0.475962, 0.802644,
		-0.862794, 0.497190, -0.091587,
		40.311424, 38.246422, 45.763103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.349556, 37.449734, 46.021812>,  <40.915382, 37.898388, 45.827217>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.349556, 37.449734, 46.021812> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.166283, 37.738834, 45.814854>,  <40.056320, 37.912292, 45.690678>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.166283, 37.738834, 45.814854>,  <40.349556, 37.449734, 46.021812>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.166283, 37.738834, 45.814854> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510260, -0.690497, -0.512688,
		-0.727807, 0.029103, 0.685164,
		-0.458184, 0.722750, -0.517398,
		40.028828, 37.955658, 45.659634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.573059, 37.256344, 45.893986>,  <40.349556, 37.449734, 46.021812>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.573059, 37.256344, 45.893986> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.636330, 37.535969, 45.615047>,  <39.674294, 37.703743, 45.447685>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.636330, 37.535969, 45.615047>,  <39.573059, 37.256344, 45.893986>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.636330, 37.535969, 45.615047> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538856, -0.530690, -0.654218,
		-0.827414, 0.479255, 0.292748,
		0.158179, 0.699058, -0.697350,
		39.683784, 37.745686, 45.405842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.965836, 37.308163, 45.499088>,  <39.573059, 37.256344, 45.893986>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.965836, 37.308163, 45.499088> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.243847, 37.451992, 45.250042>,  <39.410652, 37.538292, 45.100616>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.243847, 37.451992, 45.250042>,  <38.965836, 37.308163, 45.499088>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.243847, 37.451992, 45.250042> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447851, -0.460933, -0.766140,
		-0.562469, 0.811323, -0.159322,
		0.695023, 0.359578, -0.622612,
		39.452354, 37.559864, 45.063259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.607151, 37.507935, 44.948574>,  <38.965836, 37.308163, 45.499088>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.607151, 37.507935, 44.948574> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.965691, 37.525764, 44.772133>,  <39.180813, 37.536461, 44.666267>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.965691, 37.525764, 44.772133>,  <38.607151, 37.507935, 44.948574>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.965691, 37.525764, 44.772133> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416168, -0.258410, -0.871796,
		-0.152846, 0.965006, -0.213075,
		0.896349, 0.044576, -0.441102,
		39.234596, 37.539139, 44.639801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.534149, 37.908577, 44.328587>,  <38.607151, 37.507935, 44.948574>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.534149, 37.908577, 44.328587> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.847900, 37.664314, 44.285049>,  <39.036152, 37.517757, 44.258926>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.847900, 37.664314, 44.285049>,  <38.534149, 37.908577, 44.328587>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.847900, 37.664314, 44.285049> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303756, -0.225172, -0.925759,
		0.540811, 0.759210, -0.362111,
		0.784383, -0.610654, -0.108838,
		39.083214, 37.481117, 44.252399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.952820, 38.156487, 43.830986>,  <38.534149, 37.908577, 44.328587>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.952820, 38.156487, 43.830986> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.060284, 37.771664, 43.850006>,  <39.124763, 37.540768, 43.861420>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.060284, 37.771664, 43.850006>,  <38.952820, 38.156487, 43.830986>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.060284, 37.771664, 43.850006> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193006, -0.102133, -0.975868,
		0.943700, 0.253001, -0.213123,
		0.268662, -0.962060, 0.047552,
		39.140881, 37.483047, 43.864273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.487606, 38.039639, 43.256557>,  <38.952820, 38.156487, 43.830986>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.487606, 38.039639, 43.256557> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.323879, 37.686684, 43.349384>,  <39.225643, 37.474911, 43.405083>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.323879, 37.686684, 43.349384>,  <39.487606, 38.039639, 43.256557>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.323879, 37.686684, 43.349384> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165716, -0.178225, -0.969935,
		0.897216, -0.435469, -0.073275,
		-0.409318, -0.882385, 0.232071,
		39.201084, 37.421967, 43.419006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.950176, 37.477772, 42.972511>,  <39.487606, 38.039639, 43.256557>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.950176, 37.477772, 42.972511> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.573734, 37.354931, 43.029087>,  <39.347870, 37.281227, 43.063034>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.573734, 37.354931, 43.029087>,  <39.950176, 37.477772, 42.972511>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.573734, 37.354931, 43.029087> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079696, -0.205053, -0.975501,
		0.328583, -0.929322, 0.168502,
		-0.941106, -0.307104, 0.141441,
		39.291401, 37.262798, 43.071518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.515491, 37.291088, 42.408741>,  <39.950176, 37.477772, 42.972511>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.515491, 37.291088, 42.408741> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.792278, 37.528629, 42.244541>,  <40.958351, 37.671154, 42.146023>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.792278, 37.528629, 42.244541>,  <40.515491, 37.291088, 42.408741>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.792278, 37.528629, 42.244541> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304900, 0.275012, 0.911814,
		0.654379, -0.756111, 0.009234,
		0.691972, 0.593856, -0.410500,
		40.999870, 37.706787, 42.121391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.060520, 37.202522, 42.848560>,  <40.515491, 37.291088, 42.408741>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.060520, 37.202522, 42.848560> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.143276, 37.534588, 42.641472>,  <41.192928, 37.733826, 42.517220>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.143276, 37.534588, 42.641472>,  <41.060520, 37.202522, 42.848560>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.143276, 37.534588, 42.641472> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548568, 0.339733, 0.763973,
		0.810106, -0.442059, -0.385113,
		0.206886, 0.830160, -0.517719,
		41.205341, 37.783634, 42.486156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.699120, 37.366661, 43.157124>,  <41.060520, 37.202522, 42.848560>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.699120, 37.366661, 43.157124> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.581642, 37.696999, 42.964569>,  <41.511154, 37.895199, 42.849037>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.581642, 37.696999, 42.964569>,  <41.699120, 37.366661, 43.157124>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.581642, 37.696999, 42.964569> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537065, 0.559155, 0.631590,
		0.790761, -0.073039, -0.607751,
		-0.293696, 0.825839, -0.481385,
		41.493534, 37.944752, 42.820152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.281483, 37.810150, 43.101265>,  <41.699120, 37.366661, 43.157124>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.281483, 37.810150, 43.101265> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.988625, 38.074345, 43.034653>,  <41.812912, 38.232861, 42.994686>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.988625, 38.074345, 43.034653>,  <42.281483, 37.810150, 43.101265>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.988625, 38.074345, 43.034653> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405736, 0.619249, 0.672242,
		0.547127, 0.424609, -0.721359,
		-0.732141, 0.660483, -0.166528,
		41.768982, 38.272491, 42.984695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.554394, 38.421249, 42.909615>,  <42.281483, 37.810150, 43.101265>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.554394, 38.421249, 42.909615> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.199776, 38.521725, 43.065018>,  <41.987003, 38.582008, 43.158260>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.199776, 38.521725, 43.065018>,  <42.554394, 38.421249, 42.909615>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.199776, 38.521725, 43.065018> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456630, 0.610021, 0.647583,
		-0.074336, 0.751518, -0.655511,
		-0.886545, 0.251187, 0.388513,
		41.933811, 38.597080, 43.181572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.625290, 39.130032, 42.997406>,  <42.554394, 38.421249, 42.909615>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.625290, 39.130032, 42.997406> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.335205, 39.006287, 43.243450>,  <42.161152, 38.932041, 43.391075>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.335205, 39.006287, 43.243450>,  <42.625290, 39.130032, 42.997406>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.335205, 39.006287, 43.243450> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246552, 0.717452, 0.651517,
		-0.642864, 0.624147, -0.444035,
		-0.725216, -0.309359, 0.615108,
		42.117641, 38.913479, 43.427982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.290813, 39.750729, 43.164082>,  <42.625290, 39.130032, 42.997406>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.290813, 39.750729, 43.164082> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.188267, 39.494183, 43.453335>,  <42.126740, 39.340256, 43.626888>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.188267, 39.494183, 43.453335>,  <42.290813, 39.750729, 43.164082>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.188267, 39.494183, 43.453335> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146600, 0.713684, 0.684955,
		-0.955397, 0.281614, -0.088943,
		-0.256370, -0.641365, 0.723136,
		42.111355, 39.301773, 43.670277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.964970, 40.198872, 43.576473>,  <42.290813, 39.750729, 43.164082>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.964970, 40.198872, 43.576473> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.050007, 39.891247, 43.817585>,  <42.101028, 39.706673, 43.962254>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.050007, 39.891247, 43.817585>,  <41.964970, 40.198872, 43.576473>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.050007, 39.891247, 43.817585> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135290, 0.634106, 0.761318,
		-0.967729, -0.080304, 0.238857,
		0.212598, -0.769064, 0.602779,
		42.113785, 39.660526, 43.998417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.730118, 40.383190, 44.243031>,  <41.964970, 40.198872, 43.576473>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.730118, 40.383190, 44.243031> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.941452, 40.060608, 44.349236>,  <42.068253, 39.867058, 44.412960>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.941452, 40.060608, 44.349236>,  <41.730118, 40.383190, 44.243031>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.941452, 40.060608, 44.349236> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242207, 0.442887, 0.863242,
		-0.813757, -0.391769, 0.429320,
		0.528332, -0.806454, 0.265513,
		42.099953, 39.818672, 44.428890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.580578, 40.224720, 44.881191>,  <41.730118, 40.383190, 44.243031>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.580578, 40.224720, 44.881191> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.938759, 40.059113, 44.815758>,  <42.153667, 39.959747, 44.776497>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.938759, 40.059113, 44.815758>,  <41.580578, 40.224720, 44.881191>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.938759, 40.059113, 44.815758> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365992, 0.475485, 0.799978,
		-0.253424, -0.776210, 0.577299,
		0.895447, -0.414020, -0.163587,
		42.207394, 39.934906, 44.766682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.994671, 40.171219, 45.577961>,  <41.580578, 40.224720, 44.881191>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.994671, 40.171219, 45.577961> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.269276, 40.134178, 45.289478>,  <42.434036, 40.111954, 45.116390>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.269276, 40.134178, 45.289478>,  <41.994671, 40.171219, 45.577961>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.269276, 40.134178, 45.289478> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638364, 0.551641, 0.536827,
		0.348135, -0.828926, 0.437817,
		0.686508, -0.092599, -0.721202,
		42.475227, 40.106400, 45.073116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.593468, 39.897072, 45.899857>,  <41.994671, 40.171219, 45.577961>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.593468, 39.897072, 45.899857> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.740723, 40.083054, 45.577789>,  <42.829075, 40.194641, 45.384548>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.740723, 40.083054, 45.577789>,  <42.593468, 39.897072, 45.899857>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.740723, 40.083054, 45.577789> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703416, 0.427028, 0.568202,
		0.608016, -0.775544, -0.169850,
		0.368135, 0.464951, -0.805170,
		42.851162, 40.222538, 45.336239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.232922, 40.007381, 46.142761>,  <42.593468, 39.897072, 45.899857>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.232922, 40.007381, 46.142761> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.186127, 40.244762, 45.824230>,  <43.158051, 40.387192, 45.633114>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.186127, 40.244762, 45.824230>,  <43.232922, 40.007381, 46.142761>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.186127, 40.244762, 45.824230> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512632, 0.722837, 0.463374,
		0.850601, -0.354012, -0.388784,
		-0.116988, 0.593450, -0.796324,
		43.151031, 40.422798, 45.585335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.942097, 40.185585, 45.978458>,  <43.232922, 40.007381, 46.142761>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.942097, 40.185585, 45.978458> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.703503, 40.464066, 45.818703>,  <43.560345, 40.631153, 45.722851>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.703503, 40.464066, 45.818703>,  <43.942097, 40.185585, 45.978458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.703503, 40.464066, 45.818703> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407614, 0.691416, 0.596486,
		0.691416, 0.193000, -0.696201,
		-0.596486, 0.696201, -0.399386,
		43.524555, 40.672924, 45.698887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<36.122803, 44.207577, 45.383663> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.273205, 43.893162, 45.579933>,  <36.363445, 43.704514, 45.697697>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.273205, 43.893162, 45.579933>,  <36.122803, 44.207577, 45.383663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.273205, 43.893162, 45.579933> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152200, -0.469952, -0.869471,
		0.914033, 0.401606, -0.057068,
		0.376004, -0.786040, 0.490676,
		36.386005, 43.657349, 45.727135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.678425, 44.007679, 45.086243>,  <36.122803, 44.207577, 45.383663>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.678425, 44.007679, 45.086243> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.539387, 43.673901, 45.257298>,  <36.455963, 43.473633, 45.359932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.539387, 43.673901, 45.257298>,  <36.678425, 44.007679, 45.086243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.539387, 43.673901, 45.257298> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108620, -0.488845, -0.865582,
		0.931331, -0.254425, 0.260560,
		-0.347599, -0.834445, 0.427641,
		36.435108, 43.423569, 45.385590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.006344, 43.453331, 44.807701>,  <36.678425, 44.007679, 45.086243>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.006344, 43.453331, 44.807701> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.716721, 43.242519, 44.985680>,  <36.542946, 43.116032, 45.092468>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.716721, 43.242519, 44.985680>,  <37.006344, 43.453331, 44.807701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.716721, 43.242519, 44.985680> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100298, -0.718693, -0.688055,
		0.682407, -0.453565, 0.573236,
		-0.724059, -0.527028, 0.444950,
		36.499504, 43.084412, 45.119164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.214226, 42.719788, 44.828201>,  <37.006344, 43.453331, 44.807701>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.214226, 42.719788, 44.828201> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.816917, 42.687756, 44.861679>,  <36.578533, 42.668537, 44.881767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.816917, 42.687756, 44.861679>,  <37.214226, 42.719788, 44.828201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.816917, 42.687756, 44.861679> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014488, -0.630961, -0.775680,
		0.114926, -0.771671, 0.625553,
		-0.993269, -0.080083, 0.083693,
		36.518936, 42.663731, 44.886787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.075294, 42.051041, 44.471771>,  <37.214226, 42.719788, 44.828201>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.075294, 42.051041, 44.471771> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.712116, 42.215012, 44.506653>,  <36.494209, 42.313393, 44.527584>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.712116, 42.215012, 44.506653>,  <37.075294, 42.051041, 44.471771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.712116, 42.215012, 44.506653> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278194, -0.433863, -0.856954,
		-0.313450, -0.802325, 0.507960,
		-0.907941, 0.409923, 0.087207,
		36.439735, 42.337990, 44.532814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.761230, 41.495670, 44.366840>,  <37.075294, 42.051041, 44.471771>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.761230, 41.495670, 44.366840> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.527958, 41.809662, 44.283222>,  <36.387993, 41.998058, 44.233051>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.527958, 41.809662, 44.283222>,  <36.761230, 41.495670, 44.366840>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.527958, 41.809662, 44.283222> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358086, -0.479406, -0.801214,
		-0.729157, -0.392398, 0.560673,
		-0.583184, 0.784980, -0.209050,
		36.353001, 42.045155, 44.220509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.124073, 41.242580, 44.210976>,  <36.761230, 41.495670, 44.366840>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.124073, 41.242580, 44.210976> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.132675, 41.604095, 44.039997>,  <36.137836, 41.821003, 43.937412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.132675, 41.604095, 44.039997>,  <36.124073, 41.242580, 44.210976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.132675, 41.604095, 44.039997> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245312, -0.409701, -0.878617,
		-0.969206, 0.123752, 0.212899,
		0.021506, 0.903787, -0.427443,
		36.139126, 41.875233, 43.911766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.504818, 41.317638, 43.972961>,  <36.124073, 41.242580, 44.210976>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.504818, 41.317638, 43.972961> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.689426, 41.612537, 43.775593>,  <35.800194, 41.789474, 43.657173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.689426, 41.612537, 43.775593>,  <35.504818, 41.317638, 43.972961>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.689426, 41.612537, 43.775593> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356481, -0.355195, -0.864152,
		-0.812352, 0.574723, 0.098882,
		0.461526, 0.737245, -0.493421,
		35.827885, 41.833710, 43.627567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.968315, 41.569878, 43.663715>,  <35.504818, 41.317638, 43.972961>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.968315, 41.569878, 43.663715> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.302589, 41.666855, 43.466595>,  <35.503155, 41.725040, 43.348320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.302589, 41.666855, 43.466595>,  <34.968315, 41.569878, 43.663715>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.302589, 41.666855, 43.466595> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326462, -0.502284, -0.800708,
		-0.441650, 0.830020, -0.340604,
		0.835684, 0.242438, -0.492804,
		35.553295, 41.739586, 43.318752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.774704, 41.971939, 42.947239>,  <34.968315, 41.569878, 43.663715>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.774704, 41.971939, 42.947239> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.135906, 41.804871, 42.906979>,  <35.352627, 41.704632, 42.882820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.135906, 41.804871, 42.906979>,  <34.774704, 41.971939, 42.947239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.135906, 41.804871, 42.906979> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250899, -0.322493, -0.912715,
		0.348751, 0.849442, -0.396006,
		0.903007, -0.417668, -0.100654,
		35.406807, 41.679569, 42.876781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.889496, 42.109035, 42.154755>,  <34.774704, 41.971939, 42.947239>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.889496, 42.109035, 42.154755> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.154068, 41.834194, 42.275021>,  <35.312813, 41.669289, 42.347179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.154068, 41.834194, 42.275021>,  <34.889496, 42.109035, 42.154755>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.154068, 41.834194, 42.275021> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105425, -0.482084, -0.869759,
		0.742559, 0.543589, -0.391303,
		0.661432, -0.687100, 0.300668,
		35.352497, 41.628063, 42.365219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.398926, 42.226513, 41.674103>,  <34.889496, 42.109035, 42.154755>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.398926, 42.226513, 41.674103> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.410995, 41.849712, 41.807800>,  <35.418236, 41.623631, 41.888020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.410995, 41.849712, 41.807800>,  <35.398926, 42.226513, 41.674103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.410995, 41.849712, 41.807800> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105567, -0.335528, -0.936096,
		0.993954, -0.007041, -0.109568,
		0.030172, -0.942004, 0.334243,
		35.420048, 41.567112, 41.908073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.647060, 41.920334, 41.160881>,  <35.398926, 42.226513, 41.674103>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.647060, 41.920334, 41.160881> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.524544, 41.602898, 41.371174>,  <35.451035, 41.412437, 41.497349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.524544, 41.602898, 41.371174>,  <35.647060, 41.920334, 41.160881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.524544, 41.602898, 41.371174> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267531, -0.458261, -0.847599,
		0.913572, -0.400261, -0.071951,
		-0.306289, -0.793592, 0.525736,
		35.432655, 41.364819, 41.528896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.953358, 41.373543, 40.893139>,  <35.647060, 41.920334, 41.160881>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.953358, 41.373543, 40.893139> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.630024, 41.220165, 41.071831>,  <35.436024, 41.128139, 41.179047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.630024, 41.220165, 41.071831>,  <35.953358, 41.373543, 40.893139>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.630024, 41.220165, 41.071831> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241824, -0.475587, -0.845776,
		0.536767, -0.791699, 0.291707,
		-0.808333, -0.383443, 0.446732,
		35.387524, 41.105133, 41.205849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.641739, 41.107494, 40.978180>,  <35.953358, 41.373543, 40.893139>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.641739, 41.107494, 40.978180> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.745659, 41.272305, 40.628841>,  <36.808010, 41.371189, 40.419239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.745659, 41.272305, 40.628841>,  <36.641739, 41.107494, 40.978180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.745659, 41.272305, 40.628841> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455449, 0.745214, 0.487055,
		0.851512, -0.524302, 0.005949,
		0.259797, 0.412024, -0.873351,
		36.823597, 41.395912, 40.366837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.331291, 41.272285, 41.085663>,  <36.641739, 41.107494, 40.978180>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.331291, 41.272285, 41.085663> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.286407, 41.493050, 40.755135>,  <37.259480, 41.625507, 40.556816>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.286407, 41.493050, 40.755135>,  <37.331291, 41.272285, 41.085663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.286407, 41.493050, 40.755135> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482042, 0.757407, 0.440421,
		0.868934, -0.348905, -0.351027,
		-0.112205, 0.551906, -0.826323,
		37.252747, 41.658623, 40.507236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.966152, 41.485790, 40.804874>,  <37.331291, 41.272285, 41.085663>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.966152, 41.485790, 40.804874> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.685551, 41.755981, 40.713989>,  <37.517189, 41.918095, 40.659458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.685551, 41.755981, 40.713989>,  <37.966152, 41.485790, 40.804874>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.685551, 41.755981, 40.713989> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441974, 0.662450, 0.604830,
		0.559066, 0.323867, -0.763253,
		-0.701501, 0.675478, -0.227213,
		37.475101, 41.958626, 40.645824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.312790, 42.093071, 40.631851>,  <37.966152, 41.485790, 40.804874>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.312790, 42.093071, 40.631851> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.936626, 42.190338, 40.726933>,  <37.710930, 42.248699, 40.783981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.936626, 42.190338, 40.726933>,  <38.312790, 42.093071, 40.631851>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.936626, 42.190338, 40.726933> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339475, 0.712017, 0.614645,
		-0.019788, 0.658712, -0.752135,
		-0.940407, 0.243168, 0.237706,
		37.654503, 42.263290, 40.798244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.290161, 42.840618, 40.630325>,  <38.312790, 42.093071, 40.631851>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.290161, 42.840618, 40.630325> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.955997, 42.752613, 40.831795>,  <37.755501, 42.699810, 40.952675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.955997, 42.752613, 40.831795>,  <38.290161, 42.840618, 40.630325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.955997, 42.752613, 40.831795> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175902, 0.761165, 0.624248,
		-0.520722, 0.610099, -0.597183,
		-0.835409, -0.220014, 0.503673,
		37.705376, 42.686607, 40.982895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.073029, 43.497227, 40.895279>,  <38.290161, 42.840618, 40.630325>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.073029, 43.497227, 40.895279> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.887878, 43.210831, 41.104317>,  <37.776791, 43.038994, 41.229740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.887878, 43.210831, 41.104317>,  <38.073029, 43.497227, 40.895279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.887878, 43.210831, 41.104317> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150942, 0.517284, 0.842397,
		-0.873479, 0.468805, -0.131364,
		-0.462873, -0.715988, 0.522599,
		37.749016, 42.996033, 41.261097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.654076, 43.906471, 41.353996>,  <38.073029, 43.497227, 40.895279>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.654076, 43.906471, 41.353996> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.673119, 43.548649, 41.531757>,  <37.684544, 43.333954, 41.638416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.673119, 43.548649, 41.531757>,  <37.654076, 43.906471, 41.353996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.673119, 43.548649, 41.531757> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079122, 0.446888, 0.891084,
		-0.995728, -0.007260, 0.092054,
		0.047607, -0.894560, 0.444405,
		37.687401, 43.280281, 41.665077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.116917, 43.943836, 41.981155>,  <37.654076, 43.906471, 41.353996>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.116917, 43.943836, 41.981155> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.385746, 43.657661, 42.057541>,  <37.547043, 43.485958, 42.103374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.385746, 43.657661, 42.057541>,  <37.116917, 43.943836, 41.981155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.385746, 43.657661, 42.057541> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153618, 0.386995, 0.909196,
		-0.724372, -0.581713, 0.369994,
		0.672076, -0.715433, 0.190967,
		37.587368, 43.443031, 42.114830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.049831, 43.833862, 42.657990>,  <37.116917, 43.943836, 41.981155>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.049831, 43.833862, 42.657990> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.393311, 43.631798, 42.623463>,  <37.599400, 43.510559, 42.602745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.393311, 43.631798, 42.623463>,  <37.049831, 43.833862, 42.657990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.393311, 43.631798, 42.623463> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291310, 0.342560, 0.893192,
		-0.421633, -0.792129, 0.441314,
		0.858699, -0.505159, -0.086321,
		37.650921, 43.480251, 42.597565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.088623, 43.404694, 43.231438>,  <37.049831, 43.833862, 42.657990>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.088623, 43.404694, 43.231438> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.460350, 43.453117, 43.091888>,  <37.683388, 43.482170, 43.008160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.460350, 43.453117, 43.091888>,  <37.088623, 43.404694, 43.231438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.460350, 43.453117, 43.091888> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298996, 0.307761, 0.903264,
		0.216716, -0.943731, 0.249812,
		0.929320, 0.121059, -0.348868,
		37.739147, 43.489437, 42.987228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.442505, 42.889420, 43.614483>,  <37.088623, 43.404694, 43.231438>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.442505, 42.889420, 43.614483> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.718918, 43.114658, 43.433197>,  <37.884766, 43.249802, 43.324425>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.718918, 43.114658, 43.433197>,  <37.442505, 42.889420, 43.614483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.718918, 43.114658, 43.433197> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554242, -0.010291, 0.832292,
		0.463997, -0.826327, -0.319204,
		0.691030, 0.563097, -0.453210,
		37.926228, 43.283588, 43.297234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.086178, 42.585213, 43.700722>,  <37.442505, 42.889420, 43.614483>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.086178, 42.585213, 43.700722> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.143948, 42.979088, 43.661674>,  <38.178612, 43.215412, 43.638248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.143948, 42.979088, 43.661674>,  <38.086178, 42.585213, 43.700722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.143948, 42.979088, 43.661674> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447041, 0.023077, 0.894215,
		0.882777, -0.172788, -0.436864,
		0.144428, 0.984689, -0.097616,
		38.187275, 43.274494, 43.632389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.769516, 42.677433, 43.972412>,  <38.086178, 42.585213, 43.700722>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.769516, 42.677433, 43.972412> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.593784, 43.036572, 43.984150>,  <38.488346, 43.252056, 43.991192>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.593784, 43.036572, 43.984150>,  <38.769516, 42.677433, 43.972412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.593784, 43.036572, 43.984150> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298708, 0.115201, 0.947366,
		0.847211, 0.424968, -0.318805,
		-0.439327, 0.897848, 0.029342,
		38.461987, 43.305927, 43.992954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.277931, 43.096680, 44.129463>,  <38.769516, 42.677433, 43.972412>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.277931, 43.096680, 44.129463> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.946945, 43.269611, 44.272789>,  <38.748352, 43.373371, 44.358784>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.946945, 43.269611, 44.272789>,  <39.277931, 43.096680, 44.129463>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.946945, 43.269611, 44.272789> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473740, 0.194946, 0.858817,
		0.301437, 0.880392, -0.366123,
		-0.827469, 0.432327, 0.358313,
		38.698704, 43.399311, 44.380283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.879257, 43.105114, 43.574776>,  <39.277931, 43.096680, 44.129463>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.879257, 43.105114, 43.574776> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.221893, 42.921997, 43.670006>,  <40.427475, 42.812126, 43.727146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.221893, 42.921997, 43.670006>,  <39.879257, 43.105114, 43.574776>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.221893, 42.921997, 43.670006> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117821, -0.622735, -0.773511,
		0.502363, 0.634533, -0.587367,
		0.856592, -0.457788, 0.238077,
		40.478870, 42.784660, 43.741428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.060188, 42.922523, 42.964672>,  <39.879257, 43.105114, 43.574776>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.060188, 42.922523, 42.964672> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.269882, 42.685444, 43.209255>,  <40.395699, 42.543194, 43.356007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.269882, 42.685444, 43.209255>,  <40.060188, 42.922523, 42.964672>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.269882, 42.685444, 43.209255> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055804, -0.692583, -0.719176,
		0.849745, 0.411137, -0.329999,
		0.524232, -0.592701, 0.611462,
		40.427151, 42.507633, 43.392693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.558685, 42.586300, 42.514069>,  <40.060188, 42.922523, 42.964672>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.558685, 42.586300, 42.514069> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.554966, 42.357025, 42.841820>,  <40.552734, 42.219460, 43.038471>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.554966, 42.357025, 42.841820>,  <40.558685, 42.586300, 42.514069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.554966, 42.357025, 42.841820> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018772, -0.819164, -0.573251,
		0.999780, -0.020714, -0.003139,
		-0.009303, -0.573184, 0.819373,
		40.552174, 42.185070, 43.087631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.016567, 42.018452, 42.434875>,  <40.558685, 42.586300, 42.514069>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.016567, 42.018452, 42.434875> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.802601, 41.885231, 42.745472>,  <40.674221, 41.805298, 42.931831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.802601, 41.885231, 42.745472>,  <41.016567, 42.018452, 42.434875>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.802601, 41.885231, 42.745472> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138517, -0.872027, -0.469447,
		0.833475, -0.358672, 0.420327,
		-0.534914, -0.333050, 0.776495,
		40.642128, 41.785316, 42.978420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.298916, 41.384850, 42.595375>,  <41.016567, 42.018452, 42.434875>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.298916, 41.384850, 42.595375> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.917755, 41.381504, 42.716637>,  <40.689056, 41.379498, 42.789394>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.917755, 41.381504, 42.716637>,  <41.298916, 41.384850, 42.595375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.917755, 41.381504, 42.716637> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163114, -0.828594, -0.535562,
		0.255673, -0.559788, 0.788206,
		-0.952903, -0.008361, 0.303159,
		40.631886, 41.378994, 42.807583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.135586, 40.738552, 42.740585>,  <41.298916, 41.384850, 42.595375>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.135586, 40.738552, 42.740585> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.762375, 40.881489, 42.723751>,  <40.538448, 40.967251, 42.713650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.762375, 40.881489, 42.723751>,  <41.135586, 40.738552, 42.740585>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.762375, 40.881489, 42.723751> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265476, -0.762628, -0.589849,
		-0.242870, -0.539172, 0.806417,
		-0.933026, 0.357341, -0.042082,
		40.482468, 40.988689, 42.711124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.651558, 40.187790, 42.831188>,  <41.135586, 40.738552, 42.740585>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.651558, 40.187790, 42.831188> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.451683, 40.482586, 42.649132>,  <40.331757, 40.659462, 42.539898>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.451683, 40.482586, 42.649132>,  <40.651558, 40.187790, 42.831188>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.451683, 40.482586, 42.649132> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382041, -0.659091, -0.647799,
		-0.777401, -0.149817, 0.610903,
		-0.499692, 0.736990, -0.455141,
		40.301777, 40.703682, 42.512589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.956291, 39.979088, 42.729038>,  <40.651558, 40.187790, 42.831188>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.956291, 39.979088, 42.729038> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.969879, 40.287136, 42.474239>,  <39.978031, 40.471966, 42.321362>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.969879, 40.287136, 42.474239>,  <39.956291, 39.979088, 42.729038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.969879, 40.287136, 42.474239> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332140, -0.592438, -0.733962,
		-0.942618, 0.236506, 0.235661,
		0.033973, 0.770119, -0.636996,
		39.980072, 40.518173, 42.283142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.327831, 39.929852, 42.378834>,  <39.956291, 39.979088, 42.729038>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.327831, 39.929852, 42.378834> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.565300, 40.147633, 42.141808>,  <39.707779, 40.278301, 41.999592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.565300, 40.147633, 42.141808>,  <39.327831, 39.929852, 42.378834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.565300, 40.147633, 42.141808> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304422, -0.529692, -0.791678,
		-0.744907, 0.650382, -0.148717,
		0.593668, 0.544454, -0.592561,
		39.743401, 40.310970, 41.964039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.902168, 40.289906, 41.983131>,  <39.327831, 39.929852, 42.378834>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.902168, 40.289906, 41.983131> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.257412, 40.292877, 41.799301>,  <39.470558, 40.294659, 41.689003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.257412, 40.292877, 41.799301>,  <38.902168, 40.289906, 41.983131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.257412, 40.292877, 41.799301> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452748, -0.158272, -0.877479,
		-0.079252, 0.987368, -0.137201,
		0.888109, 0.007424, -0.459572,
		39.523846, 40.295105, 41.661430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.790810, 40.774509, 41.432133>,  <38.902168, 40.289906, 41.983131>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.790810, 40.774509, 41.432133> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.109814, 40.547375, 41.350605>,  <39.301216, 40.411095, 41.301689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.109814, 40.547375, 41.350605>,  <38.790810, 40.774509, 41.432133>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.109814, 40.547375, 41.350605> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407546, -0.257953, -0.875995,
		0.444850, 0.781676, -0.437140,
		0.797505, -0.567841, -0.203818,
		39.349064, 40.377022, 41.289459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.922588, 41.003181, 40.756504>,  <38.790810, 40.774509, 41.432133>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.922588, 41.003181, 40.756504> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.152798, 40.677895, 40.791023>,  <39.290924, 40.482723, 40.811733>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.152798, 40.677895, 40.791023>,  <38.922588, 41.003181, 40.756504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.152798, 40.677895, 40.791023> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189339, -0.235158, -0.953337,
		0.795567, 0.532327, -0.289313,
		0.575521, -0.813221, 0.086293,
		39.325455, 40.433929, 40.816910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.410908, 41.039440, 40.161831>,  <38.922588, 41.003181, 40.756504>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.410908, 41.039440, 40.161831> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.374367, 40.661743, 40.288361>,  <39.352440, 40.435123, 40.364277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.374367, 40.661743, 40.288361>,  <39.410908, 41.039440, 40.161831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.374367, 40.661743, 40.288361> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058743, -0.311989, -0.948268,
		0.994084, -0.105211, -0.026966,
		-0.091356, -0.944242, 0.316324,
		39.346958, 40.378471, 40.383259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.888481, 40.771263, 39.790485>,  <39.410908, 41.039440, 40.161831>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.888481, 40.771263, 39.790485> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.650932, 40.466438, 39.893688>,  <39.508400, 40.283543, 39.955612>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.650932, 40.466438, 39.893688>,  <39.888481, 40.771263, 39.790485>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.650932, 40.466438, 39.893688> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276470, -0.494454, -0.824063,
		0.755563, -0.418060, 0.504332,
		-0.593877, -0.762064, 0.258010,
		39.472771, 40.237820, 39.971092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<24.966269, 44.361973, 34.516144> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.214134, 44.336220, 34.203255>,  <25.362854, 44.320766, 34.015522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.214134, 44.336220, 34.203255>,  <24.966269, 44.361973, 34.516144>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.214134, 44.336220, 34.203255> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216897, -0.943771, 0.249505,
		-0.754302, -0.324271, -0.570856,
		0.619664, -0.064386, -0.782222,
		25.400034, 44.316902, 33.968590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.851095, 43.680477, 34.304111>,  <24.966269, 44.361973, 34.516144>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.851095, 43.680477, 34.304111> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.216921, 43.778870, 34.175694>,  <25.436417, 43.837906, 34.098644>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.216921, 43.778870, 34.175694>,  <24.851095, 43.680477, 34.304111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.216921, 43.778870, 34.175694> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299381, -0.945448, 0.128445,
		-0.271932, -0.213584, -0.938315,
		0.914562, 0.245986, -0.321041,
		25.491289, 43.852665, 34.079380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.055960, 43.276119, 33.736053>,  <24.851095, 43.680477, 34.304111>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.055960, 43.276119, 33.736053> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.402191, 43.392384, 33.899166>,  <25.609930, 43.462143, 33.997036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.402191, 43.392384, 33.899166>,  <25.055960, 43.276119, 33.736053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.402191, 43.392384, 33.899166> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339037, -0.939442, -0.050030,
		0.368549, 0.181559, -0.911706,
		0.865578, 0.290664, 0.407786,
		25.661865, 43.479584, 34.021503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.343382, 42.802021, 33.501934>,  <25.055960, 43.276119, 33.736053>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.343382, 42.802021, 33.501934> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.613131, 42.924320, 33.770782>,  <25.774981, 42.997700, 33.932091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.613131, 42.924320, 33.770782>,  <25.343382, 42.802021, 33.501934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.613131, 42.924320, 33.770782> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383755, -0.922782, 0.034729,
		0.630837, 0.234508, -0.739629,
		0.674372, 0.305744, 0.672118,
		25.815443, 43.016045, 33.972420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.015451, 42.427353, 33.308521>,  <25.343382, 42.802021, 33.501934>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.015451, 42.427353, 33.308521> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.055164, 42.561543, 33.683243>,  <26.078991, 42.642056, 33.908077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.055164, 42.561543, 33.683243>,  <26.015451, 42.427353, 33.308521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.055164, 42.561543, 33.683243> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525894, -0.816920, 0.236806,
		0.844736, 0.469150, -0.257526,
		0.099281, 0.335470, 0.936805,
		26.084949, 42.662182, 33.964283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.596073, 42.264103, 33.453590>,  <26.015451, 42.427353, 33.308521>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.596073, 42.264103, 33.453590> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.443373, 42.296543, 33.821869>,  <26.351753, 42.316006, 34.042835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.443373, 42.296543, 33.821869>,  <26.596073, 42.264103, 33.453590>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.443373, 42.296543, 33.821869> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441616, -0.859075, 0.258776,
		0.811937, 0.505384, 0.292140,
		-0.381751, 0.081096, 0.920700,
		26.328848, 42.320873, 34.098080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.176926, 42.152473, 33.967293>,  <26.596073, 42.264103, 33.453590>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.176926, 42.152473, 33.967293> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.838968, 42.089203, 34.171700>,  <26.636194, 42.051239, 34.294342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.838968, 42.089203, 34.171700>,  <27.176926, 42.152473, 33.967293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.838968, 42.089203, 34.171700> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364225, -0.869752, 0.332975,
		0.391787, 0.467452, 0.792459,
		-0.844892, -0.158178, 0.511016,
		26.585501, 42.041748, 34.325005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.360117, 41.850376, 34.576843>,  <27.176926, 42.152473, 33.967293>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.360117, 41.850376, 34.576843> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.972115, 41.754784, 34.559063>,  <26.739313, 41.697430, 34.548393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.972115, 41.754784, 34.559063>,  <27.360117, 41.850376, 34.576843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.972115, 41.754784, 34.559063> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185112, -0.844755, 0.502118,
		-0.157545, 0.478830, 0.863656,
		-0.970007, -0.238980, -0.044450,
		26.681112, 41.683090, 34.545727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.288956, 41.539307, 35.210934>,  <27.360117, 41.850376, 34.576843>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.288956, 41.539307, 35.210934> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.941216, 41.438465, 35.040913>,  <26.732571, 41.377960, 34.938900>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.941216, 41.438465, 35.040913>,  <27.288956, 41.539307, 35.210934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.941216, 41.438465, 35.040913> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055025, -0.904130, 0.423700,
		-0.491122, 0.344955, 0.799878,
		-0.869351, -0.252102, -0.425057,
		26.680410, 41.362835, 34.913395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.813847, 41.231915, 35.786304>,  <27.288956, 41.539307, 35.210934>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.813847, 41.231915, 35.786304> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.679220, 41.090454, 35.437214>,  <26.598444, 41.005577, 35.227760>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.679220, 41.090454, 35.437214>,  <26.813847, 41.231915, 35.786304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.679220, 41.090454, 35.437214> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166179, -0.889946, 0.424713,
		-0.926880, 0.287973, 0.240758,
		-0.336568, -0.353649, -0.872728,
		26.578249, 40.984360, 35.175396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.192642, 40.863750, 35.927132>,  <26.813847, 41.231915, 35.786304>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.192642, 40.863750, 35.927132> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.354939, 40.719608, 35.591152>,  <26.452316, 40.633121, 35.389565>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.354939, 40.719608, 35.591152>,  <26.192642, 40.863750, 35.927132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.354939, 40.719608, 35.591152> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048533, -0.926193, 0.373913,
		-0.912699, -0.110946, -0.393284,
		0.405741, -0.360357, -0.839951,
		26.476662, 40.611500, 35.339169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.839731, 40.247929, 35.899311>,  <26.192642, 40.863750, 35.927132>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.839731, 40.247929, 35.899311> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.137028, 40.200272, 35.635979>,  <26.315405, 40.171677, 35.477978>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.137028, 40.200272, 35.635979>,  <25.839731, 40.247929, 35.899311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.137028, 40.200272, 35.635979> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023969, -0.988127, 0.151761,
		-0.668596, -0.097016, -0.737271,
		0.743240, -0.119138, -0.658332,
		26.359999, 40.164532, 35.438480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.589495, 39.782173, 35.506374>,  <25.839731, 40.247929, 35.899311>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.589495, 39.782173, 35.506374> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.987469, 39.757099, 35.474949>,  <26.226254, 39.742054, 35.456093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.987469, 39.757099, 35.474949>,  <25.589495, 39.782173, 35.506374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.987469, 39.757099, 35.474949> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047113, -0.981351, 0.186361,
		-0.088782, -0.181716, -0.979335,
		0.994937, -0.062685, -0.078565,
		26.285950, 39.738293, 35.451378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.713509, 39.247021, 35.097649>,  <25.589495, 39.782173, 35.506374>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.713509, 39.247021, 35.097649> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.066248, 39.296341, 35.279697>,  <26.277891, 39.325932, 35.388927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.066248, 39.296341, 35.279697>,  <25.713509, 39.247021, 35.097649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.066248, 39.296341, 35.279697> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009499, -0.969656, 0.244290,
		0.471435, -0.211104, -0.856262,
		0.881850, 0.123301, 0.455124,
		26.330803, 39.333332, 35.416233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.172607, 38.772633, 34.664978>,  <25.713509, 39.247021, 35.097649>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.172607, 38.772633, 34.664978> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.330347, 38.869846, 35.019474>,  <26.424992, 38.928173, 35.232170>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.330347, 38.869846, 35.019474>,  <26.172607, 38.772633, 34.664978>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.330347, 38.869846, 35.019474> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055592, -0.968937, 0.240977,
		0.917277, -0.045762, -0.395612,
		0.394351, 0.243036, 0.886240,
		26.448652, 38.942757, 35.285347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.876911, 38.492691, 34.685932>,  <26.172607, 38.772633, 34.664978>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.876911, 38.492691, 34.685932> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.770466, 38.509846, 35.071129>,  <26.706598, 38.520138, 35.302246>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.770466, 38.509846, 35.071129>,  <26.876911, 38.492691, 34.685932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.770466, 38.509846, 35.071129> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267093, -0.956614, 0.116412,
		0.926199, 0.288186, 0.243113,
		-0.266113, 0.042887, 0.962987,
		26.690632, 38.522713, 35.360023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.538237, 38.393963, 35.167202>,  <26.876911, 38.492691, 34.685932>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.538237, 38.393963, 35.167202> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.217228, 38.333969, 35.398186>,  <27.024622, 38.297974, 35.536777>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.217228, 38.333969, 35.398186>,  <27.538237, 38.393963, 35.167202>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.217228, 38.333969, 35.398186> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336879, -0.912746, 0.231102,
		0.492414, 0.379999, 0.783026,
		-0.802522, -0.149987, 0.577462,
		26.976471, 38.288975, 35.571423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.802856, 38.096275, 35.797329>,  <27.538237, 38.393963, 35.167202>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.802856, 38.096275, 35.797329> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.418312, 37.997871, 35.747906>,  <27.187586, 37.938828, 35.718250>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.418312, 37.997871, 35.747906>,  <27.802856, 38.096275, 35.797329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.418312, 37.997871, 35.747906> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215551, -0.951836, 0.218051,
		-0.171249, 0.182993, 0.968084,
		-0.961359, -0.246013, -0.123557,
		27.129904, 37.924068, 35.710838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.757841, 37.670433, 36.227993>,  <27.802856, 38.096275, 35.797329>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.757841, 37.670433, 36.227993> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.426756, 37.590908, 36.018093>,  <27.228104, 37.543194, 35.892155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.426756, 37.590908, 36.018093>,  <27.757841, 37.670433, 36.227993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.426756, 37.590908, 36.018093> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061942, -0.961789, 0.266695,
		-0.557720, 0.188243, 0.808401,
		-0.827715, -0.198815, -0.524749,
		27.178442, 37.531265, 35.860668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.721193, 38.351654, 36.653236>,  <27.757841, 37.670433, 36.227993>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.721193, 38.351654, 36.653236> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.091026, 38.480843, 36.734070>,  <28.312925, 38.558357, 36.782570>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.091026, 38.480843, 36.734070>,  <27.721193, 38.351654, 36.653236>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.091026, 38.480843, 36.734070> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377937, 0.710616, 0.593455,
		0.048067, -0.625072, 0.779086,
		0.924583, 0.322971, 0.202081,
		28.368401, 38.577732, 36.794693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.681999, 38.388863, 37.281246>,  <27.721193, 38.351654, 36.653236>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.681999, 38.388863, 37.281246> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.991968, 38.629822, 37.204708>,  <28.177950, 38.774395, 37.158787>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.991968, 38.629822, 37.204708>,  <27.681999, 38.388863, 37.281246>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.991968, 38.629822, 37.204708> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392477, 0.695910, 0.601391,
		0.495434, -0.390933, 0.775703,
		0.774923, 0.602395, -0.191346,
		28.224445, 38.810539, 37.147305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.801489, 38.774807, 37.855339>,  <27.681999, 38.388863, 37.281246>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.801489, 38.774807, 37.855339> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.020260, 38.986191, 37.595615>,  <28.151522, 39.113022, 37.439781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.020260, 38.986191, 37.595615>,  <27.801489, 38.774807, 37.855339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.020260, 38.986191, 37.595615> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220984, 0.839210, 0.496882,
		0.807489, -0.128271, 0.575767,
		0.546926, 0.528462, -0.649307,
		28.184338, 39.144730, 37.400822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.286440, 39.200027, 38.248638>,  <27.801489, 38.774807, 37.855339>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.286440, 39.200027, 38.248638> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.263664, 39.372028, 37.888226>,  <28.250000, 39.475231, 37.671978>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.263664, 39.372028, 37.888226>,  <28.286440, 39.200027, 38.248638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.263664, 39.372028, 37.888226> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144758, 0.889400, 0.433603,
		0.987828, 0.155119, 0.011607,
		-0.056937, 0.430005, -0.901029,
		28.246584, 39.501030, 37.617916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.614435, 39.800499, 38.238262>,  <28.286440, 39.200027, 38.248638>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.614435, 39.800499, 38.238262> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.438904, 39.930313, 37.903095>,  <28.333586, 40.008202, 37.701996>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.438904, 39.930313, 37.903095>,  <28.614435, 39.800499, 38.238262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.438904, 39.930313, 37.903095> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093956, 0.910818, 0.401974,
		0.893645, 0.255125, -0.369201,
		-0.438828, 0.324534, -0.837919,
		28.307255, 40.027672, 37.651718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.903734, 40.537296, 38.125809>,  <28.614435, 39.800499, 38.238262>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.903734, 40.537296, 38.125809> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.552782, 40.487850, 37.940369>,  <28.342211, 40.458183, 37.829105>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.552782, 40.487850, 37.940369>,  <28.903734, 40.537296, 38.125809>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.552782, 40.487850, 37.940369> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278480, 0.918033, 0.282250,
		0.390706, 0.376743, -0.839889,
		-0.877381, -0.123616, -0.463596,
		28.289568, 40.450764, 37.801289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.839291, 41.069283, 37.583637>,  <28.903734, 40.537296, 38.125809>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.839291, 41.069283, 37.583637> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.470783, 40.949814, 37.683285>,  <28.249680, 40.878132, 37.743073>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.470783, 40.949814, 37.683285>,  <28.839291, 41.069283, 37.583637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.470783, 40.949814, 37.683285> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297226, 0.953777, 0.044336,
		-0.250844, -0.033199, -0.967458,
		-0.921268, -0.298675, 0.249117,
		28.194403, 40.860210, 37.758018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.333464, 41.511772, 37.212841>,  <28.839291, 41.069283, 37.583637>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.333464, 41.511772, 37.212841> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.112221, 41.346828, 37.502403>,  <27.979475, 41.247864, 37.676140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.112221, 41.346828, 37.502403>,  <28.333464, 41.511772, 37.212841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.112221, 41.346828, 37.502403> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395418, 0.894745, 0.207549,
		-0.733293, -0.171448, -0.657942,
		-0.553106, -0.412356, 0.723904,
		27.946289, 41.223122, 37.719574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.571699, 41.718197, 37.095654>,  <28.333464, 41.511772, 37.212841>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.571699, 41.718197, 37.095654> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.584188, 41.614994, 37.481907>,  <27.591682, 41.553070, 37.713661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.584188, 41.614994, 37.481907>,  <27.571699, 41.718197, 37.095654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.584188, 41.614994, 37.481907> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488608, 0.838864, 0.239935,
		-0.871945, -0.479310, -0.099873,
		0.031223, -0.258009, 0.965638,
		27.593555, 41.537590, 37.771599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.916374, 41.833744, 37.294460>,  <27.571699, 41.718197, 37.095654>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.916374, 41.833744, 37.294460> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.135979, 41.813049, 37.628147>,  <27.267740, 41.800632, 37.828358>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.135979, 41.813049, 37.628147>,  <26.916374, 41.833744, 37.294460>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.135979, 41.813049, 37.628147> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360614, 0.885743, 0.292263,
		-0.754020, -0.461284, 0.467623,
		0.549010, -0.051741, 0.834213,
		27.300682, 41.797527, 37.878410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.435013, 41.819862, 37.764736>,  <26.916374, 41.833744, 37.294460>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.435013, 41.819862, 37.764736> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.781988, 41.930969, 37.929855>,  <26.990173, 41.997631, 38.028927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.781988, 41.930969, 37.929855>,  <26.435013, 41.819862, 37.764736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.781988, 41.930969, 37.929855> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416402, 0.859391, 0.296743,
		-0.272328, -0.429295, 0.861129,
		0.867437, 0.277764, 0.412795,
		27.042219, 42.014297, 38.053696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.224648, 42.128674, 38.275970>,  <26.435013, 41.819862, 37.764736>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.224648, 42.128674, 38.275970> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.603306, 42.257408, 38.282688>,  <26.830500, 42.334648, 38.286720>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.603306, 42.257408, 38.282688>,  <26.224648, 42.128674, 38.275970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.603306, 42.257408, 38.282688> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315665, 0.915453, 0.249601,
		0.064955, -0.241586, 0.968203,
		0.946645, 0.321841, 0.016797,
		26.887299, 42.353962, 38.287727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.271984, 42.543747, 38.895649>,  <26.224648, 42.128674, 38.275970>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.271984, 42.543747, 38.895649> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.549858, 42.673416, 38.638798>,  <26.716583, 42.751217, 38.484688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.549858, 42.673416, 38.638798>,  <26.271984, 42.543747, 38.895649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.549858, 42.673416, 38.638798> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142683, 0.937053, 0.318706,
		0.705021, -0.129780, 0.697210,
		0.694685, 0.324174, -0.642125,
		26.758263, 42.770668, 38.446159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.590200, 43.124737, 39.217541>,  <26.271984, 42.543747, 38.895649>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.590200, 43.124737, 39.217541> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.717112, 43.170242, 38.840946>,  <26.793259, 43.197544, 38.614990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.717112, 43.170242, 38.840946>,  <26.590200, 43.124737, 39.217541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.717112, 43.170242, 38.840946> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223796, 0.973720, 0.042242,
		0.921548, 0.197298, 0.334399,
		0.317276, 0.113765, -0.941485,
		26.812294, 43.204372, 38.558502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.878740, 43.880089, 39.140614>,  <26.590200, 43.124737, 39.217541>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.878740, 43.880089, 39.140614> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.858875, 43.758270, 38.760132>,  <26.846956, 43.685181, 38.531845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.858875, 43.758270, 38.760132>,  <26.878740, 43.880089, 39.140614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.858875, 43.758270, 38.760132> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302857, 0.912129, -0.276221,
		0.951741, 0.274360, -0.137533,
		-0.049664, -0.304544, -0.951203,
		26.843975, 43.666908, 38.474770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.311394, 44.345932, 38.672958>,  <26.878740, 43.880089, 39.140614>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.311394, 44.345932, 38.672958> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.999435, 44.179585, 38.485847>,  <26.812262, 44.079777, 38.373581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.999435, 44.179585, 38.485847>,  <27.311394, 44.345932, 38.672958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.999435, 44.179585, 38.485847> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301591, 0.904557, -0.301362,
		0.548460, -0.093952, -0.830882,
		-0.779894, -0.415872, -0.467778,
		26.765467, 44.054825, 38.345512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.236891, 44.670120, 38.096622>,  <27.311394, 44.345932, 38.672958>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.236891, 44.670120, 38.096622> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.877342, 44.497643, 38.127853>,  <26.661613, 44.394154, 38.146591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.877342, 44.497643, 38.127853>,  <27.236891, 44.670120, 38.096622>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.877342, 44.497643, 38.127853> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438019, 0.889348, -0.131146,
		-0.012886, -0.152082, -0.988284,
		-0.898873, -0.431197, 0.078075,
		26.607679, 44.368282, 38.151276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.857033, 44.968075, 37.579281>,  <27.236891, 44.670120, 38.096622>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.857033, 44.968075, 37.579281> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.595135, 44.806786, 37.835007>,  <26.437996, 44.710011, 37.988441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.595135, 44.806786, 37.835007>,  <26.857033, 44.968075, 37.579281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.595135, 44.806786, 37.835007> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584905, 0.806019, -0.090659,
		-0.478740, -0.433295, -0.763586,
		-0.654747, -0.403223, 0.639310,
		26.398710, 44.685818, 38.026798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.192167, 44.997250, 37.232529>,  <26.857033, 44.968075, 37.579281>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.192167, 44.997250, 37.232529> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.108156, 44.978569, 37.623161>,  <26.057749, 44.967361, 37.857540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.108156, 44.978569, 37.623161>,  <26.192167, 44.997250, 37.232529>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.108156, 44.978569, 37.623161> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584115, 0.806992, -0.087028,
		-0.784027, -0.588713, -0.196771,
		-0.210027, -0.046705, 0.976579,
		26.045149, 44.964558, 37.916134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.500505, 45.137367, 37.227741>,  <26.192167, 44.997250, 37.232529>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.500505, 45.137367, 37.227741> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.593624, 45.202679, 37.611229>,  <25.649494, 45.241867, 37.841324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.593624, 45.202679, 37.611229>,  <25.500505, 45.137367, 37.227741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.593624, 45.202679, 37.611229> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597143, 0.802091, 0.008395,
		-0.767611, -0.574448, 0.284223,
		0.232795, 0.163277, 0.958721,
		25.663462, 45.251663, 37.898846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.830713, 45.273960, 37.640182>,  <25.500505, 45.137367, 37.227741>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.830713, 45.273960, 37.640182> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.125023, 45.414223, 37.871933>,  <25.301609, 45.498379, 38.010983>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.125023, 45.414223, 37.871933>,  <24.830713, 45.273960, 37.640182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.125023, 45.414223, 37.871933> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566589, 0.787354, 0.243002,
		-0.370967, -0.507064, 0.777990,
		0.735772, 0.350655, 0.579380,
		25.345755, 45.519421, 38.045746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.510483, 45.616917, 38.131672>,  <24.830713, 45.273960, 37.640182>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.510483, 45.616917, 38.131672> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.874619, 45.782448, 38.129658>,  <25.093100, 45.881767, 38.128448>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.874619, 45.782448, 38.129658>,  <24.510483, 45.616917, 38.131672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.874619, 45.782448, 38.129658> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404204, 0.891646, 0.203927,
		0.088878, -0.183609, 0.978973,
		0.910341, 0.413830, -0.005032,
		25.147720, 45.906597, 38.128147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.609089, 46.055424, 38.731430>,  <24.510483, 45.616917, 38.131672>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.609089, 46.055424, 38.731430> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.835642, 46.156590, 38.417679>,  <24.971573, 46.217289, 38.229427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.835642, 46.156590, 38.417679>,  <24.609089, 46.055424, 38.731430>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.835642, 46.156590, 38.417679> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453613, 0.890279, -0.040477,
		0.688075, 0.378728, 0.618964,
		0.566381, 0.252919, -0.784375,
		25.005556, 46.232464, 38.182365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<44.406219, 41.577145, 44.958729> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.086231, 41.492859, 45.183460>,  <43.894238, 41.442287, 45.318298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.086231, 41.492859, 45.183460>,  <44.406219, 41.577145, 44.958729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.086231, 41.492859, 45.183460> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059038, 0.904134, 0.423151,
		-0.597134, 0.371676, -0.710836,
		-0.799966, -0.210711, 0.561832,
		43.846241, 41.429646, 45.352009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.149490, 42.220798, 45.021881>,  <44.406219, 41.577145, 44.958729>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.149490, 42.220798, 45.021881> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.982315, 42.020844, 45.325314>,  <43.882011, 41.900871, 45.507374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.982315, 42.020844, 45.325314>,  <44.149490, 42.220798, 45.021881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.982315, 42.020844, 45.325314> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084788, 0.809893, 0.580417,
		-0.904512, 0.306895, -0.296099,
		-0.417935, -0.499888, 0.758579,
		43.856934, 41.870876, 45.552887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.712959, 42.749279, 45.335670>,  <44.149490, 42.220798, 45.021881>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.712959, 42.749279, 45.335670> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.743408, 42.474159, 45.624432>,  <43.761677, 42.309086, 45.797688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.743408, 42.474159, 45.624432>,  <43.712959, 42.749279, 45.335670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.743408, 42.474159, 45.624432> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121827, 0.724991, 0.677899,
		-0.989628, 0.036345, 0.138979,
		0.076120, -0.687799, 0.721899,
		43.766243, 42.267818, 45.841000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.161579, 42.888584, 45.915295>,  <43.712959, 42.749279, 45.335670>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.161579, 42.888584, 45.915295> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.471474, 42.685471, 46.065994>,  <43.657410, 42.563602, 46.156414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.471474, 42.685471, 46.065994>,  <43.161579, 42.888584, 45.915295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.471474, 42.685471, 46.065994> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093206, 0.681060, 0.726271,
		-0.625373, -0.527557, 0.574972,
		0.774740, -0.507781, 0.376745,
		43.703896, 42.533134, 46.179016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.140232, 42.938065, 46.543583>,  <43.161579, 42.888584, 45.915295>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.140232, 42.938065, 46.543583> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.520031, 42.820602, 46.587795>,  <43.747910, 42.750126, 46.614323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.520031, 42.820602, 46.587795>,  <43.140232, 42.938065, 46.543583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.520031, 42.820602, 46.587795> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090705, 0.594131, 0.799238,
		-0.300370, -0.748850, 0.590762,
		0.949500, -0.293652, 0.110535,
		43.804882, 42.732506, 46.620956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.295624, 42.831673, 47.285572>,  <43.140232, 42.938065, 46.543583>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.295624, 42.831673, 47.285572> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.660835, 42.864700, 47.125793>,  <43.879963, 42.884518, 47.029926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.660835, 42.864700, 47.125793>,  <43.295624, 42.831673, 47.285572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.660835, 42.864700, 47.125793> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255248, 0.648197, 0.717418,
		0.318158, -0.756983, 0.570747,
		0.913030, 0.082570, -0.399448,
		43.934746, 42.889473, 47.005959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.686237, 42.789883, 47.875507>,  <43.295624, 42.831673, 47.285572>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.686237, 42.789883, 47.875507> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.903328, 42.944298, 47.577133>,  <44.033581, 43.036949, 47.398109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.903328, 42.944298, 47.577133>,  <43.686237, 42.789883, 47.875507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.903328, 42.944298, 47.577133> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442838, 0.623125, 0.644678,
		0.713686, -0.680211, 0.167230,
		0.542722, 0.386041, -0.745939,
		44.066143, 43.060108, 47.353352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.473423, 42.825195, 48.058079>,  <43.686237, 42.789883, 47.875507>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.473423, 42.825195, 48.058079> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.396622, 43.106071, 47.783833>,  <44.350540, 43.274597, 47.619286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.396622, 43.106071, 47.783833>,  <44.473423, 42.825195, 48.058079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.396622, 43.106071, 47.783833> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362614, 0.699934, 0.615308,
		0.911946, -0.130470, -0.389015,
		-0.192005, 0.702189, -0.685612,
		44.339020, 43.316727, 47.578148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.979927, 43.231976, 48.182655>,  <44.473423, 42.825195, 48.058079>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.979927, 43.231976, 48.182655> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.735008, 43.469654, 47.974033>,  <44.588055, 43.612259, 47.848858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.735008, 43.469654, 47.974033>,  <44.979927, 43.231976, 48.182655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.735008, 43.469654, 47.974033> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210891, 0.758523, 0.616578,
		0.761980, 0.267540, -0.589754,
		-0.612301, 0.594194, -0.521557,
		44.551319, 43.647911, 47.817566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.307335, 43.981102, 47.995136>,  <44.979927, 43.231976, 48.182655>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.307335, 43.981102, 47.995136> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.910286, 44.028812, 47.986397>,  <44.672058, 44.057438, 47.981155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.910286, 44.028812, 47.986397>,  <45.307335, 43.981102, 47.995136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.910286, 44.028812, 47.986397> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081670, 0.790741, 0.606678,
		0.089638, 0.600417, -0.794647,
		-0.992620, 0.119280, -0.021845,
		44.612499, 44.064598, 47.979843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.206837, 44.738827, 48.054131>,  <45.307335, 43.981102, 47.995136>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.206837, 44.738827, 48.054131> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.851498, 44.575096, 48.137352>,  <44.638294, 44.476856, 48.187286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.851498, 44.575096, 48.137352>,  <45.206837, 44.738827, 48.054131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.851498, 44.575096, 48.137352> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148705, 0.685160, 0.713052,
		-0.434420, 0.602501, -0.669531,
		-0.888350, -0.409327, 0.208052,
		44.584991, 44.452297, 48.199768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.767773, 45.287655, 47.994404>,  <45.206837, 44.738827, 48.054131>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.767773, 45.287655, 47.994404> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.570766, 45.011086, 48.205822>,  <44.452564, 44.845142, 48.332672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.570766, 45.011086, 48.205822>,  <44.767773, 45.287655, 47.994404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.570766, 45.011086, 48.205822> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193436, 0.679085, 0.708114,
		-0.848534, 0.246519, -0.468208,
		-0.492517, -0.691427, 0.528542,
		44.423012, 44.803658, 48.364384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.374073, 45.879318, 47.910023>,  <44.767773, 45.287655, 47.994404>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.374073, 45.879318, 47.910023> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.036320, 45.911465, 48.121895>,  <43.833668, 45.930752, 48.249020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.036320, 45.911465, 48.121895>,  <44.374073, 45.879318, 47.910023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.036320, 45.911465, 48.121895> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527916, -0.293200, -0.797081,
		0.091244, -0.952667, 0.289999,
		-0.844381, 0.080367, 0.529681,
		43.783005, 45.935574, 48.280800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.951336, 45.167057, 47.935417>,  <44.374073, 45.879318, 47.910023>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.951336, 45.167057, 47.935417> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.758572, 45.517422, 47.944683>,  <43.642914, 45.727642, 47.950241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.758572, 45.517422, 47.944683>,  <43.951336, 45.167057, 47.935417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.758572, 45.517422, 47.944683> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691478, -0.363936, -0.624027,
		-0.538164, -0.316742, 0.781060,
		-0.481911, 0.875914, 0.023163,
		43.613998, 45.780197, 47.951633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.308338, 44.945934, 48.068268>,  <43.951336, 45.167057, 47.935417>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.308338, 44.945934, 48.068268> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.251244, 45.308197, 47.908562>,  <43.216988, 45.525555, 47.812740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.251244, 45.308197, 47.908562>,  <43.308338, 44.945934, 48.068268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.251244, 45.308197, 47.908562> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644848, -0.391119, -0.656655,
		-0.750865, 0.163738, 0.639838,
		-0.142734, 0.905658, -0.399264,
		43.208424, 45.579895, 47.788784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.526188, 45.195316, 48.074551>,  <43.308338, 44.945934, 48.068268>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.526188, 45.195316, 48.074551> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.702087, 45.385719, 47.769909>,  <42.807629, 45.499962, 47.587124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.702087, 45.385719, 47.769909>,  <42.526188, 45.195316, 48.074551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.702087, 45.385719, 47.769909> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656370, -0.408475, -0.634293,
		-0.613023, 0.778822, 0.132811,
		0.439751, 0.476009, -0.761600,
		42.834011, 45.528522, 47.541428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.007748, 45.499802, 47.689754>,  <42.526188, 45.195316, 48.074551>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.007748, 45.499802, 47.689754> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.326038, 45.477505, 47.448521>,  <42.517014, 45.464127, 47.303780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.326038, 45.477505, 47.448521>,  <42.007748, 45.499802, 47.689754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.326038, 45.477505, 47.448521> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581118, -0.350821, -0.734321,
		-0.170645, 0.934782, -0.311548,
		0.795728, -0.055738, -0.603084,
		42.564758, 45.460785, 47.267597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.708038, 45.778149, 47.166306>,  <42.007748, 45.499802, 47.689754>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.708038, 45.778149, 47.166306> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.031441, 45.579784, 47.039562>,  <42.225483, 45.460766, 46.963516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.031441, 45.579784, 47.039562>,  <41.708038, 45.778149, 47.166306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.031441, 45.579784, 47.039562> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478515, -0.240578, -0.844480,
		0.342555, 0.834386, -0.431807,
		0.808505, -0.495906, -0.316855,
		42.273991, 45.431011, 46.944508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.710644, 45.968132, 46.467937>,  <41.708038, 45.778149, 47.166306>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.710644, 45.968132, 46.467937> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.948895, 45.648178, 46.497372>,  <42.091846, 45.456207, 46.515034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.948895, 45.648178, 46.497372>,  <41.710644, 45.968132, 46.467937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.948895, 45.648178, 46.497372> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345126, -0.337561, -0.875751,
		0.725338, 0.496225, -0.477121,
		0.595627, -0.799883, 0.073586,
		42.127583, 45.408215, 46.519447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.896564, 45.819954, 45.695759>,  <41.710644, 45.968132, 46.467937>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.896564, 45.819954, 45.695759> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.976471, 45.499195, 45.920986>,  <42.024414, 45.306740, 46.056122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.976471, 45.499195, 45.920986>,  <41.896564, 45.819954, 45.695759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.976471, 45.499195, 45.920986> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343339, -0.595506, -0.726286,
		0.917721, -0.048236, -0.394286,
		0.199766, -0.801901, 0.563070,
		42.036400, 45.258625, 46.089909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.123863, 45.457508, 45.257092>,  <41.896564, 45.819954, 45.695759>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.123863, 45.457508, 45.257092> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.992378, 45.214413, 45.546257>,  <41.913486, 45.068554, 45.719757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.992378, 45.214413, 45.546257>,  <42.123863, 45.457508, 45.257092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.992378, 45.214413, 45.546257> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120580, -0.732175, -0.670358,
		0.936700, -0.307526, 0.167396,
		-0.328716, -0.607739, 0.722910,
		41.893764, 45.032089, 45.763130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.484436, 44.843685, 45.116463>,  <42.123863, 45.457508, 45.257092>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.484436, 44.843685, 45.116463> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.164825, 44.736370, 45.331715>,  <41.973061, 44.671982, 45.460865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.164825, 44.736370, 45.331715>,  <42.484436, 44.843685, 45.116463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.164825, 44.736370, 45.331715> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135956, -0.791164, -0.596302,
		0.585727, -0.549622, 0.595685,
		-0.799024, -0.268283, 0.538130,
		41.925117, 44.655884, 45.493153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.481865, 44.129112, 45.026031>,  <42.484436, 44.843685, 45.116463>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.481865, 44.129112, 45.026031> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.119102, 44.218513, 45.168896>,  <41.901443, 44.272156, 45.254616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.119102, 44.218513, 45.168896>,  <42.481865, 44.129112, 45.026031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.119102, 44.218513, 45.168896> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409455, -0.667372, -0.622062,
		0.099329, -0.710395, 0.696759,
		-0.906907, 0.223503, 0.357164,
		41.847031, 44.285564, 45.276043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.192585, 43.505722, 45.266918>,  <42.481865, 44.129112, 45.026031>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.192585, 43.505722, 45.266918> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.873119, 43.741016, 45.216141>,  <41.681442, 43.882195, 45.185677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.873119, 43.741016, 45.216141>,  <42.192585, 43.505722, 45.266918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.873119, 43.741016, 45.216141> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465769, -0.737810, -0.488565,
		-0.381051, -0.331073, 0.863244,
		-0.798661, 0.588240, -0.126940,
		41.633522, 43.917488, 45.178059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.703671, 43.022404, 45.233772>,  <42.192585, 43.505722, 45.266918>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.703671, 43.022404, 45.233772> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.473469, 43.321251, 45.100742>,  <41.335346, 43.500557, 45.020924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.473469, 43.321251, 45.100742>,  <41.703671, 43.022404, 45.233772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.473469, 43.321251, 45.100742> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528029, -0.650018, -0.546500,
		-0.624477, -0.138910, 0.768592,
		-0.575512, 0.747115, -0.332573,
		41.300816, 43.545387, 45.000969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.024635, 42.805405, 45.244591>,  <41.703671, 43.022404, 45.233772>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.024635, 42.805405, 45.244591> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.030933, 43.099957, 44.974033>,  <41.034714, 43.276688, 44.811699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.030933, 43.099957, 44.974033>,  <41.024635, 42.805405, 45.244591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.030933, 43.099957, 44.974033> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495270, -0.581911, -0.645048,
		-0.868597, 0.345152, 0.355542,
		0.015746, 0.736376, -0.676389,
		41.035656, 43.320869, 44.771118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.361046, 42.961685, 45.041409>,  <41.024635, 42.805405, 45.244591>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.361046, 42.961685, 45.041409> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.569313, 43.118790, 44.738190>,  <40.694275, 43.213051, 44.556259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.569313, 43.118790, 44.738190>,  <40.361046, 42.961685, 45.041409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.569313, 43.118790, 44.738190> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482134, -0.597500, -0.640734,
		-0.704591, 0.699093, -0.121737,
		0.520670, 0.392762, -0.758050,
		40.725513, 43.236618, 44.510773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.924381, 42.992683, 44.445694>,  <40.361046, 42.961685, 45.041409>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.924381, 42.992683, 44.445694> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.287842, 42.987556, 44.278748>,  <40.505917, 42.984482, 44.178577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.287842, 42.987556, 44.278748>,  <39.924381, 42.992683, 44.445694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.287842, 42.987556, 44.278748> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342523, -0.594558, -0.727446,
		-0.238827, 0.803950, -0.544633,
		0.908647, -0.012815, -0.417368,
		40.560436, 42.983711, 44.153538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.600491, 43.696033, 44.659542>,  <39.924381, 42.992683, 44.445694>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.600491, 43.696033, 44.659542> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.214844, 43.678509, 44.764278>,  <38.983456, 43.667995, 44.827122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.214844, 43.678509, 44.764278>,  <39.600491, 43.696033, 44.659542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.214844, 43.678509, 44.764278> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195262, 0.551210, 0.811197,
		-0.179867, 0.833215, -0.522876,
		-0.964116, -0.043810, 0.261840,
		38.925610, 43.665367, 44.842831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.492725, 44.379684, 44.969654>,  <39.600491, 43.696033, 44.659542>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.492725, 44.379684, 44.969654> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.166000, 44.179947, 45.085220>,  <38.969963, 44.060104, 45.154560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.166000, 44.179947, 45.085220>,  <39.492725, 44.379684, 44.969654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.166000, 44.179947, 45.085220> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020106, 0.475869, 0.879286,
		-0.576550, 0.724023, -0.378657,
		-0.816814, -0.499340, 0.288920,
		38.920956, 44.030144, 45.171898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.038410, 44.953236, 45.201359>,  <39.492725, 44.379684, 44.969654>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.038410, 44.953236, 45.201359> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.924580, 44.612450, 45.377163>,  <38.856281, 44.407978, 45.482647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.924580, 44.612450, 45.377163>,  <39.038410, 44.953236, 45.201359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.924580, 44.612450, 45.377163> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158248, 0.493930, 0.854980,
		-0.945501, 0.173758, -0.275384,
		-0.284580, -0.851963, 0.439514,
		38.839207, 44.356861, 45.509018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.478050, 45.114590, 45.478424>,  <39.038410, 44.953236, 45.201359>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.478050, 45.114590, 45.478424> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.609501, 44.796089, 45.681591>,  <38.688370, 44.604988, 45.803490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.609501, 44.796089, 45.681591>,  <38.478050, 45.114590, 45.478424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.609501, 44.796089, 45.681591> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060796, 0.518838, 0.852708,
		-0.942501, -0.311103, 0.122095,
		0.328627, -0.796255, 0.507919,
		38.708088, 44.557213, 45.833965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.141804, 45.112213, 46.179054>,  <38.478050, 45.114590, 45.478424>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.141804, 45.112213, 46.179054> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.432610, 44.845528, 46.244705>,  <38.607094, 44.685516, 46.284096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.432610, 44.845528, 46.244705>,  <38.141804, 45.112213, 46.179054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.432610, 44.845528, 46.244705> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161852, 0.398709, 0.902682,
		-0.667274, -0.629698, 0.397776,
		0.727014, -0.666717, 0.164130,
		38.650715, 44.645512, 46.293945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.984932, 44.942162, 46.829510>,  <38.141804, 45.112213, 46.179054>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.984932, 44.942162, 46.829510> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.366440, 44.829014, 46.788876>,  <38.595345, 44.761127, 46.764496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.366440, 44.829014, 46.788876>,  <37.984932, 44.942162, 46.829510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.366440, 44.829014, 46.788876> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185061, 0.286394, 0.940070,
		-0.236822, -0.915404, 0.325500,
		0.953765, -0.282867, -0.101581,
		38.652569, 44.744152, 46.758400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.279575, 44.747757, 47.511814>,  <37.984932, 44.942162, 46.829510>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.279575, 44.747757, 47.511814> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.616669, 44.812649, 47.306492>,  <38.818924, 44.851585, 47.183296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.616669, 44.812649, 47.306492>,  <38.279575, 44.747757, 47.511814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.616669, 44.812649, 47.306492> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452869, 0.301883, 0.838914,
		0.291057, -0.939440, 0.180936,
		0.842731, 0.162232, -0.513309,
		38.869488, 44.861317, 47.152500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.469780, 44.162128, 47.789951>,  <38.279575, 44.747757, 47.511814>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.469780, 44.162128, 47.789951> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.153416, 44.287575, 48.000130>,  <37.963596, 44.362843, 48.126236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.153416, 44.287575, 48.000130>,  <38.469780, 44.162128, 47.789951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.153416, 44.287575, 48.000130> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590079, -0.618270, -0.519180,
		0.162048, -0.720685, 0.674058,
		-0.790915, 0.313616, 0.525451,
		37.916142, 44.381660, 48.157764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.075558, 43.581299, 48.052872>,  <38.469780, 44.162128, 47.789951>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.075558, 43.581299, 48.052872> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.821289, 43.889996, 48.045486>,  <37.668728, 44.075214, 48.041054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.821289, 43.889996, 48.045486>,  <38.075558, 43.581299, 48.052872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.821289, 43.889996, 48.045486> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619033, -0.523892, -0.585095,
		-0.461211, -0.360501, 0.810755,
		-0.635675, 0.771736, -0.018462,
		37.630589, 44.121517, 48.039948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.480278, 43.330761, 48.117355>,  <38.075558, 43.581299, 48.052872>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.480278, 43.330761, 48.117355> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.387917, 43.677204, 47.940025>,  <37.332500, 43.885071, 47.833626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.387917, 43.677204, 47.940025>,  <37.480278, 43.330761, 48.117355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.387917, 43.677204, 47.940025> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587660, -0.487284, -0.645918,
		-0.775462, 0.111382, 0.621493,
		-0.230900, 0.866111, -0.443325,
		37.318645, 43.937038, 47.807030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.886669, 43.100273, 47.729607>,  <37.480278, 43.330761, 48.117355>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.886669, 43.100273, 47.729607> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.960510, 43.459068, 47.568939>,  <37.004814, 43.674347, 47.472538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.960510, 43.459068, 47.568939>,  <36.886669, 43.100273, 47.729607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.960510, 43.459068, 47.568939> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679877, -0.178573, -0.711252,
		-0.709711, 0.404381, 0.576876,
		0.184602, 0.896988, -0.401665,
		37.015892, 43.728165, 47.448441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.198711, 43.324364, 47.432899>,  <36.886669, 43.100273, 47.729607>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.198711, 43.324364, 47.432899> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.472557, 43.554668, 47.254105>,  <36.636864, 43.692852, 47.146828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.472557, 43.554668, 47.254105>,  <36.198711, 43.324364, 47.432899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.472557, 43.554668, 47.254105> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454182, -0.142666, -0.879412,
		-0.570104, 0.805073, 0.163830,
		0.684617, 0.575764, -0.446984,
		36.677940, 43.727398, 47.120010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.823269, 43.752480, 46.940441>,  <36.198711, 43.324364, 47.432899>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.823269, 43.752480, 46.940441> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.199268, 43.741817, 46.804390>,  <36.424870, 43.735420, 46.722759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.199268, 43.741817, 46.804390>,  <35.823269, 43.752480, 46.940441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.199268, 43.741817, 46.804390> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340674, -0.127321, -0.931520,
		-0.018475, 0.991503, -0.128763,
		0.940000, -0.026656, -0.340132,
		36.481270, 43.733822, 46.702351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.833710, 44.164024, 46.339424>,  <35.823269, 43.752480, 46.940441>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.833710, 44.164024, 46.339424> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.149975, 43.921436, 46.305859>,  <36.339733, 43.775883, 46.285721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.149975, 43.921436, 46.305859>,  <35.833710, 44.164024, 46.339424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.149975, 43.921436, 46.305859> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284727, -0.242901, -0.927324,
		0.542013, 0.757095, -0.364732,
		0.790666, -0.606471, -0.083910,
		36.387173, 43.739494, 46.280685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<41.698593, 43.574921, 50.034134> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.870434, 43.233810, 50.152943>,  <41.973537, 43.029144, 50.224228>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.870434, 43.233810, 50.152943>,  <41.698593, 43.574921, 50.034134>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.870434, 43.233810, 50.152943> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469178, 0.491828, 0.733470,
		-0.771565, -0.175747, 0.611393,
		0.429605, -0.852771, 0.297020,
		41.999317, 42.977978, 50.242050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.689106, 43.468216, 49.329494>,  <41.698593, 43.574921, 50.034134>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.689106, 43.468216, 49.329494> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.048996, 43.296124, 49.300129>,  <42.264931, 43.192867, 49.282509>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.048996, 43.296124, 49.300129>,  <41.689106, 43.468216, 49.329494>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.048996, 43.296124, 49.300129> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330320, -0.561298, -0.758837,
		0.285269, 0.706997, -0.647130,
		0.899728, -0.430233, -0.073414,
		42.318913, 43.167053, 49.278103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.749996, 43.486042, 48.705017>,  <41.689106, 43.468216, 49.329494>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.749996, 43.486042, 48.705017> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.995705, 43.192211, 48.820297>,  <42.143131, 43.015911, 48.889465>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.995705, 43.192211, 48.820297>,  <41.749996, 43.486042, 48.705017>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.995705, 43.192211, 48.820297> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348671, -0.580317, -0.735976,
		0.707880, 0.351604, -0.612601,
		0.614275, -0.734579, 0.288201,
		42.179989, 42.971836, 48.906757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.161938, 43.395302, 48.149567>,  <41.749996, 43.486042, 48.705017>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.161938, 43.395302, 48.149567> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.186302, 43.056717, 48.361149>,  <42.200920, 42.853565, 48.488098>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.186302, 43.056717, 48.361149>,  <42.161938, 43.395302, 48.149567>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.186302, 43.056717, 48.361149> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361160, -0.512723, -0.778896,
		0.930512, -0.143595, -0.336938,
		0.060910, -0.846461, 0.528955,
		42.204575, 42.802780, 48.519836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.397064, 42.893238, 47.664646>,  <42.161938, 43.395302, 48.149567>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.397064, 42.893238, 47.664646> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.277992, 42.641899, 47.952137>,  <42.206551, 42.491096, 48.124630>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.277992, 42.641899, 47.952137>,  <42.397064, 42.893238, 47.664646>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.277992, 42.641899, 47.952137> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310611, -0.648142, -0.695293,
		0.902722, -0.430219, -0.002233,
		-0.297681, -0.628350, 0.718722,
		42.188686, 42.453396, 48.167755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.476162, 42.214935, 47.364201>,  <42.397064, 42.893238, 47.664646>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.476162, 42.214935, 47.364201> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.199883, 42.189754, 47.652359>,  <42.034115, 42.174644, 47.825253>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.199883, 42.189754, 47.652359>,  <42.476162, 42.214935, 47.364201>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.199883, 42.189754, 47.652359> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496985, -0.682332, -0.536124,
		0.525298, -0.728327, 0.440001,
		-0.690700, -0.062951, 0.720396,
		41.992672, 42.170868, 47.868477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.386147, 41.598068, 47.399170>,  <42.476162, 42.214935, 47.364201>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.386147, 41.598068, 47.399170> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.057652, 41.692375, 47.607010>,  <41.860554, 41.748959, 47.731716>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.057652, 41.692375, 47.607010>,  <42.386147, 41.598068, 47.399170>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.057652, 41.692375, 47.607010> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466763, -0.801355, -0.374115,
		0.328182, -0.549768, 0.768148,
		-0.821236, 0.235766, 0.519602,
		41.811279, 41.763103, 47.762890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.185909, 40.981514, 47.776329>,  <42.386147, 41.598068, 47.399170>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.185909, 40.981514, 47.776329> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.865192, 41.218555, 47.745461>,  <41.672764, 41.360779, 47.726940>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.865192, 41.218555, 47.745461>,  <42.185909, 40.981514, 47.776329>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.865192, 41.218555, 47.745461> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539859, -0.773627, -0.331744,
		-0.256297, -0.224325, 0.940208,
		-0.801788, 0.592604, -0.077174,
		41.624657, 41.396336, 47.722309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.771797, 40.646572, 48.154961>,  <42.185909, 40.981514, 47.776329>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.771797, 40.646572, 48.154961> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.546246, 40.863052, 47.905437>,  <41.410915, 40.992943, 47.755722>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.546246, 40.863052, 47.905437>,  <41.771797, 40.646572, 48.154961>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.546246, 40.863052, 47.905437> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492518, -0.826698, -0.272022,
		-0.662922, 0.153850, 0.732710,
		-0.563880, 0.541202, -0.623810,
		41.377083, 41.025414, 47.718296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.051903, 40.502312, 48.288528>,  <41.771797, 40.646572, 48.154961>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.051903, 40.502312, 48.288528> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.053623, 40.626839, 47.908409>,  <41.054653, 40.701557, 47.680340>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.053623, 40.626839, 47.908409>,  <41.051903, 40.502312, 48.288528>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.053623, 40.626839, 47.908409> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487470, -0.829093, -0.273820,
		-0.873129, 0.464418, 0.148195,
		0.004299, 0.311320, -0.950295,
		41.054913, 40.720234, 47.623322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.342209, 40.457439, 48.062069>,  <41.051903, 40.502312, 48.288528>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.342209, 40.457439, 48.062069> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.573738, 40.468422, 47.736073>,  <40.712658, 40.475010, 47.540474>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.573738, 40.468422, 47.736073>,  <40.342209, 40.457439, 48.062069>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.573738, 40.468422, 47.736073> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607059, -0.652796, -0.453141,
		-0.544462, 0.757036, -0.361190,
		0.578827, 0.027454, -0.814988,
		40.747387, 40.476658, 47.491577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.829365, 40.346291, 47.555347>,  <40.342209, 40.457439, 48.062069>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.829365, 40.346291, 47.555347> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.185596, 40.307060, 47.377693>,  <40.399334, 40.283520, 47.271103>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.185596, 40.307060, 47.377693>,  <39.829365, 40.346291, 47.555347>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.185596, 40.307060, 47.377693> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329332, -0.812548, -0.480944,
		-0.313709, 0.574584, -0.755936,
		0.890577, -0.098078, -0.444132,
		40.452770, 40.277637, 47.244453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.596771, 40.866543, 47.208050>,  <39.829365, 40.346291, 47.555347>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.596771, 40.866543, 47.208050> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.269772, 40.862278, 47.438381>,  <39.073570, 40.859718, 47.576580>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.269772, 40.862278, 47.438381>,  <39.596771, 40.866543, 47.208050>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.269772, 40.862278, 47.438381> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504993, 0.467448, 0.725586,
		-0.276908, 0.883956, -0.376754,
		-0.817499, -0.010662, 0.575831,
		39.024521, 40.859077, 47.611130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.663509, 41.492184, 47.521950>,  <39.596771, 40.866543, 47.208050>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.663509, 41.492184, 47.521950> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.336533, 41.363575, 47.713120>,  <39.140347, 41.286407, 47.827820>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.336533, 41.363575, 47.713120>,  <39.663509, 41.492184, 47.521950>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.336533, 41.363575, 47.713120> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197234, 0.623314, 0.756689,
		-0.541192, 0.712811, -0.446107,
		-0.817441, -0.321526, 0.477923,
		39.091301, 41.267117, 47.856495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.166931, 42.069607, 47.663120>,  <39.663509, 41.492184, 47.521950>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.166931, 42.069607, 47.663120> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.130695, 41.789165, 47.946033>,  <39.108952, 41.620899, 48.115780>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.130695, 41.789165, 47.946033>,  <39.166931, 42.069607, 47.663120>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.130695, 41.789165, 47.946033> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054896, 0.705604, 0.706477,
		-0.994374, 0.102829, -0.025435,
		-0.090594, -0.701106, 0.707279,
		39.103516, 41.578835, 48.158218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.651848, 42.329094, 48.211639>,  <39.166931, 42.069607, 47.663120>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.651848, 42.329094, 48.211639> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.852276, 42.021397, 48.370228>,  <38.972534, 41.836777, 48.465382>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.852276, 42.021397, 48.370228>,  <38.651848, 42.329094, 48.211639>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.852276, 42.021397, 48.370228> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079843, 0.497267, 0.863916,
		-0.861716, -0.401228, 0.310584,
		0.501070, -0.769248, 0.396468,
		39.002598, 41.790623, 48.489166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.377453, 42.335625, 48.904663>,  <38.651848, 42.329094, 48.211639>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.377453, 42.335625, 48.904663> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.706661, 42.108471, 48.899822>,  <38.904186, 41.972179, 48.896919>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.706661, 42.108471, 48.899822>,  <38.377453, 42.335625, 48.904663>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.706661, 42.108471, 48.899822> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244307, 0.334675, 0.910113,
		-0.512787, -0.751999, 0.414182,
		0.823021, -0.567882, -0.012102,
		38.953568, 41.938107, 48.896191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.392216, 41.881542, 49.544399>,  <38.377453, 42.335625, 48.904663>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.392216, 41.881542, 49.544399> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.773277, 41.935547, 49.435429>,  <39.001915, 41.967949, 49.370049>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.773277, 41.935547, 49.435429>,  <38.392216, 41.881542, 49.544399>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.773277, 41.935547, 49.435429> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188940, 0.439108, 0.878343,
		0.238208, -0.888232, 0.392811,
		0.952658, 0.135010, -0.272422,
		39.059074, 41.976051, 49.353703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.773987, 41.615025, 50.199650>,  <38.392216, 41.881542, 49.544399>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.773987, 41.615025, 50.199650> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.018738, 41.850365, 49.988197>,  <39.165588, 41.991570, 49.861324>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.018738, 41.850365, 49.988197>,  <38.773987, 41.615025, 50.199650>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.018738, 41.850365, 49.988197> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189167, 0.540101, 0.820065,
		0.767997, -0.601780, 0.219181,
		0.611879, 0.588346, -0.528633,
		39.202301, 42.026867, 49.829609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.213852, 41.792458, 50.673393>,  <38.773987, 41.615025, 50.199650>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.213852, 41.792458, 50.673393> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.258278, 42.062939, 50.382072>,  <39.284935, 42.225227, 50.207279>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.258278, 42.062939, 50.382072>,  <39.213852, 41.792458, 50.673393>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.258278, 42.062939, 50.382072> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139726, 0.714928, 0.685095,
		0.983941, -0.177854, -0.015077,
		0.111067, 0.676200, -0.728298,
		39.291599, 42.265800, 50.163582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.709446, 42.202560, 50.884922>,  <39.213852, 41.792458, 50.673393>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.709446, 42.202560, 50.884922> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.554153, 42.429443, 50.594391>,  <39.460976, 42.565571, 50.420071>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.554153, 42.429443, 50.594391>,  <39.709446, 42.202560, 50.884922>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.554153, 42.429443, 50.594391> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114368, 0.811713, 0.572749,
		0.914437, 0.139292, -0.380004,
		-0.388234, 0.567203, -0.726330,
		39.437683, 42.599606, 50.376492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.110229, 42.844944, 50.782375>,  <39.709446, 42.202560, 50.884922>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.110229, 42.844944, 50.782375> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.750164, 42.949974, 50.643372>,  <39.534126, 43.012993, 50.559971>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.750164, 42.949974, 50.643372>,  <40.110229, 42.844944, 50.782375>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.750164, 42.949974, 50.643372> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009455, 0.785884, 0.618301,
		0.435452, 0.559857, -0.704941,
		-0.900162, 0.262576, -0.347509,
		39.480114, 43.028748, 50.539120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.001854, 43.647736, 50.817268>,  <40.110229, 42.844944, 50.782375>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.001854, 43.647736, 50.817268> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.630604, 43.509708, 50.761402>,  <39.407852, 43.426891, 50.727882>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.630604, 43.509708, 50.761402>,  <40.001854, 43.647736, 50.817268>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.630604, 43.509708, 50.761402> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353091, 0.697191, 0.623900,
		-0.117916, 0.628373, -0.768923,
		-0.928129, -0.345067, -0.139663,
		39.352165, 43.406189, 50.719501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.676899, 44.256950, 50.596745>,  <40.001854, 43.647736, 50.817268>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.676899, 44.256950, 50.596745> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.427940, 43.987366, 50.755939>,  <39.278564, 43.825615, 50.851456>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.427940, 43.987366, 50.755939>,  <39.676899, 44.256950, 50.596745>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.427940, 43.987366, 50.755939> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317173, 0.682033, 0.658963,
		-0.715561, 0.283903, -0.638256,
		-0.622394, -0.673967, 0.397990,
		39.241222, 43.785175, 50.875336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.099152, 44.647209, 50.767681>,  <39.676899, 44.256950, 50.596745>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.099152, 44.647209, 50.767681> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.056931, 44.306637, 50.973175>,  <39.031597, 44.102295, 51.096474>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.056931, 44.306637, 50.973175>,  <39.099152, 44.647209, 50.767681>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.056931, 44.306637, 50.973175> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241982, 0.523088, 0.817205,
		-0.964522, -0.038055, -0.261245,
		-0.105555, -0.851429, 0.513738,
		39.025265, 44.051208, 51.127296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.370930, 44.687870, 51.185699>,  <39.099152, 44.647209, 50.767681>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.370930, 44.687870, 51.185699> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.611523, 44.420181, 51.360222>,  <38.755878, 44.259567, 51.464935>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.611523, 44.420181, 51.360222>,  <38.370930, 44.687870, 51.185699>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.611523, 44.420181, 51.360222> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283248, 0.332023, 0.899740,
		-0.746990, -0.664757, 0.010148,
		0.601478, -0.669223, 0.436309,
		38.791965, 44.219414, 51.491116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.479221, 45.434483, 51.007957>,  <38.370930, 44.687870, 51.185699>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.479221, 45.434483, 51.007957> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.554737, 45.730579, 50.749840>,  <38.600048, 45.908237, 50.594971>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.554737, 45.730579, 50.749840>,  <38.479221, 45.434483, 51.007957>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.554737, 45.730579, 50.749840> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549803, -0.464793, -0.694034,
		-0.813679, 0.485815, 0.319235,
		0.188793, 0.740237, -0.645295,
		38.611374, 45.952652, 50.556252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.861172, 45.701355, 50.731022>,  <38.479221, 45.434483, 51.007957>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.861172, 45.701355, 50.731022> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.146500, 45.783794, 50.463081>,  <38.317696, 45.833260, 50.302319>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.146500, 45.783794, 50.463081>,  <37.861172, 45.701355, 50.731022>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.146500, 45.783794, 50.463081> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532912, -0.461238, -0.709411,
		-0.455167, 0.863008, -0.219178,
		0.713321, 0.206098, -0.669848,
		38.360497, 45.845623, 50.262127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.451096, 45.936844, 50.159409>,  <37.861172, 45.701355, 50.731022>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.451096, 45.936844, 50.159409> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.810280, 45.844166, 50.009754>,  <38.025791, 45.788559, 49.919960>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.810280, 45.844166, 50.009754>,  <37.451096, 45.936844, 50.159409>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.810280, 45.844166, 50.009754> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433340, -0.317380, -0.843496,
		0.076693, 0.919557, -0.385400,
		0.897961, -0.231699, -0.374140,
		38.079670, 45.774654, 49.897511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.398067, 46.147736, 49.443233>,  <37.451096, 45.936844, 50.159409>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.398067, 46.147736, 49.443233> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.705250, 45.892284, 49.462841>,  <37.889561, 45.739014, 49.474606>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.705250, 45.892284, 49.462841>,  <37.398067, 46.147736, 49.443233>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.705250, 45.892284, 49.462841> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268844, -0.390855, -0.880315,
		0.581350, 0.662865, -0.471850,
		0.767955, -0.638626, 0.049016,
		37.935635, 45.700695, 49.477547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.653595, 46.103313, 48.787769>,  <37.398067, 46.147736, 49.443233>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.653595, 46.103313, 48.787769> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.787495, 45.771675, 48.966896>,  <37.867836, 45.572693, 49.074371>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.787495, 45.771675, 48.966896>,  <37.653595, 46.103313, 48.787769>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.787495, 45.771675, 48.966896> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188928, -0.524640, -0.830096,
		0.923173, 0.193270, -0.332263,
		0.334751, -0.829096, 0.447819,
		37.887920, 45.522945, 49.101242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.916626, 45.821682, 48.323994>,  <37.653595, 46.103313, 48.787769>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.916626, 45.821682, 48.323994> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.862080, 45.506191, 48.563766>,  <37.829353, 45.316898, 48.707630>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.862080, 45.506191, 48.563766>,  <37.916626, 45.821682, 48.323994>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.862080, 45.506191, 48.563766> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072981, -0.595439, -0.800079,
		0.987967, -0.152847, 0.023634,
		-0.136362, -0.788727, 0.599429,
		37.821171, 45.269573, 48.743595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.417328, 45.245678, 48.289597>,  <37.916626, 45.821682, 48.323994>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.417328, 45.245678, 48.289597> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.041325, 45.147701, 48.384583>,  <37.815723, 45.088917, 48.441574>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.041325, 45.147701, 48.384583>,  <38.417328, 45.245678, 48.289597>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.041325, 45.147701, 48.384583> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124459, -0.401869, -0.907200,
		0.317640, -0.882329, 0.347275,
		-0.940008, -0.244942, 0.237463,
		37.759323, 45.074219, 48.455822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.936592, 44.860588, 48.057343>,  <38.417328, 45.245678, 48.289597>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.936592, 44.860588, 48.057343> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.111694, 44.989136, 47.721466>,  <39.216755, 45.066265, 47.519939>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.111694, 44.989136, 47.721466>,  <38.936592, 44.860588, 48.057343>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.111694, 44.989136, 47.721466> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580902, 0.611734, 0.536967,
		0.686236, -0.722843, 0.081107,
		0.437759, 0.321371, -0.839695,
		39.243023, 45.085548, 47.469559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.667156, 44.548885, 47.909313>,  <38.936592, 44.860588, 48.057343>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.667156, 44.548885, 47.909313> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.609135, 44.914036, 47.756672>,  <39.574322, 45.133125, 47.665089>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.609135, 44.914036, 47.756672>,  <39.667156, 44.548885, 47.909313>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.609135, 44.914036, 47.756672> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748233, 0.353558, 0.561377,
		0.647385, -0.204095, -0.734328,
		-0.145053, 0.912875, -0.381599,
		39.565620, 45.187897, 47.642193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.301754, 44.908451, 48.055794>,  <39.667156, 44.548885, 47.909313>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.301754, 44.908451, 48.055794> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.091038, 45.189457, 47.864391>,  <39.964607, 45.358059, 47.749550>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.091038, 45.189457, 47.864391>,  <40.301754, 44.908451, 48.055794>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.091038, 45.189457, 47.864391> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580090, 0.708610, 0.401705,
		0.621279, -0.065964, -0.780808,
		-0.526791, 0.702510, -0.478509,
		39.932999, 45.400211, 47.720837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.826958, 45.283314, 47.852394>,  <40.301754, 44.908451, 48.055794>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.826958, 45.283314, 47.852394> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.501999, 45.516491, 47.857937>,  <40.307026, 45.656399, 47.861263>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.501999, 45.516491, 47.857937>,  <40.826958, 45.283314, 47.852394>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.501999, 45.516491, 47.857937> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558697, 0.771360, 0.304731,
		0.166952, 0.255304, -0.952338,
		-0.812395, 0.582943, 0.013858,
		40.258282, 45.691376, 47.862095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.935528, 45.919861, 47.355930>,  <40.826958, 45.283314, 47.852394>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.935528, 45.919861, 47.355930> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.663719, 46.032093, 47.627083>,  <40.500633, 46.099430, 47.789776>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.663719, 46.032093, 47.627083>,  <40.935528, 45.919861, 47.355930>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.663719, 46.032093, 47.627083> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607214, 0.733659, 0.305019,
		-0.411752, 0.618887, -0.668909,
		-0.679523, 0.280578, 0.677882,
		40.459862, 46.116268, 47.830448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.966618, 46.547234, 47.225780>,  <40.935528, 45.919861, 47.355930>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.966618, 46.547234, 47.225780> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.764797, 46.522602, 47.570255>,  <40.643703, 46.507824, 47.776939>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.764797, 46.522602, 47.570255>,  <40.966618, 46.547234, 47.225780>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.764797, 46.522602, 47.570255> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688483, 0.573184, 0.444355,
		-0.520979, 0.817110, -0.246805,
		-0.504551, -0.061578, 0.861183,
		40.613430, 46.504128, 47.828609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.855564, 47.216545, 47.457005>,  <40.966618, 46.547234, 47.225780>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.855564, 47.216545, 47.457005> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.853535, 46.964169, 47.767330>,  <40.852318, 46.812740, 47.953526>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.853535, 46.964169, 47.767330>,  <40.855564, 47.216545, 47.457005>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.853535, 46.964169, 47.767330> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644583, 0.591074, 0.484917,
		-0.764517, 0.502536, 0.403697,
		-0.005073, -0.630944, 0.775812,
		40.852013, 46.774887, 48.000072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.777332, 47.630215, 48.001354>,  <40.855564, 47.216545, 47.457005>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.777332, 47.630215, 48.001354> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.933750, 47.291054, 48.144543>,  <41.027603, 47.087559, 48.230457>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.933750, 47.291054, 48.144543>,  <40.777332, 47.630215, 48.001354>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.933750, 47.291054, 48.144543> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753426, 0.518300, 0.404617,
		-0.528612, 0.111483, 0.841511,
		0.391047, -0.847902, 0.357973,
		41.051064, 47.036682, 48.251934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.906345, 47.789070, 48.721672>,  <40.777332, 47.630215, 48.001354>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.906345, 47.789070, 48.721672> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.140316, 47.481956, 48.617077>,  <41.280697, 47.297688, 48.554321>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.140316, 47.481956, 48.617077>,  <40.906345, 47.789070, 48.721672>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.140316, 47.481956, 48.617077> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799401, 0.491184, 0.345973,
		-0.137193, -0.411400, 0.901071,
		0.584925, -0.767781, -0.261486,
		41.315792, 47.251621, 48.538631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<36.191837, 38.307018, 36.222626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.558296, 38.467045, 36.212685>,  <36.778172, 38.563061, 36.206722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.558296, 38.467045, 36.212685>,  <36.191837, 38.307018, 36.222626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.558296, 38.467045, 36.212685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136804, 0.370359, 0.918759,
		0.376784, -0.838314, 0.394035,
		0.916143, 0.400079, -0.024860,
		36.833141, 38.587063, 36.205231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.423531, 38.181988, 36.898418>,  <36.191837, 38.307018, 36.222626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.423531, 38.181988, 36.898418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.652382, 38.479439, 36.760036>,  <36.789692, 38.657909, 36.677010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.652382, 38.479439, 36.760036>,  <36.423531, 38.181988, 36.898418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.652382, 38.479439, 36.760036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087438, 0.474709, 0.875788,
		0.815488, -0.470816, 0.336617,
		0.572131, 0.743629, -0.345953,
		36.824020, 38.702526, 36.656250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.857143, 38.308819, 37.416325>,  <36.423531, 38.181988, 36.898418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.857143, 38.308819, 37.416325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.869270, 38.645134, 37.200123>,  <36.876549, 38.846924, 37.070400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.869270, 38.645134, 37.200123>,  <36.857143, 38.308819, 37.416325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.869270, 38.645134, 37.200123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023714, 0.541210, 0.840552,
		0.999259, -0.012668, 0.036348,
		0.030320, 0.840792, -0.540509,
		36.878365, 38.897373, 37.037971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.338242, 38.727253, 37.804619>,  <36.857143, 38.308819, 37.416325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.338242, 38.727253, 37.804619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.126835, 38.977470, 37.575058>,  <36.999989, 39.127602, 37.437321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.126835, 38.977470, 37.575058>,  <37.338242, 38.727253, 37.804619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.126835, 38.977470, 37.575058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134702, 0.605672, 0.784230,
		0.838167, 0.491785, -0.235847,
		-0.528519, 0.625546, -0.573899,
		36.968281, 39.165134, 37.402889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.672497, 39.298168, 37.890839>,  <37.338242, 38.727253, 37.804619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.672497, 39.298168, 37.890839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.313187, 39.410675, 37.755795>,  <37.097599, 39.478180, 37.674767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.313187, 39.410675, 37.755795>,  <37.672497, 39.298168, 37.890839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.313187, 39.410675, 37.755795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071836, 0.663971, 0.744300,
		0.433513, 0.692842, -0.576226,
		-0.898279, 0.281270, -0.337611,
		37.043701, 39.495056, 37.654510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.667439, 39.964039, 37.977436>,  <37.672497, 39.298168, 37.890839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.667439, 39.964039, 37.977436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.274612, 39.896404, 37.944073>,  <37.038918, 39.855824, 37.924057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.274612, 39.896404, 37.944073>,  <37.667439, 39.964039, 37.977436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.274612, 39.896404, 37.944073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169979, 0.602678, 0.779671,
		-0.081563, 0.779866, -0.620610,
		-0.982067, -0.169083, -0.083404,
		36.979992, 39.845680, 37.919052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.319511, 40.670586, 37.995697>,  <37.667439, 39.964039, 37.977436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.319511, 40.670586, 37.995697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.055542, 40.381840, 38.079037>,  <36.897160, 40.208591, 38.129040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.055542, 40.381840, 38.079037>,  <37.319511, 40.670586, 37.995697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.055542, 40.381840, 38.079037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396745, 0.570306, 0.719267,
		-0.638036, 0.392001, -0.662755,
		-0.659927, -0.721863, 0.208351,
		36.857563, 40.165279, 38.141541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.685314, 41.010086, 37.978386>,  <37.319511, 40.670586, 37.995697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.685314, 41.010086, 37.978386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.702389, 40.683487, 38.208691>,  <36.712635, 40.487526, 38.346874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.702389, 40.683487, 38.208691>,  <36.685314, 41.010086, 37.978386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.702389, 40.683487, 38.208691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044240, 0.577268, 0.815355,
		-0.998109, -0.009335, 0.060765,
		0.042690, -0.816501, 0.575763,
		36.715195, 40.438538, 38.381420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.445415, 41.333755, 38.601269>,  <36.685314, 41.010086, 37.978386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.445415, 41.333755, 38.601269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.588459, 40.977497, 38.713600>,  <36.674286, 40.763741, 38.780998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.588459, 40.977497, 38.713600>,  <36.445415, 41.333755, 38.601269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.588459, 40.977497, 38.713600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034466, 0.313099, 0.949095,
		-0.933237, -0.329721, 0.142663,
		0.357604, -0.890647, 0.280831,
		36.695740, 40.710304, 38.797848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.980034, 41.109650, 39.043156>,  <36.445415, 41.333755, 38.601269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.980034, 41.109650, 39.043156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.328800, 40.931168, 39.123814>,  <36.538059, 40.824078, 39.172211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.328800, 40.931168, 39.123814>,  <35.980034, 41.109650, 39.043156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.328800, 40.931168, 39.123814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058620, 0.313737, 0.947699,
		-0.486131, -0.838136, 0.247396,
		0.871918, -0.446203, 0.201649,
		36.590374, 40.797306, 39.184307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.902451, 41.012005, 39.741680>,  <35.980034, 41.109650, 39.043156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.902451, 41.012005, 39.741680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.291878, 40.971394, 39.659836>,  <36.525532, 40.947025, 39.610729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.291878, 40.971394, 39.659836>,  <35.902451, 41.012005, 39.741680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.291878, 40.971394, 39.659836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228249, 0.398008, 0.888534,
		-0.008774, -0.911746, 0.410659,
		0.973563, -0.101529, -0.204613,
		36.583946, 40.940933, 39.598454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.374825, 40.633987, 40.348328>,  <35.902451, 41.012005, 39.741680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.374825, 40.633987, 40.348328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.583027, 40.895779, 40.128971>,  <36.707947, 41.052853, 39.997356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.583027, 40.895779, 40.128971>,  <36.374825, 40.633987, 40.348328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.583027, 40.895779, 40.128971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286883, 0.470874, 0.834252,
		0.804223, -0.591555, 0.057333,
		0.520502, 0.654477, -0.548395,
		36.739178, 41.092121, 39.964451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.800011, 40.242748, 40.784374>,  <36.374825, 40.633987, 40.348328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.800011, 40.242748, 40.784374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.471130, 40.444859, 40.889202>,  <35.273800, 40.566124, 40.952099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.471130, 40.444859, 40.889202>,  <35.800011, 40.242748, 40.784374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.471130, 40.444859, 40.889202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544822, -0.565345, -0.619317,
		-0.164766, -0.651985, 0.740113,
		-0.822205, 0.505273, 0.262066,
		35.224468, 40.596439, 40.967823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.386837, 39.726692, 40.952229>,  <35.800011, 40.242748, 40.784374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.386837, 39.726692, 40.952229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.156368, 40.042145, 40.866348>,  <35.018089, 40.231415, 40.814819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.156368, 40.042145, 40.866348>,  <35.386837, 39.726692, 40.952229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.156368, 40.042145, 40.866348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717897, -0.613871, -0.328307,
		-0.390711, -0.035027, 0.919847,
		-0.576167, 0.788629, -0.214700,
		34.983517, 40.278732, 40.801937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.704239, 39.565903, 41.231644>,  <35.386837, 39.726692, 40.952229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.704239, 39.565903, 41.231644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.648476, 39.844154, 40.949749>,  <34.615017, 40.011105, 40.780609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.648476, 39.844154, 40.949749>,  <34.704239, 39.565903, 41.231644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.648476, 39.844154, 40.949749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703337, -0.570536, -0.424036,
		-0.697054, 0.436558, 0.568800,
		-0.139405, 0.695633, -0.704741,
		34.606655, 40.052845, 40.738327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.975864, 39.550648, 41.175507>,  <34.704239, 39.565903, 41.231644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.975864, 39.550648, 41.175507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.133366, 39.727001, 40.852871>,  <34.227867, 39.832813, 40.659290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.133366, 39.727001, 40.852871>,  <33.975864, 39.550648, 41.175507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.133366, 39.727001, 40.852871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631254, -0.508156, -0.585915,
		-0.668191, 0.739867, 0.078220,
		0.393751, 0.440880, -0.806589,
		34.251492, 39.859264, 40.610893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.464363, 39.632526, 40.897091>,  <33.975864, 39.550648, 41.175507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.464363, 39.632526, 40.897091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.725819, 39.693855, 40.600643>,  <33.882690, 39.730652, 40.422775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.725819, 39.693855, 40.600643>,  <33.464363, 39.632526, 40.897091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.725819, 39.693855, 40.600643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643262, -0.403361, -0.650780,
		-0.398713, 0.902105, -0.165028,
		0.653638, 0.153318, -0.741115,
		33.921909, 39.739849, 40.378307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.046314, 39.992981, 40.394382>,  <33.464363, 39.632526, 40.897091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.046314, 39.992981, 40.394382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.365486, 39.843967, 40.204849>,  <33.556992, 39.754559, 40.091129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.365486, 39.843967, 40.204849>,  <33.046314, 39.992981, 40.394382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.365486, 39.843967, 40.204849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575385, -0.236632, -0.782903,
		0.179535, 0.897342, -0.403168,
		0.797934, -0.372535, -0.473834,
		33.604866, 39.732208, 40.062698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.998333, 40.237534, 39.728409>,  <33.046314, 39.992981, 40.394382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.998333, 40.237534, 39.728409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.214676, 39.901093, 39.726631>,  <33.344482, 39.699226, 39.725563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.214676, 39.901093, 39.726631>,  <32.998333, 40.237534, 39.728409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.214676, 39.901093, 39.726631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488213, -0.309624, -0.815954,
		0.684925, 0.443485, -0.578099,
		0.540857, -0.841103, -0.004446,
		33.376934, 39.648762, 39.725296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.055153, 40.153168, 39.089844>,  <32.998333, 40.237534, 39.728409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.055153, 40.153168, 39.089844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.132786, 39.786339, 39.229156>,  <33.179367, 39.566242, 39.312744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.132786, 39.786339, 39.229156>,  <33.055153, 40.153168, 39.089844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.132786, 39.786339, 39.229156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511355, -0.397563, -0.761879,
		0.837167, -0.030229, -0.546112,
		0.194083, -0.917077, 0.348284,
		33.191010, 39.511215, 39.333641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.940216, 39.749931, 38.522511>,  <33.055153, 40.153168, 39.089844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.940216, 39.749931, 38.522511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.968639, 39.481632, 38.817822>,  <32.985691, 39.320652, 38.995007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.968639, 39.481632, 38.817822>,  <32.940216, 39.749931, 38.522511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.968639, 39.481632, 38.817822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677264, -0.575826, -0.457972,
		0.732301, -0.467465, -0.495188,
		0.071056, -0.670747, 0.738275,
		32.989956, 39.280407, 39.039303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.805214, 39.138420, 38.144188>,  <32.940216, 39.749931, 38.522511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.805214, 39.138420, 38.144188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.731857, 39.037060, 38.524117>,  <32.687843, 38.976242, 38.752075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.731857, 39.037060, 38.524117>,  <32.805214, 39.138420, 38.144188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.731857, 39.037060, 38.524117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830150, -0.477580, -0.287694,
		0.526517, -0.841253, -0.122778,
		-0.183387, -0.253400, 0.949820,
		32.676842, 38.961040, 38.809063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.468216, 38.543995, 38.098877>,  <32.805214, 39.138420, 38.144188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.468216, 38.543995, 38.098877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.378998, 38.628048, 38.479633>,  <32.325466, 38.678478, 38.708088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.378998, 38.628048, 38.479633>,  <32.468216, 38.543995, 38.098877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.378998, 38.628048, 38.479633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.867623, -0.487949, -0.095585,
		0.444388, -0.847201, 0.291152,
		-0.223047, 0.210133, 0.951889,
		32.312084, 38.691090, 38.765202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.312004, 37.888683, 38.512581>,  <32.468216, 38.543995, 38.098877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.312004, 37.888683, 38.512581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.127735, 38.178535, 38.717594>,  <32.017174, 38.352448, 38.840603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.127735, 38.178535, 38.717594>,  <32.312004, 37.888683, 38.512581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.127735, 38.178535, 38.717594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858604, -0.510149, -0.050463,
		0.224902, -0.463312, 0.857182,
		-0.460671, 0.724631, 0.512535,
		31.989534, 38.395924, 38.871353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.902945, 37.544827, 39.120083>,  <32.312004, 37.888683, 38.512581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.902945, 37.544827, 39.120083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.752335, 37.910313, 39.058949>,  <31.661968, 38.129604, 39.022266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.752335, 37.910313, 39.058949>,  <31.902945, 37.544827, 39.120083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.752335, 37.910313, 39.058949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.925980, -0.376199, 0.032171,
		-0.028102, 0.153636, 0.987728,
		-0.376524, 0.913712, -0.152835,
		31.639378, 38.184425, 39.013100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.200825, 37.449120, 39.308304>,  <31.902945, 37.544827, 39.120083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.200825, 37.449120, 39.308304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.160833, 37.802132, 39.124504>,  <31.136839, 38.013939, 39.014225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.160833, 37.802132, 39.124504>,  <31.200825, 37.449120, 39.308304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.160833, 37.802132, 39.124504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.991325, -0.127951, -0.030052,
		-0.085315, 0.452507, 0.887670,
		-0.099980, 0.882534, -0.459498,
		31.130840, 38.066891, 38.986656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.759993, 37.371578, 39.879902>,  <31.200825, 37.449120, 39.308304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.759993, 37.371578, 39.879902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.635189, 37.092045, 40.137363>,  <31.560307, 36.924324, 40.291840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.635189, 37.092045, 40.137363>,  <31.759993, 37.371578, 39.879902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.635189, 37.092045, 40.137363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251279, -0.714045, -0.653452,
		0.916247, -0.042148, 0.398391,
		-0.312010, -0.698830, 0.643650,
		31.541586, 36.882397, 40.330460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.207554, 36.774273, 40.090393>,  <31.759993, 37.371578, 39.879902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.207554, 36.774273, 40.090393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.870884, 36.558510, 40.100380>,  <31.668882, 36.429054, 40.106373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.870884, 36.558510, 40.100380>,  <32.207554, 36.774273, 40.090393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.870884, 36.558510, 40.100380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461437, -0.742490, -0.485575,
		0.280459, -0.397177, 0.873838,
		-0.841676, -0.539406, 0.024966,
		31.618382, 36.396687, 40.107868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.709911, 36.735371, 40.619041>,  <32.207554, 36.774273, 40.090393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.709911, 36.735371, 40.619041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.982697, 36.505524, 40.438046>,  <33.146366, 36.367615, 40.329449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.982697, 36.505524, 40.438046>,  <32.709911, 36.735371, 40.619041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.982697, 36.505524, 40.438046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704280, 0.349045, 0.618189,
		-0.197280, -0.740261, 0.642724,
		0.681961, -0.574614, -0.452492,
		33.187286, 36.333141, 40.302299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.097584, 36.250832, 41.059845>,  <32.709911, 36.735371, 40.619041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.097584, 36.250832, 41.059845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.340298, 36.310215, 40.747494>,  <33.485928, 36.345844, 40.560081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.340298, 36.310215, 40.747494>,  <33.097584, 36.250832, 41.059845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.340298, 36.310215, 40.747494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754046, 0.203265, 0.624578,
		0.251453, -0.967803, 0.011389,
		0.606783, 0.148464, -0.780879,
		33.522331, 36.354755, 40.513229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.571865, 35.726715, 41.075897>,  <33.097584, 36.250832, 41.059845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.571865, 35.726715, 41.075897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.725513, 36.054459, 40.905674>,  <33.817703, 36.251106, 40.803539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.725513, 36.054459, 40.905674>,  <33.571865, 35.726715, 41.075897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.725513, 36.054459, 40.905674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791009, -0.054321, 0.609389,
		0.476191, -0.570701, -0.668986,
		0.384119, 0.819359, -0.425563,
		33.840748, 36.300266, 40.778004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.180672, 35.733574, 41.200851>,  <33.571865, 35.726715, 41.075897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.180672, 35.733574, 41.200851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.206604, 36.109928, 41.067871>,  <34.222164, 36.335743, 40.988083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.206604, 36.109928, 41.067871>,  <34.180672, 35.733574, 41.200851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.206604, 36.109928, 41.067871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722571, 0.185512, 0.665940,
		0.688250, -0.283395, -0.667832,
		0.064833, 0.940889, -0.332452,
		34.226055, 36.392197, 40.968136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.916954, 35.868790, 41.141151>,  <34.180672, 35.733574, 41.200851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.916954, 35.868790, 41.141151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.739548, 36.226261, 41.168350>,  <34.633102, 36.440746, 41.184669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.739548, 36.226261, 41.168350>,  <34.916954, 35.868790, 41.141151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.739548, 36.226261, 41.168350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666741, 0.278289, 0.691384,
		0.598955, 0.351976, -0.719281,
		-0.443519, 0.893682, 0.067995,
		34.606491, 36.494366, 41.188747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.514816, 36.230324, 41.202034>,  <34.916954, 35.868790, 41.141151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.514816, 36.230324, 41.202034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.214359, 36.443687, 41.357597>,  <35.034084, 36.571705, 41.450935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.214359, 36.443687, 41.357597>,  <35.514816, 36.230324, 41.202034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.214359, 36.443687, 41.357597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600358, 0.307008, 0.738455,
		0.274503, 0.788173, -0.550847,
		-0.751144, 0.533414, 0.388911,
		34.989017, 36.603710, 41.474270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.872902, 36.761803, 41.254757>,  <35.514816, 36.230324, 41.202034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.872902, 36.761803, 41.254757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.545135, 36.840031, 41.470280>,  <35.348476, 36.886967, 41.599594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.545135, 36.840031, 41.470280>,  <35.872902, 36.761803, 41.254757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.545135, 36.840031, 41.470280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565295, 0.431331, 0.703132,
		-0.094892, 0.880741, -0.463993,
		-0.819413, 0.195571, 0.538809,
		35.299313, 36.898701, 41.631924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.890205, 37.436199, 41.455006>,  <35.872902, 36.761803, 41.254757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.890205, 37.436199, 41.455006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.670364, 37.258461, 41.737988>,  <35.538460, 37.151817, 41.907776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.670364, 37.258461, 41.737988>,  <35.890205, 37.436199, 41.455006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.670364, 37.258461, 41.737988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611402, 0.363144, 0.703075,
		-0.569316, 0.818952, 0.072088,
		-0.549606, -0.444347, 0.707453,
		35.505482, 37.125156, 41.950222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.655891, 37.948841, 41.907944>,  <35.890205, 37.436199, 41.455006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.655891, 37.948841, 41.907944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.635612, 37.611221, 42.121490>,  <35.623444, 37.408649, 42.249619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.635612, 37.611221, 42.121490>,  <35.655891, 37.948841, 41.907944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.635612, 37.611221, 42.121490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497439, 0.442184, 0.746343,
		-0.866016, 0.303406, 0.397443,
		-0.050702, -0.844049, 0.533864,
		35.620403, 37.358006, 42.281651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.385796, 38.109322, 42.553284>,  <35.655891, 37.948841, 41.907944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.385796, 38.109322, 42.553284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.564392, 37.758671, 42.625038>,  <35.671551, 37.548283, 42.668091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.564392, 37.758671, 42.625038>,  <35.385796, 38.109322, 42.553284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.564392, 37.758671, 42.625038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523502, 0.418507, 0.742157,
		-0.725668, -0.237453, 0.645772,
		0.446487, -0.876623, 0.179390,
		35.698338, 37.495686, 42.678856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.210831, 37.906475, 43.228035>,  <35.385796, 38.109322, 42.553284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.210831, 37.906475, 43.228035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.548611, 37.711674, 43.138824>,  <35.751278, 37.594795, 43.085297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.548611, 37.711674, 43.138824>,  <35.210831, 37.906475, 43.228035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.548611, 37.711674, 43.138824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430818, 0.370092, 0.823060,
		-0.318288, -0.791115, 0.522331,
		0.844445, -0.487000, -0.223031,
		35.801945, 37.565575, 43.071915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.450081, 37.420059, 43.832832>,  <35.210831, 37.906475, 43.228035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.450081, 37.420059, 43.832832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.785404, 37.499264, 43.629646>,  <35.986599, 37.546787, 43.507732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.785404, 37.499264, 43.629646>,  <35.450081, 37.420059, 43.832832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.785404, 37.499264, 43.629646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449223, 0.277081, 0.849367,
		0.308936, -0.940221, 0.143325,
		0.838306, 0.198015, -0.507969,
		36.036896, 37.558666, 43.477257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.898460, 37.614525, 44.393372>,  <35.450081, 37.420059, 43.832832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.898460, 37.614525, 44.393372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.154991, 37.649807, 44.088501>,  <36.308910, 37.670975, 43.905579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.154991, 37.649807, 44.088501>,  <35.898460, 37.614525, 44.393372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.154991, 37.649807, 44.088501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716074, 0.287962, 0.635858,
		0.275566, -0.953571, 0.121516,
		0.641327, 0.088207, -0.762180,
		36.347389, 37.676270, 43.859848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.477440, 37.223083, 44.629456>,  <35.898460, 37.614525, 44.393372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.477440, 37.223083, 44.629456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.542900, 37.508766, 44.357243>,  <36.582176, 37.680176, 44.193916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.542900, 37.508766, 44.357243>,  <36.477440, 37.223083, 44.629456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.542900, 37.508766, 44.357243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591695, 0.480920, 0.647004,
		0.789377, -0.508550, -0.343890,
		0.163651, 0.714208, -0.680533,
		36.591995, 37.723030, 44.153084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.254524, 37.373161, 44.554413>,  <36.477440, 37.223083, 44.629456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.254524, 37.373161, 44.554413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.051559, 37.693943, 44.428299>,  <36.929779, 37.886410, 44.352631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.051559, 37.693943, 44.428299>,  <37.254524, 37.373161, 44.554413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.051559, 37.693943, 44.428299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515713, 0.575744, 0.634475,
		0.690341, 0.159345, -0.705718,
		-0.507413, 0.801952, -0.315283,
		36.899334, 37.934528, 44.333714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.718842, 37.880322, 44.376221>,  <37.254524, 37.373161, 44.554413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.718842, 37.880322, 44.376221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.388474, 38.097542, 44.436817>,  <37.190254, 38.227875, 44.473175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.388474, 38.097542, 44.436817>,  <37.718842, 37.880322, 44.376221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.388474, 38.097542, 44.436817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469203, 0.513097, 0.718735,
		0.312582, 0.664697, -0.678580,
		-0.825918, 0.543055, 0.151493,
		37.140697, 38.260460, 44.482265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.924309, 38.603405, 44.195400>,  <37.718842, 37.880322, 44.376221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.924309, 38.603405, 44.195400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.614117, 38.588226, 44.447491>,  <37.428001, 38.579121, 44.598743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.614117, 38.588226, 44.447491>,  <37.924309, 38.603405, 44.195400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.614117, 38.588226, 44.447491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505516, 0.560712, 0.655786,
		-0.378258, 0.827141, -0.415642,
		-0.775483, -0.037943, 0.630227,
		37.381474, 38.576843, 44.636559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.842342, 39.354740, 44.316406>,  <37.924309, 38.603405, 44.195400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.842342, 39.354740, 44.316406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.624466, 39.187252, 44.607059>,  <37.493740, 39.086761, 44.781452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.624466, 39.187252, 44.607059>,  <37.842342, 39.354740, 44.316406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.624466, 39.187252, 44.607059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182340, 0.786583, 0.589948,
		-0.818575, 0.453833, -0.352096,
		-0.544690, -0.418716, 0.726629,
		37.461060, 39.061638, 44.825047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.487659, 39.945656, 44.616840>,  <37.842342, 39.354740, 44.316406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.487659, 39.945656, 44.616840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.449379, 39.653000, 44.886818>,  <37.426411, 39.477406, 45.048805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.449379, 39.653000, 44.886818>,  <37.487659, 39.945656, 44.616840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.449379, 39.653000, 44.886818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107340, 0.666512, 0.737726,
		-0.989606, 0.143049, 0.014749,
		-0.095701, -0.731641, 0.674939,
		37.420670, 39.433506, 45.089298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.180500, 40.245022, 45.162277>,  <37.487659, 39.945656, 44.616840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.180500, 40.245022, 45.162277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.322662, 39.910282, 45.328827>,  <37.407959, 39.709438, 45.428757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.322662, 39.910282, 45.328827>,  <37.180500, 40.245022, 45.162277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.322662, 39.910282, 45.328827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271621, 0.518701, 0.810661,
		-0.894377, -0.175015, 0.411655,
		0.355404, -0.836850, 0.416376,
		37.429283, 39.659225, 45.453739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.858021, 40.316814, 45.789978>,  <37.180500, 40.245022, 45.162277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.858021, 40.316814, 45.789978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.186794, 40.090233, 45.813835>,  <37.384060, 39.954285, 45.828152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.186794, 40.090233, 45.813835>,  <36.858021, 40.316814, 45.789978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.186794, 40.090233, 45.813835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306385, 0.527976, 0.792067,
		-0.480158, -0.632752, 0.607514,
		0.821935, -0.566450, 0.059647,
		37.433376, 39.920300, 45.831730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.932491, 40.069786, 46.509644>,  <36.858021, 40.316814, 45.789978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.932491, 40.069786, 46.509644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.301147, 40.072987, 46.354458>,  <37.522343, 40.074909, 46.261349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.301147, 40.072987, 46.354458>,  <36.932491, 40.069786, 46.509644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.301147, 40.072987, 46.354458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360218, 0.354119, 0.863043,
		0.144290, -0.935166, 0.323488,
		0.921642, 0.008002, -0.387960,
		37.577641, 40.075386, 46.238071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.321590, 39.987633, 47.043663>,  <36.932491, 40.069786, 46.509644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.321590, 39.987633, 47.043663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.595928, 40.114254, 46.781548>,  <37.760532, 40.190228, 46.624279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.595928, 40.114254, 46.781548>,  <37.321590, 39.987633, 47.043663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.595928, 40.114254, 46.781548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589875, 0.285550, 0.755320,
		0.426217, -0.904575, 0.009117,
		0.685847, 0.316553, -0.655292,
		37.801682, 40.209221, 46.584961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.926636, 39.677734, 47.336159>,  <37.321590, 39.987633, 47.043663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.926636, 39.677734, 47.336159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.042046, 39.976032, 47.095955>,  <38.111294, 40.155010, 46.951832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.042046, 39.976032, 47.095955>,  <37.926636, 39.677734, 47.336159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.042046, 39.976032, 47.095955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746310, 0.217737, 0.628977,
		0.599811, -0.629646, -0.493734,
		0.288529, 0.745745, -0.600512,
		38.128605, 40.199757, 46.915802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.640759, 39.704178, 47.318825>,  <37.926636, 39.677734, 47.336159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.640759, 39.704178, 47.318825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.543869, 40.074863, 47.203911>,  <38.485733, 40.297276, 47.134960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.543869, 40.074863, 47.203911>,  <38.640759, 39.704178, 47.318825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.543869, 40.074863, 47.203911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556515, 0.375262, 0.741262,
		0.794743, 0.019675, -0.606627,
		-0.242228, 0.926710, -0.287287,
		38.471199, 40.352875, 47.117725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.235836, 40.117001, 47.087017>,  <38.640759, 39.704178, 47.318825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.235836, 40.117001, 47.087017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.959312, 40.372841, 47.221485>,  <38.793400, 40.526344, 47.302166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.959312, 40.372841, 47.221485>,  <39.235836, 40.117001, 47.087017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.959312, 40.372841, 47.221485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623135, 0.292207, 0.725478,
		0.365785, 0.711005, -0.600561,
		-0.691306, 0.639600, 0.336167,
		38.751919, 40.564720, 47.322334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.741783, 40.224453, 46.586666>,  <39.235836, 40.117001, 47.087017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.741783, 40.224453, 46.586666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.123199, 40.139378, 46.672020>,  <40.352047, 40.088333, 46.723232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.123199, 40.139378, 46.672020>,  <39.741783, 40.224453, 46.586666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.123199, 40.139378, 46.672020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015723, -0.742425, -0.669745,
		0.300864, 0.635272, -0.711274,
		0.953537, -0.212686, 0.213381,
		40.409260, 40.075573, 46.736034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.025375, 40.248928, 45.898579>,  <39.741783, 40.224453, 46.586666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.025375, 40.248928, 45.898579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.205570, 40.026268, 46.177780>,  <40.313686, 39.892673, 46.345299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.205570, 40.026268, 46.177780>,  <40.025375, 40.248928, 45.898579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.205570, 40.026268, 46.177780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017948, -0.776021, -0.630452,
		0.892604, 0.296537, -0.339595,
		0.450485, -0.556648, 0.698001,
		40.340717, 39.859272, 46.387180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.542053, 39.937206, 45.595646>,  <40.025375, 40.248928, 45.898579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.542053, 39.937206, 45.595646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.441601, 39.718929, 45.915436>,  <40.381329, 39.587963, 46.107307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.441601, 39.718929, 45.915436>,  <40.542053, 39.937206, 45.595646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.441601, 39.718929, 45.915436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098037, -0.807352, -0.581869,
		0.962976, -0.224502, 0.149252,
		-0.251130, -0.545694, 0.799470,
		40.366261, 39.555222, 46.155277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.884399, 39.255299, 45.386379>,  <40.542053, 39.937206, 45.595646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.884399, 39.255299, 45.386379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.657333, 39.167648, 45.703804>,  <40.521091, 39.115059, 45.894260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.657333, 39.167648, 45.703804>,  <40.884399, 39.255299, 45.386379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.657333, 39.167648, 45.703804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266967, -0.862841, -0.429225,
		0.778769, -0.455512, 0.431309,
		-0.567668, -0.219122, 0.793561,
		40.487034, 39.101913, 45.941872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.086308, 38.606663, 45.637959>,  <40.884399, 39.255299, 45.386379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.086308, 38.606663, 45.637959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.704750, 38.667076, 45.741711>,  <40.475815, 38.703323, 45.803963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.704750, 38.667076, 45.741711>,  <41.086308, 38.606663, 45.637959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.704750, 38.667076, 45.741711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247024, -0.885911, -0.392608,
		0.170488, -0.438578, 0.882373,
		-0.953893, 0.151032, 0.259377,
		40.418583, 38.712387, 45.819523>
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
