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
	<24.783276, 35.311310, 34.567745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.554308, 35.116440, 34.831562>,  <24.416927, 34.999519, 34.989853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.554308, 35.116440, 34.831562>,  <24.783276, 35.311310, 34.567745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.554308, 35.116440, 34.831562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595055, -0.800212, -0.074632,
		0.564133, 0.349743, 0.747953,
		-0.572419, -0.487176, 0.659542,
		24.382582, 34.970287, 35.029427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.234377, 34.916000, 34.993774>,  <24.783276, 35.311310, 34.567745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.234377, 34.916000, 34.993774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.871847, 34.747032, 34.989178>,  <24.654329, 34.645649, 34.986420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.871847, 34.747032, 34.989178>,  <25.234377, 34.916000, 34.993774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.871847, 34.747032, 34.989178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422581, -0.905995, -0.024454,
		-0.000078, -0.027018, 0.999635,
		-0.906325, -0.422424, -0.011488,
		24.599949, 34.620304, 34.985729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.091690, 34.220650, 34.989433>,  <25.234377, 34.916000, 34.993774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.091690, 34.220650, 34.989433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.416952, 34.010571, 35.089790>,  <25.612110, 33.884525, 35.150005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.416952, 34.010571, 35.089790>,  <25.091690, 34.220650, 34.989433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.416952, 34.010571, 35.089790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066939, -0.512583, -0.856024,
		0.578184, 0.679286, -0.451966,
		0.813156, -0.525194, 0.250896,
		25.660898, 33.853012, 35.165058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.583782, 34.308388, 34.463860>,  <25.091690, 34.220650, 34.989433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.583782, 34.308388, 34.463860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.668694, 33.967613, 34.655334>,  <25.719641, 33.763149, 34.770218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.668694, 33.967613, 34.655334>,  <25.583782, 34.308388, 34.463860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.668694, 33.967613, 34.655334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158861, -0.513419, -0.843306,
		0.964210, 0.102973, -0.244328,
		0.212280, -0.851938, 0.478685,
		25.732378, 33.712032, 34.798939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.175522, 34.020439, 34.148666>,  <25.583782, 34.308388, 34.463860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.175522, 34.020439, 34.148666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.965422, 33.726135, 34.319672>,  <25.839361, 33.549553, 34.422276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.965422, 33.726135, 34.319672>,  <26.175522, 34.020439, 34.148666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.965422, 33.726135, 34.319672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000977, -0.502917, -0.864334,
		0.850946, -0.453576, 0.264878,
		-0.525253, -0.735760, 0.427512,
		25.807846, 33.505405, 34.447926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.565903, 33.404175, 34.205032>,  <26.175522, 34.020439, 34.148666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.565903, 33.404175, 34.205032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.171980, 33.351238, 34.160065>,  <25.935625, 33.319477, 34.133083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.171980, 33.351238, 34.160065>,  <26.565903, 33.404175, 34.205032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.171980, 33.351238, 34.160065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155581, -0.384960, -0.909725,
		0.077122, -0.913395, 0.399702,
		-0.984808, -0.132346, -0.112418,
		25.876537, 33.311535, 34.126339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.587246, 32.719303, 34.144707>,  <26.565903, 33.404175, 34.205032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.587246, 32.719303, 34.144707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.243647, 32.844276, 33.982468>,  <26.037487, 32.919262, 33.885124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.243647, 32.844276, 33.982468>,  <26.587246, 32.719303, 34.144707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.243647, 32.844276, 33.982468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255286, -0.425328, -0.868289,
		-0.443799, -0.849399, 0.285593,
		-0.858995, 0.312437, -0.405600,
		25.985947, 32.938007, 33.860786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.404127, 32.239212, 33.777676>,  <26.587246, 32.719303, 34.144707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.404127, 32.239212, 33.777676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.230276, 32.569725, 33.634373>,  <26.125965, 32.768032, 33.548389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.230276, 32.569725, 33.634373>,  <26.404127, 32.239212, 33.777676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.230276, 32.569725, 33.634373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085901, -0.357948, -0.929782,
		-0.896505, -0.434883, 0.084595,
		-0.434627, 0.826287, -0.358259,
		26.099888, 32.817612, 33.526894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.814381, 32.037621, 33.419632>,  <26.404127, 32.239212, 33.777676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.814381, 32.037621, 33.419632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.940477, 32.388420, 33.274582>,  <26.016136, 32.598900, 33.187553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.940477, 32.388420, 33.274582>,  <25.814381, 32.037621, 33.419632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.940477, 32.388420, 33.274582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115524, -0.343805, -0.931908,
		-0.941953, 0.335669, -0.007068,
		0.315243, 0.876997, -0.362626,
		26.035049, 32.651520, 33.165794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.347057, 32.196217, 32.851814>,  <25.814381, 32.037621, 33.419632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.347057, 32.196217, 32.851814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.692371, 32.393715, 32.809952>,  <25.899561, 32.512215, 32.784836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.692371, 32.393715, 32.809952>,  <25.347057, 32.196217, 32.851814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.692371, 32.393715, 32.809952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019905, -0.173889, -0.984564,
		-0.504320, 0.852045, -0.140288,
		0.863287, 0.493743, -0.104656,
		25.951357, 32.541840, 32.778557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.297453, 32.732044, 32.248737>,  <25.347057, 32.196217, 32.851814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.297453, 32.732044, 32.248737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.677898, 32.619400, 32.299461>,  <25.906166, 32.551815, 32.329895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.677898, 32.619400, 32.299461>,  <25.297453, 32.732044, 32.248737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.677898, 32.619400, 32.299461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118542, -0.046280, -0.991870,
		0.285190, 0.958412, -0.010635,
		0.951112, -0.281610, 0.126811,
		25.963232, 32.534916, 32.337505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.610840, 32.933422, 31.654675>,  <25.297453, 32.732044, 32.248737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.610840, 32.933422, 31.654675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.850578, 32.652267, 31.807898>,  <25.994421, 32.483574, 31.899832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.850578, 32.652267, 31.807898>,  <25.610840, 32.933422, 31.654675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.850578, 32.652267, 31.807898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319723, -0.228504, -0.919545,
		0.733868, 0.673597, 0.087777,
		0.599345, -0.702889, 0.383056,
		26.030382, 32.441402, 31.922815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.467611, 32.314957, 31.371607>,  <25.610840, 32.933422, 31.654675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.467611, 32.314957, 31.371607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.807865, 32.332233, 31.162014>,  <26.012018, 32.342602, 31.036259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.807865, 32.332233, 31.162014>,  <25.467611, 32.314957, 31.371607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.807865, 32.332233, 31.162014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499398, 0.245226, 0.830943,
		0.164385, -0.968503, 0.187027,
		0.850635, 0.043194, -0.523980,
		26.063055, 32.345192, 31.004820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.020885, 31.820728, 31.262930>,  <25.467611, 32.314957, 31.371607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.020885, 31.820728, 31.262930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.258009, 32.142109, 31.284996>,  <26.400284, 32.334938, 31.298235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.258009, 32.142109, 31.284996>,  <26.020885, 31.820728, 31.262930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.258009, 32.142109, 31.284996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110980, -0.149343, 0.982537,
		0.797660, -0.576334, -0.177699,
		0.592808, 0.803452, 0.055163,
		26.435852, 32.383144, 31.301544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.617405, 31.622766, 31.607424>,  <26.020885, 31.820728, 31.262930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.617405, 31.622766, 31.607424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.552301, 32.015125, 31.650045>,  <26.513239, 32.250542, 31.675619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.552301, 32.015125, 31.650045>,  <26.617405, 31.622766, 31.607424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.552301, 32.015125, 31.650045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014568, -0.110371, 0.993784,
		0.986559, 0.160193, 0.032253,
		-0.162757, 0.980896, 0.106554,
		26.503475, 32.309395, 31.682011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.100273, 31.859741, 32.138065>,  <26.617405, 31.622766, 31.607424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.100273, 31.859741, 32.138065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.822962, 32.143745, 32.088665>,  <26.656574, 32.314148, 32.059025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.822962, 32.143745, 32.088665>,  <27.100273, 31.859741, 32.138065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.822962, 32.143745, 32.088665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098062, 0.076836, 0.992210,
		0.713968, 0.699988, 0.016357,
		-0.693278, 0.710010, -0.123500,
		26.614979, 32.356747, 32.051617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.247257, 32.423473, 32.522079>,  <27.100273, 31.859741, 32.138065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.247257, 32.423473, 32.522079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.855419, 32.468342, 32.455376>,  <26.620316, 32.495262, 32.415352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.855419, 32.468342, 32.455376>,  <27.247257, 32.423473, 32.522079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.855419, 32.468342, 32.455376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120653, 0.335370, 0.934329,
		0.160734, 0.935385, -0.314993,
		-0.979595, 0.112173, -0.166763,
		26.561541, 32.501995, 32.405346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.077349, 33.155724, 32.772854>,  <27.247257, 32.423473, 32.522079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.077349, 33.155724, 32.772854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.719957, 32.976093, 32.770763>,  <26.505522, 32.868317, 32.769508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.719957, 32.976093, 32.770763>,  <27.077349, 33.155724, 32.772854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.719957, 32.976093, 32.770763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220992, 0.429493, 0.875613,
		-0.390972, 0.783497, -0.482985,
		-0.893478, -0.449076, -0.005227,
		26.451914, 32.841370, 32.769196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.649445, 33.719860, 32.734467>,  <27.077349, 33.155724, 32.772854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.649445, 33.719860, 32.734467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.458467, 33.399464, 32.878944>,  <26.343882, 33.207226, 32.965630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.458467, 33.399464, 32.878944>,  <26.649445, 33.719860, 32.734467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.458467, 33.399464, 32.878944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270070, 0.524946, 0.807152,
		-0.836128, 0.287823, -0.466956,
		-0.477443, -0.800993, 0.361190,
		26.315235, 33.159164, 32.987301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.002129, 33.943890, 33.055206>,  <26.649445, 33.719860, 32.734467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.002129, 33.943890, 33.055206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.059410, 33.585400, 33.223145>,  <26.093779, 33.370304, 33.323906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.059410, 33.585400, 33.223145>,  <26.002129, 33.943890, 33.055206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.059410, 33.585400, 33.223145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339857, 0.353892, 0.871354,
		-0.929511, -0.267467, -0.253911,
		0.143202, -0.896227, 0.419847,
		26.102371, 33.316532, 33.349098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.471781, 33.442738, 32.790207>,  <26.002129, 33.943890, 33.055206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.471781, 33.442738, 32.790207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.515091, 33.147762, 33.056881>,  <25.541077, 32.970779, 33.216885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.515091, 33.147762, 33.056881>,  <25.471781, 33.442738, 32.790207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.515091, 33.147762, 33.056881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447532, 0.562668, 0.695068,
		-0.887689, -0.373620, -0.269103,
		0.108275, -0.737436, 0.666682,
		25.547573, 32.926533, 33.256886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.853796, 33.422165, 33.292305>,  <25.471781, 33.442738, 32.790207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.853796, 33.422165, 33.292305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.161852, 33.243664, 33.474621>,  <25.346685, 33.136562, 33.584011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.161852, 33.243664, 33.474621>,  <24.853796, 33.422165, 33.292305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.161852, 33.243664, 33.474621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311800, 0.359992, 0.879310,
		-0.556477, -0.819305, 0.138101,
		0.770139, -0.446256, 0.455787,
		25.392893, 33.109787, 33.611359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.597843, 33.054180, 33.966640>,  <24.853796, 33.422165, 33.292305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.597843, 33.054180, 33.966640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.987656, 33.137421, 34.000057>,  <25.221544, 33.187366, 34.020107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.987656, 33.137421, 34.000057>,  <24.597843, 33.054180, 33.966640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.987656, 33.137421, 34.000057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182077, 0.516879, 0.836471,
		0.130891, -0.830380, 0.541606,
		0.974533, 0.208100, 0.083538,
		25.280016, 33.199852, 34.025120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.816019, 32.940990, 34.681694>,  <24.597843, 33.054180, 33.966640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.816019, 32.940990, 34.681694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.043566, 33.216343, 34.501682>,  <25.180094, 33.381554, 34.393677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.043566, 33.216343, 34.501682>,  <24.816019, 32.940990, 34.681694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.043566, 33.216343, 34.501682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197290, 0.645435, 0.737896,
		0.798416, -0.330978, 0.502977,
		0.568866, 0.688380, -0.450027,
		25.214226, 33.422855, 34.366676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.310539, 32.586273, 35.191093>,  <24.816019, 32.940990, 34.681694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.310539, 32.586273, 35.191093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.531780, 32.832813, 34.966885>,  <25.664524, 32.980740, 34.832359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.531780, 32.832813, 34.966885>,  <25.310539, 32.586273, 35.191093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.531780, 32.832813, 34.966885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153390, 0.585966, 0.795685,
		0.818871, -0.526074, 0.229556,
		0.553101, 0.616352, -0.560526,
		25.697710, 33.017719, 34.798725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.995924, 32.651279, 35.413006>,  <25.310539, 32.586273, 35.191093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.995924, 32.651279, 35.413006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.914347, 32.991077, 35.218372>,  <25.865400, 33.194958, 35.101593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.914347, 32.991077, 35.218372>,  <25.995924, 32.651279, 35.413006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.914347, 32.991077, 35.218372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345517, 0.527505, 0.776116,
		0.915983, -0.009841, -0.401095,
		-0.203942, 0.849495, -0.486586,
		25.853165, 33.245926, 35.072395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.609369, 33.014908, 35.414669>,  <25.995924, 32.651279, 35.413006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.609369, 33.014908, 35.414669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.309074, 33.277245, 35.382992>,  <26.128899, 33.434647, 35.363987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.309074, 33.277245, 35.382992>,  <26.609369, 33.014908, 35.414669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.309074, 33.277245, 35.382992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382576, 0.529371, 0.757233,
		0.538546, 0.538184, -0.648325,
		-0.750735, 0.655839, -0.079194,
		26.083855, 33.473995, 35.359234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.777794, 33.775265, 35.668697>,  <26.609369, 33.014908, 35.414669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.777794, 33.775265, 35.668697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.141891, 33.640045, 35.573044>,  <27.360350, 33.558914, 35.515652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.141891, 33.640045, 35.573044>,  <26.777794, 33.775265, 35.668697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.141891, 33.640045, 35.573044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414077, 0.742528, 0.526490,
		-0.000413, -0.578254, 0.815857,
		0.910242, -0.338045, -0.239135,
		27.414965, 33.538631, 35.501305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.253206, 33.785046, 36.325378>,  <26.777794, 33.775265, 35.668697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.253206, 33.785046, 36.325378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.431364, 33.850773, 35.973328>,  <27.538260, 33.890209, 35.762096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.431364, 33.850773, 35.973328>,  <27.253206, 33.785046, 36.325378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.431364, 33.850773, 35.973328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349217, 0.873276, 0.339760,
		0.824421, -0.458682, 0.331572,
		0.445395, 0.164315, -0.880127,
		27.564983, 33.900066, 35.709290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.985140, 33.839767, 36.452633>,  <27.253206, 33.785046, 36.325378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.985140, 33.839767, 36.452633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.874950, 34.019573, 36.112740>,  <27.808836, 34.127457, 35.908802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.874950, 34.019573, 36.112740>,  <27.985140, 33.839767, 36.452633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.874950, 34.019573, 36.112740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219856, 0.889967, 0.399527,
		0.935830, -0.076761, -0.343992,
		-0.275474, 0.449518, -0.849734,
		27.792309, 34.154430, 35.857819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.436274, 34.372192, 36.259998>,  <27.985140, 33.839767, 36.452633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.436274, 34.372192, 36.259998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.126347, 34.489037, 36.035736>,  <27.940392, 34.559143, 35.901180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.126347, 34.489037, 36.035736>,  <28.436274, 34.372192, 36.259998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.126347, 34.489037, 36.035736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193399, 0.953854, 0.229694,
		0.601878, 0.069541, -0.795554,
		-0.774816, 0.292107, -0.560655,
		27.893902, 34.576668, 35.867538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.342707, 34.772781, 35.633457>,  <28.436274, 34.372192, 36.259998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.342707, 34.772781, 35.633457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.544195, 34.650906, 35.310116>,  <28.665089, 34.577782, 35.116112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.544195, 34.650906, 35.310116>,  <28.342707, 34.772781, 35.633457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.544195, 34.650906, 35.310116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532965, 0.626813, -0.568377,
		0.679862, 0.717127, 0.153351,
		0.503721, -0.304688, -0.808350,
		28.695311, 34.559498, 35.067612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.275837, 35.317039, 35.208031>,  <28.342707, 34.772781, 35.633457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.275837, 35.317039, 35.208031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.375875, 35.016724, 34.963486>,  <28.435898, 34.836533, 34.816757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.375875, 35.016724, 34.963486>,  <28.275837, 35.317039, 35.208031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.375875, 35.016724, 34.963486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649976, 0.337811, -0.680746,
		0.717623, 0.567622, -0.403512,
		0.250096, -0.750792, -0.611362,
		28.450905, 34.791485, 34.780079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.433859, 35.634903, 34.615021>,  <28.275837, 35.317039, 35.208031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.433859, 35.634903, 34.615021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.349758, 35.251823, 34.536427>,  <28.299297, 35.021976, 34.489269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.349758, 35.251823, 34.536427>,  <28.433859, 35.634903, 34.615021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.349758, 35.251823, 34.536427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594702, 0.284807, -0.751808,
		0.775967, -0.041217, -0.629426,
		-0.210252, -0.957698, -0.196489,
		28.286682, 34.964516, 34.477478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.629702, 36.109322, 34.046051>,  <28.433859, 35.634903, 34.615021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.629702, 36.109322, 34.046051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.309059, 36.348167, 34.057896>,  <28.116673, 36.491474, 34.065002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.309059, 36.348167, 34.057896>,  <28.629702, 36.109322, 34.046051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.309059, 36.348167, 34.057896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443359, 0.626966, -0.640584,
		-0.401070, -0.500367, -0.767317,
		-0.801609, 0.597116, 0.029615,
		28.068577, 36.527302, 34.066780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.306528, 36.187912, 33.370533>,  <28.629702, 36.109322, 34.046051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.306528, 36.187912, 33.370533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.258076, 36.526276, 33.578289>,  <28.229004, 36.729294, 33.702942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.258076, 36.526276, 33.578289>,  <28.306528, 36.187912, 33.370533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.258076, 36.526276, 33.578289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483312, 0.507293, -0.713487,
		-0.867027, 0.164604, -0.470286,
		-0.121130, 0.845908, 0.519392,
		28.221737, 36.780048, 33.734108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.553656, 35.416981, 33.617619>,  <28.306528, 36.187912, 33.370533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.553656, 35.416981, 33.617619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.302969, 35.199833, 33.841228>,  <28.152557, 35.069542, 33.975395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.302969, 35.199833, 33.841228>,  <28.553656, 35.416981, 33.617619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.302969, 35.199833, 33.841228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736173, 0.177274, -0.653164,
		0.255487, -0.820889, -0.510752,
		-0.626718, -0.542877, 0.559025,
		28.114954, 35.036972, 34.008938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.203691, 35.019859, 33.106564>,  <28.553656, 35.416981, 33.617619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.203691, 35.019859, 33.106564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.977350, 35.026127, 33.436306>,  <27.841545, 35.029888, 33.634151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.977350, 35.026127, 33.436306>,  <28.203691, 35.019859, 33.106564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.977350, 35.026127, 33.436306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815836, 0.133972, -0.562551,
		-0.119256, -0.990861, -0.063024,
		-0.565853, 0.015670, 0.824357,
		27.807594, 35.030827, 33.683613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.747850, 34.393585, 33.078133>,  <28.203691, 35.019859, 33.106564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.747850, 34.393585, 33.078133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.619282, 34.708328, 33.288864>,  <27.542141, 34.897175, 33.415302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.619282, 34.708328, 33.288864>,  <27.747850, 34.393585, 33.078133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.619282, 34.708328, 33.288864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772358, 0.104035, -0.626609,
		-0.547859, -0.608305, 0.574295,
		-0.321423, 0.786855, 0.526826,
		27.522856, 34.944386, 33.446911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.196640, 34.453590, 32.524498>,  <27.747850, 34.393585, 33.078133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.196640, 34.453590, 32.524498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.091356, 34.340618, 32.155510>,  <27.028187, 34.272835, 31.934116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.091356, 34.340618, 32.155510>,  <27.196640, 34.453590, 32.524498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.091356, 34.340618, 32.155510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963108, -0.021365, -0.268264,
		0.056059, -0.959048, 0.277639,
		-0.263210, -0.282436, -0.922470,
		27.012394, 34.255886, 31.878769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.315699, 35.210491, 32.653152>,  <27.196640, 34.453590, 32.524498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.315699, 35.210491, 32.653152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.993797, 35.324680, 32.861336>,  <26.800657, 35.393192, 32.986248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.993797, 35.324680, 32.861336>,  <27.315699, 35.210491, 32.653152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.993797, 35.324680, 32.861336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535206, -0.030316, 0.844177,
		0.256764, 0.957909, -0.128387,
		-0.804752, 0.285468, 0.520463,
		26.752371, 35.410320, 33.017475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.377628, 35.713177, 33.169106>,  <27.315699, 35.210491, 32.653152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.377628, 35.713177, 33.169106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.064442, 35.512371, 33.316044>,  <26.876530, 35.391888, 33.404205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.064442, 35.512371, 33.316044>,  <27.377628, 35.713177, 33.169106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.064442, 35.512371, 33.316044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517851, -0.198829, 0.832044,
		-0.344663, 0.841692, 0.415647,
		-0.782967, -0.502018, 0.367342,
		26.829552, 35.361767, 33.426247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.237806, 35.905087, 33.847866>,  <27.377628, 35.713177, 33.169106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.237806, 35.905087, 33.847866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.122641, 35.535793, 33.746090>,  <27.053541, 35.314217, 33.685024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.122641, 35.535793, 33.746090>,  <27.237806, 35.905087, 33.847866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.122641, 35.535793, 33.746090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577948, -0.379364, 0.722537,
		-0.763599, 0.060972, 0.642806,
		-0.287912, -0.923236, -0.254443,
		27.036266, 35.258823, 33.669758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.021126, 35.578049, 34.412834>,  <27.237806, 35.905087, 33.847866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.021126, 35.578049, 34.412834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.138832, 35.302898, 34.147434>,  <27.209455, 35.137806, 33.988194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.138832, 35.302898, 34.147434>,  <27.021126, 35.578049, 34.412834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.138832, 35.302898, 34.147434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643142, -0.370998, 0.669872,
		-0.706948, -0.623844, 0.333232,
		0.294267, -0.687881, -0.663496,
		27.227112, 35.096535, 33.948387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.070644, 34.870930, 34.757027>,  <27.021126, 35.578049, 34.412834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.070644, 34.870930, 34.757027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.293571, 34.893921, 34.425705>,  <27.427328, 34.907715, 34.226910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.293571, 34.893921, 34.425705>,  <27.070644, 34.870930, 34.757027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.293571, 34.893921, 34.425705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757334, -0.444127, 0.478744,
		-0.340359, -0.894118, -0.291047,
		0.557316, 0.057475, -0.828309,
		27.460766, 34.911163, 34.177212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.438751, 34.241802, 34.742886>,  <27.070644, 34.870930, 34.757027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.438751, 34.241802, 34.742886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.639336, 34.491806, 34.503590>,  <27.759686, 34.641808, 34.360012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.639336, 34.491806, 34.503590>,  <27.438751, 34.241802, 34.742886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.639336, 34.491806, 34.503590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864940, -0.378475, 0.329599,
		-0.020416, -0.682726, -0.730389,
		0.501460, 0.625014, -0.598244,
		27.789774, 34.679310, 34.324116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.806097, 33.814537, 34.188614>,  <27.438751, 34.241802, 34.742886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.806097, 33.814537, 34.188614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.976768, 34.172329, 34.242073>,  <28.079170, 34.387005, 34.274147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.976768, 34.172329, 34.242073>,  <27.806097, 33.814537, 34.188614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.976768, 34.172329, 34.242073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874203, -0.445769, 0.192507,
		0.231767, 0.034694, -0.972152,
		0.426677, 0.894475, 0.133644,
		28.104771, 34.440670, 34.282166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.494429, 33.820915, 33.931023>,  <27.806097, 33.814537, 34.188614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.494429, 33.820915, 33.931023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.494650, 34.124947, 34.190956>,  <28.494783, 34.307365, 34.346916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.494650, 34.124947, 34.190956>,  <28.494429, 33.820915, 33.931023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.494650, 34.124947, 34.190956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838700, -0.354247, 0.413631,
		0.544593, 0.544784, -0.637674,
		0.000555, 0.760078, 0.649831,
		28.494816, 34.352970, 34.385906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.166901, 34.118843, 33.901588>,  <28.494429, 33.820915, 33.931023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.166901, 34.118843, 33.901588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.032043, 34.236507, 34.259315>,  <28.951130, 34.307106, 34.473953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.032043, 34.236507, 34.259315>,  <29.166901, 34.118843, 33.901588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.032043, 34.236507, 34.259315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889511, -0.211639, 0.404944,
		0.308391, 0.932029, -0.190307,
		-0.337143, 0.294161, 0.894317,
		28.930901, 34.324757, 34.527611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.672028, 34.588234, 34.294064>,  <29.166901, 34.118843, 33.901588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.672028, 34.588234, 34.294064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.443216, 34.375549, 34.543884>,  <29.305929, 34.247940, 34.693775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.443216, 34.375549, 34.543884>,  <29.672028, 34.588234, 34.294064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.443216, 34.375549, 34.543884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818002, -0.425922, 0.386604,
		0.060448, 0.732033, 0.678582,
		-0.572030, -0.531712, 0.624550,
		29.271606, 34.216034, 34.731251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.999178, 34.636520, 34.949230>,  <29.672028, 34.588234, 34.294064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.999178, 34.636520, 34.949230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.766424, 34.313351, 34.911987>,  <29.626772, 34.119450, 34.889641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.766424, 34.313351, 34.911987>,  <29.999178, 34.636520, 34.949230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.766424, 34.313351, 34.911987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750677, -0.577611, 0.320704,
		-0.312885, 0.116717, 0.942592,
		-0.581883, -0.807925, -0.093109,
		29.591860, 34.070972, 34.884056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.944647, 34.336063, 35.628124>,  <29.999178, 34.636520, 34.949230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.944647, 34.336063, 35.628124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.914928, 34.054775, 35.345295>,  <29.897097, 33.886002, 35.175598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.914928, 34.054775, 35.345295>,  <29.944647, 34.336063, 35.628124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.914928, 34.054775, 35.345295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624609, -0.585544, 0.516721,
		-0.777395, -0.403256, 0.482744,
		-0.074297, -0.703223, -0.707076,
		29.892639, 33.843807, 35.133171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.658630, 34.571430, 35.460667>,  <29.944647, 34.336063, 35.628124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.658630, 34.571430, 35.460667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.552847, 34.262829, 35.692131>,  <30.489376, 34.077667, 35.831009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.552847, 34.262829, 35.692131>,  <30.658630, 34.571430, 35.460667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.552847, 34.262829, 35.692131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920184, -0.381459, -0.088040,
		0.288658, 0.509191, 0.810803,
		-0.264459, -0.771501, 0.578660,
		30.473509, 34.031380, 35.865730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.103210, 34.646778, 36.013306>,  <30.658630, 34.571430, 35.460667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.103210, 34.646778, 36.013306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.985386, 34.264809, 35.998569>,  <30.914690, 34.035629, 35.989727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.985386, 34.264809, 35.998569>,  <31.103210, 34.646778, 36.013306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.985386, 34.264809, 35.998569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953680, -0.296205, 0.052498,
		-0.061044, -0.019672, 0.997941,
		-0.294563, -0.954922, -0.036842,
		30.897017, 33.978333, 35.987518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.107447, 34.513371, 36.806938>,  <31.103210, 34.646778, 36.013306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.107447, 34.513371, 36.806938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.237961, 34.223213, 37.049374>,  <31.316269, 34.049118, 37.194836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.237961, 34.223213, 37.049374>,  <31.107447, 34.513371, 36.806938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.237961, 34.223213, 37.049374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506773, 0.407008, 0.759951,
		-0.797947, -0.555107, -0.234811,
		0.326284, -0.725397, 0.606084,
		31.335846, 34.005592, 37.231197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.511295, 34.453362, 37.261032>,  <31.107447, 34.513371, 36.806938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.511295, 34.453362, 37.261032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.798639, 34.243225, 37.443447>,  <30.971046, 34.117142, 37.552895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.798639, 34.243225, 37.443447>,  <30.511295, 34.453362, 37.261032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.798639, 34.243225, 37.443447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353905, 0.288400, 0.889706,
		-0.598922, -0.800525, 0.021254,
		0.718361, -0.525342, 0.456039,
		31.014149, 34.085621, 37.580257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.121408, 34.096241, 37.587658>,  <30.511295, 34.453362, 37.261032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.121408, 34.096241, 37.587658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.478966, 34.122234, 37.765076>,  <30.693501, 34.137829, 37.871525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.478966, 34.122234, 37.765076>,  <30.121408, 34.096241, 37.587658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.478966, 34.122234, 37.765076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447793, 0.083400, 0.890239,
		0.020854, -0.994395, 0.103648,
		0.893894, 0.064978, 0.443544,
		30.747133, 34.141727, 37.898140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.228758, 33.594978, 38.010242>,  <30.121408, 34.096241, 37.587658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.228758, 33.594978, 38.010242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.456577, 33.876621, 38.179878>,  <30.593269, 34.045605, 38.281658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.456577, 33.876621, 38.179878>,  <30.228758, 33.594978, 38.010242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.456577, 33.876621, 38.179878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443164, -0.171490, 0.879885,
		0.692258, -0.689078, 0.214362,
		0.569548, 0.704104, 0.424090,
		30.627441, 34.087852, 38.307106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.054739, 34.302643, 38.271790>,  <30.228758, 33.594978, 38.010242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.054739, 34.302643, 38.271790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.890606, 34.514839, 37.975086>,  <29.792126, 34.642159, 37.797066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.890606, 34.514839, 37.975086>,  <30.054739, 34.302643, 38.271790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.890606, 34.514839, 37.975086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465384, 0.577682, 0.670598,
		0.784247, 0.620371, 0.009841,
		-0.410335, 0.530494, -0.741756,
		29.767506, 34.673988, 37.752560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.319859, 34.968914, 38.257496>,  <30.054739, 34.302643, 38.271790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.319859, 34.968914, 38.257496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.931875, 34.929909, 38.168350>,  <29.699085, 34.906506, 38.114861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.931875, 34.929909, 38.168350>,  <30.319859, 34.968914, 38.257496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.931875, 34.929909, 38.168350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241657, 0.491381, 0.836748,
		0.027922, 0.865469, -0.500183,
		-0.969960, -0.097509, -0.222867,
		29.640886, 34.900658, 38.101490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.518072, 35.493153, 38.905472>,  <30.319859, 34.968914, 38.257496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.518072, 35.493153, 38.905472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.574242, 35.100315, 38.955719>,  <30.607944, 34.864613, 38.985867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.574242, 35.100315, 38.955719>,  <30.518072, 35.493153, 38.905472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.574242, 35.100315, 38.955719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733026, 0.017836, -0.679967,
		0.665548, 0.187568, 0.722402,
		0.140425, -0.982090, 0.125622,
		30.616369, 34.805687, 38.993404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.062124, 35.209469, 38.579655>,  <30.518072, 35.493153, 38.905472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.062124, 35.209469, 38.579655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.996672, 34.828239, 38.681534>,  <30.957401, 34.599503, 38.742661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.996672, 34.828239, 38.681534>,  <31.062124, 35.209469, 38.579655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.996672, 34.828239, 38.681534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610865, -0.300611, -0.732446,
		0.774641, 0.035734, 0.631390,
		-0.163630, -0.953077, 0.254694,
		30.947582, 34.542316, 38.757942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.626627, 34.781876, 38.548222>,  <31.062124, 35.209469, 38.579655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.626627, 34.781876, 38.548222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.318949, 34.532692, 38.491291>,  <31.134342, 34.383183, 38.457134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.318949, 34.532692, 38.491291>,  <31.626627, 34.781876, 38.548222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.318949, 34.532692, 38.491291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551515, -0.534703, -0.640253,
		0.322751, -0.570975, 0.754864,
		-0.769196, -0.622961, -0.142325,
		31.088190, 34.345802, 38.448593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.990316, 34.203953, 38.441929>,  <31.626627, 34.781876, 38.548222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.990316, 34.203953, 38.441929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.619835, 34.159050, 38.297958>,  <31.397547, 34.132107, 38.211578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.619835, 34.159050, 38.297958>,  <31.990316, 34.203953, 38.441929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.619835, 34.159050, 38.297958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374364, -0.387037, -0.842647,
		-0.044710, -0.915205, 0.400500,
		-0.926204, -0.112258, -0.359924,
		31.341974, 34.125374, 38.189980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.947950, 33.520840, 38.294453>,  <31.990316, 34.203953, 38.441929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.947950, 33.520840, 38.294453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.655413, 33.683468, 38.075424>,  <31.479889, 33.781044, 37.944008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.655413, 33.683468, 38.075424>,  <31.947950, 33.520840, 38.294453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.655413, 33.683468, 38.075424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339817, -0.478884, -0.809441,
		-0.591320, -0.778054, 0.212068,
		-0.731345, 0.406574, -0.547570,
		31.436008, 33.805439, 37.911152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.838362, 32.970448, 37.828575>,  <31.947950, 33.520840, 38.294453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.838362, 32.970448, 37.828575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.702745, 33.305786, 37.657825>,  <31.621376, 33.506989, 37.555374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.702745, 33.305786, 37.657825>,  <31.838362, 32.970448, 37.828575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.702745, 33.305786, 37.657825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325645, -0.321118, -0.889291,
		-0.882614, -0.440516, -0.164132,
		-0.339041, 0.838349, -0.426874,
		31.601032, 33.557289, 37.529762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.623749, 32.797642, 37.174103>,  <31.838362, 32.970448, 37.828575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.623749, 32.797642, 37.174103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.682087, 33.193092, 37.159386>,  <31.717091, 33.430363, 37.150555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.682087, 33.193092, 37.159386>,  <31.623749, 32.797642, 37.174103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.682087, 33.193092, 37.159386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372503, -0.089331, -0.923721,
		-0.916499, 0.121017, -0.381294,
		0.145847, 0.988623, -0.036792,
		31.725842, 33.489677, 37.148350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.330502, 33.110104, 36.523323>,  <31.623749, 32.797642, 37.174103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.330502, 33.110104, 36.523323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.609716, 33.373878, 36.634960>,  <31.777245, 33.532143, 36.701942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.609716, 33.373878, 36.634960>,  <31.330502, 33.110104, 36.523323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.609716, 33.373878, 36.634960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280781, 0.106474, -0.953847,
		-0.658716, 0.744183, -0.110834,
		0.698036, 0.659435, 0.279089,
		31.819128, 33.571709, 36.718685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.423969, 33.541080, 36.046879>,  <31.330502, 33.110104, 36.523323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.423969, 33.541080, 36.046879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.766298, 33.632092, 36.232693>,  <31.971697, 33.686699, 36.344181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.766298, 33.632092, 36.232693>,  <31.423969, 33.541080, 36.046879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.766298, 33.632092, 36.232693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431548, 0.181069, -0.883731,
		-0.285186, 0.956789, 0.056775,
		0.855824, 0.227526, 0.464539,
		32.023045, 33.700348, 36.372055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.652830, 34.188965, 35.705894>,  <31.423969, 33.541080, 36.046879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.652830, 34.188965, 35.705894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.970509, 34.003750, 35.863300>,  <32.161114, 33.892620, 35.957745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.970509, 34.003750, 35.863300>,  <31.652830, 34.188965, 35.705894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.970509, 34.003750, 35.863300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470469, 0.058671, -0.880464,
		0.384597, 0.884396, 0.264439,
		0.794194, -0.463034, 0.393516,
		32.208767, 33.864838, 35.981354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.142925, 34.643787, 35.580738>,  <31.652830, 34.188965, 35.705894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.142925, 34.643787, 35.580738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.276527, 34.269978, 35.629894>,  <32.356689, 34.045692, 35.659386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.276527, 34.269978, 35.629894>,  <32.142925, 34.643787, 35.580738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.276527, 34.269978, 35.629894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338921, -0.002583, -0.940811,
		0.879531, 0.355882, 0.315869,
		0.334002, -0.934527, 0.122888,
		32.376728, 33.989620, 35.666759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.524788, 34.608837, 35.064831>,  <32.142925, 34.643787, 35.580738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.524788, 34.608837, 35.064831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.520603, 34.221489, 35.164543>,  <32.518093, 33.989079, 35.224373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.520603, 34.221489, 35.164543>,  <32.524788, 34.608837, 35.064831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.520603, 34.221489, 35.164543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212379, -0.245762, -0.945778,
		0.977131, 0.043045, 0.208234,
		-0.010466, -0.968374, 0.249284,
		32.517464, 33.930977, 35.239326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.077187, 34.314167, 34.707363>,  <32.524788, 34.608837, 35.064831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.077187, 34.314167, 34.707363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.875626, 33.978970, 34.791122>,  <32.754688, 33.777851, 34.841377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.875626, 33.978970, 34.791122>,  <33.077187, 34.314167, 34.707363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.875626, 33.978970, 34.791122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007397, -0.246602, -0.969089,
		0.863731, -0.486774, 0.130461,
		-0.503899, -0.837997, 0.209397,
		32.724457, 33.727570, 34.853943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.413471, 33.699833, 34.362072>,  <33.077187, 34.314167, 34.707363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.413471, 33.699833, 34.362072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.019608, 33.643295, 34.403008>,  <32.783291, 33.609375, 34.427567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.019608, 33.643295, 34.403008>,  <33.413471, 33.699833, 34.362072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.019608, 33.643295, 34.403008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039562, -0.390355, -0.919814,
		0.169956, -0.909750, 0.378775,
		-0.984657, -0.141343, 0.102334,
		32.724209, 33.600891, 34.433708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.337315, 33.186916, 33.973923>,  <33.413471, 33.699833, 34.362072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.337315, 33.186916, 33.973923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.960274, 33.314850, 34.012325>,  <32.734051, 33.391609, 34.035366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.960274, 33.314850, 34.012325>,  <33.337315, 33.186916, 33.973923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.960274, 33.314850, 34.012325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214091, -0.358183, -0.908774,
		-0.256264, -0.877163, 0.406096,
		-0.942599, 0.319827, 0.096003,
		32.677494, 33.410797, 34.041126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.885921, 32.648281, 33.749516>,  <33.337315, 33.186916, 33.973923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.885921, 32.648281, 33.749516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.606529, 32.933979, 33.731754>,  <32.438892, 33.105400, 33.721100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.606529, 32.933979, 33.731754>,  <32.885921, 32.648281, 33.749516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.606529, 32.933979, 33.731754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281363, -0.331140, -0.900656,
		-0.657995, -0.616600, 0.432259,
		-0.698483, 0.714248, -0.044400,
		32.396984, 33.148254, 33.718433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.286880, 32.415321, 33.365307>,  <32.885921, 32.648281, 33.749516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.286880, 32.415321, 33.365307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.218525, 32.807743, 33.328804>,  <32.177513, 33.043198, 33.306904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.218525, 32.807743, 33.328804>,  <32.286880, 32.415321, 33.365307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.218525, 32.807743, 33.328804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325560, -0.143638, -0.934547,
		-0.929951, -0.129990, 0.343938,
		-0.170884, 0.981056, -0.091257,
		32.167259, 33.102058, 33.301426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.666115, 32.494003, 32.937744>,  <32.286880, 32.415321, 33.365307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.666115, 32.494003, 32.937744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.821833, 32.861828, 32.916359>,  <31.915264, 33.082523, 32.903530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.821833, 32.861828, 32.916359>,  <31.666115, 32.494003, 32.937744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.821833, 32.861828, 32.916359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153866, 0.007695, -0.988062,
		-0.908171, 0.392873, 0.144485,
		0.389294, 0.919561, -0.053461,
		31.938622, 33.137695, 32.900322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.165880, 32.869732, 32.431889>,  <31.666115, 32.494003, 32.937744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.165880, 32.869732, 32.431889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.499826, 33.087666, 32.463253>,  <31.700195, 33.218426, 32.482071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.499826, 33.087666, 32.463253>,  <31.165880, 32.869732, 32.431889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.499826, 33.087666, 32.463253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005509, 0.134164, -0.990944,
		-0.550423, 0.827739, 0.109008,
		0.834868, 0.544838, 0.078407,
		31.750286, 33.251118, 32.486774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.039358, 33.457405, 32.090279>,  <31.165880, 32.869732, 32.431889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.039358, 33.457405, 32.090279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.439220, 33.447517, 32.093853>,  <31.679138, 33.441586, 32.095997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.439220, 33.447517, 32.093853>,  <31.039358, 33.457405, 32.090279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.439220, 33.447517, 32.093853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013290, 0.182185, -0.983175,
		0.022672, 0.982954, 0.182450,
		0.999655, -0.024716, 0.008932,
		31.739117, 33.440102, 32.096531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.317638, 34.080498, 31.782482>,  <31.039358, 33.457405, 32.090279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.317638, 34.080498, 31.782482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.597095, 33.797707, 31.738520>,  <31.764771, 33.628033, 31.712143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.597095, 33.797707, 31.738520>,  <31.317638, 34.080498, 31.782482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.597095, 33.797707, 31.738520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008817, 0.162108, -0.986734,
		0.715417, 0.688404, 0.119489,
		0.698642, -0.706980, -0.109906,
		31.806688, 33.585613, 31.705547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.038296, 34.351871, 31.495533>,  <31.317638, 34.080498, 31.782482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.038296, 34.351871, 31.495533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.987864, 33.967861, 31.395565>,  <31.957605, 33.737457, 31.335585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.987864, 33.967861, 31.395565>,  <32.038296, 34.351871, 31.495533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.987864, 33.967861, 31.395565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050634, 0.257829, -0.964863,
		0.990727, -0.108994, -0.081116,
		-0.126078, -0.960023, -0.249919,
		31.950041, 33.679855, 31.320589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.262478, 34.336761, 30.832117>,  <32.038296, 34.351871, 31.495533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.262478, 34.336761, 30.832117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.093414, 33.975800, 30.865643>,  <31.991978, 33.759220, 30.885757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.093414, 33.975800, 30.865643>,  <32.262478, 34.336761, 30.832117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.093414, 33.975800, 30.865643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050406, -0.068932, -0.996347,
		0.904888, -0.425336, -0.016352,
		-0.422655, -0.902407, 0.083815,
		31.966618, 33.705078, 30.890787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.488831, 34.048126, 30.311556>,  <32.262478, 34.336761, 30.832117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.488831, 34.048126, 30.311556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.165741, 33.827415, 30.394621>,  <31.971888, 33.694988, 30.444460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.165741, 33.827415, 30.394621>,  <32.488831, 34.048126, 30.311556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.165741, 33.827415, 30.394621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317374, 0.110104, -0.941887,
		0.496849, -0.826691, -0.264054,
		-0.807723, -0.551779, 0.207665,
		31.923424, 33.661880, 30.456921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.482090, 33.626076, 29.717196>,  <32.488831, 34.048126, 30.311556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.482090, 33.626076, 29.717196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.114170, 33.616634, 29.873867>,  <31.893419, 33.610970, 29.967871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.114170, 33.616634, 29.873867>,  <32.482090, 33.626076, 29.717196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.114170, 33.616634, 29.873867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392238, 0.083177, -0.916096,
		-0.010959, -0.996255, -0.085763,
		-0.919799, -0.023600, 0.391680,
		31.838230, 33.609554, 29.991371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.159660, 33.527046, 29.155005>,  <32.482090, 33.626076, 29.717196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.159660, 33.527046, 29.155005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.854948, 33.615276, 29.398659>,  <31.672121, 33.668213, 29.544851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.854948, 33.615276, 29.398659>,  <32.159660, 33.527046, 29.155005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.854948, 33.615276, 29.398659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567346, 0.226783, -0.791637,
		-0.312754, -0.948640, -0.047617,
		-0.761777, 0.220572, 0.609134,
		31.626415, 33.681446, 29.581398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.391989, 33.326099, 28.903095>,  <32.159660, 33.527046, 29.155005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.391989, 33.326099, 28.903095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.338667, 33.631580, 29.155758>,  <31.306675, 33.814869, 29.307356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.338667, 33.631580, 29.155758>,  <31.391989, 33.326099, 28.903095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.338667, 33.631580, 29.155758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503360, 0.496849, -0.706944,
		-0.853732, -0.412188, 0.318186,
		-0.133304, 0.763703, 0.631655,
		31.298676, 33.860691, 29.345255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.618692, 33.459957, 28.871550>,  <31.391989, 33.326099, 28.903095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.618692, 33.459957, 28.871550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.779003, 33.787674, 29.035568>,  <30.875191, 33.984303, 29.133980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.779003, 33.787674, 29.035568>,  <30.618692, 33.459957, 28.871550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.779003, 33.787674, 29.035568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526385, 0.572233, -0.628862,
		-0.749863, 0.036193, 0.660602,
		0.400779, 0.819292, 0.410045,
		30.899237, 34.033463, 29.158583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.008678, 33.833565, 28.936607>,  <30.618692, 33.459957, 28.871550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.008678, 33.833565, 28.936607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.315662, 34.089096, 28.958147>,  <30.499853, 34.242416, 28.971071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.315662, 34.089096, 28.958147>,  <30.008678, 33.833565, 28.936607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.315662, 34.089096, 28.958147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419843, 0.564301, -0.710842,
		-0.484496, 0.522934, 0.701287,
		0.767460, 0.638831, 0.053851,
		30.545900, 34.280746, 28.974302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.688200, 34.487682, 28.902159>,  <30.008678, 33.833565, 28.936607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.688200, 34.487682, 28.902159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.065594, 34.557991, 28.789774>,  <30.292030, 34.600178, 28.722343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.065594, 34.557991, 28.789774>,  <29.688200, 34.487682, 28.902159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.065594, 34.557991, 28.789774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329040, 0.598175, -0.730698,
		0.039627, 0.781850, 0.622205,
		0.943484, 0.175775, -0.280964,
		30.348639, 34.610725, 28.705484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.636091, 35.108330, 28.582212>,  <29.688200, 34.487682, 28.902159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.636091, 35.108330, 28.582212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.993690, 34.964508, 28.475266>,  <30.208250, 34.878216, 28.411097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.993690, 34.964508, 28.475266>,  <29.636091, 35.108330, 28.582212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.993690, 34.964508, 28.475266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005600, 0.587698, -0.809061,
		0.448035, 0.724797, 0.523388,
		0.893999, -0.359557, -0.267368,
		30.261890, 34.856640, 28.395056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.003115, 35.626316, 28.446007>,  <29.636091, 35.108330, 28.582212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.003115, 35.626316, 28.446007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.176882, 35.345497, 28.220295>,  <30.281143, 35.177006, 28.084867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.176882, 35.345497, 28.220295>,  <30.003115, 35.626316, 28.446007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.176882, 35.345497, 28.220295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077449, 0.653279, -0.753146,
		0.897375, 0.283479, 0.338170,
		0.434420, -0.702045, -0.564280,
		30.307207, 35.134884, 28.051010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.660324, 35.936462, 28.279083>,  <30.003115, 35.626316, 28.446007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.660324, 35.936462, 28.279083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.584501, 35.649952, 28.010454>,  <30.539007, 35.478046, 27.849276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.584501, 35.649952, 28.010454>,  <30.660324, 35.936462, 28.279083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.584501, 35.649952, 28.010454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245111, 0.627800, -0.738775,
		0.950783, -0.304651, 0.056563,
		-0.189558, -0.716279, -0.671575,
		30.527634, 35.435070, 27.808981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.201052, 35.906124, 27.880058>,  <30.660324, 35.936462, 28.279083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.201052, 35.906124, 27.880058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.932570, 35.744129, 27.631714>,  <30.771481, 35.646931, 27.482706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.932570, 35.744129, 27.631714>,  <31.201052, 35.906124, 27.880058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.932570, 35.744129, 27.631714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363460, 0.550170, -0.751804,
		0.646053, -0.730272, -0.222078,
		-0.671203, -0.404988, -0.620864,
		30.731209, 35.622635, 27.445456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.557924, 35.732780, 27.165934>,  <31.201052, 35.906124, 27.880058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.557924, 35.732780, 27.165934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.173946, 35.686546, 27.063843>,  <30.943560, 35.658806, 27.002588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.173946, 35.686546, 27.063843>,  <31.557924, 35.732780, 27.165934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.173946, 35.686546, 27.063843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157136, 0.532077, -0.831987,
		0.231969, -0.838769, -0.492603,
		-0.959948, -0.115589, -0.255226,
		30.885962, 35.651871, 26.987274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.618462, 35.575535, 26.433432>,  <31.557924, 35.732780, 27.165934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.618462, 35.575535, 26.433432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.242479, 35.681553, 26.519440>,  <31.016890, 35.745163, 26.571045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.242479, 35.681553, 26.519440>,  <31.618462, 35.575535, 26.433432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.242479, 35.681553, 26.519440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059018, 0.494299, -0.867287,
		-0.336153, -0.827902, -0.448977,
		-0.939956, 0.265043, 0.215021,
		30.960493, 35.761066, 26.583946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.137106, 35.423557, 25.923517>,  <31.618462, 35.575535, 26.433432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.137106, 35.423557, 25.923517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.967764, 35.731243, 26.114967>,  <30.866159, 35.915855, 26.229837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.967764, 35.731243, 26.114967>,  <31.137106, 35.423557, 25.923517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.967764, 35.731243, 26.114967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152244, 0.460389, -0.874565,
		-0.893081, -0.443118, -0.077799,
		-0.423353, 0.769213, 0.478627,
		30.840757, 35.962006, 26.258556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.752296, 35.690689, 25.400230>,  <31.137106, 35.423557, 25.923517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.752296, 35.690689, 25.400230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.741184, 36.002167, 25.650944>,  <30.734516, 36.189053, 25.801373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.741184, 36.002167, 25.650944>,  <30.752296, 35.690689, 25.400230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.741184, 36.002167, 25.650944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094567, 0.622168, -0.777151,
		-0.995131, -0.080863, 0.056355,
		-0.027781, 0.778696, 0.626786,
		30.732849, 36.235775, 25.838980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.259773, 36.256729, 25.072893>,  <30.752296, 35.690689, 25.400230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.259773, 36.256729, 25.072893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.457512, 36.443119, 25.366421>,  <30.576155, 36.554955, 25.542538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.457512, 36.443119, 25.366421>,  <30.259773, 36.256729, 25.072893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.457512, 36.443119, 25.366421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035899, 0.832517, -0.552835,
		-0.868524, 0.299634, 0.394823,
		0.494345, 0.465977, 0.733818,
		30.605816, 36.582912, 25.586567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.073818, 37.051571, 25.012232>,  <30.259773, 36.256729, 25.072893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.073818, 37.051571, 25.012232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.410404, 37.027691, 25.227034>,  <30.612356, 37.013363, 25.355915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.410404, 37.027691, 25.227034>,  <30.073818, 37.051571, 25.012232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.410404, 37.027691, 25.227034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353239, 0.812843, -0.463151,
		-0.408852, 0.579416, 0.705065,
		0.841464, -0.059696, 0.537005,
		30.662844, 37.009781, 25.388136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.229376, 37.640305, 25.333044>,  <30.073818, 37.051571, 25.012232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.229376, 37.640305, 25.333044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.599529, 37.488697, 25.334106>,  <30.821621, 37.397732, 25.334743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.599529, 37.488697, 25.334106>,  <30.229376, 37.640305, 25.333044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.599529, 37.488697, 25.334106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336608, 0.818576, -0.465434,
		0.174235, 0.431599, 0.885079,
		0.925385, -0.379019, 0.002655,
		30.877144, 37.374992, 25.334904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.719412, 38.197269, 25.484848>,  <30.229376, 37.640305, 25.333044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.719412, 38.197269, 25.484848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.939981, 37.896324, 25.340691>,  <31.072323, 37.715755, 25.254196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.939981, 37.896324, 25.340691>,  <30.719412, 38.197269, 25.484848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.939981, 37.896324, 25.340691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365488, 0.606219, -0.706341,
		0.749901, 0.257774, 0.609263,
		0.551423, -0.752364, -0.360391,
		31.105408, 37.670616, 25.232573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.396427, 38.392513, 25.604389>,  <30.719412, 38.197269, 25.484848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.396427, 38.392513, 25.604389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.363188, 38.137844, 25.297731>,  <31.343245, 37.985043, 25.113737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.363188, 38.137844, 25.297731>,  <31.396427, 38.392513, 25.604389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.363188, 38.137844, 25.297731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328237, 0.708892, -0.624285,
		0.940933, -0.303520, 0.150070,
		-0.083099, -0.636669, -0.766647,
		31.338259, 37.946842, 25.067738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.072971, 38.632500, 25.223200>,  <31.396427, 38.392513, 25.604389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.072971, 38.632500, 25.223200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.924301, 38.374317, 24.956295>,  <31.835098, 38.219406, 24.796152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.924301, 38.374317, 24.956295>,  <32.072971, 38.632500, 25.223200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.924301, 38.374317, 24.956295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631236, 0.351326, -0.691456,
		0.680732, -0.678200, 0.276856,
		-0.371679, -0.645458, -0.667263,
		31.812798, 38.180679, 24.756117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.609467, 38.413757, 24.857029>,  <32.072971, 38.632500, 25.223200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.609467, 38.413757, 24.857029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.314526, 38.329620, 24.600260>,  <32.137562, 38.279140, 24.446198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.314526, 38.329620, 24.600260>,  <32.609467, 38.413757, 24.857029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.314526, 38.329620, 24.600260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573459, 0.307316, -0.759409,
		0.357006, -0.928070, -0.105980,
		-0.737354, -0.210338, -0.641923,
		32.093319, 38.266518, 24.407682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.003742, 38.141911, 24.321508>,  <32.609467, 38.413757, 24.857029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.003742, 38.141911, 24.321508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.639965, 38.246780, 24.192402>,  <32.421700, 38.309704, 24.114939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.639965, 38.246780, 24.192402>,  <33.003742, 38.141911, 24.321508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.639965, 38.246780, 24.192402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405989, 0.391960, -0.825554,
		-0.089932, -0.881833, -0.462906,
		-0.909442, 0.262179, -0.322765,
		32.367134, 38.325436, 24.095572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.863232, 37.935612, 23.532837>,  <33.003742, 38.141911, 24.321508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.863232, 37.935612, 23.532837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.603470, 38.228252, 23.615808>,  <32.447613, 38.403839, 23.665590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.603470, 38.228252, 23.615808>,  <32.863232, 37.935612, 23.532837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.603470, 38.228252, 23.615808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355332, 0.533101, -0.767817,
		-0.672318, -0.424919, -0.606161,
		-0.649405, 0.731606, 0.207427,
		32.408649, 38.447735, 23.678036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.489132, 38.109814, 22.888336>,  <32.863232, 37.935612, 23.532837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.489132, 38.109814, 22.888336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.442902, 38.440521, 23.108553>,  <32.415165, 38.638947, 23.240683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.442902, 38.440521, 23.108553>,  <32.489132, 38.109814, 22.888336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.442902, 38.440521, 23.108553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246289, 0.560801, -0.790471,
		-0.962281, 0.044236, -0.268437,
		-0.115572, 0.826768, 0.550543,
		32.408230, 38.688553, 23.273716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.004246, 38.618336, 22.520617>,  <32.489132, 38.109814, 22.888336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.004246, 38.618336, 22.520617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.156456, 38.878540, 22.783533>,  <32.247780, 39.034664, 22.941282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.156456, 38.878540, 22.783533>,  <32.004246, 38.618336, 22.520617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.156456, 38.878540, 22.783533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210618, 0.631119, -0.746544,
		-0.900467, 0.422516, 0.103146,
		0.380524, 0.650514, 0.657292,
		32.270615, 39.073696, 22.980721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.894403, 39.321594, 22.279100>,  <32.004246, 38.618336, 22.520617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.894403, 39.321594, 22.279100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.205959, 39.384583, 22.521929>,  <32.392891, 39.422375, 22.667625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.205959, 39.384583, 22.521929>,  <31.894403, 39.321594, 22.279100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.205959, 39.384583, 22.521929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406388, 0.610535, -0.679776,
		-0.477685, 0.776176, 0.411543,
		0.778888, 0.157472, 0.607072,
		32.439625, 39.431824, 22.704050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.802179, 39.726173, 22.890282>,  <31.894403, 39.321594, 22.279100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.802179, 39.726173, 22.890282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.704304, 40.105789, 22.969725>,  <31.645578, 40.333561, 23.017391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.704304, 40.105789, 22.969725>,  <31.802179, 39.726173, 22.890282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.704304, 40.105789, 22.969725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342286, 0.107099, -0.933472,
		-0.907176, -0.296389, 0.298639,
		-0.244687, 0.949043, 0.198608,
		31.630898, 40.390503, 23.029306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.120098, 39.800148, 22.806200>,  <31.802179, 39.726173, 22.890282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.120098, 39.800148, 22.806200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.246359, 40.178478, 22.775797>,  <31.322115, 40.405476, 22.757555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.246359, 40.178478, 22.775797>,  <31.120098, 39.800148, 22.806200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.246359, 40.178478, 22.775797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425567, 0.069520, -0.902252,
		-0.848089, 0.317146, 0.424457,
		0.315654, 0.945825, -0.076008,
		31.341055, 40.462227, 22.752995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.547855, 40.135544, 22.491745>,  <31.120098, 39.800148, 22.806200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.547855, 40.135544, 22.491745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.869646, 40.356842, 22.405273>,  <31.062721, 40.489620, 22.353390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.869646, 40.356842, 22.405273>,  <30.547855, 40.135544, 22.491745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.869646, 40.356842, 22.405273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333701, 0.119877, -0.935026,
		-0.491386, 0.824346, 0.281057,
		0.804477, 0.553248, -0.216179,
		31.110989, 40.522816, 22.340420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.338352, 40.861572, 22.374033>,  <30.547855, 40.135544, 22.491745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.338352, 40.861572, 22.374033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.667810, 40.715736, 22.200283>,  <30.865486, 40.628235, 22.096033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.667810, 40.715736, 22.200283>,  <30.338352, 40.861572, 22.374033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.667810, 40.715736, 22.200283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489603, -0.070643, -0.869079,
		0.286175, 0.928483, -0.236690,
		0.823646, -0.364593, -0.434372,
		30.914904, 40.606358, 22.069971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.752989, 41.252327, 21.862354>,  <30.338352, 40.861572, 22.374033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.752989, 41.252327, 21.862354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.788544, 40.860760, 21.788788>,  <30.809875, 40.625820, 21.744648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.788544, 40.860760, 21.788788>,  <30.752989, 41.252327, 21.862354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.788544, 40.860760, 21.788788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255180, 0.156102, -0.954209,
		0.962799, 0.131748, -0.235924,
		0.088886, -0.978915, -0.183914,
		30.815210, 40.567085, 21.733614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.226887, 41.256855, 21.407412>,  <30.752989, 41.252327, 21.862354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.226887, 41.256855, 21.407412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.030188, 40.913162, 21.350981>,  <30.912169, 40.706947, 21.317122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.030188, 40.913162, 21.350981>,  <31.226887, 41.256855, 21.407412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.030188, 40.913162, 21.350981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165315, 0.251201, -0.953714,
		0.854900, -0.445666, -0.265571,
		-0.491749, -0.859233, -0.141076,
		30.882662, 40.655392, 21.308659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.533472, 40.866230, 20.915897>,  <31.226887, 41.256855, 21.407412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.533472, 40.866230, 20.915897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.159113, 40.725525, 20.923426>,  <30.934498, 40.641102, 20.927942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.159113, 40.725525, 20.923426>,  <31.533472, 40.866230, 20.915897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.159113, 40.725525, 20.923426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092329, 0.193391, -0.976768,
		0.339956, -0.915893, -0.213473,
		-0.935898, -0.351768, 0.018819,
		30.878344, 40.619995, 20.929071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.023670, 40.546230, 21.483469>,  <31.533472, 40.866230, 20.915897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.023670, 40.546230, 21.483469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.712433, 40.714581, 21.669991>,  <31.525690, 40.815590, 21.781902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.712433, 40.714581, 21.669991>,  <32.023670, 40.546230, 21.483469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.712433, 40.714581, 21.669991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396780, -0.246185, 0.884284,
		0.486967, 0.873075, 0.024561,
		-0.778093, 0.420872, 0.466303,
		31.479006, 40.840843, 21.809881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.194614, 41.150459, 22.079556>,  <32.023670, 40.546230, 21.483469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.194614, 41.150459, 22.079556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.858009, 40.947876, 22.154772>,  <31.656048, 40.826324, 22.199902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.858009, 40.947876, 22.154772>,  <32.194614, 41.150459, 22.079556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.858009, 40.947876, 22.154772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230653, -0.022062, 0.972786,
		-0.488531, 0.861979, 0.135382,
		-0.841508, -0.506463, 0.188040,
		31.605556, 40.795937, 22.211184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.984034, 41.597397, 22.619617>,  <32.194614, 41.150459, 22.079556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.984034, 41.597397, 22.619617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.776945, 41.255573, 22.636065>,  <31.652691, 41.050480, 22.645933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.776945, 41.255573, 22.636065>,  <31.984034, 41.597397, 22.619617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.776945, 41.255573, 22.636065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089699, -0.006424, 0.995948,
		-0.850834, 0.519312, 0.079979,
		-0.517722, -0.854560, 0.041116,
		31.621628, 40.999207, 22.648399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.525333, 41.673008, 23.131916>,  <31.984034, 41.597397, 22.619617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.525333, 41.673008, 23.131916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.553034, 41.274570, 23.110025>,  <31.569654, 41.035507, 23.096891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.553034, 41.274570, 23.110025>,  <31.525333, 41.673008, 23.131916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.553034, 41.274570, 23.110025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011905, -0.054031, 0.998468,
		-0.997528, -0.069798, 0.008116,
		0.069253, -0.996097, -0.054728,
		31.573811, 40.975742, 23.093607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.179029, 41.429878, 23.674833>,  <31.525333, 41.673008, 23.131916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.179029, 41.429878, 23.674833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.428282, 41.125111, 23.604195>,  <31.577833, 40.942249, 23.561811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.428282, 41.125111, 23.604195>,  <31.179029, 41.429878, 23.674833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.428282, 41.125111, 23.604195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214752, -0.050435, 0.975365,
		-0.752058, -0.645703, 0.132197,
		0.623130, -0.761921, -0.176596,
		31.615221, 40.896534, 23.551216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.076288, 40.858414, 24.104696>,  <31.179029, 41.429878, 23.674833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.076288, 40.858414, 24.104696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.442932, 40.766754, 23.973660>,  <31.662918, 40.711758, 23.895039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.442932, 40.766754, 23.973660>,  <31.076288, 40.858414, 24.104696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.442932, 40.766754, 23.973660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307513, -0.119484, 0.944012,
		-0.255461, -0.966030, -0.039054,
		0.916611, -0.229149, -0.327590,
		31.717915, 40.698009, 23.875381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.307018, 40.121567, 24.366713>,  <31.076288, 40.858414, 24.104696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.307018, 40.121567, 24.366713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.622801, 40.360554, 24.310436>,  <31.812269, 40.503944, 24.276670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.622801, 40.360554, 24.310436>,  <31.307018, 40.121567, 24.366713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.622801, 40.360554, 24.310436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305689, -0.183934, 0.934196,
		0.532274, -0.780514, -0.327847,
		0.789455, 0.597467, -0.140691,
		31.859638, 40.539795, 24.268229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.816114, 39.812012, 24.723106>,  <31.307018, 40.121567, 24.366713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.816114, 39.812012, 24.723106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.977842, 40.174458, 24.673334>,  <32.074879, 40.391926, 24.643471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.977842, 40.174458, 24.673334>,  <31.816114, 39.812012, 24.723106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.977842, 40.174458, 24.673334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487036, -0.098146, 0.867850,
		0.774158, -0.411491, -0.480993,
		0.404320, 0.906114, -0.124430,
		32.099136, 40.446293, 24.636005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.451519, 39.808010, 25.110641>,  <31.816114, 39.812012, 24.723106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.451519, 39.808010, 25.110641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.394772, 40.199932, 25.054264>,  <32.360725, 40.435085, 25.020437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.394772, 40.199932, 25.054264>,  <32.451519, 39.808010, 25.110641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.394772, 40.199932, 25.054264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464449, 0.191623, 0.864620,
		0.874163, 0.057196, -0.482252,
		-0.141864, 0.979800, -0.140945,
		32.352211, 40.493874, 25.011980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.118252, 40.032967, 25.148134>,  <32.451519, 39.808010, 25.110641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.118252, 40.032967, 25.148134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.872761, 40.340271, 25.220924>,  <32.725468, 40.524654, 25.264599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.872761, 40.340271, 25.220924>,  <33.118252, 40.032967, 25.148134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.872761, 40.340271, 25.220924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536120, 0.236326, 0.810386,
		0.579583, 0.594915, -0.556920,
		-0.613726, 0.768262, 0.181975,
		32.688644, 40.570751, 25.275517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.573235, 40.539146, 25.334156>,  <33.118252, 40.032967, 25.148134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.573235, 40.539146, 25.334156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.200863, 40.642761, 25.437128>,  <32.977440, 40.704929, 25.498911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.200863, 40.642761, 25.437128>,  <33.573235, 40.539146, 25.334156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.200863, 40.642761, 25.437128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312084, 0.198174, 0.929156,
		0.189666, 0.945319, -0.265326,
		-0.930930, 0.259034, 0.257432,
		32.921585, 40.720470, 25.514359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.780155, 41.063560, 25.754599>,  <33.573235, 40.539146, 25.334156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.780155, 41.063560, 25.754599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.403336, 40.963310, 25.843800>,  <33.177242, 40.903160, 25.897320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.403336, 40.963310, 25.843800>,  <33.780155, 41.063560, 25.754599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.403336, 40.963310, 25.843800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247007, -0.068392, 0.966597,
		-0.227003, 0.965665, 0.126335,
		-0.942050, -0.250626, 0.223001,
		33.120720, 40.888123, 25.910700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.681599, 41.558769, 26.304100>,  <33.780155, 41.063560, 25.754599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.681599, 41.558769, 26.304100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.417576, 41.259724, 26.333500>,  <33.259163, 41.080296, 26.351139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.417576, 41.259724, 26.333500>,  <33.681599, 41.558769, 26.304100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.417576, 41.259724, 26.333500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373904, -0.242093, 0.895314,
		-0.651554, 0.618439, 0.439329,
		-0.660056, -0.747612, 0.073500,
		33.219559, 41.035439, 26.355551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.388504, 41.610851, 26.973244>,  <33.681599, 41.558769, 26.304100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.388504, 41.610851, 26.973244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.360661, 41.234417, 26.840874>,  <33.343956, 41.008556, 26.761452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.360661, 41.234417, 26.840874>,  <33.388504, 41.610851, 26.973244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.360661, 41.234417, 26.840874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207768, -0.338133, 0.917878,
		-0.975698, -0.004865, 0.219063,
		-0.069607, -0.941086, -0.330926,
		33.339779, 40.952091, 26.741596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.943054, 41.306992, 27.441637>,  <33.388504, 41.610851, 26.973244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.943054, 41.306992, 27.441637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.107651, 40.974609, 27.291868>,  <33.206409, 40.775181, 27.202007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.107651, 40.974609, 27.291868>,  <32.943054, 41.306992, 27.441637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.107651, 40.974609, 27.291868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123290, -0.457787, 0.880472,
		-0.903037, -0.316142, -0.290822,
		0.411489, -0.830955, -0.374421,
		33.231098, 40.725323, 27.179543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.649624, 40.716404, 27.834566>,  <32.943054, 41.306992, 27.441637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.649624, 40.716404, 27.834566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.978844, 40.545311, 27.685095>,  <33.176376, 40.442654, 27.595411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.978844, 40.545311, 27.685095>,  <32.649624, 40.716404, 27.834566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.978844, 40.545311, 27.685095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242319, -0.330594, 0.912134,
		-0.513689, -0.841279, -0.168445,
		0.823046, -0.427736, -0.373680,
		33.225758, 40.416992, 27.572990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.631527, 40.097454, 28.065756>,  <32.649624, 40.716404, 27.834566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.631527, 40.097454, 28.065756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.018398, 40.163319, 27.988344>,  <33.250523, 40.202835, 27.941896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.018398, 40.163319, 27.988344>,  <32.631527, 40.097454, 28.065756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.018398, 40.163319, 27.988344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239655, -0.337988, 0.910126,
		0.084451, -0.926634, -0.366356,
		0.967179, 0.164660, -0.193529,
		33.308552, 40.212715, 27.930286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.902168, 39.453999, 28.118029>,  <32.631527, 40.097454, 28.065756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.902168, 39.453999, 28.118029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.203461, 39.713848, 28.159267>,  <33.384235, 39.869759, 28.184010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.203461, 39.713848, 28.159267>,  <32.902168, 39.453999, 28.118029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.203461, 39.713848, 28.159267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222864, -0.399524, 0.889220,
		0.618850, -0.646811, -0.445712,
		0.753231, 0.649627, 0.103095,
		33.429428, 39.908737, 28.190195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.430588, 39.052231, 28.409369>,  <32.902168, 39.453999, 28.118029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.430588, 39.052231, 28.409369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.582104, 39.416397, 28.475906>,  <33.673012, 39.634895, 28.515829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.582104, 39.416397, 28.475906>,  <33.430588, 39.052231, 28.409369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.582104, 39.416397, 28.475906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311172, -0.294560, 0.903552,
		0.871603, -0.290491, -0.394870,
		0.378787, 0.910412, 0.166347,
		33.695740, 39.689522, 28.525810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.080540, 38.936020, 28.736509>,  <33.430588, 39.052231, 28.409369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.080540, 38.936020, 28.736509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.954861, 39.306564, 28.819584>,  <33.879452, 39.528893, 28.869429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.954861, 39.306564, 28.819584>,  <34.080540, 38.936020, 28.736509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.954861, 39.306564, 28.819584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081199, -0.191741, 0.978081,
		0.945879, 0.324174, -0.014975,
		-0.314197, 0.926362, 0.207686,
		33.860603, 39.584473, 28.881889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.551296, 39.198193, 29.163897>,  <34.080540, 38.936020, 28.736509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.551296, 39.198193, 29.163897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.206009, 39.394154, 29.212639>,  <33.998837, 39.511730, 29.241884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.206009, 39.394154, 29.212639>,  <34.551296, 39.198193, 29.163897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.206009, 39.394154, 29.212639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003117, -0.246545, 0.969126,
		0.504821, 0.836188, 0.214349,
		-0.863218, 0.489904, 0.121855,
		33.947044, 39.541126, 29.249195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.648537, 39.434414, 29.803087>,  <34.551296, 39.198193, 29.163897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.648537, 39.434414, 29.803087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.254425, 39.482849, 29.754829>,  <34.017956, 39.511909, 29.725874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.254425, 39.482849, 29.754829>,  <34.648537, 39.434414, 29.803087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.254425, 39.482849, 29.754829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158317, -0.380373, 0.911182,
		0.064439, 0.916873, 0.393945,
		-0.985283, 0.121084, -0.120646,
		33.958839, 39.519173, 29.718636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.600937, 39.659569, 30.411293>,  <34.648537, 39.434414, 29.803087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.600937, 39.659569, 30.411293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.241386, 39.558987, 30.267746>,  <34.025654, 39.498638, 30.181618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.241386, 39.558987, 30.267746>,  <34.600937, 39.659569, 30.411293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.241386, 39.558987, 30.267746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221187, -0.446603, 0.866961,
		-0.378274, 0.858670, 0.345823,
		-0.898880, -0.251457, -0.358866,
		33.971722, 39.483551, 30.160086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.096874, 39.917007, 30.907221>,  <34.600937, 39.659569, 30.411293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.096874, 39.917007, 30.907221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.919937, 39.622372, 30.702570>,  <33.813774, 39.445591, 30.579779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.919937, 39.622372, 30.702570>,  <34.096874, 39.917007, 30.907221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.919937, 39.622372, 30.702570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224000, -0.461656, 0.858311,
		-0.868421, 0.494275, 0.039215,
		-0.442345, -0.736591, -0.511629,
		33.787235, 39.401394, 30.549082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.469776, 39.757977, 31.336548>,  <34.096874, 39.917007, 30.907221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.469776, 39.757977, 31.336548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.544979, 39.446487, 31.097136>,  <33.590099, 39.259594, 30.953487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.544979, 39.446487, 31.097136>,  <33.469776, 39.757977, 31.336548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.544979, 39.446487, 31.097136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136233, -0.624182, 0.769309,
		-0.972674, -0.063096, -0.223439,
		0.188007, -0.778727, -0.598530,
		33.601379, 39.212868, 30.917576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.957493, 39.355976, 31.396605>,  <33.469776, 39.757977, 31.336548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.957493, 39.355976, 31.396605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.238392, 39.105114, 31.261835>,  <33.406933, 38.954597, 31.180973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.238392, 39.105114, 31.261835>,  <32.957493, 39.355976, 31.396605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.238392, 39.105114, 31.261835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197595, -0.626361, 0.754074,
		-0.683960, -0.462973, -0.563786,
		0.702250, -0.627158, -0.336925,
		33.449066, 38.916965, 31.160757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.677948, 38.724163, 31.528570>,  <32.957493, 39.355976, 31.396605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.677948, 38.724163, 31.528570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.066219, 38.651493, 31.465612>,  <33.299183, 38.607891, 31.427837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.066219, 38.651493, 31.465612>,  <32.677948, 38.724163, 31.528570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.066219, 38.651493, 31.465612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035230, -0.540197, 0.840801,
		-0.237776, -0.821695, -0.517958,
		0.970681, -0.181675, -0.157394,
		33.357422, 38.596989, 31.418394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.810291, 38.031723, 31.667496>,  <32.677948, 38.724163, 31.528570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.810291, 38.031723, 31.667496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.171619, 38.200153, 31.700239>,  <33.388416, 38.301212, 31.719885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.171619, 38.200153, 31.700239>,  <32.810291, 38.031723, 31.667496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.171619, 38.200153, 31.700239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126617, -0.444060, 0.887005,
		0.409846, -0.790889, -0.454446,
		0.903324, 0.421076, 0.081857,
		33.442616, 38.326477, 31.724796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.217377, 37.550282, 31.732910>,  <32.810291, 38.031723, 31.667496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.217377, 37.550282, 31.732910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.430653, 37.844658, 31.899813>,  <33.558617, 38.021282, 31.999954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.430653, 37.844658, 31.899813>,  <33.217377, 37.550282, 31.732910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.430653, 37.844658, 31.899813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034098, -0.511508, 0.858602,
		0.845308, -0.443570, -0.297824,
		0.533190, 0.735939, 0.417257,
		33.590611, 38.065441, 32.024990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.771519, 37.284599, 32.122646>,  <33.217377, 37.550282, 31.732910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.771519, 37.284599, 32.122646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.743885, 37.641766, 32.300602>,  <33.727306, 37.856068, 32.407375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.743885, 37.641766, 32.300602>,  <33.771519, 37.284599, 32.122646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.743885, 37.641766, 32.300602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026780, -0.447452, 0.893907,
		0.997251, 0.049842, 0.054825,
		-0.069085, 0.892918, 0.444887,
		33.723160, 37.909641, 32.434067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.227913, 37.251289, 32.708767>,  <33.771519, 37.284599, 32.122646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.227913, 37.251289, 32.708767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.969002, 37.546829, 32.783745>,  <33.813656, 37.724152, 32.828732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.969002, 37.546829, 32.783745>,  <34.227913, 37.251289, 32.708767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.969002, 37.546829, 32.783745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019569, -0.229719, 0.973060,
		0.762000, 0.633512, 0.134235,
		-0.647281, 0.738845, 0.187443,
		33.774818, 37.768482, 32.839977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.423420, 37.485447, 33.354210>,  <34.227913, 37.251289, 32.708767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.423420, 37.485447, 33.354210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.065777, 37.663139, 33.331493>,  <33.851192, 37.769756, 33.317863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.065777, 37.663139, 33.331493>,  <34.423420, 37.485447, 33.354210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.065777, 37.663139, 33.331493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109220, -0.093310, 0.989628,
		0.434328, 0.891038, 0.131948,
		-0.894109, 0.444235, -0.056792,
		33.797543, 37.796410, 33.314457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.366573, 38.092148, 33.857670>,  <34.423420, 37.485447, 33.354210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.366573, 38.092148, 33.857670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.983753, 37.993725, 33.796341>,  <33.754063, 37.934669, 33.759544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.983753, 37.993725, 33.796341>,  <34.366573, 38.092148, 33.857670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.983753, 37.993725, 33.796341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139446, -0.072976, 0.987537,
		-0.254180, 0.966504, 0.035531,
		-0.957051, -0.246057, -0.153324,
		33.696636, 37.919907, 33.750343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.900894, 38.378197, 34.425869>,  <34.366573, 38.092148, 33.857670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.900894, 38.378197, 34.425869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.688450, 38.069683, 34.285564>,  <33.560982, 37.884575, 34.201382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.688450, 38.069683, 34.285564>,  <33.900894, 38.378197, 34.425869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.688450, 38.069683, 34.285564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162935, -0.313284, 0.935578,
		-0.831486, 0.554052, 0.040721,
		-0.531116, -0.771285, -0.350765,
		33.529114, 37.838299, 34.180336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.430290, 38.270077, 35.012051>,  <33.900894, 38.378197, 34.425869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.430290, 38.270077, 35.012051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.378418, 37.955917, 34.769951>,  <33.347294, 37.767422, 34.624691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.378418, 37.955917, 34.769951>,  <33.430290, 38.270077, 35.012051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.378418, 37.955917, 34.769951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226643, -0.570767, 0.789213,
		-0.965306, 0.239522, -0.103988,
		-0.129681, -0.785400, -0.605251,
		33.339512, 37.720299, 34.588375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.766171, 38.107346, 35.091877>,  <33.430290, 38.270077, 35.012051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.766171, 38.107346, 35.091877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.935581, 37.770241, 34.958981>,  <33.037228, 37.567978, 34.879242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.935581, 37.770241, 34.958981>,  <32.766171, 38.107346, 35.091877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.935581, 37.770241, 34.958981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453701, -0.514781, 0.727431,
		-0.784079, -0.157351, -0.600384,
		0.423528, -0.842758, -0.332239,
		33.062641, 37.517414, 34.859310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.255821, 37.627068, 34.987434>,  <32.766171, 38.107346, 35.091877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.255821, 37.627068, 34.987434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.587132, 37.407551, 35.032654>,  <32.785919, 37.275841, 35.059788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.587132, 37.407551, 35.032654>,  <32.255821, 37.627068, 34.987434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.587132, 37.407551, 35.032654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495207, -0.622574, 0.605947,
		-0.262157, -0.557877, -0.787431,
		0.828277, -0.548795, 0.113053,
		32.835613, 37.242912, 35.066570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.872343, 36.926182, 35.208687>,  <32.255821, 37.627068, 34.987434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.872343, 36.926182, 35.208687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.268074, 36.910095, 35.264702>,  <32.505512, 36.900444, 35.298309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.268074, 36.910095, 35.264702>,  <31.872343, 36.926182, 35.208687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.268074, 36.910095, 35.264702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130212, -0.675233, 0.726020,
		0.065359, -0.736508, -0.673264,
		0.989329, -0.040215, 0.140035,
		32.564873, 36.898029, 35.306713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.025497, 36.175823, 35.260273>,  <31.872343, 36.926182, 35.208687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.025497, 36.175823, 35.260273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.338688, 36.368145, 35.418148>,  <32.526600, 36.483540, 35.512875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.338688, 36.368145, 35.418148>,  <32.025497, 36.175823, 35.260273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.338688, 36.368145, 35.418148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006679, -0.627957, 0.778220,
		0.622018, -0.611962, -0.488463,
		0.782974, 0.480805, 0.394687,
		32.573582, 36.512386, 35.536552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.534653, 35.736385, 35.381004>,  <32.025497, 36.175823, 35.260273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.534653, 35.736385, 35.381004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.648735, 36.024151, 35.634335>,  <32.717186, 36.196808, 35.786331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.648735, 36.024151, 35.634335>,  <32.534653, 35.736385, 35.381004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.648735, 36.024151, 35.634335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211490, -0.691722, 0.690502,
		0.934841, -0.062995, -0.349434,
		0.285210, 0.719411, 0.633327,
		32.734299, 36.239975, 35.824333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.237206, 35.432858, 35.737324>,  <32.534653, 35.736385, 35.381004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.237206, 35.432858, 35.737324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.100880, 35.733124, 35.963718>,  <33.019085, 35.913284, 36.099556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.100880, 35.733124, 35.963718>,  <33.237206, 35.432858, 35.737324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.100880, 35.733124, 35.963718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274565, -0.496305, 0.823587,
		0.899142, 0.436093, -0.036957,
		-0.340819, 0.750669, 0.565985,
		32.998634, 35.958324, 36.133514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.741528, 35.599030, 36.149281>,  <33.237206, 35.432858, 35.737324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.741528, 35.599030, 36.149281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.420265, 35.725807, 36.351063>,  <33.227509, 35.801876, 36.472134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.420265, 35.725807, 36.351063>,  <33.741528, 35.599030, 36.149281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.420265, 35.725807, 36.351063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382943, -0.374001, 0.844676,
		0.456386, 0.871589, 0.179009,
		-0.803160, 0.316948, 0.504458,
		33.179317, 35.820892, 36.502399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.467987, 35.849464, 36.239147>,  <33.741528, 35.599030, 36.149281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.467987, 35.849464, 36.239147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.767750, 35.596828, 36.159664>,  <34.947605, 35.445248, 36.111977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.767750, 35.596828, 36.159664>,  <34.467987, 35.849464, 36.239147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.767750, 35.596828, 36.159664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271364, 0.566725, -0.777936,
		0.603949, 0.529068, 0.596098,
		0.749405, -0.631593, -0.198703,
		34.992573, 35.407352, 36.100052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.955444, 36.267853, 36.027500>,  <34.467987, 35.849464, 36.239147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.955444, 36.267853, 36.027500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.072182, 35.916332, 35.876488>,  <35.142223, 35.705418, 35.785881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.072182, 35.916332, 35.876488>,  <34.955444, 36.267853, 36.027500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.072182, 35.916332, 35.876488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266444, 0.453785, -0.850345,
		0.918603, 0.147582, 0.366589,
		0.291848, -0.878805, -0.377526,
		35.159737, 35.652691, 35.763229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.599667, 36.349716, 35.770554>,  <34.955444, 36.267853, 36.027500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.599667, 36.349716, 35.770554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.496960, 36.027538, 35.556889>,  <35.435333, 35.834232, 35.428688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.496960, 36.027538, 35.556889>,  <35.599667, 36.349716, 35.770554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.496960, 36.027538, 35.556889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492961, 0.366246, -0.789211,
		0.831299, -0.465968, 0.303010,
		-0.256771, -0.805442, -0.534164,
		35.419930, 35.785904, 35.396641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.238831, 36.205765, 35.372799>,  <35.599667, 36.349716, 35.770554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.238831, 36.205765, 35.372799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.945957, 36.000298, 35.193893>,  <35.770233, 35.877018, 35.086548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.945957, 36.000298, 35.193893>,  <36.238831, 36.205765, 35.372799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.945957, 36.000298, 35.193893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380469, 0.236216, -0.894117,
		0.564932, -0.824831, 0.022482,
		-0.732185, -0.513669, -0.447268,
		35.726303, 35.846195, 35.059711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.580208, 35.795086, 34.961193>,  <36.238831, 36.205765, 35.372799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.580208, 35.795086, 34.961193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.217236, 35.825439, 34.795876>,  <35.999454, 35.843651, 34.696686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.217236, 35.825439, 34.795876>,  <36.580208, 35.795086, 34.961193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.217236, 35.825439, 34.795876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410246, 0.372860, -0.832270,
		0.090944, -0.924779, -0.369477,
		-0.907429, 0.075887, -0.413297,
		35.945007, 35.848206, 34.671886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.684620, 35.659847, 34.244221>,  <36.580208, 35.795086, 34.961193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.684620, 35.659847, 34.244221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.333122, 35.849621, 34.223339>,  <36.122223, 35.963486, 34.210808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.333122, 35.849621, 34.223339>,  <36.684620, 35.659847, 34.244221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.333122, 35.849621, 34.223339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294969, 0.453814, -0.840860,
		-0.375237, -0.754300, -0.538729,
		-0.878744, 0.474431, -0.052207,
		36.069500, 35.991951, 34.207676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.507946, 35.720482, 33.569988>,  <36.684620, 35.659847, 34.244221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.507946, 35.720482, 33.569988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.266628, 36.007206, 33.709824>,  <36.121838, 36.179241, 33.793724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.266628, 36.007206, 33.709824>,  <36.507946, 35.720482, 33.569988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.266628, 36.007206, 33.709824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224085, 0.573044, -0.788293,
		-0.765387, -0.397239, -0.506343,
		-0.603298, 0.716814, 0.349585,
		36.085640, 36.222252, 33.814701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.144600, 35.894821, 33.010437>,  <36.507946, 35.720482, 33.569988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.144600, 35.894821, 33.010437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.154408, 36.202179, 33.266239>,  <36.160294, 36.386593, 33.419720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.154408, 36.202179, 33.266239>,  <36.144600, 35.894821, 33.010437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.154408, 36.202179, 33.266239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069889, 0.636813, -0.767844,
		-0.997253, 0.063520, -0.038089,
		0.024518, 0.768397, 0.639503,
		36.161762, 36.432697, 33.458092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.684544, 36.369236, 32.802696>,  <36.144600, 35.894821, 33.010437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.684544, 36.369236, 32.802696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.931332, 36.588314, 33.028751>,  <36.079403, 36.719761, 33.164383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.931332, 36.588314, 33.028751>,  <35.684544, 36.369236, 32.802696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.931332, 36.588314, 33.028751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013931, 0.725589, -0.687988,
		-0.786863, 0.416595, 0.455297,
		0.616971, 0.547695, 0.565135,
		36.116425, 36.752621, 33.198292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.482510, 36.938206, 32.713436>,  <35.684544, 36.369236, 32.802696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.482510, 36.938206, 32.713436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.853840, 37.033184, 32.827858>,  <36.076637, 37.090172, 32.896511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.853840, 37.033184, 32.827858>,  <35.482510, 36.938206, 32.713436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.853840, 37.033184, 32.827858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026932, 0.724477, -0.688772,
		-0.370785, 0.647111, 0.666157,
		0.928328, 0.237446, 0.286054,
		36.132339, 37.104416, 32.913673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.655495, 37.448612, 32.327995>,  <35.482510, 36.938206, 32.713436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.655495, 37.448612, 32.327995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.015606, 37.459255, 32.501793>,  <36.231674, 37.465641, 32.606071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.015606, 37.459255, 32.501793>,  <35.655495, 37.448612, 32.327995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.015606, 37.459255, 32.501793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240116, 0.802199, -0.546645,
		-0.363092, 0.596464, 0.715818,
		0.900283, 0.026603, 0.434493,
		36.285690, 37.467236, 32.632141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.830055, 38.109982, 32.566624>,  <35.655495, 37.448612, 32.327995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.830055, 38.109982, 32.566624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.161419, 37.903549, 32.479546>,  <36.360237, 37.779690, 32.427299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.161419, 37.903549, 32.479546>,  <35.830055, 38.109982, 32.566624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.161419, 37.903549, 32.479546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225177, 0.662725, -0.714206,
		0.512863, 0.542637, 0.665220,
		0.828412, -0.516082, -0.217698,
		36.409943, 37.748726, 32.414238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.357643, 38.569126, 32.515781>,  <35.830055, 38.109982, 32.566624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.357643, 38.569126, 32.515781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.503746, 38.254330, 32.316895>,  <36.591408, 38.065453, 32.197563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.503746, 38.254330, 32.316895>,  <36.357643, 38.569126, 32.515781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.503746, 38.254330, 32.316895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118280, 0.569029, -0.813766,
		0.923363, 0.238420, 0.300926,
		0.365253, -0.786996, -0.497220,
		36.613323, 38.018230, 32.167728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.978359, 38.882103, 32.192829>,  <36.357643, 38.569126, 32.515781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.978359, 38.882103, 32.192829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.832512, 38.554153, 32.016258>,  <36.745003, 38.357384, 31.910316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.832512, 38.554153, 32.016258>,  <36.978359, 38.882103, 32.192829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.832512, 38.554153, 32.016258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021004, 0.481180, -0.876370,
		0.930919, -0.310272, -0.192669,
		-0.364621, -0.819877, -0.441423,
		36.723125, 38.308189, 31.883831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.405220, 38.840195, 31.600750>,  <36.978359, 38.882103, 32.192829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.405220, 38.840195, 31.600750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.103107, 38.608566, 31.477959>,  <36.921841, 38.469589, 31.404284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.103107, 38.608566, 31.477959>,  <37.405220, 38.840195, 31.600750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.103107, 38.608566, 31.477959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075170, 0.388757, -0.918269,
		0.651080, -0.716624, -0.250092,
		-0.755278, -0.579067, -0.306980,
		36.876522, 38.434845, 31.385864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.593018, 38.604527, 30.980747>,  <37.405220, 38.840195, 31.600750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.593018, 38.604527, 30.980747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.199272, 38.536381, 30.962858>,  <36.963024, 38.495495, 30.952126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.199272, 38.536381, 30.962858>,  <37.593018, 38.604527, 30.980747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.199272, 38.536381, 30.962858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011763, 0.316914, -0.948381,
		0.175742, -0.933028, -0.313964,
		-0.984366, -0.170363, -0.044720,
		36.903961, 38.485271, 30.949442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.480705, 38.330254, 30.297672>,  <37.593018, 38.604527, 30.980747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.480705, 38.330254, 30.297672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.131424, 38.458065, 30.444864>,  <36.921856, 38.534752, 30.533180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.131424, 38.458065, 30.444864>,  <37.480705, 38.330254, 30.297672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.131424, 38.458065, 30.444864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176887, 0.495776, -0.850245,
		-0.454117, -0.807530, -0.376394,
		-0.873206, 0.319532, 0.367983,
		36.869461, 38.553925, 30.555260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.090111, 38.229454, 29.712042>,  <37.480705, 38.330254, 30.297672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.090111, 38.229454, 29.712042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.911709, 38.499702, 29.946857>,  <36.804668, 38.661854, 30.087746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.911709, 38.499702, 29.946857>,  <37.090111, 38.229454, 29.712042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.911709, 38.499702, 29.946857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455137, 0.393549, -0.798730,
		-0.770669, -0.623419, 0.131977,
		-0.446004, 0.675624, 0.587037,
		36.777908, 38.702389, 30.122969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.449104, 38.320194, 29.404320>,  <37.090111, 38.229454, 29.712042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.449104, 38.320194, 29.404320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.520039, 38.646435, 29.624628>,  <36.562599, 38.842178, 29.756813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.520039, 38.646435, 29.624628>,  <36.449104, 38.320194, 29.404320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.520039, 38.646435, 29.624628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260118, 0.578582, -0.773033,
		-0.949153, -0.006182, 0.314754,
		0.177332, 0.815600, 0.550771,
		36.573238, 38.891113, 29.789860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.826984, 38.671368, 29.387814>,  <36.449104, 38.320194, 29.404320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.826984, 38.671368, 29.387814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.087593, 38.956486, 29.491686>,  <36.243958, 39.127556, 29.554008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.087593, 38.956486, 29.491686>,  <35.826984, 38.671368, 29.387814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.087593, 38.956486, 29.491686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248755, 0.524105, -0.814515,
		-0.716684, 0.466081, 0.518780,
		0.651525, 0.712799, 0.259679,
		36.283051, 39.170326, 29.569590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.422726, 39.344730, 29.346798>,  <35.826984, 38.671368, 29.387814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.422726, 39.344730, 29.346798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.817562, 39.401253, 29.316664>,  <36.054466, 39.435165, 29.298584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.817562, 39.401253, 29.316664>,  <35.422726, 39.344730, 29.346798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.817562, 39.401253, 29.316664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148954, 0.637518, -0.755899,
		-0.058787, 0.757366, 0.650339,
		0.987095, 0.141308, -0.075334,
		36.113689, 39.443645, 29.294064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.573219, 40.018291, 29.270258>,  <35.422726, 39.344730, 29.346798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.573219, 40.018291, 29.270258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.906044, 39.852127, 29.123226>,  <36.105740, 39.752430, 29.035007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.906044, 39.852127, 29.123226>,  <35.573219, 40.018291, 29.270258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.906044, 39.852127, 29.123226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127163, 0.502177, -0.855364,
		0.539917, 0.758455, 0.365015,
		0.832057, -0.415409, -0.367581,
		36.155663, 39.727505, 29.012951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.736977, 40.466747, 28.849279>,  <35.573219, 40.018291, 29.270258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.736977, 40.466747, 28.849279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.941441, 40.160683, 28.692694>,  <36.064117, 39.977043, 28.598743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.941441, 40.160683, 28.692694>,  <35.736977, 40.466747, 28.849279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.941441, 40.160683, 28.692694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060213, 0.486221, -0.871759,
		0.857376, 0.422034, 0.294608,
		0.511156, -0.765164, -0.391463,
		36.094788, 39.931133, 28.575254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.168400, 40.828312, 28.422686>,  <35.736977, 40.466747, 28.849279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.168400, 40.828312, 28.422686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.170212, 40.454350, 28.280737>,  <36.171299, 40.229973, 28.195568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.170212, 40.454350, 28.280737>,  <36.168400, 40.828312, 28.422686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.170212, 40.454350, 28.280737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077583, 0.354135, -0.931971,
		0.996975, -0.023312, 0.074136,
		0.004528, -0.934904, -0.354873,
		36.171570, 40.173878, 28.174274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.665398, 40.821327, 27.835760>,  <36.168400, 40.828312, 28.422686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.665398, 40.821327, 27.835760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.443714, 40.489735, 27.805723>,  <36.310703, 40.290779, 27.787701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.443714, 40.489735, 27.805723>,  <36.665398, 40.821327, 27.835760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.443714, 40.489735, 27.805723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037881, 0.065002, -0.997166,
		0.831514, -0.555485, -0.004622,
		-0.554211, -0.828982, -0.075092,
		36.277451, 40.241039, 27.783195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.959873, 40.509583, 27.241447>,  <36.665398, 40.821327, 27.835760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.959873, 40.509583, 27.241447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.587246, 40.371235, 27.286251>,  <36.363670, 40.288227, 27.313133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.587246, 40.371235, 27.286251>,  <36.959873, 40.509583, 27.241447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.587246, 40.371235, 27.286251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162889, 0.121644, -0.979117,
		0.325025, -0.930363, -0.169659,
		-0.931572, -0.345873, 0.112008,
		36.307774, 40.267475, 27.319853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.954369, 39.979229, 26.859571>,  <36.959873, 40.509583, 27.241447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.954369, 39.979229, 26.859571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.573624, 40.096710, 26.894657>,  <36.345177, 40.167198, 26.915709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.573624, 40.096710, 26.894657>,  <36.954369, 39.979229, 26.859571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.573624, 40.096710, 26.894657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044929, 0.149379, -0.987759,
		-0.303214, -0.944152, -0.128993,
		-0.951863, 0.293707, 0.087714,
		36.288063, 40.184822, 26.920971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.587963, 39.636089, 26.431784>,  <36.954369, 39.979229, 26.859571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.587963, 39.636089, 26.431784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.334072, 39.938072, 26.497707>,  <36.181736, 40.119263, 26.537262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.334072, 39.938072, 26.497707>,  <36.587963, 39.636089, 26.431784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.334072, 39.938072, 26.497707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143828, 0.094130, -0.985116,
		-0.759230, -0.648987, 0.048836,
		-0.634731, 0.754954, 0.164809,
		36.143654, 40.164558, 26.547150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.983620, 39.505482, 25.945284>,  <36.587963, 39.636089, 26.431784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.983620, 39.505482, 25.945284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.970028, 39.894840, 26.035927>,  <35.961872, 40.128456, 26.090313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.970028, 39.894840, 26.035927>,  <35.983620, 39.505482, 25.945284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.970028, 39.894840, 26.035927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335443, 0.202478, -0.920044,
		-0.941448, -0.107275, 0.319638,
		-0.033978, 0.973394, 0.226607,
		35.959835, 40.186859, 26.103909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.497074, 39.817684, 25.466120>,  <35.983620, 39.505482, 25.945284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.497074, 39.817684, 25.466120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.621189, 40.167484, 25.615234>,  <35.695660, 40.377365, 25.704702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.621189, 40.167484, 25.615234>,  <35.497074, 39.817684, 25.466120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.621189, 40.167484, 25.615234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300562, 0.462272, -0.834246,
		-0.901877, 0.146813, 0.406280,
		0.310290, 0.874500, 0.372786,
		35.714275, 40.429832, 25.727070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.890556, 40.385799, 25.523716>,  <35.497074, 39.817684, 25.466120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.890556, 40.385799, 25.523716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.263168, 40.517658, 25.462275>,  <35.486736, 40.596771, 25.425409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.263168, 40.517658, 25.462275>,  <34.890556, 40.385799, 25.523716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.263168, 40.517658, 25.462275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267274, 0.334118, -0.903842,
		-0.246623, 0.883007, 0.399344,
		0.931527, 0.329642, -0.153604,
		35.542625, 40.616550, 25.416193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.795788, 40.996441, 25.203096>,  <34.890556, 40.385799, 25.523716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.795788, 40.996441, 25.203096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.191967, 40.963520, 25.158842>,  <35.429676, 40.943768, 25.132290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.191967, 40.963520, 25.158842>,  <34.795788, 40.996441, 25.203096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.191967, 40.963520, 25.158842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061469, 0.454677, -0.888533,
		0.123436, 0.886845, 0.445274,
		0.990447, -0.082306, -0.110637,
		35.489101, 40.938828, 25.125650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.138893, 41.642799, 24.996176>,  <34.795788, 40.996441, 25.203096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.138893, 41.642799, 24.996176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.429573, 41.388214, 24.892778>,  <35.603981, 41.235462, 24.830740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.429573, 41.388214, 24.892778>,  <35.138893, 41.642799, 24.996176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.429573, 41.388214, 24.892778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193167, 0.550437, -0.812223,
		0.659233, 0.540313, 0.522948,
		0.726704, -0.636460, -0.258496,
		35.647583, 41.197277, 24.815229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.628635, 42.042568, 24.733879>,  <35.138893, 41.642799, 24.996176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.628635, 42.042568, 24.733879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.741211, 41.694447, 24.572205>,  <35.808758, 41.485573, 24.475201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.741211, 41.694447, 24.572205>,  <35.628635, 42.042568, 24.733879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.741211, 41.694447, 24.572205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340366, 0.484364, -0.805942,
		0.897186, 0.089252, 0.432540,
		0.281439, -0.870302, -0.404186,
		35.825642, 41.433357, 24.450949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.311512, 42.163841, 24.421516>,  <35.628635, 42.042568, 24.733879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.311512, 42.163841, 24.421516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.161259, 41.825150, 24.270811>,  <36.071106, 41.621933, 24.180387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.161259, 41.825150, 24.270811>,  <36.311512, 42.163841, 24.421516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.161259, 41.825150, 24.270811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462651, 0.180928, -0.867882,
		0.803028, -0.500315, 0.323778,
		-0.375634, -0.846729, -0.376761,
		36.048569, 41.571133, 24.157784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.837933, 41.847130, 23.934105>,  <36.311512, 42.163841, 24.421516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.837933, 41.847130, 23.934105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.482082, 41.704346, 23.820154>,  <36.268574, 41.618675, 23.751783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.482082, 41.704346, 23.820154>,  <36.837933, 41.847130, 23.934105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.482082, 41.704346, 23.820154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267980, 0.097097, -0.958519,
		0.369811, -0.929061, 0.009278,
		-0.889622, -0.356958, -0.284877,
		36.215195, 41.597260, 23.734692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.029850, 41.472446, 23.451681>,  <36.837933, 41.847130, 23.934105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.029850, 41.472446, 23.451681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.636734, 41.450974, 23.380974>,  <36.400864, 41.438091, 23.338549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.636734, 41.450974, 23.380974>,  <37.029850, 41.472446, 23.451681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.636734, 41.450974, 23.380974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182719, -0.141336, -0.972953,
		0.027247, -0.988505, 0.148712,
		-0.982787, -0.053682, -0.176768,
		36.341896, 41.434868, 23.327944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.855751, 40.816021, 23.091560>,  <37.029850, 41.472446, 23.451681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.855751, 40.816021, 23.091560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.565121, 41.074444, 22.998013>,  <36.390743, 41.229500, 22.941883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.565121, 41.074444, 22.998013>,  <36.855751, 40.816021, 23.091560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.565121, 41.074444, 22.998013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271833, -0.042315, -0.961414,
		-0.631027, -0.762113, -0.144875,
		-0.726575, 0.646060, -0.233870,
		36.347149, 41.268261, 22.927851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.456333, 40.429253, 22.630999>,  <36.855751, 40.816021, 23.091560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.456333, 40.429253, 22.630999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.630264, 40.146957, 22.407267>,  <36.734623, 39.977581, 22.273027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.630264, 40.146957, 22.407267>,  <36.456333, 40.429253, 22.630999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.630264, 40.146957, 22.407267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174904, -0.675485, 0.716329,
		-0.883364, -0.213651, -0.417158,
		0.434829, -0.705743, -0.559331,
		36.760712, 39.935234, 22.239468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.940037, 39.903481, 22.460102>,  <36.456333, 40.429253, 22.630999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.940037, 39.903481, 22.460102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.305210, 39.740257, 22.462576>,  <36.524315, 39.642323, 22.464060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.305210, 39.740257, 22.462576>,  <35.940037, 39.903481, 22.460102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.305210, 39.740257, 22.462576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312245, -0.688651, 0.654418,
		-0.262783, -0.599371, -0.756108,
		0.912933, -0.408061, 0.006185,
		36.579090, 39.617840, 22.464432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.830990, 39.334908, 22.870779>,  <35.940037, 39.903481, 22.460102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.830990, 39.334908, 22.870779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.229340, 39.325325, 22.835783>,  <36.468349, 39.319576, 22.814785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.229340, 39.325325, 22.835783>,  <35.830990, 39.334908, 22.870779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.229340, 39.325325, 22.835783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036930, -0.773870, 0.632267,
		-0.082854, -0.632892, -0.769795,
		0.995877, -0.023958, -0.087491,
		36.528103, 39.318138, 22.809536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.059925, 38.659565, 22.939186>,  <35.830990, 39.334908, 22.870779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.059925, 38.659565, 22.939186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.395329, 38.862125, 23.019655>,  <36.596569, 38.983662, 23.067936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.395329, 38.862125, 23.019655>,  <36.059925, 38.659565, 22.939186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.395329, 38.862125, 23.019655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212815, -0.644221, 0.734636,
		0.501618, -0.573183, -0.647951,
		0.838504, 0.506400, 0.201171,
		36.646881, 39.014046, 23.080006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.602684, 38.152069, 22.918507>,  <36.059925, 38.659565, 22.939186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.602684, 38.152069, 22.918507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.722443, 38.470047, 23.129572>,  <36.794296, 38.660835, 23.256210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.722443, 38.470047, 23.129572>,  <36.602684, 38.152069, 22.918507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.722443, 38.470047, 23.129572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277473, -0.601669, 0.749001,
		0.912892, -0.077833, -0.400711,
		0.299393, 0.794944, 0.527662,
		36.812260, 38.708530, 23.287870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.289467, 37.985874, 23.247093>,  <36.602684, 38.152069, 22.918507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.289467, 37.985874, 23.247093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.093750, 38.270172, 23.449251>,  <36.976318, 38.440750, 23.570545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.093750, 38.270172, 23.449251>,  <37.289467, 37.985874, 23.247093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.093750, 38.270172, 23.449251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226516, -0.456045, 0.860647,
		0.842187, 0.535592, 0.062145,
		-0.489296, 0.710750, 0.505395,
		36.946960, 38.483398, 23.600870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.722549, 38.102943, 23.798952>,  <37.289467, 37.985874, 23.247093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.722549, 38.102943, 23.798952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.427898, 38.337532, 23.933672>,  <37.251106, 38.478283, 24.014503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.427898, 38.337532, 23.933672>,  <37.722549, 38.102943, 23.798952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.427898, 38.337532, 23.933672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215575, -0.268411, 0.938873,
		0.641019, 0.764207, 0.071292,
		-0.736629, 0.586467, 0.336800,
		37.206909, 38.513474, 24.034712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.985214, 38.457443, 24.466713>,  <37.722549, 38.102943, 23.798952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.985214, 38.457443, 24.466713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.585617, 38.473377, 24.474993>,  <37.345860, 38.482937, 24.479959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.585617, 38.473377, 24.474993>,  <37.985214, 38.457443, 24.466713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.585617, 38.473377, 24.474993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010679, -0.236954, 0.971462,
		0.043600, 0.970704, 0.236289,
		-0.998992, 0.039832, 0.020697,
		37.285919, 38.485329, 24.481201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.769962, 39.032635, 24.945904>,  <37.985214, 38.457443, 24.466713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.769962, 39.032635, 24.945904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.504086, 38.736473, 24.905924>,  <37.344559, 38.558777, 24.881935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.504086, 38.736473, 24.905924>,  <37.769962, 39.032635, 24.945904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.504086, 38.736473, 24.905924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132093, -0.248137, 0.959677,
		-0.735346, 0.624689, 0.262736,
		-0.664694, -0.740400, -0.099949,
		37.304676, 38.514355, 24.875938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.568493, 38.906021, 25.634699>,  <37.769962, 39.032635, 24.945904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.568493, 38.906021, 25.634699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.389473, 38.592117, 25.463192>,  <37.282059, 38.403774, 25.360289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.389473, 38.592117, 25.463192>,  <37.568493, 38.906021, 25.634699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.389473, 38.592117, 25.463192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012935, -0.485098, 0.874364,
		-0.894164, 0.385778, 0.227258,
		-0.447553, -0.784764, -0.428767,
		37.255207, 38.356689, 25.334562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.223503, 38.734940, 26.198402>,  <37.568493, 38.906021, 25.634699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.223503, 38.734940, 26.198402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.229748, 38.428047, 25.941931>,  <37.233494, 38.243912, 25.788048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.229748, 38.428047, 25.941931>,  <37.223503, 38.734940, 26.198402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.229748, 38.428047, 25.941931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170522, -0.629820, 0.757792,
		-0.985230, -0.121166, 0.120997,
		0.015612, -0.767232, -0.641179,
		37.234432, 38.197876, 25.749577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.714970, 38.219193, 26.393831>,  <37.223503, 38.734940, 26.198402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.714970, 38.219193, 26.393831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.018219, 38.036179, 26.207966>,  <37.200169, 37.926369, 26.096447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.018219, 38.036179, 26.207966>,  <36.714970, 38.219193, 26.393831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.018219, 38.036179, 26.207966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020754, -0.729118, 0.684073,
		-0.651778, -0.508970, -0.562259,
		0.758125, -0.457533, -0.464660,
		37.245655, 37.898918, 26.068567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.586765, 37.560432, 26.541487>,  <36.714970, 38.219193, 26.393831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.586765, 37.560432, 26.541487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.962223, 37.550587, 26.403889>,  <37.187500, 37.544678, 26.321329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.962223, 37.550587, 26.403889>,  <36.586765, 37.560432, 26.541487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.962223, 37.550587, 26.403889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251720, -0.632923, 0.732151,
		-0.235745, -0.773823, -0.587896,
		0.938649, -0.024616, -0.343996,
		37.243816, 37.543201, 26.300690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.846123, 36.857594, 26.640244>,  <36.586765, 37.560432, 26.541487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.846123, 36.857594, 26.640244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.175488, 37.083893, 26.622734>,  <37.373108, 37.219673, 26.612228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.175488, 37.083893, 26.622734>,  <36.846123, 36.857594, 26.640244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.175488, 37.083893, 26.622734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380490, -0.493255, 0.782257,
		0.420967, -0.660779, -0.621416,
		0.823416, 0.565747, -0.043776,
		37.422512, 37.253616, 26.609602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.330383, 36.411968, 26.648413>,  <36.846123, 36.857594, 26.640244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.330383, 36.411968, 26.648413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.484631, 36.753819, 26.787506>,  <37.577179, 36.958927, 26.870962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.484631, 36.753819, 26.787506>,  <37.330383, 36.411968, 26.648413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.484631, 36.753819, 26.787506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135946, -0.425397, 0.894738,
		0.912590, -0.297751, -0.280222,
		0.385615, 0.854624, 0.347735,
		37.600315, 37.010204, 26.891827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.906254, 36.221073, 27.027954>,  <37.330383, 36.411968, 26.648413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.906254, 36.221073, 27.027954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.842171, 36.593819, 27.158157>,  <37.803722, 36.817467, 27.236280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.842171, 36.593819, 27.158157>,  <37.906254, 36.221073, 27.027954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.842171, 36.593819, 27.158157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206871, -0.290748, 0.934168,
		0.965162, 0.217000, -0.146196,
		-0.160208, 0.931867, 0.325510,
		37.794109, 36.873379, 27.255810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.565971, 36.315479, 27.403444>,  <37.906254, 36.221073, 27.027954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.565971, 36.315479, 27.403444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.273224, 36.565304, 27.512468>,  <38.097576, 36.715199, 27.577883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.273224, 36.565304, 27.512468>,  <38.565971, 36.315479, 27.403444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.273224, 36.565304, 27.512468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117953, -0.277831, 0.953361,
		0.671158, 0.729886, 0.129668,
		-0.731871, 0.624561, 0.272560,
		38.053661, 36.752670, 27.594236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.842560, 36.702980, 28.034845>,  <38.565971, 36.315479, 27.403444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.842560, 36.702980, 28.034845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.445271, 36.749058, 28.028692>,  <38.206898, 36.776703, 28.025000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.445271, 36.749058, 28.028692>,  <38.842560, 36.702980, 28.034845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.445271, 36.749058, 28.028692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042238, -0.234501, 0.971198,
		0.108268, 0.965267, 0.237777,
		-0.993224, 0.115193, -0.015382,
		38.147305, 36.783615, 28.024078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.673927, 37.256718, 28.556473>,  <38.842560, 36.702980, 28.034845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.673927, 37.256718, 28.556473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.317562, 37.076763, 28.531580>,  <38.103745, 36.968792, 28.516644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.317562, 37.076763, 28.531580>,  <38.673927, 37.256718, 28.556473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.317562, 37.076763, 28.531580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112368, -0.351110, 0.929567,
		-0.440051, 0.821172, 0.363362,
		-0.890914, -0.449888, -0.062233,
		38.050289, 36.941795, 28.512911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.218822, 37.457947, 29.112295>,  <38.673927, 37.256718, 28.556473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.218822, 37.457947, 29.112295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.047794, 37.105457, 29.031677>,  <37.945175, 36.893963, 28.983307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.047794, 37.105457, 29.031677>,  <38.218822, 37.457947, 29.112295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.047794, 37.105457, 29.031677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016990, -0.215079, 0.976449,
		-0.903821, 0.420927, 0.076990,
		-0.427572, -0.881227, -0.201545,
		37.919521, 36.841087, 28.971214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.674316, 37.425919, 29.657850>,  <38.218822, 37.457947, 29.112295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.674316, 37.425919, 29.657850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.722092, 37.051731, 29.524799>,  <37.750755, 36.827221, 29.444969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.722092, 37.051731, 29.524799>,  <37.674316, 37.425919, 29.657850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.722092, 37.051731, 29.524799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009337, -0.333952, 0.942544,
		-0.992798, -0.115678, -0.031151,
		0.119435, -0.935465, -0.332627,
		37.757923, 36.771091, 29.425011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.149727, 37.032207, 29.923422>,  <37.674316, 37.425919, 29.657850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.149727, 37.032207, 29.923422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.411934, 36.753147, 29.807781>,  <37.569256, 36.585709, 29.738398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.411934, 36.753147, 29.807781>,  <37.149727, 37.032207, 29.923422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.411934, 36.753147, 29.807781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016315, -0.369652, 0.929027,
		-0.755006, -0.613708, -0.230930,
		0.655515, -0.697653, -0.289102,
		37.608589, 36.543850, 29.721050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.939201, 36.283550, 30.104813>,  <37.149727, 37.032207, 29.923422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.939201, 36.283550, 30.104813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.338200, 36.273548, 30.078323>,  <37.577599, 36.267548, 30.062429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.338200, 36.273548, 30.078323>,  <36.939201, 36.283550, 30.104813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.338200, 36.273548, 30.078323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056272, -0.287443, 0.956143,
		-0.042940, -0.957471, -0.285315,
		0.997492, -0.025001, -0.066222,
		37.637447, 36.266048, 30.058456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.126213, 35.690777, 30.357637>,  <36.939201, 36.283550, 30.104813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.126213, 35.690777, 30.357637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.482685, 35.870281, 30.384199>,  <37.696568, 35.977985, 30.400137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.482685, 35.870281, 30.384199>,  <37.126213, 35.690777, 30.357637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.482685, 35.870281, 30.384199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052472, -0.247368, 0.967500,
		0.450606, -0.858732, -0.243997,
		0.891180, 0.448764, 0.066406,
		37.750038, 36.004910, 30.404121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.477264, 35.235851, 30.721838>,  <37.126213, 35.690777, 30.357637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.477264, 35.235851, 30.721838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.684078, 35.578213, 30.725880>,  <37.808167, 35.783630, 30.728304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.684078, 35.578213, 30.725880>,  <37.477264, 35.235851, 30.721838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.684078, 35.578213, 30.725880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067485, -0.052526, 0.996337,
		0.853303, -0.514455, -0.084919,
		0.517031, 0.855907, 0.010103,
		37.839188, 35.834984, 30.728910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.207363, 34.963737, 30.862822>,  <37.477264, 35.235851, 30.721838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.207363, 34.963737, 30.862822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.106831, 35.336220, 30.968410>,  <38.046509, 35.559711, 31.031763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.106831, 35.336220, 30.968410>,  <38.207363, 34.963737, 30.862822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.106831, 35.336220, 30.968410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268026, -0.195101, 0.943450,
		0.930050, 0.307874, -0.200552,
		-0.251336, 0.931208, 0.263971,
		38.031429, 35.615582, 31.047602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.684738, 35.038246, 31.378130>,  <38.207363, 34.963737, 30.862822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.684738, 35.038246, 31.378130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.423927, 35.337303, 31.428543>,  <38.267441, 35.516739, 31.458792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.423927, 35.337303, 31.428543>,  <38.684738, 35.038246, 31.378130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.423927, 35.337303, 31.428543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204785, 0.013607, 0.978712,
		0.730016, 0.663958, -0.161979,
		-0.652028, 0.747646, 0.126035,
		38.228317, 35.561596, 31.466354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.089230, 35.561485, 31.818933>,  <38.684738, 35.038246, 31.378130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.089230, 35.561485, 31.818933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.694466, 35.619473, 31.847200>,  <38.457607, 35.654266, 31.864161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.694466, 35.619473, 31.847200>,  <39.089230, 35.561485, 31.818933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.694466, 35.619473, 31.847200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073826, 0.016518, 0.997134,
		0.143386, 0.989298, -0.027005,
		-0.986909, 0.144969, 0.070667,
		38.398392, 35.662964, 31.868401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.061623, 36.078964, 32.309666>,  <39.089230, 35.561485, 31.818933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.061623, 36.078964, 32.309666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.714130, 35.880859, 32.307987>,  <38.505634, 35.761997, 32.306980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.714130, 35.880859, 32.307987>,  <39.061623, 36.078964, 32.309666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.714130, 35.880859, 32.307987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096707, -0.177925, 0.979281,
		-0.485748, 0.850327, 0.202465,
		-0.868733, -0.495263, -0.004195,
		38.453510, 35.732281, 32.306728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.700962, 36.290924, 32.914913>,  <39.061623, 36.078964, 32.309666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.700962, 36.290924, 32.914913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.532764, 35.940590, 32.820175>,  <38.431847, 35.730389, 32.763332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.532764, 35.940590, 32.820175>,  <38.700962, 36.290924, 32.914913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.532764, 35.940590, 32.820175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042800, -0.241604, 0.969430,
		-0.906285, 0.417778, 0.064108,
		-0.420495, -0.875836, -0.236843,
		38.406616, 35.677837, 32.749123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.092010, 36.200417, 33.397484>,  <38.700962, 36.290924, 32.914913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.092010, 36.200417, 33.397484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.150742, 35.828987, 33.261135>,  <38.185982, 35.606129, 33.179325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.150742, 35.828987, 33.261135>,  <38.092010, 36.200417, 33.397484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.150742, 35.828987, 33.261135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320900, -0.370680, 0.871562,
		-0.935663, -0.018584, -0.352405,
		0.146827, -0.928575, -0.340868,
		38.194790, 35.550415, 33.158875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.505718, 35.813606, 33.607098>,  <38.092010, 36.200417, 33.397484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.505718, 35.813606, 33.607098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.773643, 35.525917, 33.533264>,  <37.934399, 35.353306, 33.488964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.773643, 35.525917, 33.533264>,  <37.505718, 35.813606, 33.607098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.773643, 35.525917, 33.533264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175341, -0.394766, 0.901895,
		-0.721529, -0.571736, -0.390529,
		0.669814, -0.719220, -0.184586,
		37.974586, 35.310150, 33.477890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.211433, 35.175930, 33.769955>,  <37.505718, 35.813606, 33.607098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.211433, 35.175930, 33.769955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.607658, 35.129768, 33.799519>,  <37.845394, 35.102074, 33.817257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.607658, 35.129768, 33.799519>,  <37.211433, 35.175930, 33.769955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.607658, 35.129768, 33.799519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115940, -0.418164, 0.900942,
		-0.073063, -0.901011, -0.427599,
		0.990565, -0.115401, 0.073911,
		37.904827, 35.095146, 33.821693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.312584, 34.451912, 33.915421>,  <37.211433, 35.175930, 33.769955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.312584, 34.451912, 33.915421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.658775, 34.608597, 34.040329>,  <37.866489, 34.702610, 34.115273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.658775, 34.608597, 34.040329>,  <37.312584, 34.451912, 33.915421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.658775, 34.608597, 34.040329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057991, -0.540824, 0.839134,
		0.497586, -0.744358, -0.445353,
		0.865474, 0.391715, 0.312272,
		37.918419, 34.726112, 34.134010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.727097, 33.906303, 34.316444>,  <37.312584, 34.451912, 33.915421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.727097, 33.906303, 34.316444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.880127, 34.255569, 34.437256>,  <37.971947, 34.465130, 34.509743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.880127, 34.255569, 34.437256>,  <37.727097, 33.906303, 34.316444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.880127, 34.255569, 34.437256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218004, -0.402983, 0.888864,
		0.897837, -0.274212, -0.344524,
		0.382575, 0.873163, 0.302033,
		37.994900, 34.517517, 34.527866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.238060, 33.726818, 34.806988>,  <37.727097, 33.906303, 34.316444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.238060, 33.726818, 34.806988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.216064, 34.115555, 34.898647>,  <38.202866, 34.348797, 34.953644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.216064, 34.115555, 34.898647>,  <38.238060, 33.726818, 34.806988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.216064, 34.115555, 34.898647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002528, -0.229627, 0.973276,
		0.998484, 0.052939, 0.015084,
		-0.054988, 0.971838, 0.229145,
		38.199570, 34.407104, 34.967392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.775211, 33.973148, 35.274269>,  <38.238060, 33.726818, 34.806988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.775211, 33.973148, 35.274269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.455791, 34.204319, 35.341572>,  <38.264137, 34.343021, 35.381954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.455791, 34.204319, 35.341572>,  <38.775211, 33.973148, 35.274269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.455791, 34.204319, 35.341572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033249, -0.236759, 0.970999,
		0.601006, 0.780989, 0.169849,
		-0.798553, 0.577929, 0.168260,
		38.216225, 34.377697, 35.392052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.998753, 34.457478, 35.788952>,  <38.775211, 33.973148, 35.274269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.998753, 34.457478, 35.788952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.599335, 34.478149, 35.782810>,  <38.359684, 34.490555, 35.779125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.599335, 34.478149, 35.782810>,  <38.998753, 34.457478, 35.788952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.599335, 34.478149, 35.782810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025369, -0.199098, 0.979651,
		0.047573, 0.978616, 0.200120,
		-0.998546, 0.051682, -0.015355,
		38.299770, 34.493652, 35.778202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.907562, 34.659264, 36.455734>,  <38.998753, 34.457478, 35.788952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.907562, 34.659264, 36.455734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.537052, 34.572971, 36.332142>,  <38.314747, 34.521198, 36.257984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.537052, 34.572971, 36.332142>,  <38.907562, 34.659264, 36.455734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.537052, 34.572971, 36.332142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219250, -0.358356, 0.907475,
		-0.306493, 0.908319, 0.284639,
		-0.926278, -0.215727, -0.308983,
		38.259171, 34.508255, 36.239449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.384609, 34.965096, 36.946590>,  <38.907562, 34.659264, 36.455734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.384609, 34.965096, 36.946590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.233234, 34.646347, 36.758217>,  <38.142410, 34.455097, 36.645195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.233234, 34.646347, 36.758217>,  <38.384609, 34.965096, 36.946590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.233234, 34.646347, 36.758217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202594, -0.425127, 0.882169,
		-0.903183, 0.429255, -0.000557,
		-0.378439, -0.796873, -0.470932,
		38.119701, 34.407284, 36.616936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.789337, 34.822548, 37.345093>,  <38.384609, 34.965096, 36.946590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.789337, 34.822548, 37.345093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.881557, 34.487343, 37.147270>,  <37.936890, 34.286221, 37.028576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.881557, 34.487343, 37.147270>,  <37.789337, 34.822548, 37.345093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.881557, 34.487343, 37.147270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137768, -0.531241, 0.835945,
		-0.963259, -0.124590, -0.237927,
		0.230547, -0.838010, -0.494558,
		37.950722, 34.235939, 36.998901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.184937, 34.234470, 37.375481>,  <37.789337, 34.822548, 37.345093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.184937, 34.234470, 37.375481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.540043, 34.058468, 37.321423>,  <37.753105, 33.952866, 37.288986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.540043, 34.058468, 37.321423>,  <37.184937, 34.234470, 37.375481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.540043, 34.058468, 37.321423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219622, -0.662945, 0.715731,
		-0.404520, -0.605721, -0.685175,
		0.887767, -0.440007, -0.135145,
		37.806374, 33.926464, 37.280880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.055515, 33.541302, 37.484272>,  <37.184937, 34.234470, 37.375481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.055515, 33.541302, 37.484272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.450066, 33.578171, 37.538784>,  <37.686794, 33.600292, 37.571491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.450066, 33.578171, 37.538784>,  <37.055515, 33.541302, 37.484272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.450066, 33.578171, 37.538784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050719, -0.617635, 0.784827,
		0.156506, -0.781045, -0.604545,
		0.986374, 0.092169, 0.136278,
		37.745979, 33.605820, 37.579666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.186077, 32.871571, 37.737228>,  <37.055515, 33.541302, 37.484272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.186077, 32.871571, 37.737228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.490982, 33.115234, 37.824764>,  <37.673923, 33.261433, 37.877285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.490982, 33.115234, 37.824764>,  <37.186077, 32.871571, 37.737228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.490982, 33.115234, 37.824764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180559, -0.524784, 0.831865,
		0.621578, -0.594584, -0.510010,
		0.762259, 0.609156, 0.218837,
		37.719658, 33.297981, 37.890415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.771435, 32.361935, 37.772892>,  <37.186077, 32.871571, 37.737228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.771435, 32.361935, 37.772892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.873070, 32.688507, 37.980309>,  <37.934052, 32.884449, 38.104759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.873070, 32.688507, 37.980309>,  <37.771435, 32.361935, 37.772892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.873070, 32.688507, 37.980309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357168, -0.577446, 0.734157,
		0.898816, -0.001333, -0.438323,
		0.254087, 0.816427, 0.518542,
		37.949295, 32.933434, 38.135872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.523144, 32.348526, 37.780903>,  <37.771435, 32.361935, 37.772892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.523144, 32.348526, 37.780903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.367126, 32.546032, 38.091789>,  <38.273518, 32.664536, 38.278320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.367126, 32.546032, 38.091789>,  <38.523144, 32.348526, 37.780903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.367126, 32.546032, 38.091789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282284, -0.739306, 0.611345,
		0.876459, 0.457847, 0.148981,
		-0.390045, 0.493764, 0.777214,
		38.250114, 32.694160, 38.324955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.050964, 32.214394, 38.331982>,  <38.523144, 32.348526, 37.780903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.050964, 32.214394, 38.331982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.750538, 32.403233, 38.516602>,  <38.570282, 32.516537, 38.627373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.750538, 32.403233, 38.516602>,  <39.050964, 32.214394, 38.331982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.750538, 32.403233, 38.516602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192876, -0.511694, 0.837238,
		0.631429, 0.717842, 0.293259,
		-0.751064, 0.472094, 0.461553,
		38.525219, 32.544861, 38.655067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.126877, 32.092552, 39.077293>,  <39.050964, 32.214394, 38.331982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.126877, 32.092552, 39.077293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.759136, 32.246117, 39.111702>,  <38.538490, 32.338253, 39.132347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.759136, 32.246117, 39.111702>,  <39.126877, 32.092552, 39.077293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.759136, 32.246117, 39.111702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075790, -0.387369, 0.918804,
		0.386059, 0.838188, 0.385227,
		-0.919355, 0.383909, 0.086021,
		38.483330, 32.361290, 39.137508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.001915, 32.573818, 39.544708>,  <39.126877, 32.092552, 39.077293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.001915, 32.573818, 39.544708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.625431, 32.443653, 39.508408>,  <38.399540, 32.365555, 39.486626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.625431, 32.443653, 39.508408>,  <39.001915, 32.573818, 39.544708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.625431, 32.443653, 39.508408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012096, -0.300926, 0.953571,
		-0.337612, 0.896410, 0.287170,
		-0.941208, -0.325411, -0.090753,
		38.343067, 32.346031, 39.481182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.521114, 32.890347, 40.061615>,  <39.001915, 32.573818, 39.544708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.521114, 32.890347, 40.061615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.354370, 32.552181, 39.928047>,  <38.254322, 32.349281, 39.847908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.354370, 32.552181, 39.928047>,  <38.521114, 32.890347, 40.061615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.354370, 32.552181, 39.928047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057566, -0.342065, 0.937911,
		-0.907146, 0.410200, 0.093927,
		-0.416860, -0.845415, -0.333917,
		38.229313, 32.298557, 39.827873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.926247, 32.863907, 40.416759>,  <38.521114, 32.890347, 40.061615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.926247, 32.863907, 40.416759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.056969, 32.500362, 40.313087>,  <38.135403, 32.282238, 40.250885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.056969, 32.500362, 40.313087>,  <37.926247, 32.863907, 40.416759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.056969, 32.500362, 40.313087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186855, -0.206685, 0.960399,
		-0.926436, -0.362293, 0.102279,
		0.326806, -0.908859, -0.259177,
		38.155010, 32.227703, 40.235336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.508499, 32.516705, 40.818565>,  <37.926247, 32.863907, 40.416759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.508499, 32.516705, 40.818565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.842308, 32.310162, 40.741684>,  <38.042595, 32.186237, 40.695557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.842308, 32.310162, 40.741684>,  <37.508499, 32.516705, 40.818565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.842308, 32.310162, 40.741684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107721, -0.189196, 0.976013,
		-0.540337, -0.835211, -0.102266,
		0.834525, -0.516359, -0.192199,
		38.092667, 32.155254, 40.684025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.444996, 31.843382, 41.101036>,  <37.508499, 32.516705, 40.818565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.444996, 31.843382, 41.101036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.837025, 31.916445, 41.069824>,  <38.072243, 31.960281, 41.051098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.837025, 31.916445, 41.069824>,  <37.444996, 31.843382, 41.101036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.837025, 31.916445, 41.069824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088243, -0.048462, 0.994919,
		0.177948, -0.981982, -0.063615,
		0.980075, 0.182657, -0.078030,
		38.131046, 31.971241, 41.046413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.815273, 31.411448, 41.696911>,  <37.444996, 31.843382, 41.101036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.815273, 31.411448, 41.696911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.052162, 31.709307, 41.573772>,  <38.194298, 31.888023, 41.499889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.052162, 31.709307, 41.573772>,  <37.815273, 31.411448, 41.696911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.052162, 31.709307, 41.573772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125715, 0.291979, 0.948126,
		0.795906, -0.600204, 0.079303,
		0.592224, 0.744650, -0.307843,
		38.229828, 31.932701, 41.481419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.428410, 31.333195, 42.070610>,  <37.815273, 31.411448, 41.696911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.428410, 31.333195, 42.070610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.446018, 31.712877, 41.945984>,  <38.456581, 31.940687, 41.871208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.446018, 31.712877, 41.945984>,  <38.428410, 31.333195, 42.070610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.446018, 31.712877, 41.945984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252209, 0.291208, 0.922816,
		0.966671, -0.119200, -0.226580,
		0.044017, 0.949204, -0.311566,
		38.459225, 31.997639, 41.852512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.979736, 31.575079, 42.383839>,  <38.428410, 31.333195, 42.070610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.979736, 31.575079, 42.383839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.803806, 31.916218, 42.271267>,  <38.698246, 32.120903, 42.203724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.803806, 31.916218, 42.271267>,  <38.979736, 31.575079, 42.383839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.803806, 31.916218, 42.271267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138585, 0.374066, 0.916989,
		0.887325, 0.364316, -0.282717,
		-0.439829, 0.852847, -0.281429,
		38.671856, 32.172073, 42.186840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.444260, 32.120693, 42.616306>,  <38.979736, 31.575079, 42.383839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.444260, 32.120693, 42.616306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.071259, 32.250114, 42.552113>,  <38.847458, 32.327766, 42.513596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.071259, 32.250114, 42.552113>,  <39.444260, 32.120693, 42.616306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.071259, 32.250114, 42.552113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061758, 0.294973, 0.953508,
		0.355848, 0.899058, -0.255081,
		-0.932501, 0.323550, -0.160489,
		38.791508, 32.347179, 42.503967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.405270, 32.840771, 42.801411>,  <39.444260, 32.120693, 42.616306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.405270, 32.840771, 42.801411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.038837, 32.682491, 42.827427>,  <38.818977, 32.587524, 42.843037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.038837, 32.682491, 42.827427>,  <39.405270, 32.840771, 42.801411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.038837, 32.682491, 42.827427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103222, 0.389415, 0.915260,
		-0.387492, 0.831734, -0.397578,
		-0.916076, -0.395694, 0.065042,
		38.764015, 32.563782, 42.846939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.080322, 33.225071, 43.259037>,  <39.405270, 32.840771, 42.801411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.080322, 33.225071, 43.259037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.819370, 32.921932, 43.255642>,  <38.662800, 32.740047, 43.253605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.819370, 32.921932, 43.255642>,  <39.080322, 33.225071, 43.259037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.819370, 32.921932, 43.255642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160590, 0.127281, 0.978780,
		-0.740687, 0.639895, -0.204738,
		-0.652375, -0.757848, -0.008486,
		38.623657, 32.694576, 43.253098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.503666, 33.430641, 43.609535>,  <39.080322, 33.225071, 43.259037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.503666, 33.430641, 43.609535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.532253, 33.032494, 43.635250>,  <38.549404, 32.793606, 43.650677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.532253, 33.032494, 43.635250>,  <38.503666, 33.430641, 43.609535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.532253, 33.032494, 43.635250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015882, 0.063305, 0.997868,
		-0.997316, -0.072338, -0.011284,
		0.071469, -0.995369, 0.064284,
		38.553696, 32.733883, 43.654537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.966347, 33.142731, 44.162464>,  <38.503666, 33.430641, 43.609535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.966347, 33.142731, 44.162464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.274048, 32.894032, 44.103573>,  <38.458668, 32.744812, 44.068237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.274048, 32.894032, 44.103573>,  <37.966347, 33.142731, 44.162464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.274048, 32.894032, 44.103573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153961, -0.043269, 0.987129,
		-0.620117, -0.782020, 0.062440,
		0.769253, -0.621749, -0.147232,
		38.504826, 32.707508, 44.059402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.822830, 32.543724, 44.628670>,  <37.966347, 33.142731, 44.162464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.822830, 32.543724, 44.628670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.210987, 32.609848, 44.558224>,  <38.443882, 32.649521, 44.515957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.210987, 32.609848, 44.558224>,  <37.822830, 32.543724, 44.628670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.210987, 32.609848, 44.558224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172101, 0.038428, 0.984330,
		0.169489, -0.985493, 0.008840,
		0.970389, 0.165311, -0.176117,
		38.502106, 32.659439, 44.505390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.378887, 32.001099, 44.672417>,  <37.822830, 32.543724, 44.628670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.378887, 32.001099, 44.672417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.603611, 32.313095, 44.782684>,  <38.738445, 32.500294, 44.848843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.603611, 32.313095, 44.782684>,  <38.378887, 32.001099, 44.672417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.603611, 32.313095, 44.782684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162109, -0.430563, 0.887883,
		0.811231, -0.454129, -0.368336,
		0.561805, 0.779989, 0.275667,
		38.772152, 32.547092, 44.865383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.049755, 31.849604, 44.887802>,  <38.378887, 32.001099, 44.672417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.049755, 31.849604, 44.887802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.942127, 32.152485, 45.125877>,  <38.877548, 32.334213, 45.268723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.942127, 32.152485, 45.125877>,  <39.049755, 31.849604, 44.887802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.942127, 32.152485, 45.125877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149540, -0.643328, 0.750844,
		0.951440, 0.113028, 0.286335,
		-0.269073, 0.757201, 0.595186,
		38.861404, 32.379646, 45.304432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.944355, 31.903986, 44.159348>,  <39.049755, 31.849604, 44.887802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.944355, 31.903986, 44.159348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.637505, 32.159302, 44.133739>,  <38.453392, 32.312492, 44.118374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.637505, 32.159302, 44.133739>,  <38.944355, 31.903986, 44.159348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.637505, 32.159302, 44.133739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114498, 0.038038, -0.992695,
		-0.631193, -0.768855, -0.102263,
		-0.767128, 0.638291, -0.064023,
		38.407368, 32.350788, 44.114532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.438667, 31.511110, 43.785873>,  <38.944355, 31.903986, 44.159348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.438667, 31.511110, 43.785873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.371487, 31.904356, 43.756824>,  <38.331177, 32.140305, 43.739395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.371487, 31.904356, 43.756824>,  <38.438667, 31.511110, 43.785873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.371487, 31.904356, 43.756824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032405, -0.079139, -0.996337,
		-0.985262, -0.164985, 0.045150,
		-0.167954, 0.983116, -0.072626,
		38.321102, 32.199291, 43.735035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.784393, 31.703560, 43.349087>,  <38.438667, 31.511110, 43.785873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.784393, 31.703560, 43.349087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.015388, 32.029682, 43.332195>,  <38.153984, 32.225357, 43.322060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.015388, 32.029682, 43.332195>,  <37.784393, 31.703560, 43.349087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.015388, 32.029682, 43.332195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042140, -0.021884, -0.998872,
		-0.815312, 0.578614, 0.021720,
		0.577486, 0.815308, -0.042225,
		38.188633, 32.274273, 43.319527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.423435, 32.260189, 42.942860>,  <37.784393, 31.703560, 43.349087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.423435, 32.260189, 42.942860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.817722, 32.323265, 42.919182>,  <38.054295, 32.361111, 42.904976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.817722, 32.323265, 42.919182>,  <37.423435, 32.260189, 42.942860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.817722, 32.323265, 42.919182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074981, 0.096142, -0.992539,
		-0.150820, 0.982798, 0.106592,
		0.985713, 0.157687, -0.059191,
		38.113438, 32.370571, 42.901424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.493965, 32.728569, 42.436623>,  <37.423435, 32.260189, 42.942860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.493965, 32.728569, 42.436623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.874405, 32.605247, 42.444248>,  <38.102669, 32.531254, 42.448822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.874405, 32.605247, 42.444248>,  <37.493965, 32.728569, 42.436623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.874405, 32.605247, 42.444248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016844, -0.009852, -0.999810,
		0.308437, 0.951235, -0.004177,
		0.951096, -0.308308, 0.019061,
		38.159733, 32.512756, 42.449966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.955952, 33.287868, 42.059055>,  <37.493965, 32.728569, 42.436623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.955952, 33.287868, 42.059055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.126602, 32.926594, 42.078018>,  <38.228992, 32.709831, 42.089397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.126602, 32.926594, 42.078018>,  <37.955952, 33.287868, 42.059055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.126602, 32.926594, 42.078018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041297, -0.032907, -0.998605,
		0.903485, 0.427988, 0.023260,
		0.426626, -0.903185, 0.047406,
		38.254589, 32.655640, 42.092239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.378929, 33.229500, 41.420979>,  <37.955952, 33.287868, 42.059055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.378929, 33.229500, 41.420979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.416321, 32.856129, 41.559528>,  <38.438755, 32.632107, 41.642658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.416321, 32.856129, 41.559528>,  <38.378929, 33.229500, 41.420979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.416321, 32.856129, 41.559528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002673, -0.347659, -0.937617,
		0.995618, 0.088572, -0.030003,
		0.093477, -0.933428, 0.346372,
		38.444363, 32.576099, 41.663441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.969326, 32.950985, 41.239731>,  <38.378929, 33.229500, 41.420979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.969326, 32.950985, 41.239731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.734867, 32.632744, 41.300968>,  <38.594193, 32.441799, 41.337711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.734867, 32.632744, 41.300968>,  <38.969326, 32.950985, 41.239731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.734867, 32.632744, 41.300968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207252, -0.329907, -0.920982,
		0.783246, -0.508106, 0.358266,
		-0.586151, -0.795607, 0.153093,
		38.559021, 32.394062, 41.346897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.071362, 32.335854, 40.876057>,  <38.969326, 32.950985, 41.239731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.071362, 32.335854, 40.876057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.678051, 32.340603, 40.948761>,  <38.442066, 32.343452, 40.992382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.678051, 32.340603, 40.948761>,  <39.071362, 32.335854, 40.876057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.678051, 32.340603, 40.948761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181577, -0.142635, -0.972977,
		0.014368, -0.989704, 0.142406,
		-0.983272, 0.011878, 0.181757,
		38.383068, 32.344166, 41.003288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.413029, 31.721645, 40.876011>,  <39.071362, 32.335854, 40.876057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.413029, 31.721645, 40.876011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.029064, 31.818733, 40.932083>,  <38.798683, 31.876986, 40.965725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.029064, 31.818733, 40.932083>,  <39.413029, 31.721645, 40.876011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.029064, 31.818733, 40.932083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219969, -0.342380, -0.913450,
		-0.173717, -0.907669, 0.382046,
		-0.959915, 0.242720, 0.140182,
		38.741089, 31.891550, 40.974136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.119919, 31.262888, 40.496502>,  <39.413029, 31.721645, 40.876011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.119919, 31.262888, 40.496502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.810181, 31.512352, 40.539288>,  <38.624340, 31.662029, 40.564960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.810181, 31.512352, 40.539288>,  <39.119919, 31.262888, 40.496502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.810181, 31.512352, 40.539288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206318, -0.089038, -0.974426,
		-0.598185, -0.776609, 0.197618,
		-0.774343, 0.623659, 0.106967,
		38.577877, 31.699450, 40.571377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.614456, 31.099512, 39.906429>,  <39.119919, 31.262888, 40.496502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.614456, 31.099512, 39.906429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.466270, 31.453245, 40.020073>,  <38.377361, 31.665485, 40.088257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.466270, 31.453245, 40.020073>,  <38.614456, 31.099512, 39.906429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.466270, 31.453245, 40.020073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449236, 0.097131, -0.888118,
		-0.812986, -0.456644, 0.361290,
		-0.370461, 0.884331, 0.284107,
		38.355133, 31.718544, 40.105305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.879372, 31.145128, 39.616482>,  <38.614456, 31.099512, 39.906429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.879372, 31.145128, 39.616482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.026455, 31.510489, 39.686325>,  <38.114704, 31.729704, 39.728230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.026455, 31.510489, 39.686325>,  <37.879372, 31.145128, 39.616482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.026455, 31.510489, 39.686325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478097, 0.346731, -0.806970,
		-0.797629, 0.213251, 0.564191,
		0.367710, 0.913401, 0.174608,
		38.136768, 31.784510, 39.738708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.330933, 31.681101, 39.348503>,  <37.879372, 31.145128, 39.616482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.330933, 31.681101, 39.348503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.663044, 31.889296, 39.428238>,  <37.862309, 32.014214, 39.476078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.663044, 31.889296, 39.428238>,  <37.330933, 31.681101, 39.348503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.663044, 31.889296, 39.428238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115585, 0.510672, -0.851971,
		-0.545237, 0.684330, 0.484159,
		0.830275, 0.520487, 0.199339,
		37.912128, 32.045441, 39.488041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.296791, 32.255718, 38.942318>,  <37.330933, 31.681101, 39.348503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.296791, 32.255718, 38.942318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.674843, 32.325844, 39.052586>,  <37.901676, 32.367920, 39.118744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.674843, 32.325844, 39.052586>,  <37.296791, 32.255718, 38.942318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.674843, 32.325844, 39.052586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083242, 0.686731, -0.722130,
		-0.315909, 0.705454, 0.634457,
		0.945131, 0.175314, 0.275667,
		37.958382, 32.378437, 39.135284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.360435, 32.995956, 39.248138>,  <37.296791, 32.255718, 38.942318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.360435, 32.995956, 39.248138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.691250, 32.861851, 39.067646>,  <37.889740, 32.781387, 38.959351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.691250, 32.861851, 39.067646>,  <37.360435, 32.995956, 39.248138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.691250, 32.861851, 39.067646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068064, 0.856507, -0.511628,
		0.558010, 0.392423, 0.731183,
		0.827038, -0.335261, -0.451230,
		37.939362, 32.761272, 38.932278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.742908, 33.584419, 39.254288>,  <37.360435, 32.995956, 39.248138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.742908, 33.584419, 39.254288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.888420, 33.329136, 38.982891>,  <37.975727, 33.175964, 38.820053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.888420, 33.329136, 38.982891>,  <37.742908, 33.584419, 39.254288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.888420, 33.329136, 38.982891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110867, 0.752890, -0.648742,
		0.924863, 0.160777, 0.344643,
		0.363781, -0.638207, -0.678495,
		37.997555, 33.137672, 38.779343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.364597, 33.834942, 38.950588>,  <37.742908, 33.584419, 39.254288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.364597, 33.834942, 38.950588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.257252, 33.569633, 38.671143>,  <38.192844, 33.410450, 38.503475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.257252, 33.569633, 38.671143>,  <38.364597, 33.834942, 38.950588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.257252, 33.569633, 38.671143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241718, 0.655647, -0.715332,
		0.932498, -0.360836, -0.015628,
		-0.268364, -0.663268, -0.698610,
		38.176743, 33.370651, 38.461559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.930740, 33.713737, 38.404472>,  <38.364597, 33.834942, 38.950588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.930740, 33.713737, 38.404472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.574516, 33.630901, 38.242474>,  <38.360783, 33.581200, 38.145275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.574516, 33.630901, 38.242474>,  <38.930740, 33.713737, 38.404472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.574516, 33.630901, 38.242474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238698, 0.545152, -0.803637,
		0.387212, -0.812356, -0.436056,
		-0.890556, -0.207092, -0.404997,
		38.307350, 33.568775, 38.120975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.019333, 33.498493, 37.691536>,  <38.930740, 33.713737, 38.404472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.019333, 33.498493, 37.691536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.624870, 33.563530, 37.678535>,  <38.388191, 33.602551, 37.670734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.624870, 33.563530, 37.678535>,  <39.019333, 33.498493, 37.691536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.624870, 33.563530, 37.678535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067801, 0.216538, -0.973917,
		-0.151313, -0.962640, -0.224564,
		-0.986158, 0.162592, -0.032503,
		38.329021, 33.612309, 37.668785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.799629, 33.189152, 37.008511>,  <39.019333, 33.498493, 37.691536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.799629, 33.189152, 37.008511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.502712, 33.442127, 37.097080>,  <38.324562, 33.593914, 37.150223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.502712, 33.442127, 37.097080>,  <38.799629, 33.189152, 37.008511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.502712, 33.442127, 37.097080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086672, 0.237045, -0.967625,
		-0.664451, -0.737448, -0.121141,
		-0.742289, 0.632439, 0.221421,
		38.280025, 33.631859, 37.163506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.461288, 33.216625, 36.337666>,  <38.799629, 33.189152, 37.008511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.461288, 33.216625, 36.337666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.311218, 33.518536, 36.552910>,  <38.221176, 33.699680, 36.682056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.311218, 33.518536, 36.552910>,  <38.461288, 33.216625, 36.337666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.311218, 33.518536, 36.552910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034029, 0.568908, -0.821697,
		-0.926328, -0.326593, -0.187757,
		-0.375177, 0.754772, 0.538110,
		38.198666, 33.744968, 36.714344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.162071, 32.861332, 36.344120>,  <38.461288, 33.216625, 36.337666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.162071, 32.861332, 36.344120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.542812, 32.760307, 36.274616>,  <39.771255, 32.699692, 36.232914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.542812, 32.760307, 36.274616>,  <39.162071, 32.861332, 36.344120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.542812, 32.760307, 36.274616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177743, 0.916471, -0.358452,
		0.249776, 0.310308, 0.917235,
		0.951851, -0.252565, -0.173757,
		39.828369, 32.684540, 36.222488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.604435, 33.490181, 36.526447>,  <39.162071, 32.861332, 36.344120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.604435, 33.490181, 36.526447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.844925, 33.264648, 36.299953>,  <39.989220, 33.129330, 36.164059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.844925, 33.264648, 36.299953>,  <39.604435, 33.490181, 36.526447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.844925, 33.264648, 36.299953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293994, 0.814985, -0.499367,
		0.743031, 0.133763, 0.655754,
		0.601226, -0.563833, -0.566233,
		40.025291, 33.095497, 36.130085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.289391, 33.725948, 36.502369>,  <39.604435, 33.490181, 36.526447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.289391, 33.725948, 36.502369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.212929, 33.534458, 36.159607>,  <40.167053, 33.419563, 35.953949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.212929, 33.534458, 36.159607>,  <40.289391, 33.725948, 36.502369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.212929, 33.534458, 36.159607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510930, 0.696881, -0.503296,
		0.838100, -0.534024, 0.111383,
		-0.191152, -0.478722, -0.856905,
		40.155582, 33.390842, 35.902534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.692863, 33.988907, 36.067410>,  <40.289391, 33.725948, 36.502369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.692863, 33.988907, 36.067410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.486691, 33.807701, 35.776451>,  <40.362988, 33.698978, 35.601875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.486691, 33.807701, 35.776451>,  <40.692863, 33.988907, 36.067410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.486691, 33.807701, 35.776451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555529, 0.469660, -0.686154,
		0.652466, -0.757757, 0.009584,
		-0.515437, -0.453016, -0.727393,
		40.332058, 33.671795, 35.558231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.170010, 33.737072, 35.573967>,  <40.692863, 33.988907, 36.067410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.170010, 33.737072, 35.573967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.844906, 33.806000, 35.351353>,  <40.649845, 33.847355, 35.217785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.844906, 33.806000, 35.351353>,  <41.170010, 33.737072, 35.573967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.844906, 33.806000, 35.351353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552463, 0.531214, -0.642337,
		0.184955, -0.829529, -0.526946,
		-0.812759, 0.172315, -0.556535,
		40.601078, 33.857693, 35.184391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.371365, 33.564892, 34.846859>,  <41.170010, 33.737072, 35.573967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.371365, 33.564892, 34.846859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.095848, 33.853481, 34.875233>,  <40.930538, 34.026634, 34.892258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.095848, 33.853481, 34.875233>,  <41.371365, 33.564892, 34.846859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.095848, 33.853481, 34.875233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560480, 0.592029, -0.579106,
		-0.459808, -0.359127, -0.812160,
		-0.688795, 0.721477, 0.070937,
		40.889210, 34.069923, 34.896515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.831623, 33.525970, 34.277168>,  <41.371365, 33.564892, 34.846859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.831623, 33.525970, 34.277168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.073536, 33.431568, 34.581417>,  <42.218681, 33.374928, 34.763966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.073536, 33.431568, 34.581417>,  <41.831623, 33.525970, 34.277168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.073536, 33.431568, 34.581417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795738, 0.217838, -0.565108,
		-0.032322, 0.947020, 0.319544,
		0.604778, -0.236008, 0.760621,
		42.254971, 33.360767, 34.809605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.302311, 34.039600, 34.495541>,  <41.831623, 33.525970, 34.277168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.302311, 34.039600, 34.495541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.477615, 33.694176, 34.595291>,  <42.582798, 33.486919, 34.655140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.477615, 33.694176, 34.595291>,  <42.302311, 34.039600, 34.495541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.477615, 33.694176, 34.595291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776813, 0.224315, -0.588425,
		0.452203, 0.451600, 0.769136,
		0.438262, -0.863562, 0.249373,
		42.609093, 33.435108, 34.670101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.898647, 34.319675, 34.730419>,  <42.302311, 34.039600, 34.495541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.898647, 34.319675, 34.730419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.974316, 33.942230, 34.621750>,  <43.019718, 33.715763, 34.556549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.974316, 33.942230, 34.621750>,  <42.898647, 34.319675, 34.730419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.974316, 33.942230, 34.621750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858069, 0.293373, -0.421485,
		0.477422, -0.153384, 0.865183,
		0.189173, -0.943613, -0.271677,
		43.031067, 33.659145, 34.540245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.472260, 34.066326, 35.051662>,  <42.898647, 34.319675, 34.730419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.472260, 34.066326, 35.051662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.403835, 33.902027, 34.693439>,  <43.362782, 33.803448, 34.478504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.403835, 33.902027, 34.693439>,  <43.472260, 34.066326, 35.051662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.403835, 33.902027, 34.693439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921670, 0.254551, -0.292796,
		0.348231, -0.875493, 0.335034,
		-0.171057, -0.410752, -0.895557,
		43.352520, 33.778801, 34.424774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.980423, 33.630726, 34.764797>,  <43.472260, 34.066326, 35.051662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.980423, 33.630726, 34.764797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.841354, 33.789715, 34.425117>,  <43.757912, 33.885109, 34.221310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.841354, 33.789715, 34.425117>,  <43.980423, 33.630726, 34.764797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.841354, 33.789715, 34.425117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907699, 0.369641, -0.198613,
		0.234956, -0.839870, -0.489299,
		-0.347674, 0.397471, -0.849199,
		43.737053, 33.908955, 34.170357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.416153, 33.385120, 34.223648>,  <43.980423, 33.630726, 34.764797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.416153, 33.385120, 34.223648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.258183, 33.728611, 34.093040>,  <44.163399, 33.934708, 34.014675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.258183, 33.728611, 34.093040>,  <44.416153, 33.385120, 34.223648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.258183, 33.728611, 34.093040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892637, 0.442740, 0.084731,
		0.217324, -0.258001, -0.941385,
		-0.394928, 0.858729, -0.326520,
		44.139706, 33.986229, 33.995083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.798565, 33.573891, 33.683002>,  <44.416153, 33.385120, 34.223648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.798565, 33.573891, 33.683002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.664574, 33.874023, 33.910961>,  <44.584179, 34.054104, 34.047737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.664574, 33.874023, 33.910961>,  <44.798565, 33.573891, 33.683002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.664574, 33.874023, 33.910961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941710, 0.286595, 0.176197,
		-0.031124, 0.595704, -0.802601,
		-0.334982, 0.750334, 0.569900,
		44.564079, 34.099125, 34.081932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.310204, 33.981010, 33.757133>,  <44.798565, 33.573891, 33.683002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.310204, 33.981010, 33.757133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.104664, 34.139378, 34.061558>,  <44.981342, 34.234398, 34.244213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.104664, 34.139378, 34.061558>,  <45.310204, 33.981010, 33.757133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.104664, 34.139378, 34.061558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857629, 0.258654, 0.444490,
		-0.020868, 0.881105, -0.472460,
		-0.513846, 0.395920, 0.761058,
		44.950512, 34.258152, 34.289875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.425514, 34.679596, 33.864376>,  <45.310204, 33.981010, 33.757133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.425514, 34.679596, 33.864376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.343147, 34.476952, 34.199265>,  <45.293728, 34.355366, 34.400200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.343147, 34.476952, 34.199265>,  <45.425514, 34.679596, 33.864376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.343147, 34.476952, 34.199265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958260, 0.069016, 0.277443,
		-0.198337, 0.859408, 0.471253,
		-0.205913, -0.506610, 0.837225,
		45.281372, 34.324970, 34.450432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.635258, 35.085514, 34.445427>,  <45.425514, 34.679596, 33.864376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.635258, 35.085514, 34.445427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.633736, 34.701485, 34.557312>,  <45.632820, 34.471066, 34.624443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.633736, 34.701485, 34.557312>,  <45.635258, 35.085514, 34.445427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.633736, 34.701485, 34.557312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929629, 0.099671, 0.354762,
		-0.368478, 0.261379, 0.892135,
		-0.003807, -0.960076, 0.279712,
		45.632595, 34.413464, 34.641224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.826523, 34.982716, 35.174534>,  <45.635258, 35.085514, 34.445427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.826523, 34.982716, 35.174534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.901405, 34.617481, 35.029629>,  <45.946335, 34.398342, 34.942684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.901405, 34.617481, 35.029629>,  <45.826523, 34.982716, 35.174534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.901405, 34.617481, 35.029629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911807, 0.024320, 0.409897,
		-0.365459, -0.407050, 0.837108,
		0.187207, -0.913082, -0.362263,
		45.957569, 34.343555, 34.920948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.163361, 34.490967, 35.583935>,  <45.826523, 34.982716, 35.174534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.163361, 34.490967, 35.583935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.276676, 34.424671, 35.206093>,  <46.344666, 34.384895, 34.979389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.276676, 34.424671, 35.206093>,  <46.163361, 34.490967, 35.583935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.276676, 34.424671, 35.206093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945798, 0.211358, 0.246564,
		0.158784, -0.963254, 0.216630,
		0.283290, -0.165738, -0.944605,
		46.361664, 34.374950, 34.922710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.849052, 34.333660, 35.722187>,  <46.163361, 34.490967, 35.583935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.849052, 34.333660, 35.722187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.849094, 34.445744, 35.338211>,  <46.849121, 34.512993, 35.107826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.849094, 34.445744, 35.338211>,  <46.849052, 34.333660, 35.722187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.849094, 34.445744, 35.338211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943350, 0.318479, 0.093070,
		0.331799, -0.905568, -0.264303,
		0.000106, 0.280211, -0.959938,
		46.849125, 34.529808, 35.050228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.498730, 34.132900, 35.357548>,  <46.849052, 34.333660, 35.722187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.498730, 34.132900, 35.357548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.326488, 34.462551, 35.210365>,  <47.223145, 34.660343, 35.122055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.326488, 34.462551, 35.210365>,  <47.498730, 34.132900, 35.357548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.326488, 34.462551, 35.210365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839545, 0.515393, 0.171857,
		0.331274, -0.234913, -0.913824,
		-0.430607, 0.824127, -0.367956,
		47.197308, 34.709789, 35.099979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.732788, 34.523006, 34.635571>,  <47.498730, 34.132900, 35.357548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.732788, 34.523006, 34.635571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.605385, 34.741222, 34.945652>,  <47.528942, 34.872154, 35.131699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.605385, 34.741222, 34.945652>,  <47.732788, 34.523006, 34.635571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.605385, 34.741222, 34.945652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904014, 0.420822, 0.075287,
		-0.285149, 0.724771, -0.627214,
		-0.318511, 0.545542, 0.775200,
		47.509830, 34.904884, 35.178211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<33.999660, 32.884449, 26.842451> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.612614, 32.786804, 26.868174>,  <33.380386, 32.728218, 26.883608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.612614, 32.786804, 26.868174>,  <33.999660, 32.884449, 26.842451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.612614, 32.786804, 26.868174> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169593, -0.439931, 0.881872,
		-0.186982, 0.864218, 0.467082,
		-0.967613, -0.244108, 0.064307,
		33.322330, 32.713573, 26.887466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.846142, 33.100559, 27.464006>,  <33.999660, 32.884449, 26.842451>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.846142, 33.100559, 27.464006> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.576267, 32.822525, 27.364691>,  <33.414341, 32.655704, 27.305101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.576267, 32.822525, 27.364691>,  <33.846142, 33.100559, 27.464006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.576267, 32.822525, 27.364691> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150753, -0.199527, 0.968226,
		-0.722541, 0.690684, 0.029832,
		-0.674691, -0.695086, -0.248289,
		33.373859, 32.613998, 27.290203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.305119, 33.220490, 27.913685>,  <33.846142, 33.100559, 27.464006>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.305119, 33.220490, 27.913685> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.265053, 32.846954, 27.776335>,  <33.241013, 32.622833, 27.693926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.265053, 32.846954, 27.776335>,  <33.305119, 33.220490, 27.913685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.265053, 32.846954, 27.776335> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129034, -0.330002, 0.935120,
		-0.986568, 0.137974, -0.087443,
		-0.100165, -0.933843, -0.343373,
		33.235004, 32.566803, 27.673323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.746567, 33.021011, 28.207260>,  <33.305119, 33.220490, 27.913685>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.746567, 33.021011, 28.207260> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.961365, 32.694408, 28.122454>,  <33.090244, 32.498447, 28.071569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.961365, 32.694408, 28.122454>,  <32.746567, 33.021011, 28.207260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.961365, 32.694408, 28.122454> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150551, -0.340050, 0.928278,
		-0.830046, -0.466557, -0.305530,
		0.536990, -0.816511, -0.212016,
		33.122463, 32.449455, 28.058849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.330742, 32.622990, 28.541639>,  <32.746567, 33.021011, 28.207260>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.330742, 32.622990, 28.541639> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.664028, 32.411594, 28.476578>,  <32.863998, 32.284756, 28.437542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.664028, 32.411594, 28.476578>,  <32.330742, 32.622990, 28.541639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.664028, 32.411594, 28.476578> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088369, -0.417638, 0.904306,
		-0.545849, -0.739104, -0.394683,
		0.833211, -0.528492, -0.162653,
		32.913990, 32.253048, 28.427782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.207047, 32.032589, 28.874483>,  <32.330742, 32.622990, 28.541639>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.207047, 32.032589, 28.874483> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.602730, 32.027824, 28.816076>,  <32.840141, 32.024963, 28.781033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.602730, 32.027824, 28.816076>,  <32.207047, 32.032589, 28.874483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.602730, 32.027824, 28.816076> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138748, -0.243725, 0.959868,
		-0.047023, -0.969771, -0.239442,
		0.989211, -0.011914, -0.146015,
		32.899494, 32.024250, 28.772272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.476490, 31.523884, 29.365129>,  <32.207047, 32.032589, 28.874483>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.476490, 31.523884, 29.365129> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.806232, 31.736343, 29.286827>,  <33.004078, 31.863819, 29.239845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.806232, 31.736343, 29.286827>,  <32.476490, 31.523884, 29.365129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.806232, 31.736343, 29.286827> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356462, -0.218439, 0.908416,
		0.439745, -0.818636, -0.369406,
		0.824354, 0.531150, -0.195755,
		33.053539, 31.895689, 29.228100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.036827, 31.020350, 29.555120>,  <32.476490, 31.523884, 29.365129>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.036827, 31.020350, 29.555120> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.170048, 31.397017, 29.535749>,  <33.249981, 31.623016, 29.524126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.170048, 31.397017, 29.535749>,  <33.036827, 31.020350, 29.555120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.170048, 31.397017, 29.535749> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548923, -0.151872, 0.821960,
		0.766657, -0.300334, -0.567483,
		0.333047, 0.941666, -0.048427,
		33.269962, 31.679516, 29.521221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.783833, 31.053318, 29.551029>,  <33.036827, 31.020350, 29.555120>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.783833, 31.053318, 29.551029> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.671200, 31.410326, 29.691952>,  <33.603619, 31.624531, 29.776505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.671200, 31.410326, 29.691952>,  <33.783833, 31.053318, 29.551029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.671200, 31.410326, 29.691952> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773019, -0.006514, 0.634349,
		0.568463, 0.450963, -0.688100,
		-0.281586, 0.892519, 0.352306,
		33.586723, 31.678082, 29.797644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.408489, 31.412174, 29.761024>,  <33.783833, 31.053318, 29.551029>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.408489, 31.412174, 29.761024> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.118809, 31.593403, 29.968971>,  <33.945000, 31.702139, 30.093739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.118809, 31.593403, 29.968971>,  <34.408489, 31.412174, 29.761024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.118809, 31.593403, 29.968971> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646954, 0.185426, 0.739640,
		0.238711, 0.871978, -0.427401,
		-0.724201, 0.453069, 0.519866,
		33.901550, 31.729324, 30.124931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.791130, 31.774103, 30.234497>,  <34.408489, 31.412174, 29.761024>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.791130, 31.774103, 30.234497> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.444870, 31.849621, 30.419975>,  <34.237114, 31.894932, 30.531261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.444870, 31.849621, 30.419975>,  <34.791130, 31.774103, 30.234497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.444870, 31.849621, 30.419975> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472959, 0.004592, 0.881072,
		0.164212, 0.982006, -0.093267,
		-0.865646, 0.188794, 0.463695,
		34.185177, 31.906260, 30.559084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.917854, 32.405720, 30.755968>,  <34.791130, 31.774103, 30.234497>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.917854, 32.405720, 30.755968> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.580643, 32.225239, 30.873081>,  <34.378315, 32.116951, 30.943350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.580643, 32.225239, 30.873081>,  <34.917854, 32.405720, 30.755968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.580643, 32.225239, 30.873081> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206432, 0.231233, 0.950745,
		-0.496681, 0.861943, -0.101793,
		-0.843026, -0.451204, 0.292782,
		34.327736, 32.089878, 30.960917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.731911, 32.823875, 31.449360>,  <34.917854, 32.405720, 30.755968>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.731911, 32.823875, 31.449360> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.546074, 32.470329, 31.427711>,  <34.434570, 32.258202, 31.414722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.546074, 32.470329, 31.427711>,  <34.731911, 32.823875, 31.449360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.546074, 32.470329, 31.427711> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145897, -0.136687, 0.979812,
		-0.873423, 0.447317, 0.192458,
		-0.464593, -0.883869, -0.054123,
		34.406696, 32.205170, 31.411474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.303875, 32.787556, 32.055286>,  <34.731911, 32.823875, 31.449360>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.303875, 32.787556, 32.055286> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.299831, 32.403618, 31.943150>,  <34.297405, 32.173256, 31.875868>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.299831, 32.403618, 31.943150>,  <34.303875, 32.787556, 32.055286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.299831, 32.403618, 31.943150> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169158, -0.277957, 0.945582,
		-0.985537, -0.037861, 0.165176,
		-0.010112, -0.959847, -0.280341,
		34.296799, 32.115665, 31.859047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.974728, 32.578316, 32.588428>,  <34.303875, 32.787556, 32.055286>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.974728, 32.578316, 32.588428> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.168835, 32.263096, 32.436909>,  <34.285297, 32.073963, 32.345997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.168835, 32.263096, 32.436909>,  <33.974728, 32.578316, 32.588428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.168835, 32.263096, 32.436909> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010945, -0.427722, 0.903844,
		-0.874297, -0.442752, -0.198935,
		0.485267, -0.788051, -0.378802,
		34.314415, 32.026680, 32.323269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.632534, 31.935717, 32.789177>,  <33.974728, 32.578316, 32.588428>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.632534, 31.935717, 32.789177> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.016937, 31.851864, 32.717037>,  <34.247578, 31.801552, 32.673756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.016937, 31.851864, 32.717037>,  <33.632534, 31.935717, 32.789177>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.016937, 31.851864, 32.717037> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075661, -0.427958, 0.900626,
		-0.265980, -0.879151, -0.395409,
		0.961005, -0.209632, -0.180346,
		34.305237, 31.788975, 32.662933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.699600, 31.254520, 33.215626>,  <33.632534, 31.935717, 32.789177>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.699600, 31.254520, 33.215626> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.078850, 31.353493, 33.135796>,  <34.306400, 31.412876, 33.087898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.078850, 31.353493, 33.135796>,  <33.699600, 31.254520, 33.215626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.078850, 31.353493, 33.135796> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286289, -0.391735, 0.874404,
		0.138172, -0.886184, -0.442252,
		0.948128, 0.247430, -0.199578,
		34.363289, 31.427721, 33.075924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.162815, 30.642550, 33.417866>,  <33.699600, 31.254520, 33.215626>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.162815, 30.642550, 33.417866> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.396797, 30.966156, 33.394814>,  <34.537186, 31.160320, 33.380981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.396797, 30.966156, 33.394814>,  <34.162815, 30.642550, 33.417866>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.396797, 30.966156, 33.394814> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438727, -0.255855, 0.861428,
		0.682166, -0.529176, -0.504600,
		0.584952, 0.809019, -0.057628,
		34.572281, 31.208862, 33.377525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.858269, 30.419779, 33.664764>,  <34.162815, 30.642550, 33.417866>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.858269, 30.419779, 33.664764> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.816013, 30.815704, 33.702938>,  <34.790661, 31.053259, 33.725842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.816013, 30.815704, 33.702938>,  <34.858269, 30.419779, 33.664764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.816013, 30.815704, 33.702938> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450294, -0.037950, 0.892073,
		0.886609, 0.137212, -0.441699,
		-0.105641, 0.989814, 0.095433,
		34.784321, 31.112648, 33.731567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.379539, 30.494675, 34.060692>,  <34.858269, 30.419779, 33.664764>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.379539, 30.494675, 34.060692> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.207340, 30.854387, 34.091591>,  <35.104023, 31.070215, 34.110130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.207340, 30.854387, 34.091591>,  <35.379539, 30.494675, 34.060692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.207340, 30.854387, 34.091591> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513698, 0.173744, 0.840195,
		0.742150, 0.401381, -0.536755,
		-0.430496, 0.899281, 0.077245,
		35.078190, 31.124172, 34.114765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.918060, 31.040789, 34.167931>,  <35.379539, 30.494675, 34.060692>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.918060, 31.040789, 34.167931> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.562405, 31.145885, 34.317806>,  <35.349010, 31.208944, 34.407730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.562405, 31.145885, 34.317806>,  <35.918060, 31.040789, 34.167931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.562405, 31.145885, 34.317806> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420934, 0.148308, 0.894885,
		0.179556, 0.953399, -0.242465,
		-0.889142, 0.262744, 0.374689,
		35.295662, 31.224709, 34.430214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.023945, 31.448944, 34.824703>,  <35.918060, 31.040789, 34.167931>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.023945, 31.448944, 34.824703> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.627689, 31.396255, 34.839024>,  <35.389935, 31.364643, 34.847618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.627689, 31.396255, 34.839024>,  <36.023945, 31.448944, 34.824703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.627689, 31.396255, 34.839024> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028029, 0.060415, 0.997780,
		-0.133592, 0.989444, -0.056158,
		-0.990640, -0.131721, 0.035804,
		35.330498, 31.356739, 34.849766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.695614, 31.898241, 34.721893>,  <36.023945, 31.448944, 34.824703>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.695614, 31.898241, 34.721893> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.093620, 31.912977, 34.758961>,  <37.332424, 31.921820, 34.781200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.093620, 31.912977, 34.758961>,  <36.695614, 31.898241, 34.721893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.093620, 31.912977, 34.758961> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085059, 0.171548, -0.981497,
		-0.052056, 0.984487, 0.167559,
		0.995015, 0.036840, 0.092670,
		37.392124, 31.924028, 34.786762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.984093, 32.515396, 34.340405>,  <36.695614, 31.898241, 34.721893>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.984093, 32.515396, 34.340405> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.286102, 32.259434, 34.397621>,  <37.467308, 32.105858, 34.431950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.286102, 32.259434, 34.397621>,  <36.984093, 32.515396, 34.340405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.286102, 32.259434, 34.397621> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308798, 0.154568, -0.938484,
		0.578431, 0.752748, 0.314304,
		0.755024, -0.639905, 0.143040,
		37.512608, 32.067463, 34.440533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.516144, 32.874249, 34.080620>,  <36.984093, 32.515396, 34.340405>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.516144, 32.874249, 34.080620> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.618557, 32.487583, 34.079487>,  <37.680004, 32.255585, 34.078808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.618557, 32.487583, 34.079487>,  <37.516144, 32.874249, 34.080620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.618557, 32.487583, 34.079487> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419813, 0.113826, -0.900445,
		0.870750, 0.229354, 0.434962,
		0.256030, -0.966665, -0.002828,
		37.695366, 32.197582, 34.078640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.299053, 32.824684, 33.927513>,  <37.516144, 32.874249, 34.080620>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.299053, 32.824684, 33.927513> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.118568, 32.482742, 33.825035>,  <38.010277, 32.277576, 33.763546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.118568, 32.482742, 33.825035>,  <38.299053, 32.824684, 33.927513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.118568, 32.482742, 33.825035> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204959, 0.180145, -0.962050,
		0.868564, -0.486595, 0.093927,
		-0.451208, -0.854853, -0.256199,
		37.983208, 32.226288, 33.748177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.684029, 32.534405, 33.258366>,  <38.299053, 32.824684, 33.927513>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.684029, 32.534405, 33.258366> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.314663, 32.381878, 33.275837>,  <38.093044, 32.290359, 33.286320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.314663, 32.381878, 33.275837>,  <38.684029, 32.534405, 33.258366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.314663, 32.381878, 33.275837> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051199, 0.009591, -0.998642,
		0.380384, -0.924393, -0.028379,
		-0.923410, -0.381321, 0.043680,
		38.037640, 32.267483, 33.288940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.680592, 32.021461, 32.714500>,  <38.684029, 32.534405, 33.258366>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.680592, 32.021461, 32.714500> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.305210, 32.109581, 32.820908>,  <38.079979, 32.162453, 32.884754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.305210, 32.109581, 32.820908>,  <38.680592, 32.021461, 32.714500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.305210, 32.109581, 32.820908> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261303, 0.050838, -0.963917,
		-0.225878, -0.974106, 0.009856,
		-0.938456, 0.220303, 0.266020,
		38.023674, 32.175671, 32.900715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.351086, 31.654642, 32.289639>,  <38.680592, 32.021461, 32.714500>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.351086, 31.654642, 32.289639> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.077534, 31.913847, 32.423737>,  <37.913403, 32.069370, 32.504196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.077534, 31.913847, 32.423737>,  <38.351086, 31.654642, 32.289639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.077534, 31.913847, 32.423737> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441624, -0.001913, -0.897198,
		-0.580752, -0.761629, 0.287485,
		-0.683882, 0.648010, 0.335243,
		37.872368, 32.108250, 32.524311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.867420, 31.447948, 31.916847>,  <38.351086, 31.654642, 32.289639>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.867420, 31.447948, 31.916847> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.749115, 31.812794, 32.030392>,  <37.678131, 32.031700, 32.098518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.749115, 31.812794, 32.030392>,  <37.867420, 31.447948, 31.916847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.749115, 31.812794, 32.030392> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333586, 0.179829, -0.925409,
		-0.895122, -0.368395, 0.251080,
		-0.295765, 0.912111, 0.283860,
		37.660385, 32.086426, 32.115551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.167721, 31.584196, 31.639858>,  <37.867420, 31.447948, 31.916847>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.167721, 31.584196, 31.639858> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.318844, 31.949154, 31.702848>,  <37.409519, 32.168129, 31.740643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.318844, 31.949154, 31.702848>,  <37.167721, 31.584196, 31.639858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.318844, 31.949154, 31.702848> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176714, 0.238012, -0.955051,
		-0.908864, 0.332996, 0.251156,
		0.377806, 0.912395, 0.157475,
		37.432186, 32.222874, 31.750092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.608486, 32.098713, 31.593761>,  <37.167721, 31.584196, 31.639858>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.608486, 32.098713, 31.593761> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.938862, 32.320965, 31.555609>,  <37.137089, 32.454315, 31.532717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.938862, 32.320965, 31.555609>,  <36.608486, 32.098713, 31.593761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.938862, 32.320965, 31.555609> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439718, 0.529041, -0.725785,
		-0.352809, 0.641395, 0.681277,
		0.825938, 0.555634, -0.095382,
		37.186642, 32.487656, 31.526995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.463459, 32.828926, 31.431217>,  <36.608486, 32.098713, 31.593761>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.463459, 32.828926, 31.431217> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.844517, 32.820728, 31.309855>,  <37.073151, 32.815811, 31.237036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.844517, 32.820728, 31.309855>,  <36.463459, 32.828926, 31.431217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.844517, 32.820728, 31.309855> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246355, 0.532935, -0.809499,
		0.178287, 0.845908, 0.502646,
		0.952640, -0.020494, -0.303409,
		37.130310, 32.814579, 31.218832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.596592, 33.544174, 31.196938>,  <36.463459, 32.828926, 31.431217>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.596592, 33.544174, 31.196938> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.901798, 33.331814, 31.049454>,  <37.084923, 33.204395, 30.960964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.901798, 33.331814, 31.049454>,  <36.596592, 33.544174, 31.196938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.901798, 33.331814, 31.049454> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137097, 0.424521, -0.894978,
		0.631672, 0.733433, 0.251131,
		0.763017, -0.530903, -0.368710,
		37.130703, 33.172543, 30.938841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.114769, 34.017456, 30.729847>,  <36.596592, 33.544174, 31.196938>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.114769, 34.017456, 30.729847> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.160549, 33.634052, 30.625412>,  <37.188015, 33.404011, 30.562752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.160549, 33.634052, 30.625412>,  <37.114769, 34.017456, 30.729847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.160549, 33.634052, 30.625412> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147163, 0.243555, -0.958657,
		0.982469, 0.148139, -0.113182,
		0.114449, -0.958507, -0.261086,
		37.194885, 33.346500, 30.547087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.600563, 34.016663, 30.125420>,  <37.114769, 34.017456, 30.729847>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.600563, 34.016663, 30.125420> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.410152, 33.664902, 30.122839>,  <37.295906, 33.453846, 30.121290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.410152, 33.664902, 30.122839>,  <37.600563, 34.016663, 30.125420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.410152, 33.664902, 30.122839> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226564, 0.129724, -0.965319,
		0.849743, -0.458060, -0.260995,
		-0.476031, -0.879405, -0.006452,
		37.267342, 33.401081, 30.120903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.842739, 33.643219, 29.559244>,  <37.600563, 34.016663, 30.125420>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.842739, 33.643219, 29.559244> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.482418, 33.493191, 29.646763>,  <37.266224, 33.403175, 29.699274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.482418, 33.493191, 29.646763>,  <37.842739, 33.643219, 29.559244>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.482418, 33.493191, 29.646763> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217180, -0.047165, -0.974991,
		0.376010, -0.925796, -0.038972,
		-0.900805, -0.375071, 0.218799,
		37.212177, 33.380669, 29.712402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.714397, 33.207706, 29.033985>,  <37.842739, 33.643219, 29.559244>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.714397, 33.207706, 29.033985> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.341656, 33.236423, 29.176252>,  <37.118011, 33.253654, 29.261612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.341656, 33.236423, 29.176252>,  <37.714397, 33.207706, 29.033985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.341656, 33.236423, 29.176252> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357637, -0.016297, -0.933719,
		-0.061237, -0.997286, 0.040862,
		-0.931851, 0.071792, 0.355669,
		37.062099, 33.257961, 29.282953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.363125, 32.621281, 28.784769>,  <37.714397, 33.207706, 29.033985>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.363125, 32.621281, 28.784769> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.080376, 32.891354, 28.869108>,  <36.910725, 33.053398, 28.919712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.080376, 32.891354, 28.869108>,  <37.363125, 32.621281, 28.784769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.080376, 32.891354, 28.869108> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319374, -0.038685, -0.946839,
		-0.631133, -0.736636, 0.242981,
		-0.706875, 0.675182, 0.210847,
		36.868313, 33.093906, 28.932362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.876534, 32.416378, 28.329199>,  <37.363125, 32.621281, 28.784769>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.876534, 32.416378, 28.329199> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.740780, 32.779995, 28.425911>,  <36.659328, 32.998165, 28.483938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.740780, 32.779995, 28.425911>,  <36.876534, 32.416378, 28.329199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.740780, 32.779995, 28.425911> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309072, 0.135000, -0.941409,
		-0.888422, -0.394225, 0.235143,
		-0.339383, 0.909044, 0.241780,
		36.638966, 33.052708, 28.498446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.214573, 32.503925, 27.947897> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.293934, 32.880676, 28.056347>,  <36.341549, 33.106728, 28.121418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.293934, 32.880676, 28.056347>,  <36.214573, 32.503925, 27.947897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.293934, 32.880676, 28.056347> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266234, 0.318015, -0.909938,
		-0.943269, 0.108350, 0.313854,
		0.198402, 0.941874, 0.271127,
		36.353455, 33.163239, 28.137686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.632385, 32.772076, 27.676731>,  <36.214573, 32.503925, 27.947897>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.632385, 32.772076, 27.676731> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.890682, 33.072289, 27.732908>,  <36.045662, 33.252415, 27.766615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.890682, 33.072289, 27.732908>,  <35.632385, 32.772076, 27.676731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.890682, 33.072289, 27.732908> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500274, 0.554818, -0.664758,
		-0.576840, 0.359003, 0.733739,
		0.645742, 0.750529, 0.140441,
		36.084404, 33.297447, 27.775042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.231937, 33.424297, 27.798603>,  <35.632385, 32.772076, 27.676731>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.231937, 33.424297, 27.798603> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.598541, 33.518639, 27.669369>,  <35.818504, 33.575245, 27.591827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.598541, 33.518639, 27.669369>,  <35.231937, 33.424297, 27.798603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.598541, 33.518639, 27.669369> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389125, 0.712871, -0.583435,
		0.092711, 0.660444, 0.745130,
		0.916508, 0.235857, -0.323086,
		35.873493, 33.589397, 27.572443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.222340, 34.080311, 27.814640>,  <35.231937, 33.424297, 27.798603>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.222340, 34.080311, 27.814640> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.514248, 33.977211, 27.561340>,  <35.689392, 33.915352, 27.409361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.514248, 33.977211, 27.561340>,  <35.222340, 34.080311, 27.814640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.514248, 33.977211, 27.561340> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285231, 0.726984, -0.624610,
		0.621356, 0.636442, 0.457010,
		0.729767, -0.257752, -0.633249,
		35.733177, 33.899887, 27.371367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.502132, 34.706562, 27.555948>,  <35.222340, 34.080311, 27.814640>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.502132, 34.706562, 27.555948> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.582977, 34.410126, 27.299845>,  <35.631485, 34.232265, 27.146183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.582977, 34.410126, 27.299845>,  <35.502132, 34.706562, 27.555948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.582977, 34.410126, 27.299845> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267771, 0.587026, -0.764002,
		0.942044, 0.325861, -0.079795,
		0.202116, -0.741090, -0.640261,
		35.643612, 34.187798, 27.107767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.626080, 35.051090, 27.074177>,  <35.502132, 34.706562, 27.555948>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.626080, 35.051090, 27.074177> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.587322, 34.686234, 26.914871>,  <35.564068, 34.467319, 26.819288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.587322, 34.686234, 26.914871>,  <35.626080, 35.051090, 27.074177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.587322, 34.686234, 26.914871> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197024, 0.409804, -0.890642,
		0.975599, -0.007826, -0.219419,
		-0.096888, -0.912140, -0.398262,
		35.558254, 34.412590, 26.795393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.912479, 35.195026, 26.443295>,  <35.626080, 35.051090, 27.074177>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.912479, 35.195026, 26.443295> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.741470, 34.840336, 26.372938>,  <35.638863, 34.627522, 26.330725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.741470, 34.840336, 26.372938>,  <35.912479, 35.195026, 26.443295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.741470, 34.840336, 26.372938> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156311, 0.264151, -0.951731,
		0.890387, -0.379394, -0.251536,
		-0.427524, -0.886727, -0.175893,
		35.613213, 34.574318, 26.320169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.216278, 34.864796, 25.882561>,  <35.912479, 35.195026, 26.443295>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.216278, 34.864796, 25.882561> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.861580, 34.680973, 25.902540>,  <35.648762, 34.570679, 25.914528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.861580, 34.680973, 25.902540>,  <36.216278, 34.864796, 25.882561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.861580, 34.680973, 25.902540> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208870, 0.301925, -0.930169,
		0.412388, -0.835252, -0.363717,
		-0.886741, -0.459560, 0.049949,
		35.595558, 34.543106, 25.917524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.264297, 34.339016, 25.419535>,  <36.216278, 34.864796, 25.882561>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.264297, 34.339016, 25.419535> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.878326, 34.436703, 25.458063>,  <35.646744, 34.495316, 25.481180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.878326, 34.436703, 25.458063>,  <36.264297, 34.339016, 25.419535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.878326, 34.436703, 25.458063> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061600, 0.146038, -0.987359,
		-0.255192, -0.958662, -0.125873,
		-0.964926, 0.244213, 0.096321,
		35.588848, 34.509968, 25.486959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.980030, 34.133671, 24.860405>,  <36.264297, 34.339016, 25.419535>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.980030, 34.133671, 24.860405> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.696117, 34.382679, 24.992266>,  <35.525768, 34.532085, 25.071383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.696117, 34.382679, 24.992266>,  <35.980030, 34.133671, 24.860405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.696117, 34.382679, 24.992266> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026568, 0.443989, -0.895638,
		-0.703917, -0.644469, -0.298598,
		-0.709785, 0.622522, 0.329653,
		35.483181, 34.569435, 25.091162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.508873, 34.223690, 24.334751>,  <35.980030, 34.133671, 24.860405>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.508873, 34.223690, 24.334751> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.366112, 34.540897, 24.532234>,  <35.280457, 34.731220, 24.650724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.366112, 34.540897, 24.532234>,  <35.508873, 34.223690, 24.334751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.366112, 34.540897, 24.532234> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028603, 0.537544, -0.842751,
		-0.933705, -0.286655, -0.214531,
		-0.356899, 0.793017, 0.493708,
		35.259041, 34.778801, 24.680347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.004654, 34.474297, 23.941408>,  <35.508873, 34.223690, 24.334751>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.004654, 34.474297, 23.941408> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.138676, 34.782963, 24.157656>,  <35.219090, 34.968163, 24.287403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.138676, 34.782963, 24.157656>,  <35.004654, 34.474297, 23.941408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.138676, 34.782963, 24.157656> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053242, 0.588372, -0.806835,
		-0.940694, 0.241549, 0.238221,
		0.335053, 0.771668, 0.540618,
		35.239193, 35.014462, 24.319841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.630638, 35.089203, 23.746849>,  <35.004654, 34.474297, 23.941408>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.630638, 35.089203, 23.746849> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.963055, 35.234581, 23.915270>,  <35.162502, 35.321808, 24.016321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.963055, 35.234581, 23.915270>,  <34.630638, 35.089203, 23.746849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.963055, 35.234581, 23.915270> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060934, 0.811927, -0.580570,
		-0.552866, 0.456820, 0.696889,
		0.831039, 0.363442, 0.421051,
		35.212368, 35.343613, 24.041586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.541924, 35.848530, 23.877396>,  <34.630638, 35.089203, 23.746849>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.541924, 35.848530, 23.877396> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.930084, 35.754131, 23.856873>,  <35.162979, 35.697491, 23.844559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.930084, 35.754131, 23.856873>,  <34.541924, 35.848530, 23.877396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.930084, 35.754131, 23.856873> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168655, 0.814263, -0.555455,
		0.172864, 0.530360, 0.829962,
		0.970399, -0.235995, -0.051309,
		35.221203, 35.683334, 23.841480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.745865, 36.460281, 23.859827>,  <34.541924, 35.848530, 23.877396>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.745865, 36.460281, 23.859827> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.069828, 36.255848, 23.744703>,  <35.264206, 36.133186, 23.675629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.069828, 36.255848, 23.744703>,  <34.745865, 36.460281, 23.859827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.069828, 36.255848, 23.744703> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201653, 0.703388, -0.681602,
		0.550799, 0.494000, 0.672744,
		0.809911, -0.511087, -0.287809,
		35.312801, 36.102520, 23.658361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.207619, 36.936283, 23.726894>,  <34.745865, 36.460281, 23.859827>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.207619, 36.936283, 23.726894> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.375969, 36.642967, 23.513300>,  <35.476978, 36.466976, 23.385143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.375969, 36.642967, 23.513300>,  <35.207619, 36.936283, 23.726894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.375969, 36.642967, 23.513300> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202276, 0.649709, -0.732777,
		0.884277, 0.200397, 0.421775,
		0.420877, -0.733294, -0.533988,
		35.502232, 36.422977, 23.353104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.880768, 37.141281, 23.543560>,  <35.207619, 36.936283, 23.726894>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.880768, 37.141281, 23.543560> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.738766, 36.874699, 23.281321>,  <35.653564, 36.714748, 23.123976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.738766, 36.874699, 23.281321>,  <35.880768, 37.141281, 23.543560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.738766, 36.874699, 23.281321> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261187, 0.602646, -0.754055,
		0.897638, -0.438926, -0.039872,
		-0.355003, -0.666454, -0.655600,
		35.632263, 36.674763, 23.084641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.411461, 36.862656, 23.098511>,  <35.880768, 37.141281, 23.543560>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.411461, 36.862656, 23.098511> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.078178, 36.811852, 22.883242>,  <35.878208, 36.781368, 22.754080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.078178, 36.811852, 22.883242>,  <36.411461, 36.862656, 23.098511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.078178, 36.811852, 22.883242> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457785, 0.387449, -0.800198,
		0.310149, -0.913100, -0.264682,
		-0.833210, -0.127013, -0.538170,
		35.828217, 36.773746, 22.721790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.638496, 36.593639, 22.473856>,  <36.411461, 36.862656, 23.098511>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.638496, 36.593639, 22.473856> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.272079, 36.728165, 22.386442>,  <36.052227, 36.808880, 22.333994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.272079, 36.728165, 22.386442>,  <36.638496, 36.593639, 22.473856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.272079, 36.728165, 22.386442> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317041, 0.273456, -0.908134,
		-0.245656, -0.901176, -0.357122,
		-0.916045, 0.336311, -0.218533,
		35.997265, 36.829056, 22.320883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.577389, 36.481216, 21.807989>,  <36.638496, 36.593639, 22.473856>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.577389, 36.481216, 21.807989> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.278454, 36.734867, 21.887348>,  <36.099091, 36.887058, 21.934963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.278454, 36.734867, 21.887348>,  <36.577389, 36.481216, 21.807989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.278454, 36.734867, 21.887348> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229311, 0.526404, -0.818728,
		-0.623619, -0.566372, -0.538815,
		-0.747339, 0.634131, 0.198400,
		36.054253, 36.925106, 21.946869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.327332, 36.710682, 21.205584>,  <36.577389, 36.481216, 21.807989>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.327332, 36.710682, 21.205584> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.157974, 36.977207, 21.451107>,  <36.056358, 37.137123, 21.598421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.157974, 36.977207, 21.451107>,  <36.327332, 36.710682, 21.205584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.157974, 36.977207, 21.451107> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116560, 0.711967, -0.692471,
		-0.898417, -0.221642, -0.379107,
		-0.423392, 0.666317, 0.613809,
		36.030956, 37.177101, 21.635250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.628262, 36.939636, 20.943382>,  <36.327332, 36.710682, 21.205584>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.628262, 36.939636, 20.943382> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.729679, 37.234615, 21.193785>,  <35.790531, 37.411602, 21.344027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.729679, 37.234615, 21.193785>,  <35.628262, 36.939636, 20.943382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.729679, 37.234615, 21.193785> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167682, 0.670863, -0.722375,
		-0.952679, 0.078184, 0.293751,
		0.253545, 0.737448, 0.626007,
		35.805744, 37.455849, 21.381586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.096313, 37.473743, 20.794811>,  <35.628262, 36.939636, 20.943382>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.096313, 37.473743, 20.794811> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.442272, 37.579189, 20.965673>,  <35.649845, 37.642456, 21.068192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.442272, 37.579189, 20.965673>,  <35.096313, 37.473743, 20.794811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.442272, 37.579189, 20.965673> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116758, 0.721990, -0.681981,
		-0.488186, 0.639715, 0.593666,
		0.864894, 0.263618, 0.427158,
		35.701740, 37.658276, 21.093821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.461216, 37.865818, 20.575510>,  <35.096313, 37.473743, 20.794811>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.461216, 37.865818, 20.575510> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.825123, 37.838570, 20.411716>,  <35.043468, 37.822220, 20.313440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.825123, 37.838570, 20.411716>,  <34.461216, 37.865818, 20.575510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.825123, 37.838570, 20.411716> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212697, 0.923613, 0.318904,
		0.356481, -0.377225, 0.854764,
		0.909770, -0.068122, -0.409485,
		35.098053, 37.818134, 20.288870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.861645, 37.871162, 20.863140>,  <34.461216, 37.865818, 20.575510>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.861645, 37.871162, 20.863140> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.494534, 37.733303, 20.784250>,  <33.274265, 37.650589, 20.736916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.494534, 37.733303, 20.784250>,  <33.861645, 37.871162, 20.863140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.494534, 37.733303, 20.784250> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177519, -0.088170, 0.980160,
		-0.355196, 0.934583, 0.019739,
		-0.917781, -0.344645, -0.197224,
		33.219200, 37.629910, 20.725082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.392960, 38.199566, 21.422531>,  <33.861645, 37.871162, 20.863140>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.392960, 38.199566, 21.422531> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.213371, 37.864891, 21.297070>,  <33.105618, 37.664085, 21.221792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.213371, 37.864891, 21.297070>,  <33.392960, 38.199566, 21.422531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.213371, 37.864891, 21.297070> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136124, -0.282881, 0.949446,
		-0.883119, 0.468967, 0.013111,
		-0.448968, -0.836689, -0.313655,
		33.078682, 37.613884, 21.202972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.867275, 38.038700, 21.872276>,  <33.392960, 38.199566, 21.422531>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.867275, 38.038700, 21.872276> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.893139, 37.688148, 21.681374>,  <32.908657, 37.477818, 21.566832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.893139, 37.688148, 21.681374>,  <32.867275, 38.038700, 21.872276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.893139, 37.688148, 21.681374> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213176, -0.479347, 0.851342,
		-0.974872, 0.046690, -0.217818,
		0.064661, -0.876383, -0.477255,
		32.912537, 37.425232, 21.538197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.306362, 37.629185, 22.092861>,  <32.867275, 38.038700, 21.872276>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.306362, 37.629185, 22.092861> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.543144, 37.345661, 21.939409>,  <32.685215, 37.175549, 21.847338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.543144, 37.345661, 21.939409>,  <32.306362, 37.629185, 22.092861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.543144, 37.345661, 21.939409> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091472, -0.531997, 0.841791,
		-0.800761, -0.463214, -0.379757,
		0.591958, -0.708810, -0.383632,
		32.720734, 37.133018, 21.824320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.861750, 37.005939, 22.246136>,  <32.306362, 37.629185, 22.092861>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.861750, 37.005939, 22.246136> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.252205, 36.939545, 22.190136>,  <32.486477, 36.899708, 22.156536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.252205, 36.939545, 22.190136>,  <31.861750, 37.005939, 22.246136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.252205, 36.939545, 22.190136> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009234, -0.675872, 0.736961,
		-0.216950, -0.718084, -0.661278,
		0.976139, -0.165990, -0.140000,
		32.545048, 36.889748, 22.148136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.917894, 36.370750, 22.361036>,  <31.861750, 37.005939, 22.246136>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.917894, 36.370750, 22.361036> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.295166, 36.494209, 22.410271>,  <32.521530, 36.568283, 22.439812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.295166, 36.494209, 22.410271>,  <31.917894, 36.370750, 22.361036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.295166, 36.494209, 22.410271> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076545, -0.562279, 0.823397,
		0.323344, -0.767191, -0.553956,
		0.943181, 0.308643, 0.123085,
		32.578121, 36.586803, 22.447197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.313026, 35.725670, 22.442965>,  <31.917894, 36.370750, 22.361036>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.313026, 35.725670, 22.442965> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.526443, 36.030079, 22.590572>,  <32.654491, 36.212727, 22.679136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.526443, 36.030079, 22.590572>,  <32.313026, 35.725670, 22.442965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.526443, 36.030079, 22.590572> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049972, -0.463910, 0.884472,
		0.844297, -0.453461, -0.285545,
		0.533541, 0.761026, 0.369018,
		32.686504, 36.258385, 22.701277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.764252, 35.362316, 22.771313>,  <32.313026, 35.725670, 22.442965>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.764252, 35.362316, 22.771313> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.818737, 35.733051, 22.911270>,  <32.851429, 35.955490, 22.995245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.818737, 35.733051, 22.911270>,  <32.764252, 35.362316, 22.771313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.818737, 35.733051, 22.911270> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104983, -0.364700, 0.925188,
		0.985101, -0.089292, -0.146979,
		0.136215, 0.926834, 0.349892,
		32.859600, 36.011101, 23.016237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.374039, 35.514050, 23.152063>,  <32.764252, 35.362316, 22.771313>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.374039, 35.514050, 23.152063> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.121811, 35.791359, 23.291634>,  <32.970474, 35.957745, 23.375376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.121811, 35.791359, 23.291634>,  <33.374039, 35.514050, 23.152063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.121811, 35.791359, 23.291634> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159557, -0.324170, 0.932446,
		0.759555, 0.643645, 0.093794,
		-0.630570, 0.693278, 0.348923,
		32.932640, 35.999344, 23.396311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.728241, 35.757465, 23.692930>,  <33.374039, 35.514050, 23.152063>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.728241, 35.757465, 23.692930> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.338505, 35.808224, 23.767298>,  <33.104664, 35.838676, 23.811918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.338505, 35.808224, 23.767298>,  <33.728241, 35.757465, 23.692930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.338505, 35.808224, 23.767298> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087413, -0.547832, 0.832009,
		0.207429, 0.826908, 0.522681,
		-0.974337, 0.126894, 0.185919,
		33.046204, 35.846291, 23.823074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.748478, 35.842350, 24.451096>,  <33.728241, 35.757465, 23.692930>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.748478, 35.842350, 24.451096> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.386520, 35.746426, 24.310431>,  <33.169346, 35.688873, 24.226032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.386520, 35.746426, 24.310431>,  <33.748478, 35.842350, 24.451096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.386520, 35.746426, 24.310431> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118783, -0.651088, 0.749650,
		-0.408734, 0.720122, 0.560678,
		-0.904891, -0.239808, -0.351660,
		33.115055, 35.674484, 24.204933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.361164, 35.801628, 25.020464>,  <33.748478, 35.842350, 24.451096>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.361164, 35.801628, 25.020464> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.102905, 35.619209, 24.775461>,  <32.947952, 35.509758, 24.628460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.102905, 35.619209, 24.775461>,  <33.361164, 35.801628, 25.020464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.102905, 35.619209, 24.775461> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184408, -0.685236, 0.704589,
		-0.741038, 0.567864, 0.358319,
		-0.645644, -0.456050, -0.612505,
		32.909214, 35.482395, 24.591709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.789154, 35.774437, 25.364645>,  <33.361164, 35.801628, 25.020464>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.789154, 35.774437, 25.364645> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.785824, 35.474838, 25.099636>,  <32.783825, 35.295078, 24.940630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.785824, 35.474838, 25.099636>,  <32.789154, 35.774437, 25.364645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.785824, 35.474838, 25.099636> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251751, -0.639634, 0.726285,
		-0.967756, 0.172839, -0.183234,
		-0.008328, -0.748996, -0.662522,
		32.783325, 35.250141, 24.900879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.254196, 35.319427, 25.560472>,  <32.789154, 35.774437, 25.364645>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.254196, 35.319427, 25.560472> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.472115, 35.076580, 25.329092>,  <32.602867, 34.930874, 25.190264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.472115, 35.076580, 25.329092>,  <32.254196, 35.319427, 25.560472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.472115, 35.076580, 25.329092> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275393, -0.781085, 0.560415,
		-0.792062, -0.146004, -0.592722,
		0.544790, -0.607116, -0.578460,
		32.635555, 34.894447, 25.155556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.990496, 34.686581, 25.626047>,  <32.254196, 35.319427, 25.560472>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.990496, 34.686581, 25.626047> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.349110, 34.575439, 25.488049>,  <32.564278, 34.508755, 25.405251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.349110, 34.575439, 25.488049>,  <31.990496, 34.686581, 25.626047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.349110, 34.575439, 25.488049> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010456, -0.791873, 0.610596,
		-0.442849, -0.543813, -0.712848,
		0.896535, -0.277856, -0.344994,
		32.618069, 34.492085, 25.384550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.901497, 33.937752, 25.598269>,  <31.990496, 34.686581, 25.626047>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.901497, 33.937752, 25.598269> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.297054, 33.988884, 25.567951>,  <32.534389, 34.019566, 25.549761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.297054, 33.988884, 25.567951>,  <31.901497, 33.937752, 25.598269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.297054, 33.988884, 25.567951> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146536, -0.753706, 0.640668,
		0.024772, -0.644660, -0.764068,
		0.988895, 0.127834, -0.075795,
		32.593723, 34.027233, 25.545212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.181171, 33.352821, 25.291410>,  <31.901497, 33.937752, 25.598269>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.181171, 33.352821, 25.291410> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.445171, 33.537846, 25.528202>,  <32.603573, 33.648861, 25.670277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.445171, 33.537846, 25.528202>,  <32.181171, 33.352821, 25.291410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.445171, 33.537846, 25.528202> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091524, -0.831611, 0.547765,
		0.745669, -0.307345, -0.591199,
		0.660001, 0.462560, 0.591977,
		32.643173, 33.676613, 25.705795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.701477, 32.831444, 25.378939>,  <32.181171, 33.352821, 25.291410>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.701477, 32.831444, 25.378939> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.836246, 33.091675, 25.651180>,  <32.917110, 33.247814, 25.814526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.836246, 33.091675, 25.651180>,  <32.701477, 32.831444, 25.378939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.836246, 33.091675, 25.651180> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257288, -0.758977, 0.598128,
		0.905696, -0.026413, -0.423105,
		0.336925, 0.650582, 0.680606,
		32.937325, 33.286850, 25.855362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.325478, 32.581242, 25.653650>,  <32.701477, 32.831444, 25.378939>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.325478, 32.581242, 25.653650> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.176342, 32.823162, 25.935135>,  <33.086861, 32.968315, 26.104027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.176342, 32.823162, 25.935135>,  <33.325478, 32.581242, 25.653650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.176342, 32.823162, 25.935135> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144013, -0.711488, 0.687782,
		0.916654, 0.357773, 0.178168,
		-0.372835, 0.604800, 0.703713,
		33.064491, 33.004601, 26.146248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.825268, 32.610775, 26.174564>,  <33.325478, 32.581242, 25.653650>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.825268, 32.610775, 26.174564> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.478611, 32.724106, 26.338833>,  <33.270615, 32.792103, 26.437393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.478611, 32.724106, 26.338833>,  <33.825268, 32.610775, 26.174564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.478611, 32.724106, 26.338833> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256538, -0.452913, 0.853849,
		0.427917, 0.845337, 0.319831,
		-0.866646, 0.283327, 0.410670,
		33.218616, 32.809105, 26.462034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<38.048733, 32.335403, 30.405865> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.784496, 32.606312, 30.535431>,  <37.625954, 32.768856, 30.613171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.784496, 32.606312, 30.535431>,  <38.048733, 32.335403, 30.405865>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.784496, 32.606312, 30.535431> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400996, -0.046449, 0.914902,
		0.634686, 0.734262, -0.240900,
		-0.660588, 0.677275, 0.323917,
		37.586319, 32.809494, 30.632607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.360565, 32.867611, 30.790302>,  <38.048733, 32.335403, 30.405865>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.360565, 32.867611, 30.790302> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.981747, 32.831413, 30.913530>,  <37.754456, 32.809696, 30.987467>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.981747, 32.831413, 30.913530>,  <38.360565, 32.867611, 30.790302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.981747, 32.831413, 30.913530> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315647, -0.086555, 0.944921,
		-0.058841, 0.992129, 0.110535,
		-0.947051, -0.090490, 0.308069,
		37.697632, 32.804268, 31.005951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.313564, 33.268375, 31.411861>,  <38.360565, 32.867611, 30.790302>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.313564, 33.268375, 31.411861> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.987644, 33.038120, 31.439411>,  <37.792091, 32.899967, 31.455940>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.987644, 33.038120, 31.439411>,  <38.313564, 33.268375, 31.411861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.987644, 33.038120, 31.439411> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115370, -0.044576, 0.992322,
		-0.568150, 0.816488, 0.102732,
		-0.814798, -0.575640, 0.068872,
		37.743206, 32.865429, 31.460073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.977139, 33.397652, 32.101959>,  <38.313564, 33.268375, 31.411861>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.977139, 33.397652, 32.101959> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.810982, 33.044682, 32.013622>,  <37.711288, 32.832897, 31.960621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.810982, 33.044682, 32.013622>,  <37.977139, 33.397652, 32.101959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.810982, 33.044682, 32.013622> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007195, -0.245957, 0.969254,
		-0.909614, 0.401030, 0.108518,
		-0.415391, -0.882428, -0.220841,
		37.686363, 32.779953, 31.947371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.465706, 33.282593, 32.554173>,  <37.977139, 33.397652, 32.101959>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.465706, 33.282593, 32.554173> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.527546, 32.909206, 32.424713>,  <37.564648, 32.685177, 32.347038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.527546, 32.909206, 32.424713>,  <37.465706, 33.282593, 32.554173>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.527546, 32.909206, 32.424713> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086093, -0.313612, 0.945640,
		-0.984219, -0.174057, 0.031881,
		0.154597, -0.933462, -0.323648,
		37.573925, 32.629169, 32.327618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.995060, 32.926590, 32.920753>,  <37.465706, 33.282593, 32.554173>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.995060, 32.926590, 32.920753> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.291256, 32.690891, 32.791470>,  <37.468971, 32.549473, 32.713902>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.291256, 32.690891, 32.791470>,  <36.995060, 32.926590, 32.920753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.291256, 32.690891, 32.791470> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073049, -0.407496, 0.910281,
		-0.668089, -0.697661, -0.258701,
		0.740487, -0.589251, -0.323207,
		37.513401, 32.514114, 32.694508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.755661, 32.314548, 33.164387>,  <36.995060, 32.926590, 32.920753>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.755661, 32.314548, 33.164387> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.143696, 32.277428, 33.074654>,  <37.376514, 32.255154, 33.020813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.143696, 32.277428, 33.074654>,  <36.755661, 32.314548, 33.164387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.143696, 32.277428, 33.074654> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171556, -0.391761, 0.903931,
		-0.171770, -0.915375, -0.364121,
		0.970084, -0.092801, -0.224330,
		37.434723, 32.249588, 33.007355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.931469, 31.603855, 33.314697>,  <36.755661, 32.314548, 33.164387>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.931469, 31.603855, 33.314697> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.272072, 31.813587, 33.313366>,  <37.476433, 31.939426, 33.312565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.272072, 31.813587, 33.313366>,  <36.931469, 31.603855, 33.314697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.272072, 31.813587, 33.313366> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258769, -0.414693, 0.872392,
		0.456042, -0.743711, -0.488795,
		0.851508, 0.524332, -0.003332,
		37.527523, 31.970886, 33.312366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.428646, 31.099672, 33.488293>,  <36.931469, 31.603855, 33.314697>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.428646, 31.099672, 33.488293> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.603783, 31.450003, 33.569500>,  <37.708866, 31.660202, 33.618225>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.603783, 31.450003, 33.569500>,  <37.428646, 31.099672, 33.488293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.603783, 31.450003, 33.569500> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185386, -0.308919, 0.932846,
		0.879729, -0.370804, -0.297625,
		0.437845, 0.875827, 0.203023,
		37.735138, 31.712751, 33.630405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.023502, 31.005455, 34.051308>,  <37.428646, 31.099672, 33.488293>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.023502, 31.005455, 34.051308> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.889202, 31.381533, 34.074303>,  <37.808620, 31.607180, 34.088100>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.889202, 31.381533, 34.074303>,  <38.023502, 31.005455, 34.051308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.889202, 31.381533, 34.074303> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088822, -0.029160, 0.995620,
		0.937754, 0.339387, -0.073720,
		-0.335751, 0.940195, 0.057490,
		37.788475, 31.663591, 34.091549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.448902, 31.202961, 34.551510>,  <38.023502, 31.005455, 34.051308>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.448902, 31.202961, 34.551510> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.145123, 31.459311, 34.506748>,  <37.962856, 31.613121, 34.479893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.145123, 31.459311, 34.506748>,  <38.448902, 31.202961, 34.551510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.145123, 31.459311, 34.506748> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045200, 0.119614, 0.991791,
		0.648998, 0.758270, -0.061872,
		-0.759447, 0.640873, -0.111903,
		37.917290, 31.651573, 34.473179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.672115, 31.970226, 34.884346>,  <38.448902, 31.202961, 34.551510>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.672115, 31.970226, 34.884346> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.275276, 31.929502, 34.855030>,  <38.037170, 31.905067, 34.837440>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.275276, 31.929502, 34.855030>,  <38.672115, 31.970226, 34.884346>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.275276, 31.929502, 34.855030> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097795, 0.261735, 0.960173,
		-0.078572, 0.959755, -0.269623,
		-0.992100, -0.101810, -0.073294,
		37.977646, 31.898960, 34.833042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.434875, 32.618263, 35.010136>,  <38.672115, 31.970226, 34.884346>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.434875, 32.618263, 35.010136> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.171066, 32.333420, 35.106415>,  <38.012783, 32.162514, 35.164181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.171066, 32.333420, 35.106415>,  <38.434875, 32.618263, 35.010136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.171066, 32.333420, 35.106415> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041050, 0.353852, 0.934400,
		-0.750567, 0.606374, -0.262604,
		-0.659518, -0.712109, 0.240698,
		37.973209, 32.119785, 35.178623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.885193, 32.936459, 35.431049>,  <38.434875, 32.618263, 35.010136>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.885193, 32.936459, 35.431049> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.892159, 32.551575, 35.539753>,  <37.896336, 32.320644, 35.604977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.892159, 32.551575, 35.539753>,  <37.885193, 32.936459, 35.431049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.892159, 32.551575, 35.539753> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149155, 0.271257, 0.950880,
		-0.988661, 0.023980, 0.148241,
		0.017409, -0.962208, 0.271758,
		37.897381, 32.262913, 35.621281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.735889, 33.362160, 35.942322>,  <37.885193, 32.936459, 35.431049>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.735889, 33.362160, 35.942322> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.848621, 33.680435, 36.156776>,  <37.916260, 33.871403, 36.285450>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.848621, 33.680435, 36.156776>,  <37.735889, 33.362160, 35.942322>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.848621, 33.680435, 36.156776> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080536, 0.576437, -0.813163,
		-0.956079, 0.185994, 0.226538,
		0.281828, 0.795692, 0.536141,
		37.933170, 33.919144, 36.317619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.187607, 33.863232, 35.792984>,  <37.735889, 33.362160, 35.942322>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.187607, 33.863232, 35.792984> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.502384, 34.063152, 35.937714>,  <37.691250, 34.183105, 36.024551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.502384, 34.063152, 35.937714>,  <37.187607, 33.863232, 35.792984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.502384, 34.063152, 35.937714> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133570, 0.710487, -0.690918,
		-0.602390, 0.495387, 0.625874,
		0.786947, 0.499800, 0.361821,
		37.738468, 34.213093, 36.046261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.027832, 34.517780, 35.761375>,  <37.187607, 33.863232, 35.792984>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.027832, 34.517780, 35.761375> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.427155, 34.537365, 35.773964>,  <37.666748, 34.549118, 35.781517>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.427155, 34.537365, 35.773964>,  <37.027832, 34.517780, 35.761375>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.427155, 34.537365, 35.773964> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001250, 0.558583, -0.829448,
		-0.058191, 0.828002, 0.557697,
		0.998305, 0.048964, 0.031469,
		37.726646, 34.552055, 35.783405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.250381, 35.183186, 35.543903>,  <37.027832, 34.517780, 35.761375>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.250381, 35.183186, 35.543903> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.554428, 34.930672, 35.482315>,  <37.736855, 34.779163, 35.445362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.554428, 34.930672, 35.482315>,  <37.250381, 35.183186, 35.543903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.554428, 34.930672, 35.482315> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151679, 0.402788, -0.902638,
		0.631835, 0.662757, 0.401918,
		0.760117, -0.631281, -0.153970,
		37.782463, 34.741287, 35.436123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.789696, 35.601616, 35.265266>,  <37.250381, 35.183186, 35.543903>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.789696, 35.601616, 35.265266> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.924500, 35.238686, 35.164726>,  <38.005383, 35.020927, 35.104401>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.924500, 35.238686, 35.164726>,  <37.789696, 35.601616, 35.265266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.924500, 35.238686, 35.164726> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167498, 0.320490, -0.932325,
		0.926481, 0.272105, 0.259985,
		0.337013, -0.907328, -0.251351,
		38.025604, 34.966488, 35.089321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.565987, 35.587967, 34.947697>,  <37.789696, 35.601616, 35.265266>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.565987, 35.587967, 34.947697> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.365833, 35.261868, 34.831089>,  <38.245739, 35.066208, 34.761124>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.365833, 35.261868, 34.831089>,  <38.565987, 35.587967, 34.947697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.365833, 35.261868, 34.831089> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290447, 0.159127, -0.943567,
		0.815631, -0.556817, 0.157162,
		-0.500386, -0.815250, -0.291515,
		38.215717, 35.017292, 34.743633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.061081, 35.317921, 34.478634>,  <38.565987, 35.587967, 34.947697>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.061081, 35.317921, 34.478634> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.721874, 35.128601, 34.383263>,  <38.518349, 35.015007, 34.326038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.721874, 35.128601, 34.383263>,  <39.061081, 35.317921, 34.478634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.721874, 35.128601, 34.383263> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174189, 0.175974, -0.968861,
		0.500521, -0.863145, -0.066786,
		-0.848020, -0.473302, -0.238429,
		38.467468, 34.986610, 34.311733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.189552, 34.857529, 33.949261>,  <39.061081, 35.317921, 34.478634>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.189552, 34.857529, 33.949261> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.797146, 34.921829, 33.905888>,  <38.561703, 34.960411, 33.879864>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.797146, 34.921829, 33.905888>,  <39.189552, 34.857529, 33.949261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.797146, 34.921829, 33.905888> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123851, 0.089206, -0.988283,
		-0.149195, -0.982956, -0.107422,
		-0.981021, 0.160751, -0.108431,
		38.502838, 34.970055, 33.873360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.016109, 34.572304, 33.248116>,  <39.189552, 34.857529, 33.949261>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.016109, 34.572304, 33.248116> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.698776, 34.805660, 33.317722>,  <38.508377, 34.945675, 33.359486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.698776, 34.805660, 33.317722>,  <39.016109, 34.572304, 33.248116>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.698776, 34.805660, 33.317722> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117155, 0.134199, -0.984005,
		-0.597410, -0.801030, -0.038118,
		-0.793333, 0.583388, 0.174017,
		38.460777, 34.980675, 33.369926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.486687, 34.338787, 32.797657>,  <39.016109, 34.572304, 33.248116>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.486687, 34.338787, 32.797657> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.403366, 34.719765, 32.886623>,  <38.353374, 34.948349, 32.940002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.403366, 34.719765, 32.886623>,  <38.486687, 34.338787, 32.797657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.403366, 34.719765, 32.886623> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311876, 0.150851, -0.938071,
		-0.927009, -0.264763, 0.265622,
		-0.208297, 0.952441, 0.222414,
		38.340878, 35.005497, 32.953346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.796886, 34.550972, 32.550495>,  <38.486687, 34.338787, 32.797657>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.796886, 34.550972, 32.550495> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.989178, 34.897690, 32.603508>,  <38.104553, 35.105721, 32.635315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.989178, 34.897690, 32.603508>,  <37.796886, 34.550972, 32.550495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.989178, 34.897690, 32.603508> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262894, 0.286656, -0.921257,
		-0.836533, 0.408034, 0.365679,
		0.480728, 0.866797, 0.132528,
		38.133396, 35.157730, 32.643265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.313267, 35.026218, 32.228283>,  <37.796886, 34.550972, 32.550495>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.313267, 35.026218, 32.228283> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.647602, 35.244282, 32.254169>,  <37.848202, 35.375118, 32.269699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.647602, 35.244282, 32.254169>,  <37.313267, 35.026218, 32.228283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.647602, 35.244282, 32.254169> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209867, 0.426224, -0.879937,
		-0.507283, 0.721901, 0.470662,
		0.835835, 0.545154, 0.064713,
		37.898354, 35.407829, 32.273582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.120747, 35.722324, 32.005402>,  <37.313267, 35.026218, 32.228283>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.120747, 35.722324, 32.005402> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.518745, 35.716087, 31.965939>,  <37.757545, 35.712345, 31.942261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.518745, 35.716087, 31.965939>,  <37.120747, 35.722324, 32.005402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.518745, 35.716087, 31.965939> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082819, 0.423396, -0.902151,
		0.055837, 0.905811, 0.419987,
		0.994999, -0.015591, -0.098659,
		37.817245, 35.711411, 31.936340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.343689, 36.399471, 31.870165>,  <37.120747, 35.722324, 32.005402>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.343689, 36.399471, 31.870165> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.603912, 36.125809, 31.738281>,  <37.760044, 35.961613, 31.659151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.603912, 36.125809, 31.738281>,  <37.343689, 36.399471, 31.870165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.603912, 36.125809, 31.738281> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157199, 0.303427, -0.939798,
		0.743012, 0.663220, 0.089847,
		0.650555, -0.684157, -0.329707,
		37.799080, 35.920563, 31.639370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.511749, 37.101734, 32.105843>,  <37.343689, 36.399471, 31.870165>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.511749, 37.101734, 32.105843> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.183918, 37.306309, 32.209167>,  <36.987217, 37.429054, 32.271160>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.183918, 37.306309, 32.209167>,  <37.511749, 37.101734, 32.105843>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.183918, 37.306309, 32.209167> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055838, -0.519981, 0.852351,
		0.570236, 0.684147, 0.454724,
		-0.819581, 0.511432, 0.258310,
		36.938046, 37.459740, 32.286659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.505936, 37.104099, 32.922665>,  <37.511749, 37.101734, 32.105843>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.505936, 37.104099, 32.922665> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.138756, 37.248592, 32.857086>,  <36.918449, 37.335289, 32.817738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.138756, 37.248592, 32.857086>,  <37.505936, 37.104099, 32.922665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.138756, 37.248592, 32.857086> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291248, -0.333099, 0.896783,
		0.269337, 0.870951, 0.410977,
		-0.917950, 0.361233, -0.163947,
		36.863369, 37.356964, 32.807903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.224319, 37.348812, 33.519905>,  <37.505936, 37.104099, 32.922665>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.224319, 37.348812, 33.519905> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.882267, 37.282661, 33.323376>,  <36.677036, 37.242970, 33.205460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.882267, 37.282661, 33.323376>,  <37.224319, 37.348812, 33.519905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.882267, 37.282661, 33.323376> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387722, -0.425088, 0.817907,
		-0.344117, 0.889916, 0.299387,
		-0.855135, -0.165377, -0.491320,
		36.625725, 37.233047, 33.175980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.717377, 37.537464, 33.997932>,  <37.224319, 37.348812, 33.519905>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.717377, 37.537464, 33.997932> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.527481, 37.310875, 33.728493>,  <36.413544, 37.174923, 33.566830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.527481, 37.310875, 33.728493>,  <36.717377, 37.537464, 33.997932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.527481, 37.310875, 33.728493> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564100, -0.391638, 0.726919,
		-0.675584, 0.725074, -0.133619,
		-0.474739, -0.566470, -0.673598,
		36.385059, 37.140934, 33.526413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.112801, 37.369308, 34.280582>,  <36.717377, 37.537464, 33.997932>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.112801, 37.369308, 34.280582> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.085667, 37.070541, 34.016006>,  <36.069386, 36.891281, 33.857262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.085667, 37.070541, 34.016006>,  <36.112801, 37.369308, 34.280582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.085667, 37.070541, 34.016006> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525673, -0.536723, 0.659997,
		-0.847977, 0.392475, -0.356227,
		-0.067837, -0.746921, -0.661443,
		36.065315, 36.846466, 33.817574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.375046, 37.167561, 34.268387>,  <36.112801, 37.369308, 34.280582>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.375046, 37.167561, 34.268387> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.577621, 36.856842, 34.118668>,  <35.699165, 36.670410, 34.028835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.577621, 36.856842, 34.118668>,  <35.375046, 37.167561, 34.268387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.577621, 36.856842, 34.118668> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552320, -0.625582, 0.550990,
		-0.662167, -0.072306, -0.745860,
		0.506436, -0.776801, -0.374303,
		35.729553, 36.623802, 34.006378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.907696, 36.572548, 34.144463>,  <35.375046, 37.167561, 34.268387>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.907696, 36.572548, 34.144463> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.257317, 36.378212, 34.144836>,  <35.467087, 36.261612, 34.145061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.257317, 36.378212, 34.144836>,  <34.907696, 36.572548, 34.144463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.257317, 36.378212, 34.144836> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356365, -0.639808, 0.680919,
		-0.330216, -0.595490, -0.732358,
		0.874049, -0.485837, 0.000937,
		35.519531, 36.232460, 34.145119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.804283, 35.902679, 34.136337>,  <34.907696, 36.572548, 34.144463>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.804283, 35.902679, 34.136337> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.160896, 35.901772, 34.317516>,  <35.374863, 35.901226, 34.426224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.160896, 35.901772, 34.317516>,  <34.804283, 35.902679, 34.136337>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.160896, 35.901772, 34.317516> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395912, -0.489707, 0.776814,
		0.220047, -0.871884, -0.437490,
		0.891534, -0.002272, 0.452948,
		35.428356, 35.901089, 34.453400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.820312, 35.279087, 34.332691>,  <34.804283, 35.902679, 34.136337>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.820312, 35.279087, 34.332691> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.085938, 35.456482, 34.573471>,  <35.245312, 35.562920, 34.717937>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.085938, 35.456482, 34.573471>,  <34.820312, 35.279087, 34.332691>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.085938, 35.456482, 34.573471> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131118, -0.723536, 0.677720,
		0.736092, -0.528973, -0.422322,
		0.664060, 0.443491, 0.601947,
		35.285156, 35.589531, 34.754055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.081017, 34.713451, 34.792679>,  <34.820312, 35.279087, 34.332691>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.081017, 34.713451, 34.792679> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.203659, 35.036655, 34.993923>,  <35.277245, 35.230576, 35.114670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.203659, 35.036655, 34.993923>,  <35.081017, 34.713451, 34.792679>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.203659, 35.036655, 34.993923> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053507, -0.513098, 0.856661,
		0.950330, -0.289581, -0.114088,
		0.306611, 0.808006, 0.503107,
		35.295643, 35.279057, 35.144855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.537380, 34.511623, 35.203144>,  <35.081017, 34.713451, 34.792679>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.537380, 34.511623, 35.203144> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.421581, 34.846989, 35.387863>,  <35.352104, 35.048206, 35.498695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.421581, 34.846989, 35.387863>,  <35.537380, 34.511623, 35.203144>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.421581, 34.846989, 35.387863> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095232, -0.454834, 0.885470,
		0.952430, 0.300317, 0.051828,
		-0.289495, 0.838412, 0.461798,
		35.334732, 35.098511, 35.526402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.945686, 34.552624, 35.748196>,  <35.537380, 34.511623, 35.203144>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.945686, 34.552624, 35.748196> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.642834, 34.795670, 35.844166>,  <35.461124, 34.941498, 35.901749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.642834, 34.795670, 35.844166>,  <35.945686, 34.552624, 35.748196>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.642834, 34.795670, 35.844166> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048931, -0.313491, 0.948330,
		0.651430, 0.729748, 0.207622,
		-0.757129, 0.607611, 0.239924,
		35.415695, 34.977951, 35.916142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.402733, 39.796375, 29.287279> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.014465, 39.701084, 29.274363>,  <36.781506, 39.643909, 29.266613>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.014465, 39.701084, 29.274363>,  <37.402733, 39.796375, 29.287279>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.014465, 39.701084, 29.274363> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007989, -0.102288, 0.994723,
		-0.240277, 0.965807, 0.097385,
		-0.970671, -0.238231, -0.032294,
		36.723263, 39.629616, 29.264675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.143646, 40.004013, 29.987804>,  <37.402733, 39.796375, 29.287279>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.143646, 40.004013, 29.987804> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.860249, 39.757156, 29.850887>,  <36.690208, 39.609043, 29.768738>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.860249, 39.757156, 29.850887>,  <37.143646, 40.004013, 29.987804>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.860249, 39.757156, 29.850887> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068683, -0.422430, 0.903790,
		-0.702362, 0.663843, 0.256904,
		-0.708498, -0.617143, -0.342293,
		36.647697, 39.572014, 29.748199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.561321, 40.003620, 30.561010>,  <37.143646, 40.004013, 29.987804>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.561321, 40.003620, 30.561010> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.540104, 39.669155, 30.342644>,  <36.527374, 39.468475, 30.211624>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.540104, 39.669155, 30.342644>,  <36.561321, 40.003620, 30.561010>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.540104, 39.669155, 30.342644> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082300, -0.541164, 0.836880,
		-0.995195, 0.089318, -0.040111,
		-0.053042, -0.836160, -0.545915,
		36.524193, 39.418308, 30.178869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.097523, 39.581509, 30.818720>,  <36.561321, 40.003620, 30.561010>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.097523, 39.581509, 30.818720> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.327194, 39.322498, 30.618307>,  <36.464996, 39.167091, 30.498060>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.327194, 39.322498, 30.618307>,  <36.097523, 39.581509, 30.818720>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.327194, 39.322498, 30.618307> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033048, -0.593132, 0.804427,
		-0.818065, -0.478440, -0.319162,
		0.574176, -0.647525, -0.501032,
		36.499447, 39.128242, 30.467997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.728317, 38.951397, 30.943705>,  <36.097523, 39.581509, 30.818720>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.728317, 38.951397, 30.943705> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.102196, 38.855297, 30.838923>,  <36.326523, 38.797638, 30.776052>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.102196, 38.855297, 30.838923>,  <35.728317, 38.951397, 30.943705>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.102196, 38.855297, 30.838923> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042433, -0.656290, 0.753314,
		-0.352902, -0.715236, -0.603239,
		0.934698, -0.240249, -0.261956,
		36.382607, 38.783222, 30.760336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.621475, 38.267090, 30.927990>,  <35.728317, 38.951397, 30.943705>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.621475, 38.267090, 30.927990> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.017036, 38.325459, 30.916779>,  <36.254372, 38.360477, 30.910051>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.017036, 38.325459, 30.916779>,  <35.621475, 38.267090, 30.927990>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.017036, 38.325459, 30.916779> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128299, -0.743424, 0.656400,
		0.074945, -0.652710, -0.753892,
		0.988900, 0.145917, -0.028026,
		36.313705, 38.369232, 30.908371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.841686, 37.705936, 31.041565>,  <35.621475, 38.267090, 30.927990>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.841686, 37.705936, 31.041565> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.170673, 37.911926, 31.138186>,  <36.368065, 38.035519, 31.196157>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.170673, 37.911926, 31.138186>,  <35.841686, 37.705936, 31.041565>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.170673, 37.911926, 31.138186> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241239, -0.700382, 0.671765,
		0.515119, -0.494235, -0.700274,
		0.822470, 0.514972, 0.241552,
		36.417416, 38.066418, 31.210651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.239059, 37.202679, 31.231174>,  <35.841686, 37.705936, 31.041565>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.239059, 37.202679, 31.231174> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.418545, 37.528603, 31.378008>,  <36.526237, 37.724155, 31.466108>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.418545, 37.528603, 31.378008>,  <36.239059, 37.202679, 31.231174>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.418545, 37.528603, 31.378008> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436102, -0.558169, 0.705877,
		0.780046, -0.156651, -0.605796,
		0.448713, 0.814805, 0.367082,
		36.553158, 37.773045, 31.488132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.051102, 37.079632, 31.378218>,  <36.239059, 37.202679, 31.231174>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.051102, 37.079632, 31.378218> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.919258, 37.371246, 31.618174>,  <36.840153, 37.546215, 31.762148>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.919258, 37.371246, 31.618174>,  <37.051102, 37.079632, 31.378218>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.919258, 37.371246, 31.618174> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296917, -0.523114, 0.798869,
		0.896212, 0.441434, -0.044038,
		-0.329611, 0.729032, 0.599890,
		36.820374, 37.589954, 31.798141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.756241, 36.910034, 31.266680>,  <37.051102, 37.079632, 31.378218>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.756241, 36.910034, 31.266680> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.828316, 36.517971, 31.233631>,  <37.871559, 36.282734, 31.213802>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.828316, 36.517971, 31.233631>,  <37.756241, 36.910034, 31.266680>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.828316, 36.517971, 31.233631> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072621, 0.097025, -0.992629,
		0.980949, 0.172855, 0.088662,
		0.180183, -0.980157, -0.082623,
		37.882370, 36.223923, 31.208843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.464672, 36.977928, 30.960934>,  <37.756241, 36.910034, 31.266680>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.464672, 36.977928, 30.960934> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.290939, 36.628513, 30.873039>,  <38.186699, 36.418865, 30.820303>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.290939, 36.628513, 30.873039>,  <38.464672, 36.977928, 30.960934>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.290939, 36.628513, 30.873039> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221209, 0.133033, -0.966110,
		0.873166, -0.468224, 0.135453,
		-0.434336, -0.873538, -0.219735,
		38.160637, 36.366451, 30.807119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.808456, 36.816345, 30.381716>,  <38.464672, 36.977928, 30.960934>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.808456, 36.816345, 30.381716> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.490257, 36.574024, 30.387150>,  <38.299339, 36.428631, 30.390411>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.490257, 36.574024, 30.387150>,  <38.808456, 36.816345, 30.381716>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.490257, 36.574024, 30.387150> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058801, 0.054858, -0.996761,
		0.603096, -0.793721, -0.079261,
		-0.795498, -0.605804, 0.013587,
		38.251606, 36.392284, 30.391226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.960625, 36.218628, 29.903687>,  <38.808456, 36.816345, 30.381716>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.960625, 36.218628, 29.903687> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.566750, 36.261845, 29.958422>,  <38.330425, 36.287773, 29.991262>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.566750, 36.261845, 29.958422>,  <38.960625, 36.218628, 29.903687>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.566750, 36.261845, 29.958422> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139528, -0.017705, -0.990060,
		-0.104546, -0.993989, 0.032508,
		-0.984684, 0.108042, 0.136838,
		38.271343, 36.294258, 29.999474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.624912, 35.844173, 29.394581>,  <38.960625, 36.218628, 29.903687>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.624912, 35.844173, 29.394581> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.293240, 36.039829, 29.502806>,  <38.094238, 36.157223, 29.567739>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.293240, 36.039829, 29.502806>,  <38.624912, 35.844173, 29.394581>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.293240, 36.039829, 29.502806> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237839, 0.129301, -0.962660,
		-0.505862, -0.862566, 0.009124,
		-0.829178, 0.489143, 0.270560,
		38.044487, 36.186573, 29.583973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.969170, 35.581429, 28.969675>,  <38.624912, 35.844173, 29.394581>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.969170, 35.581429, 28.969675> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.930393, 35.953434, 29.111477>,  <37.907127, 36.176636, 29.196558>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.930393, 35.953434, 29.111477>,  <37.969170, 35.581429, 28.969675>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.930393, 35.953434, 29.111477> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180342, 0.333874, -0.925205,
		-0.978815, -0.153625, 0.135354,
		-0.096943, 0.930015, 0.354506,
		37.901310, 36.232437, 29.217829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.405876, 35.750629, 28.632637>,  <37.969170, 35.581429, 28.969675>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.405876, 35.750629, 28.632637> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.578896, 36.097973, 28.729673>,  <37.682709, 36.306381, 28.787895>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.578896, 36.097973, 28.729673>,  <37.405876, 35.750629, 28.632637>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.578896, 36.097973, 28.729673> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239154, 0.369931, -0.897751,
		-0.869315, 0.330303, 0.367685,
		0.432547, 0.868362, 0.242593,
		37.708660, 36.358482, 28.802452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.962807, 36.256187, 28.267035>,  <37.405876, 35.750629, 28.632637>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.962807, 36.256187, 28.267035> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.290501, 36.465763, 28.360277>,  <37.487118, 36.591507, 28.416224>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.290501, 36.465763, 28.360277>,  <36.962807, 36.256187, 28.267035>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.290501, 36.465763, 28.360277> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090775, 0.519854, -0.849418,
		-0.566222, 0.674716, 0.473445,
		0.819239, 0.523936, 0.233106,
		37.536274, 36.622944, 28.430208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.841915, 36.977322, 28.016108>,  <36.962807, 36.256187, 28.267035>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.841915, 36.977322, 28.016108> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.237404, 36.917744, 28.022295>,  <37.474697, 36.881996, 28.026007>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.237404, 36.917744, 28.022295>,  <36.841915, 36.977322, 28.016108>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.237404, 36.917744, 28.022295> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091718, 0.520684, -0.848809,
		0.118376, 0.840656, 0.528474,
		0.988724, -0.148949, 0.015467,
		37.534019, 36.873058, 28.026936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.171543, 37.657207, 27.958710>,  <36.841915, 36.977322, 28.016108>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.171543, 37.657207, 27.958710> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.445171, 37.386349, 27.850250>,  <37.609348, 37.223835, 27.785175>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.445171, 37.386349, 27.850250>,  <37.171543, 37.657207, 27.958710>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.445171, 37.386349, 27.850250> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217069, 0.543876, -0.810604,
		0.696369, 0.495652, 0.519037,
		0.684070, -0.677146, -0.271148,
		37.650391, 37.183205, 27.768906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.786659, 38.035938, 27.825180>,  <37.171543, 37.657207, 27.958710>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.786659, 38.035938, 27.825180> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.810551, 37.690575, 27.624798>,  <37.824886, 37.483356, 27.504568>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.810551, 37.690575, 27.624798>,  <37.786659, 38.035938, 27.825180>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.810551, 37.690575, 27.624798> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075026, 0.496550, -0.864760,
		0.995391, 0.089233, -0.035122,
		0.059725, -0.863409, -0.500957,
		37.828468, 37.431553, 27.474510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.251694, 38.106281, 27.278461>,  <37.786659, 38.035938, 27.825180>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.251694, 38.106281, 27.278461> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.029968, 37.788517, 27.179152>,  <37.896935, 37.597858, 27.119566>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.029968, 37.788517, 27.179152>,  <38.251694, 38.106281, 27.278461>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.029968, 37.788517, 27.179152> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014239, 0.289204, -0.957162,
		0.832186, -0.534103, -0.148997,
		-0.554313, -0.794415, -0.248277,
		37.863674, 37.550194, 27.104668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.472115, 37.986748, 26.600674>,  <38.251694, 38.106281, 27.278461>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.472115, 37.986748, 26.600674> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.153576, 37.745205, 26.586897>,  <37.962452, 37.600277, 26.578630>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.153576, 37.745205, 26.586897>,  <38.472115, 37.986748, 26.600674>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.153576, 37.745205, 26.586897> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134884, 0.232814, -0.963122,
		0.589610, -0.762332, -0.266851,
		-0.796346, -0.603860, -0.034443,
		37.914673, 37.564049, 26.576565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.494144, 37.615566, 25.972757>,  <38.472115, 37.986748, 26.600674>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.494144, 37.615566, 25.972757> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.107079, 37.600250, 26.072489>,  <37.874840, 37.591061, 26.132328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.107079, 37.600250, 26.072489>,  <38.494144, 37.615566, 25.972757>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.107079, 37.600250, 26.072489> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249689, 0.285883, -0.925163,
		-0.035858, -0.957499, -0.286197,
		-0.967662, -0.038286, 0.249328,
		37.816780, 37.588764, 26.147287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<29.714861, 35.382790, 26.616198> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.071297, 35.478813, 26.770254>,  <30.285158, 35.536427, 26.862688>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.071297, 35.478813, 26.770254>,  <29.714861, 35.382790, 26.616198>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.071297, 35.478813, 26.770254> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026427, -0.819760, 0.572097,
		0.453059, -0.519967, -0.724135,
		0.891089, 0.240057, 0.385141,
		30.338623, 35.550831, 26.885796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.888882, 34.806797, 26.820904>,  <29.714861, 35.382790, 26.616198>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.888882, 34.806797, 26.820904> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.172371, 35.035854, 26.985729>,  <30.342464, 35.173286, 27.084625>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.172371, 35.035854, 26.985729>,  <29.888882, 34.806797, 26.820904>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.172371, 35.035854, 26.985729> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230534, -0.739998, 0.631868,
		0.666759, -0.352824, -0.656466,
		0.708721, 0.572641, 0.412063,
		30.384987, 35.207645, 27.109348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.414082, 34.369801, 26.945866>,  <29.888882, 34.806797, 26.820904>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.414082, 34.369801, 26.945866> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.451929, 34.683266, 27.191441>,  <30.474638, 34.871346, 27.338785>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.451929, 34.683266, 27.191441>,  <30.414082, 34.369801, 26.945866>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.451929, 34.683266, 27.191441> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311105, -0.609093, 0.729533,
		0.945654, 0.121971, -0.301434,
		0.094620, 0.783664, 0.613937,
		30.480314, 34.918365, 27.375622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.907856, 34.204762, 27.381540>,  <30.414082, 34.369801, 26.945866>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.907856, 34.204762, 27.381540> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.730635, 34.491165, 27.597328>,  <30.624302, 34.663010, 27.726801>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.730635, 34.491165, 27.597328>,  <30.907856, 34.204762, 27.381540>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.730635, 34.491165, 27.597328> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037906, -0.586255, 0.809240,
		0.895693, 0.378987, 0.232602,
		-0.443055, 0.716013, 0.539470,
		30.597717, 34.705971, 27.759169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.349625, 34.373730, 27.952648>,  <30.907856, 34.204762, 27.381540>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.349625, 34.373730, 27.952648> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.969519, 34.466602, 28.035683>,  <30.741455, 34.522327, 28.085503>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.969519, 34.466602, 28.035683>,  <31.349625, 34.373730, 27.952648>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.969519, 34.466602, 28.035683> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026702, -0.603325, 0.797048,
		0.310302, 0.762948, 0.567118,
		-0.950263, 0.232183, 0.207586,
		30.684441, 34.536259, 28.097958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.503296, 34.932011, 28.333839>,  <31.349625, 34.373730, 27.952648>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.503296, 34.932011, 28.333839> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.143307, 34.824600, 28.471209>,  <30.927313, 34.760155, 28.553631>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.143307, 34.824600, 28.471209>,  <31.503296, 34.932011, 28.333839>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.143307, 34.824600, 28.471209> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410496, -0.256797, 0.874956,
		-0.146758, 0.928412, 0.341339,
		-0.899975, -0.268525, 0.343423,
		30.873314, 34.744041, 28.574236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.558334, 35.110016, 29.051378>,  <31.503296, 34.932011, 28.333839>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.558334, 35.110016, 29.051378> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.256144, 34.851215, 29.010113>,  <31.074829, 34.695934, 28.985353>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.256144, 34.851215, 29.010113>,  <31.558334, 35.110016, 29.051378>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.256144, 34.851215, 29.010113> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301045, -0.482651, 0.822448,
		-0.581918, 0.590283, 0.559408,
		-0.755476, -0.647004, -0.103161,
		31.029501, 34.657116, 28.979164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.271494, 35.152420, 29.732080>,  <31.558334, 35.110016, 29.051378>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.271494, 35.152420, 29.732080> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.188929, 34.804588, 29.552650>,  <31.139389, 34.595890, 29.444992>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.188929, 34.804588, 29.552650>,  <31.271494, 35.152420, 29.732080>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.188929, 34.804588, 29.552650> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284981, -0.492001, 0.822630,
		-0.936044, 0.041968, 0.349371,
		-0.206415, -0.869582, -0.448575,
		31.127005, 34.543713, 29.418077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.069092, 34.712646, 30.208858>,  <31.271494, 35.152420, 29.732080>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.069092, 34.712646, 30.208858> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.109951, 34.433071, 29.925718>,  <31.134466, 34.265327, 29.755835>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.109951, 34.433071, 29.925718>,  <31.069092, 34.712646, 30.208858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.109951, 34.433071, 29.925718> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280143, -0.662560, 0.694648,
		-0.954508, -0.269257, 0.128122,
		0.102150, -0.698939, -0.707849,
		31.140596, 34.223389, 29.713364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.647474, 34.036015, 30.305801>,  <31.069092, 34.712646, 30.208858>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.647474, 34.036015, 30.305801> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.956100, 33.932503, 30.073345>,  <31.141275, 33.870396, 29.933872>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.956100, 33.932503, 30.073345>,  <30.647474, 34.036015, 30.305801>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.956100, 33.932503, 30.073345> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328538, -0.620175, 0.712352,
		-0.544747, -0.740552, -0.393488,
		0.771565, -0.258777, -0.581138,
		31.187571, 33.854870, 29.899004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.546858, 33.360676, 30.408512>,  <30.647474, 34.036015, 30.305801>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.546858, 33.360676, 30.408512> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.927221, 33.441460, 30.314716>,  <31.155439, 33.489929, 30.258440>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.927221, 33.441460, 30.314716>,  <30.546858, 33.360676, 30.408512>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.927221, 33.441460, 30.314716> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307689, -0.535853, 0.786250,
		0.033137, -0.819802, -0.571687,
		0.950910, 0.201956, -0.234488,
		31.212494, 33.502045, 30.244370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.926741, 32.781120, 30.546467>,  <30.546858, 33.360676, 30.408512>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.926741, 32.781120, 30.546467> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.208431, 33.064781, 30.560152>,  <31.377445, 33.234978, 30.568363>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.208431, 33.064781, 30.560152>,  <30.926741, 32.781120, 30.546467>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.208431, 33.064781, 30.560152> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352917, -0.391468, 0.849825,
		0.616047, -0.586395, -0.525954,
		0.704227, 0.709150, 0.034214,
		31.419699, 33.277527, 30.570415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.440233, 32.517696, 30.953121>,  <30.926741, 32.781120, 30.546467>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.440233, 32.517696, 30.953121> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.584343, 32.890678, 30.942284>,  <31.670809, 33.114468, 30.935781>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.584343, 32.890678, 30.942284>,  <31.440233, 32.517696, 30.953121>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.584343, 32.890678, 30.942284> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342373, -0.105152, 0.933661,
		0.867746, -0.345651, -0.357131,
		0.360274, 0.932453, -0.027096,
		31.692425, 33.170414, 30.934155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.215061, 32.437016, 31.107157>,  <31.440233, 32.517696, 30.953121>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.215061, 32.437016, 31.107157> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.096474, 32.812916, 31.175253>,  <32.025322, 33.038456, 31.216110>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.096474, 32.812916, 31.175253>,  <32.215061, 32.437016, 31.107157>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.096474, 32.812916, 31.175253> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509243, 0.004751, 0.860610,
		0.807948, 0.341834, -0.479968,
		-0.296466, 0.939748, 0.170238,
		32.007534, 33.094841, 31.226324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.865406, 32.459835, 30.566942>,  <32.215061, 32.437016, 31.107157>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.865406, 32.459835, 30.566942> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.169815, 32.229725, 30.447004>,  <33.352459, 32.091660, 30.375042>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.169815, 32.229725, 30.447004>,  <32.865406, 32.459835, 30.566942>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.169815, 32.229725, 30.447004> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249404, 0.167234, -0.953850,
		0.598871, 0.800681, -0.016207,
		0.761020, -0.575276, -0.299844,
		33.398121, 32.057140, 30.357052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.118813, 32.862373, 30.064852>,  <32.865406, 32.459835, 30.566942>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.118813, 32.862373, 30.064852> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.283497, 32.505569, 29.990215>,  <33.382309, 32.291489, 29.945433>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.283497, 32.505569, 29.990215>,  <33.118813, 32.862373, 30.064852>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.283497, 32.505569, 29.990215> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177225, 0.122471, -0.976521,
		0.893915, 0.435116, -0.107663,
		0.411714, -0.892006, -0.186592,
		33.407013, 32.237968, 29.934238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.730774, 32.868240, 29.562624>,  <33.118813, 32.862373, 30.064852>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.730774, 32.868240, 29.562624> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.587818, 32.494743, 29.554579>,  <33.502045, 32.270645, 29.549751>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.587818, 32.494743, 29.554579>,  <33.730774, 32.868240, 29.562624>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.587818, 32.494743, 29.554579> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023038, 0.030343, -0.999274,
		0.933671, -0.356666, -0.032356,
		-0.357389, -0.933739, -0.020114,
		33.480602, 32.214622, 29.548544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.154160, 32.502937, 29.035765>,  <33.730774, 32.868240, 29.562624>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.154160, 32.502937, 29.035765> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.802986, 32.315479, 29.074963>,  <33.592281, 32.203007, 29.098482>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.802986, 32.315479, 29.074963>,  <34.154160, 32.502937, 29.035765>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.802986, 32.315479, 29.074963> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102798, -0.015392, -0.994583,
		0.467613, -0.883254, -0.034663,
		-0.877935, -0.468643, 0.097994,
		33.539604, 32.174885, 29.104361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.215744, 31.888458, 28.709368>,  <34.154160, 32.502937, 29.035765>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.215744, 31.888458, 28.709368> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.819534, 31.941147, 28.724947>,  <33.581810, 31.972761, 28.734295>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.819534, 31.941147, 28.724947>,  <34.215744, 31.888458, 28.709368>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.819534, 31.941147, 28.724947> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048365, -0.069043, -0.996441,
		-0.128570, -0.988878, 0.074760,
		-0.990520, 0.131728, 0.038950,
		33.522377, 31.980663, 28.736631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.027973, 31.538507, 28.228458>,  <34.215744, 31.888458, 28.709368>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.027973, 31.538507, 28.228458> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.697029, 31.759392, 28.269518>,  <33.498463, 31.891922, 28.294153>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.697029, 31.759392, 28.269518>,  <34.027973, 31.538507, 28.228458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.697029, 31.759392, 28.269518> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088227, 0.052716, -0.994704,
		-0.554698, -0.832036, 0.005105,
		-0.827361, 0.552211, 0.102650,
		33.448822, 31.925055, 28.300312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.601913, 31.297915, 27.746834>,  <34.027973, 31.538507, 28.228458>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.601913, 31.297915, 27.746834> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.451904, 31.656967, 27.839455>,  <33.361900, 31.872398, 27.895027>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.451904, 31.656967, 27.839455>,  <33.601913, 31.297915, 27.746834>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.451904, 31.656967, 27.839455> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040786, 0.233564, -0.971485,
		-0.926119, -0.373770, -0.050981,
		-0.375020, 0.897632, 0.231553,
		33.339397, 31.926256, 27.908920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.067173, 31.345728, 27.197069>,  <33.601913, 31.297915, 27.746834>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.067173, 31.345728, 27.197069> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.120747, 31.714277, 27.343018>,  <33.152889, 31.935408, 27.430586>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.120747, 31.714277, 27.343018>,  <33.067173, 31.345728, 27.197069>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.120747, 31.714277, 27.343018> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046524, 0.373626, -0.926412,
		-0.989898, 0.107101, 0.092906,
		0.133931, 0.921376, 0.364869,
		33.160927, 31.990690, 27.452478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.414894, 31.769718, 26.939047>,  <33.067173, 31.345728, 27.197069>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.414894, 31.769718, 26.939047> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.672718, 32.054131, 27.051462>,  <32.827412, 32.224777, 27.118912>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.672718, 32.054131, 27.051462>,  <32.414894, 31.769718, 26.939047>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.672718, 32.054131, 27.051462> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155120, 0.481556, -0.862578,
		-0.748655, 0.512386, 0.420685,
		0.644556, 0.711030, 0.281039,
		32.866085, 32.267441, 27.135775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.108852, 32.428028, 26.809332>,  <32.414894, 31.769718, 26.939047>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.108852, 32.428028, 26.809332> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.479305, 32.566235, 26.869869>,  <32.701576, 32.649158, 26.906191>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.479305, 32.566235, 26.869869>,  <32.108852, 32.428028, 26.809332>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.479305, 32.566235, 26.869869> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089794, 0.591624, -0.801198,
		-0.366364, 0.728423, 0.578945,
		0.926129, 0.345516, 0.151341,
		32.757145, 32.669888, 26.915272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.077862, 33.203987, 26.894541>,  <32.108852, 32.428028, 26.809332>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.077862, 33.203987, 26.894541> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.440445, 33.090282, 26.769621>,  <32.657993, 33.022060, 26.694670>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.440445, 33.090282, 26.769621>,  <32.077862, 33.203987, 26.894541>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.440445, 33.090282, 26.769621> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033087, 0.785058, -0.618537,
		0.420998, 0.550345, 0.721028,
		0.906458, -0.284259, -0.312299,
		32.712383, 33.005005, 26.675932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.570347, 33.856651, 26.938780>,  <32.077862, 33.203987, 26.894541>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.570347, 33.856651, 26.938780> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.742855, 33.579132, 26.708076>,  <32.846359, 33.412621, 26.569654>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.742855, 33.579132, 26.708076>,  <32.570347, 33.856651, 26.938780>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.742855, 33.579132, 26.708076> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036789, 0.652256, -0.757106,
		0.901473, 0.305298, 0.306822,
		0.431269, -0.693798, -0.576759,
		32.872234, 33.370991, 26.535049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.310570, 34.052921, 26.804533>,  <32.570347, 33.856651, 26.938780>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.310570, 34.052921, 26.804533> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.190750, 33.833710, 26.492140>,  <33.118858, 33.702183, 26.304703>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.190750, 33.833710, 26.492140>,  <33.310570, 34.052921, 26.804533>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.190750, 33.833710, 26.492140> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255575, 0.742565, -0.619095,
		0.919212, -0.385050, -0.082373,
		-0.299550, -0.548027, -0.780984,
		33.100883, 33.669300, 26.257845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.734047, 34.241909, 26.301155>,  <33.310570, 34.052921, 26.804533>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.734047, 34.241909, 26.301155> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.437771, 34.074329, 26.091064>,  <33.260006, 33.973782, 25.965010>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.437771, 34.074329, 26.091064>,  <33.734047, 34.241909, 26.301155>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.437771, 34.074329, 26.091064> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135472, 0.672568, -0.727530,
		0.658039, -0.610032, -0.441414,
		-0.740697, -0.418944, -0.525218,
		33.215565, 33.948643, 25.933496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.414268, 34.031540, 25.971266>,  <33.734047, 34.241909, 26.301155>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.414268, 34.031540, 25.971266> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.775223, 34.201248, 25.941055>,  <34.991795, 34.303074, 25.922930>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.775223, 34.201248, 25.941055>,  <34.414268, 34.031540, 25.971266>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.775223, 34.201248, 25.941055> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335350, -0.581281, 0.741386,
		0.270644, -0.694341, -0.666815,
		0.902382, 0.424268, -0.075527,
		35.045937, 34.328529, 25.918398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.847069, 33.504986, 26.100861>,  <34.414268, 34.031540, 25.971266>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.847069, 33.504986, 26.100861> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.080345, 33.822086, 26.171791>,  <35.220310, 34.012344, 26.214350>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.080345, 33.822086, 26.171791>,  <34.847069, 33.504986, 26.100861>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.080345, 33.822086, 26.171791> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435826, -0.489551, 0.755245,
		0.685529, -0.363166, -0.631000,
		0.583186, 0.792748, 0.177324,
		35.255302, 34.059910, 26.224989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.442986, 33.220234, 26.152739>,  <34.847069, 33.504986, 26.100861>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.442986, 33.220234, 26.152739> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.492180, 33.572838, 26.335083>,  <35.521694, 33.784401, 26.444489>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.492180, 33.572838, 26.335083>,  <35.442986, 33.220234, 26.152739>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.492180, 33.572838, 26.335083> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370840, -0.466893, 0.802801,
		0.920517, 0.070320, -0.384321,
		0.122984, 0.881514, 0.455860,
		35.529076, 33.837292, 26.471842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.084404, 33.222580, 26.366709>,  <35.442986, 33.220234, 26.152739>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.084404, 33.222580, 26.366709> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.960873, 33.532001, 26.588066>,  <35.886753, 33.717655, 26.720881>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.960873, 33.532001, 26.588066>,  <36.084404, 33.222580, 26.366709>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.960873, 33.532001, 26.588066> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638975, -0.262240, 0.723147,
		0.704513, 0.576931, -0.413294,
		-0.308824, 0.773551, 0.553396,
		35.868225, 33.764069, 26.754086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.696941, 33.518013, 26.590385>,  <36.084404, 33.222580, 26.366709>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.696941, 33.518013, 26.590385> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.405407, 33.655190, 26.827431>,  <36.230488, 33.737495, 26.969658>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.405407, 33.655190, 26.827431>,  <36.696941, 33.518013, 26.590385>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.405407, 33.655190, 26.827431> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494665, -0.334691, 0.802052,
		0.473400, 0.877709, 0.074293,
		-0.728834, 0.342942, 0.592615,
		36.186756, 33.758072, 27.005215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.031937, 33.933529, 27.090254>,  <36.696941, 33.518013, 26.590385>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.031937, 33.933529, 27.090254> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.679924, 33.831459, 27.250467>,  <36.468716, 33.770218, 27.346596>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.679924, 33.831459, 27.250467>,  <37.031937, 33.933529, 27.090254>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.679924, 33.831459, 27.250467> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466219, -0.303558, 0.830959,
		-0.090454, 0.918008, 0.386108,
		-0.880033, -0.255175, 0.400535,
		36.415913, 33.754906, 27.370628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.962273, 34.241257, 27.697294>,  <37.031937, 33.933529, 27.090254>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.962273, 34.241257, 27.697294> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.693787, 33.947208, 27.735390>,  <36.532696, 33.770779, 27.758247>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.693787, 33.947208, 27.735390>,  <36.962273, 34.241257, 27.697294>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.693787, 33.947208, 27.735390> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341640, -0.192772, 0.919848,
		-0.657838, 0.649955, 0.380537,
		-0.671217, -0.735118, 0.095238,
		36.492420, 33.726673, 27.763962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.638954, 34.435009, 28.329554>,  <36.962273, 34.241257, 27.697294>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.638954, 34.435009, 28.329554> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.558022, 34.047680, 28.271023>,  <36.509460, 33.815281, 28.235905>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.558022, 34.047680, 28.271023>,  <36.638954, 34.435009, 28.329554>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.558022, 34.047680, 28.271023> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131291, -0.174891, 0.975795,
		-0.970477, 0.178222, 0.162518,
		-0.202331, -0.968323, -0.146329,
		36.497322, 33.757183, 28.227123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.282635, 34.221020, 28.923985>,  <36.638954, 34.435009, 28.329554>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.282635, 34.221020, 28.923985> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.405254, 33.874950, 28.765236>,  <36.478825, 33.667309, 28.669987>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.405254, 33.874950, 28.765236>,  <36.282635, 34.221020, 28.923985>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.405254, 33.874950, 28.765236> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118025, -0.379177, 0.917766,
		-0.944509, -0.328182, -0.014125,
		0.306550, -0.865171, -0.396870,
		36.497219, 33.615398, 28.646175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.814442, 33.859035, 29.192980>,  <36.282635, 34.221020, 28.923985>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.814442, 33.859035, 29.192980> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.154846, 33.662991, 29.117535>,  <36.359089, 33.545364, 29.072268>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.154846, 33.662991, 29.117535>,  <35.814442, 33.859035, 29.192980>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.154846, 33.662991, 29.117535> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093947, -0.211281, 0.972900,
		-0.516681, -0.845665, -0.133757,
		0.851008, -0.490113, -0.188612,
		36.410149, 33.515957, 29.060951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.856544, 33.340118, 29.752632>,  <35.814442, 33.859035, 29.192980>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.856544, 33.340118, 29.752632> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.225647, 33.314133, 29.600685>,  <36.447109, 33.298542, 29.509518>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.225647, 33.314133, 29.600685>,  <35.856544, 33.340118, 29.752632>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.225647, 33.314133, 29.600685> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345223, -0.298771, 0.889695,
		-0.171288, -0.952111, -0.253268,
		0.922757, -0.064960, -0.379867,
		36.502476, 33.294643, 29.486725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.107491, 32.794842, 30.026304>,  <35.856544, 33.340118, 29.752632>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.107491, 32.794842, 30.026304> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.446011, 32.984528, 29.929230>,  <36.649124, 33.098339, 29.870985>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.446011, 32.984528, 29.929230>,  <36.107491, 32.794842, 30.026304>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.446011, 32.984528, 29.929230> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431688, -0.343579, 0.834026,
		0.312127, -0.810599, -0.495485,
		0.846299, 0.474217, -0.242685,
		36.699902, 33.126793, 29.856424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.631638, 32.298733, 30.142839>,  <36.107491, 32.794842, 30.026304>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.631638, 32.298733, 30.142839> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.838364, 32.640404, 30.119957>,  <36.962399, 32.845406, 30.106228>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.838364, 32.640404, 30.119957>,  <36.631638, 32.298733, 30.142839>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.838364, 32.640404, 30.119957> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652367, -0.349681, 0.672414,
		0.554360, -0.384835, -0.737962,
		0.516819, 0.854181, -0.057204,
		36.993408, 32.896660, 30.102797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.429760, 32.108559, 30.095324>,  <36.631638, 32.298733, 30.142839>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.429760, 32.108559, 30.095324> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.346111, 32.469593, 30.245848>,  <37.295921, 32.686214, 30.336163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.346111, 32.469593, 30.245848>,  <37.429760, 32.108559, 30.095324>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.346111, 32.469593, 30.245848> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546268, -0.211355, 0.810506,
		0.811085, 0.375062, -0.448854,
		-0.209123, 0.902584, 0.376311,
		37.283375, 32.740368, 30.358742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<38.120148, 37.326080, 25.316370> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.842857, 37.472816, 25.564522>,  <37.676483, 37.560856, 25.713413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.842857, 37.472816, 25.564522>,  <38.120148, 37.326080, 25.316370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.842857, 37.472816, 25.564522> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600391, 0.182264, -0.778659,
		-0.398714, -0.912256, 0.093896,
		-0.693223, 0.366837, 0.620382,
		37.634892, 37.582867, 25.750637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.423828, 37.148491, 24.960909>,  <38.120148, 37.326080, 25.316370>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.423828, 37.148491, 24.960909> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.330509, 37.455822, 25.199316>,  <37.274517, 37.640221, 25.342360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.330509, 37.455822, 25.199316>,  <37.423828, 37.148491, 24.960909>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.330509, 37.455822, 25.199316> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431471, 0.467494, -0.771545,
		-0.871437, -0.437167, 0.222446,
		-0.233302, 0.768332, 0.596017,
		37.260517, 37.686321, 25.378120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.736031, 37.342628, 24.749107>,  <37.423828, 37.148491, 24.960909>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.736031, 37.342628, 24.749107> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.897690, 37.657471, 24.935493>,  <36.994686, 37.846378, 25.047325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.897690, 37.657471, 24.935493>,  <36.736031, 37.342628, 24.749107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.897690, 37.657471, 24.935493> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410193, 0.611287, -0.676808,
		-0.817559, 0.082398, 0.569919,
		0.404152, 0.787108, 0.465964,
		37.018936, 37.893604, 25.075283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.219376, 37.730507, 24.904575>,  <36.736031, 37.342628, 24.749107>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.219376, 37.730507, 24.904575> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.555557, 37.945572, 24.877583>,  <36.757267, 38.074612, 24.861387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.555557, 37.945572, 24.877583>,  <36.219376, 37.730507, 24.904575>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.555557, 37.945572, 24.877583> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451602, 0.626161, -0.635593,
		-0.299476, 0.564665, 0.769069,
		0.840458, 0.537658, -0.067484,
		36.807693, 38.106869, 24.857338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.012672, 38.481098, 24.591412>,  <36.219376, 37.730507, 24.904575>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.012672, 38.481098, 24.591412> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.411209, 38.511616, 24.576038>,  <36.650333, 38.529926, 24.566814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.411209, 38.511616, 24.576038>,  <36.012672, 38.481098, 24.591412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.411209, 38.511616, 24.576038> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072617, 0.519451, -0.851409,
		-0.044989, 0.851088, 0.523093,
		0.996345, 0.076289, -0.038433,
		36.710114, 38.534504, 24.564508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.190483, 39.190929, 24.362221>,  <36.012672, 38.481098, 24.591412>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.190483, 39.190929, 24.362221> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.511116, 38.967014, 24.278215>,  <36.703495, 38.832664, 24.227812>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.511116, 38.967014, 24.278215>,  <36.190483, 39.190929, 24.362221>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.511116, 38.967014, 24.278215> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046239, 0.408245, -0.911701,
		0.596099, 0.721089, 0.353124,
		0.801579, -0.559792, -0.210012,
		36.751591, 38.799076, 24.215212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.661995, 39.622398, 24.128998>,  <36.190483, 39.190929, 24.362221>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.661995, 39.622398, 24.128998> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.737667, 39.263687, 23.969002>,  <36.783070, 39.048458, 23.873003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.737667, 39.263687, 23.969002>,  <36.661995, 39.622398, 24.128998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.737667, 39.263687, 23.969002> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020569, 0.410877, -0.911458,
		0.981727, 0.164200, 0.096175,
		0.189178, -0.896782, -0.399992,
		36.794422, 38.994652, 23.849005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.285278, 39.809139, 23.854385>,  <36.661995, 39.622398, 24.128998>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.285278, 39.809139, 23.854385> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.174870, 39.467609, 23.677841>,  <37.108624, 39.262691, 23.571915>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.174870, 39.467609, 23.677841>,  <37.285278, 39.809139, 23.854385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.174870, 39.467609, 23.677841> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058902, 0.443310, -0.894431,
		0.959345, -0.272880, -0.072072,
		-0.276023, -0.853823, -0.441360,
		37.092064, 39.211464, 23.545433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.791317, 39.653854, 23.402840>,  <37.285278, 39.809139, 23.854385>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.791317, 39.653854, 23.402840> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.453232, 39.467152, 23.298721>,  <37.250381, 39.355129, 23.236250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.453232, 39.467152, 23.298721>,  <37.791317, 39.653854, 23.402840>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.453232, 39.467152, 23.298721> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119746, 0.309270, -0.943405,
		0.520841, -0.828548, -0.205507,
		-0.845213, -0.466756, -0.260296,
		37.199669, 39.327126, 23.220633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.870842, 39.310749, 22.810055>,  <37.791317, 39.653854, 23.402840>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.870842, 39.310749, 22.810055> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.471218, 39.321003, 22.796062>,  <37.231445, 39.327156, 22.787666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.471218, 39.321003, 22.796062>,  <37.870842, 39.310749, 22.810055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.471218, 39.321003, 22.796062> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042110, 0.380293, -0.923907,
		-0.010384, -0.924511, -0.381015,
		-0.999059, 0.025639, -0.034982,
		37.171501, 39.328693, 22.785568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.693577, 39.090107, 22.218037>,  <37.870842, 39.310749, 22.810055>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.693577, 39.090107, 22.218037> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.360531, 39.283615, 22.325897>,  <37.160702, 39.399719, 22.390614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.360531, 39.283615, 22.325897>,  <37.693577, 39.090107, 22.218037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.360531, 39.283615, 22.325897> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056778, 0.409747, -0.910430,
		-0.550933, -0.773349, -0.313694,
		-0.832616, 0.483775, 0.269653,
		37.110744, 39.428749, 22.406794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.316727, 38.956722, 21.646458>,  <37.693577, 39.090107, 22.218037>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.316727, 38.956722, 21.646458> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.185543, 39.280216, 21.841763>,  <37.106834, 39.474312, 21.958944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.185543, 39.280216, 21.841763>,  <37.316727, 38.956722, 21.646458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.185543, 39.280216, 21.841763> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178699, 0.454406, -0.872687,
		-0.927637, -0.373455, -0.004506,
		-0.327957, 0.808731, 0.488260,
		37.087154, 39.522835, 21.988241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.710510, 39.011574, 21.347002>,  <37.316727, 38.956722, 21.646458>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.710510, 39.011574, 21.347002> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.831814, 39.364025, 21.492134>,  <36.904598, 39.575497, 21.579212>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.831814, 39.364025, 21.492134>,  <36.710510, 39.011574, 21.347002>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.831814, 39.364025, 21.492134> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190358, 0.429104, -0.882969,
		-0.933700, 0.198704, 0.297861,
		0.303263, 0.881128, 0.362829,
		36.922794, 39.628365, 21.600983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.571888, 38.296593, 21.658056>,  <36.710510, 39.011574, 21.347002>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.571888, 38.296593, 21.658056> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.249870, 38.192680, 21.444733>,  <36.056660, 38.130333, 21.316738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.249870, 38.192680, 21.444733>,  <36.571888, 38.296593, 21.658056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.249870, 38.192680, 21.444733> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384097, -0.456855, 0.802342,
		-0.452081, 0.850762, 0.268006,
		-0.805042, -0.259783, -0.533311,
		36.008358, 38.114746, 21.284739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.036621, 38.428097, 22.178324>,  <36.571888, 38.296593, 21.658056>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.036621, 38.428097, 22.178324> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.978897, 38.122265, 21.927055>,  <35.944263, 37.938766, 21.776295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.978897, 38.122265, 21.927055>,  <36.036621, 38.428097, 22.178324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.978897, 38.122265, 21.927055> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316336, -0.565857, 0.761405,
		-0.937607, 0.308590, -0.160205,
		-0.144308, -0.764577, -0.628169,
		35.935604, 37.892891, 21.738604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.437263, 38.097115, 22.277361>,  <36.036621, 38.428097, 22.178324>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.437263, 38.097115, 22.277361> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.617233, 37.808708, 22.066568>,  <35.725216, 37.635666, 21.940092>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.617233, 37.808708, 22.066568>,  <35.437263, 38.097115, 22.277361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.617233, 37.808708, 22.066568> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475959, -0.692885, 0.541639,
		-0.755669, 0.007129, -0.654915,
		0.449920, -0.721013, -0.526985,
		35.752209, 37.592403, 21.908474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.934238, 37.575375, 22.177256>,  <35.437263, 38.097115, 22.277361>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.934238, 37.575375, 22.177256> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.288536, 37.399979, 22.116343>,  <35.501114, 37.294739, 22.079796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.288536, 37.399979, 22.116343>,  <34.934238, 37.575375, 22.177256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.288536, 37.399979, 22.116343> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293106, -0.782730, 0.549019,
		-0.359935, -0.441654, -0.821820,
		0.885740, -0.438492, -0.152281,
		35.554256, 37.268433, 22.070658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.787315, 36.888340, 21.859249>,  <34.934238, 37.575375, 22.177256>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.787315, 36.888340, 21.859249> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.139484, 36.889153, 22.048922>,  <35.350784, 36.889641, 22.162725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.139484, 36.889153, 22.048922>,  <34.787315, 36.888340, 21.859249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.139484, 36.889153, 22.048922> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277978, -0.807938, 0.519582,
		0.384165, -0.589264, -0.710764,
		0.880424, 0.002028, 0.474183,
		35.403610, 36.889763, 22.191177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.832512, 36.248936, 22.105604>,  <34.787315, 36.888340, 21.859249>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.832512, 36.248936, 22.105604> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.148182, 36.415848, 22.285860>,  <35.337585, 36.515995, 22.394014>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.148182, 36.415848, 22.285860>,  <34.832512, 36.248936, 22.105604>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.148182, 36.415848, 22.285860> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010107, -0.724824, 0.688860,
		0.614080, -0.548189, -0.567798,
		0.789179, 0.417276, 0.450641,
		35.384937, 36.541031, 22.421053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.300686, 35.710800, 22.295210>,  <34.832512, 36.248936, 22.105604>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.300686, 35.710800, 22.295210> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.412617, 36.018581, 22.524868>,  <35.479774, 36.203251, 22.662663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.412617, 36.018581, 22.524868>,  <35.300686, 35.710800, 22.295210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.412617, 36.018581, 22.524868> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059278, -0.610741, 0.789608,
		0.958219, -0.186918, -0.216513,
		0.279825, 0.769453, 0.574144,
		35.496563, 36.249416, 22.697111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.032528, 35.571133, 22.551374>,  <35.300686, 35.710800, 22.295210>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.032528, 35.571133, 22.551374> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.835217, 35.817390, 22.797188>,  <35.716831, 35.965145, 22.944675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.835217, 35.817390, 22.797188>,  <36.032528, 35.571133, 22.551374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.835217, 35.817390, 22.797188> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179446, -0.619252, 0.764412,
		0.851161, 0.487344, 0.194987,
		-0.493278, 0.615649, 0.614535,
		35.687233, 36.002087, 22.981548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.467022, 35.621170, 23.163591>,  <36.032528, 35.571133, 22.551374>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.467022, 35.621170, 23.163591> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.111389, 35.737602, 23.304905>,  <35.898010, 35.807461, 23.389692>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.111389, 35.737602, 23.304905>,  <36.467022, 35.621170, 23.163591>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.111389, 35.737602, 23.304905> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171055, -0.504595, 0.846241,
		0.424592, 0.812806, 0.398834,
		-0.889079, 0.291084, 0.353282,
		35.844666, 35.824928, 23.410889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.510117, 35.569019, 23.901867>,  <36.467022, 35.621170, 23.163591>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.510117, 35.569019, 23.901867> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.115532, 35.631531, 23.882019>,  <35.878780, 35.669037, 23.870111>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.115532, 35.631531, 23.882019>,  <36.510117, 35.569019, 23.901867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.115532, 35.631531, 23.882019> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108501, -0.395289, 0.912126,
		0.122932, 0.905165, 0.406895,
		-0.986466, 0.156278, -0.049617,
		35.819592, 35.678413, 23.867134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.292877, 35.849102, 24.533133>,  <36.510117, 35.569019, 23.901867>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.292877, 35.849102, 24.533133> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.959213, 35.680527, 24.390823>,  <35.759014, 35.579380, 24.305437>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.959213, 35.680527, 24.390823>,  <36.292877, 35.849102, 24.533133>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.959213, 35.680527, 24.390823> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181530, -0.399330, 0.898656,
		-0.520797, 0.814203, 0.256600,
		-0.834156, -0.421437, -0.355772,
		35.708965, 35.554096, 24.284092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.820831, 35.938187, 25.108654>,  <36.292877, 35.849102, 24.533133>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.820831, 35.938187, 25.108654> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.634579, 35.669281, 24.878435>,  <35.522827, 35.507938, 24.740303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.634579, 35.669281, 24.878435>,  <35.820831, 35.938187, 25.108654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.634579, 35.669281, 24.878435> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305825, -0.488054, 0.817480,
		-0.830459, 0.556659, 0.021657,
		-0.465628, -0.672260, -0.575549,
		35.494892, 35.467602, 24.705770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.159046, 35.884945, 25.335506>,  <35.820831, 35.938187, 25.108654>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.159046, 35.884945, 25.335506> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.183521, 35.531773, 25.149307>,  <35.198208, 35.319870, 25.037588>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.183521, 35.531773, 25.149307>,  <35.159046, 35.884945, 25.335506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.183521, 35.531773, 25.149307> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368045, -0.453467, 0.811733,
		-0.927793, 0.121653, -0.352706,
		0.061191, -0.882932, -0.465497,
		35.201878, 35.266891, 25.009659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.664169, 35.453732, 25.537468>,  <35.159046, 35.884945, 25.335506>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.664169, 35.453732, 25.537468> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.927586, 35.179901, 25.412457>,  <35.085636, 35.015602, 25.337450>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.927586, 35.179901, 25.412457>,  <34.664169, 35.453732, 25.537468>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.927586, 35.179901, 25.412457> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253235, -0.592669, 0.764602,
		-0.708653, -0.424382, -0.563658,
		0.658545, -0.684576, -0.312528,
		35.125149, 34.974529, 25.318699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.338234, 34.773071, 25.609514>,  <34.664169, 35.453732, 25.537468>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.338234, 34.773071, 25.609514> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.725407, 34.684002, 25.563004>,  <34.957710, 34.630562, 25.535097>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.725407, 34.684002, 25.563004>,  <34.338234, 34.773071, 25.609514>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.725407, 34.684002, 25.563004> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084660, -0.724956, 0.683573,
		-0.236508, -0.651810, -0.720561,
		0.967934, -0.222673, -0.116275,
		35.015785, 34.617199, 25.528120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.885567, 34.258667, 25.553375>,  <34.338234, 34.773071, 25.609514>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.885567, 34.258667, 25.553375> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.494667, 34.173962, 25.548630>,  <33.260128, 34.123138, 25.545782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.494667, 34.173962, 25.548630>,  <33.885567, 34.258667, 25.553375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.494667, 34.173962, 25.548630> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101011, 0.513878, -0.851896,
		0.186494, -0.831316, -0.523577,
		-0.977250, -0.211760, -0.011863,
		33.201492, 34.110432, 25.545071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.781738, 34.241348, 24.945290>,  <33.885567, 34.258667, 25.553375>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.781738, 34.241348, 24.945290> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.403763, 34.283150, 25.069334>,  <33.176979, 34.308231, 25.143761>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.403763, 34.283150, 25.069334>,  <33.781738, 34.241348, 24.945290>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.403763, 34.283150, 25.069334> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205313, 0.548608, -0.810479,
		-0.254823, -0.829523, -0.496947,
		-0.944940, 0.104499, 0.310110,
		33.120281, 34.314499, 25.162367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.345955, 34.160019, 24.318518>,  <33.781738, 34.241348, 24.945290>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.345955, 34.160019, 24.318518> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.148827, 34.364159, 24.600418>,  <33.030552, 34.486641, 24.769558>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.148827, 34.364159, 24.600418>,  <33.345955, 34.160019, 24.318518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.148827, 34.364159, 24.600418> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169036, 0.738354, -0.652886,
		-0.853555, -0.440883, -0.277607,
		-0.492818, 0.510349, 0.704751,
		33.000980, 34.517262, 24.811844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.732811, 34.279980, 24.025694>,  <33.345955, 34.160019, 24.318518>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.732811, 34.279980, 24.025694> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.742245, 34.582756, 24.286919>,  <32.747906, 34.764420, 24.443653>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.742245, 34.582756, 24.286919>,  <32.732811, 34.279980, 24.025694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.742245, 34.582756, 24.286919> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182880, 0.645486, -0.741554,
		-0.982852, -0.101940, 0.153654,
		0.023588, 0.756939, 0.653061,
		32.749321, 34.809837, 24.482838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.178627, 34.693348, 23.892199>,  <32.732811, 34.279980, 24.025694>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.178627, 34.693348, 23.892199> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.424591, 34.937710, 24.091665>,  <32.572170, 35.084328, 24.211346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.424591, 34.937710, 24.091665>,  <32.178627, 34.693348, 23.892199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.424591, 34.937710, 24.091665> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142102, 0.707839, -0.691932,
		-0.775685, 0.354617, 0.522072,
		0.614914, 0.610909, 0.498669,
		32.609066, 35.120983, 24.241266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.807259, 35.433121, 23.890108>,  <32.178627, 34.693348, 23.892199>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.807259, 35.433121, 23.890108> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.191299, 35.518356, 23.962545>,  <32.421722, 35.569500, 24.006008>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.191299, 35.518356, 23.962545>,  <31.807259, 35.433121, 23.890108>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.191299, 35.518356, 23.962545> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064860, 0.799601, -0.597019,
		-0.272025, 0.561453, 0.781519,
		0.960102, 0.213093, 0.181095,
		32.479328, 35.582283, 24.016874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.864779, 36.161552, 24.157726>,  <31.807259, 35.433121, 23.890108>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.864779, 36.161552, 24.157726> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.221706, 36.047050, 24.018112>,  <32.435863, 35.978348, 23.934343>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.221706, 36.047050, 24.018112>,  <31.864779, 36.161552, 24.157726>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.221706, 36.047050, 24.018112> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023927, 0.802124, -0.596678,
		0.450772, 0.524075, 0.722599,
		0.892318, -0.286255, -0.349036,
		32.489403, 35.961174, 23.913401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.784546, 36.720360, 24.712767>,  <31.864779, 36.161552, 24.157726>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.784546, 36.720360, 24.712767> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.559423, 37.019833, 24.852894>,  <31.424351, 37.199516, 24.936970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.559423, 37.019833, 24.852894>,  <31.784546, 36.720360, 24.712767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.559423, 37.019833, 24.852894> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328233, -0.591386, 0.736563,
		0.758625, 0.299558, 0.578578,
		-0.562806, 0.748684, 0.350316,
		31.390581, 37.244438, 24.957989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.038479, 36.731022, 25.334812>,  <31.784546, 36.720360, 24.712767>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.038479, 36.731022, 25.334812> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.676624, 36.901287, 25.326275>,  <31.459513, 37.003445, 25.321152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.676624, 36.901287, 25.326275>,  <32.038479, 36.731022, 25.334812>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.676624, 36.901287, 25.326275> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275402, -0.545611, 0.791494,
		0.325261, 0.721889, 0.610804,
		-0.904632, 0.425659, -0.021343,
		31.405235, 37.028984, 25.319872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.788982, 36.928619, 26.020252>,  <32.038479, 36.731022, 25.334812>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.788982, 36.928619, 26.020252> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.440510, 36.943260, 25.824413>,  <31.231426, 36.952045, 25.706911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.440510, 36.943260, 25.824413>,  <31.788982, 36.928619, 26.020252>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.440510, 36.943260, 25.824413> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412555, -0.595185, 0.689604,
		-0.266161, 0.802755, 0.533613,
		-0.871181, 0.036599, -0.489596,
		31.179155, 36.954239, 25.677534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.426878, 36.979469, 26.520802>,  <31.788982, 36.928619, 26.020252>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.426878, 36.979469, 26.520802> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.156746, 36.880157, 26.243013>,  <30.994667, 36.820568, 26.076342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.156746, 36.880157, 26.243013>,  <31.426878, 36.979469, 26.520802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.156746, 36.880157, 26.243013> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517947, -0.510682, 0.686247,
		-0.525036, 0.823140, 0.216281,
		-0.675328, -0.248282, -0.694469,
		30.954147, 36.805672, 26.034672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.718082, 37.170826, 26.718391>,  <31.426878, 36.979469, 26.520802>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.718082, 37.170826, 26.718391> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.682306, 36.874809, 26.451757>,  <30.660841, 36.697197, 26.291777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.682306, 36.874809, 26.451757>,  <30.718082, 37.170826, 26.718391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.682306, 36.874809, 26.451757> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271902, -0.625703, 0.731139,
		-0.958160, 0.246639, -0.145257,
		-0.089439, -0.740044, -0.666585,
		30.655474, 36.652798, 26.251781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.069338, 36.803802, 26.840569>,  <30.718082, 37.170826, 26.718391>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.069338, 36.803802, 26.840569> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.329388, 36.556713, 26.663589>,  <30.485416, 36.408459, 26.557402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.329388, 36.556713, 26.663589>,  <30.069338, 36.803802, 26.840569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.329388, 36.556713, 26.663589> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127071, -0.662486, 0.738217,
		-0.749130, -0.423708, -0.509191,
		0.650120, -0.617725, -0.442448,
		30.524424, 36.371395, 26.530855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.733765, 36.169922, 26.766542>,  <30.069338, 36.803802, 26.840569>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.733765, 36.169922, 26.766542> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.115297, 36.055588, 26.729656>,  <30.344217, 35.986988, 26.707523>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.115297, 36.055588, 26.729656>,  <29.733765, 36.169922, 26.766542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.115297, 36.055588, 26.729656> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153093, -0.726862, 0.669503,
		-0.258397, -0.624475, -0.737063,
		0.953831, -0.285837, -0.092216,
		30.401447, 35.969837, 26.701992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<35.561005, 42.298737, 22.675163> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.787682, 41.979118, 22.755539>,  <35.923687, 41.787346, 22.803764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.787682, 41.979118, 22.755539>,  <35.561005, 42.298737, 22.675163>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.787682, 41.979118, 22.755539> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526177, -0.163303, 0.834548,
		-0.634031, -0.578663, -0.512985,
		0.566694, -0.799050, 0.200940,
		35.957691, 41.739403, 22.815821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.135452, 41.788677, 22.974476>,  <35.561005, 42.298737, 22.675163>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.135452, 41.788677, 22.974476> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.504890, 41.675198, 23.077610>,  <35.726555, 41.607109, 23.139490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.504890, 41.675198, 23.077610>,  <35.135452, 41.788677, 22.974476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.504890, 41.675198, 23.077610> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315518, -0.180518, 0.931591,
		-0.217750, -0.941768, -0.256239,
		0.923598, -0.283702, 0.257837,
		35.781971, 41.590088, 23.154961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.136940, 41.012886, 23.285835>,  <35.135452, 41.788677, 22.974476>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.136940, 41.012886, 23.285835> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.457684, 41.210220, 23.420681>,  <35.650127, 41.328621, 23.501589>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.457684, 41.210220, 23.420681>,  <35.136940, 41.012886, 23.285835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.457684, 41.210220, 23.420681> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296105, -0.161961, 0.941324,
		0.518988, -0.854628, 0.016209,
		0.801856, 0.493335, 0.337116,
		35.698242, 41.358219, 23.521816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.540382, 40.497803, 23.599016>,  <35.136940, 41.012886, 23.285835>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.540382, 40.497803, 23.599016> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.702599, 40.818752, 23.774166>,  <35.799927, 41.011322, 23.879255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.702599, 40.818752, 23.774166>,  <35.540382, 40.497803, 23.599016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.702599, 40.818752, 23.774166> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133530, -0.421892, 0.896759,
		0.904273, -0.422138, -0.063952,
		0.405537, 0.802376, 0.437874,
		35.824261, 41.059464, 23.905529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.054199, 40.262882, 23.969484>,  <35.540382, 40.497803, 23.599016>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.054199, 40.262882, 23.969484> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.962345, 40.611076, 24.143621>,  <35.907230, 40.819992, 24.248104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.962345, 40.611076, 24.143621>,  <36.054199, 40.262882, 23.969484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.962345, 40.611076, 24.143621> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052473, -0.435572, 0.898623,
		0.971860, 0.229203, 0.054348,
		-0.229640, 0.870484, 0.435342,
		35.893452, 40.872223, 24.274223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.447681, 40.246494, 24.530556>,  <36.054199, 40.262882, 23.969484>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.447681, 40.246494, 24.530556> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.191311, 40.544044, 24.606306>,  <36.037487, 40.722572, 24.651756>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.191311, 40.544044, 24.606306>,  <36.447681, 40.246494, 24.530556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.191311, 40.544044, 24.606306> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035229, -0.217945, 0.975325,
		0.766791, 0.631787, 0.113482,
		-0.640930, 0.743872, 0.189375,
		35.999031, 40.767204, 24.663118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.750072, 40.620193, 25.024137>,  <36.447681, 40.246494, 24.530556>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.750072, 40.620193, 25.024137> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.366436, 40.729843, 25.052406>,  <36.136253, 40.795631, 25.069368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.366436, 40.729843, 25.052406>,  <36.750072, 40.620193, 25.024137>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.366436, 40.729843, 25.052406> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040851, -0.113014, 0.992753,
		0.280123, 0.955031, 0.097193,
		-0.959095, 0.274122, 0.070672,
		36.078709, 40.812080, 25.073608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.709248, 41.179497, 25.525244>,  <36.750072, 40.620193, 25.024137>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.709248, 41.179497, 25.525244> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.344608, 41.015896, 25.508730>,  <36.125824, 40.917736, 25.498821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.344608, 41.015896, 25.508730>,  <36.709248, 41.179497, 25.525244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.344608, 41.015896, 25.508730> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024723, -0.045702, 0.998649,
		-0.410337, 0.911388, 0.031551,
		-0.911599, -0.409002, -0.041285,
		36.071129, 40.893196, 25.496344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.363159, 41.442608, 26.063248>,  <36.709248, 41.179497, 25.525244>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.363159, 41.442608, 26.063248> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.144814, 41.121056, 25.968748>,  <36.013805, 40.928123, 25.912048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.144814, 41.121056, 25.968748>,  <36.363159, 41.442608, 26.063248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.144814, 41.121056, 25.968748> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034431, -0.260202, 0.964940,
		-0.837168, 0.534856, 0.114356,
		-0.545860, -0.803880, -0.236249,
		35.981056, 40.879890, 25.897873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.865017, 41.435375, 26.610674>,  <36.363159, 41.442608, 26.063248>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.865017, 41.435375, 26.610674> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.888664, 41.065388, 26.460512>,  <35.902855, 40.843395, 26.370415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.888664, 41.065388, 26.460512>,  <35.865017, 41.435375, 26.610674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.888664, 41.065388, 26.460512> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284443, -0.376083, 0.881847,
		-0.956868, 0.054646, -0.285336,
		0.059121, -0.924973, -0.375406,
		35.906399, 40.787895, 26.347891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.289371, 41.061108, 26.871716>,  <35.865017, 41.435375, 26.610674>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.289371, 41.061108, 26.871716> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.519932, 40.757633, 26.750288>,  <35.658268, 40.575550, 26.677431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.519932, 40.757633, 26.750288>,  <35.289371, 41.061108, 26.871716>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.519932, 40.757633, 26.750288> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018761, -0.383680, 0.923276,
		-0.816951, -0.526483, -0.235387,
		0.576402, -0.758687, -0.303571,
		35.692852, 40.530025, 26.659216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.949818, 40.396358, 27.085180>,  <35.289371, 41.061108, 26.871716>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.949818, 40.396358, 27.085180> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.342495, 40.341362, 27.032459>,  <35.578102, 40.308365, 27.000828>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.342495, 40.341362, 27.032459>,  <34.949818, 40.396358, 27.085180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.342495, 40.341362, 27.032459> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089606, -0.277234, 0.956615,
		-0.168065, -0.950914, -0.259839,
		0.981695, -0.137491, -0.131801,
		35.637005, 40.300114, 26.992920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.313419, 39.995735, 27.042349>,  <34.949818, 40.396358, 27.085180>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.313419, 39.995735, 27.042349> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.968441, 40.123764, 27.199188>,  <33.761456, 40.200581, 27.293293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.968441, 40.123764, 27.199188>,  <34.313419, 39.995735, 27.042349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.968441, 40.123764, 27.199188> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359765, 0.157259, -0.919695,
		-0.356029, -0.934250, -0.020477,
		-0.862446, 0.320071, 0.392099,
		33.709705, 40.219784, 27.316818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.846317, 39.755737, 26.616079>,  <34.313419, 39.995735, 27.042349>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.846317, 39.755737, 26.616079> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.643410, 40.048973, 26.797300>,  <33.521664, 40.224915, 26.906033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.643410, 40.048973, 26.797300>,  <33.846317, 39.755737, 26.616079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.643410, 40.048973, 26.797300> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443640, 0.228561, -0.866570,
		-0.738826, -0.640574, 0.209288,
		-0.507267, 0.733093, 0.453051,
		33.491230, 40.268902, 26.933216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.135826, 39.752056, 26.471142>,  <33.846317, 39.755737, 26.616079>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.135826, 39.752056, 26.471142> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.175392, 40.135979, 26.576206>,  <33.199131, 40.366333, 26.639246>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.175392, 40.135979, 26.576206>,  <33.135826, 39.752056, 26.471142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.175392, 40.135979, 26.576206> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585105, 0.269606, -0.764830,
		-0.804902, -0.078031, 0.588255,
		0.098917, 0.959804, 0.262663,
		33.205067, 40.423920, 26.655005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.455467, 40.019409, 26.241415>,  <33.135826, 39.752056, 26.471142>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.455467, 40.019409, 26.241415> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.682003, 40.341770, 26.310432>,  <32.817924, 40.535187, 26.351843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.682003, 40.341770, 26.310432>,  <32.455467, 40.019409, 26.241415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.682003, 40.341770, 26.310432> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435343, 0.470289, -0.767662,
		-0.699810, 0.359643, 0.617190,
		0.566342, 0.805907, 0.172545,
		32.851906, 40.583542, 26.362196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.961185, 40.490604, 26.352123>,  <32.455467, 40.019409, 26.241415>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.961185, 40.490604, 26.352123> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.301517, 40.651089, 26.216404>,  <32.505718, 40.747379, 26.134974>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.301517, 40.651089, 26.216404>,  <31.961185, 40.490604, 26.352123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.301517, 40.651089, 26.216404> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425522, 0.147294, -0.892881,
		-0.308254, 0.904067, 0.296045,
		0.850829, 0.401208, -0.339296,
		32.556767, 40.771450, 26.114614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.718655, 41.049099, 25.980755>,  <31.961185, 40.490604, 26.352123>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.718655, 41.049099, 25.980755> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.080078, 40.962864, 25.832645>,  <32.296932, 40.911121, 25.743780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.080078, 40.962864, 25.832645>,  <31.718655, 41.049099, 25.980755>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.080078, 40.962864, 25.832645> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325071, 0.218053, -0.920207,
		0.279124, 0.951827, 0.126943,
		0.903559, -0.215586, -0.370275,
		32.351147, 40.898190, 25.721563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.762428, 41.512627, 25.426741>,  <31.718655, 41.049099, 25.980755>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.762428, 41.512627, 25.426741> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.041924, 41.233742, 25.362673>,  <32.209621, 41.066410, 25.324232>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.041924, 41.233742, 25.362673>,  <31.762428, 41.512627, 25.426741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.041924, 41.233742, 25.362673> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063220, 0.162838, -0.984625,
		0.712579, 0.698121, 0.069703,
		0.698738, -0.697217, -0.160170,
		32.251545, 41.024578, 25.314621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.219170, 41.796009, 24.895142>,  <31.762428, 41.512627, 25.426741>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.219170, 41.796009, 24.895142> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.279083, 41.401333, 24.920443>,  <32.315029, 41.164528, 24.935623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.279083, 41.401333, 24.920443>,  <32.219170, 41.796009, 24.895142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.279083, 41.401333, 24.920443> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208244, -0.094022, -0.973547,
		0.966540, 0.132646, -0.219556,
		0.149780, -0.986694, 0.063253,
		32.324017, 41.105324, 24.939419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.400414, 41.603977, 24.232216>,  <32.219170, 41.796009, 24.895142>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.400414, 41.603977, 24.232216> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.356564, 41.229725, 24.366426>,  <32.330254, 41.005173, 24.446953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.356564, 41.229725, 24.366426>,  <32.400414, 41.603977, 24.232216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.356564, 41.229725, 24.366426> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089412, -0.326909, -0.940816,
		0.989943, -0.133136, -0.047820,
		-0.109624, -0.935631, 0.335526,
		32.323677, 40.949036, 24.467085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.863720, 41.173340, 23.803270>,  <32.400414, 41.603977, 24.232216>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.863720, 41.173340, 23.803270> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.580425, 40.932293, 23.950377>,  <32.410450, 40.787663, 24.038641>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.580425, 40.932293, 23.950377>,  <32.863720, 41.173340, 23.803270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.580425, 40.932293, 23.950377> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171498, -0.358471, -0.917653,
		0.684831, -0.712984, 0.150533,
		-0.708233, -0.602621, 0.367767,
		32.367954, 40.751507, 24.060707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.916824, 40.471333, 23.463232>,  <32.863720, 41.173340, 23.803270>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.916824, 40.471333, 23.463232> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.541538, 40.550446, 23.576811>,  <32.316364, 40.597916, 23.644958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.541538, 40.550446, 23.576811>,  <32.916824, 40.471333, 23.463232>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.541538, 40.550446, 23.576811> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315995, -0.155253, -0.935972,
		-0.141015, -0.967878, 0.208154,
		-0.938223, 0.197762, 0.283952,
		32.260071, 40.609783, 23.661995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.525154, 39.971283, 23.185492>,  <32.916824, 40.471333, 23.463232>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.525154, 39.971283, 23.185492> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.267067, 40.263424, 23.275179>,  <32.112213, 40.438709, 23.328991>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.267067, 40.263424, 23.275179>,  <32.525154, 39.971283, 23.185492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.267067, 40.263424, 23.275179> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356684, -0.028434, -0.933792,
		-0.675625, -0.682475, 0.278853,
		-0.645218, 0.730356, 0.224217,
		32.073502, 40.482533, 23.342443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.203079, 39.817307, 22.883770>,  <32.525154, 39.971283, 23.185492>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.203079, 39.817307, 22.883770> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.263287, 39.519318, 22.623812>,  <33.299412, 39.340527, 22.467836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.263287, 39.519318, 22.623812>,  <33.203079, 39.817307, 22.883770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.263287, 39.519318, 22.623812> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235298, -0.611499, 0.755449,
		-0.960198, -0.266627, 0.083250,
		0.150516, -0.744969, -0.649897,
		33.308441, 39.295826, 22.428843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.381981, 39.499126, 23.556503>,  <33.203079, 39.817307, 22.883770>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.381981, 39.499126, 23.556503> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.057331, 39.493439, 23.322901>,  <32.862541, 39.490028, 23.182739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.057331, 39.493439, 23.322901>,  <33.381981, 39.499126, 23.556503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.057331, 39.493439, 23.322901> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523879, -0.424640, 0.738398,
		-0.258490, 0.905251, 0.337201,
		-0.811624, -0.014216, -0.584007,
		32.813843, 39.489174, 23.147699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.867191, 39.751995, 23.929348>,  <33.381981, 39.499126, 23.556503>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.867191, 39.751995, 23.929348> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.674370, 39.577980, 23.625147>,  <32.558678, 39.473572, 23.442627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.674370, 39.577980, 23.625147>,  <32.867191, 39.751995, 23.929348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.674370, 39.577980, 23.625147> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585985, -0.485209, 0.648995,
		-0.651339, 0.758496, -0.021027,
		-0.482057, -0.435037, -0.760502,
		32.529751, 39.447468, 23.396996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.136322, 39.718323, 24.031225>,  <32.867191, 39.751995, 23.929348>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.136322, 39.718323, 24.031225> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.213696, 39.405807, 23.793848>,  <32.260120, 39.218300, 23.651421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.213696, 39.405807, 23.793848>,  <32.136322, 39.718323, 24.031225>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.213696, 39.405807, 23.793848> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561945, -0.584051, 0.585749,
		-0.804239, 0.220178, -0.552016,
		0.193437, -0.781285, -0.593445,
		32.271729, 39.171421, 23.615814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.538967, 39.304096, 23.923777>,  <32.136322, 39.718323, 24.031225>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.538967, 39.304096, 23.923777> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.810118, 39.023045, 23.837250>,  <31.972809, 38.854412, 23.785334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.810118, 39.023045, 23.837250>,  <31.538967, 39.304096, 23.923777>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.810118, 39.023045, 23.837250> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536328, -0.673882, 0.508168,
		-0.502828, -0.228458, -0.833649,
		0.677877, -0.702631, -0.216318,
		32.013481, 38.812256, 23.772354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.158682, 38.777863, 23.714891>,  <31.538967, 39.304096, 23.923777>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.158682, 38.777863, 23.714891> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.516958, 38.639862, 23.827114>,  <31.731924, 38.557060, 23.894447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.516958, 38.639862, 23.827114>,  <31.158682, 38.777863, 23.714891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.516958, 38.639862, 23.827114> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444571, -0.708491, 0.548084,
		0.009683, -0.615642, -0.787967,
		0.895691, -0.345001, 0.280557,
		31.785666, 38.536362, 23.911282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.038441, 38.095558, 23.718328>,  <31.158682, 38.777863, 23.714891>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.038441, 38.095558, 23.718328> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.380587, 38.111088, 23.924955>,  <31.585875, 38.120407, 24.048931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.380587, 38.111088, 23.924955>,  <31.038441, 38.095558, 23.718328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.380587, 38.111088, 23.924955> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316894, -0.749618, 0.581078,
		0.409787, -0.660731, -0.628895,
		0.855367, 0.038825, 0.516566,
		31.637197, 38.122734, 24.079926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.230173, 37.514847, 23.844284>,  <31.038441, 38.095558, 23.718328>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.230173, 37.514847, 23.844284> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.400610, 37.712547, 24.147379>,  <31.502872, 37.831165, 24.329235>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.400610, 37.712547, 24.147379>,  <31.230173, 37.514847, 23.844284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.400610, 37.712547, 24.147379> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286459, -0.720769, 0.631216,
		0.858131, -0.486016, -0.165532,
		0.426091, 0.494247, 0.757738,
		31.528437, 37.860821, 24.374701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.558172, 37.022091, 24.074261>,  <31.230173, 37.514847, 23.844284>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.558172, 37.022091, 24.074261> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.498066, 37.312939, 24.342207>,  <31.462002, 37.487446, 24.502975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.498066, 37.312939, 24.342207>,  <31.558172, 37.022091, 24.074261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.498066, 37.312939, 24.342207> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360599, -0.671191, 0.647666,
		0.920537, -0.144229, 0.363056,
		-0.150268, 0.727118, 0.669865,
		31.452986, 37.531075, 24.543167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.238865, 36.836262, 24.086582>,  <31.558172, 37.022091, 24.074261>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.238865, 36.836262, 24.086582> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.473652, 36.590603, 23.875568>,  <32.614525, 36.443207, 23.748960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.473652, 36.590603, 23.875568>,  <32.238865, 36.836262, 24.086582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.473652, 36.590603, 23.875568> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101561, 0.702296, -0.704603,
		0.803217, 0.360000, 0.474597,
		0.586965, -0.614149, -0.527534,
		32.649742, 36.406357, 23.717308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.677425, 37.141125, 23.588392>,  <32.238865, 36.836262, 24.086582>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.677425, 37.141125, 23.588392> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.750420, 36.791531, 23.408236>,  <32.794216, 36.581776, 23.300142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.750420, 36.791531, 23.408236>,  <32.677425, 37.141125, 23.588392>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.750420, 36.791531, 23.408236> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216578, 0.482566, -0.848660,
		0.959058, 0.057327, 0.277349,
		0.182490, -0.873982, -0.450392,
		32.805168, 36.529335, 23.273117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.381351, 37.241459, 23.219122>,  <32.677425, 37.141125, 23.588392>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.381351, 37.241459, 23.219122> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.182560, 36.934380, 23.057306>,  <33.063286, 36.750134, 22.960217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.182560, 36.934380, 23.057306>,  <33.381351, 37.241459, 23.219122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.182560, 36.934380, 23.057306> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119215, 0.401366, -0.908126,
		0.859532, -0.499551, -0.107951,
		-0.496983, -0.767695, -0.404541,
		33.033466, 36.704071, 22.935944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.814178, 36.910419, 22.690918>,  <33.381351, 37.241459, 23.219122>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.814178, 36.910419, 22.690918> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.431755, 36.825420, 22.610121>,  <33.202301, 36.774422, 22.561642>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.431755, 36.825420, 22.610121>,  <33.814178, 36.910419, 22.690918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.431755, 36.825420, 22.610121> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097614, 0.418947, -0.902748,
		0.276455, -0.882796, -0.379795,
		-0.956057, -0.212496, -0.201993,
		33.144939, 36.761673, 22.549522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.719002, 36.416759, 22.043821>,  <33.814178, 36.910419, 22.690918>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.719002, 36.416759, 22.043821> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.358212, 36.588219, 22.064589>,  <33.141735, 36.691093, 22.077049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.358212, 36.588219, 22.064589>,  <33.719002, 36.416759, 22.043821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.358212, 36.588219, 22.064589> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113527, 0.351447, -0.929299,
		-0.416589, -0.832313, -0.365661,
		-0.901978, 0.428648, 0.051919,
		33.087620, 36.716812, 22.080164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.583588, 36.329117, 21.348230>,  <33.719002, 36.416759, 22.043821>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.583588, 36.329117, 21.348230> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.308483, 36.574936, 21.502796>,  <33.143421, 36.722427, 21.595535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.308483, 36.574936, 21.502796>,  <33.583588, 36.329117, 21.348230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.308483, 36.574936, 21.502796> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104667, 0.442791, -0.890495,
		-0.718354, -0.652891, -0.240211,
		-0.687760, 0.614548, 0.386417,
		33.102154, 36.759300, 21.618721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.006439, 36.237617, 20.900528>,  <33.583588, 36.329117, 21.348230>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.006439, 36.237617, 20.900528> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.966316, 36.586926, 21.091244>,  <32.942242, 36.796513, 21.205673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.966316, 36.586926, 21.091244>,  <33.006439, 36.237617, 20.900528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.966316, 36.586926, 21.091244> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129758, 0.463633, -0.876475,
		-0.986458, -0.149788, 0.066806,
		-0.100312, 0.873274, 0.476790,
		32.936222, 36.848907, 21.234282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.377319, 36.578915, 20.640884>,  <33.006439, 36.237617, 20.900528>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.377319, 36.578915, 20.640884> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.577324, 36.883915, 20.805117>,  <32.697327, 37.066917, 20.903656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.577324, 36.883915, 20.805117>,  <32.377319, 36.578915, 20.640884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.577324, 36.883915, 20.805117> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184373, 0.556958, -0.809817,
		-0.846166, 0.329216, 0.419070,
		0.500009, 0.762505, 0.410580,
		32.727325, 37.112667, 20.928291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.975756, 37.159508, 20.750450>,  <32.377319, 36.578915, 20.640884>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.975756, 37.159508, 20.750450> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.354317, 37.283466, 20.714039>,  <32.581451, 37.357841, 20.692192>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.354317, 37.283466, 20.714039>,  <31.975756, 37.159508, 20.750450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.354317, 37.283466, 20.714039> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257672, 0.554476, -0.791303,
		-0.194751, 0.772346, 0.604610,
		0.946402, 0.309898, -0.091027,
		32.638237, 37.376434, 20.686731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<34.382271, 31.072668, 35.208492> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.669670, 31.309193, 35.062008>,  <34.842110, 31.451107, 34.974117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.669670, 31.309193, 35.062008>,  <34.382271, 31.072668, 35.208492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.669670, 31.309193, 35.062008> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456402, 0.003518, -0.889767,
		-0.524843, 0.806434, 0.272404,
		0.718496, 0.591314, -0.366212,
		34.885220, 31.486588, 34.952145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.105988, 31.639072, 34.746094>,  <34.382271, 31.072668, 35.208492>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.105988, 31.639072, 34.746094> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.485962, 31.579428, 34.636261>,  <34.713947, 31.543642, 34.570362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.485962, 31.579428, 34.636261>,  <34.105988, 31.639072, 34.746094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.485962, 31.579428, 34.636261> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282333, -0.033154, -0.958743,
		0.133855, 0.988265, -0.073593,
		0.949932, -0.149111, -0.274582,
		34.770943, 31.534695, 34.553886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.300724, 32.145576, 34.359573>,  <34.105988, 31.639072, 34.746094>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.300724, 32.145576, 34.359573> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.537167, 31.840607, 34.254272>,  <34.679031, 31.657625, 34.191090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.537167, 31.840607, 34.254272>,  <34.300724, 32.145576, 34.359573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.537167, 31.840607, 34.254272> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164487, 0.205577, -0.964719,
		0.789641, 0.613556, -0.003890,
		0.591110, -0.762421, -0.263254,
		34.714500, 31.611879, 34.175297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.767788, 32.419334, 33.813194>,  <34.300724, 32.145576, 34.359573>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.767788, 32.419334, 33.813194> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.762924, 32.021271, 33.774197>,  <34.760006, 31.782433, 33.750797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.762924, 32.021271, 33.774197>,  <34.767788, 32.419334, 33.813194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.762924, 32.021271, 33.774197> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017615, 0.097702, -0.995060,
		0.999771, -0.010382, -0.018717,
		-0.012159, -0.995162, -0.097497,
		34.759277, 31.722723, 33.744949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.204678, 32.349159, 33.232193>,  <34.767788, 32.419334, 33.813194>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.204678, 32.349159, 33.232193> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.016983, 31.998510, 33.274815>,  <34.904366, 31.788122, 33.300388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.016983, 31.998510, 33.274815>,  <35.204678, 32.349159, 33.232193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.016983, 31.998510, 33.274815> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232788, 0.006397, -0.972506,
		0.851835, -0.481144, -0.207068,
		-0.469241, -0.876618, 0.106555,
		34.876209, 31.735525, 33.306782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.564610, 31.811934, 32.844627>,  <35.204678, 32.349159, 33.232193>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.564610, 31.811934, 32.844627> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.187935, 31.689980, 32.901566>,  <34.961929, 31.616806, 32.935730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.187935, 31.689980, 32.901566>,  <35.564610, 31.811934, 32.844627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.187935, 31.689980, 32.901566> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163544, 0.045010, -0.985509,
		0.294062, -0.951324, -0.092248,
		-0.941690, -0.304887, 0.142347,
		34.905426, 31.598515, 32.944271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.430489, 31.204464, 32.380939>,  <35.564610, 31.811934, 32.844627>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.430489, 31.204464, 32.380939> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.103733, 31.412888, 32.479881>,  <34.907681, 31.537941, 32.539246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.103733, 31.412888, 32.479881>,  <35.430489, 31.204464, 32.380939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.103733, 31.412888, 32.479881> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203923, 0.140253, -0.968888,
		-0.539540, -0.841919, -0.008316,
		-0.816892, 0.521059, 0.247358,
		34.858665, 31.569204, 32.554089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.119438, 31.166542, 31.744978>,  <35.430489, 31.204464, 32.380939>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.119438, 31.166542, 31.744978> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.899933, 31.431534, 31.948929>,  <34.768230, 31.590528, 32.071301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.899933, 31.431534, 31.948929>,  <35.119438, 31.166542, 31.744978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.899933, 31.431534, 31.948929> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541822, 0.182611, -0.820415,
		-0.636618, -0.726480, 0.258736,
		-0.548768, 0.662480, 0.509877,
		34.735302, 31.630278, 32.101891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.539726, 30.904991, 31.451544>,  <35.119438, 31.166542, 31.744978>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.539726, 30.904991, 31.451544> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.468334, 31.277628, 31.578213>,  <34.425499, 31.501209, 31.654215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.468334, 31.277628, 31.578213>,  <34.539726, 30.904991, 31.451544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.468334, 31.277628, 31.578213> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435346, 0.213857, -0.874494,
		-0.882394, -0.293940, 0.367396,
		-0.178479, 0.931592, 0.316672,
		34.414791, 31.557106, 31.673214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.841320, 31.049166, 31.421701>,  <34.539726, 30.904991, 31.451544>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.841320, 31.049166, 31.421701> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.995064, 31.418388, 31.427862>,  <34.087311, 31.639921, 31.431559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.995064, 31.418388, 31.427862>,  <33.841320, 31.049166, 31.421701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.995064, 31.418388, 31.427862> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518510, 0.229650, -0.823656,
		-0.763816, 0.308596, 0.566881,
		0.384361, 0.923054, 0.015400,
		34.110371, 31.695305, 31.432482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.344490, 31.457582, 31.435350>,  <33.841320, 31.049166, 31.421701>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.344490, 31.457582, 31.435350> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.647995, 31.662159, 31.274004>,  <33.830097, 31.784904, 31.177197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.647995, 31.662159, 31.274004>,  <33.344490, 31.457582, 31.435350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.647995, 31.662159, 31.274004> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521655, 0.106290, -0.846509,
		-0.390068, 0.852718, 0.347446,
		0.758764, 0.511443, -0.403365,
		33.875626, 31.815592, 31.152994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.019325, 32.134216, 31.174099>,  <33.344490, 31.457582, 31.435350>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.019325, 32.134216, 31.174099> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.344452, 32.032715, 30.964363>,  <33.539528, 31.971813, 30.838522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.344452, 32.032715, 30.964363>,  <33.019325, 32.134216, 31.174099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.344452, 32.032715, 30.964363> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459825, 0.273098, -0.844972,
		0.357614, 0.927914, 0.105296,
		0.812818, -0.253756, -0.524342,
		33.588299, 31.956589, 30.807060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.698658, 32.635719, 31.606535>,  <33.019325, 32.134216, 31.174099>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.698658, 32.635719, 31.606535> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.428104, 32.928799, 31.636608>,  <32.265770, 33.104645, 31.654652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.428104, 32.928799, 31.636608>,  <32.698658, 32.635719, 31.606535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.428104, 32.928799, 31.636608> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214486, 0.098290, 0.971769,
		0.704623, 0.673419, -0.223636,
		-0.676389, 0.732698, 0.075181,
		32.225189, 33.148609, 31.659163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.973766, 33.140263, 32.017574>,  <32.698658, 32.635719, 31.606535>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.973766, 33.140263, 32.017574> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.589130, 33.247616, 32.040604>,  <32.358349, 33.312027, 32.054420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.589130, 33.247616, 32.040604>,  <32.973766, 33.140263, 32.017574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.589130, 33.247616, 32.040604> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116654, 0.209701, 0.970782,
		0.248464, 0.940212, -0.232954,
		-0.961591, 0.268379, 0.057576,
		32.300652, 33.328129, 32.057877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.945667, 33.827621, 32.372746>,  <32.973766, 33.140263, 32.017574>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.945667, 33.827621, 32.372746> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.598713, 33.631294, 32.405560>,  <32.390541, 33.513496, 32.425247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.598713, 33.631294, 32.405560>,  <32.945667, 33.827621, 32.372746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.598713, 33.631294, 32.405560> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027294, 0.211527, 0.976991,
		-0.496879, 0.845194, -0.196873,
		-0.867391, -0.490820, 0.082035,
		32.338497, 33.484047, 32.430168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.527512, 34.277691, 32.777714>,  <32.945667, 33.827621, 32.372746>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.527512, 34.277691, 32.777714> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.344757, 33.923885, 32.815445>,  <32.235104, 33.711601, 32.838081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.344757, 33.923885, 32.815445>,  <32.527512, 34.277691, 32.777714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.344757, 33.923885, 32.815445> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002234, 0.107180, 0.994237,
		-0.889523, 0.454042, -0.050946,
		-0.456886, -0.884510, 0.094325,
		32.207691, 33.658531, 32.843742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.902224, 34.388523, 33.221039>,  <32.527512, 34.277691, 32.777714>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.902224, 34.388523, 33.221039> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.957939, 33.993645, 33.252136>,  <31.991367, 33.756718, 33.270794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.957939, 33.993645, 33.252136>,  <31.902224, 34.388523, 33.221039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.957939, 33.993645, 33.252136> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079232, 0.089365, 0.992843,
		-0.987077, -0.132130, 0.090665,
		0.139287, -0.987196, 0.077741,
		31.999725, 33.697487, 33.275459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.514141, 34.181545, 33.785549>,  <31.902224, 34.388523, 33.221039>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.514141, 34.181545, 33.785549> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.751875, 33.866081, 33.722588>,  <31.894516, 33.676804, 33.684811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.751875, 33.866081, 33.722588>,  <31.514141, 34.181545, 33.785549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.751875, 33.866081, 33.722588> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269192, 0.010661, 0.963027,
		-0.757827, -0.614732, 0.218638,
		0.594335, -0.788664, -0.157402,
		31.930176, 33.629482, 33.675365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.418562, 33.683800, 34.285576>,  <31.514141, 34.181545, 33.785549>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.418562, 33.683800, 34.285576> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.793743, 33.588570, 34.184723>,  <32.018852, 33.531433, 34.124210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.793743, 33.588570, 34.184723>,  <31.418562, 33.683800, 34.285576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.793743, 33.588570, 34.184723> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245181, -0.058865, 0.967689,
		-0.245222, -0.969462, 0.003158,
		0.937951, -0.238072, -0.252128,
		32.075127, 33.517147, 34.109085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.562609, 33.077293, 34.585876>,  <31.418562, 33.683800, 34.285576>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.562609, 33.077293, 34.585876> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.920465, 33.252808, 34.552223>,  <32.135181, 33.358116, 34.532032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.920465, 33.252808, 34.552223>,  <31.562609, 33.077293, 34.585876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.920465, 33.252808, 34.552223> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148995, -0.115485, 0.982071,
		0.421207, -0.891138, -0.168695,
		0.894642, 0.438790, -0.084132,
		32.188858, 33.384445, 34.526985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.977846, 32.691582, 35.035717>,  <31.562609, 33.077293, 34.585876>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.977846, 32.691582, 35.035717> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.191528, 33.024803, 34.978249>,  <32.319736, 33.224735, 34.943768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.191528, 33.024803, 34.978249>,  <31.977846, 32.691582, 35.035717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.191528, 33.024803, 34.978249> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184554, 0.050921, 0.981502,
		0.824962, -0.550840, -0.126541,
		0.534207, 0.833056, -0.143668,
		32.351791, 33.274719, 34.935146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.580379, 32.658375, 35.454906>,  <31.977846, 32.691582, 35.035717>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.580379, 32.658375, 35.454906> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.525269, 33.050407, 35.397686>,  <32.492203, 33.285625, 35.363354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.525269, 33.050407, 35.397686>,  <32.580379, 32.658375, 35.454906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.525269, 33.050407, 35.397686> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265838, 0.175717, 0.947868,
		0.954121, 0.092571, -0.284752,
		-0.137781, 0.980079, -0.143047,
		32.483932, 33.344433, 35.354771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.838585, 32.831955, 36.074768>,  <32.580379, 32.658375, 35.454906>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.838585, 32.831955, 36.074768> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.716312, 33.181957, 35.924606>,  <32.642948, 33.391960, 35.834511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.716312, 33.181957, 35.924606>,  <32.838585, 32.831955, 36.074768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.716312, 33.181957, 35.924606> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111335, 0.424419, 0.898595,
		0.945603, 0.232885, -0.227154,
		-0.305678, 0.875005, -0.375404,
		32.624611, 33.444458, 35.811985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.264732, 33.263775, 36.518196>,  <32.838585, 32.831955, 36.074768>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.264732, 33.263775, 36.518196> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.951061, 33.464039, 36.371552>,  <32.762859, 33.584198, 36.283566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.951061, 33.464039, 36.371552>,  <33.264732, 33.263775, 36.518196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.951061, 33.464039, 36.371552> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195795, 0.360995, 0.911782,
		0.588842, 0.786778, -0.185056,
		-0.784174, 0.500663, -0.366616,
		32.715809, 33.614239, 36.261566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.153336, 33.751537, 36.977520>,  <33.264732, 33.263775, 36.518196>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.153336, 33.751537, 36.977520> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.803463, 33.789818, 36.787460>,  <32.593540, 33.812786, 36.673424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.803463, 33.789818, 36.787460>,  <33.153336, 33.751537, 36.977520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.803463, 33.789818, 36.787460> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420797, 0.336557, 0.842412,
		0.240540, 0.936787, -0.254108,
		-0.874683, 0.095706, -0.475153,
		32.541058, 33.818531, 36.644913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.813080, 34.402241, 37.101933>,  <33.153336, 33.751537, 36.977520>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.813080, 34.402241, 37.101933> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.503662, 34.167797, 37.005512>,  <32.318012, 34.027130, 36.947659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.503662, 34.167797, 37.005512>,  <32.813080, 34.402241, 37.101933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.503662, 34.167797, 37.005512> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573997, 0.486731, 0.658499,
		-0.268626, 0.647739, -0.712933,
		-0.773542, -0.586111, -0.241052,
		32.271599, 33.991962, 36.933197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.278923, 34.913994, 37.074188>,  <32.813080, 34.402241, 37.101933>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.278923, 34.913994, 37.074188> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.521980, 35.191109, 37.229534>,  <32.667812, 35.357376, 37.322742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.521980, 35.191109, 37.229534>,  <32.278923, 34.913994, 37.074188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.521980, 35.191109, 37.229534> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000153, 0.489092, -0.872232,
		-0.794212, 0.529944, 0.297298,
		0.607641, 0.692783, 0.388362,
		32.704273, 35.398945, 37.346043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.043938, 35.594997, 37.016438>,  <32.278923, 34.913994, 37.074188>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.043938, 35.594997, 37.016438> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.435040, 35.671188, 37.051559>,  <32.669701, 35.716904, 37.072632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.435040, 35.671188, 37.051559>,  <32.043938, 35.594997, 37.016438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.435040, 35.671188, 37.051559> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041843, 0.587383, -0.808227,
		-0.205525, 0.786575, 0.582288,
		0.977757, 0.190475, 0.087809,
		32.728367, 35.728333, 37.077904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.091579, 36.331585, 37.002037>,  <32.043938, 35.594997, 37.016438>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.091579, 36.331585, 37.002037> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.432514, 36.172264, 36.866463>,  <32.637077, 36.076672, 36.785118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.432514, 36.172264, 36.866463>,  <32.091579, 36.331585, 37.002037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.432514, 36.172264, 36.866463> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034829, 0.603401, -0.796677,
		0.521828, 0.690844, 0.500430,
		0.852339, -0.398299, -0.338933,
		32.688217, 36.052773, 36.764782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.597313, 36.890644, 36.936890>,  <32.091579, 36.331585, 37.002037>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.597313, 36.890644, 36.936890> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.717846, 36.599586, 36.690403>,  <32.790165, 36.424950, 36.542511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.717846, 36.599586, 36.690403>,  <32.597313, 36.890644, 36.936890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.717846, 36.599586, 36.690403> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016281, 0.642238, -0.766333,
		0.953380, 0.240954, 0.181681,
		0.301333, -0.727648, -0.616219,
		32.808247, 36.381290, 36.505539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.039249, 37.199970, 36.572880>,  <32.597313, 36.890644, 36.936890>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.039249, 37.199970, 36.572880> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.953350, 36.881390, 36.346767>,  <32.901810, 36.690243, 36.211098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.953350, 36.881390, 36.346767>,  <33.039249, 37.199970, 36.572880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.953350, 36.881390, 36.346767> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121531, 0.552499, -0.824606,
		0.969079, -0.245783, -0.021855,
		-0.214748, -0.796452, -0.565285,
		32.888924, 36.642452, 36.177181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.567905, 37.144295, 36.026741>,  <33.039249, 37.199970, 36.572880>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.567905, 37.144295, 36.026741> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.252850, 36.946697, 35.879448>,  <33.063816, 36.828140, 35.791073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.252850, 36.946697, 35.879448>,  <33.567905, 37.144295, 36.026741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.252850, 36.946697, 35.879448> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211443, 0.344633, -0.914615,
		0.578715, -0.798249, -0.166997,
		-0.787643, -0.493991, -0.368228,
		33.016556, 36.798500, 35.768978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.881714, 36.716537, 35.572243>,  <33.567905, 37.144295, 36.026741>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.881714, 36.716537, 35.572243> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.492207, 36.770546, 35.498974>,  <33.258503, 36.802952, 35.455013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.492207, 36.770546, 35.498974>,  <33.881714, 36.716537, 35.572243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.492207, 36.770546, 35.498974> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225675, 0.469690, -0.853500,
		-0.029207, -0.872445, -0.487838,
		-0.973765, 0.135021, -0.183171,
		33.200077, 36.811050, 35.444023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.820972, 36.445045, 34.976330>,  <33.881714, 36.716537, 35.572243>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.820972, 36.445045, 34.976330> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.522316, 36.706806, 35.024132>,  <33.343121, 36.863861, 35.052814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.522316, 36.706806, 35.024132>,  <33.820972, 36.445045, 34.976330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.522316, 36.706806, 35.024132> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238642, 0.431185, -0.870132,
		-0.620945, -0.621159, -0.478109,
		-0.746644, 0.654401, 0.119507,
		33.298325, 36.903126, 35.059982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.597137, 36.415577, 34.422527>,  <33.820972, 36.445045, 34.976330>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.597137, 36.415577, 34.422527> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.453281, 36.761555, 34.562550>,  <33.366970, 36.969139, 34.646561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.453281, 36.761555, 34.562550>,  <33.597137, 36.415577, 34.422527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.453281, 36.761555, 34.562550> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009896, 0.371597, -0.928341,
		-0.933040, -0.337331, -0.125081,
		-0.359638, 0.864941, 0.350053,
		33.345390, 37.021038, 34.667564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.335213, 36.663479, 33.882313>,  <33.597137, 36.415577, 34.422527>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.335213, 36.663479, 33.882313> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.306259, 36.994522, 34.104958>,  <33.288887, 37.193150, 34.238544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.306259, 36.994522, 34.104958>,  <33.335213, 36.663479, 33.882313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.306259, 36.994522, 34.104958> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039938, 0.555224, -0.830741,
		-0.996577, -0.082363, -0.007137,
		-0.072385, 0.827613, 0.556613,
		33.284542, 37.242805, 34.271942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.789700, 36.987942, 33.626877>,  <33.335213, 36.663479, 33.882313>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.789700, 36.987942, 33.626877> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.005402, 37.278854, 33.796707>,  <33.134823, 37.453403, 33.898605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.005402, 37.278854, 33.796707>,  <32.789700, 36.987942, 33.626877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.005402, 37.278854, 33.796707> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024982, 0.490123, -0.871295,
		-0.841772, 0.480457, 0.246132,
		0.539255, 0.727283, 0.424575,
		33.167179, 37.497040, 33.924080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.441460, 37.610130, 33.537842>,  <32.789700, 36.987942, 33.626877>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.441460, 37.610130, 33.537842> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.830780, 37.684189, 33.592113>,  <33.064373, 37.728622, 33.624676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.830780, 37.684189, 33.592113>,  <32.441460, 37.610130, 33.537842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.830780, 37.684189, 33.592113> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058247, 0.372519, -0.926195,
		-0.222020, 0.909369, 0.351789,
		0.973301, 0.185143, 0.135675,
		33.122772, 37.739731, 33.632816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.626392, 38.285618, 33.254719>,  <32.441460, 37.610130, 33.537842>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.626392, 38.285618, 33.254719> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.997375, 38.138176, 33.279881>,  <33.219963, 38.049709, 33.294979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.997375, 38.138176, 33.279881>,  <32.626392, 38.285618, 33.254719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.997375, 38.138176, 33.279881> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209323, 0.372371, -0.904170,
		0.309857, 0.851745, 0.422515,
		0.927455, -0.368605, 0.062908,
		33.275612, 38.027596, 33.298752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.087170, 38.832939, 33.211067>,  <32.626392, 38.285618, 33.254719>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.087170, 38.832939, 33.211067> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.278969, 38.505405, 33.084831>,  <33.394047, 38.308884, 33.009090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.278969, 38.505405, 33.084831>,  <33.087170, 38.832939, 33.211067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.278969, 38.505405, 33.084831> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314610, 0.496125, -0.809247,
		0.819211, 0.288741, 0.495502,
		0.479493, -0.818834, -0.315590,
		33.422817, 38.259754, 32.990154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.483162, 39.119061, 32.764977>,  <33.087170, 38.832939, 33.211067>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.483162, 39.119061, 32.764977> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.578617, 38.739731, 32.681320>,  <33.635891, 38.512135, 32.631126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.578617, 38.739731, 32.681320>,  <33.483162, 39.119061, 32.764977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.578617, 38.739731, 32.681320> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384363, 0.290011, -0.876447,
		0.891805, 0.128769, 0.433707,
		0.238639, -0.948321, -0.209139,
		33.650208, 38.455235, 32.618580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.217075, 39.067562, 32.512882>,  <33.483162, 39.119061, 32.764977>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.217075, 39.067562, 32.512882> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.982136, 38.780827, 32.362595>,  <33.841171, 38.608788, 32.272423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.982136, 38.780827, 32.362595>,  <34.217075, 39.067562, 32.512882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.982136, 38.780827, 32.362595> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330818, 0.211034, -0.919796,
		0.738632, -0.664538, 0.113191,
		-0.587352, -0.716836, -0.375718,
		33.805931, 38.565777, 32.249878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.633392, 38.742767, 31.909344>,  <34.217075, 39.067562, 32.512882>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.633392, 38.742767, 31.909344> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.257893, 38.619038, 31.848583>,  <34.032593, 38.544800, 31.812126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.257893, 38.619038, 31.848583>,  <34.633392, 38.742767, 31.909344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.257893, 38.619038, 31.848583> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099158, 0.179691, -0.978713,
		0.330040, -0.933824, -0.138012,
		-0.938745, -0.309329, -0.151901,
		33.976269, 38.526237, 31.803013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.629265, 38.290813, 31.244205>,  <34.633392, 38.742767, 31.909344>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.629265, 38.290813, 31.244205> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.252876, 38.418903, 31.288067>,  <34.027042, 38.495758, 31.314384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.252876, 38.418903, 31.288067>,  <34.629265, 38.290813, 31.244205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.252876, 38.418903, 31.288067> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058831, 0.164298, -0.984655,
		-0.333324, -0.932986, -0.135762,
		-0.940975, 0.320222, 0.109653,
		33.970585, 38.514969, 31.320963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.274246, 38.021118, 30.688604>,  <34.629265, 38.290813, 31.244205>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.274246, 38.021118, 30.688604> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.037224, 38.308041, 30.835218>,  <33.895012, 38.480194, 30.923187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.037224, 38.308041, 30.835218>,  <34.274246, 38.021118, 30.688604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.037224, 38.308041, 30.835218> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196936, 0.312215, -0.929375,
		-0.781088, -0.622887, -0.043739,
		-0.592552, 0.717309, 0.366537,
		33.859459, 38.523232, 30.945179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.713367, 38.168507, 30.140408>,  <34.274246, 38.021118, 30.688604>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.713367, 38.168507, 30.140408> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.683067, 38.485550, 30.382408>,  <33.664886, 38.675777, 30.527609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.683067, 38.485550, 30.382408>,  <33.713367, 38.168507, 30.140408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.683067, 38.485550, 30.382408> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018559, 0.607762, -0.793903,
		-0.996954, -0.048908, -0.060746,
		-0.075748, 0.792612, 0.605003,
		33.660343, 38.723335, 30.563910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.010052, 38.481560, 29.990545>,  <33.713367, 38.168507, 30.140408>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.010052, 38.481560, 29.990545> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.263931, 38.741070, 30.158470>,  <33.416260, 38.896778, 30.259226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.263931, 38.741070, 30.158470>,  <33.010052, 38.481560, 29.990545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.263931, 38.741070, 30.158470> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186300, 0.655708, -0.731669,
		-0.749966, 0.386178, 0.537045,
		0.634699, 0.648779, 0.419814,
		33.454342, 38.935703, 30.284414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.764122, 39.071045, 29.702923>,  <33.010052, 38.481560, 29.990545>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.764122, 39.071045, 29.702923> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.126938, 39.166782, 29.841482>,  <33.344627, 39.224224, 29.924618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.126938, 39.166782, 29.841482>,  <32.764122, 39.071045, 29.702923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.126938, 39.166782, 29.841482> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094175, 0.686540, -0.720967,
		-0.410378, 0.686568, 0.600179,
		0.907040, 0.239347, 0.346398,
		33.399052, 39.238586, 29.945402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.720570, 39.769058, 29.721172>,  <32.764122, 39.071045, 29.702923>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.720570, 39.769058, 29.721172> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.113590, 39.695480, 29.710133>,  <33.349403, 39.651333, 29.703508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.113590, 39.695480, 29.710133>,  <32.720570, 39.769058, 29.721172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.113590, 39.695480, 29.710133> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066385, 0.485396, -0.871770,
		0.173756, 0.854724, 0.489137,
		0.982549, -0.183946, -0.027599,
		33.408356, 39.640297, 29.701853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.010609, 40.365337, 29.513239>,  <32.720570, 39.769058, 29.721172>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.010609, 40.365337, 29.513239> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.284466, 40.089481, 29.418867>,  <33.448780, 39.923969, 29.362244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.284466, 40.089481, 29.418867>,  <33.010609, 40.365337, 29.513239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.284466, 40.089481, 29.418867> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178751, 0.472668, -0.862921,
		0.706620, 0.548620, 0.446882,
		0.684643, -0.689638, -0.235930,
		33.489861, 39.882591, 29.348087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.510284, 40.776489, 29.189299>,  <33.010609, 40.365337, 29.513239>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.510284, 40.776489, 29.189299> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.618965, 40.404953, 29.088556>,  <33.684174, 40.182030, 29.028111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.618965, 40.404953, 29.088556>,  <33.510284, 40.776489, 29.189299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.618965, 40.404953, 29.088556> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127939, 0.294237, -0.947131,
		0.953840, 0.225115, 0.198780,
		0.271701, -0.928842, -0.251854,
		33.700474, 40.126301, 29.013000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.164639, 40.868473, 28.825703>,  <33.510284, 40.776489, 29.189299>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.164639, 40.868473, 28.825703> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.033531, 40.503017, 28.729509>,  <33.954865, 40.283745, 28.671793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.033531, 40.503017, 28.729509>,  <34.164639, 40.868473, 28.825703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.033531, 40.503017, 28.729509> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007107, 0.256922, -0.966406,
		0.944730, -0.315051, -0.090705,
		-0.327771, -0.913638, -0.240483,
		33.935200, 40.228928, 28.657364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.577805, 40.693775, 28.192287>,  <34.164639, 40.868473, 28.825703>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.577805, 40.693775, 28.192287> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.250839, 40.463524, 28.201162>,  <34.054661, 40.325371, 28.206488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.250839, 40.463524, 28.201162>,  <34.577805, 40.693775, 28.192287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.250839, 40.463524, 28.201162> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093822, 0.095032, -0.991043,
		0.568367, -0.812169, -0.131687,
		-0.817409, -0.575631, 0.022186,
		34.005615, 40.290836, 28.207819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.574272, 40.209816, 27.672613>,  <34.577805, 40.693775, 28.192287>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.574272, 40.209816, 27.672613> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.180477, 40.219460, 27.742125>,  <33.944199, 40.225246, 27.783833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.180477, 40.219460, 27.742125>,  <34.574272, 40.209816, 27.672613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.180477, 40.219460, 27.742125> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162785, 0.243897, -0.956041,
		-0.065436, -0.969501, -0.236189,
		-0.984490, 0.024111, 0.173780,
		33.885132, 40.226692, 27.794258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.102345, 39.812897, 27.490181>,  <34.574272, 40.209816, 27.672613>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.102345, 39.812897, 27.490181> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.468422, 39.960995, 27.426514>,  <35.688068, 40.049854, 27.388313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.468422, 39.960995, 27.426514>,  <35.102345, 39.812897, 27.490181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.468422, 39.960995, 27.426514> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282599, -0.307999, 0.908446,
		0.287324, -0.876387, -0.386511,
		0.915195, 0.370245, -0.159170,
		35.742981, 40.072067, 27.378763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.562611, 39.171852, 27.534224>,  <35.102345, 39.812897, 27.490181>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.562611, 39.171852, 27.534224> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.784199, 39.498314, 27.599970>,  <35.917152, 39.694191, 27.639418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.784199, 39.498314, 27.599970>,  <35.562611, 39.171852, 27.534224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.784199, 39.498314, 27.599970> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204060, -0.324515, 0.923607,
		0.807142, -0.478108, -0.346315,
		0.553968, 0.816151, 0.164367,
		35.950390, 39.743160, 27.649281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.243053, 38.955639, 27.668768>,  <35.562611, 39.171852, 27.534224>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.243053, 38.955639, 27.668768> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.195564, 39.323166, 27.819332>,  <36.167072, 39.543682, 27.909670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.195564, 39.323166, 27.819332>,  <36.243053, 38.955639, 27.668768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.195564, 39.323166, 27.819332> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262046, -0.336657, 0.904430,
		0.957725, 0.206011, -0.200804,
		-0.118721, 0.918816, 0.376409,
		36.159946, 39.598812, 27.932255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.646564, 38.853916, 28.189987>,  <36.243053, 38.955639, 27.668768>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.646564, 38.853916, 28.189987> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.467514, 39.194523, 28.299208>,  <36.360085, 39.398888, 28.364740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.467514, 39.194523, 28.299208>,  <36.646564, 38.853916, 28.189987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.467514, 39.194523, 28.299208> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195952, -0.204523, 0.959048,
		0.872486, 0.482801, -0.075306,
		-0.447627, 0.851513, 0.273050,
		36.333225, 39.449978, 28.381123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.237225, 39.341671, 28.519112>,  <36.646564, 38.853916, 28.189987>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.237225, 39.341671, 28.519112> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.878433, 39.425854, 28.674618>,  <36.663158, 39.476364, 28.767921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.878433, 39.425854, 28.674618>,  <37.237225, 39.341671, 28.519112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.878433, 39.425854, 28.674618> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371340, -0.118468, 0.920908,
		0.239871, 0.970397, 0.028111,
		-0.896977, 0.210461, 0.388764,
		36.609341, 39.488991, 28.791246>
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
